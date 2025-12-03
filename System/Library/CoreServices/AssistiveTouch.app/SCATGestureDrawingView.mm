@interface SCATGestureDrawingView
+ (BOOL)_isValidPositionFor90ControlWithXAlignment:(unint64_t)alignment yAlignment:(unint64_t)yAlignment size:(CGSize)size nearestPoint:(CGPoint)point centerPoint:(CGPoint)centerPoint frame:(CGRect *)frame;
+ (CGRect)_bestFrameFor90ControlAtAngle:(double)angle size:(CGSize)size centerPoint:(CGPoint)point;
+ (CGRect)_frameFor90ControlWithXAlignment:(unint64_t)alignment yAlignment:(unint64_t)yAlignment size:(CGSize)size nearestPoint:(CGPoint)point;
+ (CGRect)_frameWithIntegralOrigin:(CGRect)result;
- (CGPoint)_tailPoint;
- (CGRect)frameForToolbar;
- (NSArray)fingerPositions;
- (SCATGestureDrawingView)initWithFrame:(CGRect)frame;
- (double)_actualDistanceForFingerTrail;
- (double)_midAngleForCurvedTrailWithTailPoint:(CGPoint)point fingerTrailDistance:(double)distance distanceAlongArc:(double)arc useSecondIntersectionPointIfNecessary:(BOOL)necessary;
- (double)angle;
- (double)curvature;
- (double)previewDistance;
- (id)_newControlArrowForCurvature:(BOOL)curvature;
- (id)_newRotate90Button;
- (void)_adjustArrowViewsForNumberOfFingers:(unint64_t)fingers;
- (void)_updateControls;
- (void)_updateCurvatureControl:(id)control withTailPoint:(CGPoint)point tailAngle:(double)angle distance:(double)distance curvature:(double)curvature;
- (void)_updateCurvatureControls;
- (void)_updateRotation90Controls;
- (void)_updateRotationControls;
- (void)setAngle:(double)angle;
- (void)setCurvature:(double)curvature;
- (void)setFingerPositions:(id)positions;
- (void)setFingersHighlighted:(BOOL)highlighted;
- (void)setFingersPressed:(BOOL)pressed;
- (void)setFrameForToolbar:(CGRect)toolbar;
- (void)setPreviewDistance:(double)distance;
- (void)setShowsCurvatureControls:(BOOL)controls;
- (void)setShowsRotation90Controls:(BOOL)controls;
- (void)setShowsRotationControls:(BOOL)controls;
@end

@implementation SCATGestureDrawingView

- (SCATGestureDrawingView)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = SCATGestureDrawingView;
  v3 = [(SCATGestureDrawingView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SCATGestureDrawingView *)v3 _newControlArrowForCurvature:0];
    rotateClockwiseControl = v4->_rotateClockwiseControl;
    v4->_rotateClockwiseControl = v5;

    v7 = [(SCATGestureDrawingView *)v4 _newControlArrowForCurvature:0];
    rotateCounterclockwiseControl = v4->_rotateCounterclockwiseControl;
    v4->_rotateCounterclockwiseControl = v7;

    _newRotate90Button = [(SCATGestureDrawingView *)v4 _newRotate90Button];
    rotate90ClockwiseButton = v4->_rotate90ClockwiseButton;
    v4->_rotate90ClockwiseButton = _newRotate90Button;

    _newRotate90Button2 = [(SCATGestureDrawingView *)v4 _newRotate90Button];
    rotate90CounterclockwiseButton = v4->_rotate90CounterclockwiseButton;
    v4->_rotate90CounterclockwiseButton = _newRotate90Button2;

    v13 = [(SCATGestureDrawingView *)v4 _newControlArrowForCurvature:1];
    increaseCurveControl = v4->_increaseCurveControl;
    v4->_increaseCurveControl = v13;

    v15 = [(SCATGestureDrawingView *)v4 _newControlArrowForCurvature:1];
    decreaseCurveControl = v4->_decreaseCurveControl;
    v4->_decreaseCurveControl = v15;

    v17 = [(SCATGestureDrawingView *)v4 _newControlArrowForCurvature:1];
    straightenCurveControl = v4->_straightenCurveControl;
    v4->_straightenCurveControl = v17;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v31[0] = v4->_rotateCounterclockwiseControl;
    v31[1] = v4->_rotateClockwiseControl;
    v31[2] = v4->_rotate90CounterclockwiseButton;
    v31[3] = v4->_rotate90ClockwiseButton;
    v31[4] = v4->_increaseCurveControl;
    v31[5] = v4->_decreaseCurveControl;
    v31[6] = v4->_straightenCurveControl;
    v19 = [NSArray arrayWithObjects:v31 count:7, 0];
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v26 + 1) + 8 * i);
          [v24 setHidden:1];
          [(SCATGestureDrawingView *)v4 addSubview:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v21);
    }
  }

  return v4;
}

