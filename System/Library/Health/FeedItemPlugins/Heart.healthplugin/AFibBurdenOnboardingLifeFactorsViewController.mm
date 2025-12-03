@interface AFibBurdenOnboardingLifeFactorsViewController
- (_TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation AFibBurdenOnboardingLifeFactorsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29D738AEC();
}

- (void)hxui_primaryFooterButtonTapped
{
  v3 = self + OBJC_IVAR____TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    selfCopy = self;
    v5();
    sub_29D936978();
  }
}

- (void)hxui_cancelButtonTapped
{
  v3 = self + OBJC_IVAR____TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    selfCopy = self;
    v5();
    sub_29D936978();
  }
}

- (_TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  selfCopy = self;
  sub_29D739A24();
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  selfCopy = self;
  navigationItem = [(OBBaseWelcomeController *)selfCopy navigationItem];
  [navigationItem setRightBarButtonItem_];
}

@end