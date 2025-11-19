@interface CardioFitnessOnboardingSetupCompleteViewController
- (_TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)hxui_primaryFooterButtonTapped;
- (void)hxui_secondaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation CardioFitnessOnboardingSetupCompleteViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29D888800();
}

- (void)hxui_primaryFooterButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_29D888C68(v5, v4, 3u, &off_2A244AFE8);
    sub_29D936978();
  }
}

- (void)hxui_secondaryFooterButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_29D8892A4(v5, v4);
    sub_29D936978();
  }
}

- (_TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end