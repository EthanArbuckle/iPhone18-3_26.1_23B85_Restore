@interface RadioFavoritesViewController
- (BOOL)collectionView:(id)view canEditItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC5Media28RadioFavoritesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)invalidate;
- (void)longPressGestureChangedWithGesture:(id)gesture;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RadioFavoritesViewController

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10004BD10();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10004BECC();
}

- (void)invalidate
{
  v3 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_cancelSet;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = &_swiftEmptySetSingleton;
  selfCopy = self;

  v6 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet;
  swift_beginAccess();
  v7 = *(&selfCopy->super.super.super.isa + v6);
  *(&selfCopy->super.super.super.isa + v6) = &_swiftEmptySetSingleton;

  v8 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesObserverSet;
  swift_beginAccess();
  v9 = *(&selfCopy->super.super.super.isa + v8);
  *(&selfCopy->super.super.super.isa + v8) = &_swiftEmptySetSingleton;
}

- (void)longPressGestureChangedWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_10004ECE8(gestureCopy);
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v20 - v13;
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = *(v7 + 8);
  v17(v11, v6);
  v17(v14, v6);
  v18.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17(v16, v6);

  return v18.super.isa;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100050FD8();

  (*(v7 + 8))(v10, v6);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_100051154();

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10005129C(v14, v12);

  v17 = *(v8 + 8);
  v17(v12, v7);
  v17(v14, v7);
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v5 = 45.0;
  v6 = 12.0;
  v7 = 12.0;
  v8 = 12.0;
  result.right = v5;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *(v7 + 8);
  selfCopy = self;
  v11(v10, v6);
  v13 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize);
  v14 = *&selfCopy->carManager[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize];

  v15 = v13;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path
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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  if (!(v6 >> 62))
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < 0)
  {
    v8 = *(&self->super.super.super.isa + v5);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_10004F798(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (BOOL)collectionView:(id)view canEditItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return 0;
}

- (_TtC5Media28RadioFavoritesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end