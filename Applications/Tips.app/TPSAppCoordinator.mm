@interface TPSAppCoordinator
- (TPSAppCoordinator)init;
- (TPSAppCoordinator)initWithMainViewController:(id)a3;
- (TPSTipsByCollectionViewController)tipsByCollectionViewController;
- (UIWindow)mainViewControllerWindow;
- (void)displayCollectionID:(id)a3 tipID:(id)a4;
- (void)handleContentsCollectionViewTestFlow;
- (void)handleScrollCollectionViewTestFlowWithTestName:(id)a3 testOptions:(id)a4;
- (void)handleTipsListViewTestFlowWithTestName:(id)a3 testOptions:(id)a4 collectionID:(id)a5;
- (void)open:(id)a3;
- (void)setMainViewController:(id)a3;
@end

@implementation TPSAppCoordinator

- (void)setMainViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController) = a3;
  v3 = a3;
}

- (UIWindow)mainViewControllerWindow
{
  v2 = *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  v3 = self;
  result = [v2 view];
  if (result)
  {
    v5 = result;
    v6 = [(UIWindow *)result window];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (TPSTipsByCollectionViewController)tipsByCollectionViewController
{
  v2 = [*(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController) tipsByCollectionViewController];

  return v2;
}

- (TPSAppCoordinator)initWithMainViewController:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TPSAppCoordinator();
  v4 = a3;
  return [(TPSAppCoordinator *)&v6 init];
}

- (void)open:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  v10 = self;
  v11 = v9;
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  [v11 openURL:v13];

  (*(v5 + 8))(v8, v4);
}

- (void)displayCollectionID:(id)a3 tipID:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v4)
    {
LABEL_3:
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v11 = self;
  sub_10001FCC0(v6, v8, v9, v4);
}

- (TPSAppCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleScrollCollectionViewTestFlowWithTestName:(id)a3 testOptions:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___TPSAppCoordinator_mainViewController;
  v6 = *(&self->super.isa + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  v7 = self;
  [v6 showCollectionsView];
  v8 = [*(&self->super.isa + v5) collectionListViewController];
  v9 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v8 runTest:v9 options:isa];
}

- (void)handleTipsListViewTestFlowWithTestName:(id)a3 testOptions:(id)a4 collectionID:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_100020004();
}

- (void)handleContentsCollectionViewTestFlow
{
  v2 = self;
  sub_100020200();
}

@end