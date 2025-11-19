@interface OnboardingAdPrivacyViewController
- (_TtC8AppStore33OnboardingAdPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC8AppStore33OnboardingAdPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
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
  v2 = self;
  sub_10039C698();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10039CE80();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(OnboardingAdPrivacyViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
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
  v2 = self;
  sub_10039D598();
}

- (void)didTapTurnOn
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyViewController_buttonsCallback];
  v3 = self;
  v2();
}

- (void)didTapTurnOff
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyViewController_buttonsCallback];
  v3 = self;
  v2();
}

- (_TtC8AppStore33OnboardingAdPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore33OnboardingAdPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end