@interface AVTCenteringCollectionViewHelper
+ (CGPoint)contentOffsetForCenteringPoint:(CGPoint)point collectionView:(id)view;
+ (UIEdgeInsets)insetsForBounds:(CGRect)bounds withFirstCellSize:(CGSize)size lastCellSize:(CGSize)cellSize;
+ (id)indexPathForItemBeingScrolledTowardFromOffset:(CGPoint)offset currentOffset:(CGPoint)currentOffset nearestItemToCenter:(id)center itemCount:(unint64_t)count itemOffsetProvider:(id)provider ratio:(double *)ratio;
+ (id)indexPathForNearestItemToCenterWithOffset:(CGPoint)offset collectionView:(id)view;
@end

@implementation AVTCenteringCollectionViewHelper

+ (UIEdgeInsets)insetsForBounds:(CGRect)bounds withFirstCellSize:(CGSize)size lastCellSize:(CGSize)cellSize
{
  v5 = (bounds.size.width - size.width) * 0.5;
  v6 = (bounds.size.width - cellSize.width) * 0.5;
  v7 = 0.0;
  v8 = 0.0;
  result.right = v6;
  result.bottom = v8;
  result.left = v5;
  result.top = v7;
  return result;
}

+ (id)indexPathForNearestItemToCenterWithOffset:(CGPoint)offset collectionView:(id)view
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  [viewCopy contentSize];
  v8 = v7;
  [viewCopy contentInset];
  v10 = v8 + v9;
  [viewCopy bounds];
  v11 = v10 - CGRectGetWidth(v50);
  if (x >= v11)
  {
    x = v11;
  }

  [viewCopy contentInset];
  if (x <= -v12)
  {
    x = -v12;
  }

  [viewCopy bounds];
  v13 = CGRectGetWidth(v51) * 0.5 + x;
  [viewCopy bounds];
  v14 = y + CGRectGetHeight(v52) * 0.5;
  [viewCopy bounds];
  UIRectCenteredAboutPoint();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __93__AVTCenteringCollectionViewHelper_indexPathForNearestItemToCenterWithOffset_collectionView___block_invoke;
  v48[3] = &__block_descriptor_48_e39_d40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  *&v48[4] = v13;
  *&v48[5] = v14;
  v23 = MEMORY[0x1BFB0DE80](v48);
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0x7FEFFFFFFFFFFFFFLL;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0x7FFFFFFFFFFFFFFFLL;
  collectionViewLayout = [viewCopy collectionViewLayout];
  v25 = [collectionViewLayout indexesForElementsInRect:objc_msgSend(viewCopy visibleBounds:"numberOfItemsInSection:" numberOfItems:{0), v16, v18, v20, v22, v16, v18, v20, v22}];

  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __93__AVTCenteringCollectionViewHelper_indexPathForNearestItemToCenterWithOffset_collectionView___block_invoke_2;
  v34 = &unk_1E7F3B168;
  v26 = viewCopy;
  v35 = v26;
  v39 = v16;
  v40 = v18;
  v41 = v20;
  v42 = v22;
  v27 = v23;
  v36 = v27;
  v37 = v47;
  v38 = &v43;
  [v25 enumerateIndexesUsingBlock:&v31];
  v28 = v44[3];
  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = 0;
  }

  else
  {
    v29 = [MEMORY[0x1E696AC88] indexPathForItem:v28 inSection:{0, v31, v32, v33, v34, v35}];
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v47, 8);

  return v29;
}

double __93__AVTCenteringCollectionViewHelper_indexPathForNearestItemToCenterWithOffset_collectionView___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a2);
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetMidY(v12);
  return vabdd_f64(MidX, *(a1 + 32));
}

void __93__AVTCenteringCollectionViewHelper_indexPathForNearestItemToCenterWithOffset_collectionView___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) collectionViewLayout];
  [v4 frameForElementAtIndex:a2 visibleBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = (*(*(a1 + 40) + 16))(v6, v8, v10, v12);
  v14 = *(*(a1 + 48) + 8);
  if (v13 < *(v14 + 24))
  {
    *(v14 + 24) = v13;
    *(*(*(a1 + 56) + 8) + 24) = a2;
  }
}

+ (CGPoint)contentOffsetForCenteringPoint:(CGPoint)point collectionView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  CGRectGetWidth(v14);
  [viewCopy bounds];
  CGRectGetHeight(v15);
  window = [viewCopy window];

  screen = [window screen];
  [screen scale];
  UIPointRoundToScale();
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

+ (id)indexPathForItemBeingScrolledTowardFromOffset:(CGPoint)offset currentOffset:(CGPoint)currentOffset nearestItemToCenter:(id)center itemCount:(unint64_t)count itemOffsetProvider:(id)provider ratio:(double *)ratio
{
  x = currentOffset.x;
  v12 = offset.x;
  centerCopy = center;
  providerCopy = provider;
  v15 = providerCopy[2](providerCopy, centerCopy);
  v16 = centerCopy;
  v17 = v16;
  if (x > v12)
  {
    if (x > v15 && [v16 item] + 1 < count)
    {
      v18 = MEMORY[0x1E696AC88];
      v19 = [v17 item] + 1;
      goto LABEL_8;
    }

    if (x < v15 && [v17 item] >= 1)
    {
      v22 = MEMORY[0x1E696AC88];
      v23 = [v17 item] - 1;
LABEL_16:
      v21 = [v22 indexPathForItem:v23 inSection:0];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (x >= v15 || [v16 item] < 1)
  {
    if (x > v15 && [v17 item] + 1 < count)
    {
      v22 = MEMORY[0x1E696AC88];
      v23 = [v17 item] + 1;
      goto LABEL_16;
    }

LABEL_17:
    v21 = 0;
LABEL_18:
    v20 = v17;
    if (!ratio)
    {
      goto LABEL_23;
    }

LABEL_19:
    if (v21)
    {
      v24 = providerCopy[2](providerCopy, v21);
      v25 = providerCopy[2](providerCopy, v20);
      v26 = 1.0 - fabs((x - v25) / (v25 - v24));
    }

    else
    {
      v26 = 1.0;
    }

    *ratio = v26;
    goto LABEL_23;
  }

  v18 = MEMORY[0x1E696AC88];
  v19 = [v17 item] - 1;
LABEL_8:
  v20 = [v18 indexPathForItem:v19 inSection:0];
  v21 = v17;
  if (ratio)
  {
    goto LABEL_19;
  }

LABEL_23:

  return v20;
}

@end