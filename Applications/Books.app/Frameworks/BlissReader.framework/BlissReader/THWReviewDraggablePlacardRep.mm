@interface THWReviewDraggablePlacardRep
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)handleGesture:(id)gesture;
- (CGPath)p_cachedPathForSize:(CGSize)size arrowDirection:(int)direction;
- (id)calloutPathAnimationWithduration:(double)withduration;
- (id)contentTextRep;
- (id)p_dragHosting;
- (id)p_pathWithDirection:(int)direction size:(CGSize)size includeWedge:(BOOL)wedge;
- (void)addAdditionalChildBackgroundLayersToArray:(id)array;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)dealloc;
- (void)p_updateLayers;
- (void)setArrowDirection:(int)direction;
- (void)setPressed:(BOOL)pressed;
- (void)updateLayerBoundsAndWPPosition;
@end

@implementation THWReviewDraggablePlacardRep

- (void)dealloc
{
  cachedPath = self->_cachedPath;
  if (cachedPath)
  {
    CFRelease(cachedPath);
    self->_cachedPath = 0;
  }

  v4.receiver = self;
  v4.super_class = THWReviewDraggablePlacardRep;
  [(THWReviewDraggablePlacardRep *)&v4 dealloc];
}

- (void)updateLayerBoundsAndWPPosition
{
  interactiveCanvasController = [(THWReviewDraggablePlacardRep *)self interactiveCanvasController];
  v4 = [interactiveCanvasController layerForRep:self];
  [(THWReviewDraggablePlacardRep *)self layerFrameInScaledCanvasRelativeToParent];
  TSDRectWithSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 bounds];
  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  if (!CGRectEqualToRect(v16, v17))
  {
    [v4 setBounds:{v6, v8, v10, v12}];
  }

  v13 = [-[THWReviewDraggablePlacardRep layout](self "layout")];
  if (v13)
  {
    v14 = [interactiveCanvasController layerForRep:{objc_msgSend(interactiveCanvasController, "repForLayout:", v13)}];
    [v14 position];

    [v14 setPosition:v10 * 0.5];
  }
}

- (id)contentTextRep
{
  result = [-[THWReviewDraggablePlacardRep layout](self "layout")];
  if (result)
  {
    v4 = result;
    objc_opt_class();
    [-[THWReviewDraggablePlacardRep interactiveCanvasController](self "interactiveCanvasController")];

    return TSUDynamicCast();
  }

  return result;
}

