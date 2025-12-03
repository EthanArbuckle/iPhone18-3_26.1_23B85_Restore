@interface CHWorkoutDetailFourColumnSwimmingSetTableViewCell
+ (double)preferredHeightForWorkout:(id)workout indexPath:(id)path numberOfRows:(int64_t)rows;
- (CHWorkoutDetailFourColumnSwimmingSetTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutDetailFourColumnSwimmingSetTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureHeader;
- (void)configureWithSwimmingSet:(id)set index:(int64_t)index isLastCell:(BOOL)cell formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailFourColumnSwimmingSetTableViewCell

+ (double)preferredHeightForWorkout:(id)workout indexPath:(id)path numberOfRows:(int64_t)rows
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = IndexPath.row.getter();
  (*(v6 + 8))(v8, v5);
  result = 83.0;
  if (!v9)
  {
    return 32.0;
  }

  return result;
}

- (void)configureHeader
{
  selfCopy = self;
  sub_100226050();
}

- (void)configureWithSwimmingSet:(id)set index:(int64_t)index isLastCell:(BOOL)cell formattingManager:(id)manager
{
  setCopy = set;
  managerCopy = manager;
  selfCopy = self;
  sub_1002264C8(set, index, cell, managerCopy);
}

- (CHWorkoutDetailFourColumnSwimmingSetTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnSwimmingSetTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnSwimmingSetTableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnSwimmingSetTableViewCell();
  coderCopy = coder;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end