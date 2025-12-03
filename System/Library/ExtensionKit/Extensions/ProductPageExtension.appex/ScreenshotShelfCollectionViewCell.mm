@interface ScreenshotShelfCollectionViewCell
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ScreenshotShelfCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100376F78();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100377548();
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
  v12 = sub_1003777D0(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_1003799E4(viewCopy);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
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
  sub_100379E80();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  type metadata accessor for ScreenshotCollectionViewCell();
  v10 = *(*(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  cellCopy = cell;
  v12 = v10;
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  sub_10075FCEC(v15, v13);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  selfCopy = self;
  sub_100377D64(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_10037A0F4(layoutCopy, &selRef_setMinimumLineSpacing_);
  v11 = v10;

  return v11;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_10037A0F4(layoutCopy, &selRef_setMinimumInteritemSpacing_);
  v11 = v10;

  return v11;
}

@end