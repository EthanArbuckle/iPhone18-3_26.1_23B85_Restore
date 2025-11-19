@interface SCATGestureArrowView
+ (void)getCurveArcCenter:(CGPoint *)a3 startAngle:(double *)a4 endAngle:(double *)a5 updatedFingerAngle:(double *)a6 updatedFingerCenter:(CGPoint *)a7 withFingerAngle:(double)a8 fingerCenter:(CGPoint)a9 curveRadius:(double)a10 distanceToMove:(double)a11 onLeft:(BOOL)a12;
- (CGPath)_arrowPath;
- (CGPath)_arrowPathInBoundingBoxAtOrigin;
- (CGPath)_newCurvedArrowPathWithIntervals:(unint64_t)a3;
- (CGPath)_newCurvedGrayArrowOutlinePath;
- (CGPath)_newDefaultArrowPath;
- (CGPath)_newGrayArrowOutlinePath;
- (CGPath)_newStraightArrowPathWithIntervals:(unint64_t)a3;
- (CGPath)_newStraightGrayArrowOutlinePath;
- (CGPoint)tailPoint;
- (CGRect)_frameNeeded;
- (CGRect)scatFrame;
- (SCATGestureArrowView)initWithFrame:(CGRect)a3;
- (SCATGestureDrawingView)gestureDrawingView;
- (double)_distanceForCurveWithRadius:(double)a3 onLeft:(BOOL)a4;
- (double)_distanceForPreview;
- (id)_fingerCircleImage;
- (void)_addArrowHeadToPath:(CGPath *)a3 baseLeftPoint:(CGPoint)a4 baseRightPoint:(CGPoint)a5 tipPoint:(CGPoint)a6;
- (void)_addCircleWithRadius:(double)a3 inContext:(CGContext *)a4;
- (void)_addGrayArrowHeadLineToPath:(CGPath *)a3 bottomPoint:(CGPoint)a4 tipPoint:(CGPoint)a5 sideAngle:(double)a6 sideLength:(double)a7 outlineThickness:(double)a8 innerThickness:(double)a9;
- (void)_addGrayArrowHeadToPath:(CGPath *)a3 tipAngle:(double)a4 tipPoint:(CGPoint)a5;
- (void)_addGrayFingerIfNecessaryToPath:(CGPath *)a3;
- (void)_clearCircleWithRadius:(double)a3 center:(CGPoint)a4 inContext:(CGContext *)a5;
- (void)_clearCircleWithRadius:(double)a3 inContext:(CGContext *)a4;
- (void)_drawCurvedLineInIntervals:(unint64_t)a3 spacingBetweenIntervals:(double)a4 drawingBlock:(id)a5;
- (void)_drawFingerAtArrowHeadInContext:(CGContext *)a3;
- (void)_drawGrayArrowInContext:(CGContext *)a3;
- (void)_drawLineOfCirclesInContext:(CGContext *)a3;
- (void)_drawStraightLineInIntervals:(unint64_t)a3 spacingBetweenIntervals:(double)a4 drawingBlock:(id)a5;
- (void)_fillArrowPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)_getCurveRadius:(double *)a3 onLeft:(BOOL *)a4;
- (void)_propertyDidChange;
- (void)_uncacheArrowPaths;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setCurvature:(double)a3;
- (void)setDistance:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setPressed:(BOOL)a3;
- (void)setStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4;
- (void)setStyle:(unint64_t)a3;
- (void)setTailAngle:(double)a3;
- (void)setTailPoint:(CGPoint)a3;
@end

@implementation SCATGestureArrowView

+ (void)getCurveArcCenter:(CGPoint *)a3 startAngle:(double *)a4 endAngle:(double *)a5 updatedFingerAngle:(double *)a6 updatedFingerCenter:(CGPoint *)a7 withFingerAngle:(double)a8 fingerCenter:(CGPoint)a9 curveRadius:(double)a10 distanceToMove:(double)a11 onLeft:(BOOL)a12
{
  y = a9.y;
  x = a9.x;
  v20 = a8 + -1.57079633;
  v21 = a8 + 1.57079633;
  if (a12)
  {
    v22 = a8 + -1.57079633;
  }

  else
  {
    v22 = a8 + 1.57079633;
  }

  if (a12)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  v24 = a11 / a10;
  v25 = -(a11 / a10);
  if (a12)
  {
    v26 = -1.57079633;
  }

  else
  {
    v26 = 1.57079633;
  }

  if (a12)
  {
    v27 = v25;
  }

  else
  {
    v27 = v24;
  }

  v28 = __sincos_stret(v22);
  v29 = x + a10 * v28.__cosval;
  v30 = y + a10 * v28.__sinval;
  v31 = v23 + v27;
  v32 = __sincos_stret(v23 + v27);
  if (a3)
  {
    a3->x = v29;
    a3->y = v30;
  }

  if (a4)
  {
    *a4 = v23;
  }

  if (a5)
  {
    *a5 = v31;
  }

  if (a6)
  {
    *a6 = v26 + v31;
  }

  if (a7)
  {
    a7->x = v29 + a10 * v32.__cosval;
    a7->y = v30 + a10 * v32.__sinval;
  }
}

