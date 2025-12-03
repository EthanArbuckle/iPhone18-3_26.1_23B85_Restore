@interface TTRIBoardColumnDragAndDropController
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (_TtC9Reminders36TTRIBoardColumnDragAndDropController)init;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view dropSessionDidExit:(id)exit;
@end

@implementation TTRIBoardColumnDragAndDropController

- (_TtC9Reminders36TTRIBoardColumnDragAndDropController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    viewCopy = view;
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_100400358(selfCopy, v10, v12);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  (*(v8 + 8))(v10, v7);
  sub_1000776A8();
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_100400488(begin, v7);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100400968(session, v12);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  sub_1000776A8();
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    TTRICollectionViewDragAndDropActivityTracker.dragSessionDidEnd(_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    v7 = sub_100400E5C(session);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  if (path)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    viewCopy = view;
    swift_unknownObjectRetain();
    selfCopy = self;
    v18 = sub_1003FF594(selfCopy, update, v11, v15);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
  }

  sub_1000079B4(v11, &unk_100771B10);

  return v18;
}

- (void)collectionView:(id)view dropSessionDidExit:(id)exit
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_1003FEF68(exit, selfCopy, 0x6120646574697865, 0xEB00000000616572, 0, v7);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();
    selfCopy = self;
    TTRICollectionViewDragAndDropActivityTracker.dropSessionDidEnd(_:)();
    sub_1003FEF68(end, selfCopy, 0xD000000000000016, 0x80000001006859A0, 1, v7);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

@end