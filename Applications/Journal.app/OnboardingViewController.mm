@interface OnboardingViewController
- (_TtC7Journal24OnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC7Journal24OnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueButtonTapped;
- (void)inquireAboutAccountStatus;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation OnboardingViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for OnboardingViewController();
  v4 = v6.receiver;
  [(OnboardingViewController *)&v6 viewDidAppear:appearCopy];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter addObserver:v4 selector:"inquireAboutAccountStatus" name:UISceneDidActivateNotification object:0];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OnboardingViewController();
  v2 = v7.receiver;
  [(OnboardingViewController *)&v7 viewDidLoad];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 keyCommandWithInput:v3 modifierFlags:0 action:{"continueButtonTapped", v7.receiver, v7.super_class}];

  [v2 addKeyCommand:v5];
  v6 = [v4 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"continueButtonTapped"];
  [v2 addKeyCommand:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for OnboardingViewController();
  [(OnboardingViewController *)&v8 viewWillDisappear:disappearCopy];
}

- (void)inquireAboutAccountStatus
{
  selfCopy = self;
  sub_10029E2F8();
}

- (void)continueButtonTapped
{
  selfCopy = self;
  sub_10029E744();
}

- (_TtC7Journal24OnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_10029E7FC(v9, v11, text, v13, v14, v16, layout);
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
  return sub_10029E7FC(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC7Journal24OnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (text)
  {
    text = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  iconCopy = icon;
  return sub_10029E9B8(v9, v11, text, v13, icon, layout);
}

@end