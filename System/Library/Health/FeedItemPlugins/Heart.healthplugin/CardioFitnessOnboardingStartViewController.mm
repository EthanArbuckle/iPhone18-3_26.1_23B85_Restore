@interface CardioFitnessOnboardingStartViewController
- (_TtC5Heart42CardioFitnessOnboardingStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Heart42CardioFitnessOnboardingStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation CardioFitnessOnboardingStartViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29D69F6F4();
}

- (void)hxui_primaryFooterButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_29D888E80(selfCopy, v4);
    sub_29D936978();
  }
}

- (void)hxui_cancelButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_29D77C72C(v4);
    sub_29D936978();
  }
}

- (_TtC5Heart42CardioFitnessOnboardingStartViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart42CardioFitnessOnboardingStartViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end