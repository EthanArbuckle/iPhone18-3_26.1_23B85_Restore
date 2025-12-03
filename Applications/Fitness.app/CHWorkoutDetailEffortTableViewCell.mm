@interface CHWorkoutDetailEffortTableViewCell
- (CHWorkoutDetailEffortTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator parent:(id)parent;
@end

@implementation CHWorkoutDetailEffortTableViewCell

- (CHWorkoutDetailEffortTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10033D184(style, identifier, v6);
}

- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator parent:(id)parent
{
  workoutCopy = workout;
  activityCopy = activity;
  calculatorCopy = calculator;
  parentCopy = parent;
  selfCopy = self;
  sub_10033DA00(workoutCopy, activity, calculatorCopy, parentCopy);
}

@end