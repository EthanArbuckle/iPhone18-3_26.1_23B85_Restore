@interface CNMeCardSharingOnboardingAvatarCarouselLayout
+ (id)indexPathForNearestItemToCenterWithOffset:(CGPoint)offset collectionView:(id)view layout:(id)layout;
- (CGRect)frameForElementAtIndex:(int64_t)index visibleBounds:(CGRect)bounds;
- (double)pageOffsetForIndex:(int64_t)index;
- (double)pagingLength;
- (double)pagingOrigin;
- (id)indexesForElementsInRect:(CGRect)rect visibleBounds:(CGRect)bounds numberOfItems:(int64_t)items;
- (int64_t)selectedPageIndex;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselLayout

- (id)indexesForElementsInRect:(CGRect)rect visibleBounds:(CGRect)bounds numberOfItems:(int64_t)items
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v27 = *MEMORY[0x1E69E9840];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  height = [(UICollectionViewFlowLayout *)self layoutAttributesForElementsInRect:x, y, width, height];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [height countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(height);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        indexPath = [v16 indexPath];
        section = [indexPath section];

        if (!section)
        {
          indexPath2 = [v16 indexPath];
          [indexSet addIndex:{objc_msgSend(indexPath2, "row")}];
        }
      }

      v13 = [height countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = [indexSet copy];

  return v20;
}

- (CGRect)frameForElementAtIndex:(int64_t)index visibleBounds:(CGRect)bounds
{
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:{0, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height}];
  v6 = [(UICollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v5];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (double)pageOffsetForIndex:(int64_t)index
{
  collectionView = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  effectiveUserInterfaceLayoutDirection = [collectionView effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    collectionView2 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
    index = [collectionView2 numberOfItemsInSection:0] + ~index;
  }

  collectionView3 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  v9 = collectionView3;
  if (index <= 0)
  {
    [collectionView3 _firstPageOffset];
    v13 = v14;
  }

  else
  {
    [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self pagingLength];
    v11 = v10;
    [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self pagingOrigin];
    v13 = v12 + v11 * index;
  }

  return v13;
}

- (int64_t)selectedPageIndex
{
  collectionView = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  v7 = v6;
  collectionView2 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  v9 = [CNMeCardSharingOnboardingAvatarCarouselLayout indexPathForNearestItemToCenterWithOffset:collectionView2 collectionView:self layout:v5, v7];

  item = [v9 item];
  return item;
}

- (double)pagingOrigin
{
  collectionView = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  [(UICollectionViewFlowLayout *)self itemSize];
  v7 = (v5 - v6) * -0.5;

  return v7;
}

- (double)pagingLength
{
  collectionView = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  collectionView2 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [collectionView2 bounds];
  v8 = floor(v5 - v7) * 0.5;

  v9 = floor(v8 * 0.5) + -10.0;
  collectionView3 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [collectionView3 bounds];
  v12 = v11;
  collectionView4 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [collectionView4 bounds];
  v15 = v14;
  [(UICollectionViewFlowLayout *)self itemSize];
  v17 = v12 - (v15 - v16 - v9);

  return v17;
}

+ (id)indexPathForNearestItemToCenterWithOffset:(CGPoint)offset collectionView:(id)view layout:(id)layout
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  layoutCopy = layout;
  [viewCopy contentSize];
  v11 = v10;
  [viewCopy contentInset];
  v13 = v11 + v12;
  [viewCopy bounds];
  v14 = v13 - CGRectGetWidth(v52);
  if (x >= v14)
  {
    x = v14;
  }

  [viewCopy _firstPageOffset];
  if (v15 >= x)
  {
    x = v15;
  }

  [viewCopy bounds];
  v16 = CGRectGetWidth(v53) * 0.5 + x;
  [viewCopy bounds];
  v17 = y + CGRectGetHeight(v54) * 0.5;
  [viewCopy bounds];
  UIRectCenteredAboutPoint();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__CNMeCardSharingOnboardingAvatarCarouselLayout_indexPathForNearestItemToCenterWithOffset_collectionView_layout___block_invoke;
  aBlock[3] = &__block_descriptor_48_e39_d40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  *&aBlock[4] = v16;
  *&aBlock[5] = v17;
  v26 = _Block_copy(aBlock);
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0x7FEFFFFFFFFFFFFFLL;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = [layoutCopy indexesForElementsInRect:objc_msgSend(viewCopy visibleBounds:"numberOfItemsInSection:" numberOfItems:{0), v19, v21, v23, v25, v19, v21, v23, v25}];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __113__CNMeCardSharingOnboardingAvatarCarouselLayout_indexPathForNearestItemToCenterWithOffset_collectionView_layout___block_invoke_2;
  v36 = &unk_1E74E2E88;
  v28 = layoutCopy;
  v37 = v28;
  v41 = v19;
  v42 = v21;
  v43 = v23;
  v44 = v25;
  v29 = v26;
  v38 = v29;
  v39 = v49;
  v40 = &v45;
  [v27 enumerateIndexesUsingBlock:&v33];
  v30 = v46[3];
  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = 0;
  }

  else
  {
    v31 = [MEMORY[0x1E696AC88] indexPathForItem:v30 inSection:{0, v33, v34, v35, v36, v37}];
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(v49, 8);

  return v31;
}

double __113__CNMeCardSharingOnboardingAvatarCarouselLayout_indexPathForNearestItemToCenterWithOffset_collectionView_layout___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a2);
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetMidY(v12);
  return vabdd_f64(MidX, *(a1 + 32));
}

void __113__CNMeCardSharingOnboardingAvatarCarouselLayout_indexPathForNearestItemToCenterWithOffset_collectionView_layout___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) frameForElementAtIndex:a2 visibleBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v4 = (*(*(a1 + 40) + 16))();
  v5 = *(*(a1 + 48) + 8);
  if (v4 < *(v5 + 24))
  {
    *(v5 + 24) = v4;
    *(*(*(a1 + 56) + 8) + 24) = a2;
  }
}

@end