@interface CHWorkoutDetailFourColumnSwimmingSetTableViewCell
+ (double)preferredHeightForWorkout:(id)a3 indexPath:(id)a4 numberOfRows:(int64_t)a5;
- (CHWorkoutDetailFourColumnSwimmingSetTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutDetailFourColumnSwimmingSetTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureHeader;
- (void)configureWithSwimmingSet:(id)a3 index:(int64_t)a4 isLastCell:(BOOL)a5 formattingManager:(id)a6;
@end

@implementation CHWorkoutDetailFourColumnSwimmingSetTableViewCell

+ (double)preferredHeightForWorkout:(id)a3 indexPath:(id)a4 numberOfRows:(int64_t)a5
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
  v2 = self;
  sub_100226050();
}

- (void)configureWithSwimmingSet:(id)a3 index:(int64_t)a4 isLastCell:(BOOL)a5 formattingManager:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = self;
  sub_1002264C8(a3, a4, a5, v12);
}

- (CHWorkoutDetailFourColumnSwimmingSetTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnSwimmingSetTableViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnSwimmingSetTableViewCell();
  v4 = a3;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end