@interface WKKeyboardScrollViewAnimator
- (BOOL)beginWithEvent:(id)event scrollView:(id)view;
- (BOOL)isKeyboardScrollable;
- (CGPoint)boundedContentOffset:(CGPoint)offset;
- (CGPoint)contentOffset;
- (CGSize)interactiveScrollVelocity;
- (RectEdges<BOOL>)rubberbandableDirections;
- (RectEdges<BOOL>)scrollableDirectionsFromOffset:(CGPoint)offset;
- (WKKeyboardScrollViewAnimator)init;
- (double)distanceForIncrement:(unsigned __int8)increment inDirection:(unsigned __int8)direction;
- (void)dealloc;
- (void)didFinishScrolling;
- (void)invalidate;
- (void)scrollToContentOffset:(FloatPoint)offset animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)willBeginScrollingToExtentWithAnimationInTrackingView:(id)view;
@end

@implementation WKKeyboardScrollViewAnimator

- (WKKeyboardScrollViewAnimator)init
{
  v6.receiver = self;
  v6.super_class = WKKeyboardScrollViewAnimator;
  v2 = [(WKKeyboardScrollViewAnimator *)&v6 init];
  if (v2)
  {
    v3 = [[WKKeyboardScrollingAnimator alloc] initWithScrollable:v2];
    m_ptr = v2->_animator.m_ptr;
    v2->_animator.m_ptr = v3;
    if (m_ptr)
    {
    }
  }

  return v2;
}

- (void)invalidate
{
  objc_storeWeak(&self->_scrollView, 0);
  [(WKKeyboardScrollingAnimator *)self->_animator.m_ptr invalidate];
  m_ptr = self->_animator.m_ptr;
  self->_animator.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (void)dealloc
{
  [(WKKeyboardScrollingAnimator *)self->_animator.m_ptr invalidate];
  v3.receiver = self;
  v3.super_class = WKKeyboardScrollViewAnimator;
  [(WKKeyboardScrollViewAnimator *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  objc_loadWeak(&self->_delegate);
  self->_delegateRespondsToIsKeyboardScrollable = objc_opt_respondsToSelector() & 1;
  objc_loadWeak(&self->_delegate);
  self->_delegateRespondsToDistanceForIncrement = objc_opt_respondsToSelector() & 1;
  objc_loadWeak(&self->_delegate);
  self->_delegateRespondsToWillScroll = objc_opt_respondsToSelector() & 1;
  objc_loadWeak(&self->_delegate);
  self->_delegateRespondsToDidFinishScrolling = objc_opt_respondsToSelector() & 1;
}

- (BOOL)beginWithEvent:(id)event scrollView:(id)view
{
  if (!objc_loadWeak(&self->_scrollView))
  {
    objc_storeWeak(&self->_scrollView, view);
  }

  if (objc_loadWeak(&self->_scrollView) != view)
  {
    return 0;
  }

  m_ptr = self->_animator.m_ptr;

  return [(WKKeyboardScrollingAnimator *)m_ptr beginWithEvent:event];
}

- (BOOL)isKeyboardScrollable
{
  if (!self->_delegateRespondsToIsKeyboardScrollable)
  {
    return 1;
  }

  Weak = objc_loadWeak(&self->_delegate);

  return [Weak isScrollableForKeyboardScrollViewAnimator:self];
}

- (double)distanceForIncrement:(unsigned __int8)increment inDirection:(unsigned __int8)direction
{
  directionCopy = direction;
  incrementCopy = increment;
  Weak = objc_loadWeak(&self->_scrollView);
  result = 0.0;
  if (!Weak)
  {
    return result;
  }

  if (self->_delegateRespondsToDistanceForIncrement)
  {
    v9 = objc_loadWeak(&self->_delegate);

    [v9 keyboardScrollViewAnimator:self distanceForIncrement:incrementCopy inDirection:directionCopy];
    return result;
  }

  if (!incrementCopy)
  {
    [objc_loadWeak(&self->_scrollView) zoomScale];
    v15 = 40.0;
    return v14 * v15;
  }

  v10 = directionCopy & 0xFE;
  if (incrementCopy == 1)
  {
    [objc_loadWeak(&self->_scrollView) frame];
    if (v10 == 2)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = 0.8;
    return v14 * v15;
  }

  if (incrementCopy == 2)
  {
    [objc_loadWeak(&self->_scrollView) contentSize];
    if (v10 != 2)
    {
      return v11;
    }
  }

  return result;
}

- (void)scrollToContentOffset:(FloatPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  if (objc_loadWeak(&self->_scrollView))
  {
    if (self->_delegateRespondsToWillScroll)
    {
      [objc_loadWeak(&self->_delegate) keyboardScrollViewAnimatorWillScroll:self];
    }

    Weak = objc_loadWeak(&self->_scrollView);
    WebCore::FloatPoint::operator CGPoint();
    [Weak _wk_setContentOffsetAndShowScrollIndicators:animatedCopy animated:?];
  }
}

- (void)willBeginScrollingToExtentWithAnimationInTrackingView:(id)view
{
  [objc_loadWeak(&self->_scrollView) addSubview:view];
  Weak = objc_loadWeak(&self->_scrollView);

  [Weak flashScrollIndicators];
}

- (CGPoint)contentOffset
{
  if (objc_loadWeak(&self->_scrollView))
  {
    [objc_loadWeak(&self->_scrollView) contentOffset];
  }

  else
  {
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)boundedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  Weak = objc_loadWeak(&self->_scrollView);

  [Weak _wk_clampToScrollExtents:{x, y}];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)interactiveScrollVelocity
{
  Weak = objc_loadWeak(&self->_scrollView);

  [Weak interactiveScrollVelocityInPointsPerSecond];
  result.height = v4;
  result.width = v3;
  return result;
}

- (RectEdges<BOOL>)scrollableDirectionsFromOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  Weak = objc_loadWeak(&self->_scrollView);
  if (Weak)
  {
    [objc_loadWeak(&self->_scrollView) adjustedContentInset];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [objc_loadWeak(&self->_scrollView) contentSize];
    v16 = v15;
    v18 = v17;
    [objc_loadWeak(&self->_scrollView) bounds];
    v21 = v14 + v16 - v20;
    if (v21 <= -v10)
    {
      v21 = -v10;
    }

    v22 = v12 + v18 - v19;
    if (v22 <= -v8)
    {
      v22 = -v8;
    }

    LODWORD(Weak) = (y > -v8) | ((x > -v10) << 24) | ((y < v22) << 16) | ((x < v21) << 8);
  }

  return Weak;
}

- (RectEdges<BOOL>)rubberbandableDirections
{
  Weak = objc_loadWeak(&self->_scrollView);
  if (Weak)
  {
    _wk_canScrollVerticallyWithoutBouncing = [objc_loadWeak(&self->_scrollView) _wk_canScrollVerticallyWithoutBouncing];
    LODWORD(Weak) = [objc_loadWeak(&self->_scrollView) _wk_canScrollHorizontallyWithoutBouncing];
  }

  else
  {
    _wk_canScrollVerticallyWithoutBouncing = 0;
  }

  return ((Weak << 24) | (_wk_canScrollVerticallyWithoutBouncing << 16) | (Weak << 8) | _wk_canScrollVerticallyWithoutBouncing);
}

- (void)didFinishScrolling
{
  if (self->_delegateRespondsToDidFinishScrolling)
  {
    [objc_loadWeak(&self->_delegate) keyboardScrollViewAnimatorDidFinishScrolling:self];
  }

  objc_storeWeak(&self->_scrollView, 0);
}

@end