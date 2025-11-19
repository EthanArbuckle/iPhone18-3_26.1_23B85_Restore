@interface CHWorkoutDetailedPowerViewController
- (CHWorkoutDetailedPowerViewController)initWithCoder:(id)a3;
- (CHWorkoutDetailedPowerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CHWorkoutDetailedPowerViewController)initWithWorkout:(id)a3 workoutActivity:(id)a4 healthStore:(id)a5 formattingManager:(id)a6 isFirstPartyWorkout:(BOOL)a7;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CHWorkoutDetailedPowerViewController

- (CHWorkoutDetailedPowerViewController)initWithWorkout:(id)a3 workoutActivity:(id)a4 healthStore:(id)a5 formattingManager:(id)a6 isFirstPartyWorkout:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = sub_10016D4B4(v11, a4, v13, v14, v7);

  return v15;
}

- (CHWorkoutDetailedPowerViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10016CA58();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10016CDA8(a3);
}

- (CHWorkoutDetailedPowerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end