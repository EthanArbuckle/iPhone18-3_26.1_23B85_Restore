@interface AVTCollapsibleHeaderController
- (AVTCollapsibleHeaderController)initWithScrollView:(id)view headerView:(id)headerView minHeight:(double)height maxHeight:(double)maxHeight;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)shouldResizeGivenMarginalScrollDistancesForScrollDirection:(unint64_t)direction;
- (BOOL)shouldResizeGivenScrollDirection:(unint64_t)direction currentHeaderHeight:(double)height targetHeaderHeight:(double)headerHeight;
- (CGPoint)topContentOffsetWithHeaderHeight:(double)height;
- (UIEdgeInsets)updatedScrollViewInsetsFromExistingInsets:(UIEdgeInsets)insets;
- (UIScrollViewDelegate)scrollViewDelegate;
- (double)currentHeightForHeader;
- (double)headerHeightForContentOffset:(double)offset contentInset:(UIEdgeInsets)inset;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)animationDidUpdateWithDisplayLink:(id)link;
- (void)collapseAnimated:(BOOL)animated;
- (void)expandAnimated:(BOOL)animated;
- (void)expandAnimated:(BOOL)animated withFocusRect:(CGRect)rect standardItemHeight:(double)height;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollToTopPreservingHeaderHeight:(BOOL)height animated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAdditionalTopContentInset:(double)inset;
- (void)snapToMinMaxIfNeededAnimated:(BOOL)animated;
- (void)updateHeaderForHeight:(double)height withOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)updateHeaderHeightToMatchScrollViewStateForScrollDirection:(unint64_t)direction animated:(BOOL)animated;
- (void)updateHeaderSizeForGlobalHeaderHeight:(double)height;
- (void)updateInsetsIfNeeded;
- (void)updateMinHeight:(double)height maxHeight:(double)maxHeight animated:(BOOL)animated;
@end

@implementation AVTCollapsibleHeaderController

- (AVTCollapsibleHeaderController)initWithScrollView:(id)view headerView:(id)headerView minHeight:(double)height maxHeight:(double)maxHeight
{
  viewCopy = view;
  headerViewCopy = headerView;
  v23.receiver = self;
  v23.super_class = AVTCollapsibleHeaderController;
  v13 = [(AVTCollapsibleHeaderController *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_shouldResizeHeaderForScrolling = 1;
    v13->_minHeight = height;
    v13->_maxHeight = maxHeight;
    v13->_scrollToCompressionMultiplier = 1.0;
    [headerViewCopy frame];
    [headerViewCopy setFrame:?];
    objc_storeStrong(&v14->_headerView, headerView);
    objc_storeStrong(&v14->_scrollView, view);
    [viewCopy contentInset];
    [(AVTCollapsibleHeaderController *)v14 updatedScrollViewInsetsFromExistingInsets:?];
    v16 = v15;
    [(UIScrollView *)v14->_scrollView setContentInset:?];
    [viewCopy verticalScrollIndicatorInsets];
    [(UIScrollView *)v14->_scrollView setScrollIndicatorInsets:v16];
    [viewCopy contentOffset];
    v18 = v17;
    [viewCopy _effectiveContentInset];
    [(UIScrollView *)v14->_scrollView setContentOffset:v18, -v19];
    [viewCopy contentOffset];
    v14->_previousOffset = v20;
    delegate = [viewCopy delegate];
    objc_storeWeak(&v14->_scrollViewDelegate, delegate);

    [viewCopy setDelegate:v14];
  }

  return v14;
}

- (void)setAdditionalTopContentInset:(double)inset
{
  if (self->_additionalTopContentInset != inset)
  {
    self->_additionalTopContentInset = inset;
    [(AVTCollapsibleHeaderController *)self updateInsetsIfNeeded];
  }
}

- (void)updateMinHeight:(double)height maxHeight:(double)maxHeight animated:(BOOL)animated
{
  [(AVTCollapsibleHeaderController *)self minHeight];
  if (v8 != height || ([(AVTCollapsibleHeaderController *)self maxHeight], v9 != maxHeight))
  {
    [(AVTCollapsibleHeaderController *)self setMinHeight:height];

    [(AVTCollapsibleHeaderController *)self setMaxHeight:maxHeight];
  }
}

- (void)expandAnimated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView contentOffset];

  if ([(AVTCollapsibleHeaderController *)self shouldPushContentOffsetOnExpandOrCollapse])
  {
    [(AVTCollapsibleHeaderController *)self maxHeight];
    headerView = [(AVTCollapsibleHeaderController *)self headerView];
    [headerView bounds];
  }

  [(AVTCollapsibleHeaderController *)self maxHeight];

  [AVTCollapsibleHeaderController updateHeaderForHeight:"updateHeaderForHeight:withOffset:animated:" withOffset:animatedCopy animated:?];
}

