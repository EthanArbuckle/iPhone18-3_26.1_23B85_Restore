@interface SCATGestureArrowView
+ (void)getCurveArcCenter:(CGPoint *)center startAngle:(double *)angle endAngle:(double *)endAngle updatedFingerAngle:(double *)fingerAngle updatedFingerCenter:(CGPoint *)fingerCenter withFingerAngle:(double)withFingerAngle fingerCenter:(CGPoint)a9 curveRadius:(double)self0 distanceToMove:(double)self1 onLeft:(BOOL)self2;
- (CGPath)_arrowPath;
- (CGPath)_arrowPathInBoundingBoxAtOrigin;
- (CGPath)_newCurvedArrowPathWithIntervals:(unint64_t)intervals;
- (CGPath)_newCurvedGrayArrowOutlinePath;
- (CGPath)_newDefaultArrowPath;
- (CGPath)_newGrayArrowOutlinePath;
- (CGPath)_newStraightArrowPathWithIntervals:(unint64_t)intervals;
- (CGPath)_newStraightGrayArrowOutlinePath;
- (CGPoint)tailPoint;
- (CGRect)_frameNeeded;
- (CGRect)scatFrame;
- (SCATGestureArrowView)initWithFrame:(CGRect)frame;
- (SCATGestureDrawingView)gestureDrawingView;
- (double)_distanceForCurveWithRadius:(double)radius onLeft:(BOOL)left;
- (double)_distanceForPreview;
- (id)_fingerCircleImage;
- (void)_addArrowHeadToPath:(CGPath *)path baseLeftPoint:(CGPoint)point baseRightPoint:(CGPoint)rightPoint tipPoint:(CGPoint)tipPoint;
- (void)_addCircleWithRadius:(double)radius inContext:(CGContext *)context;
- (void)_addGrayArrowHeadLineToPath:(CGPath *)path bottomPoint:(CGPoint)point tipPoint:(CGPoint)tipPoint sideAngle:(double)angle sideLength:(double)length outlineThickness:(double)thickness innerThickness:(double)innerThickness;
- (void)_addGrayArrowHeadToPath:(CGPath *)path tipAngle:(double)angle tipPoint:(CGPoint)point;
- (void)_addGrayFingerIfNecessaryToPath:(CGPath *)path;
- (void)_clearCircleWithRadius:(double)radius center:(CGPoint)center inContext:(CGContext *)context;
- (void)_clearCircleWithRadius:(double)radius inContext:(CGContext *)context;
- (void)_drawCurvedLineInIntervals:(unint64_t)intervals spacingBetweenIntervals:(double)betweenIntervals drawingBlock:(id)block;
- (void)_drawFingerAtArrowHeadInContext:(CGContext *)context;
- (void)_drawGrayArrowInContext:(CGContext *)context;
- (void)_drawLineOfCirclesInContext:(CGContext *)context;
- (void)_drawStraightLineInIntervals:(unint64_t)intervals spacingBetweenIntervals:(double)betweenIntervals drawingBlock:(id)block;
- (void)_fillArrowPath:(CGPath *)path inContext:(CGContext *)context;
- (void)_getCurveRadius:(double *)radius onLeft:(BOOL *)left;
- (void)_propertyDidChange;
- (void)_uncacheArrowPaths;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setCurvature:(double)curvature;
- (void)setDistance:(double)distance;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPressed:(BOOL)pressed;
- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (void)setStyle:(unint64_t)style;
- (void)setTailAngle:(double)angle;
- (void)setTailPoint:(CGPoint)point;
@end

@implementation SCATGestureArrowView

+ (void)getCurveArcCenter:(CGPoint *)center startAngle:(double *)angle endAngle:(double *)endAngle updatedFingerAngle:(double *)fingerAngle updatedFingerCenter:(CGPoint *)fingerCenter withFingerAngle:(double)withFingerAngle fingerCenter:(CGPoint)a9 curveRadius:(double)self0 distanceToMove:(double)self1 onLeft:(BOOL)self2
{
  y = a9.y;
  x = a9.x;
  v20 = withFingerAngle + -1.57079633;
  v21 = withFingerAngle + 1.57079633;
  if (left)
  {
    v22 = withFingerAngle + -1.57079633;
  }

  else
  {
    v22 = withFingerAngle + 1.57079633;
  }

  if (left)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  v24 = move / radius;
  v25 = -(move / radius);
  if (left)
  {
    v26 = -1.57079633;
  }

  else
  {
    v26 = 1.57079633;
  }

  if (left)
  {
    v27 = v25;
  }

  else
  {
    v27 = v24;
  }

  v28 = __sincos_stret(v22);
  v29 = x + radius * v28.__cosval;
  v30 = y + radius * v28.__sinval;
  v31 = v23 + v27;
  v32 = __sincos_stret(v23 + v27);
  if (center)
  {
    center->x = v29;
    center->y = v30;
  }

  if (angle)
  {
    *angle = v23;
  }

  if (endAngle)
  {
    *endAngle = v31;
  }

  if (fingerAngle)
  {
    *fingerAngle = v26 + v31;
  }

  if (fingerCenter)
  {
    fingerCenter->x = v29 + radius * v32.__cosval;
    fingerCenter->y = v30 + radius * v32.__sinval;
  }
}

