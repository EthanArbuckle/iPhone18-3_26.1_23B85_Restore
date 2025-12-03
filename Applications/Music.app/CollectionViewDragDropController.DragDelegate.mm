@interface CollectionViewDragDropController.DragDelegate
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
@end

@implementation CollectionViewDragDropController.DragDelegate

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  if (([viewCopy isEditing] & 1) == 0)
  {
    v14 = *(&selfCopy->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider);
    if (v14)
    {

      v14(session, v11);
      sub_100020438(v14);
    }
  }

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_100009F78(0, &qword_10118B920);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  if (([viewCopy isEditing] & 1) == 0)
  {
    v15 = *(&selfCopy->super.isa + OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider);
    if (v15)
    {

      v15(session, v12);
      sub_100020438(v15);
    }
  }

  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  sub_100009F78(0, &qword_10118B920);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1003272AC(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end