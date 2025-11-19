@interface CycleFactorsSectionViewController
- (_TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation CycleFactorsSectionViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(CycleFactorsSectionViewController *)&v3 viewDidLoad];
  sub_29E0F8DEC();
}

- (_TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController_shouldShowDisclosureIndicator) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController_cycleFactorsSectionView) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end