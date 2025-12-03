@interface OnboardingAdPrivacyViewController
- (_TtC18ASMessagesProvider33OnboardingAdPrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18ASMessagesProvider33OnboardingAdPrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
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
  sub_31E1D8();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_31E9C0();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(OnboardingAdPrivacyViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
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
  sub_31F0D8();
}

- (void)didTapTurnOn
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyViewController_buttonsCallback];
  selfCopy = self;
  v2();
}

- (void)didTapTurnOff
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyViewController_buttonsCallback];
  selfCopy = self;
  v2();
}

- (_TtC18ASMessagesProvider33OnboardingAdPrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider33OnboardingAdPrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end