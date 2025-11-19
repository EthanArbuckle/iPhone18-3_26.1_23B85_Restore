@interface AVTCenteringCollectionViewDelegate
- (AVTCenteringCollectionViewDelegate)initWithCollectionView:(id)a3 delegate:(id)a4 environment:(id)a5;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGPoint)previousOffset;
- (UICollectionViewDelegate)delegate;
- (UICollectionViewLayoutAttributes)centerItemAttributes;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation AVTCenteringCollectionViewDelegate

- (AVTCenteringCollectionViewDelegate)initWithCollectionView:(id)a3 delegate:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = AVTCenteringCollectionViewDelegate;
  v12 = [(AVTCenteringCollectionViewDelegate *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collectionView, a3);
    objc_storeWeak(&v13->_delegate, v10);
    v14 = [v11 logger];
    logger = v13->_logger;
    v13->_logger = v14;

    v16 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    lastHapticOnScrollIndexPath = v13->_lastHapticOnScrollIndexPath;
    v13->_lastHapticOnScrollIndexPath = v16;
  }

  return v13;
}

- (UICollectionViewLayoutAttributes)centerItemAttributes
{
  v3 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v4 = [(AVTCenteringCollectionViewDelegate *)self lastHapticOnScrollIndexPath];
  v5 = [v3 layoutAttributesForItemAtIndexPath:v4];

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = AVTCenteringCollectionViewDelegate;
  if ([(AVTCenteringCollectionViewDelegate *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = AVTCenteringCollectionViewDelegate;
  v5 = [(AVTCenteringCollectionViewDelegate *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = [(AVTCenteringCollectionViewDelegate *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVTCenteringCollectionViewDelegate *)self delegate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVTCenteringCollectionViewDelegate;
    v7 = [(AVTCenteringCollectionViewDelegate *)&v9 forwardingTargetForSelector:a3];
  }

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v8 = [v7 collectionViewLayout];
  v9 = [v6 row];
  v10 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v15 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [v15 bounds];
  [v8 centerForCenteringElementAtIndex:v9 visibleBoundsSize:v12 proposedOrigin:{v14, v16, v17}];
  v19 = v18;
  v21 = v20;

  if (v19 == *MEMORY[0x1E695EFF8] && v21 == *(MEMORY[0x1E695EFF8] + 8))
  {
    v23 = [(AVTCenteringCollectionViewDelegate *)self logger];
    [v23 logCarouselErrorGettingFrameForElementAtIndex:{objc_msgSend(v6, "item")}];
  }

  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v27 collectionView:v19, v21];
  [v27 setContentOffset:1 animated:?];
  v24 = [(AVTCenteringCollectionViewDelegate *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    [v26 collectionView:v27 didSelectItemAtIndexPath:v6];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v15 = a3;
  v4 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;
  v9 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v10 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:v9 collectionView:v6, v8];
  [(AVTCenteringCollectionViewDelegate *)self setLastHapticOnScrollIndexPath:v10];

  v11 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [v11 contentOffset];
  [(AVTCenteringCollectionViewDelegate *)self setPreviousOffset:?];

  v12 = [(AVTCenteringCollectionViewDelegate *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    [v14 scrollViewWillBeginDragging:v15];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v34 = a3;
  v4 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;
  v9 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v10 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:v9 collectionView:v6, v8];

  v11 = [(AVTCenteringCollectionViewDelegate *)self lastHapticOnScrollIndexPath];
  v12 = [v11 isEqual:v10];

  v13 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v14 = v13;
  if (v12)
  {
    [v13 contentOffset];
    [(AVTCenteringCollectionViewDelegate *)self setPreviousOffset:?];

    v15 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }

    v17 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    [v17 scrollViewDidScroll:v34];
  }

  else
  {
    v18 = [v13 collectionViewLayout];
    v17 = [v18 layoutAttributesForItemAtIndexPath:v10];

    v19 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
    [v19 bounds];
    MidX = CGRectGetMidX(v36);

    [v17 center];
    v22 = v21;
    v23 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
    [v23 contentOffset];
    v25 = v24;
    [(AVTCenteringCollectionViewDelegate *)self previousOffset];
    v27 = v26;

    if (v25 <= v27)
    {
      v28 = MidX <= v22 + 10.0;
    }

    else
    {
      v28 = MidX >= v22 + -10.0;
    }

    v29 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
    [v29 contentOffset];
    [(AVTCenteringCollectionViewDelegate *)self setPreviousOffset:?];

    if ([v34 avtui_isMoving] && v28)
    {
      v30 = [v17 indexPath];
      [(AVTCenteringCollectionViewDelegate *)self setLastHapticOnScrollIndexPath:v30];
    }

    v31 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = [(AVTCenteringCollectionViewDelegate *)self delegate];
      [v33 scrollViewDidScroll:v34];
    }
  }

LABEL_13:
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v77 = a3;
  v9 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v10 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:v9 collectionView:a5->x, a5->y];

  v11 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v12 = [v11 collectionViewLayout];
  v13 = [v10 item];
  v14 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v19 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [v19 bounds];
  [v12 centerForCenteringElementAtIndex:v13 visibleBoundsSize:v16 proposedOrigin:{v18, v20, v21}];
  v23 = v22;
  v25 = v24;

  v26 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v26 collectionView:v23, v25];
  v28 = v27;
  v30 = v29;

  v31 = fabs(x);
  v32 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [v32 contentOffset];
  v34 = COERCE_UNSIGNED_INT64(v28 - v33) ^ *&x;

  v36 = v31 > 0.3 && v34 < 0;
  [v77 contentOffset];
  v38 = v37;
  [v77 contentInset];
  if (v38 > -v39)
  {
    [v77 contentOffset];
    v41 = v40;
    [v77 contentSize];
    v43 = v42;
    [v77 bounds];
    if ((v31 > 1.3 || v36) && v41 < v43 - v44)
    {
      v45 = a5->x;
      v46 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      [v46 contentOffset];
      v48 = v47;

      v49 = MEMORY[0x1E696AC88];
      v50 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      v51 = [v50 numberOfItemsInSection:0] - 1;

      v52 = [v10 item];
      v53 = v52 - 1;
      if (v45 > v48)
      {
        v53 = v52 + 1;
      }

      if (v51 < v53)
      {
        v53 = v51;
      }

      v54 = [v49 indexPathForItem:v53 & ~(v53 >> 63) inSection:0];

      v55 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      v56 = [v55 collectionViewLayout];
      v57 = [v54 item];
      v58 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      [v58 bounds];
      v60 = v59;
      v62 = v61;
      v63 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      [v63 bounds];
      [v56 centerForCenteringElementAtIndex:v57 visibleBoundsSize:v60 proposedOrigin:{v62, v64, v65}];
      v67 = v66;
      v69 = v68;

      v70 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:v70 collectionView:v67, v69];
      v28 = v71;
      v30 = v72;

      v10 = v54;
    }
  }

  v73 = [(AVTCenteringCollectionViewDelegate *)self logger];
  [v73 logCarouselEndsDraggingWithVelocity:v36 willSwitchIndexPathInsteadOfScrollBack:v31 > 1.3 forHighVelocity:x];

  a5->x = v28;
  a5->y = v30;
  v74 = [(AVTCenteringCollectionViewDelegate *)self delegate];
  v75 = objc_opt_respondsToSelector();

  if (v75)
  {
    v76 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    [v76 scrollViewWillEndDragging:v77 withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (UICollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)previousOffset
{
  x = self->_previousOffset.x;
  y = self->_previousOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end