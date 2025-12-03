@interface CHWorkoutDetailTrackLapDataSource
- (CHWorkoutDetailTrackLapDataSource)initWithWorkout:(id)workout dataCalculator:(id)calculator formattingManager:(id)manager;
- (CHWorkoutDetailTrackLapDataSource)initWithWorkout:(id)workout dataCalculator:(id)calculator trackDistanceUnit:(unint64_t)unit formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailTrackLapDataSource

- (CHWorkoutDetailTrackLapDataSource)initWithWorkout:(id)workout dataCalculator:(id)calculator trackDistanceUnit:(unint64_t)unit formattingManager:(id)manager
{
  *(&self->super.super.isa + OBJC_IVAR___CHWorkoutDetailTrackLapDataSource_distanceUnit) = 1;
  workoutCopy = workout;
  calculatorCopy = calculator;
  managerCopy = manager;
  v12 = sub_10030B238(workoutCopy, calculatorCopy, unit, managerCopy);

  return v12;
}

- (CHWorkoutDetailTrackLapDataSource)initWithWorkout:(id)workout dataCalculator:(id)calculator formattingManager:(id)manager
{
  *(&self->super.super.isa + OBJC_IVAR___CHWorkoutDetailTrackLapDataSource_distanceUnit) = 1;
  workoutCopy = workout;
  calculatorCopy = calculator;
  managerCopy = manager;
  v10 = sub_10030B74C(workoutCopy, calculatorCopy, managerCopy);

  return v10;
}

@end