@interface WorkoutOnboardingViewController
- (_TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)handleContinueAction;
@end

@implementation WorkoutOnboardingViewController

- (void)handleContinueAction
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController_onContinue];
  v4 = self;

  v2(v3);
}

- (_TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_10025A1C8(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_10025A1C8(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = &self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController_onContinue];
    *v10 = ASFriendListDisplayMode.id.getter;
    *(v10 + 1) = 0;
    v11 = a3;
    v12 = a5;
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = &self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController_onContinue];
    *v14 = ASFriendListDisplayMode.id.getter;
    *(v14 + 1) = 0;
    v15 = a3;
    v16 = a5;
    v13 = 0;
  }

  v19.receiver = self;
  v19.super_class = type metadata accessor for WorkoutOnboardingViewController();
  v17 = [(WorkoutOnboardingViewController *)&v19 initWithTitle:a3 detailText:v13 icon:a5 contentLayout:a6];

  return v17;
}

@end