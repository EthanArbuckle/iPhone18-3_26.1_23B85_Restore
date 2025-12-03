@interface PregnancyOnboardingConfirmationViewController
- (_TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PregnancyOnboardingConfirmationViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29DFDBEA8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(OBBaseWelcomeController *)&v7 viewDidAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setNavigationBarHidden_];
  }

  sub_29E2BE504();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(OBBaseWelcomeController *)&v8 viewDidDisappear:disappearCopy];
  sub_29E2BE4F4();
  v5 = sub_29DFDB5CC();
  [v5 hidesBusyIndicator];

  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v7 = navigationController;
    [navigationController setNavigationBarHidden_];
  }
}

- (void)hxui_primaryFooterButtonTapped
{
  selfCopy = self;
  v2 = sub_29DFDB5CC();
  [v2 showsBusyIndicator];

  LODWORD(v2) = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController_onboardingStep);

  sub_29E27EA20(v2, 2u);
}

- (_TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end