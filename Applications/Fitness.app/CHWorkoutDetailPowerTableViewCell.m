@interface CHWorkoutDetailPowerTableViewCell
- (CHWorkoutDetailPowerTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutDetailPowerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6 powerSamples:(id)a7 parent:(id)a8;
@end

@implementation CHWorkoutDetailPowerTableViewCell

- (CHWorkoutDetailPowerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1005FE6DC(a3, a4, v6);
}

- (CHWorkoutDetailPowerTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_powerController) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_cellPadding) = 0x4028000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_cellInset) = 0x4030000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6 powerSamples:(id)a7 parent:(id)a8
{
  sub_1000059F8(0, &qword_1008EE6F0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = self;
  sub_1005FE960(v15, a4, v17, v18, v14, v19);
}

@end