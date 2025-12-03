@interface CHWorkoutDetailHeartRateTableViewCell
- (CHWorkoutDetailHeartRateTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailHeartRateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager heartRateReadings:(id)readings averageHeartRate:(id)rate parent:(id)parent;
@end

@implementation CHWorkoutDetailHeartRateTableViewCell

- (CHWorkoutDetailHeartRateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10034FF8C(style, identifier, v6);
}

- (CHWorkoutDetailHeartRateTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailHeartRateTableViewCell_heartRateController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager heartRateReadings:(id)readings averageHeartRate:(id)rate parent:(id)parent
{
  sub_1000059F8(0, &qword_1008E9D88);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  workoutCopy = workout;
  activityCopy = activity;
  calculatorCopy = calculator;
  managerCopy = manager;
  rateCopy = rate;
  parentCopy = parent;
  selfCopy = self;
  sub_1003501D0(workoutCopy, activity, calculatorCopy, managerCopy, v15, rateCopy, parentCopy);
}

@end