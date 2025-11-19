@interface OnboardingLocationPrivacyViewController
- (_TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
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
  sub_28A1C8();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_28A6E4();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(OnboardingLocationPrivacyViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_0 + 1)
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
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_continueCallback];
  v3 = self;
  v2();
}

- (void)didTapManage
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_manageCallback];
  v3 = self;
  v2();
}

- (_TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end