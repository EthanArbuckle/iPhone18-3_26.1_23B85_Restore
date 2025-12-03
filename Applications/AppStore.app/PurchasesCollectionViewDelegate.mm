@interface PurchasesCollectionViewDelegate
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC8AppStore31PurchasesCollectionViewDelegate)init;
- (double)collectionView:(id)view tableLayout:(id)layout heightForHeaderInSection:(int64_t)section;
- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path;
- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation PurchasesCollectionViewDelegate

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_didScrollHandler);
  if (v3)
  {
    scrollCopy = scroll;
    selfCopy = self;
    sub_10000827C(v3);
    v3(scrollCopy);

    sub_10001F63C(v3);
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1003147E8(viewCopy, cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_artworkLoader);
  v13 = *(&self->super.isa + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_objectGraph);
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_100316CF0(cellCopy, v11, v12, v13);

  (*(v9 + 8))(v11, v8);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [viewCopy cellForItemAtIndexPath:isa];

  (*(v6 + 8))(v8, v5);
  if (!v11)
  {
    return 0;
  }

  swift_getObjectType();
  v12 = swift_conformsToProtocol2() == 0;

  return v12;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100314D38(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC8AppStore31PurchasesCollectionViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)collectionView:(id)view tableLayout:(id)layout heightForHeaderInSection:(int64_t)section
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits);
  viewCopy = view;
  selfCopy = self;
  swift_unknownObjectRetain();
  sub_100310110(section, v7, viewCopy);
  v11 = v10;

  swift_unknownObjectRelease();
  return v11;
}

- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *(&self->super.isa + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_objectGraph);
  v12 = *(&self->super.isa + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits);
  viewCopy = view;
  selfCopy = self;
  swift_unknownObjectRetain();
  sub_1003105D0(v10, v11, v12, viewCopy);
  v16 = v15;

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v15 = sub_100317B88(v11);

  (*(v9 + 8))(v11, v8);

  return v15;
}

@end