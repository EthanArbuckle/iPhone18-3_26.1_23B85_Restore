@interface OnboardingViewController
- (_TtC8AppStore24OnboardingViewController)initWithCoder:(id)a3;
- (_TtC8AppStore24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation OnboardingViewController

- (_TtC8AppStore24OnboardingViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UINavigationController) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10036E570();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10036ECA8(a3);
}

- (_TtC8AppStore24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end