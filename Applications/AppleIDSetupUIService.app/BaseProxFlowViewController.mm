@interface BaseProxFlowViewController
- (_TtC21AppleIDSetupUIService26BaseProxFlowViewController)initWithCoder:(id)a3;
- (_TtC21AppleIDSetupUIService26BaseProxFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_willAppearInRemoteViewController;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation BaseProxFlowViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100005988(a3);
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseProxFlowViewController();
  v2 = v4.receiver;
  [(BaseProxFlowViewController *)&v4 _willAppearInRemoteViewController];
  v3 = sub_1000058B8();
  if (v3)
  {
    [v3 setAllowsAlertStacking:{1, v4.receiver, v4.super_class}];
    swift_unknownObjectRelease();
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = 30;
  }

  else
  {
    v7 = PRXSupportedInterfaceOrientations();
  }

  return v7;
}

- (_TtC21AppleIDSetupUIService26BaseProxFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device] = 1;
    self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked] = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device] = 1;
    self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for BaseProxFlowViewController();
  v9 = [(BaseProxFlowViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC21AppleIDSetupUIService26BaseProxFlowViewController)initWithCoder:(id)a3
{
  *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device] = 1;
  self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseProxFlowViewController();
  v4 = a3;
  v5 = [(BaseProxFlowViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end