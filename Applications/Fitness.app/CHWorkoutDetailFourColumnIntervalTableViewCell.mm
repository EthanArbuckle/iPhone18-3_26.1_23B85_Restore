@interface CHWorkoutDetailFourColumnIntervalTableViewCell
- (CHWorkoutDetailFourColumnIntervalTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailFourColumnIntervalTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureHeaderWithWorkout:(id)workout activityType:(id)type activityMoveMode:(int64_t)mode formattingManager:(id)manager;
- (void)configureWithInterval:(id)interval index:(int64_t)index workout:(id)workout activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailFourColumnIntervalTableViewCell

- (void)configureHeaderWithWorkout:(id)workout activityType:(id)type activityMoveMode:(int64_t)mode formattingManager:(id)manager
{
  workoutCopy = workout;
  typeCopy = type;
  managerCopy = manager;
  selfCopy = self;
  sub_100458828(workoutCopy, typeCopy, mode, managerCopy);
}

- (void)configureWithInterval:(id)interval index:(int64_t)index workout:(id)workout activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)manager
{
  intervalCopy = interval;
  workoutCopy = workout;
  typeCopy = type;
  managerCopy = manager;
  selfCopy = self;
  sub_100458FC8(interval, index, workoutCopy, typeCopy, mode, cell, managerCopy);
}

- (CHWorkoutDetailFourColumnIntervalTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnIntervalTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnIntervalTableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnIntervalTableViewCell();
  coderCopy = coder;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end