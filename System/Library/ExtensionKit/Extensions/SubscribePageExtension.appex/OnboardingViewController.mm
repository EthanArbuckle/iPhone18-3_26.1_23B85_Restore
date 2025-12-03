@interface OnboardingViewController
- (_TtC22SubscribePageExtension24OnboardingViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OnboardingViewController

- (_TtC22SubscribePageExtension24OnboardingViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_navController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UINavigationController) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006E3E34();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1006E458C(appear);
}

- (_TtC22SubscribePageExtension24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end