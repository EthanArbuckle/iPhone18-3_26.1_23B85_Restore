@interface CHWorkoutDetailFourColumnSegmentTableViewCell
- (CHWorkoutDetailFourColumnSegmentTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailFourColumnSegmentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureHeaderWithWorkout:(id)workout activityType:(id)type activityMoveMode:(int64_t)mode formattingManager:(id)manager;
- (void)configureWithSegment:(id)segment segmentIndex:(int64_t)index workout:(id)workout trackDistanceUnit:(unint64_t)unit activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)self0;
@end

@implementation CHWorkoutDetailFourColumnSegmentTableViewCell

- (void)configureHeaderWithWorkout:(id)workout activityType:(id)type activityMoveMode:(int64_t)mode formattingManager:(id)manager
{
  workoutCopy = workout;
  typeCopy = type;
  managerCopy = manager;
  selfCopy = self;
  sub_1002CC6AC(workoutCopy, typeCopy, mode, managerCopy);
}

- (void)configureWithSegment:(id)segment segmentIndex:(int64_t)index workout:(id)workout trackDistanceUnit:(unint64_t)unit activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)self0
{
  segmentCopy = segment;
  workoutCopy = workout;
  typeCopy = type;
  managerCopy = manager;
  selfCopy = self;
  sub_1002CCE74(segment, index, workoutCopy, unit, typeCopy, mode, cell, managerCopy);
}

- (CHWorkoutDetailFourColumnSegmentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnSegmentTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnSegmentTableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnSegmentTableViewCell();
  coderCopy = coder;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end