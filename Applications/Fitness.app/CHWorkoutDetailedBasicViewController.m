@interface CHWorkoutDetailedBasicViewController
- (CHWorkoutDetailedBasicViewController)initWithCoder:(id)a3;
- (CHWorkoutDetailedBasicViewController)initWithDownhillRunDataSource:(id)a3;
- (CHWorkoutDetailedBasicViewController)initWithIntervalDataSource:(id)a3;
- (CHWorkoutDetailedBasicViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CHWorkoutDetailedBasicViewController)initWithSegmentDataSource:(id)a3;
- (CHWorkoutDetailedBasicViewController)initWithSplitDataSource:(id)a3;
- (CHWorkoutDetailedBasicViewController)initWithTrackLapDataSource:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CHWorkoutDetailedBasicViewController

- (CHWorkoutDetailedBasicViewController)initWithSegmentDataSource:(id)a3
{
  v3 = a3;
  v4 = sub_1002D0248(v3);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithSplitDataSource:(id)a3
{
  v3 = a3;
  v4 = sub_1002D0528(v3);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithIntervalDataSource:(id)a3
{
  v3 = a3;
  v4 = sub_1002D07C4(v3);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithTrackLapDataSource:(id)a3
{
  v3 = a3;
  v4 = sub_1002D0A60(v3);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithDownhillRunDataSource:(id)a3
{
  v3 = a3;
  v4 = sub_1002D0CFC(v3);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1002CF870();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1002CFBB8(a3);
}

- (CHWorkoutDetailedBasicViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end