Rails.application.routes.draw do
  namespace :public do
    get 'relationships/follows'
    get 'relationships/followers'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/withdraw_confirm'
  end
  namespace :public do
    get 'posts/new'
    get 'posts/show'
  end
  namespace :public do
    get 'homes/top'
  end
  namespace :admin do
    get 'users/show'
    get 'users/edit'
  end
  namespace :admin do
    get 'homes/top'
  end


  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}


  devise_for :users, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
