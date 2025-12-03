@interface OnboardingViewController
- (_TtC20ProductPageExtension24OnboardingViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OnboardingViewController

- (_TtC20ProductPageExtension24OnboardingViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UINavigationController) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006FDDC8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1006FE500(appear);
}

- (_TtC20ProductPageExtension24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end