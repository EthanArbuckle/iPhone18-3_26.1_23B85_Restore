@interface CHWorkoutDetailedPowerViewController
- (CHWorkoutDetailedPowerViewController)initWithCoder:(id)coder;
- (CHWorkoutDetailedPowerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CHWorkoutDetailedPowerViewController)initWithWorkout:(id)workout workoutActivity:(id)activity healthStore:(id)store formattingManager:(id)manager isFirstPartyWorkout:(BOOL)partyWorkout;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CHWorkoutDetailedPowerViewController

- (CHWorkoutDetailedPowerViewController)initWithWorkout:(id)workout workoutActivity:(id)activity healthStore:(id)store formattingManager:(id)manager isFirstPartyWorkout:(BOOL)partyWorkout
{
  partyWorkoutCopy = partyWorkout;
  workoutCopy = workout;
  activityCopy = activity;
  storeCopy = store;
  managerCopy = manager;
  v15 = sub_10016D4B4(workoutCopy, activity, storeCopy, managerCopy, partyWorkoutCopy);

  return v15;
}

- (CHWorkoutDetailedPowerViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10016CA58();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10016CDA8(appear);
}

- (CHWorkoutDetailedPowerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end