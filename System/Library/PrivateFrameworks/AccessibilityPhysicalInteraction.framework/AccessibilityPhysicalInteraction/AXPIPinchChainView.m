@interface AXPIPinchChainView
- (AXPIFingerAppearanceDelegate)appearanceDelegate;
- (AXPIPinchChainView)initWithFrame:(CGRect)a3;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (void)drawRect:(CGRect)a3;
- (void)setEndPoint:(CGPoint)a3;
- (void)setPressed:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setStartPoint:(CGPoint)a3;
@end

@implementation AXPIPinchChainView

- (AXPIPinchChainView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AXPIPinchChainView;
  v3 = [(AXPIPinchChainView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(AXPIPinchChainView *)v3 setBackgroundColor:v4];

    [(AXPIPinchChainView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)setStartPoint:(CGPoint)a3
{
  if (self->_startPoint.x != a3.x || self->_startPoint.y != a3.y)
  {
    self->_startPoint = a3;
    [(AXPIPinchChainView *)self setNeedsDisplay];
  }
}

- (void)setEndPoint:(CGPoint)a3
{
  if (self->_endPoint.x != a3.x || self->_endPoint.y != a3.y)
  {
    self->_endPoint = a3;
    [(AXPIPinchChainView *)self setNeedsDisplay];
  }
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    [(AXPIPinchChainView *)self setNeedsDisplay];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(AXPIPinchChainView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(AXPIPinchChainView *)self appearanceDelegate:a3.origin.x];
  [v4 fingerWidth];
  v6 = v5;

  v57.origin.x = self->_startPoint.x;
  v57.origin.y = self->_startPoint.y;
  v58.origin.x = self->_endPoint.x;
  v58.origin.y = self->_endPoint.y;
  v57.size.width = v6;
  v57.size.height = v6;
  v58.size.width = v6;
  v58.size.height = v6;
  if (!CGRectIntersectsRect(v57, v58))
  {
    if (+[AXPIFingerUtilities laserEnabled])
    {
      v7 = [(AXPIPinchChainView *)self appearanceDelegate];
      v8 = [v7 useSystemFilters];

      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 1;
    }

    CurrentContext = UIGraphicsGetCurrentContext();
    x = self->_startPoint.x;
    [(AXPIPinchChainView *)self frame];
    v13 = x - v12;
    y = self->_startPoint.y;
    [(AXPIPinchChainView *)self frame];
    v16 = y - v15;
    v17 = self->_endPoint.x;
    [(AXPIPinchChainView *)self frame];
    v19 = v17 - v18;
    v20 = self->_endPoint.y;
    [(AXPIPinchChainView *)self frame];
    v22 = v20 - v21;
    v23 = atan2(v20 - v21 - v16, v19 - v13);
    v24 = [(AXPIPinchChainView *)self appearanceDelegate];
    [v24 fingerInnerRadius];
    v26 = v25;
    v27 = [(AXPIPinchChainView *)self appearanceDelegate];
    [v27 strokeWidth];
    v29 = v28;
    v30 = [(AXPIPinchChainView *)self appearanceDelegate];
    [v30 strokeOutlineWidth];
    v32 = v31;

    v33 = [(AXPIPinchChainView *)self appearanceDelegate];
    LODWORD(v27) = [v33 showInnerCircle];

    if (v27)
    {
      v34 = v26 + v29 + v32 * 0.5;
      v35 = __sincos_stret(v23);
      CGContextMoveToPoint(CurrentContext, v13 + v34 * v35.__cosval, v16 + v34 * v35.__sinval);
      CGContextAddLineToPoint(CurrentContext, v19 - v34 * v35.__cosval, v22 - v34 * v35.__sinval);
      v36 = [(AXPIPinchChainView *)self appearanceDelegate];
      v37 = [v36 strokeOutlineColor];
      CGContextSetStrokeColorWithColor(CurrentContext, [v37 CGColor]);

      v38 = [(AXPIPinchChainView *)self appearanceDelegate];
      [v38 strokeOutlineWidth];
      v40 = v39;
      v41 = [(AXPIPinchChainView *)self appearanceDelegate];
      [v41 strokeWidth];
      CGContextSetLineWidth(CurrentContext, v42 + v40 * 2.0);

      CGContextStrokePath(CurrentContext);
    }

    v43 = [(AXPIPinchChainView *)self appearanceDelegate];
    [v43 fingerInnerRadius];
    v45 = v44;

    v46 = [(AXPIPinchChainView *)self appearanceDelegate];
    v47 = [v46 showFingerOutlines];

    if ((v47 & 1) == 0)
    {
      v48 = [(AXPIPinchChainView *)self appearanceDelegate];
      [v48 strokeWidth];
      v45 = v45 + v49 * -0.5;
    }

    v50 = __sincos_stret(v23);
    CGContextMoveToPoint(CurrentContext, v13 + v45 * v50.__cosval, v16 + v45 * v50.__sinval);
    CGContextAddLineToPoint(CurrentContext, v19 - v45 * v50.__cosval, v22 - v45 * v50.__sinval);
    if (v9)
    {
      if ([(AXPIPinchChainView *)self isPressed]|| [(AXPIPinchChainView *)self isSelected])
      {
        v51 = [(AXPIPinchChainView *)self appearanceDelegate];
        v52 = [v51 selectedStrokeColor];
      }

      else
      {
        v51 = [(AXPIPinchChainView *)self appearanceDelegate];
        v52 = [v51 deselectedStrokeColor];
      }

      v53 = v52;

      CGContextSetStrokeColorWithColor(CurrentContext, [v53 CGColor]);
    }

    v54 = [(AXPIPinchChainView *)self appearanceDelegate];
    [v54 strokeWidth];
    CGContextSetLineWidth(CurrentContext, v55);

    CGContextStrokePath(CurrentContext);
  }
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (AXPIFingerAppearanceDelegate)appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);

  return WeakRetained;
}

@end