@interface CHWorkoutDetailActivityTableViewCell
+ (double)preferredHeightForWorkout:(id)workout indexPath:(id)path numberOfRows:(int64_t)rows;
- (CHWorkoutDetailActivityTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CHWorkoutDetailNavigationDelegate)navigationDelegate;
- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity formattingManager:(id)manager dataCalculator:(id)calculator;
- (void)didTapWorkoutActivity;
- (void)prepareForReuse;
@end

@implementation CHWorkoutDetailActivityTableViewCell

- (CHWorkoutDetailNavigationDelegate)navigationDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (double)preferredHeightForWorkout:(id)workout indexPath:(id)path numberOfRows:(int64_t)rows
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v8, v5);
  return 74.0;
}

- (CHWorkoutDetailActivityTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100688844(style, identifier, v6);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100688E90();
}

- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity formattingManager:(id)manager dataCalculator:(id)calculator
{
  workoutCopy = workout;
  activityCopy = activity;
  managerCopy = manager;
  calculatorCopy = calculator;
  selfCopy = self;
  sub_10068B1D8(workoutCopy, activityCopy, managerCopy, calculatorCopy);
}

- (void)didTapWorkoutActivity
{
  selfCopy = self;
  sub_10068C1D8();
}

@end