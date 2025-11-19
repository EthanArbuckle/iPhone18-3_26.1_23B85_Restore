@interface CNMeCardSharingOnboardingAvatarCarouselLayout
+ (id)indexPathForNearestItemToCenterWithOffset:(CGPoint)a3 collectionView:(id)a4 layout:(id)a5;
- (CGRect)frameForElementAtIndex:(int64_t)a3 visibleBounds:(CGRect)a4;
- (double)pageOffsetForIndex:(int64_t)a3;
- (double)pagingLength;
- (double)pagingOrigin;
- (id)indexesForElementsInRect:(CGRect)a3 visibleBounds:(CGRect)a4 numberOfItems:(int64_t)a5;
- (int64_t)selectedPageIndex;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselLayout

- (id)indexesForElementsInRect:(CGRect)a3 visibleBounds:(CGRect)a4 numberOfItems:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27 = *MEMORY[0x1E69E9840];
  v10 = [MEMORY[0x1E696AD50] indexSet];
  v11 = [(UICollectionViewFlowLayout *)self layoutAttributesForElementsInRect:x, y, width, height];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 indexPath];
        v18 = [v17 section];

        if (!v18)
        {
          v19 = [v16 indexPath];
          [v10 addIndex:{objc_msgSend(v19, "row")}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = [v10 copy];

  return v20;
}

- (CGRect)frameForElementAtIndex:(int64_t)a3 visibleBounds:(CGRect)a4
{
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:{0, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
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

- (double)pageOffsetForIndex:(int64_t)a3
{
  v5 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  v6 = [v5 effectiveUserInterfaceLayoutDirection];

  if (v6 == 1)
  {
    v7 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
    a3 = [v7 numberOfItemsInSection:0] + ~a3;
  }

  v8 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  v9 = v8;
  if (a3 <= 0)
  {
    [v8 _firstPageOffset];
    v13 = v14;
  }

  else
  {
    [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self pagingLength];
    v11 = v10;
    [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self pagingOrigin];
    v13 = v12 + v11 * a3;
  }

  return v13;
}

- (int64_t)selectedPageIndex
{
  v3 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;
  v8 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  v9 = [CNMeCardSharingOnboardingAvatarCarouselLayout indexPathForNearestItemToCenterWithOffset:v8 collectionView:self layout:v5, v7];

  v10 = [v9 item];
  return v10;
}

- (double)pagingOrigin
{
  v3 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  [(UICollectionViewFlowLayout *)self itemSize];
  v7 = (v5 - v6) * -0.5;

  return v7;
}

- (double)pagingLength
{
  v3 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v6 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [v6 bounds];
  v8 = floor(v5 - v7) * 0.5;

  v9 = floor(v8 * 0.5) + -10.0;
  v10 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [v10 bounds];
  v12 = v11;
  v13 = [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self collectionView];
  [v13 bounds];
  v15 = v14;
  [(UICollectionViewFlowLayout *)self itemSize];
  v17 = v12 - (v15 - v16 - v9);

  return v17;
}

+ (id)indexPathForNearestItemToCenterWithOffset:(CGPoint)a3 collectionView:(id)a4 layout:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = a5;
  [v8 contentSize];
  v11 = v10;
  [v8 contentInset];
  v13 = v11 + v12;
  [v8 bounds];
  v14 = v13 - CGRectGetWidth(v52);
  if (x >= v14)
  {
    x = v14;
  }

  [v8 _firstPageOffset];
  if (v15 >= x)
  {
    x = v15;
  }

  [v8 bounds];
  v16 = CGRectGetWidth(v53) * 0.5 + x;
  [v8 bounds];
  v17 = y + CGRectGetHeight(v54) * 0.5;
  [v8 bounds];
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
  v27 = [v9 indexesForElementsInRect:objc_msgSend(v8 visibleBounds:"numberOfItemsInSection:" numberOfItems:{0), v19, v21, v23, v25, v19, v21, v23, v25}];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __113__CNMeCardSharingOnboardingAvatarCarouselLayout_indexPathForNearestItemToCenterWithOffset_collectionView_layout___block_invoke_2;
  v36 = &unk_1E74E2E88;
  v28 = v9;
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