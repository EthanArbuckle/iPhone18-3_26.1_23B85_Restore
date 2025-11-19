@interface CHWorkoutDetailedHeartRateViewController
- (CHWorkoutDetailedHeartRateViewController)initWithCoder:(id)a3;
- (CHWorkoutDetailedHeartRateViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CHWorkoutDetailedHeartRateViewController)initWithWorkout:(id)a3 workoutActivity:(id)a4 formattingManager:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CHWorkoutDetailedHeartRateViewController

- (CHWorkoutDetailedHeartRateViewController)initWithWorkout:(id)a3 workoutActivity:(id)a4 formattingManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_1001C991C(v7, a4, v9);

  return v10;
}

- (CHWorkoutDetailedHeartRateViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1001C8EEC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1001C923C(a3);
}

- (CHWorkoutDetailedHeartRateViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end