FactoryBot.define do
  factory :task do
    association :project, factory: :project
    title { 'Task' }
    status { rand(3) }
    from = Date.parse("2019/08/01")
    to   = Date.parse("2019/12/31")
    deadline { Random.rand(from..to) }
  end

  trait :done do
    status { :done }
    completion_date { Time.current.yesterday }
  end
end
