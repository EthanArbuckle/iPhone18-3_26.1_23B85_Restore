@interface CHWorkoutDetailBurnBarTableViewCell
+ (double)preferredHeightForWorkout:(id)workout indexPath:(id)path numberOfRows:(int64_t)rows;
- (CHWorkoutDetailBurnBarTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailBurnBarTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithFitnessAppContext:(id)context workout:(id)workout scoreSummaryWrapper:(id)wrapper;
@end

@implementation CHWorkoutDetailBurnBarTableViewCell

+ (double)preferredHeightForWorkout:(id)workout indexPath:(id)path numberOfRows:(int64_t)rows
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v8, v5);
  return 108.0;
}

- (CHWorkoutDetailBurnBarTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(CHWorkoutDetailBurnBarTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (void)configureWithFitnessAppContext:(id)context workout:(id)workout scoreSummaryWrapper:(id)wrapper
{
  contextCopy = context;
  workoutCopy = workout;
  wrapperCopy = wrapper;
  selfCopy = self;
  sub_1001FCF1C(contextCopy, workoutCopy, wrapperCopy);
}

- (CHWorkoutDetailBurnBarTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailBurnBarTableViewCell_burnBarView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end