@interface FTRecentsContainerViewController
- (BOOL)hasRecentsListViewController;
- (FTRecentsContainerViewController)initWithCoder:(id)a3;
- (FTRecentsContainerViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (FTRecentsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (FTRecentsContainerViewController)initWithRootViewController:(id)a3;
- (UICollectionView)collectionView;
- (id)presentScreenTimeShield;
- (void)presentRecentsDetailsViewFor:(id)a3;
- (void)setPresentScreenTimeShield:(id)a3;
- (void)showLinkDetailViewControllerForPseudonym:(id)a3;
- (void)showVideoPlayerForMessageWithUUID:(id)a3;
@end

@implementation FTRecentsContainerViewController

- (FTRecentsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = sub_100007408(v6, a3, a4);

  return v9;
}

- (BOOL)hasRecentsListViewController
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(self + OBJC_IVAR___FTRecentsContainerViewController_recentsList);

  return v3 != 0;
}

- (id)presentScreenTimeShield
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(self + OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield))
  {
    v3 = *(self + OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield + 8);
    v6[4] = *(self + OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield);
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10009B1A8;
    v6[3] = &unk_10010DF40;
    v4 = _Block_copy(v6);
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

- (void)setPresentScreenTimeShield:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(a3);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_10009A0C4;
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  sub_10009B320(v5, v6);
}

- (void)showLinkDetailViewControllerForPseudonym:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = *(self + OBJC_IVAR___FTRecentsContainerViewController_recentsList);
  if (v7)
  {
    v8 = v4;
    v9 = self;
    v10 = v7;
    v11._countAndFlagsBits = v8;
    v11._object = v6;
    RecentsListViewController.showLinkDetailViewController(for:)(v11);
  }

  else
  {
  }
}

- (void)showVideoPlayerForMessageWithUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(self + OBJC_IVAR___FTRecentsContainerViewController_recentsList);
  if (v8)
  {
    v9 = self;
    v10 = v8;
    RecentsListViewController.showVideoPlayerForMessage(withUUID:bypassSafety:)();
  }

  (*(v5 + 8))(v7, v4);
}

- (void)presentRecentsDetailsViewFor:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10009B798();
}

- (UICollectionView)collectionView
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(self + OBJC_IVAR___FTRecentsContainerViewController_recentsList);
  if (v3)
  {
    v4 = self;
    v5 = v3;
    v3 = dispatch thunk of RecentsListViewController.collectionView.getter();
  }

  else
  {
  }

  return v3;
}

- (FTRecentsContainerViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!a3)
  {
    ObjCClassMetadata = 0;
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = swift_getObjCClassMetadata();
LABEL_8:
  v8 = sub_10009BB18(ObjCClassMetadata, v7);

  return v8;
}

- (FTRecentsContainerViewController)initWithRootViewController:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (self + OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield);
  *v5 = 0;
  v5[1] = 0;
  *(self + OBJC_IVAR___FTRecentsContainerViewController_recentsList) = 0;
  *(self + OBJC_IVAR___FTRecentsContainerViewController_content) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RecentsContainerViewController();
  v6 = [(FTRecentsContainerViewController *)&v8 initWithRootViewController:a3];

  return v6;
}

- (FTRecentsContainerViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_10009BD80(a3);

  return v4;
}

@end