- (void)expandAnimated:(BOOL)animated withFocusRect:(CGRect)rect standardItemHeight:(double)height
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  animatedCopy = animated;
  scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView contentOffset];

  if ([(AVTCollapsibleHeaderController *)self shouldPushContentOffsetOnExpandOrCollapse])
  {
    [(AVTCollapsibleHeaderController *)self maxHeight];
    headerView = [(AVTCollapsibleHeaderController *)self headerView];
    [headerView bounds];
  }

  else
  {
    heightCopy = height;
    scrollView2 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView2 bounds];
    v14 = x;
    v15 = y;
    v16 = width;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    scrollView3 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView3 _effectiveContentInset];
    v27 = v20 + v26;

    scrollView4 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView4 _effectiveContentInset];
    v30 = v24 - v29;

    v39 = v27;
    v42.origin.x = v18;
    v42.origin.y = v27;
    v31 = v30;
    v42.size.width = v22;
    v42.size.height = v30;
    v50.origin.x = v14;
    v50.origin.y = v15;
    v50.size.width = v16;
    v50.size.height = height;
    if (!CGRectContainsRect(v42, v50))
    {
      v43.origin.x = v14;
      v43.origin.y = v15;
      v43.size.width = v16;
      v43.size.height = height + heightCopy;
      MinY = CGRectGetMinY(v43);
      v44.origin.y = v39;
      v44.origin.x = v18;
      v44.size.width = v22;
      v44.size.height = v31;
      if (MinY >= CGRectGetMinY(v44))
      {
        v46.origin.y = v39;
        v46.origin.x = v18;
        v46.size.width = v22;
        v46.size.height = v31;
        MaxY = CGRectGetMaxY(v46);
        v47.origin.x = v14;
        v47.origin.y = v15;
        v47.size.width = v16;
        v47.size.height = height + heightCopy;
        if (MaxY < CGRectGetMaxY(v47))
        {
          v48.origin.x = v14;
          v48.origin.y = v15;
          v48.size.width = v16;
          v48.size.height = height + heightCopy;
          CGRectGetMaxY(v48);
          v49.origin.y = v39;
          v49.origin.x = v18;
          v49.size.width = v22;
          v49.size.height = v31;
          CGRectGetMaxY(v49);
          scrollView5 = [(AVTCollapsibleHeaderController *)self scrollView];
          [scrollView5 contentSize];
          scrollView6 = [(AVTCollapsibleHeaderController *)self scrollView];
          [scrollView6 bounds];
        }
      }

      else
      {
        scrollView7 = [(AVTCollapsibleHeaderController *)self scrollView];
        [scrollView7 _effectiveContentInset];
        v45.origin.x = v14;
        v45.origin.y = v15;
        v45.size.width = v16;
        v45.size.height = height + heightCopy;
        CGRectGetMinY(v45);

        scrollView8 = [(AVTCollapsibleHeaderController *)self scrollView];
        [scrollView8 _effectiveContentInset];
      }
    }
  }

  [(AVTCollapsibleHeaderController *)self maxHeight];

  [AVTCollapsibleHeaderController updateHeaderForHeight:"updateHeaderForHeight:withOffset:animated:" withOffset:animatedCopy animated:?];
}

