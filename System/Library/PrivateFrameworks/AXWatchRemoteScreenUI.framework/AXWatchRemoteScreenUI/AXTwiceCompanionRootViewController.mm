@interface AXTwiceCompanionRootViewController
- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)airplayDidStartStreamingWithMirroringLayer:(id)a3;
- (void)airplayDidStopStreaming;
- (void)axActionPerformWithAction:(int)a3 value:(id)a4 bridgeElement:(id)a5;
- (void)axElementActivate:(CGPoint)a3;
- (void)crownButtonLongPressed;
- (void)crownButtonPressed;
- (void)crownButtonScrollDown;
- (void)crownButtonScrollUp;
- (void)dealloc;
- (void)dismissButtonTappedWithSender:(id)a3;
- (void)doubleCrownButtonPressed;
- (void)pullToDismissViewController;
- (void)sideButtonLongPressed;
- (void)sideButtonPressed;
- (void)stingButtonKeycord;
- (void)stingButtonLongPressed;
- (void)stingButtonPressed;
- (void)tripleCrownButtonPressed;
- (void)twiceRemoteScreenReceiveMessage:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AXTwiceCompanionRootViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_23D6DF20C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_23D6DFAF4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_23D6DFF8C(a3);
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
  v3 = self;
  v4 = v2;
  sub_23D6EE520();

  v5 = sub_23D6DDD68();
  [v5 cleanup];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for AXTwiceCompanionRootViewController();
  [(AXTwiceCompanionRootViewController *)&v6 dealloc];
}

- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_23D6EE740();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return AXTwiceCompanionRootViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)twiceRemoteScreenReceiveMessage:(id)a3
{
  v4 = sub_23D6EE710();
  v5 = self;
  AXTwiceCompanionRootViewController.twiceRemoteScreenReceiveMessage(_:)(v4);
}

- (void)dismissButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6ED9C8();
}

- (void)airplayDidStartStreamingWithMirroringLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  AXTwiceCompanionRootViewController.airplayDidStartStreaming(withMirroringLayer:)(v4);
}

- (void)airplayDidStopStreaming
{
  v2 = self;
  AXTwiceCompanionRootViewController.airplayDidStopStreaming()();
}

- (void)axElementActivate:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  AXTwiceCompanionRootViewController.axElementActivate(_:)(__PAIR128__(*&y, *&x));
}

- (void)crownButtonPressed
{
  v2 = self;
  AXTwiceCompanionRootViewController.crownButtonPressed()();
}

- (void)doubleCrownButtonPressed
{
  v2 = self;
  AXTwiceCompanionRootViewController.doubleCrownButtonPressed()();
}

- (void)tripleCrownButtonPressed
{
  v2 = self;
  AXTwiceCompanionRootViewController.tripleCrownButtonPressed()();
}

- (void)crownButtonScrollUp
{
  v2 = self;
  AXTwiceCompanionRootViewController.crownButtonScrollUp()();
}

- (void)crownButtonScrollDown
{
  v2 = self;
  AXTwiceCompanionRootViewController.crownButtonScrollDown()();
}

- (void)crownButtonLongPressed
{
  v2 = self;
  AXTwiceCompanionRootViewController.crownButtonLongPressed()();
}

- (void)sideButtonPressed
{
  v2 = self;
  AXTwiceCompanionRootViewController.sideButtonPressed()();
}

- (void)sideButtonLongPressed
{
  v2 = self;
  AXTwiceCompanionRootViewController.sideButtonLongPressed()();
}

- (void)axActionPerformWithAction:(int)a3 value:(id)a4 bridgeElement:(id)a5
{
  if (a4)
  {
    v8 = a5;
    v9 = self;
    swift_unknownObjectRetain();
    sub_23D6EE8A0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a5;
    v11 = self;
  }

  AXTwiceCompanionRootViewController.axActionPerform(action:value:bridgeElement:)(a3, v12, a5);

  sub_23D6EDEA0(v12, &qword_27E2E2B60, qword_23D6EFE00);
}

- (void)pullToDismissViewController
{
  v2 = self;
  AXTwiceCompanionRootViewController.pullToDismissViewController()();
}

- (void)stingButtonPressed
{
  v2 = self;
  AXTwiceCompanionRootViewController.stingButtonPressed()();
}

- (void)stingButtonLongPressed
{
  v2 = self;
  AXTwiceCompanionRootViewController.stingButtonLongPressed()();
}

- (void)stingButtonKeycord
{
  v2 = self;
  AXTwiceCompanionRootViewController.stingButtonKeycord()();
}

@end