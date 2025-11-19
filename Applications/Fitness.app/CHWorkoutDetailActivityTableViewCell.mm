@interface CHWorkoutDetailActivityTableViewCell
+ (double)preferredHeightForWorkout:(id)a3 indexPath:(id)a4 numberOfRows:(int64_t)a5;
- (CHWorkoutDetailActivityTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CHWorkoutDetailNavigationDelegate)navigationDelegate;
- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 formattingManager:(id)a5 dataCalculator:(id)a6;
- (void)didTapWorkoutActivity;
- (void)prepareForReuse;
@end

@implementation CHWorkoutDetailActivityTableViewCell

- (CHWorkoutDetailNavigationDelegate)navigationDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (double)preferredHeightForWorkout:(id)a3 indexPath:(id)a4 numberOfRows:(int64_t)a5
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v8, v5);
  return 74.0;
}

- (CHWorkoutDetailActivityTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100688844(a3, a4, v6);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100688E90();
}

- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 formattingManager:(id)a5 dataCalculator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_10068B1D8(v10, v11, v12, v13);
}

- (void)didTapWorkoutActivity
{
  v2 = self;
  sub_10068C1D8();
}

@end