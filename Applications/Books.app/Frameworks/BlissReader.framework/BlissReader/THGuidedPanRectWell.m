@interface THGuidedPanRectWell
- (CGPoint)focalPoint;
- (CGPoint)maxCenterPoint;
- (CGPoint)minCenterPoint;
- (CGPoint)p_distanceFromWellRect:(CGPoint)a3;
- (CGPoint)unconsumedMovementWithMovement:(CGPoint)a3 controller:(id)a4;
- (CGRect)unscaledRect;
- (CGRect)wellRect;
- (THGuidedPanRectWell)initWithUnscaledRect:(CGRect)a3 wellRect:(CGRect)a4 target:(id)a5;
- (double)weightWithMovement:(CGPoint)a3 proposedLocation:(id)a4 controller:(id)a5;
- (id)contentAnimationToFocalPointFromLocation:(id)a3 withMovement:(CGPoint)a4 velocity:(CGPoint)a5 controller:(id)a6;
- (id)description;
- (id)p_contentLocationWithMovement:(CGPoint)a3 snapToBounds:(BOOL)a4 overscrolled:(BOOL *)a5 controller:(id)a6;
- (int)guidedPanWellRatingWithMovement:(CGPoint)a3 velocity:(CGPoint)a4 controller:(id)a5;
- (void)dealloc;
- (void)guidedPanWillBeginAtPoint:(CGPoint)a3 controller:(id)a4;
@end

@implementation THGuidedPanRectWell

- (THGuidedPanRectWell)initWithUnscaledRect:(CGRect)a3 wellRect:(CGRect)a4 target:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v19.receiver = self;
  v19.super_class = THGuidedPanRectWell;
  v14 = [(THGuidedPanRectWell *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_unscaledRect.origin.x = v13;
    v14->_unscaledRect.origin.y = v12;
    v14->_unscaledRect.size.width = v11;
    v14->_unscaledRect.size.height = v10;
    v14->_wellRect.origin.x = x;
    v14->_wellRect.origin.y = y;
    v14->_wellRect.size.width = width;
    v14->_wellRect.size.height = height;
    v14->_target = a5;
    TSDCenterOfRect();
    v15->_focalPoint.x = v16;
    v15->_focalPoint.y = v17;
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THGuidedPanRectWell;
  [(THGuidedPanRectWell *)&v3 dealloc];
}

- (void)guidedPanWillBeginAtPoint:(CGPoint)a3 controller:(id)a4
{
  [a4 viewScaleForUnscaledRect:-[THGuidedPanTarget guidedPanTargetKind](self->_target forPage:{"guidedPanTargetKind", a3.x, a3.y) == 0, self->_unscaledRect.origin.x, self->_unscaledRect.origin.y, self->_unscaledRect.size.width, self->_unscaledRect.size.height}];
  self->_wellViewScale = v6;
  MidX = CGRectGetMidX(self->_unscaledRect);
  MinY = CGRectGetMinY(self->_unscaledRect);
  v9 = [a4 interactiveCanvasController];
  [objc_msgSend(a4 "interactiveCanvasController")];
  [v9 clampedCenterPointForPoint:MidX withPlacement:MinY viewScale:{v10, v11, self->_wellViewScale}];
  self->_minCenterPoint.x = v12;
  self->_minCenterPoint.y = v13;
  v14 = CGRectGetMidX(self->_unscaledRect);
  MaxY = CGRectGetMaxY(self->_unscaledRect);
  v16 = [a4 interactiveCanvasController];
  [objc_msgSend(a4 "interactiveCanvasController")];
  [v16 clampedCenterPointForPoint:v14 withPlacement:MaxY viewScale:{v17, v18, self->_wellViewScale}];
  self->_maxCenterPoint.x = v19;
  self->_maxCenterPoint.y = v20;
  if (v20 < self->_minCenterPoint.y)
  {
    self->_maxCenterPoint = self->_minCenterPoint;
  }
}

- (CGPoint)unconsumedMovementWithMovement:(CGPoint)a3 controller:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_allowVerticalMovementInWell)
  {
    [objc_msgSend(a4 "interactiveCanvasController")];
    v9 = v8;
    v11 = v10;
    [a4 unscaledCenterPoint];
    v13 = v12 - v11;
    v14 = self->_minCenterPoint.y;
    if (v13 < v14 || (v14 = self->_maxCenterPoint.y, v15 = 0.0, v13 > v14))
    {
      v15 = v14 - v13;
    }

    [objc_msgSend(a4 "interactiveCanvasController")];
    x = v16;
    y = v17;
  }

  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

