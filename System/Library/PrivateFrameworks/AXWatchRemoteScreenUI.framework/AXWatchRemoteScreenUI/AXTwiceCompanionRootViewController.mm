@interface AXTwiceCompanionRootViewController
- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)airplayDidStartStreamingWithMirroringLayer:(id)layer;
- (void)airplayDidStopStreaming;
- (void)axActionPerformWithAction:(int)action value:(id)value bridgeElement:(id)element;
- (void)axElementActivate:(CGPoint)activate;
- (void)crownButtonLongPressed;
- (void)crownButtonPressed;
- (void)crownButtonScrollDown;
- (void)crownButtonScrollUp;
- (void)dealloc;
- (void)dismissButtonTappedWithSender:(id)sender;
- (void)doubleCrownButtonPressed;
- (void)pullToDismissViewController;
- (void)sideButtonLongPressed;
- (void)sideButtonPressed;
- (void)stingButtonKeycord;
- (void)stingButtonLongPressed;
- (void)stingButtonPressed;
- (void)tripleCrownButtonPressed;
- (void)twiceRemoteScreenReceiveMessage:(id)message;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AXTwiceCompanionRootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23D6DF20C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23D6DFAF4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_23D6DFF8C(disappear);
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
  selfCopy = self;
  v4 = v2;
  sub_23D6EE520();

  v5 = sub_23D6DDD68();
  [v5 cleanup];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for AXTwiceCompanionRootViewController();
  [(AXTwiceCompanionRootViewController *)&v6 dealloc];
}

- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_23D6EE740();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return AXTwiceCompanionRootViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)twiceRemoteScreenReceiveMessage:(id)message
{
  v4 = sub_23D6EE710();
  selfCopy = self;
  AXTwiceCompanionRootViewController.twiceRemoteScreenReceiveMessage(_:)(v4);
}

- (void)dismissButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23D6ED9C8();
}

- (void)airplayDidStartStreamingWithMirroringLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  AXTwiceCompanionRootViewController.airplayDidStartStreaming(withMirroringLayer:)(layerCopy);
}

- (void)airplayDidStopStreaming
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.airplayDidStopStreaming()();
}

- (void)axElementActivate:(CGPoint)activate
{
  y = activate.y;
  x = activate.x;
  selfCopy = self;
  AXTwiceCompanionRootViewController.axElementActivate(_:)(__PAIR128__(*&y, *&x));
}

- (void)crownButtonPressed
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.crownButtonPressed()();
}

- (void)doubleCrownButtonPressed
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.doubleCrownButtonPressed()();
}

- (void)tripleCrownButtonPressed
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.tripleCrownButtonPressed()();
}

- (void)crownButtonScrollUp
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.crownButtonScrollUp()();
}

- (void)crownButtonScrollDown
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.crownButtonScrollDown()();
}

- (void)crownButtonLongPressed
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.crownButtonLongPressed()();
}

- (void)sideButtonPressed
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.sideButtonPressed()();
}

- (void)sideButtonLongPressed
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.sideButtonLongPressed()();
}

- (void)axActionPerformWithAction:(int)action value:(id)value bridgeElement:(id)element
{
  if (value)
  {
    elementCopy = element;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23D6EE8A0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    elementCopy2 = element;
    selfCopy2 = self;
  }

  AXTwiceCompanionRootViewController.axActionPerform(action:value:bridgeElement:)(action, v12, element);

  sub_23D6EDEA0(v12, &qword_27E2E2B60, qword_23D6EFE00);
}

- (void)pullToDismissViewController
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.pullToDismissViewController()();
}

- (void)stingButtonPressed
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.stingButtonPressed()();
}

- (void)stingButtonLongPressed
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.stingButtonLongPressed()();
}

- (void)stingButtonKeycord
{
  selfCopy = self;
  AXTwiceCompanionRootViewController.stingButtonKeycord()();
}

@end