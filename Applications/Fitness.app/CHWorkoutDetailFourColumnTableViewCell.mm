@interface CHWorkoutDetailFourColumnTableViewCell
+ (double)preferredHeightForWorkout:(id)workout indexPath:(id)path numberOfRows:(int64_t)rows;
- (CHWorkoutDetailFourColumnTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation CHWorkoutDetailFourColumnTableViewCell

+ (double)preferredHeightForWorkout:(id)workout indexPath:(id)path numberOfRows:(int64_t)rows
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v8, v5);
  return 32.0;
}

- (CHWorkoutDetailFourColumnTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1002256D0(style, identifier, v6);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutDetailFourColumnTableViewCell();
  v2 = v3.receiver;
  [(CHWorkoutDetailFourColumnTableViewCell *)&v3 prepareForReuse];
  sub_1002253F8();
}

@end