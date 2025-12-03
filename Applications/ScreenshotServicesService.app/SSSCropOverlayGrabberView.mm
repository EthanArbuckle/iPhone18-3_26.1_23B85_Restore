@interface SSSCropOverlayGrabberView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (SSSCropOverlayGrabberView)initWithEdge:(unint64_t)edge;
- (void)layoutSubviews;
- (void)setPrefersRoundedEdges:(BOOL)edges;
@end

@implementation SSSCropOverlayGrabberView

- (SSSCropOverlayGrabberView)initWithEdge:(unint64_t)edge
{
  v7.receiver = self;
  v7.super_class = SSSCropOverlayGrabberView;
  v3 = [(SSSCropOverlayLineView *)&v7 initWithEdge:edge];
  v4 = objc_alloc_init(UIView);
  hitTestView = v3->_hitTestView;
  v3->_hitTestView = v4;

  [(UIView *)v3->_hitTestView setHidden:1];
  [(SSSCropOverlayGrabberView *)v3 addSubview:v3->_hitTestView];
  return v3;
}

- (void)setPrefersRoundedEdges:(BOOL)edges
{
  self->_prefersRoundedEdges = _SSScreenshotsRedesign2025Enabled() & edges;

  [(SSSCropOverlayGrabberView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SSSCropOverlayGrabberView;
  [(SSSCropOverlayGrabberView *)&v22 layoutSubviews];
  [(SSSCropOverlayGrabberView *)self bounds];
  v6 = v5;
  v8 = v7;
  if (SSMinimumTouchableDimension >= v3)
  {
    v9 = SSMinimumTouchableDimension;
  }

  else
  {
    v9 = v3;
  }

  if (SSMinimumTouchableDimension >= v4)
  {
    v10 = SSMinimumTouchableDimension;
  }

  else
  {
    v10 = v4;
  }

  v11 = SSCropHandleOutsideTouchableDimension;
  v21 = SSCropHandleInsideTouchableDimension;
  if ([(SSSCropOverlayLineView *)self edge]== 1 || [(SSSCropOverlayLineView *)self edge]== 4)
  {
    UIRectCenteredXInRect();
LABEL_10:
    v6 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;
    goto LABEL_11;
  }

  if ([(SSSCropOverlayLineView *)self edge]== 2 || [(SSSCropOverlayLineView *)self edge]== 8)
  {
    UIRectCenteredYInRect();
    goto LABEL_10;
  }

LABEL_11:
  if ([(SSSCropOverlayLineView *)self edge]== 1)
  {
    v8 = -v11;
  }

  else if ([(SSSCropOverlayLineView *)self edge]== 4)
  {
    v8 = -v21;
  }

  else if ([(SSSCropOverlayLineView *)self edge]== 2)
  {
    v6 = -v11;
  }

  else if ([(SSSCropOverlayLineView *)self edge]== 8)
  {
    v6 = -v21;
  }

  [(UIView *)self->_hitTestView setFrame:v6, v8, v9, v10];
  v16 = 0.0;
  if (self->_prefersRoundedEdges)
  {
    [(SSSCropOverlayGrabberView *)self bounds];
    v18 = v17;
    [(SSSCropOverlayGrabberView *)self bounds];
    if (v18 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    v16 = v20 * 0.5;
  }

  [(SSSCropOverlayGrabberView *)self _setContinuousCornerRadius:v16];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  v10.receiver = self;
  v10.super_class = SSSCropOverlayGrabberView;
  eventCopy = event;
  v8 = [(SSSCropOverlayGrabberView *)&v10 pointInside:eventCopy withEvent:x, y];
  [(UIView *)selfCopy->_hitTestView convertPoint:selfCopy fromView:x, y, v10.receiver, v10.super_class];
  LOBYTE(selfCopy) = [(UIView *)selfCopy->_hitTestView pointInside:eventCopy withEvent:?];

  return (v8 | selfCopy) & 1;
}

@end