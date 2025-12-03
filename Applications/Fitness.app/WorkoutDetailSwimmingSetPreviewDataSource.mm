@interface WorkoutDetailSwimmingSetPreviewDataSource
- (void)initWithWorkout:(void *)workout workoutActivity:(void *)activity dataCalculator:(void *)calculator formattingManager:(void *)manager;
@end

@implementation WorkoutDetailSwimmingSetPreviewDataSource

- (void)initWithWorkout:(void *)workout workoutActivity:(void *)activity dataCalculator:(void *)calculator formattingManager:(void *)manager
{
  workoutCopy = workout;
  activityCopy = activity;
  sub_10022D604(workoutCopy, activity, calculator, manager);
}

@end