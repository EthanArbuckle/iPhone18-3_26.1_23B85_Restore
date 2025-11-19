@interface CRLWPTextMagnifierRenderer
- (CRLWPTextMagnifierRenderer)initWithFrame:(CGRect)a3;
- (CRLWPTextMagnifierRendererDelegate)rendererDelegate;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAutoscrollDirections:(int)a3;
@end

@implementation CRLWPTextMagnifierRenderer

- (CRLWPTextMagnifierRenderer)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CRLWPTextMagnifierRenderer;
  v3 = [(CRLWPTextMagnifierRenderer *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRLWPTextMagnifierRenderer *)v3 setUserInteractionEnabled:0];
    [(CRLWPTextMagnifierRenderer *)v4 setOpaque:0];
  }

  return v4;
}

- (void)setAutoscrollDirections:(int)a3
{
  if (self->_autoscrollDirections != a3)
  {
    v9 = v3;
    self->_autoscrollDirections = a3;
    v8 = 0.800000012;
    if (!a3)
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
  v4 = [WeakRetained shouldHideCanvasLayer];

  if (v4)
  {
    v5 = [(CRLWPTextMagnifierRenderer *)self autoscrollDirections]!= 0;
  }

  else
  {
    v5 = 0;
  }

  [(CRLWPTextMagnifierRenderer *)self setHidden:v5];
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [(CRLWPTextMagnifierRenderer *)self layer];
  [v5 crl_ignoreAccessibilityInvertColorsIfNeeded:1];

  WeakRetained = objc_loadWeakRetained(&self->_rendererDelegate);
  v6 = [(CRLWPTextMagnifierRenderer *)self layer];
  [WeakRetained drawMagnifierClippedCanvasLayer:v6 inContext:CurrentContext];
}

- (CRLWPTextMagnifierRendererDelegate)rendererDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rendererDelegate);

  return WeakRetained;
}

@end