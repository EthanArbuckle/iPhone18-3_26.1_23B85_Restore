@interface AXPIPinchChainView
- (AXPIFingerAppearanceDelegate)appearanceDelegate;
- (AXPIPinchChainView)initWithFrame:(CGRect)frame;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (void)drawRect:(CGRect)rect;
- (void)setEndPoint:(CGPoint)point;
- (void)setPressed:(BOOL)pressed;
- (void)setSelected:(BOOL)selected;
- (void)setStartPoint:(CGPoint)point;
@end

@implementation AXPIPinchChainView

- (AXPIPinchChainView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AXPIPinchChainView;
  v3 = [(AXPIPinchChainView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(AXPIPinchChainView *)v3 setBackgroundColor:clearColor];

    [(AXPIPinchChainView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)setStartPoint:(CGPoint)point
{
  if (self->_startPoint.x != point.x || self->_startPoint.y != point.y)
  {
    self->_startPoint = point;
    [(AXPIPinchChainView *)self setNeedsDisplay];
  }
}

- (void)setEndPoint:(CGPoint)point
{
  if (self->_endPoint.x != point.x || self->_endPoint.y != point.y)
  {
    self->_endPoint = point;
    [(AXPIPinchChainView *)self setNeedsDisplay];
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    [(AXPIPinchChainView *)self setNeedsDisplay];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(AXPIPinchChainView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(AXPIPinchChainView *)self appearanceDelegate:rect.origin.x];
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
      appearanceDelegate = [(AXPIPinchChainView *)self appearanceDelegate];
      useSystemFilters = [appearanceDelegate useSystemFilters];

      v9 = useSystemFilters ^ 1;
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
    appearanceDelegate2 = [(AXPIPinchChainView *)self appearanceDelegate];
    [appearanceDelegate2 fingerInnerRadius];
    v26 = v25;
    appearanceDelegate3 = [(AXPIPinchChainView *)self appearanceDelegate];
    [appearanceDelegate3 strokeWidth];
    v29 = v28;
    appearanceDelegate4 = [(AXPIPinchChainView *)self appearanceDelegate];
    [appearanceDelegate4 strokeOutlineWidth];
    v32 = v31;

    appearanceDelegate5 = [(AXPIPinchChainView *)self appearanceDelegate];
    LODWORD(appearanceDelegate3) = [appearanceDelegate5 showInnerCircle];

    if (appearanceDelegate3)
    {
      v34 = v26 + v29 + v32 * 0.5;
      v35 = __sincos_stret(v23);
      CGContextMoveToPoint(CurrentContext, v13 + v34 * v35.__cosval, v16 + v34 * v35.__sinval);
      CGContextAddLineToPoint(CurrentContext, v19 - v34 * v35.__cosval, v22 - v34 * v35.__sinval);
      appearanceDelegate6 = [(AXPIPinchChainView *)self appearanceDelegate];
      strokeOutlineColor = [appearanceDelegate6 strokeOutlineColor];
      CGContextSetStrokeColorWithColor(CurrentContext, [strokeOutlineColor CGColor]);

      appearanceDelegate7 = [(AXPIPinchChainView *)self appearanceDelegate];
      [appearanceDelegate7 strokeOutlineWidth];
      v40 = v39;
      appearanceDelegate8 = [(AXPIPinchChainView *)self appearanceDelegate];
      [appearanceDelegate8 strokeWidth];
      CGContextSetLineWidth(CurrentContext, v42 + v40 * 2.0);

      CGContextStrokePath(CurrentContext);
    }

    appearanceDelegate9 = [(AXPIPinchChainView *)self appearanceDelegate];
    [appearanceDelegate9 fingerInnerRadius];
    v45 = v44;

    appearanceDelegate10 = [(AXPIPinchChainView *)self appearanceDelegate];
    showFingerOutlines = [appearanceDelegate10 showFingerOutlines];

    if ((showFingerOutlines & 1) == 0)
    {
      appearanceDelegate11 = [(AXPIPinchChainView *)self appearanceDelegate];
      [appearanceDelegate11 strokeWidth];
      v45 = v45 + v49 * -0.5;
    }

    v50 = __sincos_stret(v23);
    CGContextMoveToPoint(CurrentContext, v13 + v45 * v50.__cosval, v16 + v45 * v50.__sinval);
    CGContextAddLineToPoint(CurrentContext, v19 - v45 * v50.__cosval, v22 - v45 * v50.__sinval);
    if (v9)
    {
      if ([(AXPIPinchChainView *)self isPressed]|| [(AXPIPinchChainView *)self isSelected])
      {
        appearanceDelegate12 = [(AXPIPinchChainView *)self appearanceDelegate];
        selectedStrokeColor = [appearanceDelegate12 selectedStrokeColor];
      }

      else
      {
        appearanceDelegate12 = [(AXPIPinchChainView *)self appearanceDelegate];
        selectedStrokeColor = [appearanceDelegate12 deselectedStrokeColor];
      }

      v53 = selectedStrokeColor;

      CGContextSetStrokeColorWithColor(CurrentContext, [v53 CGColor]);
    }

    appearanceDelegate13 = [(AXPIPinchChainView *)self appearanceDelegate];
    [appearanceDelegate13 strokeWidth];
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