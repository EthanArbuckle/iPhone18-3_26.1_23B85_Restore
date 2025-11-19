@interface OnboardingLocationPrivacyViewController
- (_TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (unint64_t)supportedInterfaceOrientations;
- (void)didTapContinue;
- (void)didTapManage;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OnboardingLocationPrivacyViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1002ABC08();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1002AC124();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(OnboardingLocationPrivacyViewController *)v2 traitCollection];
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

- (void)didTapContinue
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController_continueCallback];
  v3 = self;
  v2();
}

- (void)didTapManage
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController_manageCallback];
  v3 = self;
  v2();
}

- (_TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end