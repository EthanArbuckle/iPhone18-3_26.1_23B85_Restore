@interface CHDivingDetailChartDetailViewController
- (CHDivingDetailChartDetailViewController)initWithCoder:(id)coder;
- (CHDivingDetailChartDetailViewController)initWithDataCalculator:(id)calculator;
- (CHDivingDetailChartDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CHDivingDetailChartDetailViewController

- (CHDivingDetailChartDetailViewController)initWithDataCalculator:(id)calculator
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___CHDivingDetailChartDetailViewController_hostingController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CHDivingDetailChartDetailViewController_dataCalculator) = calculator;
  v8.receiver = self;
  v8.super_class = ObjectType;
  calculatorCopy = calculator;
  return [(CHDivingDetailChartDetailViewController *)&v8 initWithNibName:0 bundle:0];
}

- (CHDivingDetailChartDetailViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___CHDivingDetailChartDetailViewController_hostingController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10037DC18();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10037E298(appear);
}

- (CHDivingDetailChartDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end