@interface OnboardingViewController
- (_TtC18ASMessagesProvider24OnboardingViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OnboardingViewController

- (_TtC18ASMessagesProvider24OnboardingViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UINavigationController) init];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_6D2A98();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_6D31D0(appear);
}

- (_TtC18ASMessagesProvider24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end