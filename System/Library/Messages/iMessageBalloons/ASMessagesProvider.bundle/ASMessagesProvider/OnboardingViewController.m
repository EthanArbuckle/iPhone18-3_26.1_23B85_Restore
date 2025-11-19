@interface OnboardingViewController
- (_TtC18ASMessagesProvider24OnboardingViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation OnboardingViewController

- (_TtC18ASMessagesProvider24OnboardingViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UINavigationController) init];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_6D2A98();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_6D31D0(a3);
}

- (_TtC18ASMessagesProvider24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end