@interface HDFitnessMachineAnalyticsCollector
- (HDFitnessMachineAnalyticsCollector)init;
- (void)setFitnessMachineType:(unint64_t)type manufacturer:(id)manufacturer;
- (void)userIsAuthorized;
- (void)workoutEndedSubmitMetricsWith:(id)with;
- (void)workoutFailedWithError:(id)error;
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

- (void)setFitnessMachineType:(unint64_t)type manufacturer:(id)manufacturer
{
  lowercaseString = [manufacturer lowercaseString];
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [lowercaseString stringByTrimmingCharactersInSet:v7];

  if (![(__CFString *)v8 length])
  {

    v8 = @"unspecified";
  }

  [(HDGymKitWorkoutAnalyticEvent *)self->_gymKitWorkoutEvent setFitnessMachineType:type];
  [(HDGymKitWorkoutAnalyticEvent *)self->_gymKitWorkoutEvent setManufacturer:v8];
}

- (void)workoutFailedWithError:(id)error
{
  v4 = sub_27CF4(self, error);
  gymKitWorkoutEvent = self->_gymKitWorkoutEvent;

  [(HDGymKitWorkoutAnalyticEvent *)gymKitWorkoutEvent setWorkoutEndErrorCode:v4];
}

- (void)userIsAuthorized
{
  if (self)
  {
    timerValue = [*(self + 8) timerValue];

    if (timerValue)
    {
      elapsedSeconds = [*(self + 8) elapsedSeconds];
      v4 = *(self + 16);

      [v4 setTimeToBeginExperience:elapsedSeconds];
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

- (void)workoutEndedSubmitMetricsWith:(id)with
{
  gymKitWorkoutEvent = self->_gymKitWorkoutEvent;
  withCopy = with;
  [(HDGymKitWorkoutAnalyticEvent *)gymKitWorkoutEvent fitnessMachineType];
  v7 = _HKStringForFitnessMachineType();
  manufacturer = [(HDGymKitWorkoutAnalyticEvent *)self->_gymKitWorkoutEvent manufacturer];
  [withCopy workout_reportGymKitWorkoutWithFitnessMachineType:v7 manufacturer:manufacturer timeToBeginExperience:-[HDGymKitWorkoutAnalyticEvent timeToBeginExperience](self->_gymKitWorkoutEvent workoutEndError:{"timeToBeginExperience"), -[HDGymKitWorkoutAnalyticEvent workoutEndErrorCode](self->_gymKitWorkoutEvent, "workoutEndErrorCode")}];

  sub_27BBC(self);
}

@end