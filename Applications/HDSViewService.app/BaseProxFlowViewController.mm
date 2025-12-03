@interface BaseProxFlowViewController
- (_TtC14HDSViewService26BaseProxFlowViewController)initWithCoder:(id)coder;
- (_TtC14HDSViewService26BaseProxFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_willAppearInRemoteViewController;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BaseProxFlowViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10009CCFC(appear);
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseProxFlowViewController();
  v2 = v4.receiver;
  [(BaseProxFlowViewController *)&v4 _willAppearInRemoteViewController];
  v3 = sub_10009CC3C();
  if (v3)
  {
    [v3 setAllowsAlertStacking:{1, v4.receiver, v4.super_class}];
    swift_unknownObjectRelease();
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  if (SFDeviceClassCodeGet() == 3)
  {
    v3 = 30;
  }

  else
  {
    v3 = PRXSupportedInterfaceOrientations();
  }

  return v3;
}

- (_TtC14HDSViewService26BaseProxFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for BaseProxFlowViewController();
  v9 = [(BaseProxFlowViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC14HDSViewService26BaseProxFlowViewController)initWithCoder:(id)coder
{
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