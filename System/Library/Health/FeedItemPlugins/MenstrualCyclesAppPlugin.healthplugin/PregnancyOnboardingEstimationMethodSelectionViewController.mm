@interface PregnancyOnboardingEstimationMethodSelectionViewController
- (_TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)hxui_secondaryFooterButtonTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PregnancyOnboardingEstimationMethodSelectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E1E694C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_29E1E748C();
}

- (void)hxui_primaryFooterButtonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_onboardingStep);
  selfCopy = self;

  sub_29E27EA20(v2, 2u);
}

- (void)hxui_secondaryFooterButtonTapped
{
  selfCopy = self;
  sub_29E1E763C();
}

- (void)hxui_cancelButtonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController_onboardingStep);
  selfCopy = self;

  sub_29E27EC80(v2, 1);
}

- (_TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin58PregnancyOnboardingEstimationMethodSelectionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end