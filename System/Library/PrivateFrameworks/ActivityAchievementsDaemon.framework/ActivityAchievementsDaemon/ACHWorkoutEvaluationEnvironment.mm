@interface ACHWorkoutEvaluationEnvironment
- (ACHWorkoutEvaluationEnvironment)initWithWorkout:(id)workout healthStore:(id)store numberOfFirstPartyWorkoutsOver5MinutesWithType:(unint64_t)type numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:(unint64_t)week bestKilocaloriesForType:(double)forType bestKilometersForType:(double)kilometersForType bestElevationGainedForType:(double)gainedForType best5KDuration:(double)self0 best10KDuration:(double)self1 bestWheelchair5KDuration:(double)self2 bestWheelchair10KDuration:(double)self3 bestHalfMarathonDuration:(double)self4 bestMarathonDuration:(double)self5 bestWheelchairHalfMarathonDuration:(double)self6 bestWheelchairMarathonDuration:(double)self7 experienceType:(unint64_t)self8 isMetricLocale:(BOOL)self9;
- (id)valueForUndefinedKey:(id)key;
@end

@implementation ACHWorkoutEvaluationEnvironment

- (ACHWorkoutEvaluationEnvironment)initWithWorkout:(id)workout healthStore:(id)store numberOfFirstPartyWorkoutsOver5MinutesWithType:(unint64_t)type numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:(unint64_t)week bestKilocaloriesForType:(double)forType bestKilometersForType:(double)kilometersForType bestElevationGainedForType:(double)gainedForType best5KDuration:(double)self0 best10KDuration:(double)self1 bestWheelchair5KDuration:(double)self2 bestWheelchair10KDuration:(double)self3 bestHalfMarathonDuration:(double)self4 bestMarathonDuration:(double)self5 bestWheelchairHalfMarathonDuration:(double)self6 bestWheelchairMarathonDuration:(double)self7 experienceType:(unint64_t)self8 isMetricLocale:(BOOL)self9
{
  workoutCopy = workout;
  storeCopy = store;
  v39.receiver = self;
  v39.super_class = ACHWorkoutEvaluationEnvironment;
  v35 = [(ACHWorkoutEvaluationEnvironment *)&v39 init];
  if (v35)
  {
    v36 = [[ACHWorkoutEvaluationWorkoutProperties alloc] initWithWorkout:workoutCopy healthStore:storeCopy];
    workout = v35->_workout;
    v35->_workout = v36;

    v35->_numberOfFirstPartyWorkoutsOver5MinutesWithType = type;
    v35->_numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek = week;
    v35->_numberOfFirstPartyWorkoutsOver15MinutesWithType = 0;
    v35->_numberOfFirstPartyWorkoutsOver15MinutesDuringCurrentFitnessWeek = 0;
    v35->_bestKilocaloriesForType = forType;
    v35->_bestKilometersForType = kilometersForType;
    v35->_bestElevationGainedForType = gainedForType;
    v35->_best5KDuration = duration;
    v35->_best10KDuration = kDuration;
    v35->_bestWheelchair5KDuration = wheelchair5KDuration;
    v35->_bestWheelchair10KDuration = wheelchair10KDuration;
    v35->_bestHalfMarathonDuration = marathonDuration;
    v35->_bestMarathonDuration = bestMarathonDuration;
    v35->_bestWheelchairHalfMarathonDuration = halfMarathonDuration;
    v35->_bestWheelchairMarathonDuration = wheelchairMarathonDuration;
    v35->_experienceType = experienceType;
    v35->_isMetricLocale = locale;
  }

  return v35;
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
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Workout Evaluation environment asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

@end