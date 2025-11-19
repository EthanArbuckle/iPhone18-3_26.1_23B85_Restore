@interface GuidedSearchTokenPaletteView
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation GuidedSearchTokenPaletteView

- (void)layoutSubviews
{
  v2 = self;
  sub_1005555C0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = [(GuidedSearchTokenPaletteView *)v4 traitCollection];

  v6 = 60.0;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect);
  if (v9)
  {
    v10 = self;
    sub_10000827C(v9);
    v11 = IndexPath.row.getter();
    v9(v11);
    sub_10001F63C(v9);

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v12 = *(v6 + 8);
    v13 = self;
    v12(v8, v5);
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_100556030(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_100556158(v23);
  if (v23[3])
  {
    v13 = v23[1];
    v14 = v23[0];
    v15 = v24;
    [v11 bounds];
    v16 = sub_100556A00(v14, v13);
    v17 = sub_100556CC8(v16, v15 & 1, v11);
    v19 = v18;
  }

  else
  {

    v17 = 0.0;
    v19 = 0.0;
  }

  (*(v8 + 8))(v10, v7);
  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = a3;
  v6 = [v5 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 1)
  {

    v8 = 20.0;
  }

  else
  {
    [v5 bounds];
    Width = CGRectGetWidth(v13);

    v8 = 52.0;
    if (Width <= 834.0)
    {
      v8 = 34.0;
    }
  }

  v10 = 6.0;
  v11 = 12.0;
  v12 = v8;
  result.right = v12;
  result.bottom = v11;
  result.left = v8;
  result.top = v10;
  return result;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_10055832C(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver))
  {
    v4 = a3;
    v5 = self;

    ImpressionsScrollObserver.didScroll(in:)(v4);
  }
}

@end