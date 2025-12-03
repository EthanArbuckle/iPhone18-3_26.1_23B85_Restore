@interface CRLWPTextMagnifierCaret
- (BOOL)p_isMagnifierStopping;
- (BOOL)shouldHideCanvasLayer;
- (BOOL)terminalPointPlacedCarefully;
- (CGPoint)animationPoint;
- (CGPoint)magnificationPoint;
- (CGPoint)offset;
- (CGPoint)terminalPoint;
- (CRLWPTextMagnifierCaret)init;
- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated;
- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context;
- (void)remove;
- (void)setFrame:(CGRect)frame;
- (void)setMagnificationPoint:(CGPoint)point;
- (void)setNeedsDisplay;
- (void)setTarget:(id)target;
- (void)stopMagnifying:(BOOL)magnifying;
- (void)updateFrameAndOffset;
- (void)zoomDownAnimation;
- (void)zoomUpAnimation;
@end

@implementation CRLWPTextMagnifierCaret

- (void)setTarget:(id)target
{
  targetCopy = target;
  if (self->_target != targetCopy)
  {
    v10 = targetCopy;
    v6 = objc_opt_class();
    v7 = sub_100013F00(v6, self->_target);
    [v7 enableCaretAnimation];

    objc_storeStrong(&self->_target, target);
    v8 = objc_opt_class();
    v9 = sub_100013F00(v8, self->_target);
    [v9 disableCaretAnimation];

    targetCopy = v10;
  }
}

