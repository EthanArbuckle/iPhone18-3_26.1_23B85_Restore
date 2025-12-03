@interface SSSScrollView
- (BOOL)isMoving;
- (CGRect)visibleRect;
- (CGSize)_unscaledContentSize;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animateSuperZoomToRect;
- (void)setFrame:(CGRect)frame;
- (void)setZoomScale:(double)scale animated:(BOOL)animated;
- (void)zoomToRect:(CGRect)rect animated:(BOOL)animated;
@end

@implementation SSSScrollView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SSSScrollView *)self frame];
  if ((SSRectEqualToRect() & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = SSSScrollView;
    [(SSSScrollView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
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

- (void)setZoomScale:(double)scale animated:(BOOL)animated
{
  animatedCopy = animated;
  [(SSSScrollView *)self zoomScale];
  if (v7 != scale)
  {
    self->_isInProgrammaticCall = 1;
    v8.receiver = self;
    v8.super_class = SSSScrollView;
    [(SSSScrollView *)&v8 setZoomScale:animatedCopy animated:scale];
    self->_isInProgrammaticCall = 0;
  }
}

- (void)zoomToRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (SSRectIsValid())
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectIsEmpty(v11))
    {
      self->_inSuperZoomToRect = 1;
      self->_animateSuperZoomToRect = animatedCopy;
      v10.receiver = self;
      v10.super_class = SSSScrollView;
      [(SSSScrollView *)&v10 zoomToRect:animatedCopy animated:x, y, width, height];
      self->_inSuperZoomToRect = 0;
    }
  }
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animateSuperZoomToRect
{
  if (self->_inSuperZoomToRect)
  {
    animateSuperZoomToRect = self->_animateSuperZoomToRect;
  }

  v7 = v4;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = SSSScrollView;
  [(SSSScrollView *)&v6 setContentOffset:animateSuperZoomToRect animated:offset.x, offset.y];
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
  delegate = [(SSSScrollView *)self delegate];
  v4 = [delegate viewForZoomingInScrollView:self];

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
  isDragging = [(SSSScrollView *)self isDragging];
  isDecelerating = [(SSSScrollView *)self isDecelerating];
  isZooming = [(SSSScrollView *)self isZooming];
  return (isDragging | isDecelerating | isZooming | [(SSSScrollView *)self isZoomBouncing]) & 1;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v24.receiver = self;
  v24.super_class = SSSScrollView;
  v8 = [(SSSScrollView *)&v24 hitTest:eventCopy withEvent:x, y];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10002D820;
  v22 = sub_10002D830;
  v23 = 0;
  if ([(SSSScrollView *)self hitTestsUsingSubviews])
  {
    subviews = [(SSSScrollView *)self subviews];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002D838;
    v13[3] = &unk_1000BAC50;
    v16 = x;
    v17 = y;
    v13[4] = self;
    v14 = eventCopy;
    v15 = &v18;
    [subviews enumerateObjectsUsingBlock:v13];
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