@interface CHWorkoutDetailPowerTableViewCell
- (CHWorkoutDetailPowerTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailPowerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager powerSamples:(id)samples parent:(id)parent;
@end

@implementation CHWorkoutDetailPowerTableViewCell

- (CHWorkoutDetailPowerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1005FE6DC(style, identifier, v6);
}

- (CHWorkoutDetailPowerTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_powerController) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_cellPadding) = 0x4028000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_cellInset) = 0x4030000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager powerSamples:(id)samples parent:(id)parent
{
  sub_1000059F8(0, &qword_1008EE6F0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  workoutCopy = workout;
  activityCopy = activity;
  calculatorCopy = calculator;
  managerCopy = manager;
  parentCopy = parent;
  selfCopy = self;
  sub_1005FE960(workoutCopy, activity, calculatorCopy, managerCopy, v14, parentCopy);
}

@end