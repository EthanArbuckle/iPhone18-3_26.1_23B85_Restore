@interface PregnancyOnboardingRecordDetailsViewController
- (_TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PregnancyOnboardingRecordDetailsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29DEBC1F8();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.receiver = self;
  v10.super_class = ObjectType;
  selfCopy = self;
  [(PregnancyOnboardingRecordDetailsViewController *)&v10 viewWillAppear:appearCopy];
  sub_29E2BCA84();
  sub_29E042A88(v8);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_29DEBCFA4();
}

- (void)hxui_primaryFooterButtonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_onboardingStep);
  selfCopy = self;

  sub_29E27EA20(v2, 2u);
}

- (void)hxui_cancelButtonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_onboardingStep);
  selfCopy = self;

  sub_29E27EC80(v2, 1);
}

- (_TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end