- (void)p_updateLayers
{
  layout = [(THWReviewDraggablePlacardRep *)self layout];
  [objc_msgSend(layout "geometry")];
  TSDRectWithSize();
  v5 = v4;
  v7 = v6;
  [-[THWReviewDraggablePlacardRep canvas](self "canvas")];
  memset(&v30, 0, sizeof(v30));
  CGAffineTransformMakeScale(&v30, v8, v8);
  v9 = [objc_msgSend(layout "contentImage")];
  if (v9)
  {
    v10 = v9;
    TSDRectWithSize();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    TSDCenterOfRect();
    v26 = vaddq_f64(*&v30.tx, vmlaq_n_f64(vmulq_n_f64(*&v30.c, v19), *&v30.a, v20));
    imageLayer = self->_imageLayer;
    if (!imageLayer)
    {
      v22 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
      self->_imageLayer = v22;
      [(CALayer *)v22 setContentsGravity:kCAGravityResizeAspect];
      [(CALayer *)self->_imageLayer setCornerRadius:2.0];
      [(CALayer *)self->_imageLayer setBorderWidth:1.0];
      -[CALayer setBorderColor:](self->_imageLayer, "setBorderColor:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.0]);
      [(CALayer *)self->_imageLayer setDelegate:[(THWReviewDraggablePlacardRep *)self interactiveCanvasController]];
      imageLayer = self->_imageLayer;
    }

    [(CALayer *)imageLayer setBounds:v12, v14, v16, v18, *&v26];
    [(CALayer *)self->_imageLayer setPosition:v27, v28];
    v29 = v30;
    [(CALayer *)self->_imageLayer setAffineTransform:&v29];
    if (v10 != self->_currentImageContents)
    {
      [(CALayer *)self->_imageLayer setContents:v10];
      self->_currentImageContents = v10;
    }
  }

  else
  {

    self->_imageLayer = 0;
    self->_currentImageContents = 0;
  }

  if (!self->_calloutLayer)
  {
    self->_calloutLayer = objc_alloc_init(TSDNoDefaultImplicitActionShapeLayer);
    -[CAShapeLayer setBackgroundColor:](self->_calloutLayer, "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
    -[CAShapeLayer setFillColor:](self->_calloutLayer, "setFillColor:", [+[TSUColor whiteColor](TSUColor "whiteColor")]);
    [(CAShapeLayer *)self->_calloutLayer setLineWidth:1.0];
    -[CAShapeLayer setStrokeColor:](self->_calloutLayer, "setStrokeColor:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.0]);
    -[CAShapeLayer setShadowColor:](self->_calloutLayer, "setShadowColor:", [+[TSUColor blackColor](TSUColor "blackColor")]);
    LODWORD(v23) = 0.25;
    [(CAShapeLayer *)self->_calloutLayer setShadowOpacity:v23];
    [(CAShapeLayer *)self->_calloutLayer setDelegate:[(THWReviewDraggablePlacardRep *)self interactiveCanvasController]];
  }

  v24 = [(THWReviewDraggablePlacardRep *)self p_cachedPathForSize:[(THWReviewDraggablePlacardRep *)self arrowDirection] arrowDirection:v5, v7];
  if (!CGPathEqualToPath(v24, [(CAShapeLayer *)self->_calloutLayer path]))
  {
    [(CAShapeLayer *)self->_calloutLayer setPath:v24];
  }

  if (!self->_shadowValid)
  {
    if ([(THWReviewDraggablePlacardRep *)self isPressed])
    {
      v25 = 7.0;
    }

    else
    {
      v25 = 3.0;
    }

    *&v29.a = CGPointZero;
    TSDOriginRotate();
    [(CAShapeLayer *)self->_calloutLayer setShadowOffset:*&v29.a];
    [(CAShapeLayer *)self->_calloutLayer setShadowRadius:v25];
    self->_shadowValid = 1;
  }

  v29 = v30;
  [(CAShapeLayer *)self->_calloutLayer setAffineTransform:&v29];
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  v5.receiver = self;
  v5.super_class = THWReviewDraggablePlacardRep;
  [(THWReviewDraggablePlacardRep *)&v5 addAdditionalChildLayersToArray:?];
  [(THWReviewDraggablePlacardRep *)self p_updateLayers];
  if (self->_imageLayer)
  {
    [array addObject:?];
  }
}

- (void)addAdditionalChildBackgroundLayersToArray:(id)array
{
  [(THWReviewDraggablePlacardRep *)self p_updateLayers];
  if (self->_calloutLayer)
  {

    [array addObject:?];
  }
}

- (BOOL)canHandleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind != TSWPImmediatePress)
  {
    gestureKind2 = [gesture gestureKind];
    if (gestureKind2 != TSWPTapAndTouch)
    {
      return 0;
    }
  }

  p_dragHosting = [(THWReviewDraggablePlacardRep *)self p_dragHosting];

  return [p_dragHosting reviewDragAllowDraggingForRep:self];
}

- (BOOL)handleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind != TSWPImmediatePress)
  {
    gestureKind2 = [gesture gestureKind];
    return gestureKind2 == TSWPTapAndTouch;
  }

  gestureState = [gesture gestureState];
  if (gestureState - 2 < 4)
  {
    [-[THWReviewDraggablePlacardRep p_dragHosting](self "p_dragHosting")];
    return 1;
  }

  if (gestureState == 1)
  {
    [-[THWReviewDraggablePlacardRep p_dragHosting](self "p_dragHosting")];
    return 1;
  }

  return 0;
}

- (void)setArrowDirection:(int)direction
{
  if (self->_arrowDirection != direction)
  {
    self->_arrowDirection = direction;
    canvas = [(THWReviewDraggablePlacardRep *)self canvas];

    [canvas invalidateLayers];
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    self->_shadowValid = 0;
    canvas = [(THWReviewDraggablePlacardRep *)self canvas];

    [canvas invalidateLayers];
  }
}

- (id)calloutPathAnimationWithduration:(double)withduration
{
  prevArrowDirection = self->_prevArrowDirection;
  arrowDirection = self->_arrowDirection;
  if (arrowDirection)
  {
    v5 = prevArrowDirection == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || prevArrowDirection == arrowDirection)
  {
    return 0;
  }

  v9 = [CAKeyframeAnimation animationWithKeyPath:@"path"];
  objc_opt_class();
  [(CAShapeLayer *)self->_calloutLayer presentationLayer];
  v10 = [TSUDynamicCast() valueForKeyPath:@"path"];
  v11 = self->_arrowDirection;
  TSDMixSizes();
  v12 = [(THWReviewDraggablePlacardRep *)self p_pathWithDirection:v11 size:0 includeWedge:?];
  v13 = self->_arrowDirection;
  TSDMixSizes();
  -[CAKeyframeAnimation setValues:](v9, "setValues:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v10, [v12 CGPath], objc_msgSend(-[THWReviewDraggablePlacardRep p_pathWithDirection:size:includeWedge:](self, "p_pathWithDirection:size:includeWedge:", v13, 0), "CGPath"), self->_cachedPath, 0));
  [(CAKeyframeAnimation *)v9 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], 0]];
  v14 = [NSNumber numberWithFloat:0.0];
  LODWORD(v15) = 1053609165;
  v16 = [NSNumber numberWithFloat:v15];
  LODWORD(v17) = 1058642330;
  v18 = [NSNumber numberWithFloat:v17];
  LODWORD(v19) = 1.0;
  [(CAKeyframeAnimation *)v9 setKeyTimes:[NSArray arrayWithObjects:v14, v16, v18, [NSNumber numberWithFloat:v19], 0]];
  [(CAKeyframeAnimation *)v9 setDuration:withduration];
  [(CAKeyframeAnimation *)v9 setFillMode:kCAFillModeBoth];
  return v9;
}

