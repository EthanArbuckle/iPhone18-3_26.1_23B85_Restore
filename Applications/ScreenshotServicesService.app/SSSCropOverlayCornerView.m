@interface SSSCropOverlayCornerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)initForCorner:(unint64_t)a3;
- (void)layoutSubviews;
@end

@implementation SSSCropOverlayCornerView

- (id)initForCorner:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = SSSCropOverlayCornerView;
  v4 = [(SSSCropOverlayCornerView *)&v13 init];
  v4->_corner = a3;
  v5 = 0.0;
  if (a3 - 2 <= 6)
  {
    v5 = dbl_10008F4E0[a3 - 2];
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  topLineView = self->_topLineView;
  [(SSSCropOverlayGrabberView *)topLineView convertPoint:self fromView:x, y];
  if ([(SSSCropOverlayGrabberView *)topLineView pointInside:v7 withEvent:?])
  {
    v9 = 1;
  }

  else
  {
    leftLineView = self->_leftLineView;
    [(SSSCropOverlayGrabberView *)leftLineView convertPoint:self fromView:x, y];
    v9 = [(SSSCropOverlayGrabberView *)leftLineView pointInside:v7 withEvent:?];
  }

  return v9;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v11.receiver = self;
  v11.super_class = SSSCropOverlayCornerView;
  v7 = [(SSSCropOverlayCornerView *)&v11 hitTest:a4 withEvent:?];
  +[SSSCropOverlayGrabberView preferredDimension];
  UIRectCenteredAboutPoint();
  v13.x = x;
  v13.y = y;
  v8 = CGRectContainsPoint(v14, v13);
  if (v7 != v6->_topLineView && v7 != v6->_leftLineView && !v8)
  {
    v6 = v7;
  }

  v9 = v6;

  return v9;
}

@end