- (SCATGestureArrowView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SCATGestureArrowView;
  v3 = [(SCATGestureArrowView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SCATGestureArrowView *)v3 setOpaque:0];
    [(SCATGestureArrowView *)v4 setContentMode:3];
    [(SCATGestureArrowView *)v4 setStyle:0];
  }

  return v4;
}

- (void)dealloc
{
  arrowPath = self->_arrowPath;
  if (arrowPath)
  {
    CFRelease(arrowPath);
  }

  arrowPathInBoundingBoxAtOrigin = self->_arrowPathInBoundingBoxAtOrigin;
  if (arrowPathInBoundingBoxAtOrigin)
  {
    CFRelease(arrowPathInBoundingBoxAtOrigin);
  }

  v5.receiver = self;
  v5.super_class = SCATGestureArrowView;
  [(SCATGestureArrowView *)&v5 dealloc];
}

- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v6 = point.y;
  v7 = point.x;
  [(SCATGestureArrowView *)self setTailPoint:?];
  v9 = y - v6;
  v10 = x - v7;
  [(SCATGestureArrowView *)self setTailAngle:atan2(v9, v10)];
  [(SCATGestureArrowView *)self setCurvature:0.0];
  v11 = sqrt(v10 * v10 + v9 * v9);

  [(SCATGestureArrowView *)self setDistance:v11];
}

