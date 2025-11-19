@interface SSSScrollView
- (BOOL)isMoving;
- (CGRect)visibleRect;
- (CGSize)_unscaledContentSize;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)animateSuperZoomToRect;
- (void)setFrame:(CGRect)a3;
- (void)setZoomScale:(double)a3 animated:(BOOL)a4;
- (void)zoomToRect:(CGRect)a3 animated:(BOOL)a4;
@end

@implementation SSSScrollView

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SSSScrollView *)self frame];
  if ((SSRectEqualToRect() & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = SSSScrollView;
    [(SSSScrollView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(SSSScrollView *)self contentInset];
  if ((SSEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    self->_isInProgrammaticCall = 1;
    v8.receiver = self;
    v8.super_class = SSSScrollView;
    [(SSSScrollView *)&v8 setContentInset:top, left, bottom, right];
    self->_isInProgrammaticCall = 0;
  }
}

- (void)setZoomScale:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(SSSScrollView *)self zoomScale];
  if (v7 != a3)
  {
    self->_isInProgrammaticCall = 1;
    v8.receiver = self;
    v8.super_class = SSSScrollView;
    [(SSSScrollView *)&v8 setZoomScale:v4 animated:a3];
    self->_isInProgrammaticCall = 0;
  }
}

- (void)zoomToRect:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (SSRectIsValid())
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectIsEmpty(v11))
    {
      self->_inSuperZoomToRect = 1;
      self->_animateSuperZoomToRect = v4;
      v10.receiver = self;
      v10.super_class = SSSScrollView;
      [(SSSScrollView *)&v10 zoomToRect:v4 animated:x, y, width, height];
      self->_inSuperZoomToRect = 0;
    }
  }
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)animateSuperZoomToRect
{
  if (self->_inSuperZoomToRect)
  {
    animateSuperZoomToRect = self->_animateSuperZoomToRect;
  }

  v7 = v4;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = SSSScrollView;
  [(SSSScrollView *)&v6 setContentOffset:animateSuperZoomToRect animated:a3.x, a3.y];
}

- (CGSize)_unscaledContentSize
{
  [(SSSScrollView *)self contentSize];
  v4 = v3;
  v6 = v5;
  [(SSSScrollView *)self zoomScale];
  v8 = v4 / v7;
  [(SSSScrollView *)self zoomScale];
  v10 = v6 / v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (CGRect)visibleRect
{
  v3 = [(SSSScrollView *)self delegate];
  v4 = [v3 viewForZoomingInScrollView:self];

  [(SSSScrollView *)self bounds];
  [v4 convertRect:self fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)isMoving
{
  v3 = [(SSSScrollView *)self isDragging];
  v4 = [(SSSScrollView *)self isDecelerating];
  v5 = [(SSSScrollView *)self isZooming];
  return (v3 | v4 | v5 | [(SSSScrollView *)self isZoomBouncing]) & 1;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = SSSScrollView;
  v8 = [(SSSScrollView *)&v24 hitTest:v7 withEvent:x, y];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10002D820;
  v22 = sub_10002D830;
  v23 = 0;
  if ([(SSSScrollView *)self hitTestsUsingSubviews])
  {
    v9 = [(SSSScrollView *)self subviews];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002D838;
    v13[3] = &unk_1000BAC50;
    v16 = x;
    v17 = y;
    v13[4] = self;
    v14 = v7;
    v15 = &v18;
    [v9 enumerateObjectsUsingBlock:v13];
  }

  v10 = v19[5];
  if (!v10)
  {
    v10 = v8;
  }

  v11 = v10;
  _Block_object_dispose(&v18, 8);

  return v11;
}

@end