@interface CHDivingDetailChartDetailViewController
- (CHDivingDetailChartDetailViewController)initWithCoder:(id)a3;
- (CHDivingDetailChartDetailViewController)initWithDataCalculator:(id)a3;
- (CHDivingDetailChartDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CHDivingDetailChartDetailViewController

- (CHDivingDetailChartDetailViewController)initWithDataCalculator:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___CHDivingDetailChartDetailViewController_hostingController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CHDivingDetailChartDetailViewController_dataCalculator) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(CHDivingDetailChartDetailViewController *)&v8 initWithNibName:0 bundle:0];
}

- (CHDivingDetailChartDetailViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___CHDivingDetailChartDetailViewController_hostingController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10037DC18();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10037E298(a3);
}

- (CHDivingDetailChartDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end