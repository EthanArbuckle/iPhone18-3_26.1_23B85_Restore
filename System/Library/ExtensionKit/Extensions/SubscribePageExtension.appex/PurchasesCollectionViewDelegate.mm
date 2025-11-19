@interface PurchasesCollectionViewDelegate
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (_TtC22SubscribePageExtension31PurchasesCollectionViewDelegate)init;
- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForHeaderInSection:(int64_t)a5;
- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForRowAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 tableLayout:(id)a4 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation PurchasesCollectionViewDelegate

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_didScrollHandler);
  if (v3)
  {
    v5 = a3;
    v6 = self;
    sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_100086FD4(v12, v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_artworkLoader);
  v13 = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_objectGraph);
  v14 = a3;
  v15 = a4;
  v16 = self;
  sub_10008E360(v15, v11, v12, v13);

  (*(v9 + 8))(v11, v8);
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v9 = a3;
  isa = sub_100741704().super.isa;
  v11 = [v9 cellForItemAtIndexPath:isa];

  (*(v6 + 8))(v8, v5);
  if (!v11)
  {
    return 0;
  }

  swift_getObjectType();
  v12 = swift_conformsToProtocol2() == 0;

  return v12;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v10 = a3;
  v11 = self;
  sub_100087524(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC22SubscribePageExtension31PurchasesCollectionViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForHeaderInSection:(int64_t)a5
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_pageTraits);
  v8 = a3;
  v9 = self;
  swift_unknownObjectRetain();
  sub_100088A70(a5, v7, v8);
  v11 = v10;

  swift_unknownObjectRelease();
  return v11;
}

- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForRowAtIndexPath:(id)a5
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v11 = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_objectGraph);
  v12 = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_pageTraits);
  v13 = a3;
  v14 = self;
  swift_unknownObjectRetain();
  sub_100088F30(v10, v11, v12, v13);
  v16 = v15;

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)collectionView:(id)a3 tableLayout:(id)a4 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a5
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = sub_10008F1F8(v11);

  (*(v9 + 8))(v11, v8);

  return v15;
}

@end