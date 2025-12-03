@interface WorkoutOnboardingViewController
- (_TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)handleContinueAction;
@end

@implementation WorkoutOnboardingViewController

- (void)handleContinueAction
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController_onContinue];
  selfCopy = self;

  v2(v3);
}

- (_TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_10025A1C8(v9, v11, text, v13, v14, v16, layout);
  }

  text = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_10025A1C8(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = &self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController_onContinue];
    *v10 = ASFriendListDisplayMode.id.getter;
    *(v10 + 1) = 0;
    titleCopy = title;
    iconCopy = icon;
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = &self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController_onContinue];
    *v14 = ASFriendListDisplayMode.id.getter;
    *(v14 + 1) = 0;
    titleCopy2 = title;
    iconCopy2 = icon;
    v13 = 0;
  }

  v19.receiver = self;
  v19.super_class = type metadata accessor for WorkoutOnboardingViewController();
  v17 = [(WorkoutOnboardingViewController *)&v19 initWithTitle:title detailText:v13 icon:icon contentLayout:layout];

  return v17;
}

@end