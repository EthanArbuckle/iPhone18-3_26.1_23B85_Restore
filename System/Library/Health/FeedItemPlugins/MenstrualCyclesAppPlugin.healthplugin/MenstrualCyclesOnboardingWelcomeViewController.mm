@interface MenstrualCyclesOnboardingWelcomeViewController
- (_TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelButtonTapped:(id)a3;
- (void)nextButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation MenstrualCyclesOnboardingWelcomeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E08DF1C();
}

- (void)nextButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  sub_29E08EDD4();

  sub_29DE93B3C(&v5);
}

- (void)cancelButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  v5 = v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v4, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_29DE93B3C(&v8);
}

- (_TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end