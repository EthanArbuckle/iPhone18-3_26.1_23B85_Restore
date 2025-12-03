@interface SCATSignalQualityLayer
- (BOOL)usesHighVisibility;
- (CGRect)_getFrameLayer;
- (SCATSignalQualityLayer)init;
- (void)_clearSignalQualityIfNeccessary;
- (void)_updateColorLayerPathWithAnimation:(double)animation shouldClear:(BOOL)clear;
- (void)_updateVisualProperties;
- (void)didUpdateSignalQuality:(int64_t)quality;
- (void)updateParentFrame:(CGRect)frame;
- (void)updatePath:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect;
@end

@implementation SCATSignalQualityLayer

- (SCATSignalQualityLayer)init
{
  v18.receiver = self;
  v18.super_class = SCATSignalQualityLayer;
  v2 = [(SCATSignalQualityLayer *)&v18 init];
  v3 = v2;
  if (v2)
  {
    [(SCATSignalQualityLayer *)v2 setMasksToBounds:1];
    v4 = objc_alloc_init(CAShapeLayer);
    [(SCATSignalQualityLayer *)v3 setColorLayer:v4];

    v5 = +[AXSettings sharedInstance];
    [v5 assistiveTouchCursorColor];
    v6 = AXSAssistiveTouchCursorColor();
    colorLayer = [(SCATSignalQualityLayer *)v3 colorLayer];
    [colorLayer setFillColor:v6];

    colorLayer2 = [(SCATSignalQualityLayer *)v3 colorLayer];
    LODWORD(v9) = 1045220557;
    [colorLayer2 setOpacity:v9];

    colorLayer3 = [(SCATSignalQualityLayer *)v3 colorLayer];
    LODWORD(v11) = 0.5;
    [colorLayer3 setShadowOpacity:v11];

    colorLayer4 = [(SCATSignalQualityLayer *)v3 colorLayer];
    [colorLayer4 setShadowRadius:1.0];

    colorLayer5 = [(SCATSignalQualityLayer *)v3 colorLayer];
    [(SCATSignalQualityLayer *)v3 addSublayer:colorLayer5];

    v14 = +[AXSettings sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100083238;
    v16[3] = &unk_1001D3488;
    v17 = v3;
    [v14 registerUpdateBlock:v16 forRetrieveSelector:"assistiveTouchCursorColor" withListener:v17];
  }

  return v3;
}

- (void)updatePath:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  v11 = 2.0;
  if ([(SCATSignalQualityLayer *)self usesHighVisibility])
  {
    styleProvider = [(SCATSignalQualityLayer *)self styleProvider];
    [styleProvider cursorHighVisibilityMultiplier];
    v11 = v13 + 1.0;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v21 = CGRectInset(v20, v11, v11);
  if (rect)
  {
    v14 = v21.origin.x;
    v15 = v21.origin.y;
  }

  else
  {
    [pathCopy bounds];
    v14 = v16;
    v15 = v17;
    [pathCopy bounds];
  }

  [(SCATSignalQualityLayer *)self updateParentFrame:v14, v15, v21.size.width, v21.size.height];
}

- (void)updateParentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(SCATSignalQualityLayer *)self setFrame:x, y, width, height];
  [(SCATSignalQualityLayer *)self _updateColorLayerPathWithAnimation:1 shouldClear:0.0];

  +[CATransaction commit];
}

- (void)didUpdateSignalQuality:(int64_t)quality
{
  [(SCATSignalQualityLayer *)self setCurrentSignalQuality:quality];

  [(SCATSignalQualityLayer *)self _updateColorLayerPathWithAnimation:1 shouldClear:1.0];
}

- (BOOL)usesHighVisibility
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchScannerCursorHighVisibilityEnabled = [v2 assistiveTouchScannerCursorHighVisibilityEnabled];

  return assistiveTouchScannerCursorHighVisibilityEnabled;
}

- (void)_updateColorLayerPathWithAnimation:(double)animation shouldClear:(BOOL)clear
{
  clearCopy = clear;
  [(SCATSignalQualityLayer *)self _getFrameLayer];
  v7 = [UIBezierPath bezierPathWithRect:?];
  v18 = v7;
  if (animation != 0.0)
  {
    if (clearCopy)
    {
      v8 = 0.1;
    }

    else
    {
      v8 = 0.4;
    }

    v9 = [CABasicAnimation animationWithKeyPath:@"path"];
    colorLayer = [(SCATSignalQualityLayer *)self colorLayer];
    [v9 setFromValue:{objc_msgSend(colorLayer, "path")}];

    v11 = v18;
    [v9 setToValue:{objc_msgSend(v18, "CGPath")}];
    [v9 setDuration:v8];
    colorLayer2 = [(SCATSignalQualityLayer *)self colorLayer];
    [colorLayer2 removeAllAnimations];

    colorLayer3 = [(SCATSignalQualityLayer *)self colorLayer];
    [colorLayer3 addAnimation:v9 forKey:@"animatePath"];

    v7 = v18;
  }

  cGPath = [v7 CGPath];
  colorLayer4 = [(SCATSignalQualityLayer *)self colorLayer];
  [colorLayer4 setPath:cGPath];

  if (clearCopy)
  {
    clearingTimer = [(SCATSignalQualityLayer *)self clearingTimer];
    [clearingTimer invalidate];

    [(SCATSignalQualityLayer *)self setClearingTimer:0];
    v17 = [NSTimer scheduledTimerWithTimeInterval:self target:"_clearSignalQualityIfNeccessary" selector:0 userInfo:0 repeats:0.5];
    [(SCATSignalQualityLayer *)self setClearingTimer:v17];
  }
}

- (void)_clearSignalQualityIfNeccessary
{
  [(SCATSignalQualityLayer *)self setCurrentSignalQuality:0];

  [(SCATSignalQualityLayer *)self _updateColorLayerPathWithAnimation:0 shouldClear:1.0];
}

- (CGRect)_getFrameLayer
{
  [(SCATSignalQualityLayer *)self frame];
  v4 = v3 * ([(SCATSignalQualityLayer *)self currentSignalQuality]/ 100.0);
  [(SCATSignalQualityLayer *)self frame];
  v6 = (v5 - v4) * 0.5;
  [(SCATSignalQualityLayer *)self frame];
  v8 = 0.0;
  v9 = v6;
  v10 = v4;
  result.size.height = v7;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (void)_updateVisualProperties
{
  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchCursorColor];
  v3 = AXSAssistiveTouchCursorColor();
  colorLayer = [(SCATSignalQualityLayer *)self colorLayer];
  [colorLayer setFillColor:v3];
}

@end