@interface ACHWorkoutEvaluationEnvironment
- (ACHWorkoutEvaluationEnvironment)initWithWorkout:(id)a3 healthStore:(id)a4 numberOfFirstPartyWorkoutsOver5MinutesWithType:(unint64_t)a5 numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:(unint64_t)a6 bestKilocaloriesForType:(double)a7 bestKilometersForType:(double)a8 bestElevationGainedForType:(double)a9 best5KDuration:(double)a10 best10KDuration:(double)a11 bestWheelchair5KDuration:(double)a12 bestWheelchair10KDuration:(double)a13 bestHalfMarathonDuration:(double)a14 bestMarathonDuration:(double)a15 bestWheelchairHalfMarathonDuration:(double)a16 bestWheelchairMarathonDuration:(double)a17 experienceType:(unint64_t)a18 isMetricLocale:(BOOL)a19;
- (id)valueForUndefinedKey:(id)a3;
@end

@implementation ACHWorkoutEvaluationEnvironment

- (ACHWorkoutEvaluationEnvironment)initWithWorkout:(id)a3 healthStore:(id)a4 numberOfFirstPartyWorkoutsOver5MinutesWithType:(unint64_t)a5 numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:(unint64_t)a6 bestKilocaloriesForType:(double)a7 bestKilometersForType:(double)a8 bestElevationGainedForType:(double)a9 best5KDuration:(double)a10 best10KDuration:(double)a11 bestWheelchair5KDuration:(double)a12 bestWheelchair10KDuration:(double)a13 bestHalfMarathonDuration:(double)a14 bestMarathonDuration:(double)a15 bestWheelchairHalfMarathonDuration:(double)a16 bestWheelchairMarathonDuration:(double)a17 experienceType:(unint64_t)a18 isMetricLocale:(BOOL)a19
{
  v33 = a3;
  v34 = a4;
  v39.receiver = self;
  v39.super_class = ACHWorkoutEvaluationEnvironment;
  v35 = [(ACHWorkoutEvaluationEnvironment *)&v39 init];
  if (v35)
  {
    v36 = [[ACHWorkoutEvaluationWorkoutProperties alloc] initWithWorkout:v33 healthStore:v34];
    workout = v35->_workout;
    v35->_workout = v36;

    v35->_numberOfFirstPartyWorkoutsOver5MinutesWithType = a5;
    v35->_numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek = a6;
    v35->_numberOfFirstPartyWorkoutsOver15MinutesWithType = 0;
    v35->_numberOfFirstPartyWorkoutsOver15MinutesDuringCurrentFitnessWeek = 0;
    v35->_bestKilocaloriesForType = a7;
    v35->_bestKilometersForType = a8;
    v35->_bestElevationGainedForType = a9;
    v35->_best5KDuration = a10;
    v35->_best10KDuration = a11;
    v35->_bestWheelchair5KDuration = a12;
    v35->_bestWheelchair10KDuration = a13;
    v35->_bestHalfMarathonDuration = a14;
    v35->_bestMarathonDuration = a15;
    v35->_bestWheelchairHalfMarathonDuration = a16;
    v35->_bestWheelchairMarathonDuration = a17;
    v35->_experienceType = a18;
    v35->_isMetricLocale = a19;
  }

  return v35;
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
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Workout Evaluation environment asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

@end