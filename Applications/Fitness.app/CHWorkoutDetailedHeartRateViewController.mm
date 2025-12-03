@interface CHWorkoutDetailedHeartRateViewController
- (CHWorkoutDetailedHeartRateViewController)initWithCoder:(id)coder;
- (CHWorkoutDetailedHeartRateViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CHWorkoutDetailedHeartRateViewController)initWithWorkout:(id)workout workoutActivity:(id)activity formattingManager:(id)manager;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CHWorkoutDetailedHeartRateViewController

- (CHWorkoutDetailedHeartRateViewController)initWithWorkout:(id)workout workoutActivity:(id)activity formattingManager:(id)manager
{
  workoutCopy = workout;
  activityCopy = activity;
  managerCopy = manager;
  v10 = sub_1001C991C(workoutCopy, activity, managerCopy);

  return v10;
}

- (CHWorkoutDetailedHeartRateViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001C8EEC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001C923C(appear);
}

- (CHWorkoutDetailedHeartRateViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end