@interface CHWorkoutDetailBurnBarTableViewCell
+ (double)preferredHeightForWorkout:(id)a3 indexPath:(id)a4 numberOfRows:(int64_t)a5;
- (CHWorkoutDetailBurnBarTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutDetailBurnBarTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithFitnessAppContext:(id)a3 workout:(id)a4 scoreSummaryWrapper:(id)a5;
@end

@implementation CHWorkoutDetailBurnBarTableViewCell

+ (double)preferredHeightForWorkout:(id)a3 indexPath:(id)a4 numberOfRows:(int64_t)a5
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v8, v5);
  return 108.0;
}

- (CHWorkoutDetailBurnBarTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailBurnBarTableViewCell_burnBarView) = 0;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailBurnBarTableViewCell_burnBarView) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for WorkoutDetailBurnBarTableViewCell();
  v7 = [(CHWorkoutDetailBurnBarTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (void)configureWithFitnessAppContext:(id)a3 workout:(id)a4 scoreSummaryWrapper:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1001FCF1C(v8, v9, v10);
}

- (CHWorkoutDetailBurnBarTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailBurnBarTableViewCell_burnBarView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end