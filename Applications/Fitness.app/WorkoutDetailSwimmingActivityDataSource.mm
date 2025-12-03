@interface WorkoutDetailSwimmingActivityDataSource
- (WorkoutDetailSwimmingActivityDataSource)init;
- (WorkoutDetailSwimmingActivityDataSource)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager;
@end

@implementation WorkoutDetailSwimmingActivityDataSource

- (WorkoutDetailSwimmingActivityDataSource)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager
{
  workoutCopy = workout;
  activityCopy = activity;
  return sub_10028B46C(workoutCopy, activity, calculator, manager);
}

- (WorkoutDetailSwimmingActivityDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end