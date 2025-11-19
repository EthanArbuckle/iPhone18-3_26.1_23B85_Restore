@interface CollectionViewDragDropController.DropDelegate
- (_TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate)init;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
@end

@implementation CollectionViewDragDropController.DropDelegate

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
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

  v14 = *(&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate);
  if (v14)
  {
    v15 = a3;
    swift_unknownObjectRetain();
    v16 = self;
    sub_100030444(v14);
    v17 = v14(a4, v11);
    sub_100020438(v14);

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
  }

  sub_1000095E8(v11, &unk_10118BCE0);

  return v17;
}

- (_TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd);
  v7 = type metadata accessor for CollectionViewDragDropController.DropDelegate();
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = self;
  v9.super_class = v7;
  return [(CollectionViewDragDropController.DropDelegate *)&v9 init];
}

@end