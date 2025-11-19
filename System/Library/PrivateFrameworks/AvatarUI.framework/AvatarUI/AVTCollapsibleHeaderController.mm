@interface AVTCollapsibleHeaderController
- (AVTCollapsibleHeaderController)initWithScrollView:(id)a3 headerView:(id)a4 minHeight:(double)a5 maxHeight:(double)a6;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldResizeGivenMarginalScrollDistancesForScrollDirection:(unint64_t)a3;
- (BOOL)shouldResizeGivenScrollDirection:(unint64_t)a3 currentHeaderHeight:(double)a4 targetHeaderHeight:(double)a5;
- (CGPoint)topContentOffsetWithHeaderHeight:(double)a3;
- (UIEdgeInsets)updatedScrollViewInsetsFromExistingInsets:(UIEdgeInsets)a3;
- (UIScrollViewDelegate)scrollViewDelegate;
- (double)currentHeightForHeader;
- (double)headerHeightForContentOffset:(double)a3 contentInset:(UIEdgeInsets)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)animationDidUpdateWithDisplayLink:(id)a3;
- (void)collapseAnimated:(BOOL)a3;
- (void)expandAnimated:(BOOL)a3;
- (void)expandAnimated:(BOOL)a3 withFocusRect:(CGRect)a4 standardItemHeight:(double)a5;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)scrollToTopPreservingHeaderHeight:(BOOL)a3 animated:(BOOL)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAdditionalTopContentInset:(double)a3;
- (void)snapToMinMaxIfNeededAnimated:(BOOL)a3;
- (void)updateHeaderForHeight:(double)a3 withOffset:(CGPoint)a4 animated:(BOOL)a5;
- (void)updateHeaderHeightToMatchScrollViewStateForScrollDirection:(unint64_t)a3 animated:(BOOL)a4;
- (void)updateHeaderSizeForGlobalHeaderHeight:(double)a3;
- (void)updateInsetsIfNeeded;
- (void)updateMinHeight:(double)a3 maxHeight:(double)a4 animated:(BOOL)a5;
@end

@implementation AVTCollapsibleHeaderController

- (AVTCollapsibleHeaderController)initWithScrollView:(id)a3 headerView:(id)a4 minHeight:(double)a5 maxHeight:(double)a6
{
  v11 = a3;
  v12 = a4;
  v23.receiver = self;
  v23.super_class = AVTCollapsibleHeaderController;
  v13 = [(AVTCollapsibleHeaderController *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_shouldResizeHeaderForScrolling = 1;
    v13->_minHeight = a5;
    v13->_maxHeight = a6;
    v13->_scrollToCompressionMultiplier = 1.0;
    [v12 frame];
    [v12 setFrame:?];
    objc_storeStrong(&v14->_headerView, a4);
    objc_storeStrong(&v14->_scrollView, a3);
    [v11 contentInset];
    [(AVTCollapsibleHeaderController *)v14 updatedScrollViewInsetsFromExistingInsets:?];
    v16 = v15;
    [(UIScrollView *)v14->_scrollView setContentInset:?];
    [v11 verticalScrollIndicatorInsets];
    [(UIScrollView *)v14->_scrollView setScrollIndicatorInsets:v16];
    [v11 contentOffset];
    v18 = v17;
    [v11 _effectiveContentInset];
    [(UIScrollView *)v14->_scrollView setContentOffset:v18, -v19];
    [v11 contentOffset];
    v14->_previousOffset = v20;
    v21 = [v11 delegate];
    objc_storeWeak(&v14->_scrollViewDelegate, v21);

    [v11 setDelegate:v14];
  }

  return v14;
}

- (void)setAdditionalTopContentInset:(double)a3
{
  if (self->_additionalTopContentInset != a3)
  {
    self->_additionalTopContentInset = a3;
    [(AVTCollapsibleHeaderController *)self updateInsetsIfNeeded];
  }
}

- (void)updateMinHeight:(double)a3 maxHeight:(double)a4 animated:(BOOL)a5
{
  [(AVTCollapsibleHeaderController *)self minHeight];
  if (v8 != a3 || ([(AVTCollapsibleHeaderController *)self maxHeight], v9 != a4))
  {
    [(AVTCollapsibleHeaderController *)self setMinHeight:a3];

    [(AVTCollapsibleHeaderController *)self setMaxHeight:a4];
  }
}

- (void)expandAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v5 contentOffset];

  if ([(AVTCollapsibleHeaderController *)self shouldPushContentOffsetOnExpandOrCollapse])
  {
    [(AVTCollapsibleHeaderController *)self maxHeight];
    v6 = [(AVTCollapsibleHeaderController *)self headerView];
    [v6 bounds];
  }

  [(AVTCollapsibleHeaderController *)self maxHeight];

  [AVTCollapsibleHeaderController updateHeaderForHeight:"updateHeaderForHeight:withOffset:animated:" withOffset:v3 animated:?];
}

