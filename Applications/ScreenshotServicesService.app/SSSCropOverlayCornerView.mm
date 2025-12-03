@interface SSSCropOverlayCornerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)initForCorner:(unint64_t)corner;
- (void)layoutSubviews;
@end

@implementation SSSCropOverlayCornerView

- (id)initForCorner:(unint64_t)corner
{
  v13.receiver = self;
  v13.super_class = SSSCropOverlayCornerView;
  v4 = [(SSSCropOverlayCornerView *)&v13 init];
  v4->_corner = corner;
  v5 = 0.0;
  if (corner - 2 <= 6)
  {
    v5 = dbl_10008F4E0[corner - 2];
  }

  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeRotation(&v12, v5);
  v11 = v12;
  [(SSSCropOverlayCornerView *)v4 setTransform:&v11];
  v6 = [[SSSCropOverlayGrabberView alloc] initWithEdge:1];
  topLineView = v4->_topLineView;
  v4->_topLineView = v6;

  v8 = [[SSSCropOverlayGrabberView alloc] initWithEdge:2];
  leftLineView = v4->_leftLineView;
  v4->_leftLineView = v8;

  [(SSSCropOverlayCornerView *)v4 addSubview:v4->_topLineView];
  [(SSSCropOverlayCornerView *)v4 addSubview:v4->_leftLineView];
  return v4;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SSSCropOverlayCornerView;
  [(SSSCropOverlayCornerView *)&v10 layoutSubviews];
  [(SSSCropOverlayCornerView *)self bounds];
  v4 = v3;
  [(SSSCropOverlayCornerView *)self bounds];
  v6 = v5;
  +[SSSCropOverlayGrabberView preferredDimension];
  v8 = v7;
  v9 = v6 - v7;
  [(SSSCropOverlayGrabberView *)self->_topLineView setFrame:0.0, 0.0, v4, v7];
  [(SSSCropOverlayGrabberView *)self->_leftLineView setFrame:0.0, v8, v8, v9];
}

- (CGSize)intrinsicContentSize
{
  +[SSSCropOverlayCornerView preferredDimension];
  v3 = v2;
  +[SSSCropOverlayCornerView preferredDimension];
  v5 = v4;
  v6 = v3;
  result.height = v5;
  result.width = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  topLineView = self->_topLineView;
  [(SSSCropOverlayGrabberView *)topLineView convertPoint:self fromView:x, y];
  if ([(SSSCropOverlayGrabberView *)topLineView pointInside:eventCopy withEvent:?])
  {
    v9 = 1;
  }

  else
  {
    leftLineView = self->_leftLineView;
    [(SSSCropOverlayGrabberView *)leftLineView convertPoint:self fromView:x, y];
    v9 = [(SSSCropOverlayGrabberView *)leftLineView pointInside:eventCopy withEvent:?];
  }

  return v9;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  selfCopy = self;
  v11.receiver = self;
  v11.super_class = SSSCropOverlayCornerView;
  v7 = [(SSSCropOverlayCornerView *)&v11 hitTest:event withEvent:?];
  +[SSSCropOverlayGrabberView preferredDimension];
  UIRectCenteredAboutPoint();
  v13.x = x;
  v13.y = y;
  v8 = CGRectContainsPoint(v14, v13);
  if (v7 != selfCopy->_topLineView && v7 != selfCopy->_leftLineView && !v8)
  {
    selfCopy = v7;
  }

  v9 = selfCopy;

  return v9;
}

@end