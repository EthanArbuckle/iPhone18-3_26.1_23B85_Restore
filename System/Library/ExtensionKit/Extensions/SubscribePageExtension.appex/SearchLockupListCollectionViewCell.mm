@interface SearchLockupListCollectionViewCell
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchLockupListCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1004241C0();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  v2 = v3.receiver;
  [(SearchLockupListCollectionViewCell *)&v3 prepareForReuse];
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {

    sub_10074E214();
  }

  else
  {
    __break(1u);
  }
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
  sub_10042678C();

  (*(v7 + 8))(v9, v6);
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
  sub_100426B10();

  (*(v9 + 8))(v11, v8);
}

@end