- (void)setFingersPressed:(BOOL)pressed
{
  if (self->_fingersPressed != pressed)
  {
    pressedCopy = pressed;
    self->_fingersPressed = pressed;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_arrowViews;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) setPressed:{pressedCopy, v9}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setFingersHighlighted:(BOOL)highlighted
{
  if (self->_fingersHighlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_fingersHighlighted = highlighted;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_arrowViews;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) setHighlighted:{highlightedCopy, v9}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsRotationControls:(BOOL)controls
{
  if (self->_showsRotationControls != controls)
  {
    self->_showsRotationControls = controls;
    [(SCATGestureDrawingView *)self _updateRotationControls];
  }
}

- (void)setShowsRotation90Controls:(BOOL)controls
{
  if (self->_showsRotation90Controls != controls)
  {
    self->_showsRotation90Controls = controls;
    [(SCATGestureDrawingView *)self _updateRotation90Controls];
  }
}

- (void)setShowsCurvatureControls:(BOOL)controls
{
  if (self->_showsCurvatureControls != controls)
  {
    self->_showsCurvatureControls = controls;
    [(SCATGestureDrawingView *)self _updateCurvatureControls];
  }
}

- (NSArray)fingerPositions
{
  v3 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)self->_arrowViews count]];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_arrowViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * i) tailPoint];
        v9 = NSStringFromCGPoint(v17);
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setFingerPositions:(id)positions
{
  positionsCopy = positions;
  -[SCATGestureDrawingView _adjustArrowViewsForNumberOfFingers:](self, "_adjustArrowViewsForNumberOfFingers:", [positionsCopy count]);
  if ([positionsCopy count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_arrowViews objectAtIndex:v4];
      v6 = [positionsCopy objectAtIndex:v4];
      v7 = CGPointFromString(v6);
      [v5 setTailPoint:{v7.x, v7.y}];

      ++v4;
    }

    while (v4 < [positionsCopy count]);
  }

  [(SCATGestureDrawingView *)self _updateControls];
}

- (double)angle
{
  lastObject = [(NSMutableArray *)self->_arrowViews lastObject];
  [lastObject tailAngle];
  v4 = v3;

  return v4;
}

- (void)setAngle:(double)angle
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_arrowViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setTailAngle:{angle, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(SCATGestureDrawingView *)self _updateControls];
}

- (double)curvature
{
  lastObject = [(NSMutableArray *)self->_arrowViews lastObject];
  [lastObject curvature];
  v4 = v3;

  return v4;
}

- (void)setCurvature:(double)curvature
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_arrowViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setCurvature:{curvature, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(SCATGestureDrawingView *)self _updateControls];
}

- (double)previewDistance
{
  lastObject = [(NSMutableArray *)self->_arrowViews lastObject];
  [lastObject distance];
  v4 = v3;

  return v4;
}

- (void)setPreviewDistance:(double)distance
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_arrowViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setDistance:{distance, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(SCATGestureDrawingView *)self _updateControls];
}

- (void)setFrameForToolbar:(CGRect)toolbar
{
  height = toolbar.size.height;
  width = toolbar.size.width;
  y = toolbar.origin.y;
  x = toolbar.origin.x;
  p_frameForToolbar = &self->_frameForToolbar;
  if (!CGRectEqualToRect(self->_frameForToolbar, toolbar))
  {
    p_frameForToolbar->origin.x = x;
    p_frameForToolbar->origin.y = y;
    p_frameForToolbar->size.width = width;
    p_frameForToolbar->size.height = height;
  }
}

