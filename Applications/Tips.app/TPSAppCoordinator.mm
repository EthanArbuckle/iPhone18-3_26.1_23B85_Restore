@interface TPSAppCoordinator
- (TPSAppCoordinator)init;
- (TPSAppCoordinator)initWithMainViewController:(id)controller;
- (TPSTipsByCollectionViewController)tipsByCollectionViewController;
- (UIWindow)mainViewControllerWindow;
- (void)displayCollectionID:(id)d tipID:(id)iD;
- (void)handleContentsCollectionViewTestFlow;
- (void)handleScrollCollectionViewTestFlowWithTestName:(id)name testOptions:(id)options;
- (void)handleTipsListViewTestFlowWithTestName:(id)name testOptions:(id)options collectionID:(id)d;
- (void)open:(id)open;
- (void)setMainViewController:(id)controller;
@end

@implementation TPSAppCoordinator

- (void)setMainViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController) = controller;
  controllerCopy = controller;
}

- (UIWindow)mainViewControllerWindow
{
  v2 = *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  selfCopy = self;
  result = [v2 view];
  if (result)
  {
    v5 = result;
    window = [(UIWindow *)result window];

    return window;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (TPSTipsByCollectionViewController)tipsByCollectionViewController
{
  tipsByCollectionViewController = [*(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController) tipsByCollectionViewController];

  return tipsByCollectionViewController;
}

- (TPSAppCoordinator)initWithMainViewController:(id)controller
{
  *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController) = controller;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TPSAppCoordinator();
  controllerCopy = controller;
  return [(TPSAppCoordinator *)&v6 init];
}

- (void)open:(id)open
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  selfCopy = self;
  v11 = v9;
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  [v11 openURL:v13];

  (*(v5 + 8))(v8, v4);
}

- (void)displayCollectionID:(id)d tipID:(id)iD
{
  iDCopy = iD;
  if (d)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (iDCopy)
    {
LABEL_3:
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      iDCopy = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  selfCopy = self;
  sub_10001FCC0(v6, v8, v9, iDCopy);
}

- (TPSAppCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleScrollCollectionViewTestFlowWithTestName:(id)name testOptions:(id)options
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___TPSAppCoordinator_mainViewController;
  v6 = *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  selfCopy = self;
  [v6 showCollectionsView];
  collectionListViewController = [*(&self->super.isa + v5) collectionListViewController];
  v9 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [collectionListViewController runTest:v9 options:isa];
}

- (void)handleTipsListViewTestFlowWithTestName:(id)name testOptions:(id)options collectionID:(id)d
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100020004();
}

- (void)handleContentsCollectionViewTestFlow
{
  selfCopy = self;
  sub_100020200();
}

@end