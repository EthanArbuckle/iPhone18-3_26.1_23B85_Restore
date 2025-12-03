@interface CHWorkoutsListTableViewCell
- (CHWorkoutsListTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutsListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setWorkout:(id)workout fitnessAppContext:(id)context formattingManager:(id)manager achievementCount:(int64_t)count;
- (void)setWorkout:(id)workout fitnessAppContext:(id)context formattingManager:(id)manager achievementCount:(int64_t)count completion:(id)completion;
@end

@implementation CHWorkoutsListTableViewCell

- (CHWorkoutsListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100173F24(style, identifier, v6);
}

- (void)setWorkout:(id)workout fitnessAppContext:(id)context formattingManager:(id)manager achievementCount:(int64_t)count
{
  workoutCopy = workout;
  contextCopy = context;
  managerCopy = manager;
  selfCopy = self;
  sub_1001742D0(workoutCopy, contextCopy, managerCopy, count);
}

- (void)setWorkout:(id)workout fitnessAppContext:(id)context formattingManager:(id)manager achievementCount:(int64_t)count completion:(id)completion
{
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_10016B148;
  }

  else
  {
    v13 = 0;
  }

  workoutCopy = workout;
  contextCopy = context;
  managerCopy = manager;
  selfCopy = self;
  sub_100174518(workoutCopy, contextCopy, managerCopy, count, v12, v13);
  sub_1000245E0(v12);
}

- (CHWorkoutsListTableViewCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutsListTableViewCell();
  v2 = v3.receiver;
  [(CHWorkoutsListTableViewCell *)&v3 prepareForReuse];
  sub_10017577C();
}

@end