- (void)expandAnimated:(BOOL)a3 withFocusRect:(CGRect)a4 standardItemHeight:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v11 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v11 contentOffset];

  if ([(AVTCollapsibleHeaderController *)self shouldPushContentOffsetOnExpandOrCollapse])
  {
    [(AVTCollapsibleHeaderController *)self maxHeight];
    v12 = [(AVTCollapsibleHeaderController *)self headerView];
    [v12 bounds];
  }

  else
  {
    v38 = a5;
    v13 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v13 bounds];
    v14 = x;
    v15 = y;
    v16 = width;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v25 _effectiveContentInset];
    v27 = v20 + v26;

    v28 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v28 _effectiveContentInset];
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
      v43.size.height = height + v38;
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
        v47.size.height = height + v38;
        if (MaxY < CGRectGetMaxY(v47))
        {
          v48.origin.x = v14;
          v48.origin.y = v15;
          v48.size.width = v16;
          v48.size.height = height + v38;
          CGRectGetMaxY(v48);
          v49.origin.y = v39;
          v49.origin.x = v18;
          v49.size.width = v22;
          v49.size.height = v31;
          CGRectGetMaxY(v49);
          v36 = [(AVTCollapsibleHeaderController *)self scrollView];
          [v36 contentSize];
          v37 = [(AVTCollapsibleHeaderController *)self scrollView];
          [v37 bounds];
        }
      }

      else
      {
        v33 = [(AVTCollapsibleHeaderController *)self scrollView];
        [v33 _effectiveContentInset];
        v45.origin.x = v14;
        v45.origin.y = v15;
        v45.size.width = v16;
        v45.size.height = height + v38;
        CGRectGetMinY(v45);

        v34 = [(AVTCollapsibleHeaderController *)self scrollView];
        [v34 _effectiveContentInset];
      }
    }
  }

  [(AVTCollapsibleHeaderController *)self maxHeight];

  [AVTCollapsibleHeaderController updateHeaderForHeight:"updateHeaderForHeight:withOffset:animated:" withOffset:v9 animated:?];
}

- (void)collapseAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v5 contentOffset];

  if ([(AVTCollapsibleHeaderController *)self shouldPushContentOffsetOnExpandOrCollapse])
  {
    v6 = [(AVTCollapsibleHeaderController *)self headerView];
    [v6 bounds];
    [(AVTCollapsibleHeaderController *)self minHeight];
  }

  [(AVTCollapsibleHeaderController *)self minHeight];

  [AVTCollapsibleHeaderController updateHeaderForHeight:"updateHeaderForHeight:withOffset:animated:" withOffset:v3 animated:?];
}

- (void)snapToMinMaxIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(AVTCollapsibleHeaderController *)self shouldSnapToMinOrMax])
  {
    [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
    v6 = v5;
    v7 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v7 contentOffset];
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

          [(AVTCollapsibleHeaderController *)self collapseAnimated:v3];
        }

        else
        {

          [(AVTCollapsibleHeaderController *)self expandAnimated:v3];
        }
      }
    }
  }
}

