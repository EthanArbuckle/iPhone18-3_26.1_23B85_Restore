@interface CRLWPTextMagnifierRenderer
- (CRLWPTextMagnifierRenderer)initWithFrame:(CGRect)frame;
- (CRLWPTextMagnifierRendererDelegate)rendererDelegate;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setAutoscrollDirections:(int)directions;
@end

@implementation CRLWPTextMagnifierRenderer

- (CRLWPTextMagnifierRenderer)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CRLWPTextMagnifierRenderer;
  v3 = [(CRLWPTextMagnifierRenderer *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRLWPTextMagnifierRenderer *)v3 setUserInteractionEnabled:0];
    [(CRLWPTextMagnifierRenderer *)v4 setOpaque:0];
  }

  return v4;
}

- (void)setAutoscrollDirections:(int)directions
{
  if (self->_autoscrollDirections != directions)
  {
    v9 = v3;
    self->_autoscrollDirections = directions;
    v8 = 0.800000012;
    if (!directions)
    {
      v8 = 1.0;
    }

    [(CRLWPTextMagnifierRenderer *)self setAlpha:v8, v4, v9, v5];
    [(CRLWPTextMagnifierRenderer *)self setNeedsLayout];

    [(CRLWPTextMagnifierRenderer *)self setNeedsDisplay];
  }
}

- (void)layoutSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_rendererDelegate);
  shouldHideCanvasLayer = [WeakRetained shouldHideCanvasLayer];

  if (shouldHideCanvasLayer)
  {
    v5 = [(CRLWPTextMagnifierRenderer *)self autoscrollDirections]!= 0;
  }

  else
  {
    v5 = 0;
  }

  [(CRLWPTextMagnifierRenderer *)self setHidden:v5];
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  layer = [(CRLWPTextMagnifierRenderer *)self layer];
  [layer crl_ignoreAccessibilityInvertColorsIfNeeded:1];

  WeakRetained = objc_loadWeakRetained(&self->_rendererDelegate);
  layer2 = [(CRLWPTextMagnifierRenderer *)self layer];
  [WeakRetained drawMagnifierClippedCanvasLayer:layer2 inContext:CurrentContext];
}

- (CRLWPTextMagnifierRendererDelegate)rendererDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rendererDelegate);

  return WeakRetained;
}

@end