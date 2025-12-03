@interface WorkoutDetailColumnMetricSwimmingPreviewDataSource
- (_TtC10FitnessApp50WorkoutDetailColumnMetricSwimmingPreviewDataSource)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager;
@end

@implementation WorkoutDetailColumnMetricSwimmingPreviewDataSource

- (_TtC10FitnessApp50WorkoutDetailColumnMetricSwimmingPreviewDataSource)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager
{
  workoutCopy = workout;
  activityCopy = activity;
  return sub_1005036D0(workoutCopy, activity, calculator, manager);
}

@end