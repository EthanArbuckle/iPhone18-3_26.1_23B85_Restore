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
  sub_10024F120();
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
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect);
  if (v9)
  {
    selfCopy = self;
    sub_10001CE50(v9);
    v11 = sub_10075E07C();
    v9(v11);
    sub_1000167E0(v9);

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
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10024FF24(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  selfCopy = self;
  sub_10025004C(&v19);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
    [viewCopy bounds];
    v13 = sub_100250938(&v22, viewCopy);
    v15 = v14;
    v25 = v22;
    sub_10000CFBC(&v25, &unk_100943470);
    v26 = v23;
    sub_1000B8AFC(&v26);
  }

  else
  {
    v13 = 0.0;
    v15 = 0.0;
  }

  (*(v8 + 8))(v10, v7);
  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
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
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1002520F8(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver))
  {
    scrollCopy = scroll;
    selfCopy = self;

    v5.super.super.super.isa = scrollCopy;
    sub_10076811C(v5);
  }
}

@end