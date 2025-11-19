@interface OnboardingViewController
- (_TtC20ProductPageExtension24OnboardingViewController)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation OnboardingViewController

- (_TtC20ProductPageExtension24OnboardingViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UINavigationController) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1006FDDC8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1006FE500(a3);
}

- (_TtC20ProductPageExtension24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end