- (CGPath)p_cachedPathForSize:(CGSize)size arrowDirection:(int)direction
{
  v4 = *&direction;
  height = size.height;
  width = size.width;
  result = self->_cachedPath;
  if (!result || (size.width == self->_cachedPathSize.width ? (v9 = size.height == self->_cachedPathSize.height) : (v9 = 0), !v9 || self->_cachedPathArrowDirection != direction))
  {
    self->_prevArrowDirection = self->_cachedPathArrowDirection;
    self->_prevPathSize = self->_cachedPathSize;
    cachedPath = self->_cachedPath;
    if (cachedPath)
    {
      CFRelease(cachedPath);
      self->_cachedPath = 0;
    }

    self->_cachedPathSize.width = width;
    self->_cachedPathSize.height = height;
    self->_cachedPathArrowDirection = v4;
    result = CGPathRetain([-[THWReviewDraggablePlacardRep p_pathWithDirection:size:includeWedge:](self p_pathWithDirection:v4 size:1 includeWedge:{width, height), "CGPath"}]);
    self->_cachedPath = result;
  }

  return result;
}

- (id)p_pathWithDirection:(int)direction size:(CGSize)size includeWedge:(BOOL)wedge
{
  height = size.height;
  width = size.width;
  memset(&m.c, 0, 32);
  if (direction != 0 && wedge)
  {
    v8 = 13.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = 0.0;
  *&m.a = 0uLL;
  CGAffineTransformMakeTranslation(&m, 0.5, 0.5);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, &m, 3.5, 0.0);
  v31 = -v8;
  if (direction == 1)
  {
    v9 = -v8;
  }

  v30 = (width + -30.0) * 0.5;
  CGPathAddLineToPoint(Mutable, &m, v30, 0.0);
  v29 = width * 0.5 + -5.0;
  v27 = width * 0.5;
  CGPathAddCurveToPoint(Mutable, &m, v30 + 7.0, 0.0, v29, v9, width * 0.5, v9);
  v23 = (width + 30.0) * 0.5 + -7.0;
  v24 = width * 0.5 + 5.0;
  x = (width + 30.0) * 0.5;
  CGPathAddCurveToPoint(Mutable, &m, v24, v9, v23, 0.0, x, 0.0);
  CGPathAddLineToPoint(Mutable, &m, width + -3.5, 0.0);
  CGPathAddArcToPoint(Mutable, &m, width, 0.0, width, 3.5, 3.5);
  if (direction == 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = v8;
  v13 = width + v11;
  v28 = (height + -30.0) * 0.5;
  CGPathAddLineToPoint(Mutable, &m, width, v28);
  v26 = height * 0.5 + -5.0;
  y = height * 0.5;
  CGPathAddCurveToPoint(Mutable, &m, width, v28 + 7.0, v13, v26, v13, height * 0.5);
  v14 = height * 0.5 + 5.0;
  v15 = (height + 30.0) * 0.5 + -7.0;
  v16 = (height + 30.0) * 0.5;
  CGPathAddCurveToPoint(Mutable, &m, v13, v14, width, v15, width, v16);
  CGPathAddLineToPoint(Mutable, &m, width, height + -3.5);
  CGPathAddArcToPoint(Mutable, &m, width, height, width + -3.5, height, 3.5);
  if (direction == 3)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = height + v17;
  CGPathAddLineToPoint(Mutable, &m, x, height);
  CGPathAddCurveToPoint(Mutable, &m, v23, height, v24, v18, v27, v18);
  CGPathAddCurveToPoint(Mutable, &m, v29, v18, v30 + 7.0, height, v30, height);
  CGPathAddLineToPoint(Mutable, &m, 3.5, height);
  CGPathAddArcToPoint(Mutable, &m, 0.0, height, 0.0, height + -3.5, 3.5);
  if (direction == 4)
  {
    v19 = v31;
  }

  else
  {
    v19 = 0.0;
  }

  CGPathAddLineToPoint(Mutable, &m, 0.0, v16);
  CGPathAddCurveToPoint(Mutable, &m, 0.0, v15, v19, v14, v19, y);
  CGPathAddCurveToPoint(Mutable, &m, v19, v26, 0.0, v28 + 7.0, 0.0, v28);
  CGPathAddLineToPoint(Mutable, &m, 0.0, 3.5);
  CGPathAddArcToPoint(Mutable, &m, 0.0, 0.0, 3.5, 0.0, 3.5);
  CGPathCloseSubpath(Mutable);
  v20 = [TSDBezierPath bezierPathWithCGPath:Mutable];
  CGPathRelease(Mutable);
  return v20;
}

- (id)p_dragHosting
{
  interactiveCanvasController = [(THWReviewDraggablePlacardRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewDragHosting];
}

@end