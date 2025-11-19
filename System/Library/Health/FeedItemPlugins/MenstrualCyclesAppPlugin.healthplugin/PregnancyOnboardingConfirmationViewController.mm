@interface PregnancyOnboardingConfirmationViewController
- (_TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PregnancyOnboardingConfirmationViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29DFDBEA8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(OBBaseWelcomeController *)&v7 viewDidAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setNavigationBarHidden_];
  }

  sub_29E2BE504();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(OBBaseWelcomeController *)&v8 viewDidDisappear:v3];
  sub_29E2BE4F4();
  v5 = sub_29DFDB5CC();
  [v5 hidesBusyIndicator];

  v6 = [v4 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 setNavigationBarHidden_];
  }
}

- (void)hxui_primaryFooterButtonTapped
{
  v3 = self;
  v2 = sub_29DFDB5CC();
  [v2 showsBusyIndicator];

  LODWORD(v2) = *(&v3->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController_onboardingStep);

  sub_29E27EA20(v2, 2u);
}

- (_TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end