- (void)collapseAnimated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView contentOffset];

  if ([(AVTCollapsibleHeaderController *)self shouldPushContentOffsetOnExpandOrCollapse])
  {
    headerView = [(AVTCollapsibleHeaderController *)self headerView];
    [headerView bounds];
    [(AVTCollapsibleHeaderController *)self minHeight];
  }

  [(AVTCollapsibleHeaderController *)self minHeight];

  [AVTCollapsibleHeaderController updateHeaderForHeight:"updateHeaderForHeight:withOffset:animated:" withOffset:animatedCopy animated:?];
}

- (void)snapToMinMaxIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(AVTCollapsibleHeaderController *)self shouldSnapToMinOrMax])
  {
    [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
    v6 = v5;
    scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView contentOffset];
    v9 = v8;

    [(AVTCollapsibleHeaderController *)self minHeight];
    if (v6 != v10)
    {
      [(AVTCollapsibleHeaderController *)self maxHeight];
      if (v6 != v11)
      {
        [(AVTCollapsibleHeaderController *)self minHeight];
        if (v9 >= -v12 && ([(AVTCollapsibleHeaderController *)self minHeight], v14 = v6 - v13, [(AVTCollapsibleHeaderController *)self maxHeight], v16 = v15, [(AVTCollapsibleHeaderController *)self minHeight], v14 <= (v16 - v17) * 0.5))
        {

          [(AVTCollapsibleHeaderController *)self collapseAnimated:animatedCopy];
        }

        else
        {

          [(AVTCollapsibleHeaderController *)self expandAnimated:animatedCopy];
        }
      }
    }
  }
}

- (void)updateHeaderForHeight:(double)height withOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  [(AVTCollapsibleHeaderController *)self setShouldResizeHeaderForScrolling:0];
  v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_animationDidUpdateWithDisplayLink_];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v10 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695D918]];

  v12 = MEMORY[0x1E69DD250];
  if (animatedCopy)
  {
    v13 = 0.3;
  }

  else
  {
    v13 = 0.0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__AVTCollapsibleHeaderController_updateHeaderForHeight_withOffset_animated___block_invoke;
  v19[3] = &unk_1E7F3AAA8;
  v19[4] = self;
  *&v19[5] = height;
  *&v19[6] = x;
  *&v19[7] = y;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__AVTCollapsibleHeaderController_updateHeaderForHeight_withOffset_animated___block_invoke_2;
  v15[3] = &unk_1E7F3AAD0;
  v16 = v10;
  selfCopy = self;
  heightCopy = height;
  v14 = v10;
  [v12 animateWithDuration:1 delay:v19 options:v15 animations:v13 completion:0.0];
}

void __76__AVTCollapsibleHeaderController_updateHeaderForHeight_withOffset_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 collapsibleHeaderController:*(a1 + 32) willUpdateHeaderToHeight:*(a1 + 40)];
  }

  [*(a1 + 32) updateHeaderSizeForGlobalHeaderHeight:*(a1 + 40)];
  v5 = [*(a1 + 32) scrollView];
  [v5 setContentOffset:{*(a1 + 48), *(a1 + 56)}];
}

uint64_t __76__AVTCollapsibleHeaderController_updateHeaderForHeight_withOffset_animated___block_invoke_2(uint64_t a1, int a2)
{
  result = [*(a1 + 32) invalidate];
  if (a2)
  {
    v5 = [*(a1 + 40) delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 40) delegate];
      [v7 collapsibleHeaderController:*(a1 + 40) didUpdateHeaderToHeight:*(a1 + 48)];
    }

    [*(a1 + 40) setSingleTouchOffset:0.0];
    [*(a1 + 40) setCurrentScrollDirection:0];
    v8 = [*(a1 + 40) scrollView];
    [v8 contentOffset];
    [*(a1 + 40) setPreviousOffset:v9];

    v10 = *(a1 + 40);

    return [v10 setShouldResizeHeaderForScrolling:1];
  }

  return result;
}