- (SCATGestureArrowView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SCATGestureArrowView;
  v3 = [(SCATGestureArrowView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
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

- (void)setTailPoint:(CGPoint)a3
{
  if (self->_tailPoint.x != a3.x || self->_tailPoint.y != a3.y)
  {
    self->_tailPoint = a3;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setTailAngle:(double)a3
{
  if (self->_tailAngle != a3)
  {
    self->_tailAngle = a3;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setCurvature:(double)a3
{
  if (self->_curvature != a3)
  {
    self->_curvature = a3;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setDistance:(double)a3
{
  if (self->_distance != a3)
  {
    self->_distance = a3;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(SCATGestureArrowView *)self _propertyDidChange];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATGestureArrowView *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = SCATGestureArrowView;
  [(SCATGestureArrowView *)&v6 setHighlighted:v3];
  if (v5 != v3)
  {
    [(SCATGestureArrowView *)self setNeedsDisplay];
  }
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    [(SCATGestureArrowView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [(SCATGestureArrowView *)self _isGrayArrow];
  if ((v5 & 1) != 0 || (-[SCATGestureArrowView distance](self, "distance"), v7 = v6, +[SCATStyleProvider sharedStyleProvider](SCATStyleProvider, "sharedStyleProvider"), v8 = objc_claimAutoreleasedReturnValue(), [v8 arrowHeadBaseOffset], v10 = v9, v8, v7 > v10))
  {
    if (![(SCATGestureArrowView *)self style])
    {
      [(SCATGestureArrowView *)self _drawLineOfCirclesInContext:CurrentContext];
    }

    if (v5)
    {
      if ([(SCATGestureArrowView *)self style]== 6)
      {
        [(SCATGestureArrowView *)self _drawFingerAtArrowHeadInContext:CurrentContext];
      }

      [(SCATGestureArrowView *)self _drawGrayArrowInContext:CurrentContext];
    }

    else
    {
      v11 = [(SCATGestureArrowView *)self _arrowPath];

      [(SCATGestureArrowView *)self _fillArrowPath:v11 inContext:?];
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
    v7 = [(SCATGestureArrowView *)self _fingerCircleImage];
    [v7 size];
    v9 = v8 * -0.5;
    [v7 size];
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

- (void)_drawStraightLineInIntervals:(unint64_t)a3 spacingBetweenIntervals:(double)a4 drawingBlock:(id)a5
{
  v18 = a5;
  if (!a3)
  {
    _AXAssert();
  }

  [(SCATGestureArrowView *)self _distanceForPreview];
  v9 = v8;
  [(SCATGestureArrowView *)self tailPoint];
  v11 = v10;
  v13 = v12;
  [(SCATGestureArrowView *)self tailAngle];
  if (a3)
  {
    v15 = (v9 - (a3 - 1) * a4) / a3;
    v16 = __sincos_stret(v14);
    v17 = 0;
    do
    {
      v18[2](v18, v17 == 0, --a3 == 0, v11, v13, v11 + v15 * v16.__cosval, v13 + v15 * v16.__sinval);
      v11 = v11 + v15 * v16.__cosval + a4 * v16.__cosval;
      v13 = v13 + v15 * v16.__sinval + a4 * v16.__sinval;
      --v17;
    }

    while (a3);
  }
}

- (void)_getCurveRadius:(double *)a3 onLeft:(BOOL *)a4
{
  if (a3)
  {
    [(SCATGestureArrowView *)self curvature];
    *a3 = fabs(1.0 / v7);
  }

  if (a4)
  {
    [(SCATGestureArrowView *)self curvature];
    *a4 = v8 < 0.0;
  }
}

- (double)_distanceForCurveWithRadius:(double)a3 onLeft:(BOOL)a4
{
  [(SCATGestureArrowView *)self distance];
  if (result >= a3 * 3.0 * 3.14159265 * 0.5)
  {
    return a3 * 3.0 * 3.14159265 * 0.5;
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

- (void)_drawCurvedLineInIntervals:(unint64_t)a3 spacingBetweenIntervals:(double)a4 drawingBlock:(id)a5
{
  v8 = a5;
  if (!a3)
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

  if (a3)
  {
    v11 = 0;
    v18 = a4 / v23 * v10;
    v12 = v10 * ((vabdd_f64(v19, v20) - (a3 - 1) * fabs(v18)) / a3);
    do
    {
      x = v21.x;
      v14 = v23;
      v15 = __sincos_stret(v9);
      y = v21.y;
      v17 = v21.y + v14 * v15.__sinval;
      __sincos_stret(v12 + v9);
      v8[2](v8, v22, v11 == 0, --a3 == 0, x, y, v14, v9, v12 + v9, x + v14 * v15.__cosval, v17);
      v9 = v18 + v12 + v9;
      --v11;
    }

    while (a3);
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
    v4 = [(SCATGestureArrowView *)self _arrowPath];
    [(SCATGestureArrowView *)self bounds:0];
    v6 = -v5;
    [(SCATGestureArrowView *)self bounds];
    CGAffineTransformMakeTranslation(&v8, v6, -v7);
    result = CGPathCreateCopyByTransformingPath(v4, &v8);
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

- (void)_addGrayArrowHeadLineToPath:(CGPath *)a3 bottomPoint:(CGPoint)a4 tipPoint:(CGPoint)a5 sideAngle:(double)a6 sideLength:(double)a7 outlineThickness:(double)a8 innerThickness:(double)a9
{
  y = a4.y;
  v25 = a4.y;
  x = a4.x;
  v12 = a4.x;
  v14 = a9 * 0.5;
  v15 = a9 * 0.5 + a8;
  v16 = __sincos_stret(a6 + 1.57079633);
  v17 = v16.__cosval * v15;
  v23 = v16.__cosval * v15;
  v18 = v16.__sinval * v15;
  v19 = __sincos_stret(a6);
  v22 = a8;
  v27 = v19.__sinval * a8;
  v28 = v19.__cosval * a8;
  v20 = v19.__cosval * v15;
  v21 = v19.__sinval * v15;
  CGPathMoveToPoint(a3, 0, v12 - v17, y - v18);
  CGPathAddLineToPoint(a3, 0, a5.x - v17, a5.y - v18);
  CGPathAddArcToPoint(a3, 0, v20 + a5.x - v17, v21 + a5.y - v18, a5.x - v16.__cosval * v14 + v20, a5.y - v16.__sinval * v14 + v21, v22);
  CGPathAddLineToPoint(a3, 0, a5.x + v16.__cosval * v14 + v20, a5.y + v16.__sinval * v14 + v21);
  CGPathAddArcToPoint(a3, 0, v20 + a5.x + v23, v21 + a5.y + v18, a5.x + v23, a5.y + v18, v22);
  CGPathAddLineToPoint(a3, 0, x + v23, v25 + v18);
  CGPathAddArcToPoint(a3, 0, x + v23 - v28, v25 + v18 - v27, x + v16.__cosval * v14 - v28, v25 + v16.__sinval * v14 - v27, v22);
  CGPathAddLineToPoint(a3, 0, x - v16.__cosval * v14 - v28, v25 - v16.__sinval * v14 - v27);
  CGPathAddArcToPoint(a3, 0, v12 - v17 - v28, y - v18 - v27, v12 - v17, y - v18, v22);

  CGPathCloseSubpath(a3);
}

- (void)_addGrayArrowHeadToPath:(CGPath *)a3 tipAngle:(double)a4 tipPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
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
  v12 = a4 + -0.785398163;
  v20 = a4 + -0.785398163;
  v13 = a4 + 0.785398163;
  v14 = __sincos_stret(v13);
  v15 = __sincos_stret(v12);
  [v21 controlArrowOutlineThickness];
  v17 = v16;
  [v21 controlArrowThickness];
  v19 = v18;
  [(SCATGestureArrowView *)self _addGrayArrowHeadLineToPath:a3 bottomPoint:x - v11 * v14.__cosval tipPoint:y - v11 * v14.__sinval sideAngle:x sideLength:y outlineThickness:v13 innerThickness:v11, v17, v18];
  [(SCATGestureArrowView *)self _addGrayArrowHeadLineToPath:a3 bottomPoint:x - v11 * v15.__cosval tipPoint:y - v11 * v15.__sinval sideAngle:x sideLength:y outlineThickness:v20 innerThickness:v11, v17, v19];
}

- (void)_addGrayFingerIfNecessaryToPath:(CGPath *)a3
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
    CGPathMoveToPoint(a3, 0, v10, v8 * 0.5 + v11);
    [(SCATGestureArrowView *)self tailPoint];
    v13 = v12;
    [(SCATGestureArrowView *)self tailPoint];
    CGPathAddArc(a3, 0, v13, v14, v8, 0.0, 6.28318531, 0);
    CGPathCloseSubpath(a3);
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

- (void)_clearCircleWithRadius:(double)a3 inContext:(CGContext *)a4
{
  [(SCATGestureArrowView *)self tailPoint];

  [(SCATGestureArrowView *)self _clearCircleWithRadius:a4 center:a3 inContext:v7, v8];
}

- (void)_clearCircleWithRadius:(double)a3 center:(CGPoint)a4 inContext:(CGContext *)a5
{
  y = a4.y;
  x = a4.x;
  CGContextSaveGState(a5);
  CGContextSetBlendMode(a5, kCGBlendModeClear);
  CGContextAddArc(a5, x, y, a3, 0.0, 6.28318531, 0);
  CGContextFillPath(a5);

  CGContextRestoreGState(a5);
}

- (void)_addCircleWithRadius:(double)a3 inContext:(CGContext *)a4
{
  [(SCATGestureArrowView *)self tailPoint];

  [(SCATGestureArrowView *)self _addCircleWithRadius:a4 center:a3 inContext:v7, v8];
}

- (void)_drawGrayArrowInContext:(CGContext *)a3
{
  v5 = +[SCATStyleProvider sharedStyleProvider];
  CGContextAddPath(a3, [(SCATGestureArrowView *)self _arrowPath]);
  v6 = [v5 controlArrowOutlineColor];
  CGContextSetFillColorWithColor(a3, [v6 CGColor]);
  CGContextFillPath(a3);
  if ([(SCATGestureArrowView *)self style]== 3)
  {
    [v5 grayFingerInnerRadius];
    v8 = v7;
    [v5 controlArrowOutlineThickness];
    [(SCATGestureArrowView *)self _clearCircleWithRadius:a3 inContext:v8 - v9];
    CGContextBeginTransparencyLayer(a3, 0);
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
  v37[4] = a3;
  v37[5] = v13;
  v14 = objc_retainBlock(v37);
  [(SCATGestureArrowView *)self curvature];
  if (v15 == 0.0)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100095CBC;
    v34[3] = &unk_1001D5FB8;
    v36[1] = a3;
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
    v33[1] = a3;
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
    [(SCATGestureArrowView *)self _clearCircleWithRadius:a3 inContext:?];
    [v5 grayFingerInnerRadius];
    v21 = v20;
    [v5 controlArrowThickness];
    [(SCATGestureArrowView *)self _addCircleWithRadius:a3 inContext:v21 + v22 * 0.5];
    CGContextStrokePath(a3);
    [v5 grayFingerInnerRadius];
    v24 = v23;
    [v5 controlArrowOutlineThickness];
    [(SCATGestureArrowView *)self _addCircleWithRadius:a3 inContext:v24 - v25];
    v26 = [v5 grayFingerInnerFill];
    CGContextSetFillColorWithColor(a3, [v26 CGColor]);

    CGContextFillPath(a3);
    [v5 grayFingerInnerCircleOuterRadius];
    [(SCATGestureArrowView *)self _clearCircleWithRadius:a3 inContext:?];
    [v5 grayFingerInnerCircleOuterRadius];
    [(SCATGestureArrowView *)self _addCircleWithRadius:a3 inContext:?];
    CGContextSetFillColorWithColor(a3, [v6 CGColor]);
    CGContextFillPath(a3);
    [v5 grayFingerInnerCircleInnerRadius];
    [(SCATGestureArrowView *)self _addCircleWithRadius:a3 inContext:?];
    if ([(SCATGestureArrowView *)self isPressed])
    {
      [v5 controlArrowHighlightedColor];
    }

    else
    {
      [v5 controlArrowColor];
    }
    v27 = ;
    CGContextSetFillColorWithColor(a3, [v27 CGColor]);
    CGContextFillPath(a3);
    CGContextEndTransparencyLayer(a3);
  }

  else if ([(SCATGestureArrowView *)self shouldClearFingerCircle]|| [(SCATGestureArrowView *)self style]== 6)
  {
    [v5 grayFingerOuterRadius];
    [(SCATGestureArrowView *)self _clearCircleWithRadius:a3 inContext:?];
  }
}

- (void)_drawFingerAtArrowHeadInContext:(CGContext *)a3
{
  v31 = +[SCATStyleProvider sharedStyleProvider];
  v5 = [v31 controlArrowOutlineColor];
  v6 = [v5 CGColor];

  v7 = [v31 controlArrowColor];
  v8 = [v7 CGColor];

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
  [(SCATGestureArrowView *)self _addCircleWithRadius:a3 center:v22 + v23 * 0.5 inContext:v14, v20];
  CGContextSetStrokeColorWithColor(a3, v6);
  [v31 controlArrowOutlineThickness];
  v25 = v24;
  [v31 controlArrowThickness];
  CGContextSetLineWidth(a3, v26 + v25 * 2.0);
  CGContextStrokePath(a3);
  [v31 grayFingerInnerRadius];
  v28 = v27;
  [v31 controlArrowThickness];
  [(SCATGestureArrowView *)self _addCircleWithRadius:a3 center:v28 + v29 * 0.5 inContext:v14, v20];
  CGContextSetStrokeColorWithColor(a3, v8);
  [v31 controlArrowThickness];
  CGContextSetLineWidth(a3, v30);
  CGContextStrokePath(a3);
  [v31 grayFingerInnerCircleOuterRadius];
  [SCATGestureArrowView _addCircleWithRadius:"_addCircleWithRadius:center:inContext:" center:a3 inContext:?];
  CGContextSetFillColorWithColor(a3, v6);
  CGContextFillPath(a3);
  [v31 grayFingerInnerCircleInnerRadius];
  [SCATGestureArrowView _addCircleWithRadius:"_addCircleWithRadius:center:inContext:" center:a3 inContext:?];
  CGContextSetFillColorWithColor(a3, v8);
  CGContextFillPath(a3);
}

- (void)_fillArrowPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  if ([(SCATGestureArrowView *)self _isGrayArrow])
  {
    _AXAssert();
  }

  v9 = +[SCATStyleProvider sharedStyleProvider];
  CGContextAddPath(a4, a3);
  v6 = [v9 previewColor];
  CGContextSetFillColorWithColor(a4, [v6 CGColor]);
  CGContextFillPath(a4);
  CGContextAddPath(a4, a3);
  [v9 previewOutlineThickness];
  CGContextSetLineWidth(a4, v7);
  v8 = [v9 previewOutlineColor];
  CGContextSetStrokeColorWithColor(a4, [v8 CGColor]);
  CGContextStrokePath(a4);
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

- (void)_addArrowHeadToPath:(CGPath *)a3 baseLeftPoint:(CGPoint)a4 baseRightPoint:(CGPoint)a5 tipPoint:(CGPoint)a6
{
  v6 = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v10 = a4.y;
  v11 = a4.x;
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
  CGPathAddLineToPoint(a3, 0, v11 + v16 * v21.__cosval, v10 + v16 * v21.__sinval);
  CGPathAddLineToPoint(a3, 0, x, y);
  v22 = __sincos_stret(v20 + v19);
  CGPathAddLineToPoint(a3, 0, v9 + v16 * v22.__cosval, v8 + v16 * v22.__sinval);
  CGPathAddLineToPoint(a3, 0, v9, v8);
}

- (CGPath)_newStraightArrowPathWithIntervals:(unint64_t)a3
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
  v18 = self;
  v14 = v7;
  [(SCATGestureArrowView *)self _drawStraightLineInIntervals:a3 spacingBetweenIntervals:v16 drawingBlock:5.0];

  return Mutable;
}

- (CGPath)_newCurvedArrowPathWithIntervals:(unint64_t)a3
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
  v13 = self;
  v9 = v5;
  [(SCATGestureArrowView *)self _drawCurvedLineInIntervals:a3 spacingBetweenIntervals:v11 drawingBlock:5.0];

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

- (void)_drawLineOfCirclesInContext:(CGContext *)a3
{
  v4 = [(SCATGestureArrowView *)self _fingerCircleImage];
  [v4 size];
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
    v18 = v4;
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