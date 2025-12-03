@interface GuidedSearchTokenPaletteView
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation GuidedSearchTokenPaletteView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005555C0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(GuidedSearchTokenPaletteView *)selfCopy traitCollection];

  v6 = 60.0;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect);
  if (v9)
  {
    selfCopy = self;
    sub_10000827C(v9);
    v11 = IndexPath.row.getter();
    v9(v11);
    sub_10001F63C(v9);

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v12 = *(v6 + 8);
    selfCopy2 = self;
    v12(v8, v5);
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100556030(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100556158(v23);
  if (v23[3])
  {
    v13 = v23[1];
    v14 = v23[0];
    v15 = v24;
    [viewCopy bounds];
    v16 = sub_100556A00(v14, v13);
    v17 = sub_100556CC8(v16, v15 & 1, viewCopy);
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

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  traitCollection = [viewCopy traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {

    v8 = 20.0;
  }

  else
  {
    [viewCopy bounds];
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
  sub_10055832C(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver))
  {
    scrollCopy = scroll;
    selfCopy = self;

    ImpressionsScrollObserver.didScroll(in:)(scrollCopy);
  }
}

@end