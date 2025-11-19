@interface LockupCollectionSearchResultContentView
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)layoutSubviews;
@end

@implementation LockupCollectionSearchResultContentView

- (void)layoutSubviews
{
  v2 = self;
  sub_1001DBD6C();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v10 = a3;
  v11 = self;
  sub_1001E0470();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v10 = (self + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = self;
    v13 = sub_10001CE50(v11);
    v11(v13);
    sub_1000167E0(v11);
  }

  (*(v7 + 8))(v9, v6);
}

@end