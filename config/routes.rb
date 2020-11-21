Rails.application.routes.draw do
  devise_for :users

  resources :blacklists, only: [:index, :new, :create, :edit, :update]

  get '/blacklisted', to: 'blacklisted#is_blacklisted'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
