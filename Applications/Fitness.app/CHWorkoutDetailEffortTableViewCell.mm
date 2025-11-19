@interface CHWorkoutDetailEffortTableViewCell
- (CHWorkoutDetailEffortTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 parent:(id)a6;
@end

@implementation CHWorkoutDetailEffortTableViewCell

- (CHWorkoutDetailEffortTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10033D184(a3, a4, v6);
}

- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 parent:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_10033DA00(v10, a4, v12, v13);
}

@end