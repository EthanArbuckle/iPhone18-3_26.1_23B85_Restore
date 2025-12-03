@interface ACHWorkoutProgressEvaluationEnvironment
- (ACHWorkoutProgressEvaluationEnvironment)initWithNumberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:(unint64_t)week;
- (id)valueForUndefinedKey:(id)key;
@end

@implementation ACHWorkoutProgressEvaluationEnvironment

- (ACHWorkoutProgressEvaluationEnvironment)initWithNumberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:(unint64_t)week
{
  v5.receiver = self;
  v5.super_class = ACHWorkoutProgressEvaluationEnvironment;
  result = [(ACHWorkoutProgressEvaluationEnvironment *)&v5 init];
  if (result)
  {
    result->_numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek = week;
    result->_numberOfFirstPartyWorkoutsOver15MinutesDuringCurrentFitnessWeek = 0;
  }

  return result;
}

- (id)valueForUndefinedKey:(id)key
{
  v9 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = ACHLogWorkouts();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = keyCopy;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Workout Progress Evaluation environment asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

@end