- (void)updateHeaderForHeight:(double)a3 withOffset:(CGPoint)a4 animated:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  [(AVTCollapsibleHeaderController *)self setShouldResizeHeaderForScrolling:0];
  v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_animationDidUpdateWithDisplayLink_];
  v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v10 addToRunLoop:v11 forMode:*MEMORY[0x1E695D918]];

  v12 = MEMORY[0x1E69DD250];
  if (v5)
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
  *&v19[5] = a3;
  *&v19[6] = x;
  *&v19[7] = y;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__AVTCollapsibleHeaderController_updateHeaderForHeight_withOffset_animated___block_invoke_2;
  v15[3] = &unk_1E7F3AAD0;
  v16 = v10;
  v17 = self;
  v18 = a3;
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

- (void)animationDidUpdateWithDisplayLink:(id)a3
{
  v4 = [(AVTCollapsibleHeaderController *)self headerView];
  v5 = [v4 layer];
  v10 = [v5 presentationLayer];

  [v10 bounds];
  v7 = v6;
  v8 = [(AVTCollapsibleHeaderController *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = [(AVTCollapsibleHeaderController *)self delegate];
    [v9 collapsibleHeaderController:self isUpdatingHeaderWithIncrementalHeight:v7];
  }
}

- (void)scrollToTopPreservingHeaderHeight:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    [(AVTCollapsibleHeaderController *)self setShouldResizeHeaderForScrolling:0];
    [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
    [(AVTCollapsibleHeaderController *)self topContentOffsetWithHeaderHeight:?];
    v7 = v6;
    v9 = v8;
    v10 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v10 setContentOffset:v4 animated:{v7, v9}];

    v11 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v11 contentOffset];
    [(AVTCollapsibleHeaderController *)self setPreviousOffset:v12];

    [(AVTCollapsibleHeaderController *)self setShouldResizeHeaderForScrolling:1];
  }

  else
  {

    [(AVTCollapsibleHeaderController *)self scrollToTopAnimated:a4];
  }
}

- (CGPoint)topContentOffsetWithHeaderHeight:(double)a3
{
  v5 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v5 contentOffset];
  v7 = v6;

  v8 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v8 _effectiveContentInset];
  v10 = v9;
  [(AVTCollapsibleHeaderController *)self maxHeight];
  v12 = v11 - a3 - v10;

  v13 = v7;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v10 = [(AVTCollapsibleHeaderController *)self scrollView];
  v5 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v5 contentOffset];
  v7 = v6;
  v8 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v8 _effectiveContentInset];
  [v10 setContentOffset:v3 animated:{v7, -v9}];
}

