@interface OnboardingViewController
- (_TtC8AppStore24OnboardingViewController)initWithCoder:(id)coder;
- (_TtC8AppStore24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OnboardingViewController

- (_TtC8AppStore24OnboardingViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UINavigationController) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10036E570();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10036ECA8(appear);
}

- (_TtC8AppStore24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end