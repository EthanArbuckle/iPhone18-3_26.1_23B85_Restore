@interface BaseProxFlowViewController
- (_TtC18SharingViewService26BaseProxFlowViewController)initWithCoder:(id)a3;
- (_TtC18SharingViewService26BaseProxFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_willAppearInRemoteViewController;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation BaseProxFlowViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10007EF68(a3);
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseProxFlowViewController();
  v2 = v4.receiver;
  [(BaseProxFlowViewController *)&v4 _willAppearInRemoteViewController];
  v3 = sub_100070288();
  if (v3)
  {
    [v3 setAllowsAlertStacking:{1, v4.receiver, v4.super_class}];
    swift_unknownObjectRelease();
  }
}

- (_TtC18SharingViewService26BaseProxFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for BaseProxFlowViewController();
  v9 = [(BaseProxFlowViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18SharingViewService26BaseProxFlowViewController)initWithCoder:(id)a3
{
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