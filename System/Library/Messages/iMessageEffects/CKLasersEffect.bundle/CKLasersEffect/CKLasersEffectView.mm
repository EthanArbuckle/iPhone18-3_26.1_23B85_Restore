@interface CKLasersEffectView
- (CGPoint)_flippedFocusPoint;
- (CGPoint)focusPoint;
- (CGRect)messageRect;
- (void)setFocusPoint:(CGPoint)point;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation CKLasersEffectView

- (void)startAnimation
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v37 = [v3 URLForResource:@"Lasers" withExtension:@"ca"];

  v36 = [CAPackage packageWithContentsOfURL:v37 type:kCAPackageTypeCAMLBundle options:0 error:0];
  stringValue = [&off_4320 stringValue];
  v4 = [v36 publishedObjectWithName:stringValue];
  [v4 setAllowsGroupOpacity:0];
  [v4 setAllowsGroupBlending:0];
  sublayers = [v4 sublayers];
  v6 = [sublayers objectAtIndexedSubscript:0];
  haloLayer = self->_haloLayer;
  self->_haloLayer = v6;

  sublayers2 = [v4 sublayers];
  v34 = [sublayers2 objectAtIndexedSubscript:1];

  sublayers3 = [v4 sublayers];
  v10 = [sublayers3 objectAtIndexedSubscript:1];
  sublayers4 = [v10 sublayers];
  v12 = [sublayers4 objectAtIndexedSubscript:0];
  replicatorLayer = self->_replicatorLayer;
  self->_replicatorLayer = v12;

  sublayers5 = [v4 sublayers];
  v15 = [sublayers5 objectAtIndexedSubscript:2];
  spotlightLayer = self->_spotlightLayer;
  self->_spotlightLayer = v15;

  sublayers6 = [v4 sublayers];
  v18 = [sublayers6 objectAtIndexedSubscript:1];
  sublayers7 = [v18 sublayers];
  v20 = [sublayers7 objectAtIndexedSubscript:0];
  sublayers8 = [v20 sublayers];
  v22 = [sublayers8 objectAtIndexedSubscript:0];

  [(CKLasersEffectView *)self bounds];
  v24 = v23;
  v26 = v25;
  layer = [(CKLasersEffectView *)self layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  [v4 setBeginTime:?];

  [v4 setPosition:{v24 * 0.5, v26 * 0.5}];
  [v4 setBounds:{0.0, 0.0, v24, v26}];
  [v4 setGeometryFlipped:1];
  [v34 setBounds:{0.0, 0.0, v24, v26}];
  [v34 setPosition:{v24 * 0.5, v26 * 0.5}];
  [(CALayer *)self->_haloLayer setBounds:0.0, 0.0, v26 * 1.16, v26 * 1.16];
  [(CKLasersEffectView *)self _flippedFocusPoint];
  [(CALayer *)self->_haloLayer setPosition:?];
  [(CALayer *)self->_replicatorLayer setBounds:0.0, 0.0, v24, v26];
  [(CKLasersEffectView *)self _flippedFocusPoint];
  [(CALayer *)self->_replicatorLayer setPosition:?];
  [v22 setPosition:{v24 * 0.5, v26 * 0.5}];
  [(CKLasersEffectView *)self _flippedFocusPoint];
  [(CALayer *)self->_spotlightLayer setPosition:?];
  [(CALayer *)self->_spotlightLayer setBounds:0.0, 0.0, 0.0, 0.0];
  v28 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v28 setFrameInterval:0.0166666667];
  [v28 setFromValue:&off_4348];
  [v28 setToValue:&off_4358];
  [v28 setDuration:0.0120000001];
  [v28 setBeginTimeMode:kCAAnimationAbsolute];
  LODWORD(v29) = 2139095040;
  [v28 setRepeatCount:v29];
  v30 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  [v28 setTimingFunction:v30];

  [v34 addAnimation:v28 forKey:0];
  layer2 = [(CKLasersEffectView *)self layer];
  [layer2 addSublayer:v4];

  objc_storeStrong(&self->_lasersLayer, v4);
  v32 = dispatch_time(0, 5700000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1888;
  block[3] = &unk_41A0;
  v39 = v4;
  v33 = v4;
  dispatch_after(v32, &_dispatch_main_q, block);
}

- (CGPoint)_flippedFocusPoint
{
  [(CKLasersEffectView *)self focusPoint];
  v4 = v3;
  v6 = v5;
  [(CKLasersEffectView *)self bounds];
  v8 = v7 - v6;
  v9 = v4;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)setFocusPoint:(CGPoint)point
{
  if (self->_focusPoint.x != point.x || self->_focusPoint.y != point.y)
  {
    self->_focusPoint = point;
    [(CKLasersEffectView *)self _flippedFocusPoint];
    v7 = v6;
    v9 = v8;
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CALayer *)self->_haloLayer setPosition:v7, v9];
    [(CALayer *)self->_spotlightLayer setPosition:v7, v9];
    [(CALayer *)self->_replicatorLayer setPosition:v7, v9];

    +[CATransaction commit];
  }
}

- (void)stopAnimation
{
  [(CALayer *)self->_lasersLayer removeFromSuperlayer];
  lasersLayer = self->_lasersLayer;
  self->_lasersLayer = 0;
}

- (CGPoint)focusPoint
{
  x = self->_focusPoint.x;
  y = self->_focusPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)messageRect
{
  x = self->messageRect.origin.x;
  y = self->messageRect.origin.y;
  width = self->messageRect.size.width;
  height = self->messageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end