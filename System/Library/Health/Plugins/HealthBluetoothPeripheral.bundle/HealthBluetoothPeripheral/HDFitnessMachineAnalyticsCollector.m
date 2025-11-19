@interface HDFitnessMachineAnalyticsCollector
- (HDFitnessMachineAnalyticsCollector)init;
- (void)setFitnessMachineType:(unint64_t)a3 manufacturer:(id)a4;
- (void)userIsAuthorized;
- (void)workoutEndedSubmitMetricsWith:(id)a3;
- (void)workoutFailedWithError:(id)a3;
@end

@implementation HDFitnessMachineAnalyticsCollector

- (HDFitnessMachineAnalyticsCollector)init
{
  v5.receiver = self;
  v5.super_class = HDFitnessMachineAnalyticsCollector;
  v2 = [(HDFitnessMachineAnalyticsCollector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    sub_27BBC(v2);
  }

  return v3;
}

- (void)setFitnessMachineType:(unint64_t)a3 manufacturer:(id)a4
{
  v6 = [a4 lowercaseString];
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if (![(__CFString *)v8 length])
  {

    v8 = @"unspecified";
  }

  [(HDGymKitWorkoutAnalyticEvent *)self->_gymKitWorkoutEvent setFitnessMachineType:a3];
  [(HDGymKitWorkoutAnalyticEvent *)self->_gymKitWorkoutEvent setManufacturer:v8];
}

- (void)workoutFailedWithError:(id)a3
{
  v4 = sub_27CF4(self, a3);
  gymKitWorkoutEvent = self->_gymKitWorkoutEvent;

  [(HDGymKitWorkoutAnalyticEvent *)gymKitWorkoutEvent setWorkoutEndErrorCode:v4];
}

- (void)userIsAuthorized
{
  if (a1)
  {
    v2 = [*(a1 + 8) timerValue];

    if (v2)
    {
      v3 = [*(a1 + 8) elapsedSeconds];
      v4 = *(a1 + 16);

      [v4 setTimeToBeginExperience:v3];
    }

    else
    {
      _HKInitializeLogging();
      v5 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Failed to track successful begin experience: timer does not exist.", v6, 2u);
      }
    }
  }
}

- (void)workoutEndedSubmitMetricsWith:(id)a3
{
  gymKitWorkoutEvent = self->_gymKitWorkoutEvent;
  v5 = a3;
  [(HDGymKitWorkoutAnalyticEvent *)gymKitWorkoutEvent fitnessMachineType];
  v7 = _HKStringForFitnessMachineType();
  v6 = [(HDGymKitWorkoutAnalyticEvent *)self->_gymKitWorkoutEvent manufacturer];
  [v5 workout_reportGymKitWorkoutWithFitnessMachineType:v7 manufacturer:v6 timeToBeginExperience:-[HDGymKitWorkoutAnalyticEvent timeToBeginExperience](self->_gymKitWorkoutEvent workoutEndError:{"timeToBeginExperience"), -[HDGymKitWorkoutAnalyticEvent workoutEndErrorCode](self->_gymKitWorkoutEvent, "workoutEndErrorCode")}];

  sub_27BBC(self);
}

@end