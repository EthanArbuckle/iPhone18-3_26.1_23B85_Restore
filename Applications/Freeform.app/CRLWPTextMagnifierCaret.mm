@interface CRLWPTextMagnifierCaret
- (BOOL)p_isMagnifierStopping;
- (BOOL)shouldHideCanvasLayer;
- (BOOL)terminalPointPlacedCarefully;
- (CGPoint)animationPoint;
- (CGPoint)magnificationPoint;
- (CGPoint)offset;
- (CGPoint)terminalPoint;
- (CRLWPTextMagnifierCaret)init;
- (void)beginMagnifyingTarget:(id)a3 magnificationPoint:(CGPoint)a4 offset:(CGPoint)a5 animated:(BOOL)a6;
- (void)drawMagnifierClippedCanvasLayer:(id)a3 inContext:(CGContext *)a4;
- (void)remove;
- (void)setFrame:(CGRect)a3;
- (void)setMagnificationPoint:(CGPoint)a3;
- (void)setNeedsDisplay;
- (void)setTarget:(id)a3;
- (void)stopMagnifying:(BOOL)a3;
- (void)updateFrameAndOffset;
- (void)zoomDownAnimation;
- (void)zoomUpAnimation;
@end

@implementation CRLWPTextMagnifierCaret

- (void)setTarget:(id)a3
{
  v5 = a3;
  if (self->_target != v5)
  {
    v10 = v5;
    v6 = objc_opt_class();
    v7 = sub_100013F00(v6, self->_target);
    [v7 enableCaretAnimation];

    objc_storeStrong(&self->_target, a3);
    v8 = objc_opt_class();
    v9 = sub_100013F00(v8, self->_target);
    [v9 disableCaretAnimation];

    v5 = v10;
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
    v8 = [(CRLWPTextMagnifierCaret *)v2 overlayImageName];
    v9 = [UIImage imageNamed:v8];

    v10 = [[UIImageView alloc] initWithImage:v9];
    [(CRLWPTextMagnifierCaret *)v2 addSubview:v10];
  }

  return v2;
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = CRLWPTextMagnifierCaret;
  [(CRLWPTextMagnifierCaret *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setMagnificationPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v3 = [(CRLWPTextMagnifierCaret *)self superview];
  [(CRLWPTextMagnifierCaret *)self magnificationPoint];
  v5 = v4;
  v7 = v6;
  v8 = [(CRLWPTextMagnifierCaret *)self target];
  v9 = [v8 interactiveCanvasController];
  v10 = [v9 layerHost];
  v11 = [v10 canvasView];
  [v3 convertPoint:v11 fromView:{v5, v7}];
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

- (void)beginMagnifyingTarget:(id)a3 magnificationPoint:(CGPoint)a4 offset:(CGPoint)a5 animated:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v12 = a3;
  [(CRLWPTextMagnifierCaret *)self setTarget:v12];
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
  v19 = [v12 interactiveCanvasController];

  v20 = [v19 delegate];
  v22 = sub_100014370(v18, v20);

  v21 = -[CRLWPTextMagnifierCaretController initWithPreferredStatusBarStyle:]([CRLWPTextMagnifierCaretController alloc], "initWithPreferredStatusBarStyle:", [v22 preferredStatusBarStyle]);
  [(CRLWPTextMagnifierCaretController *)v21 setView:self];
  [(UIWindow *)self->_hostWindow setRootViewController:v21];
  [(UIWindow *)self->_hostWindow addSubview:self];
  [(UIWindow *)self->_hostWindow setHidden:0];
  [(CRLWPTextMagnifierCaret *)self setMagnificationPoint:v10, v9];
  [(CRLWPTextMagnifierCaret *)self frame];
  [(CRLWPTextMagnifierCaret *)self setFrame:?];
  [(CRLWPTextMagnifierCaret *)self setOffset:x, y];
  if (v6)
  {
    [(CRLWPTextMagnifierCaret *)self zoomUpAnimation];
  }
}

- (void)stopMagnifying:(BOOL)a3
{
  if (a3)
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
  v2 = [(CRLWPTextMagnifierCaret *)self target];
  v3 = [v2 interactiveCanvasController];

  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v5 layerHost];
    v8 = sub_100014370(v6, v7);
  }

  return 1;
}

- (void)drawMagnifierClippedCanvasLayer:(id)a3 inContext:(CGContext *)a4
{
  v6 = [(CRLWPTextMagnifierCaret *)self target];
  if (v6)
  {
    v7 = v6;
    v8 = [(CRLWPTextMagnifierCaret *)self p_isMagnifierStopping];

    if ((v8 & 1) == 0)
    {
      v9 = [(CRLWPTextMagnifierCaret *)self target];
      v38 = [v9 interactiveCanvasController];

      v10 = [v38 layerHost];
      v11 = [v10 canvasView];

      [(CRLWPTextMagnifierCaret *)self frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [(CRLWPTextMagnifierCaret *)self superview];
      [v11 convertRect:v20 fromView:{v13, v15, v17, v19}];
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
      CGContextSaveGState(a4);
      v34 = [(CRLWPTextMagnifierCaret *)self maskImageName];
      v35 = [UIImage imageNamed:v34];

      v36 = [v35 CGImage];
      v41.origin.x = 0.0;
      v41.origin.y = 0.0;
      v41.size.width = v26;
      v41.size.height = v28;
      CGContextClipToMask(a4, v41, v36);
      v37 = [v33 CGImage];
      v42.origin.x = 0.0;
      v42.origin.y = 0.0;
      v42.size.width = v26;
      v42.size.height = v28;
      CGContextDrawImage(a4, v42, v37);
      CGContextRestoreGState(a4);
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