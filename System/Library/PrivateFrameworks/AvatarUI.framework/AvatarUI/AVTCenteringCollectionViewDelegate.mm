@interface AVTCenteringCollectionViewDelegate
- (AVTCenteringCollectionViewDelegate)initWithCollectionView:(id)view delegate:(id)delegate environment:(id)environment;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGPoint)previousOffset;
- (UICollectionViewDelegate)delegate;
- (UICollectionViewLayoutAttributes)centerItemAttributes;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation AVTCenteringCollectionViewDelegate

- (AVTCenteringCollectionViewDelegate)initWithCollectionView:(id)view delegate:(id)delegate environment:(id)environment
{
  viewCopy = view;
  delegateCopy = delegate;
  environmentCopy = environment;
  v19.receiver = self;
  v19.super_class = AVTCenteringCollectionViewDelegate;
  v12 = [(AVTCenteringCollectionViewDelegate *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collectionView, view);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    logger = [environmentCopy logger];
    logger = v13->_logger;
    v13->_logger = logger;

    v16 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    lastHapticOnScrollIndexPath = v13->_lastHapticOnScrollIndexPath;
    v13->_lastHapticOnScrollIndexPath = v16;
  }

  return v13;
}

- (UICollectionViewLayoutAttributes)centerItemAttributes
{
  collectionView = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  lastHapticOnScrollIndexPath = [(AVTCenteringCollectionViewDelegate *)self lastHapticOnScrollIndexPath];
  v5 = [collectionView layoutAttributesForItemAtIndexPath:lastHapticOnScrollIndexPath];

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = AVTCenteringCollectionViewDelegate;
  if ([(AVTCenteringCollectionViewDelegate *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    delegate = [(AVTCenteringCollectionViewDelegate *)self delegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = AVTCenteringCollectionViewDelegate;
  v5 = [(AVTCenteringCollectionViewDelegate *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    delegate = [(AVTCenteringCollectionViewDelegate *)self delegate];
    v5 = [delegate methodSignatureForSelector:selector];
  }

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  delegate = [(AVTCenteringCollectionViewDelegate *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVTCenteringCollectionViewDelegate *)self delegate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVTCenteringCollectionViewDelegate;
    delegate2 = [(AVTCenteringCollectionViewDelegate *)&v9 forwardingTargetForSelector:selector];
  }

  return delegate2;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  collectionView = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  v9 = [pathCopy row];
  collectionView2 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [collectionView2 bounds];
  v12 = v11;
  v14 = v13;
  collectionView3 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [collectionView3 bounds];
  [collectionViewLayout centerForCenteringElementAtIndex:v9 visibleBoundsSize:v12 proposedOrigin:{v14, v16, v17}];
  v19 = v18;
  v21 = v20;

  if (v19 == *MEMORY[0x1E695EFF8] && v21 == *(MEMORY[0x1E695EFF8] + 8))
  {
    logger = [(AVTCenteringCollectionViewDelegate *)self logger];
    [logger logCarouselErrorGettingFrameForElementAtIndex:{objc_msgSend(pathCopy, "item")}];
  }

  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:viewCopy collectionView:v19, v21];
  [viewCopy setContentOffset:1 animated:?];
  delegate = [(AVTCenteringCollectionViewDelegate *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    delegate2 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    [delegate2 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  collectionView = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [collectionView contentOffset];
  v6 = v5;
  v8 = v7;
  collectionView2 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v10 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:collectionView2 collectionView:v6, v8];
  [(AVTCenteringCollectionViewDelegate *)self setLastHapticOnScrollIndexPath:v10];

  collectionView3 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [collectionView3 contentOffset];
  [(AVTCenteringCollectionViewDelegate *)self setPreviousOffset:?];

  delegate = [(AVTCenteringCollectionViewDelegate *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    [delegate2 scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  collectionView = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [collectionView contentOffset];
  v6 = v5;
  v8 = v7;
  collectionView2 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v10 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:collectionView2 collectionView:v6, v8];

  lastHapticOnScrollIndexPath = [(AVTCenteringCollectionViewDelegate *)self lastHapticOnScrollIndexPath];
  v12 = [lastHapticOnScrollIndexPath isEqual:v10];

  collectionView3 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v14 = collectionView3;
  if (v12)
  {
    [collectionView3 contentOffset];
    [(AVTCenteringCollectionViewDelegate *)self setPreviousOffset:?];

    delegate = [(AVTCenteringCollectionViewDelegate *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }

    delegate2 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    [delegate2 scrollViewDidScroll:scrollCopy];
  }

  else
  {
    collectionViewLayout = [collectionView3 collectionViewLayout];
    delegate2 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v10];

    collectionView4 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
    [collectionView4 bounds];
    MidX = CGRectGetMidX(v36);

    [delegate2 center];
    v22 = v21;
    collectionView5 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
    [collectionView5 contentOffset];
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

    collectionView6 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
    [collectionView6 contentOffset];
    [(AVTCenteringCollectionViewDelegate *)self setPreviousOffset:?];

    if ([scrollCopy avtui_isMoving] && v28)
    {
      indexPath = [delegate2 indexPath];
      [(AVTCenteringCollectionViewDelegate *)self setLastHapticOnScrollIndexPath:indexPath];
    }

    delegate3 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      delegate4 = [(AVTCenteringCollectionViewDelegate *)self delegate];
      [delegate4 scrollViewDidScroll:scrollCopy];
    }
  }

LABEL_13:
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  collectionView = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  v10 = [AVTCenteringCollectionViewHelper indexPathForNearestItemToCenterWithOffset:collectionView collectionView:offset->x, offset->y];

  collectionView2 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];
  item = [v10 item];
  collectionView3 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [collectionView3 bounds];
  v16 = v15;
  v18 = v17;
  collectionView4 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [collectionView4 bounds];
  [collectionViewLayout centerForCenteringElementAtIndex:item visibleBoundsSize:v16 proposedOrigin:{v18, v20, v21}];
  v23 = v22;
  v25 = v24;

  collectionView5 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView5 collectionView:v23, v25];
  v28 = v27;
  v30 = v29;

  v31 = fabs(x);
  collectionView6 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
  [collectionView6 contentOffset];
  v34 = COERCE_UNSIGNED_INT64(v28 - v33) ^ *&x;

  v36 = v31 > 0.3 && v34 < 0;
  [draggingCopy contentOffset];
  v38 = v37;
  [draggingCopy contentInset];
  if (v38 > -v39)
  {
    [draggingCopy contentOffset];
    v41 = v40;
    [draggingCopy contentSize];
    v43 = v42;
    [draggingCopy bounds];
    if ((v31 > 1.3 || v36) && v41 < v43 - v44)
    {
      v45 = offset->x;
      collectionView7 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      [collectionView7 contentOffset];
      v48 = v47;

      v49 = MEMORY[0x1E696AC88];
      collectionView8 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      v51 = [collectionView8 numberOfItemsInSection:0] - 1;

      item2 = [v10 item];
      v53 = item2 - 1;
      if (v45 > v48)
      {
        v53 = item2 + 1;
      }

      if (v51 < v53)
      {
        v53 = v51;
      }

      v54 = [v49 indexPathForItem:v53 & ~(v53 >> 63) inSection:0];

      collectionView9 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      collectionViewLayout2 = [collectionView9 collectionViewLayout];
      item3 = [v54 item];
      collectionView10 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      [collectionView10 bounds];
      v60 = v59;
      v62 = v61;
      collectionView11 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      [collectionView11 bounds];
      [collectionViewLayout2 centerForCenteringElementAtIndex:item3 visibleBoundsSize:v60 proposedOrigin:{v62, v64, v65}];
      v67 = v66;
      v69 = v68;

      collectionView12 = [(AVTCenteringCollectionViewDelegate *)self collectionView];
      [AVTCenteringCollectionViewHelper contentOffsetForCenteringPoint:collectionView12 collectionView:v67, v69];
      v28 = v71;
      v30 = v72;

      v10 = v54;
    }
  }

  logger = [(AVTCenteringCollectionViewDelegate *)self logger];
  [logger logCarouselEndsDraggingWithVelocity:v36 willSwitchIndexPathInsteadOfScrollBack:v31 > 1.3 forHighVelocity:x];

  offset->x = v28;
  offset->y = v30;
  delegate = [(AVTCenteringCollectionViewDelegate *)self delegate];
  v75 = objc_opt_respondsToSelector();

  if (v75)
  {
    delegate2 = [(AVTCenteringCollectionViewDelegate *)self delegate];
    [delegate2 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
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