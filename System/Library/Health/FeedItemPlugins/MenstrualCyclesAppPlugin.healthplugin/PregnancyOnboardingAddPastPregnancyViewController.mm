@interface PregnancyOnboardingAddPastPregnancyViewController
- (_TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PregnancyOnboardingAddPastPregnancyViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29DEDF030();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_29DEDFE78();
}

- (void)hxui_primaryFooterButtonTapped
{
  v2 = self;
  sub_29DEE03C0();
}

- (void)hxui_cancelButtonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_onboardingStep);
  v3 = self;

  sub_29E27EC80(v2, 1);
}

- (_TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end