- (CGPoint)tailPoint
{
  x = self->_tailPoint.x;
  y = self->_tailPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setTailPoint:(CGPoint)point
{
  if (self->_tailPoint.x != point.x || self->_tailPoint.y != point.y)
  {
    self->_tailPoint = point;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setTailAngle:(double)angle
{
  if (self->_tailAngle != angle)
  {
    self->_tailAngle = angle;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setCurvature:(double)curvature
{
  if (self->_curvature != curvature)
  {
    self->_curvature = curvature;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setDistance:(double)distance
{
  if (self->_distance != distance)
  {
    self->_distance = distance;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(SCATGestureArrowView *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = SCATGestureArrowView;
  [(SCATGestureArrowView *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(SCATGestureArrowView *)self setNeedsDisplay];
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    [(SCATGestureArrowView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  _isGrayArrow = [(SCATGestureArrowView *)self _isGrayArrow];
  if ((_isGrayArrow & 1) != 0 || (-[SCATGestureArrowView distance](self, "distance"), v7 = v6, +[SCATStyleProvider sharedStyleProvider](SCATStyleProvider, "sharedStyleProvider"), v8 = objc_claimAutoreleasedReturnValue(), [v8 arrowHeadBaseOffset], v10 = v9, v8, v7 > v10))
  {
    if (![(SCATGestureArrowView *)self style])
    {
      [(SCATGestureArrowView *)self _drawLineOfCirclesInContext:CurrentContext];
    }

    if (_isGrayArrow)
    {
      if ([(SCATGestureArrowView *)self style]== 6)
      {
        [(SCATGestureArrowView *)self _drawFingerAtArrowHeadInContext:CurrentContext];
      }

      [(SCATGestureArrowView *)self _drawGrayArrowInContext:CurrentContext];
    }

    else
    {
      _arrowPath = [(SCATGestureArrowView *)self _arrowPath];

      [(SCATGestureArrowView *)self _fillArrowPath:_arrowPath inContext:?];
    }
  }
}

- (CGRect)_frameNeeded
{
  BoundingBox = CGPathGetBoundingBox([(SCATGestureArrowView *)self _arrowPath]);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  if ([(SCATGestureArrowView *)self style]&& [(SCATGestureArrowView *)self style]!= 3)
  {
    if ([(SCATGestureArrowView *)self style]== 6)
    {
      v16 = +[SCATStyleProvider sharedStyleProvider];
      [v16 grayFingerOuterRadius];
      v18 = v17;

      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v23 = CGRectInset(v22, v18 * -1.7, v18 * -1.7);
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
    }
  }

  else
  {
    _fingerCircleImage = [(SCATGestureArrowView *)self _fingerCircleImage];
    [_fingerCircleImage size];
    v9 = v8 * -0.5;
    [_fingerCircleImage size];
    v11 = v10 * -0.5;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectInset(v20, v9, v11);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_propertyDidChange
{
  [(SCATGestureArrowView *)self _uncacheArrowPaths];
  [(SCATGestureArrowView *)self _frameNeeded];
  v5 = CGRectIntegral(v4);
  [(SCATGestureArrowView *)self setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
  [(SCATGestureArrowView *)self frame];
  [(SCATGestureArrowView *)self setBounds:?];

  [(SCATGestureArrowView *)self setNeedsDisplay];
}

- (void)_drawStraightLineInIntervals:(unint64_t)intervals spacingBetweenIntervals:(double)betweenIntervals drawingBlock:(id)block
{
  blockCopy = block;
  if (!intervals)
  {
    _AXAssert();
  }

  [(SCATGestureArrowView *)self _distanceForPreview];
  v9 = v8;
  [(SCATGestureArrowView *)self tailPoint];
  v11 = v10;
  v13 = v12;
  [(SCATGestureArrowView *)self tailAngle];
  if (intervals)
  {
    v15 = (v9 - (intervals - 1) * betweenIntervals) / intervals;
    v16 = __sincos_stret(v14);
    v17 = 0;
    do
    {
      blockCopy[2](blockCopy, v17 == 0, --intervals == 0, v11, v13, v11 + v15 * v16.__cosval, v13 + v15 * v16.__sinval);
      v11 = v11 + v15 * v16.__cosval + betweenIntervals * v16.__cosval;
      v13 = v13 + v15 * v16.__sinval + betweenIntervals * v16.__sinval;
      --v17;
    }

    while (intervals);
  }
}

- (void)_getCurveRadius:(double *)radius onLeft:(BOOL *)left
{
  if (radius)
  {
    [(SCATGestureArrowView *)self curvature];
    *radius = fabs(1.0 / v7);
  }

  if (left)
  {
    [(SCATGestureArrowView *)self curvature];
    *left = v8 < 0.0;
  }
}

- (double)_distanceForCurveWithRadius:(double)radius onLeft:(BOOL)left
{
  [(SCATGestureArrowView *)self distance];
  if (result >= radius * 3.0 * 3.14159265 * 0.5)
  {
    return radius * 3.0 * 3.14159265 * 0.5;
  }

  return result;
}

- (double)_distanceForPreview
{
  [(SCATGestureArrowView *)self curvature];
  if (v3 == 0.0)
  {
    [(SCATGestureArrowView *)self distance];
    v5 = v4;
    if ([(SCATGestureArrowView *)self style]== 6)
    {
      v6 = +[SCATStyleProvider sharedStyleProvider];
      [v6 grayFingerOuterRadius];
      v5 = v5 - round(v7 * 0.7);
    }
  }

  else
  {
    if ([(SCATGestureArrowView *)self style]== 6)
    {
      _AXAssert();
    }

    v11 = 0.0;
    v10 = 0;
    [(SCATGestureArrowView *)self _getCurveRadius:&v11 onLeft:&v10];
    [(SCATGestureArrowView *)self _distanceForCurveWithRadius:v10 onLeft:v11];
    return v8;
  }

  return v5;
}

- (void)_drawCurvedLineInIntervals:(unint64_t)intervals spacingBetweenIntervals:(double)betweenIntervals drawingBlock:(id)block
{
  blockCopy = block;
  if (!intervals)
  {
    _AXAssert();
  }

  v23 = 0.0;
  v22 = 0;
  [(SCATGestureArrowView *)self _getCurveRadius:&v23 onLeft:&v22];
  [(SCATGestureArrowView *)self _distanceForCurveWithRadius:v22 onLeft:v23];
  [(SCATGestureArrowView *)self tailPoint];
  [(SCATGestureArrowView *)self tailAngle];
  v21 = CGPointZero;
  v19 = 0.0;
  v20 = 0.0;
  [SCATGestureArrowView getCurveArcCenter:"getCurveArcCenter:startAngle:endAngle:updatedFingerAngle:updatedFingerCenter:withFingerAngle:fingerCenter:curveRadius:distanceToMove:onLeft:" startAngle:&v21 endAngle:&v20 updatedFingerAngle:&v19 updatedFingerCenter:0 withFingerAngle:0 fingerCenter:v22 curveRadius:? distanceToMove:? onLeft:?];
  v9 = v20;
  v10 = -1.0;
  if (v19 - v20 > 0.0)
  {
    v10 = 1.0;
  }

  if (intervals)
  {
    v11 = 0;
    v18 = betweenIntervals / v23 * v10;
    v12 = v10 * ((vabdd_f64(v19, v20) - (intervals - 1) * fabs(v18)) / intervals);
    do
    {
      x = v21.x;
      v14 = v23;
      v15 = __sincos_stret(v9);
      y = v21.y;
      v17 = v21.y + v14 * v15.__sinval;
      __sincos_stret(v12 + v9);
      blockCopy[2](blockCopy, v22, v11 == 0, --intervals == 0, x, y, v14, v9, v12 + v9, x + v14 * v15.__cosval, v17);
      v9 = v18 + v12 + v9;
      --v11;
    }

    while (intervals);
  }
}

- (void)_uncacheArrowPaths
{
  arrowPath = self->_arrowPath;
  if (arrowPath)
  {
    CFRelease(arrowPath);
    self->_arrowPath = 0;
  }

  arrowPathInBoundingBoxAtOrigin = self->_arrowPathInBoundingBoxAtOrigin;
  if (arrowPathInBoundingBoxAtOrigin)
  {
    CFRelease(arrowPathInBoundingBoxAtOrigin);
    self->_arrowPathInBoundingBoxAtOrigin = 0;
  }
}

- (CGPath)_arrowPathInBoundingBoxAtOrigin
{
  result = self->_arrowPathInBoundingBoxAtOrigin;
  if (!result)
  {
    _arrowPath = [(SCATGestureArrowView *)self _arrowPath];
    [(SCATGestureArrowView *)self bounds:0];
    v6 = -v5;
    [(SCATGestureArrowView *)self bounds];
    CGAffineTransformMakeTranslation(&v8, v6, -v7);
    result = CGPathCreateCopyByTransformingPath(_arrowPath, &v8);
    self->_arrowPathInBoundingBoxAtOrigin = result;
  }

  return result;
}

- (CGPath)_arrowPath
{
  result = self->_arrowPath;
  if (!result)
  {
    if ([(SCATGestureArrowView *)self _isGrayArrow])
    {
      result = [(SCATGestureArrowView *)self _newGrayArrowOutlinePath];
    }

    else
    {
      result = [(SCATGestureArrowView *)self _newDefaultArrowPath];
    }

    self->_arrowPath = result;
  }

  return result;
}

- (void)_addGrayArrowHeadLineToPath:(CGPath *)path bottomPoint:(CGPoint)point tipPoint:(CGPoint)tipPoint sideAngle:(double)angle sideLength:(double)length outlineThickness:(double)thickness innerThickness:(double)innerThickness
{
  y = point.y;
  v25 = point.y;
  x = point.x;
  v12 = point.x;
  v14 = innerThickness * 0.5;
  v15 = innerThickness * 0.5 + thickness;
  v16 = __sincos_stret(angle + 1.57079633);
  v17 = v16.__cosval * v15;
  v23 = v16.__cosval * v15;
  v18 = v16.__sinval * v15;
  v19 = __sincos_stret(angle);
  thicknessCopy = thickness;
  v27 = v19.__sinval * thickness;
  v28 = v19.__cosval * thickness;
  v20 = v19.__cosval * v15;
  v21 = v19.__sinval * v15;
  CGPathMoveToPoint(path, 0, v12 - v17, y - v18);
  CGPathAddLineToPoint(path, 0, tipPoint.x - v17, tipPoint.y - v18);
  CGPathAddArcToPoint(path, 0, v20 + tipPoint.x - v17, v21 + tipPoint.y - v18, tipPoint.x - v16.__cosval * v14 + v20, tipPoint.y - v16.__sinval * v14 + v21, thicknessCopy);
  CGPathAddLineToPoint(path, 0, tipPoint.x + v16.__cosval * v14 + v20, tipPoint.y + v16.__sinval * v14 + v21);
  CGPathAddArcToPoint(path, 0, v20 + tipPoint.x + v23, v21 + tipPoint.y + v18, tipPoint.x + v23, tipPoint.y + v18, thicknessCopy);
  CGPathAddLineToPoint(path, 0, x + v23, v25 + v18);
  CGPathAddArcToPoint(path, 0, x + v23 - v28, v25 + v18 - v27, x + v16.__cosval * v14 - v28, v25 + v16.__sinval * v14 - v27, thicknessCopy);
  CGPathAddLineToPoint(path, 0, x - v16.__cosval * v14 - v28, v25 - v16.__sinval * v14 - v27);
  CGPathAddArcToPoint(path, 0, v12 - v17 - v28, y - v18 - v27, v12 - v17, y - v18, thicknessCopy);

  CGPathCloseSubpath(path);
}

- (void)_addGrayArrowHeadToPath:(CGPath *)path tipAngle:(double)angle tipPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v21 = +[SCATStyleProvider sharedStyleProvider];
  if ([(SCATGestureArrowView *)self style]== 5)
  {
    [v21 controlArrowHeadSmallSideLength];
  }

  else
  {
    [v21 controlArrowHeadLargeSideLength];
  }

  v11 = v10;
  v12 = angle + -0.785398163;
  v20 = angle + -0.785398163;
  v13 = angle + 0.785398163;
  v14 = __sincos_stret(v13);
  v15 = __sincos_stret(v12);
  [v21 controlArrowOutlineThickness];
  v17 = v16;
  [v21 controlArrowThickness];
  v19 = v18;
  [(SCATGestureArrowView *)self _addGrayArrowHeadLineToPath:path bottomPoint:x - v11 * v14.__cosval tipPoint:y - v11 * v14.__sinval sideAngle:x sideLength:y outlineThickness:v13 innerThickness:v11, v17, v18];
  [(SCATGestureArrowView *)self _addGrayArrowHeadLineToPath:path bottomPoint:x - v11 * v15.__cosval tipPoint:y - v11 * v15.__sinval sideAngle:x sideLength:y outlineThickness:v20 innerThickness:v11, v17, v19];
}

- (void)_addGrayFingerIfNecessaryToPath:(CGPath *)path
{
  if ([(SCATGestureArrowView *)self style]== 3)
  {
    v15 = +[SCATStyleProvider sharedStyleProvider];
    [v15 grayFingerOuterRadius];
    v6 = v5;
    [v15 controlArrowOutlineThickness];
    v8 = v6 + v7;
    [(SCATGestureArrowView *)self tailPoint];
    v10 = v9 + v8 * 0.5;
    [(SCATGestureArrowView *)self tailPoint];
    CGPathMoveToPoint(path, 0, v10, v8 * 0.5 + v11);
    [(SCATGestureArrowView *)self tailPoint];
    v13 = v12;
    [(SCATGestureArrowView *)self tailPoint];
    CGPathAddArc(path, 0, v13, v14, v8, 0.0, 6.28318531, 0);
    CGPathCloseSubpath(path);
  }
}

- (CGPath)_newStraightGrayArrowOutlinePath
{
  Mutable = CGPathCreateMutable();
  v4 = +[SCATStyleProvider sharedStyleProvider];
  [v4 controlArrowOutlineThickness];
  v6 = v5;
  [v4 controlArrowThickness];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009507C;
  v9[3] = &unk_1001D5F48;
  v9[5] = v7;
  v9[6] = v6;
  v9[4] = self;
  v9[7] = Mutable;
  [(SCATGestureArrowView *)self _drawStraightLineInIntervals:1 spacingBetweenIntervals:v9 drawingBlock:0.0];
  [(SCATGestureArrowView *)self _addGrayFingerIfNecessaryToPath:Mutable];

  return Mutable;
}

- (CGPath)_newCurvedGrayArrowOutlinePath
{
  Mutable = CGPathCreateMutable();
  v4 = +[SCATStyleProvider sharedStyleProvider];
  [v4 controlArrowOutlineThickness];
  v6 = v5;
  [v4 controlArrowThickness];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100095354;
  v9[3] = &unk_1001D5F70;
  v9[5] = v7;
  v9[6] = v6;
  v9[7] = Mutable;
  v9[4] = self;
  [(SCATGestureArrowView *)self _drawCurvedLineInIntervals:1 spacingBetweenIntervals:v9 drawingBlock:0.0];
  [(SCATGestureArrowView *)self _addGrayFingerIfNecessaryToPath:Mutable];

  return Mutable;
}

- (CGPath)_newGrayArrowOutlinePath
{
  [(SCATGestureArrowView *)self curvature];
  if (v3 == 0.0)
  {

    return [(SCATGestureArrowView *)self _newStraightGrayArrowOutlinePath];
  }

  else
  {

    return [(SCATGestureArrowView *)self _newCurvedGrayArrowOutlinePath];
  }
}

- (void)_clearCircleWithRadius:(double)radius inContext:(CGContext *)context
{
  [(SCATGestureArrowView *)self tailPoint];

  [(SCATGestureArrowView *)self _clearCircleWithRadius:context center:radius inContext:v7, v8];
}

- (void)_clearCircleWithRadius:(double)radius center:(CGPoint)center inContext:(CGContext *)context
{
  y = center.y;
  x = center.x;
  CGContextSaveGState(context);
  CGContextSetBlendMode(context, kCGBlendModeClear);
  CGContextAddArc(context, x, y, radius, 0.0, 6.28318531, 0);
  CGContextFillPath(context);

  CGContextRestoreGState(context);
}

- (void)_addCircleWithRadius:(double)radius inContext:(CGContext *)context
{
  [(SCATGestureArrowView *)self tailPoint];

  [(SCATGestureArrowView *)self _addCircleWithRadius:context center:radius inContext:v7, v8];
}

- (void)_drawGrayArrowInContext:(CGContext *)context
{
  v5 = +[SCATStyleProvider sharedStyleProvider];
  CGContextAddPath(context, [(SCATGestureArrowView *)self _arrowPath]);
  controlArrowOutlineColor = [v5 controlArrowOutlineColor];
  CGContextSetFillColorWithColor(context, [controlArrowOutlineColor CGColor]);
  CGContextFillPath(context);
  if ([(SCATGestureArrowView *)self style]== 3)
  {
    [v5 grayFingerInnerRadius];
    v8 = v7;
    [v5 controlArrowOutlineThickness];
    [(SCATGestureArrowView *)self _clearCircleWithRadius:context inContext:v8 - v9];
    CGContextBeginTransparencyLayer(context, 0);
  }

  if (([(SCATGestureArrowView *)self isHighlighted]& 1) != 0)
  {
    [v5 controlArrowHighlightedColor];
  }

  else
  {
    [v5 controlArrowColor];
  }
  v10 = ;
  [v5 controlArrowThickness];
  v12 = v11;
  if ([(SCATGestureArrowView *)self style]== 5)
  {
    [v5 controlArrowHeadSmallSideLength];
  }

  else
  {
    [v5 controlArrowHeadLargeSideLength];
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100095BFC;
  v37[3] = &unk_1001D5F90;
  v37[4] = context;
  v37[5] = v13;
  v14 = objc_retainBlock(v37);
  [(SCATGestureArrowView *)self curvature];
  if (v15 == 0.0)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100095CBC;
    v34[3] = &unk_1001D5FB8;
    v36[1] = context;
    v16 = v35;
    v35[0] = v10;
    v36[2] = v12;
    v17 = v36;
    v18 = v14;
    v35[1] = self;
    v36[0] = v18;
    [(SCATGestureArrowView *)self _drawStraightLineInIntervals:1 spacingBetweenIntervals:v34 drawingBlock:0.0];
  }

  else
  {
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100095D84;
    v31 = &unk_1001D5FE0;
    v33[1] = context;
    v16 = v32;
    v32[0] = v10;
    v33[2] = v12;
    v17 = v33;
    v19 = v14;
    v32[1] = self;
    v33[0] = v19;
    [(SCATGestureArrowView *)self _drawCurvedLineInIntervals:1 spacingBetweenIntervals:&v28 drawingBlock:0.0];
  }

  if ([(SCATGestureArrowView *)self style]== 3)
  {
    [v5 grayFingerInnerRadius];
    [(SCATGestureArrowView *)self _clearCircleWithRadius:context inContext:?];
    [v5 grayFingerInnerRadius];
    v21 = v20;
    [v5 controlArrowThickness];
    [(SCATGestureArrowView *)self _addCircleWithRadius:context inContext:v21 + v22 * 0.5];
    CGContextStrokePath(context);
    [v5 grayFingerInnerRadius];
    v24 = v23;
    [v5 controlArrowOutlineThickness];
    [(SCATGestureArrowView *)self _addCircleWithRadius:context inContext:v24 - v25];
    grayFingerInnerFill = [v5 grayFingerInnerFill];
    CGContextSetFillColorWithColor(context, [grayFingerInnerFill CGColor]);

    CGContextFillPath(context);
    [v5 grayFingerInnerCircleOuterRadius];
    [(SCATGestureArrowView *)self _clearCircleWithRadius:context inContext:?];
    [v5 grayFingerInnerCircleOuterRadius];
    [(SCATGestureArrowView *)self _addCircleWithRadius:context inContext:?];
    CGContextSetFillColorWithColor(context, [controlArrowOutlineColor CGColor]);
    CGContextFillPath(context);
    [v5 grayFingerInnerCircleInnerRadius];
    [(SCATGestureArrowView *)self _addCircleWithRadius:context inContext:?];
    if ([(SCATGestureArrowView *)self isPressed])
    {
      [v5 controlArrowHighlightedColor];
    }

    else
    {
      [v5 controlArrowColor];
    }
    v27 = ;
    CGContextSetFillColorWithColor(context, [v27 CGColor]);
    CGContextFillPath(context);
    CGContextEndTransparencyLayer(context);
  }

  else if ([(SCATGestureArrowView *)self shouldClearFingerCircle]|| [(SCATGestureArrowView *)self style]== 6)
  {
    [v5 grayFingerOuterRadius];
    [(SCATGestureArrowView *)self _clearCircleWithRadius:context inContext:?];
  }
}

- (void)_drawFingerAtArrowHeadInContext:(CGContext *)context
{
  v31 = +[SCATStyleProvider sharedStyleProvider];
  controlArrowOutlineColor = [v31 controlArrowOutlineColor];
  cGColor = [controlArrowOutlineColor CGColor];

  controlArrowColor = [v31 controlArrowColor];
  cGColor2 = [controlArrowColor CGColor];

  [(SCATGestureArrowView *)self tailPoint];
  v10 = v9;
  [(SCATGestureArrowView *)self distance];
  v12 = v11;
  [(SCATGestureArrowView *)self tailAngle];
  v14 = v10 + v12 * cos(v13);
  [(SCATGestureArrowView *)self tailPoint];
  v16 = v15;
  [(SCATGestureArrowView *)self distance];
  v18 = v17;
  [(SCATGestureArrowView *)self tailAngle];
  v20 = v16 + v18 * sin(v19);
  [v31 grayFingerInnerRadius];
  v22 = v21;
  [v31 controlArrowThickness];
  [(SCATGestureArrowView *)self _addCircleWithRadius:context center:v22 + v23 * 0.5 inContext:v14, v20];
  CGContextSetStrokeColorWithColor(context, cGColor);
  [v31 controlArrowOutlineThickness];
  v25 = v24;
  [v31 controlArrowThickness];
  CGContextSetLineWidth(context, v26 + v25 * 2.0);
  CGContextStrokePath(context);
  [v31 grayFingerInnerRadius];
  v28 = v27;
  [v31 controlArrowThickness];
  [(SCATGestureArrowView *)self _addCircleWithRadius:context center:v28 + v29 * 0.5 inContext:v14, v20];
  CGContextSetStrokeColorWithColor(context, cGColor2);
  [v31 controlArrowThickness];
  CGContextSetLineWidth(context, v30);
  CGContextStrokePath(context);
  [v31 grayFingerInnerCircleOuterRadius];
  [SCATGestureArrowView _addCircleWithRadius:"_addCircleWithRadius:center:inContext:" center:context inContext:?];
  CGContextSetFillColorWithColor(context, cGColor);
  CGContextFillPath(context);
  [v31 grayFingerInnerCircleInnerRadius];
  [SCATGestureArrowView _addCircleWithRadius:"_addCircleWithRadius:center:inContext:" center:context inContext:?];
  CGContextSetFillColorWithColor(context, cGColor2);
  CGContextFillPath(context);
}

- (void)_fillArrowPath:(CGPath *)path inContext:(CGContext *)context
{
  if ([(SCATGestureArrowView *)self _isGrayArrow])
  {
    _AXAssert();
  }

  v9 = +[SCATStyleProvider sharedStyleProvider];
  CGContextAddPath(context, path);
  previewColor = [v9 previewColor];
  CGContextSetFillColorWithColor(context, [previewColor CGColor]);
  CGContextFillPath(context);
  CGContextAddPath(context, path);
  [v9 previewOutlineThickness];
  CGContextSetLineWidth(context, v7);
  previewOutlineColor = [v9 previewOutlineColor];
  CGContextSetStrokeColorWithColor(context, [previewOutlineColor CGColor]);
  CGContextStrokePath(context);
}

- (CGPath)_newDefaultArrowPath
{
  if ([(SCATGestureArrowView *)self style]&& [(SCATGestureArrowView *)self style]!= 1)
  {
    v5 = 1;
  }

  else
  {
    [(SCATGestureArrowView *)self _distanceForPreview];
    v4 = vcvtmd_u64_f64((v3 + 5.0) / 20.0);
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  [(SCATGestureArrowView *)self curvature];
  if (v6 == 0.0)
  {

    return [(SCATGestureArrowView *)self _newStraightArrowPathWithIntervals:v5];
  }

  else
  {

    return [(SCATGestureArrowView *)self _newCurvedArrowPathWithIntervals:v5];
  }
}

- (void)_addArrowHeadToPath:(CGPath *)path baseLeftPoint:(CGPoint)point baseRightPoint:(CGPoint)rightPoint tipPoint:(CGPoint)tipPoint
{
  v6 = tipPoint.y;
  x = tipPoint.x;
  v8 = rightPoint.y;
  v9 = rightPoint.x;
  v10 = point.y;
  v11 = point.x;
  if ([(SCATGestureArrowView *)self _isGrayArrow])
  {
    _AXAssert();
  }

  v24 = +[SCATStyleProvider sharedStyleProvider];
  [v24 arrowHeadBaseAngle];
  v14 = v13;
  [v24 arrowHeadBaseRadius];
  v16 = v15;
  AX_CGPointGetMidpointToPoint();
  y = v6;
  v19 = atan2(v6 - v17, x - v18);
  v20 = 3.14159265 - v14;
  v21 = __sincos_stret(v19 - v20);
  CGPathAddLineToPoint(path, 0, v11 + v16 * v21.__cosval, v10 + v16 * v21.__sinval);
  CGPathAddLineToPoint(path, 0, x, y);
  v22 = __sincos_stret(v20 + v19);
  CGPathAddLineToPoint(path, 0, v9 + v16 * v22.__cosval, v8 + v16 * v22.__sinval);
  CGPathAddLineToPoint(path, 0, v9, v8);
}

- (CGPath)_newStraightArrowPathWithIntervals:(unint64_t)intervals
{
  if ([(SCATGestureArrowView *)self _isGrayArrow])
  {
    _AXAssert();
  }

  [(SCATGestureArrowView *)self tailAngle];
  v6 = v5;
  v7 = +[SCATStyleProvider sharedStyleProvider];
  [v7 previewLineThickness];
  v9 = v8;
  [(SCATGestureArrowView *)self tailAngle];
  v11 = v9 * 0.5;
  v12 = __sincos_stret(v10 + 1.57079633);
  Mutable = CGPathCreateMutable();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100096534;
  v16[3] = &unk_1001D6008;
  v19 = v11 * v12.__cosval;
  v20 = v11 * v12.__sinval;
  v21 = Mutable;
  v22 = v6;
  v17 = v7;
  selfCopy = self;
  v14 = v7;
  [(SCATGestureArrowView *)self _drawStraightLineInIntervals:intervals spacingBetweenIntervals:v16 drawingBlock:5.0];

  return Mutable;
}

- (CGPath)_newCurvedArrowPathWithIntervals:(unint64_t)intervals
{
  if ([(SCATGestureArrowView *)self _isGrayArrow])
  {
    _AXAssert();
  }

  v5 = +[SCATStyleProvider sharedStyleProvider];
  [v5 previewLineThickness];
  v7 = v6;
  Mutable = CGPathCreateMutable();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009679C;
  v11[3] = &unk_1001D6030;
  v14 = v7;
  v15 = Mutable;
  v12 = v5;
  selfCopy = self;
  v9 = v5;
  [(SCATGestureArrowView *)self _drawCurvedLineInIntervals:intervals spacingBetweenIntervals:v11 drawingBlock:5.0];

  return Mutable;
}

- (id)_fingerCircleImage
{
  if (qword_100218B38 != -1)
  {
    sub_10012A204();
  }

  v3 = qword_100218B30;

  return v3;
}

- (void)_drawLineOfCirclesInContext:(CGContext *)context
{
  _fingerCircleImage = [(SCATGestureArrowView *)self _fingerCircleImage];
  [_fingerCircleImage size];
  v6 = v5;
  [(SCATGestureArrowView *)self _distanceForPreview];
  v8 = v7;
  v9 = vcvtmd_u64_f64(v7 / (v6 + 5.0));
  if (v9)
  {
    if (v9 >= 5)
    {
      v10 = 5;
    }

    else
    {
      v10 = v9;
    }

    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v21[3] = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100096C18;
    v17[3] = &unk_1001D6078;
    v19 = v21;
    v18 = _fingerCircleImage;
    v20 = v10;
    v11 = objc_retainBlock(v17);
    [(SCATGestureArrowView *)self curvature];
    v12 = v8 / v10;
    if (v13 == 0.0)
    {
      v14 = v16;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100096CC8;
      v16[3] = &unk_1001D60A0;
      v16[4] = v11;
      [(SCATGestureArrowView *)self _drawStraightLineInIntervals:v10 + 1 spacingBetweenIntervals:v16 drawingBlock:v12];
    }

    else
    {
      v14 = v15;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100096CD8;
      v15[3] = &unk_1001D60C8;
      v15[4] = v11;
      [(SCATGestureArrowView *)self _drawCurvedLineInIntervals:v10 + 1 spacingBetweenIntervals:v15 drawingBlock:v12];
    }

    _Block_object_dispose(v21, 8);
  }
}

- (CGRect)scatFrame
{
  [(SCATGestureArrowView *)self bounds];

  [HNDScreen convertRect:self fromView:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (SCATGestureDrawingView)gestureDrawingView
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureDrawingView);

  return WeakRetained;
}

@end