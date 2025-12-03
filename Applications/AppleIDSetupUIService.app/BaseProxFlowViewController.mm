@interface BaseProxFlowViewController
- (_TtC21AppleIDSetupUIService26BaseProxFlowViewController)initWithCoder:(id)coder;
- (_TtC21AppleIDSetupUIService26BaseProxFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_willAppearInRemoteViewController;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BaseProxFlowViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100005988(appear);
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
  selfCopy = self;
  currentDevice = [v3 currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v7 = 30;
  }

  else
  {
    v7 = PRXSupportedInterfaceOrientations();
  }

  return v7;
}

- (_TtC21AppleIDSetupUIService26BaseProxFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device] = 1;
    self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked] = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device] = 1;
    self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked] = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for BaseProxFlowViewController();
  v9 = [(BaseProxFlowViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC21AppleIDSetupUIService26BaseProxFlowViewController)initWithCoder:(id)coder
{
  *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device] = 1;
  self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseProxFlowViewController();
  coderCopy = coder;
  v5 = [(BaseProxFlowViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end