- (id)_newControlArrowForCurvature:(BOOL)curvature
{
  curvatureCopy = curvature;
  v5 = objc_alloc_init(SCATGestureArrowView);
  [(SCATGestureArrowView *)v5 setIsControlArrow:1];
  [(SCATGestureArrowView *)v5 setGestureDrawingView:self];
  if (curvatureCopy)
  {
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  [(SCATGestureArrowView *)v5 setStyle:v6];
  [(SCATGestureArrowView *)v5 setShouldClearFingerCircle:curvatureCopy];
  return v5;
}

- (id)_newRotate90Button
{
  v2 = +[SCATStyleProvider sharedStyleProvider];
  v3 = objc_alloc_init(SCATOutlineLabel);
  v4 = sub_100042B24(@"DrawingRotate90");
  v5 = AXFormatInteger();
  v6 = [NSString stringWithFormat:v4, v5];

  [(SCATOutlineLabel *)v3 setText:v6];
  controlArrowColor = [v2 controlArrowColor];
  [(SCATOutlineLabel *)v3 setTextColor:controlArrowColor];

  controlArrowHighlightedColor = [v2 controlArrowHighlightedColor];
  [(SCATOutlineLabel *)v3 setHighlightedTextColor:controlArrowHighlightedColor];

  controlArrowOutlineColor = [v2 controlArrowOutlineColor];
  [(SCATOutlineLabel *)v3 setOutlineColor:controlArrowOutlineColor];

  [v2 controlArrowOutlineThickness];
  [(SCATOutlineLabel *)v3 setOutlineThickness:?];
  [(SCATOutlineLabel *)v3 setTextAlignment:1];
  v10 = +[SCATStyleProvider sharedStyleProvider];
  rotation90ControlFont = [v10 rotation90ControlFont];

  [(SCATOutlineLabel *)v3 setFont:rotation90ControlFont];
  [(SCATOutlineLabel *)v3 sizeToFit];

  return v3;
}

- (void)_adjustArrowViewsForNumberOfFingers:(unint64_t)fingers
{
  arrowViews = self->_arrowViews;
  if (!arrowViews)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:fingers];
    v7 = self->_arrowViews;
    self->_arrowViews = v6;

    arrowViews = self->_arrowViews;
  }

  v8 = [(NSMutableArray *)arrowViews count];
  v9 = fingers - v8;
  if (fingers >= v8)
  {
    if (fingers > v8)
    {
      do
      {
        v12 = objc_alloc_init(SCATGestureArrowView);
        [(SCATGestureArrowView *)v12 setGestureDrawingView:self];
        [(SCATGestureArrowView *)v12 setStyle:3];
        [(SCATGestureDrawingView *)self addSubview:v12];
        [(NSMutableArray *)self->_arrowViews addObject:v12];

        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v10 = v8 - 1;
    do
    {
      v11 = [(NSMutableArray *)self->_arrowViews objectAtIndex:v10];
      [v11 removeFromSuperview];
      [(NSMutableArray *)self->_arrowViews removeObjectAtIndex:v10];

      --v10;
    }

    while (v10 >= fingers);
  }
}

- (CGPoint)_tailPoint
{
  fingerPositions = [(SCATGestureDrawingView *)self fingerPositions];
  lastObject = [fingerPositions lastObject];
  v4 = CGPointFromString(lastObject);

  x = v4.x;
  y = v4.y;
  result.y = y;
  result.x = x;
  return result;
}

- (double)_actualDistanceForFingerTrail
{
  lastObject = [(NSMutableArray *)self->_arrowViews lastObject];
  [lastObject actualDistanceForPreview];
  v4 = v3;

  return v4;
}

- (void)_updateControls
{
  [(SCATGestureDrawingView *)self _updateRotationControls];
  [(SCATGestureDrawingView *)self _updateRotation90Controls];

  [(SCATGestureDrawingView *)self _updateCurvatureControls];
}

+ (CGRect)_frameFor90ControlWithXAlignment:(unint64_t)alignment yAlignment:(unint64_t)yAlignment size:(CGSize)size nearestPoint:(CGPoint)point
{
  height = size.height;
  width = size.width;
  if (alignment == 2)
  {
    x = point.x - size.width;
  }

  else if (alignment == 1)
  {
    x = point.x + size.width * -0.5;
  }

  else
  {
    x = CGRectZero.origin.x;
    if (!alignment)
    {
      x = point.x;
    }
  }

  if (yAlignment == 2)
  {
    y = point.y - size.height;
  }

  else if (yAlignment == 1)
  {
    y = point.y + size.height * -0.5;
  }

  else
  {
    y = CGRectZero.origin.y;
    if (!yAlignment)
    {
      y = point.y;
    }
  }

  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (BOOL)_isValidPositionFor90ControlWithXAlignment:(unint64_t)alignment yAlignment:(unint64_t)yAlignment size:(CGSize)size nearestPoint:(CGPoint)point centerPoint:(CGPoint)centerPoint frame:(CGRect *)frame
{
  y = point.y;
  x = point.x;
  height = size.height;
  width = size.width;
  if (alignment == 1 && yAlignment == 1)
  {
    _AXAssert();
  }

  [self _frameFor90ControlWithXAlignment:alignment yAlignment:yAlignment size:width nearestPoint:{height, x, y}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  AX_CGPointGetDistanceToPoint();
  v25 = v24;
  AX_CGPointGetDistanceToPoint();
  v43 = v26;
  v44.origin.x = v17;
  v44.origin.y = v19;
  v44.size.width = v21;
  v44.size.height = v23;
  CGRectGetMidX(v44);
  v45.origin.x = v17;
  v45.origin.y = v19;
  v45.size.width = v21;
  v45.size.height = v23;
  CGRectGetMinY(v45);
  AX_CGPointGetDistanceToPoint();
  v42 = v27;
  v46.origin.x = v17;
  v46.origin.y = v19;
  v46.size.width = v21;
  v46.size.height = v23;
  CGRectGetMaxX(v46);
  v47.origin.x = v17;
  v47.origin.y = v19;
  v47.size.width = v21;
  v47.size.height = v23;
  CGRectGetMinY(v47);
  AX_CGPointGetDistanceToPoint();
  v41 = v28;
  v48.origin.x = v17;
  v48.origin.y = v19;
  v48.size.width = v21;
  v48.size.height = v23;
  CGRectGetMinX(v48);
  v49.origin.x = v17;
  v49.origin.y = v19;
  v49.size.width = v21;
  v49.size.height = v23;
  CGRectGetMidY(v49);
  AX_CGPointGetDistanceToPoint();
  v40 = v29;
  v50.origin.x = v17;
  v50.origin.y = v19;
  v50.size.width = v21;
  v50.size.height = v23;
  CGRectGetMaxX(v50);
  v51.origin.x = v17;
  v51.origin.y = v19;
  v51.size.width = v21;
  v51.size.height = v23;
  CGRectGetMidY(v51);
  AX_CGPointGetDistanceToPoint();
  v39 = v30;
  v52.origin.x = v17;
  v52.origin.y = v19;
  v52.size.width = v21;
  v52.size.height = v23;
  CGRectGetMinX(v52);
  v53.origin.x = v17;
  v53.origin.y = v19;
  v53.size.width = v21;
  v53.size.height = v23;
  CGRectGetMaxY(v53);
  AX_CGPointGetDistanceToPoint();
  v38 = v31;
  v54.origin.x = v17;
  v54.origin.y = v19;
  v54.size.width = v21;
  v54.size.height = v23;
  CGRectGetMidX(v54);
  v55.origin.x = v17;
  v55.origin.y = v19;
  v55.size.width = v21;
  v55.size.height = v23;
  CGRectGetMaxY(v55);
  AX_CGPointGetDistanceToPoint();
  v37 = v32;
  v56.origin.x = v17;
  v56.origin.y = v19;
  v56.size.width = v21;
  v56.size.height = v23;
  CGRectGetMaxX(v56);
  v57.origin.x = v17;
  v57.origin.y = v19;
  v57.size.width = v21;
  v57.size.height = v23;
  CGRectGetMaxY(v57);
  AX_CGPointGetDistanceToPoint();
  if (frame)
  {
    v34 = v17 + 3.0;
    if (alignment != 1)
    {
      v34 = v17;
    }

    frame->origin.x = v34;
    frame->origin.y = v19;
    frame->size.width = v21;
    frame->size.height = v23;
  }

  v35 = v43 >= v25;
  if (v41 < v25)
  {
    v35 = 0;
  }

  if (v38 < v25)
  {
    v35 = 0;
  }

  if (v33 < v25)
  {
    v35 = 0;
  }

  if (v42 < v25)
  {
    v35 = 0;
  }

  if (v40 < v25)
  {
    v35 = 0;
  }

  if (v39 < v25)
  {
    v35 = 0;
  }

  return v37 >= v25 && v35;
}

+ (CGRect)_bestFrameFor90ControlAtAngle:(double)angle size:(CGSize)size centerPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  height = size.height;
  width = size.width;
  v11 = +[SCATStyleProvider sharedStyleProvider];
  [v11 rotation90ControlNearestRadius];
  v13 = v12;
  v14 = __sincos_stret(angle);
  v15 = x + v13 * v14.__cosval;
  v16 = y + v13 * v14.__sinval;
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  sizeCopy = size;
  if (([self _isValidPositionFor90ControlWithXAlignment:1 yAlignment:0 size:&origin nearestPoint:width centerPoint:height frame:{v15, v16, x, y}] & 1) == 0 && (objc_msgSend(self, "_isValidPositionFor90ControlWithXAlignment:yAlignment:size:nearestPoint:centerPoint:frame:", 1, 2, &origin, width, height, v15, v16, x, y) & 1) == 0 && (objc_msgSend(self, "_isValidPositionFor90ControlWithXAlignment:yAlignment:size:nearestPoint:centerPoint:frame:", 0, 1, &origin, width, height, v15, v16, x, y) & 1) == 0 && (objc_msgSend(self, "_isValidPositionFor90ControlWithXAlignment:yAlignment:size:nearestPoint:centerPoint:frame:", 2, 1, &origin, width, height, v15, v16, x, y) & 1) == 0 && (objc_msgSend(self, "_isValidPositionFor90ControlWithXAlignment:yAlignment:size:nearestPoint:centerPoint:frame:", 0, 0, &origin, width, height, v15, v16, x, y) & 1) == 0 && (objc_msgSend(self, "_isValidPositionFor90ControlWithXAlignment:yAlignment:size:nearestPoint:centerPoint:frame:", 0, 2, &origin, width, height, v15, v16, x, y) & 1) == 0 && (objc_msgSend(self, "_isValidPositionFor90ControlWithXAlignment:yAlignment:size:nearestPoint:centerPoint:frame:", 2, 0, &origin, width, height, v15, v16, x, y) & 1) == 0 && (objc_msgSend(self, "_isValidPositionFor90ControlWithXAlignment:yAlignment:size:nearestPoint:centerPoint:frame:", 2, 2, &origin, width, height, v15, v16, x, y) & 1) == 0)
  {
    v31.x = x;
    v31.y = y;
    v18 = NSStringFromCGPoint(v31);
    v32.x = v15;
    v32.y = v16;
    v19 = NSStringFromCGPoint(v32);
    v33.width = width;
    v33.height = height;
    v28 = NSStringFromCGSize(v33);
    _AXAssert();

    [self _frameFor90ControlWithXAlignment:1 yAlignment:0 size:width nearestPoint:{height, v15, v16, v18, v19, v28}];
    origin.x = v20;
    origin.y = v21;
    sizeCopy.width = v22;
    sizeCopy.height = v23;
  }

  v25 = origin.y;
  v24 = origin.x;
  v27 = sizeCopy.height;
  v26 = sizeCopy.width;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

+ (CGRect)_frameWithIntegralOrigin:(CGRect)result
{
  v3 = round(result.origin.x);
  v4 = round(result.origin.y);
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_updateRotation90Controls
{
  if ([(SCATGestureDrawingView *)self showsRotation90Controls])
  {
    [(SCATOutlineLabel *)self->_rotate90ClockwiseButton frame];
    v4 = v3;
    v6 = v5;
    [(SCATGestureDrawingView *)self _tailPoint];
    v8 = v7;
    v10 = v9;
    v11 = objc_opt_class();
    [(SCATGestureDrawingView *)self angle];
    [v11 _bestFrameFor90ControlAtAngle:v12 + 1.57079633 size:v4 centerPoint:{v6, v8, v10}];
    [objc_opt_class() _frameWithIntegralOrigin:{v13, v14, v15, v16}];
    [(SCATOutlineLabel *)self->_rotate90ClockwiseButton setFrame:?];
    v17 = objc_opt_class();
    [(SCATGestureDrawingView *)self angle];
    [v17 _bestFrameFor90ControlAtAngle:v18 + -1.57079633 size:v4 centerPoint:{v6, v8, v10}];
    [objc_opt_class() _frameWithIntegralOrigin:{v19, v20, v21, v22}];
    [(SCATOutlineLabel *)self->_rotate90CounterclockwiseButton setFrame:?];
  }

  [(SCATOutlineLabel *)self->_rotate90ClockwiseButton setHidden:[(SCATGestureDrawingView *)self showsRotation90Controls]^ 1];
  v23 = [(SCATGestureDrawingView *)self showsRotation90Controls]^ 1;
  rotate90CounterclockwiseButton = self->_rotate90CounterclockwiseButton;

  [(SCATOutlineLabel *)rotate90CounterclockwiseButton setHidden:v23];
}

- (double)_midAngleForCurvedTrailWithTailPoint:(CGPoint)point fingerTrailDistance:(double)distance distanceAlongArc:(double)arc useSecondIntersectionPointIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  y = point.y;
  x = point.x;
  v12 = +[SCATStyleProvider sharedStyleProvider];
  v26 = CGPointZero;
  [(SCATGestureDrawingView *)self curvature];
  v14 = fabs(1.0 / v13);
  [(SCATGestureDrawingView *)self angle];
  v16 = v15;
  [(SCATGestureDrawingView *)self curvature];
  [SCATGestureArrowView getCurveArcCenter:0 startAngle:0 endAngle:0 updatedFingerAngle:0 updatedFingerCenter:&v26 withFingerAngle:v17 < 0.0 fingerCenter:v16 curveRadius:x distanceToMove:y onLeft:v14, arc];
  v18 = atan2(v26.y - y, v26.x - x);
  if (necessaryCopy)
  {
    [v12 controlArrowThickness];
    v20 = v14 * 6.28318531 - arc;
    if (v20 - (v19 + v19) < distance)
    {
      [(SCATGestureDrawingView *)self angle];
      v22 = v21;
      [(SCATGestureDrawingView *)self curvature];
      [SCATGestureArrowView getCurveArcCenter:0 startAngle:0 endAngle:0 updatedFingerAngle:0 updatedFingerCenter:&v26 withFingerAngle:v23 < 0.0 fingerCenter:v22 curveRadius:x distanceToMove:y onLeft:v14, v20];
    }

    v18 = atan2(v26.y - y, v26.x - x);
  }

  v24 = v18;

  return v24;
}

- (void)_updateRotationControls
{
  if ([(SCATGestureDrawingView *)self showsRotationControls])
  {
    v3 = +[SCATStyleProvider sharedStyleProvider];
    [(SCATGestureDrawingView *)self angle];
    [(SCATGestureArrowView *)self->_rotateClockwiseControl setTailAngle:v4 + 1.57079633];
    [v3 rotationControlAngleAwayFromMidAngle];
    v6 = v5;
    [v3 rotationControlLength];
    v8 = v7;
    [v3 rotationControlCurveRadius];
    v10 = v9;
    [(SCATGestureDrawingView *)self _tailPoint];
    v12 = v11;
    v14 = v13;
    [(SCATGestureDrawingView *)self _tailPoint];
    v37 = v16;
    v38 = v15;
    [(SCATGestureDrawingView *)self angle];
    v18 = v17;
    [(SCATGestureDrawingView *)self angle];
    v20 = v19;
    [(SCATGestureDrawingView *)self curvature];
    if (v21 != 0.0)
    {
      [(SCATGestureDrawingView *)self _actualDistanceForFingerTrail];
      v23 = v22;
      v24 = v6;
      v25 = v8;
      if (v10 <= v22)
      {
        v26 = v10;
      }

      else
      {
        v26 = v22;
      }

      [(SCATGestureDrawingView *)self curvature];
      [(SCATGestureDrawingView *)self _midAngleForCurvedTrailWithTailPoint:v27 > 0.0 fingerTrailDistance:v12 distanceAlongArc:v14 useSecondIntersectionPointIfNecessary:v23, v26];
      v18 = v28;
      [(SCATGestureDrawingView *)self curvature];
      v30 = v26;
      v8 = v25;
      v6 = v24;
      [(SCATGestureDrawingView *)self _midAngleForCurvedTrailWithTailPoint:v29 < 0.0 fingerTrailDistance:v38 distanceAlongArc:v37 useSecondIntersectionPointIfNecessary:v23, v30];
      v20 = v31;
    }

    v32 = v6 + v18;
    v33 = __sincos_stret(v32);
    [(SCATGestureArrowView *)self->_rotateClockwiseControl setTailPoint:v12 + v10 * v33.__cosval, v14 + v10 * v33.__sinval];
    [(SCATGestureArrowView *)self->_rotateClockwiseControl setDistance:v8];
    [(SCATGestureArrowView *)self->_rotateClockwiseControl setTailAngle:v32 + 1.57079633];
    [(SCATGestureArrowView *)self->_rotateClockwiseControl setCurvature:1.0 / v10];
    v34 = __sincos_stret(v20 - v6);
    [(SCATGestureArrowView *)self->_rotateCounterclockwiseControl setTailPoint:v38 + v10 * v34.__cosval, v37 + v10 * v34.__sinval];
    [(SCATGestureArrowView *)self->_rotateCounterclockwiseControl setDistance:v8];
    [(SCATGestureArrowView *)self->_rotateCounterclockwiseControl setTailAngle:v20 - v6 + -1.57079633];
    [(SCATGestureArrowView *)self->_rotateCounterclockwiseControl setCurvature:-1.0 / v10];
  }

  [(SCATGestureArrowView *)self->_rotateClockwiseControl setHidden:[(SCATGestureDrawingView *)self showsRotationControls]^ 1];
  v35 = [(SCATGestureDrawingView *)self showsRotationControls]^ 1;
  rotateCounterclockwiseControl = self->_rotateCounterclockwiseControl;

  [(SCATGestureArrowView *)rotateCounterclockwiseControl setHidden:v35];
}

- (void)_updateCurvatureControl:(id)control withTailPoint:(CGPoint)point tailAngle:(double)angle distance:(double)distance curvature:(double)curvature
{
  y = point.y;
  x = point.x;
  controlCopy = control;
  [controlCopy setTailPoint:{x, y}];
  [controlCopy setTailAngle:angle];
  [controlCopy setDistance:distance];
  [controlCopy setCurvature:curvature];
}

- (void)_updateCurvatureControls
{
  if ([(SCATGestureDrawingView *)self showsCurvatureControls])
  {
    [(SCATGestureDrawingView *)self _tailPoint];
    v4 = v3;
    v6 = v5;
    [(SCATGestureDrawingView *)self angle];
    v8 = v7;
    [(SCATGestureDrawingView *)self previewDistance];
    v10 = v9;
    [(SCATGestureDrawingView *)self curvature];
    v12 = fmax(v11 * 0.0001, 0.01);
    [(SCATGestureDrawingView *)self curvature];
    v14 = v13 + v12;
    if (v14 >= 0.005)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0.005;
    }

    [(SCATGestureDrawingView *)self curvature];
    v17 = v16 - v12;
    if (v17 <= -0.005)
    {
      v18 = v17;
    }

    else
    {
      v18 = -0.005;
    }

    [(SCATGestureDrawingView *)self _updateCurvatureControl:self->_increaseCurveControl withTailPoint:v4 tailAngle:v6 distance:v8 curvature:v10, v15];
    [(SCATGestureDrawingView *)self _updateCurvatureControl:self->_decreaseCurveControl withTailPoint:v4 tailAngle:v6 distance:v8 curvature:v10, v18];
    [(SCATGestureDrawingView *)self _updateCurvatureControl:self->_straightenCurveControl withTailPoint:v4 tailAngle:v6 distance:v8 curvature:v10, 0.0];
  }

  showsCurvatureControls = [(SCATGestureDrawingView *)self showsCurvatureControls];
  increaseCurveControl = [(SCATGestureDrawingView *)self increaseCurveControl];
  [increaseCurveControl setHidden:showsCurvatureControls ^ 1];

  showsCurvatureControls2 = [(SCATGestureDrawingView *)self showsCurvatureControls];
  decreaseCurveControl = [(SCATGestureDrawingView *)self decreaseCurveControl];
  [decreaseCurveControl setHidden:showsCurvatureControls2 ^ 1];

  if ([(SCATGestureDrawingView *)self showsCurvatureControls])
  {
    [(SCATGestureDrawingView *)self curvature];
    v24 = v23 == 0.0;
  }

  else
  {
    v24 = 1;
  }

  straightenCurveControl = [(SCATGestureDrawingView *)self straightenCurveControl];
  [straightenCurveControl setHidden:v24];
}

- (CGRect)frameForToolbar
{
  x = self->_frameForToolbar.origin.x;
  y = self->_frameForToolbar.origin.y;
  width = self->_frameForToolbar.size.width;
  height = self->_frameForToolbar.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end