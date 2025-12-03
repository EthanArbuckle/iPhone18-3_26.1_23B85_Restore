@interface CHWorkoutDetailSwimmingSplitDataSource
- (CHWorkoutDetailSwimmingSplitDataSource)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailSwimmingSplitDataSource

- (CHWorkoutDetailSwimmingSplitDataSource)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager
{
  workoutCopy = workout;
  activityCopy = activity;
  return sub_100502D44(workoutCopy, activity, calculator, manager);
}

@end