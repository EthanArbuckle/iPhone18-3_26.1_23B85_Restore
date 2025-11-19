@interface CHWorkoutDetailHeartRateTableViewCell
- (CHWorkoutDetailHeartRateTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutDetailHeartRateTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6 heartRateReadings:(id)a7 averageHeartRate:(id)a8 parent:(id)a9;
@end

@implementation CHWorkoutDetailHeartRateTableViewCell

- (CHWorkoutDetailHeartRateTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10034FF8C(a3, a4, v6);
}

- (CHWorkoutDetailHeartRateTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailHeartRateTableViewCell_heartRateController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6 heartRateReadings:(id)a7 averageHeartRate:(id)a8 parent:(id)a9
{
  sub_1000059F8(0, &qword_1008E9D88);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = self;
  sub_1003501D0(v16, a4, v18, v19, v15, v20, v21);
}

@end