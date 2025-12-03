@interface CHWorkoutDetailFourColumnTrackLapTableViewCell
- (CHWorkoutDetailFourColumnTrackLapTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailFourColumnTrackLapTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureHeaderWithWorkout:(id)workout activityMoveMode:(int64_t)mode formattingManager:(id)manager;
- (void)configureWithTrackLap:(id)lap lapIndex:(int64_t)index workout:(id)workout distanceUnit:(unint64_t)unit activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)self0;
@end

@implementation CHWorkoutDetailFourColumnTrackLapTableViewCell

- (void)configureHeaderWithWorkout:(id)workout activityMoveMode:(int64_t)mode formattingManager:(id)manager
{
  workoutCopy = workout;
  managerCopy = manager;
  selfCopy = self;
  sub_100588458(workoutCopy, mode, managerCopy);
}

- (void)configureWithTrackLap:(id)lap lapIndex:(int64_t)index workout:(id)workout distanceUnit:(unint64_t)unit activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)self0
{
  lapCopy = lap;
  workoutCopy = workout;
  typeCopy = type;
  managerCopy = manager;
  selfCopy = self;
  sub_100588DE0(lap, workoutCopy, unit, typeCopy, mode, cell, managerCopy);
}

- (CHWorkoutDetailFourColumnTrackLapTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnTrackLapTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnTrackLapTableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnTrackLapTableViewCell();
  coderCopy = coder;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end