- (void)animationDidUpdateWithDisplayLink:(id)link
{
  headerView = [(AVTCollapsibleHeaderController *)self headerView];
  layer = [headerView layer];
  presentationLayer = [layer presentationLayer];

  [presentationLayer bounds];
  v7 = v6;
  delegate = [(AVTCollapsibleHeaderController *)self delegate];
  LOBYTE(layer) = objc_opt_respondsToSelector();

  if (layer)
  {
    delegate2 = [(AVTCollapsibleHeaderController *)self delegate];
    [delegate2 collapsibleHeaderController:self isUpdatingHeaderWithIncrementalHeight:v7];
  }
}

- (void)scrollToTopPreservingHeaderHeight:(BOOL)height animated:(BOOL)animated
{
  animatedCopy = animated;
  if (height)
  {
    [(AVTCollapsibleHeaderController *)self setShouldResizeHeaderForScrolling:0];
    [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
    [(AVTCollapsibleHeaderController *)self topContentOffsetWithHeaderHeight:?];
    v7 = v6;
    v9 = v8;
    scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView setContentOffset:animatedCopy animated:{v7, v9}];

    scrollView2 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView2 contentOffset];
    [(AVTCollapsibleHeaderController *)self setPreviousOffset:v12];

    [(AVTCollapsibleHeaderController *)self setShouldResizeHeaderForScrolling:1];
  }

  else
  {

    [(AVTCollapsibleHeaderController *)self scrollToTopAnimated:animated];
  }
}

- (CGPoint)topContentOffsetWithHeaderHeight:(double)height
{
  scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView contentOffset];
  v7 = v6;

  scrollView2 = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView2 _effectiveContentInset];
  v10 = v9;
  [(AVTCollapsibleHeaderController *)self maxHeight];
  v12 = v11 - height - v10;

  v13 = v7;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
  scrollView2 = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView2 contentOffset];
  v7 = v6;
  scrollView3 = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView3 _effectiveContentInset];
  [scrollView setContentOffset:animatedCopy animated:{v7, -v9}];
}

- (BOOL)shouldResizeGivenMarginalScrollDistancesForScrollDirection:(unint64_t)direction
{
  if (direction != 2)
  {
    return direction == 1 && (([(AVTCollapsibleHeaderController *)self singleTouchOffset], v4 >= 0.0) ? (v5 = v4) : (v5 = -v4), [(AVTCollapsibleHeaderController *)self expandMarginalScrollDistance], v5 > v6);
  }

  [(AVTCollapsibleHeaderController *)self singleTouchOffset];
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  [(AVTCollapsibleHeaderController *)self collapseMarginalScrollDistance];
  return v9 > v10;
}

- (BOOL)shouldResizeGivenScrollDirection:(unint64_t)direction currentHeaderHeight:(double)height targetHeaderHeight:(double)headerHeight
{
  if (direction == 2 && headerHeight < height)
  {
    return 1;
  }

  return headerHeight > height && direction == 1;
}

