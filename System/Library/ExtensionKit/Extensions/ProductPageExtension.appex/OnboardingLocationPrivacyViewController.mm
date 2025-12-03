@interface OnboardingLocationPrivacyViewController
- (_TtC20ProductPageExtension39OnboardingLocationPrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC20ProductPageExtension39OnboardingLocationPrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (unint64_t)supportedInterfaceOrientations;
- (void)didTapContinue;
- (void)didTapManage;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OnboardingLocationPrivacyViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10027DC44();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10027E160();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(OnboardingLocationPrivacyViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)didTapContinue
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC20ProductPageExtension39OnboardingLocationPrivacyViewController_continueCallback];
  selfCopy = self;
  v2();
}

- (void)didTapManage
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC20ProductPageExtension39OnboardingLocationPrivacyViewController_manageCallback];
  selfCopy = self;
  v2();
}

- (_TtC20ProductPageExtension39OnboardingLocationPrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension39OnboardingLocationPrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end