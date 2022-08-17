Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: :create
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