- (void)updateHeaderHeightToMatchScrollViewStateForScrollDirection:(unint64_t)direction animated:(BOOL)animated
{
  v6 = [(AVTCollapsibleHeaderController *)self scrollView:direction];
  [v6 contentOffset];
  v8 = v7;
  scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView contentInset];
  [(AVTCollapsibleHeaderController *)self headerHeightForContentOffset:v8 contentInset:v10, v11, v12, v13];
  v15 = v14;

  [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
  v17 = v16;
  if ([(AVTCollapsibleHeaderController *)self shouldResizeGivenMarginalScrollDistancesForScrollDirection:direction]&& [(AVTCollapsibleHeaderController *)self shouldResizeGivenScrollDirection:direction currentHeaderHeight:v17 targetHeaderHeight:v15])
  {
    delegate = [(AVTCollapsibleHeaderController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate2 = [(AVTCollapsibleHeaderController *)self delegate];
      [delegate2 collapsibleHeaderController:self willUpdateHeaderToHeight:v15];
    }

    [(AVTCollapsibleHeaderController *)self updateHeaderSizeForGlobalHeaderHeight:v15];
    delegate3 = [(AVTCollapsibleHeaderController *)self delegate];
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      delegate4 = [(AVTCollapsibleHeaderController *)self delegate];
      [delegate4 collapsibleHeaderController:self didUpdateHeaderToHeight:v15];
    }
  }
}

- (double)headerHeightForContentOffset:(double)offset contentInset:(UIEdgeInsets)inset
{
  v6 = [(AVTCollapsibleHeaderController *)self scrollView:offset];
  [v6 contentSize];
  v8 = v7;
  v10 = v9;
  v11 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);

  if (v8 != v11 || v10 != v12)
  {
    if (![(AVTCollapsibleHeaderController *)self shouldOnlyExpandWhenScrollingAtEdge])
    {
      [(AVTCollapsibleHeaderController *)self previousOffset];
      v43 = v42;
      [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
      v45 = v44;
      [(AVTCollapsibleHeaderController *)self scrollToCompressionMultiplier];
      v47 = v46;
      scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
      [scrollView _effectiveContentInset];
      v50 = v49;

      [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
      v52 = v51;
      [(AVTCollapsibleHeaderController *)self minHeight];
      v54 = v52 - v53;
      [(AVTCollapsibleHeaderController *)self scrollToCompressionMultiplier];
      if (v54 * v55 + offset < offset)
      {
        [(AVTCollapsibleHeaderController *)self minHeight];
LABEL_30:
        v40 = v56;
LABEL_31:
        [(AVTCollapsibleHeaderController *)self minHeight];
        if (v58 >= v40)
        {
          v40 = v58;
        }

        [(AVTCollapsibleHeaderController *)self maxHeight];
        if (result >= v40)
        {
          return v40;
        }

        return result;
      }

      if (-v50 <= offset)
      {
        v40 = v45 + (v43 - offset) / v47;
        goto LABEL_31;
      }

LABEL_27:
      [(AVTCollapsibleHeaderController *)self maxHeight];
      goto LABEL_30;
    }

    scrollView2 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView2 _effectiveContentInset];
    v16 = v15;
    v17 = -v15;

    headerView = [(AVTCollapsibleHeaderController *)self headerView];
    [headerView frame];
    v20 = v19;
    scrollView3 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView3 frame];
    v23 = v20 - v22;

    v24 = -offset;
    if (v17 > offset)
    {
      v24 = v16;
    }

    v59 = v24;
    [(AVTCollapsibleHeaderController *)self additionalTopContentInset];
    v26 = v25;
    [(AVTCollapsibleHeaderController *)self previousOffset];
    v28 = v27 - offset;
    [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
    v30 = v29;
    [(AVTCollapsibleHeaderController *)self scrollToCompressionMultiplier];
    v32 = v31;
    scrollView4 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView4 contentSize];
    v35 = v34;
    scrollView5 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView5 bounds];
    if (v35 - (v37 - v23) > offset)
    {

      goto LABEL_10;
    }

    if (v28 <= 0.0)
    {
      shouldCollapseOnBottomBounceScroll = [(AVTCollapsibleHeaderController *)self shouldCollapseOnBottomBounceScroll];

      if (shouldCollapseOnBottomBounceScroll)
      {
LABEL_10:
        if (v17 <= offset)
        {
          [(AVTCollapsibleHeaderController *)self minHeight];
          if (v30 + v28 / v32 >= v38)
          {
            v39 = v30 + v28 / v32;
          }

          else
          {
            v39 = v38;
          }

          if (v59 - v23 - v26 >= v38)
          {
            v38 = v59 - v23 - v26;
          }

          if (v28 > 0.0)
          {
            v40 = v38;
          }

          else
          {
            v40 = v39;
          }

          goto LABEL_31;
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
    goto LABEL_30;
  }

  [(AVTCollapsibleHeaderController *)self maxHeight];
  return result;
}

- (void)updateHeaderSizeForGlobalHeaderHeight:(double)height
{
  headerView = [(AVTCollapsibleHeaderController *)self headerView];
  [headerView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  headerView2 = [(AVTCollapsibleHeaderController *)self headerView];
  [headerView2 setFrame:{v7, v9, v11, height}];
}

- (double)currentHeightForHeader
{
  headerView = [(AVTCollapsibleHeaderController *)self headerView];
  [headerView bounds];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)updatedScrollViewInsetsFromExistingInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  v5 = [(AVTCollapsibleHeaderController *)self scrollView:insets.top];
  [v5 _systemContentInset];
  v7 = v6;

  v8 = 0.0;
  if (v7 > 0.0)
  {
    scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView _systemContentInset];
    v11 = v10;
    headerView = [(AVTCollapsibleHeaderController *)self headerView];
    [headerView frame];
    v14 = v13;
    scrollView2 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView2 frame];
    v8 = v11 - (v14 - v16);
  }

  [(AVTCollapsibleHeaderController *)self maxHeight];
  v18 = v17;
  [(AVTCollapsibleHeaderController *)self additionalTopContentInset];
  v20 = v18 + v19 - v8;
  scrollView3 = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView3 contentInset];
  v23 = v22;
  v25 = v24;

  v26 = v20;
  v27 = v23;
  v28 = bottom;
  v29 = v25;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

