@interface OnboardingViewController
- (_TtC7Journal24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC7Journal24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continueButtonTapped;
- (void)inquireAboutAccountStatus;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation OnboardingViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for OnboardingViewController();
  v4 = v6.receiver;
  [(OnboardingViewController *)&v6 viewDidAppear:v3];
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v4 selector:"inquireAboutAccountStatus" name:UISceneDidActivateNotification object:0];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_self();
  v6 = self;
  v7 = [v5 defaultCenter];
  [v7 removeObserver:v6];

  v8.receiver = v6;
  v8.super_class = type metadata accessor for OnboardingViewController();
  [(OnboardingViewController *)&v8 viewWillDisappear:v3];
}

- (void)inquireAboutAccountStatus
{
  v2 = self;
  sub_10029E2F8();
}

- (void)continueButtonTapped
{
  v2 = self;
  sub_10029E744();
}

- (_TtC7Journal24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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
    return sub_10029E7FC(v9, v11, a4, v13, v14, v16, a6);
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
  return sub_10029E7FC(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC7Journal24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return sub_10029E9B8(v9, v11, a4, v13, a5, a6);
}

@end