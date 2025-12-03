@interface OnboardingLocationPrivacyViewController
- (_TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
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
  sub_28A1C8();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_28A6E4();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(OnboardingLocationPrivacyViewController *)selfCopy traitCollection];
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

- (void)didTapContinue
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_continueCallback];
  selfCopy = self;
  v2();
}

- (void)didTapManage
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController_manageCallback];
  selfCopy = self;
  v2();
}

- (_TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider39OnboardingLocationPrivacyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end