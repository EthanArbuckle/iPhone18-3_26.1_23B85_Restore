@interface CHWorkoutDetailFourColumnSplitTableViewCell
- (CHWorkoutDetailFourColumnSplitTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailFourColumnSplitTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureHeaderWithActivityType:(id)type includeHeartRate:(BOOL)rate;
- (void)configureWithSwimmingSplit:(id)split splitIndex:(int64_t)index isLastCell:(BOOL)cell formattingManager:(id)manager;
- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity unit:(id)unit split:(id)split splitIndex:(int64_t)index splitDistance:(double)distance includeHeartRate:(BOOL)rate isLastCell:(BOOL)self0 dataCalculator:(id)self1 formattingManager:(id)self2;
@end

@implementation CHWorkoutDetailFourColumnSplitTableViewCell

- (void)configureHeaderWithActivityType:(id)type includeHeartRate:(BOOL)rate
{
  typeCopy = type;
  selfCopy = self;
  sub_1003C14C0(typeCopy, rate);
}

- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity unit:(id)unit split:(id)split splitIndex:(int64_t)index splitDistance:(double)distance includeHeartRate:(BOOL)rate isLastCell:(BOOL)self0 dataCalculator:(id)self1 formattingManager:(id)self2
{
  rateCopy = rate;
  workoutCopy = workout;
  activityCopy = activity;
  unitCopy = unit;
  splitCopy = split;
  calculatorCopy = calculator;
  managerCopy = manager;
  selfCopy = self;
  sub_1003C2C68(workoutCopy, activity, splitCopy, index, rateCopy, cell, calculatorCopy, managerCopy);
}

- (CHWorkoutDetailFourColumnSplitTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnSplitTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnSplitTableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnSplitTableViewCell();
  coderCopy = coder;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)configureWithSwimmingSplit:(id)split splitIndex:(int64_t)index isLastCell:(BOOL)cell formattingManager:(id)manager
{
  splitCopy = split;
  managerCopy = manager;
  selfCopy = self;
  sub_1003C25BC(splitCopy, index, cell, managerCopy);
}

@end