- (CRLWPTextMagnifierCaret)init
{
  v12.receiver = self;
  v12.super_class = CRLWPTextMagnifierCaret;
  v2 = [(CRLWPTextMagnifierCaret *)&v12 initWithFrame:0.0, 0.0, 106.0, 106.0];
  if (v2)
  {
    v3 = +[UIColor clearColor];
    [(CRLWPTextMagnifierCaret *)v2 setBackgroundColor:v3];

    v4 = objc_alloc_init(CRLWPTextMagnifierTimeWeightedPoint);
    weightedPoint = v2->_weightedPoint;
    v2->_weightedPoint = v4;

    v6 = [[CRLWPTextMagnifierRenderer alloc] initWithFrame:0.0, 0.0, 106.0, 106.0];
    magnifierRenderer = v2->_magnifierRenderer;
    v2->_magnifierRenderer = v6;

    [(CRLWPTextMagnifierRenderer *)v2->_magnifierRenderer setRendererDelegate:v2];
    [(CRLWPTextMagnifierCaret *)v2 addSubview:v2->_magnifierRenderer];
    overlayImageName = [(CRLWPTextMagnifierCaret *)v2 overlayImageName];
    v9 = [UIImage imageNamed:overlayImageName];

    v10 = [[UIImageView alloc] initWithImage:v9];
    [(CRLWPTextMagnifierCaret *)v2 addSubview:v10];
  }

  return v2;
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CRLWPTextMagnifierCaret;
  [(CRLWPTextMagnifierCaret *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  magnifierRenderer = self->_magnifierRenderer;
  [(CRLWPTextMagnifierCaret *)self bounds];
  [(CRLWPTextMagnifierRenderer *)magnifierRenderer setFrame:?];
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = CRLWPTextMagnifierCaret;
  [(CRLWPTextMagnifierCaret *)&v3 setNeedsDisplay];
  [(CRLWPTextMagnifierRenderer *)self->_magnifierRenderer setNeedsDisplay];
}

- (CGPoint)magnificationPoint
{
  x = self->_magnificationPoint.x;
  y = self->_magnificationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setMagnificationPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRLWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint addPoint:?];
  if (x != self->_magnificationPoint.x || y != self->_magnificationPoint.y)
  {
    self->_magnificationPoint.x = x;
    self->_magnificationPoint.y = y;
    [(CRLWPTextMagnifierCaret *)self updateFrameAndOffset];
    magnifierRenderer = self->_magnifierRenderer;

    [(CRLWPTextMagnifierRenderer *)magnifierRenderer setNeedsDisplay];
  }
}

- (CGPoint)terminalPoint
{
  [(CRLWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint weightedPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)terminalPointPlacedCarefully
{
  v3 = [(CRLWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint historyCovers:0.5];
  [(CRLWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint distanceCoveredInInterval:0.5];
  return v4 < 10.0 && v3;
}

- (CGPoint)animationPoint
{
  x = self->_magnificationPoint.x;
  y = self->_magnificationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)zoomUpAnimation
{
  memset(&v7, 0, sizeof(v7));
  [(CRLWPTextMagnifierCaret *)self bounds];
  MaxY = CGRectGetMaxY(v8);
  CGAffineTransformMakeTranslation(&v7, 0.0, MaxY * 0.5);
  v5 = v7;
  CGAffineTransformScale(&v6, &v5, 0.25, 0.25);
  v7 = v6;
  [(CRLWPTextMagnifierCaret *)self setTransform:&v6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033B0C8;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:0.075];
}

- (void)zoomDownAnimation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10033B1CC;
  v3[3] = &unk_10183AB38;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10033B414;
  v2[3] = &unk_10183D270;
  v2[4] = self;
  [UIView animateWithDuration:v3 animations:v2 completion:0.15];
}

- (void)remove
{
  [(UIWindow *)self->_hostWindow setHidden:1];
  hostWindow = self->_hostWindow;
  self->_hostWindow = 0;
}

- (void)updateFrameAndOffset
{
  superview = [(CRLWPTextMagnifierCaret *)self superview];
  [(CRLWPTextMagnifierCaret *)self magnificationPoint];
  v5 = v4;
  v7 = v6;
  target = [(CRLWPTextMagnifierCaret *)self target];
  interactiveCanvasController = [target interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  canvasView = [layerHost canvasView];
  [superview convertPoint:canvasView fromView:{v5, v7}];
  v13 = v12;
  v15 = v14;

  [(CRLWPTextMagnifierCaret *)self bounds];
  v17 = v15 + v16 * 0.5;
  v18 = v17 + -60.0;
  v19 = v17 + -75.0;
  if (v18 >= 75.0)
  {
    v20 = 60.0;
  }

  else
  {
    v20 = v19;
  }

  [(CRLWPTextMagnifierCaret *)self offset];
  v22 = v13 + v21;
  [(CRLWPTextMagnifierCaret *)self offset];
  self->_yOffset = v20;
  [(CRLWPTextMagnifierCaret *)self setCenter:round(v22), round(v15 + v23 - v20)];
  [(CRLWPTextMagnifierCaret *)self frame];
  v26 = CGRectIntegral(v25);

  [(CRLWPTextMagnifierCaret *)self setFrame:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
}

- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  v9 = point.y;
  v10 = point.x;
  targetCopy = target;
  [(CRLWPTextMagnifierCaret *)self setTarget:targetCopy];
  [(CRLWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint clearHistory];
  [(CRLWPTextMagnifierCaret *)self setAutoscrollDirections:0];
  [(CRLWPTextMagnifierCaret *)self setNeedsLayout];
  [(CRLWPTextMagnifierCaret *)self setNeedsDisplay];
  v13 = [UIWindow alloc];
  v14 = +[UIScreen mainScreen];
  [v14 bounds];
  v15 = [v13 initWithFrame:?];
  hostWindow = self->_hostWindow;
  self->_hostWindow = v15;

  [(UIWindow *)self->_hostWindow setWindowLevel:UIWindowLevelStatusBar + 1.0];
  v17 = +[UIColor clearColor];
  [(UIWindow *)self->_hostWindow setBackgroundColor:v17];

  v18 = objc_opt_class();
  interactiveCanvasController = [targetCopy interactiveCanvasController];

  delegate = [interactiveCanvasController delegate];
  v22 = sub_100014370(v18, delegate);

  v21 = -[CRLWPTextMagnifierCaretController initWithPreferredStatusBarStyle:]([CRLWPTextMagnifierCaretController alloc], "initWithPreferredStatusBarStyle:", [v22 preferredStatusBarStyle]);
  [(CRLWPTextMagnifierCaretController *)v21 setView:self];
  [(UIWindow *)self->_hostWindow setRootViewController:v21];
  [(UIWindow *)self->_hostWindow addSubview:self];
  [(UIWindow *)self->_hostWindow setHidden:0];
  [(CRLWPTextMagnifierCaret *)self setMagnificationPoint:v10, v9];
  [(CRLWPTextMagnifierCaret *)self frame];
  [(CRLWPTextMagnifierCaret *)self setFrame:?];
  [(CRLWPTextMagnifierCaret *)self setOffset:x, y];
  if (animatedCopy)
  {
    [(CRLWPTextMagnifierCaret *)self zoomUpAnimation];
  }
}

- (void)stopMagnifying:(BOOL)magnifying
{
  if (magnifying)
  {
    [(CRLWPTextMagnifierCaret *)self zoomDownAnimation];
  }

  else
  {
    [(CRLWPTextMagnifierCaret *)self remove];
    [(CRLWPTextMagnifierCaret *)self setTarget:0];
  }

  self->_magnificationPoint = xmmword_1014629E0;
  y = CGPointZero.y;

  [(CRLWPTextMagnifierCaret *)self setOffset:CGPointZero.x, y];
}

- (BOOL)p_isMagnifierStopping
{
  if (self->_magnificationPoint.x != INFINITY || self->_magnificationPoint.y != INFINITY)
  {
    return 0;
  }

  [(CRLWPTextMagnifierCaret *)self offset:v2];
  return v7 == CGPointZero.y && v6 == CGPointZero.x;
}

- (BOOL)shouldHideCanvasLayer
{
  target = [(CRLWPTextMagnifierCaret *)self target];
  interactiveCanvasController = [target interactiveCanvasController];

  v4 = objc_opt_class();
  v5 = sub_100014370(v4, interactiveCanvasController);
  if (v5)
  {
    v6 = objc_opt_class();
    layerHost = [v5 layerHost];
    v8 = sub_100014370(v6, layerHost);
  }

  return 1;
}

- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context
{
  target = [(CRLWPTextMagnifierCaret *)self target];
  if (target)
  {
    v7 = target;
    p_isMagnifierStopping = [(CRLWPTextMagnifierCaret *)self p_isMagnifierStopping];

    if ((p_isMagnifierStopping & 1) == 0)
    {
      target2 = [(CRLWPTextMagnifierCaret *)self target];
      interactiveCanvasController = [target2 interactiveCanvasController];

      layerHost = [interactiveCanvasController layerHost];
      canvasView = [layerHost canvasView];

      [(CRLWPTextMagnifierCaret *)self frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      superview = [(CRLWPTextMagnifierCaret *)self superview];
      [canvasView convertRect:superview fromView:{v13, v15, v17, v19}];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      +[UIScreen crl_screenScale];
      v30 = v29;
      v40.width = v26;
      v40.height = v28;
      UIGraphicsBeginImageContextWithOptions(v40, 1, v30);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextScaleCTM(CurrentContext, 1.0, -1.0);
      CGContextScaleCTM(CurrentContext, 1.2, 1.2);
      [(CRLWPTextMagnifierCaret *)self yOffset];
      CGContextTranslateCTM(CurrentContext, -v22, -v24 - v32);
      CGContextTranslateCTM(CurrentContext, v26 * -0.100000001, v28 * -0.899999999);
      v33 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      CGContextSaveGState(context);
      maskImageName = [(CRLWPTextMagnifierCaret *)self maskImageName];
      v35 = [UIImage imageNamed:maskImageName];

      cGImage = [v35 CGImage];
      v41.origin.x = 0.0;
      v41.origin.y = 0.0;
      v41.size.width = v26;
      v41.size.height = v28;
      CGContextClipToMask(context, v41, cGImage);
      cGImage2 = [v33 CGImage];
      v42.origin.x = 0.0;
      v42.origin.y = 0.0;
      v42.size.width = v26;
      v42.size.height = v28;
      CGContextDrawImage(context, v42, cGImage2);
      CGContextRestoreGState(context);
    }
  }
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end