- (BOOL)shouldResizeGivenMarginalScrollDistancesForScrollDirection:(unint64_t)a3
{
  if (a3 != 2)
  {
    return a3 == 1 && (([(AVTCollapsibleHeaderController *)self singleTouchOffset], v4 >= 0.0) ? (v5 = v4) : (v5 = -v4), [(AVTCollapsibleHeaderController *)self expandMarginalScrollDistance], v5 > v6);
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

- (BOOL)shouldResizeGivenScrollDirection:(unint64_t)a3 currentHeaderHeight:(double)a4 targetHeaderHeight:(double)a5
{
  if (a3 == 2 && a5 < a4)
  {
    return 1;
  }

  return a5 > a4 && a3 == 1;
}

- (void)updateHeaderHeightToMatchScrollViewStateForScrollDirection:(unint64_t)a3 animated:(BOOL)a4
{
  v6 = [(AVTCollapsibleHeaderController *)self scrollView:a3];
  [v6 contentOffset];
  v8 = v7;
  v9 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v9 contentInset];
  [(AVTCollapsibleHeaderController *)self headerHeightForContentOffset:v8 contentInset:v10, v11, v12, v13];
  v15 = v14;

  [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
  v17 = v16;
  if ([(AVTCollapsibleHeaderController *)self shouldResizeGivenMarginalScrollDistancesForScrollDirection:a3]&& [(AVTCollapsibleHeaderController *)self shouldResizeGivenScrollDirection:a3 currentHeaderHeight:v17 targetHeaderHeight:v15])
  {
    v18 = [(AVTCollapsibleHeaderController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(AVTCollapsibleHeaderController *)self delegate];
      [v20 collapsibleHeaderController:self willUpdateHeaderToHeight:v15];
    }

    [(AVTCollapsibleHeaderController *)self updateHeaderSizeForGlobalHeaderHeight:v15];
    v21 = [(AVTCollapsibleHeaderController *)self delegate];
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      v23 = [(AVTCollapsibleHeaderController *)self delegate];
      [v23 collapsibleHeaderController:self didUpdateHeaderToHeight:v15];
    }
  }
}

- (double)headerHeightForContentOffset:(double)a3 contentInset:(UIEdgeInsets)a4
{
  v6 = [(AVTCollapsibleHeaderController *)self scrollView:a3];
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
      v48 = [(AVTCollapsibleHeaderController *)self scrollView];
      [v48 _effectiveContentInset];
      v50 = v49;

      [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
      v52 = v51;
      [(AVTCollapsibleHeaderController *)self minHeight];
      v54 = v52 - v53;
      [(AVTCollapsibleHeaderController *)self scrollToCompressionMultiplier];
      if (v54 * v55 + a3 < a3)
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

      if (-v50 <= a3)
      {
        v40 = v45 + (v43 - a3) / v47;
        goto LABEL_31;
      }

LABEL_27:
      [(AVTCollapsibleHeaderController *)self maxHeight];
      goto LABEL_30;
    }

    v14 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v14 _effectiveContentInset];
    v16 = v15;
    v17 = -v15;

    v18 = [(AVTCollapsibleHeaderController *)self headerView];
    [v18 frame];
    v20 = v19;
    v21 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v21 frame];
    v23 = v20 - v22;

    v24 = -a3;
    if (v17 > a3)
    {
      v24 = v16;
    }

    v59 = v24;
    [(AVTCollapsibleHeaderController *)self additionalTopContentInset];
    v26 = v25;
    [(AVTCollapsibleHeaderController *)self previousOffset];
    v28 = v27 - a3;
    [(AVTCollapsibleHeaderController *)self currentHeightForHeader];
    v30 = v29;
    [(AVTCollapsibleHeaderController *)self scrollToCompressionMultiplier];
    v32 = v31;
    v33 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v33 contentSize];
    v35 = v34;
    v36 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v36 bounds];
    if (v35 - (v37 - v23) > a3)
    {

      goto LABEL_10;
    }

    if (v28 <= 0.0)
    {
      v57 = [(AVTCollapsibleHeaderController *)self shouldCollapseOnBottomBounceScroll];

      if (v57)
      {
LABEL_10:
        if (v17 <= a3)
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

- (void)updateHeaderSizeForGlobalHeaderHeight:(double)a3
{
  v5 = [(AVTCollapsibleHeaderController *)self headerView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(AVTCollapsibleHeaderController *)self headerView];
  [v12 setFrame:{v7, v9, v11, a3}];
}

- (double)currentHeightForHeader
{
  v2 = [(AVTCollapsibleHeaderController *)self headerView];
  [v2 bounds];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)updatedScrollViewInsetsFromExistingInsets:(UIEdgeInsets)a3
{
  bottom = a3.bottom;
  v5 = [(AVTCollapsibleHeaderController *)self scrollView:a3.top];
  [v5 _systemContentInset];
  v7 = v6;

  v8 = 0.0;
  if (v7 > 0.0)
  {
    v9 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v9 _systemContentInset];
    v11 = v10;
    v12 = [(AVTCollapsibleHeaderController *)self headerView];
    [v12 frame];
    v14 = v13;
    v15 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v15 frame];
    v8 = v11 - (v14 - v16);
  }

  [(AVTCollapsibleHeaderController *)self maxHeight];
  v18 = v17;
  [(AVTCollapsibleHeaderController *)self additionalTopContentInset];
  v20 = v18 + v19 - v8;
  v21 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v21 contentInset];
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
  v3 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(AVTCollapsibleHeaderController *)self updatedScrollViewInsetsFromExistingInsets:v5, v7, v9, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(AVTCollapsibleHeaderController *)self scrollView];
  [v20 verticalScrollIndicatorInsets];
  v31 = v22;
  v32 = v21;
  v30 = v23;

  if (v15 != v7 || v13 != v5 || v19 != v11 || v17 != v9)
  {
    [(AVTCollapsibleHeaderController *)self previousOffset];
    [(AVTCollapsibleHeaderController *)self setPreviousOffset:v5 - v13 + v27];
    v28 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v28 setContentInset:{v13, v15, v17, v19}];

    v29 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v29 setScrollIndicatorInsets:{v13, v32, v31, v30}];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = AVTCollapsibleHeaderController;
  if ([(AVTCollapsibleHeaderController *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = AVTCollapsibleHeaderController;
  v5 = [(AVTCollapsibleHeaderController *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVTCollapsibleHeaderController;
    v7 = [(AVTCollapsibleHeaderController *)&v9 forwardingTargetForSelector:a3];
  }

  return v7;
}

- (void)scrollViewDidScroll:(id)a3
{
  v25 = a3;
  if ([(AVTCollapsibleHeaderController *)self shouldResizeHeaderForScrolling])
  {
    [(AVTCollapsibleHeaderController *)self updateInsetsIfNeeded];
    [(AVTCollapsibleHeaderController *)self previousOffset];
    v5 = v4;
    v6 = v25;
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
    v19 = [(AVTCollapsibleHeaderController *)self scrollView];
    [v19 contentOffset];
    [(AVTCollapsibleHeaderController *)self setSingleTouchOffset:v16 + v18 - v20];

    [(AVTCollapsibleHeaderController *)self updateHeaderHeightToMatchScrollViewStateForScrollDirection:v12 animated:1];
    [v6 contentOffset];
    [(AVTCollapsibleHeaderController *)self setPreviousOffset:v21];
  }

  v22 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    [v24 scrollViewDidScroll:v25];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v29 = a3;
  if ([(AVTCollapsibleHeaderController *)self shouldResizeHeaderForScrolling]&& [(AVTCollapsibleHeaderController *)self shouldSnapToMinOrMax]&& a5->y < 0.0)
  {
    [(AVTCollapsibleHeaderController *)self maxHeight];
    v10 = v9 - a5->y;
    [v29 _effectiveContentInset];
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
      [v29 _effectiveContentInset];
      a5->y = v24 - v25;
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
  v26 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    v28 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    [v28 scrollViewWillEndDragging:v29 withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if (!v4)
  {
    [(AVTCollapsibleHeaderController *)self snapToMinMaxIfNeededAnimated:1];
    [(AVTCollapsibleHeaderController *)self setSingleTouchOffset:0.0];
    [(AVTCollapsibleHeaderController *)self setCurrentScrollDirection:0];
  }

  v6 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    [v8 scrollViewDidEndDragging:v9 willDecelerate:v4];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v7 = a3;
  if (([v7 isDragging] & 1) == 0)
  {
    [(AVTCollapsibleHeaderController *)self setSingleTouchOffset:0.0];
    [(AVTCollapsibleHeaderController *)self setCurrentScrollDirection:0];
  }

  v4 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTCollapsibleHeaderController *)self scrollViewDelegate];
    [v6 scrollViewDidEndDecelerating:v7];
  }
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

@end