@interface TTRIBoardColumnDragAndDropController
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (_TtC9Reminders36TTRIBoardColumnDragAndDropController)init;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4;
@end

@implementation TTRIBoardColumnDragAndDropController

- (_TtC9Reminders36TTRIBoardColumnDragAndDropController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
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
    v13 = a3;
    swift_unknownObjectRetain();
    v14 = self;
    sub_100400358(v14, v10, v12);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  (*(v8 + 8))(v10, v7);
  sub_1000776A8();
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();
    v8 = self;
    sub_100400488(a4, v7);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  sub_100400968(a4, v12);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  sub_1000776A8();
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    v5 = self;
    TTRICollectionViewDragAndDropActivityTracker.dragSessionDidEnd(_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    v6 = self;
    v7 = sub_100400E5C(a4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  if (a5)
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
    v16 = a3;
    swift_unknownObjectRetain();
    v17 = self;
    v18 = sub_1003FF594(v17, a4, v11, v15);

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

- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();
    v8 = self;
    sub_1003FEF68(a4, v8, 0x6120646574697865, 0xEB00000000616572, 0, v7);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();
    v8 = self;
    TTRICollectionViewDragAndDropActivityTracker.dropSessionDidEnd(_:)();
    sub_1003FEF68(a4, v8, 0xD000000000000016, 0x80000001006859A0, 1, v7);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

@end