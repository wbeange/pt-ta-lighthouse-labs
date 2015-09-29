class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end

    create_table :movies do |t|
      t.string :name
      t.timestamps
    end

    create_table :reviews do |t|
      t.references :movie
      t.string :title
      t.string :description
      t.decimal :rating
      t.timestamps
    end
  end
end