class Post < ApplicationRecord
  validates :title, presence: { message: :validation_blank, name: '제목' }
  validates :title, length: { maximum: 10, message: :validation_length, name: '제목', length: 10 }

  has_many :comments
  belongs_to :user
end
