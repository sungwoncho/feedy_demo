# This migration comes from feedy (originally 20150205092105)
class CreateFeedyFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedy_feedbacks do |t|
      t.references :author, polymorphic: true, index: true
      t.text :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
