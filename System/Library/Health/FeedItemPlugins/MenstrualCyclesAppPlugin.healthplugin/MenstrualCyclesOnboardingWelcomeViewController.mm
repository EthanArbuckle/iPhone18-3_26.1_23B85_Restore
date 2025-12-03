@interface MenstrualCyclesOnboardingWelcomeViewController
- (_TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelButtonTapped:(id)tapped;
- (void)nextButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation MenstrualCyclesOnboardingWelcomeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E08DF1C();
}

- (void)nextButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  sub_29E08EDD4();

  sub_29DE93B3C(&v5);
}

- (void)cancelButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  v5 = selfCopy + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(selfCopy, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_29DE93B3C(&v8);
}

- (_TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end