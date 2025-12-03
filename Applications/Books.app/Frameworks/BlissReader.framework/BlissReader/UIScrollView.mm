@interface UIScrollView
- (BOOL)canScroll;
- (BOOL)isAncestorScrollViewDragging;
- (BOOL)isSettledOnFirstOrLastPage;
- (CGPoint)spi_pageDecelerationTarget;
- (unint64_t)pageCount;
- (void)th_killPans;
@end

@implementation UIScrollView

- (BOOL)isAncestorScrollViewDragging
{
  if ([(UIScrollView *)self isDragging])
  {
    return 1;
  }

  superview = [(UIScrollView *)self superview];

  return [superview isAncestorScrollViewDragging];
}

- (BOOL)isSettledOnFirstOrLastPage
{
  if ([(UIScrollView *)self isTracking])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = ![(UIScrollView *)self isDecelerating];
  }

  if ([(UIScrollView *)self isPagingEnabled])
  {
    [(UIScrollView *)self contentOffset];
    if (fabs(v4) >= 0.00999999978)
    {
      [(UIScrollView *)self contentOffset];
      v7 = v6;
      [(UIScrollView *)self contentSize];
      v9 = v8;
      [(UIScrollView *)self bounds];
      v5 = vabdd_f64(v7, v9 - CGRectGetWidth(v11)) < 0.00999999978;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v3 & v5;
}

- (unint64_t)pageCount
{
  if (![(UIScrollView *)self isPagingEnabled])
  {
    return 0;
  }

  [(UIScrollView *)self contentSize];
  v4 = v3;
  [(UIScrollView *)self bounds];
  return (v4 / CGRectGetWidth(v6));
}

- (BOOL)canScroll
{
  [(UIScrollView *)self contentSize];
  v4 = v3;
  [(UIScrollView *)self bounds];
  if (v4 > CGRectGetWidth(v8))
  {
    return 1;
  }

  [(UIScrollView *)self contentSize];
  v7 = v6;
  [(UIScrollView *)self bounds];
  return v7 > CGRectGetHeight(v9);
}

- (void)th_killPans
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  gestureRecognizers = [(UIScrollView *)self gestureRecognizers];
  v3 = [gestureRecognizers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 state] <= 2)
        {
          [v7 setState:4];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [gestureRecognizers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (CGPoint)spi_pageDecelerationTarget
{
  [(UIScrollView *)self _pageDecelerationTarget];
  result.y = v3;
  result.x = v2;
  return result;
}

@end