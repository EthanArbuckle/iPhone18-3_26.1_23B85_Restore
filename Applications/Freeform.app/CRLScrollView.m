@interface CRLScrollView
- (BOOL)p_optOutOfUIScrollViewContentOffsetAnimation;
- (void)safeAreaInsetsDidChange;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setContentOffset:(CGPoint)a3 relativeToOriginalSize:(CGSize)a4;
- (void)setContentSize:(CGSize)a3;
@end

@implementation CRLScrollView

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    [(CRLScrollView *)self contentOffset];
    if (x != v9 || y != v8)
    {
      v11 = [(CRLScrollView *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(CRLScrollView *)self delegate];
        [v13 scrollView:self willAnimateToContentOffset:{x, y}];
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
    if (v4)
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
    [(CRLScrollView *)&v16 setContentOffset:v4 animated:x, y];
  }
}

- (void)setContentOffset:(CGPoint)a3
{
  v3.receiver = self;
  v3.super_class = CRLScrollView;
  [(CRLScrollView *)&v3 setContentOffset:a3.x, a3.y];
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setContentOffset:(CGPoint)a3 relativeToOriginalSize:(CGSize)a4
{
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v8 = [(CRLScrollView *)self delegate:a3.x];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(CRLScrollView *)self delegate];
    v10 = [v9 scrollViewShouldAnchorToRightEdge:self];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CRLScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(CRLScrollView *)self delegate];
    v13 = [v12 contentViewCanResizeToFitScrollView:self];

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

- (void)setContentSize:(CGSize)a3
{
  if (a3.height > 0.0 && a3.width > 0.0)
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
  v3 = [(CRLScrollView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CRLScrollView *)self delegate];
  v6 = [v5 scrollViewShouldOptOutOfUIScrollViewContentOffsetAnimationForScrollView:self];

  return v6;
}

@end