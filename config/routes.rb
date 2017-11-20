Rails.application.routes.draw do
  get 'microposts/create'

  get 'microposts/destroy'

  root to: 'tasks#index'

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  
  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks, only: [:index, :show, :new, :create]
  resources :microposts, only: [:create, :destroy]
end
