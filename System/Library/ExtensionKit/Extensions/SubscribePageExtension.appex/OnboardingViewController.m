@interface OnboardingViewController
- (_TtC22SubscribePageExtension24OnboardingViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation OnboardingViewController

- (_TtC22SubscribePageExtension24OnboardingViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_navController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UINavigationController) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1006E3E34();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1006E458C(a3);
}

- (_TtC22SubscribePageExtension24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end