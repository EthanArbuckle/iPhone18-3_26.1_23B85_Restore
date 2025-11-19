@interface ACHWorkoutProgressEvaluationEnvironment
- (ACHWorkoutProgressEvaluationEnvironment)initWithNumberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:(unint64_t)a3;
- (id)valueForUndefinedKey:(id)a3;
@end

@implementation ACHWorkoutProgressEvaluationEnvironment

- (ACHWorkoutProgressEvaluationEnvironment)initWithNumberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ACHWorkoutProgressEvaluationEnvironment;
  result = [(ACHWorkoutProgressEvaluationEnvironment *)&v5 init];
  if (result)
  {
    result->_numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek = a3;
    result->_numberOfFirstPartyWorkoutsOver15MinutesDuringCurrentFitnessWeek = 0;
  }

  return result;
}

- (id)valueForUndefinedKey:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = ACHLogWorkouts();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Workout Progress Evaluation environment asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

@end