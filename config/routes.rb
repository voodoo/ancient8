Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end
  resources :tasks#, only: [:index, :edit, :show]
  root "projects#index"
end