- (id)p_contentLocationWithMovement:(CGPoint)a3 snapToBounds:(BOOL)a4 overscrolled:(BOOL *)a5 controller:(id)a6
{
  if (self->_allowVerticalMovementInWell)
  {
    v9 = a4;
    [objc_msgSend(a6 "interactiveCanvasController")];
    v11 = v10;
    [a6 unscaledCenterPoint];
    x = v12;
    v15 = v14 - v11;
    y = self->_minCenterPoint.y;
    if (v9)
    {
      TSUClamp();
      v15 = v17;
LABEL_5:
      v19 = 0;
      goto LABEL_12;
    }

    if (v15 >= y)
    {
      y = self->_maxCenterPoint.y;
      if (v15 <= y)
      {
        goto LABEL_5;
      }
    }

    v15 = v15 + (y - v15) * -0.5;
    v19 = 1;
  }

  else
  {
    x = self->_focalPoint.x;
    v18 = self->_focalPoint.y;
    v15 = self->_minCenterPoint.y;
    if (v18 < v15)
    {
      goto LABEL_5;
    }

    v15 = self->_maxCenterPoint.y;
    if (v18 <= v15)
    {
      v15 = self->_focalPoint.y;
    }

    v19 = 0;
  }

LABEL_12:
  result = [TSDContentLocation contentLocationWithUnscaledPoint:x viewScale:v15, self->_wellViewScale];
  if (a5)
  {
    *a5 = v19;
  }

  return result;
}

- (CGPoint)p_distanceFromWellRect:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = CGPointZero.x;
  v7 = CGPointZero.y;
  if (CGRectContainsPoint(self->_wellRect, a3))
  {
    goto LABEL_29;
  }

  MinX = CGRectGetMinX(self->_wellRect);
  if (x > MinX)
  {
    v10 = x >= CGRectGetMaxX(self->_wellRect);
    v9 = v10;
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  MinY = CGRectGetMinY(self->_wellRect);
  if (y > MinY)
  {
    MaxY = CGRectGetMaxY(self->_wellRect);
    v12 = y >= MaxY;
    if (x > MinX || y >= MaxY)
    {
      if (!v9 || y >= MaxY)
      {
        v20 = x <= MinX;
        if (y < MaxY)
        {
          v20 = 1;
        }

        if (v20 || v9)
        {
          goto LABEL_8;
        }

        v19 = CGRectGetMaxY(self->_wellRect);
LABEL_19:
        v7 = y - v19;
        v6 = 0.0;
        goto LABEL_29;
      }

      MaxX = CGRectGetMaxX(self->_wellRect);
    }

    else
    {
      MaxX = CGRectGetMinX(self->_wellRect);
    }

    v6 = x - MaxX;
    v7 = 0.0;
    goto LABEL_29;
  }

  if (!v10)
  {
    v19 = CGRectGetMinY(self->_wellRect);
    goto LABEL_19;
  }

  v12 = 1;
LABEL_8:
  if (v10 && v12)
  {
    v13 = self->_wellRect.origin.x;
    v14 = self->_wellRect.origin.y;
    width = self->_wellRect.size.width;
    height = self->_wellRect.size.height;
    if (x > MinX)
    {
      CGRectGetMaxX(*&v13);
    }

    else
    {
      CGRectGetMinX(*&v13);
    }

    v21 = self->_wellRect.origin.x;
    v22 = self->_wellRect.origin.y;
    v23 = self->_wellRect.size.width;
    v24 = self->_wellRect.size.height;
    if (y > MinY)
    {
      CGRectGetMaxY(*&v21);
    }

    else
    {
      CGRectGetMinY(*&v21);
    }

    TSDSubtractPoints();
    v6 = v25;
    v7 = v26;
  }

LABEL_29:
  v27 = v6;
  v28 = v7;
  result.y = v28;
  result.x = v27;
  return result;
}

- (double)weightWithMovement:(CGPoint)a3 proposedLocation:(id)a4 controller:(id)a5
{
  weightBlock = self->_weightBlock;
  if (!weightBlock)
  {
    return 0.0;
  }

  [a4 unscaledPoint];
  [(THGuidedPanRectWell *)self p_distanceFromWellRect:?];
  v7 = weightBlock[2];

  v7(weightBlock);
  return result;
}

