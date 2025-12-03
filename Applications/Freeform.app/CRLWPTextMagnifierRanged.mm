@interface CRLWPTextMagnifierRanged
- (BOOL)isMagnifierStopping;
- (BOOL)shouldHideCanvasLayer;
- (BOOL)terminalPointPlacedCarefully;
- (CGPoint)animationPoint;
- (CGPoint)magnificationPoint;
- (CGPoint)offset;
- (CGPoint)terminalPoint;
- (CRLWPTextMagnifierRanged)initWithFrame:(CGRect)frame;
- (NSString)maskImageName;
- (double)currentOffset;
- (double)horizontalMovementAtTime:(double)time;
- (id)overlayImageName;
- (id)underlayImageName;
- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated;
- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context;
- (void)remove;
- (void)setFrame:(CGRect)frame;
- (void)setMagnificationPoint:(CGPoint)point;
- (void)setNeedsDisplay;
- (void)stopMagnifying:(BOOL)magnifying;
- (void)updateFrame;
@end

@implementation CRLWPTextMagnifierRanged

- (CRLWPTextMagnifierRanged)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v20.receiver = self;
  v20.super_class = CRLWPTextMagnifierRanged;
  v7 = [(CRLWPTextMagnifierRanged *)&v20 initWithFrame:?];
  if (v7)
  {
    v8 = +[UIColor clearColor];
    [(CRLWPTextMagnifierRanged *)v7 setBackgroundColor:v8];

    v9 = objc_alloc_init(CRLWPTextMagnifierTimeWeightedPoint);
    weightedPoint = v7->_weightedPoint;
    v7->_weightedPoint = v9;

    underlayImageName = [(CRLWPTextMagnifierRanged *)v7 underlayImageName];
    v12 = [UIImage imageNamed:underlayImageName];

    v13 = [[UIImageView alloc] initWithImage:v12];
    [(CRLWPTextMagnifierRanged *)v7 addSubview:v13];
    height = [[CRLWPTextMagnifierRenderer alloc] initWithFrame:x, y, width, height];
    magnifierRenderer = v7->_magnifierRenderer;
    v7->_magnifierRenderer = height;

    [(CRLWPTextMagnifierRenderer *)v7->_magnifierRenderer setRendererDelegate:v7];
    [(CRLWPTextMagnifierRanged *)v7 addSubview:v7->_magnifierRenderer];
    overlayImageName = [(CRLWPTextMagnifierRanged *)v7 overlayImageName];
    v17 = [UIImage imageNamed:overlayImageName];

    v18 = [[UIImageView alloc] initWithImage:v17];
    [(CRLWPTextMagnifierRanged *)v7 addSubview:v18];
  }

  return v7;
}

