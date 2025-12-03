@interface CRLScrollView
- (BOOL)p_optOutOfUIScrollViewContentOffsetAnimation;
- (void)safeAreaInsetsDidChange;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setContentOffset:(CGPoint)offset relativeToOriginalSize:(CGSize)size;
- (void)setContentSize:(CGSize)size;
@end

@implementation CRLScrollView

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  if (animated)
  {
    [(CRLScrollView *)self contentOffset];
    if (x != v9 || y != v8)
    {
      delegate = [(CRLScrollView *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate2 = [(CRLScrollView *)self delegate];
        [delegate2 scrollView:self willAnimateToContentOffset:{x, y}];
      }
    }
  }

  if ([(CRLScrollView *)self p_optOutOfUIScrollViewContentOffsetAnimation])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10010CBFC;
    v18[3] = &unk_10183C8A8;
    v18[4] = self;
    *&v18[5] = x;
    *&v18[6] = y;
    v14 = objc_retainBlock(v18);
    v15 = v14;
    if (animatedCopy)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10010CC08;
      v17[3] = &unk_10183D270;
      v17[4] = self;
      [UIView animateWithDuration:v14 animations:v17 completion:0.3];
    }

    else
    {
      (v14[2])(v14);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CRLScrollView;
    [(CRLScrollView *)&v16 setContentOffset:animatedCopy animated:x, y];
  }
}

- (void)setContentOffset:(CGPoint)offset
{
  v3.receiver = self;
  v3.super_class = CRLScrollView;
  [(CRLScrollView *)&v3 setContentOffset:offset.x, offset.y];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  [(CRLScrollView *)self contentInset];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    v16.receiver = self;
    v16.super_class = CRLScrollView;
    [(CRLScrollView *)&v16 setContentInset:top, left, bottom, right];
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"CRLScrollViewContentInsetDidChangeNotification" object:self];
  }
}

- (void)setContentOffset:(CGPoint)offset relativeToOriginalSize:(CGSize)size
{
  width = size.width;
  y = offset.y;
  x = offset.x;
  v8 = [(CRLScrollView *)self delegate:offset.x];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(CRLScrollView *)self delegate];
    v10 = [delegate scrollViewShouldAnchorToRightEdge:self];
  }

  else
  {
    v10 = 0;
  }

  delegate2 = [(CRLScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate3 = [(CRLScrollView *)self delegate];
    v13 = [delegate3 contentViewCanResizeToFitScrollView:self];

    if ((v10 & v13) == 1)
    {
      [(CRLScrollView *)self contentSize];
      x = x - (width - v14);
    }
  }

  else
  {
  }

  [(CRLScrollView *)self setContentOffset:x, y];
}

- (void)safeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = CRLScrollView;
  [(CRLScrollView *)&v4 safeAreaInsetsDidChange];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"CRLScrollViewSafeAreaInsetsDidChangeNotification" object:self];
}

- (void)setContentSize:(CGSize)size
{
  if (size.height > 0.0 && size.width > 0.0)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = CRLScrollView;
    [(CRLScrollView *)&v5 setContentSize:?];
  }
}

- (BOOL)p_optOutOfUIScrollViewContentOffsetAnimation
{
  delegate = [(CRLScrollView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(CRLScrollView *)self delegate];
  v6 = [delegate2 scrollViewShouldOptOutOfUIScrollViewContentOffsetAnimationForScrollView:self];

  return v6;
}

@end