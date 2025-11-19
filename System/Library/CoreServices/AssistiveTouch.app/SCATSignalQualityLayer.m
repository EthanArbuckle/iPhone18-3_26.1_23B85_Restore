@interface SCATSignalQualityLayer
- (BOOL)usesHighVisibility;
- (CGRect)_getFrameLayer;
- (SCATSignalQualityLayer)init;
- (void)_clearSignalQualityIfNeccessary;
- (void)_updateColorLayerPathWithAnimation:(double)a3 shouldClear:(BOOL)a4;
- (void)_updateVisualProperties;
- (void)didUpdateSignalQuality:(int64_t)a3;
- (void)updateParentFrame:(CGRect)a3;
- (void)updatePath:(id)a3 frame:(CGRect)a4 isSimpleRect:(BOOL)a5;
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
    v7 = [(SCATSignalQualityLayer *)v3 colorLayer];
    [v7 setFillColor:v6];

    v8 = [(SCATSignalQualityLayer *)v3 colorLayer];
    LODWORD(v9) = 1045220557;
    [v8 setOpacity:v9];

    v10 = [(SCATSignalQualityLayer *)v3 colorLayer];
    LODWORD(v11) = 0.5;
    [v10 setShadowOpacity:v11];

    v12 = [(SCATSignalQualityLayer *)v3 colorLayer];
    [v12 setShadowRadius:1.0];

    v13 = [(SCATSignalQualityLayer *)v3 colorLayer];
    [(SCATSignalQualityLayer *)v3 addSublayer:v13];

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

- (void)updatePath:(id)a3 frame:(CGRect)a4 isSimpleRect:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a3;
  v11 = 2.0;
  if ([(SCATSignalQualityLayer *)self usesHighVisibility])
  {
    v12 = [(SCATSignalQualityLayer *)self styleProvider];
    [v12 cursorHighVisibilityMultiplier];
    v11 = v13 + 1.0;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v21 = CGRectInset(v20, v11, v11);
  if (a5)
  {
    v14 = v21.origin.x;
    v15 = v21.origin.y;
  }

  else
  {
    [v18 bounds];
    v14 = v16;
    v15 = v17;
    [v18 bounds];
  }

  [(SCATSignalQualityLayer *)self updateParentFrame:v14, v15, v21.size.width, v21.size.height];
}

- (void)updateParentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(SCATSignalQualityLayer *)self setFrame:x, y, width, height];
  [(SCATSignalQualityLayer *)self _updateColorLayerPathWithAnimation:1 shouldClear:0.0];

  +[CATransaction commit];
}

- (void)didUpdateSignalQuality:(int64_t)a3
{
  [(SCATSignalQualityLayer *)self setCurrentSignalQuality:a3];

  [(SCATSignalQualityLayer *)self _updateColorLayerPathWithAnimation:1 shouldClear:1.0];
}

- (BOOL)usesHighVisibility
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScannerCursorHighVisibilityEnabled];

  return v3;
}

- (void)_updateColorLayerPathWithAnimation:(double)a3 shouldClear:(BOOL)a4
{
  v4 = a4;
  [(SCATSignalQualityLayer *)self _getFrameLayer];
  v7 = [UIBezierPath bezierPathWithRect:?];
  v18 = v7;
  if (a3 != 0.0)
  {
    if (v4)
    {
      v8 = 0.1;
    }

    else
    {
      v8 = 0.4;
    }

    v9 = [CABasicAnimation animationWithKeyPath:@"path"];
    v10 = [(SCATSignalQualityLayer *)self colorLayer];
    [v9 setFromValue:{objc_msgSend(v10, "path")}];

    v11 = v18;
    [v9 setToValue:{objc_msgSend(v18, "CGPath")}];
    [v9 setDuration:v8];
    v12 = [(SCATSignalQualityLayer *)self colorLayer];
    [v12 removeAllAnimations];

    v13 = [(SCATSignalQualityLayer *)self colorLayer];
    [v13 addAnimation:v9 forKey:@"animatePath"];

    v7 = v18;
  }

  v14 = [v7 CGPath];
  v15 = [(SCATSignalQualityLayer *)self colorLayer];
  [v15 setPath:v14];

  if (v4)
  {
    v16 = [(SCATSignalQualityLayer *)self clearingTimer];
    [v16 invalidate];

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
  v4 = [(SCATSignalQualityLayer *)self colorLayer];
  [v4 setFillColor:v3];
}

@end