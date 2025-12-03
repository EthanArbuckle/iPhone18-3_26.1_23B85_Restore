@interface CHWorkoutDetailSplitDataSource
- (CHWorkoutDetailSplitDataSource)init;
- (CHWorkoutDetailSplitDataSource)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailSplitDataSource

- (CHWorkoutDetailSplitDataSource)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager
{
  workoutCopy = workout;
  activityCopy = activity;
  return sub_1005386D8(workoutCopy, activity, calculator, manager);
}

- (CHWorkoutDetailSplitDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end