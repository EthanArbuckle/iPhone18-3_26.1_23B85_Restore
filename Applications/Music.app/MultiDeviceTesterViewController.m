@interface MultiDeviceTesterViewController
- (_TtC5Music31MultiDeviceTesterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MultiDeviceTesterViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10027D428();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10027EB5C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MultiDeviceTesterViewController();
  v4 = v5.receiver;
  [(MultiDeviceTesterViewController *)&v5 viewDidDisappear:v3];
  static LifecyclePatrol.isEnabled = 1;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10027EE54(a3);
}

- (_TtC5Music31MultiDeviceTesterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10027FB04(v5, v7, a4);
}

@end