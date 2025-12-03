@interface OnboardingAdPrivacyViewController
- (_TtC20ProductPageExtension33OnboardingAdPrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC20ProductPageExtension33OnboardingAdPrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (unint64_t)supportedInterfaceOrientations;
- (void)didTapLearnMore;
- (void)didTapTurnOff;
- (void)didTapTurnOn;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OnboardingAdPrivacyViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1005E9D38();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1005EA520();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(OnboardingAdPrivacyViewController *)selfCopy traitCollection];
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

- (void)didTapLearnMore
{
  selfCopy = self;
  sub_1005EAC38();
}

- (void)didTapTurnOn
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_buttonsCallback];
  selfCopy = self;
  v2();
}

- (void)didTapTurnOff
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_buttonsCallback];
  selfCopy = self;
  v2();
}

- (_TtC20ProductPageExtension33OnboardingAdPrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension33OnboardingAdPrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end