- (id)contentAnimationToFocalPointFromLocation:(id)a3 withMovement:(CGPoint)a4 velocity:(CGPoint)a5 controller:(id)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v52 = 0;
  [(THGuidedPanRectWell *)self p_contentLocationWithMovement:0 snapToBounds:&v52 overscrolled:a6 controller:?];
  v13 = [(THGuidedPanRectWell *)self p_contentLocationWithMovement:1 snapToBounds:0 overscrolled:a6 controller:v10, v9];
  if (!self->_allowVerticalMovementInWell)
  {
    TSDPointLength();
    if (v15 <= 300.0)
    {
      v33 = [TSDContentLocation contentLocationInterpolatingFromLocation:a3 toLocation:v13 fraction:1.04999995];
      v14 = +[TSDContentPathAnimation animation];
      [v14 setContentLocations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", a3, v33, v13, 0)}];
      [v14 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseOut)}];
      v34 = [NSNumber numberWithFloat:0.0];
      LODWORD(v35) = 1061997773;
      v36 = [NSNumber numberWithFloat:v35];
      LODWORD(v37) = 1.0;
      v38 = [NSArray arrayWithObjects:v34, v36, [NSNumber numberWithFloat:v37], 0, v51];
    }

    else
    {
      currentBlendedWeight = self->_currentBlendedWeight;
      previousBlendedWeight = self->_previousBlendedWeight;
      v18 = +[TSDContentLocation contentLocation];
      if (currentBlendedWeight <= 0.5 || currentBlendedWeight <= previousBlendedWeight)
      {
        [objc_msgSend(a6 "delegate")];
        v21 = v20;
        [objc_msgSend(a6 "delegate")];
        v23 = v22;
        [a3 unscaledPoint];
        [v13 unscaledPoint];
        TSDInterpolatePoints();
        [v18 setUnscaledPoint:?];
        [a3 viewScale];
        TSDInterpolateFloats();
        v42 = v24;
        [a3 viewScale];
        if (v25 < v21)
        {
          [v13 viewScale];
          if (v26 < v21)
          {
            [a3 viewScale];
            v42 = v27;
          }
        }

        [objc_msgSend(a6 "target")];
        if (vabdd_f64(v28, v23) >= 0.00999999978)
        {
          [a3 viewScale];
          v30 = v29;
          [v13 viewScale];
          *&v31 = v31;
          [v18 setViewScale:{fmax(v23, fmin(v42, fminf(v30, *&v31) * 0.95))}];
        }
      }

      else
      {
        [a3 unscaledPoint];
        [v13 unscaledPoint];
        TSDInterpolatePoints();
        [v18 setUnscaledPoint:?];
        [a3 viewScale];
        v42 = v41;
      }

      [v18 setViewScale:v42];
      v43 = [TSDContentLocation contentLocationInterpolatingFromLocation:v18 toLocation:v13 fraction:1.04999995];
      v14 = +[TSDContentPathAnimation animation];
      [v14 setContentLocations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", a3, v18, v43, v13, 0)}];
      [v14 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseOut)}];
      v44 = [NSNumber numberWithFloat:0.0];
      LODWORD(v45) = 1050253722;
      v46 = [NSNumber numberWithFloat:v45];
      LODWORD(v47) = 1058642330;
      v48 = [NSNumber numberWithFloat:v47];
      LODWORD(v49) = 1.0;
      v38 = [NSArray arrayWithObjects:v44, v46, v48, [NSNumber numberWithFloat:v49], 0];
    }

    [v14 setKeyTimes:v38];
    goto LABEL_23;
  }

  if ((v52 & 1) != 0 || y == 0.0)
  {
    if ((v52 & 1) == 0)
    {
      [a3 viewScale];
      if (vabdd_f64(v32, self->_wellViewScale) < 0.00999999978)
      {
        return 0;
      }
    }

    v14 = +[TSDContentPathAnimation animation];
    [v14 setContentLocations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", a3, v13, 0)}];
    v39 = [NSNumber numberWithFloat:0.0];
    LODWORD(v40) = 1.0;
    [v14 setKeyTimes:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v39, +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v40), 0)}];
    [v14 setTimingFunctions:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseOut))}];
LABEL_23:
    [v14 setDuration:0.300000012];
    return v14;
  }

  return [[[THGuidedPanColumnAnimator alloc] initWithLocation:a3 velocity:a6 min:x max:y targetViewScale:self->_minCenterPoint.x controller:self->_minCenterPoint.y animation:self->_maxCenterPoint.y];
}

- (int)guidedPanWellRatingWithMovement:(CGPoint)a3 velocity:(CGPoint)a4 controller:(id)a5
{
  ratingBlock = self->_ratingBlock;
  if (ratingBlock)
  {
    LODWORD(ratingBlock) = ratingBlock[2](a3, *&a3.y, a4, *&a4.y);
  }

  return ratingBlock;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  return [NSString stringWithFormat:@"<%@ %p %@ %@>", v4, self, NSStringFromCGRect(self->_wellRect), self->_identifier];
}

- (CGRect)unscaledRect
{
  x = self->_unscaledRect.origin.x;
  y = self->_unscaledRect.origin.y;
  width = self->_unscaledRect.size.width;
  height = self->_unscaledRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)wellRect
{
  x = self->_wellRect.origin.x;
  y = self->_wellRect.origin.y;
  width = self->_wellRect.size.width;
  height = self->_wellRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)focalPoint
{
  x = self->_focalPoint.x;
  y = self->_focalPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)minCenterPoint
{
  x = self->_minCenterPoint.x;
  y = self->_minCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)maxCenterPoint
{
  x = self->_maxCenterPoint.x;
  y = self->_maxCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end