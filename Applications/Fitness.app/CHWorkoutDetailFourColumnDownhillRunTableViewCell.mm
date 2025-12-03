@interface CHWorkoutDetailFourColumnDownhillRunTableViewCell
- (CHWorkoutDetailFourColumnDownhillRunTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailFourColumnDownhillRunTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureHeaderWithFormattingManager:(id)manager;
- (void)configureWithDownhillRun:(id)run downhillRunIndex:(int64_t)index activityType:(id)type isLastCell:(BOOL)cell formattingManager:(id)manager;
- (void)configureWithDownhillRunsStats:(id)stats activityType:(id)type formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailFourColumnDownhillRunTableViewCell

- (void)configureHeaderWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1002210DC(managerCopy);
}

- (void)configureWithDownhillRunsStats:(id)stats activityType:(id)type formattingManager:(id)manager
{
  statsCopy = stats;
  typeCopy = type;
  managerCopy = manager;
  selfCopy = self;
  sub_100221750(statsCopy, typeCopy, managerCopy);
}

- (void)configureWithDownhillRun:(id)run downhillRunIndex:(int64_t)index activityType:(id)type isLastCell:(BOOL)cell formattingManager:(id)manager
{
  runCopy = run;
  typeCopy = type;
  managerCopy = manager;
  selfCopy = self;
  sub_100221AB8(run, index, typeCopy, cell, managerCopy);
}

- (CHWorkoutDetailFourColumnDownhillRunTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnDownhillRunTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnDownhillRunTableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnDownhillRunTableViewCell();
  coderCopy = coder;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end