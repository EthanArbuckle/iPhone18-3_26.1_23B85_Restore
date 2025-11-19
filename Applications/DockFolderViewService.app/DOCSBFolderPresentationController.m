@interface DOCSBFolderPresentationController
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (NSString)description;
- (_TtC21DockFolderViewService33DOCSBFolderPresentationController)init;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (int64_t)_collectionView:(id)a3 dataOwnerForDragSession:(id)a4 atIndexPath:(id)a5;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)handleCollectionViewBackgroundTapped:(id)a3;
- (void)handleDockIconTapped:(id)a3;
@end

@implementation DOCSBFolderPresentationController

- (NSString)description
{
  v2 = self;
  sub_10001BD78();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC21DockFolderViewService33DOCSBFolderPresentationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return 1;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_100029E84(v11);

  (*(v7 + 8))(v10, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  v10 = sub_10003EE74(v7);

  return v10;
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a4;
  v15 = self;
  v16 = sub_10002A530(v13, v14);

  (*(v9 + 8))(v12, v8);

  return v16;
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a4;
  v15 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [(DOCSBFolderPresentationController *)v15 collectionView:v13 contextMenuConfiguration:v14 highlightPreviewForItemAtIndexPath:isa];

  (*(v9 + 8))(v12, v8);

  return v17;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  sub_10003F3EC(a4, v12);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
  sub_10001A2A8(0, &qword_1000BC468, UIDragItem_ptr);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  sub_10003F838(a4, v13);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v13, v9);
  sub_10001A2A8(0, &qword_1000BC468, UIDragItem_ptr);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_10003FBCC(v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_10004001C(v5);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1000402E4(v5);

  swift_unknownObjectRelease();
}

- (int64_t)_collectionView:(id)a3 dataOwnerForDragSession:(id)a4 atIndexPath:(id)a5
{
  v8 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
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

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  v16 = sub_100040574(v11);

  swift_unknownObjectRelease();
  sub_100006390(v11, &qword_1000BC448, &qword_100090B98);
  return v16;
}

- (void)handleDockIconTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004070C();
}

- (void)handleCollectionViewBackgroundTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100040A30();
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10002D980(v4);

  return self & 1;
}

@end