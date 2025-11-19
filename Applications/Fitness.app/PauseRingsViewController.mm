@interface PauseRingsViewController
- (_TtC10FitnessApp24PauseRingsViewController)initWithCoder:(id)a3;
- (_TtC10FitnessApp24PauseRingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation PauseRingsViewController

- (_TtC10FitnessApp24PauseRingsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_hostingController) = 0;
  v3 = self + OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 6) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1003C023C();
}

- (_TtC10FitnessApp24PauseRingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end