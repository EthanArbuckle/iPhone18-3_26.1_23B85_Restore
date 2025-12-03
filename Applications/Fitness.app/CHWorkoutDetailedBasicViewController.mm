@interface CHWorkoutDetailedBasicViewController
- (CHWorkoutDetailedBasicViewController)initWithCoder:(id)coder;
- (CHWorkoutDetailedBasicViewController)initWithDownhillRunDataSource:(id)source;
- (CHWorkoutDetailedBasicViewController)initWithIntervalDataSource:(id)source;
- (CHWorkoutDetailedBasicViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CHWorkoutDetailedBasicViewController)initWithSegmentDataSource:(id)source;
- (CHWorkoutDetailedBasicViewController)initWithSplitDataSource:(id)source;
- (CHWorkoutDetailedBasicViewController)initWithTrackLapDataSource:(id)source;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CHWorkoutDetailedBasicViewController

- (CHWorkoutDetailedBasicViewController)initWithSegmentDataSource:(id)source
{
  sourceCopy = source;
  v4 = sub_1002D0248(sourceCopy);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithSplitDataSource:(id)source
{
  sourceCopy = source;
  v4 = sub_1002D0528(sourceCopy);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithIntervalDataSource:(id)source
{
  sourceCopy = source;
  v4 = sub_1002D07C4(sourceCopy);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithTrackLapDataSource:(id)source
{
  sourceCopy = source;
  v4 = sub_1002D0A60(sourceCopy);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithDownhillRunDataSource:(id)source
{
  sourceCopy = source;
  v4 = sub_1002D0CFC(sourceCopy);

  return v4;
}

- (CHWorkoutDetailedBasicViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002CF870();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1002CFBB8(appear);
}

- (CHWorkoutDetailedBasicViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end