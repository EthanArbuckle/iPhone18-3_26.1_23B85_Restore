@interface OnboardingAdPrivacyViewController
- (_TtC22SubscribePageExtension33OnboardingAdPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC22SubscribePageExtension33OnboardingAdPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
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
  sub_100375B74();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10037635C();
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
  sub_100376A74();
}

- (void)didTapTurnOn
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_buttonsCallback];
  v3 = self;
  v2();
}

- (void)didTapTurnOff
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_buttonsCallback];
  v3 = self;
  v2();
}

- (_TtC22SubscribePageExtension33OnboardingAdPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension33OnboardingAdPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end