- (void)updateInsetsIfNeeded
{
  scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(AVTCollapsibleHeaderController *)self updatedScrollViewInsetsFromExistingInsets:v5, v7, v9, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  scrollView2 = [(AVTCollapsibleHeaderController *)self scrollView];
  [scrollView2 verticalScrollIndicatorInsets];
  v31 = v22;
  v32 = v21;
  v30 = v23;

  if (v15 != v7 || v13 != v5 || v19 != v11 || v17 != v9)
  {
    [(AVTCollapsibleHeaderController *)self previousOffset];
    [(AVTCollapsibleHeaderController *)self setPreviousOffset:v5 - v13 + v27];
    scrollView3 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView3 setContentInset:{v13, v15, v17, v19}];

    scrollView4 = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView4 setScrollIndicatorInsets:{v13, v32, v31, v30}];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = AVTCollapsibleHeaderController;
  if ([(AVTCollapsibleHeaderController *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    scrollViewDelegate = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = AVTCollapsibleHeaderController;
  v5 = [(AVTCollapsibleHeaderController *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    scrollViewDelegate = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    v5 = [scrollViewDelegate methodSignatureForSelector:selector];
  }

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  scrollViewDelegate = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    scrollViewDelegate2 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVTCollapsibleHeaderController;
    scrollViewDelegate2 = [(AVTCollapsibleHeaderController *)&v9 forwardingTargetForSelector:selector];
  }

  return scrollViewDelegate2;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(AVTCollapsibleHeaderController *)self shouldResizeHeaderForScrolling])
  {
    [(AVTCollapsibleHeaderController *)self updateInsetsIfNeeded];
    [(AVTCollapsibleHeaderController *)self previousOffset];
    v5 = v4;
    v6 = scrollCopy;
    [v6 _verticalVelocity];
    if (v7 == 0.0)
    {
      [v6 contentOffset];
      v9 = v8;

      v10 = v5 - v9;
      v11 = 2;
      if (v5 - v9 >= 0.0)
      {
        v11 = 1;
      }

      if (v5 - v9 == 0.0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }
    }

    else
    {
      [v6 _verticalVelocity];
      v14 = v13;

      if (v14 <= 0.0)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    if ([(AVTCollapsibleHeaderController *)self currentScrollDirection]!= v12)
    {
      [(AVTCollapsibleHeaderController *)self setSingleTouchOffset:0.0];
      [(AVTCollapsibleHeaderController *)self setCurrentScrollDirection:v12];
    }

    [(AVTCollapsibleHeaderController *)self singleTouchOffset];
    v16 = v15;
    [(AVTCollapsibleHeaderController *)self previousOffset];
    v18 = v17;
    scrollView = [(AVTCollapsibleHeaderController *)self scrollView];
    [scrollView contentOffset];
    [(AVTCollapsibleHeaderController *)self setSingleTouchOffset:v16 + v18 - v20];

    [(AVTCollapsibleHeaderController *)self updateHeaderHeightToMatchScrollViewStateForScrollDirection:v12 animated:1];
    [v6 contentOffset];
    [(AVTCollapsibleHeaderController *)self setPreviousOffset:v21];
  }

  scrollViewDelegate = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    scrollViewDelegate2 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewDidScroll:scrollCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  if ([(AVTCollapsibleHeaderController *)self shouldResizeHeaderForScrolling]&& [(AVTCollapsibleHeaderController *)self shouldSnapToMinOrMax]&& offset->y < 0.0)
  {
    [(AVTCollapsibleHeaderController *)self maxHeight];
    v10 = v9 - offset->y;
    [draggingCopy _effectiveContentInset];
    v12 = v10 - v11;
    if (y > 0.0)
    {
      [(AVTCollapsibleHeaderController *)self minHeight];
      if (v12 > v13)
      {
LABEL_6:
        [(AVTCollapsibleHeaderController *)self minHeight];
LABEL_10:
        v12 = v14;
      }

LABEL_15:
      [(AVTCollapsibleHeaderController *)self maxHeight];
      v24 = v23 - v12;
      [draggingCopy _effectiveContentInset];
      offset->y = v24 - v25;
      goto LABEL_16;
    }

    if (y >= 0.0)
    {
      [(AVTCollapsibleHeaderController *)self minHeight];
      if (v12 <= v16)
      {
        goto LABEL_15;
      }

      [(AVTCollapsibleHeaderController *)self maxHeight];
      if (v12 >= v17)
      {
        goto LABEL_15;
      }

      [(AVTCollapsibleHeaderController *)self minHeight];
      v19 = v12 - v18;
      [(AVTCollapsibleHeaderController *)self maxHeight];
      v21 = v20;
      [(AVTCollapsibleHeaderController *)self minHeight];
      if (v19 < (v21 - v22) * 0.5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [(AVTCollapsibleHeaderController *)self maxHeight];
      if (v12 >= v15)
      {
        goto LABEL_15;
      }
    }

    [(AVTCollapsibleHeaderController *)self maxHeight];
    goto LABEL_10;
  }

LABEL_16:
  scrollViewDelegate = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    scrollViewDelegate2 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  if (!decelerateCopy)
  {
    [(AVTCollapsibleHeaderController *)self snapToMinMaxIfNeededAnimated:1];
    [(AVTCollapsibleHeaderController *)self setSingleTouchOffset:0.0];
    [(AVTCollapsibleHeaderController *)self setCurrentScrollDirection:0];
  }

  scrollViewDelegate = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    scrollViewDelegate2 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  if (([deceleratingCopy isDragging] & 1) == 0)
  {
    [(AVTCollapsibleHeaderController *)self setSingleTouchOffset:0.0];
    [(AVTCollapsibleHeaderController *)self setCurrentScrollDirection:0];
  }

  scrollViewDelegate = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    scrollViewDelegate2 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewDidEndDecelerating:deceleratingCopy];
  }
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

@end