- (double)horizontalMovementAtTime:(double)time
{
  [(CRLWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint distanceCoveredInInterval:3.40282347e38];
  v5 = v4;
  [(CRLWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint displacementInInterval:0.5];
  v7 = fabs(result);
  v9 = fabs(v8) * 4.0;
  if (v7 < 16.0 || v5 > v7 * 1.5 || v9 > v7)
  {
    return 0.0;
  }

  return result;
}

- (double)currentOffset
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101317848();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10131785C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013178E4();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v3 = [NSString stringWithUTF8String:"[CRLWPTextMagnifierRanged currentOffset]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextMagnifierRanged.mm"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:85 isFatal:0 description:"Abstract method"];

  return 0.0;
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CRLWPTextMagnifierRanged;
  [(CRLWPTextMagnifierRanged *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  magnifierRenderer = self->_magnifierRenderer;
  [(CRLWPTextMagnifierRanged *)self bounds];
  [(CRLWPTextMagnifierRenderer *)magnifierRenderer setFrame:?];
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = CRLWPTextMagnifierRanged;
  [(CRLWPTextMagnifierRanged *)&v3 setNeedsDisplay];
  [(CRLWPTextMagnifierRenderer *)self->_magnifierRenderer setNeedsDisplay];
}

- (void)updateFrame
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10131790C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101317920();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013179A8();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v3 = [NSString stringWithUTF8String:"[CRLWPTextMagnifierRanged updateFrame]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextMagnifierRanged.mm"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:100 isFatal:0 description:"Abstract method"];
}

- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated
{
  targetCopy = target;
  [(CRLWPTextMagnifierRanged *)self setTarget:?];
  [(CRLWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint clearHistory];
  [(CRLWPTextMagnifierRanged *)self setAutoscrollDirections:0];
  [(CRLWPTextMagnifierRanged *)self setNeedsLayout];
  [(CRLWPTextMagnifierRanged *)self setNeedsDisplay];
  v7 = [UIWindow alloc];
  v8 = +[UIScreen mainScreen];
  [v8 bounds];
  v9 = [v7 initWithFrame:?];
  hostWindow = self->_hostWindow;
  self->_hostWindow = v9;

  [(UIWindow *)self->_hostWindow setWindowLevel:UIWindowLevelStatusBar + 1.0];
  v11 = +[UIColor clearColor];
  [(UIWindow *)self->_hostWindow setBackgroundColor:v11];

  v12 = objc_opt_class();
  interactiveCanvasController = [targetCopy interactiveCanvasController];
  delegate = [interactiveCanvasController delegate];
  v15 = sub_100014370(v12, delegate);

  v16 = -[CRLWPTextMagnifierCaretController initWithPreferredStatusBarStyle:]([CRLWPTextMagnifierCaretController alloc], "initWithPreferredStatusBarStyle:", [v15 preferredStatusBarStyle]);
  [(CRLWPTextMagnifierCaretController *)v16 setView:self];
  [(UIWindow *)self->_hostWindow setRootViewController:v16];
  [(UIWindow *)self->_hostWindow addSubview:self];
  [(CRLWPTextMagnifierRanged *)self frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(UIWindow *)self->_hostWindow setHidden:0];
  [(CRLWPTextMagnifierRanged *)self setFrame:v18, v20, v22, v24];
}

- (void)stopMagnifying:(BOOL)magnifying
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013179D0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013179E4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101317A6C();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v4 = [NSString stringWithUTF8String:"[CRLWPTextMagnifierRanged stopMagnifying:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextMagnifierRanged.mm"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:136 isFatal:0 description:"Abstract method"];
}

- (BOOL)isMagnifierStopping
{
  if (self->_magnificationPoint.x != INFINITY || self->_magnificationPoint.y != INFINITY)
  {
    return 0;
  }

  [(CRLWPTextMagnifierRanged *)self offset];
  if (v6 != CGPointZero.x || v5 != CGPointZero.y)
  {
    return 0;
  }

  [(CRLWPTextMagnifierRanged *)self alpha];
  return v8 == 0.25;
}

- (void)remove
{
  [(UIWindow *)self->_hostWindow setHidden:1];
  hostWindow = self->_hostWindow;
  self->_hostWindow = 0;
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
    [(CRLWPTextMagnifierRanged *)self updateFrame];
    [(CRLWPTextMagnifierRenderer *)self->_magnifierRenderer setNeedsDisplay];
  }

  [(CRLWPTextMagnifierRanged *)self setAnimationPoint:x, y];
}

- (id)underlayImageName
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101317A94();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101317AA8();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101317B30();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v3 = [NSString stringWithUTF8String:"[CRLWPTextMagnifierRanged underlayImageName]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextMagnifierRanged.mm"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:192 isFatal:0 description:"Abstract method"];

  return &stru_1018BCA28;
}

- (id)overlayImageName
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101317B58();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101317B6C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101317BF4();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v3 = [NSString stringWithUTF8String:"[CRLWPTextMagnifierRanged overlayImageName]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextMagnifierRanged.mm"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:197 isFatal:0 description:"Abstract method"];

  return &stru_1018BCA28;
}

- (NSString)maskImageName
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101317C1C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101317C30();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101317CB8();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v3 = [NSString stringWithUTF8String:"[CRLWPTextMagnifierRanged maskImageName]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextMagnifierRanged.mm"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:202 isFatal:0 description:"Abstract method"];

  return &stru_1018BCA28;
}

- (BOOL)shouldHideCanvasLayer
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101317CE0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101317CF4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101317D7C();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v3 = [NSString stringWithUTF8String:"[CRLWPTextMagnifierRanged shouldHideCanvasLayer]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextMagnifierRanged.mm"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:207 isFatal:0 description:"Abstract method"];

  return 1;
}

- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context
{
  [CRLAssertionHandler _atomicIncrementAssertCount:layer];
  if (qword_101AD5A10 != -1)
  {
    sub_101317DA4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101317DB8();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101317E40();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v5 = [NSString stringWithUTF8String:"[CRLWPTextMagnifierRanged drawMagnifierClippedCanvasLayer:inContext:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextMagnifierRanged.mm"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:212 isFatal:0 description:"Abstract method"];
}

- (CGPoint)animationPoint
{
  x = self->_animationPoint.x;
  y = self->_animationPoint.y;
  result.y = y;
  result.x = x;
  return result;
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