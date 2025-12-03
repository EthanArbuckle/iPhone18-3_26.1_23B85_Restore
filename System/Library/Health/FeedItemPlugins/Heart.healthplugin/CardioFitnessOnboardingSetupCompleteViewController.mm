@interface CardioFitnessOnboardingSetupCompleteViewController
- (_TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_primaryFooterButtonTapped;
- (void)hxui_secondaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation CardioFitnessOnboardingSetupCompleteViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29D888800();
}

- (void)hxui_primaryFooterButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_29D888C68(selfCopy, v4, 3u, &off_2A244AFE8);
    sub_29D936978();
  }
}

- (void)hxui_secondaryFooterButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_29D8892A4(selfCopy, v4);
    sub_29D936978();
  }
}

- (_TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end