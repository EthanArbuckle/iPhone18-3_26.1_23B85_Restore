@interface OnboardingWelcomeViewController
- (_TtC8AppStore31OnboardingWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC8AppStore31OnboardingWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (unint64_t)supportedInterfaceOrientations;
- (void)didTapContinue;
@end

@implementation OnboardingWelcomeViewController

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(OnboardingWelcomeViewController *)selfCopy traitCollection];
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
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC8AppStore31OnboardingWelcomeViewController_primaryButtonCallback];
  selfCopy = self;
  v2();
}

- (_TtC8AppStore31OnboardingWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore31OnboardingWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end