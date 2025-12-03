@interface PKRulerLayer
- (BOOL)compactRuler;
- (BOOL)viewPointInRuler:(CGPoint)ruler;
- (CGAffineTransform)previousRulerTransform;
- (CGAffineTransform)rulerTransform;
- (CGAffineTransform)rulerZoomStartTransform;
- (CGPoint)getRulerCenterLineOriginAndTangent:(CGPoint *)tangent;
- (PKRulerController)rulerController;
- (PKRulerLayer)initWithRulerController:(id)controller;
- (double)_distanceMarkerFontSize;
- (double)_fontSizeForRulerTextHUD:(id)d;
- (double)rulerWidth;
- (id)_rulerImage;
- (id)_textForRulerHUD:(double)d;
- (id)addOpacityAnimationOnLayer:(id)layer delegate:(id)delegate toOpacity:(double)opacity;
- (id)addScaleAnimationOnLayer:(id)layer delegate:(id)delegate fromScale:(double)scale toScale:(double)toScale;
- (id)rulerDialImage;
- (id)rulerDialLevelImage;
- (int64_t)currentAngle;
- (int64_t)userAngle;
- (void)addScaleAndOpacityAnimationOnLayer:(id)layer delegate:(id)delegate fromScale:(double)scale toScale:(double)toScale fromAlpha:(double)alpha toAlpha:(double)toAlpha;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)hideRulerAngleMarker;
- (void)hideRulerAnimated:(BOOL)animated;
- (void)removeRulerMarkers;
- (void)setPreviousRulerTransform:(CGAffineTransform *)transform;
- (void)setRulerTransform:(CGAffineTransform *)transform;
- (void)setRulerZoomStartTransform:(CGAffineTransform *)transform;
- (void)showRuler;
- (void)updateAngleWithAngleMarkerPosition:(CGPoint)position;
- (void)updateDistanceMarkerWithSpacing:(double)spacing;
- (void)updateRulerAlpha:(double)alpha;
- (void)updateRulerMarkerForLocation:(CGPoint)location firstTouch:(BOOL)touch;
- (void)updateRulerTickMarkImage;
@end

@implementation PKRulerLayer

- (PKRulerLayer)initWithRulerController:(id)controller
{
  objc_initWeak(&location, controller);
  v7.receiver = self;
  v7.super_class = PKRulerLayer;
  v4 = [(PKRulerLayer *)&v7 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_rulerController, v5);
  }

  objc_destroyWeak(&location);
  return v4;
}

- (BOOL)compactRuler
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

- (id)_rulerImage
{
  v2 = MEMORY[0x1E69DD1B8];
  if ([(PKRulerLayer *)self compactRuler])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = [v2 traitCollectionWithHorizontalSizeClass:v3];
  v5 = MEMORY[0x1E69DCAB8];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"ios_ruler_bg" inBundle:v6 compatibleWithTraitCollection:v4];

  return v7;
}

- (id)rulerDialImage
{
  v2 = MEMORY[0x1E69DD1B8];
  if ([(PKRulerLayer *)self compactRuler])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = [v2 traitCollectionWithHorizontalSizeClass:v3];
  v5 = MEMORY[0x1E69DCAB8];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"ios_ruler_angle_dial" inBundle:v6 compatibleWithTraitCollection:v4];

  return v7;
}

- (id)rulerDialLevelImage
{
  v2 = MEMORY[0x1E69DD1B8];
  if ([(PKRulerLayer *)self compactRuler])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = [v2 traitCollectionWithHorizontalSizeClass:v3];
  v5 = MEMORY[0x1E69DCAB8];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"ios_ruler_angle_level" inBundle:v6 compatibleWithTraitCollection:v4];

  return v7;
}

- (double)rulerWidth
{
  _rulerImage = [(PKRulerLayer *)self _rulerImage];
  [_rulerImage size];
  v4 = v3;

  return v4;
}

- (void)updateRulerAlpha:(double)alpha
{
  rulerLayer = [(PKRulerLayer *)self rulerLayer];
  [rulerLayer opacity];
  v6 = v5;

  if (v6 != alpha)
  {
    alphaCopy = alpha;
    rulerLayer2 = [(PKRulerLayer *)self rulerLayer];
    *&v8 = alphaCopy;
    [rulerLayer2 setOpacity:v8];

    rulerController = [(PKRulerLayer *)self rulerController];
    if (rulerController)
    {
      v10 = rulerController[18];

      if (v10 != 1)
      {
        return;
      }

      rulerAngleMarker = [(PKRulerLayer *)self rulerAngleMarker];
      *&v11 = alphaCopy;
      [rulerAngleMarker setOpacity:v11];

      rulerAngleTick = [(PKRulerLayer *)self rulerAngleTick];
      *&v12 = alphaCopy;
      [rulerAngleTick setOpacity:v12];

      rulerAngleText = [(PKRulerLayer *)self rulerAngleText];
      *&v13 = alphaCopy;
      [rulerAngleText setOpacity:v13];
    }

    else
    {
      rulerAngleText = 0;
    }
  }
}

- (CGAffineTransform)rulerTransform
{
  rulerLayer = [(PKRulerLayer *)self rulerLayer];
  v6 = rulerLayer;
  if (rulerLayer)
  {
    [rulerLayer affineTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setRulerTransform:(CGAffineTransform *)transform
{
  v3 = [(PKRulerLayer *)self rulerLayer:*&transform->a];
  [v3 setAffineTransform:&v4];
}

- (void)updateRulerTickMarkImage
{
  rulerLayer = [(PKRulerLayer *)self rulerLayer];

  if (rulerLayer)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v6 = v5;

    [(PKRulerLayer *)self rulerWidth];
    v8 = v7;
    v39.width = 50.0;
    v39.height = v8;
    UIGraphicsBeginImageContextWithOptions(v39, 0, v6);
    CurrentContext = UIGraphicsGetCurrentContext();
    _rulerImage = [(PKRulerLayer *)self _rulerImage];
    [(PKRulerLayer *)self rulerWidth];
    [_rulerImage drawInRect:{0.0, 0.0, 50.0, v11}];

    Mutable = CGPathCreateMutable();
    compactRuler = [(PKRulerLayer *)self compactRuler];
    v14 = 0;
    if (compactRuler)
    {
      v15 = 10.0;
    }

    else
    {
      v15 = 16.0;
    }

    if (compactRuler)
    {
      v16 = 6.0;
    }

    else
    {
      v16 = 8.0;
    }

    if (compactRuler)
    {
      v17 = 3.0;
    }

    else
    {
      v17 = 5.0;
    }

    v35 = v6;
    v18 = 0.5 / v6;
    do
    {
      v19 = v14 - 5;
      if (v14 < 5)
      {
        v19 = v14;
      }

      if (v19)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      if (v14)
      {
        v21 = v20;
      }

      else
      {
        v21 = v15;
      }

      v22 = v18 + floor(v14 * 5.0);
      CGPathMoveToPoint(Mutable, 0, v22, 4.5);
      v23 = v21 + 4.5;
      CGPathAddLineToPoint(Mutable, 0, v22, v23);
      CGPathMoveToPoint(Mutable, 0, v22, v8 + -4.5);
      CGPathAddLineToPoint(Mutable, 0, v22, v8 - v23);
      ++v14;
    }

    while (v14 != 10);
    CGContextSetLineWidth(CurrentContext, 1.0 / v35);
    CGContextAddPath(CurrentContext, Mutable);
    CGContextSetRGBStrokeColor(CurrentContext, 0.45, 0.45, 0.45, 1.0);
    CGContextStrokePath(CurrentContext);
    CGPathRelease(Mutable);
    v24 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setAnimationDuration:0.0];
    cGImage = [v24 CGImage];
    rulerLayer2 = [(PKRulerLayer *)self rulerLayer];
    [rulerLayer2 setContents:cGImage];

    if ([(PKRulerLayer *)self zooming])
    {
      [(PKRulerLayer *)self rulerZoomStartCenterTValueOnScreen];
      v28 = v27;
      [(PKRulerLayer *)self rulerZoomStartScale];
      v30 = v29;
      [(PKRulerLayer *)self rulerZoomStartCenterTValueOnScreen];
      v32 = v31;
      rulerController = [(PKRulerLayer *)self rulerController];
      [(PKRulerLayer *)self rulerZoomStartTransform];
      CGAffineTransformTranslate(&v37, &v36, (v32 - v28 * 50.0 / floor(v30 * 50.0)) * 4000.0, 0.0);
      rulerLayer3 = [(PKRulerLayer *)self rulerLayer];
      v37 = v38;
      [rulerLayer3 setAffineTransform:&v37];
    }

    [MEMORY[0x1E6979518] commit];
  }
}

- (id)addOpacityAnimationOnLayer:(id)layer delegate:(id)delegate toOpacity:(double)opacity
{
  layerCopy = layer;
  delegateCopy = delegate;
  v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v9 setTimingFunction:v10];

  v11 = MEMORY[0x1E696AD98];
  [layerCopy opacity];
  v12 = [v11 numberWithFloat:?];
  [v9 setFromValue:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:opacity];
  [v9 setToValue:v13];

  [layerCopy opacity];
  [v9 setDuration:{vabdd_f64(v14, opacity) * 0.3}];
  if (delegateCopy)
  {
    [v9 setValue:layerCopy forKey:@"ICLayer"];
    [v9 setDelegate:delegateCopy];
  }

  *&v15 = opacity;
  [layerCopy setOpacity:v15];
  [layerCopy addAnimation:v9 forKey:@"fade"];

  return v9;
}

- (id)addScaleAnimationOnLayer:(id)layer delegate:(id)delegate fromScale:(double)scale toScale:(double)toScale
{
  layerCopy = layer;
  delegateCopy = delegate;
  v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v11 setTimingFunction:v12];

  v13 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v19, scale, scale, 1.0);
  v14 = [v13 valueWithCATransform3D:&v19];
  [v11 setFromValue:v14];

  v15 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v19, toScale, toScale, 1.0);
  v16 = [v15 valueWithCATransform3D:&v19];
  [v11 setToValue:v16];

  [v11 setDuration:0.2];
  [v11 setFillMode:*MEMORY[0x1E69797E8]];
  [v11 setRemovedOnCompletion:0];
  if (delegateCopy)
  {
    [v11 setValue:layerCopy forKey:@"ICLayer"];
    [v11 setDelegate:delegateCopy];
  }

  CATransform3DMakeScale(&v18, toScale, toScale, 1.0);
  v19 = v18;
  [layerCopy setTransform:&v19];
  [layerCopy addAnimation:v11 forKey:@"scale"];

  return v11;
}

- (void)addScaleAndOpacityAnimationOnLayer:(id)layer delegate:(id)delegate fromScale:(double)scale toScale:(double)toScale fromAlpha:(double)alpha toAlpha:(double)toAlpha
{
  v52[4] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  delegateCopy = delegate;
  if (scale <= toScale)
  {
    scaleCopy = toScale;
  }

  else
  {
    scaleCopy = scale;
  }

  if (scale <= toScale)
  {
    v16 = 0.133333333;
  }

  else
  {
    v16 = 0.0666666667;
  }

  if (scale <= toScale)
  {
    v17 = 0.0666666667;
  }

  else
  {
    v17 = 0.133333333;
  }

  v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v19 = *MEMORY[0x1E6979EB8];
  v20 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v18 setTimingFunction:v20];

  v21 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v51, scale, scale, 1.0);
  v22 = [v21 valueWithCATransform3D:&v51];
  [v18 setFromValue:v22];

  v23 = scaleCopy * 1.066;
  v24 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v51, v23, v23, 1.0);
  v25 = [v24 valueWithCATransform3D:&v51];
  [v18 setToValue:v25];

  [v18 setDuration:v16];
  v26 = *MEMORY[0x1E69797E8];
  [v18 setFillMode:*MEMORY[0x1E69797E8]];
  [v18 setRemovedOnCompletion:0];
  if (delegateCopy)
  {
    [v18 setValue:layerCopy forKey:@"ICLayer"];
    [v18 setDelegate:delegateCopy];
  }

  v27 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v28 = [MEMORY[0x1E69793D0] functionWithName:v19];
  [v27 setTimingFunction:v28];

  v29 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v51, v23, v23, 1.0);
  v30 = [v29 valueWithCATransform3D:&v51];
  [v27 setFromValue:v30];

  v31 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v51, toScale, toScale, 1.0);
  v32 = [v31 valueWithCATransform3D:&v51];
  [v27 setToValue:v32];

  [v27 setBeginTime:v16];
  [v27 setDuration:v17];
  [v27 setFillMode:v26];
  [v27 setRemovedOnCompletion:0];
  if (delegateCopy)
  {
    [v27 setValue:layerCopy forKey:@"ICLayer"];
    [v27 setDelegate:delegateCopy];
  }

  CATransform3DMakeScale(&v50, toScale, toScale, 1.0);
  v51 = v50;
  [layerCopy setTransform:&v51];
  v33 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v34 = [MEMORY[0x1E69793D0] functionWithName:v19];
  [v33 setTimingFunction:v34];

  *&v35 = alpha;
  v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
  [v33 setFromValue:v36];

  if (scale <= toScale)
  {
    alphaCopy = toAlpha;
  }

  else
  {
    alphaCopy = alpha;
  }

  v38 = alphaCopy;
  *&alphaCopy = v38;
  v39 = [MEMORY[0x1E696AD98] numberWithFloat:alphaCopy];
  [v33 setToValue:v39];

  [v33 setDuration:v16];
  [v33 setFillMode:v26];
  [v33 setRemovedOnCompletion:0];
  if (delegateCopy)
  {
    [v33 setValue:layerCopy forKey:@"ICLayer"];
    [v33 setDelegate:delegateCopy];
  }

  v40 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v41 = [MEMORY[0x1E69793D0] functionWithName:v19];
  [v40 setTimingFunction:v41];

  *&v42 = v38;
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
  [v40 setFromValue:v43];

  toAlphaCopy2 = toAlpha;
  *&v45 = toAlphaCopy2;
  v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
  [v40 setToValue:v46];

  [v40 setBeginTime:v16];
  [v40 setDuration:v17];
  [v40 setFillMode:v26];
  [v40 setRemovedOnCompletion:0];
  if (delegateCopy)
  {
    [v40 setValue:layerCopy forKey:@"ICLayer"];
    [v40 setDelegate:delegateCopy];
  }

  *&v47 = toAlphaCopy2;
  [layerCopy setOpacity:v47];
  animation = [MEMORY[0x1E6979308] animation];
  v52[0] = v18;
  v52[1] = v27;
  v52[2] = v33;
  v52[3] = v40;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
  [animation setAnimations:v49];

  [animation setDuration:0.2];
  [layerCopy addAnimation:animation forKey:@"scaleAndFade"];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  v4 = [stopCopy valueForKey:@"ICLayer"];

  if (v4)
  {
    v5 = [stopCopy valueForKey:@"ICLayer"];
    [v5 removeFromSuperlayer];
  }
}

- (void)showRuler
{
  rulerLayer = [(PKRulerLayer *)self rulerLayer];

  if (!rulerLayer)
  {
    [(PKRulerLayer *)self previousRulerTransform];
    v4 = sqrt(*(v34 + 1) * *(v34 + 1) + *v34 * *v34);
    if (v4 > 0.01)
    {
      [(PKRulerLayer *)self previousRulerTransform];
    }

    else
    {
      rulerLayer = [(PKRulerLayer *)self rulerController];
      defaultRulerTransform = [(PKRulerController *)rulerLayer defaultRulerTransform];
    }

    rulerController = [(PKRulerLayer *)self rulerController];
    if (rulerController)
    {
      v7 = v35[1];
      rulerController[7] = v35[0];
      rulerController[8] = v7;
      rulerController[9] = v35[2];
    }

    if (v4 <= 0.01)
    {
    }

    rulerController2 = [(PKRulerLayer *)self rulerController];
    if (rulerController2)
    {
      rulerController2[18] = 0;
    }

    v9 = objc_alloc_init(MEMORY[0x1E6979398]);
    [(PKRulerLayer *)self setRulerLayer:v9];

    [(PKRulerLayer *)self rulerWidth];
    v11 = v10;
    rulerLayer2 = [(PKRulerLayer *)self rulerLayer];
    [rulerLayer2 setFrame:{0.0, 0.0, 4000.0, v11}];

    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
    rulerLayer3 = [(PKRulerLayer *)self rulerLayer];
    [rulerLayer3 setPosition:{v13, v14}];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v18 = v17;
    rulerLayer4 = [(PKRulerLayer *)self rulerLayer];
    [rulerLayer4 setContentsScale:v18];

    [(PKRulerLayer *)self updateRulerTickMarkImage];
    v20 = *MEMORY[0x1E6979670];
    rulerLayer5 = [(PKRulerLayer *)self rulerLayer];
    [rulerLayer5 setContentsScaling:v20];

    rulerController3 = [(PKRulerLayer *)self rulerController];
    v23 = rulerController3;
    if (rulerController3)
    {
      v24 = rulerController3[8];
      v31 = rulerController3[7];
      v32 = v24;
      v33 = rulerController3[9];
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
    }

    rulerLayer6 = [(PKRulerLayer *)self rulerLayer];
    v34[0] = v31;
    v34[1] = v32;
    v34[2] = v33;
    [rulerLayer6 setAffineTransform:v34];

    rulerLayer7 = [(PKRulerLayer *)self rulerLayer];
    [(PKRulerLayer *)self addSublayer:rulerLayer7];

    rulerLayer8 = [(PKRulerLayer *)self rulerLayer];
    [rulerLayer8 setOpacity:0.0];

    [MEMORY[0x1E6979518] begin];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __25__PKRulerLayer_showRuler__block_invoke;
    v30[3] = &unk_1E82D6388;
    v30[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v30];
    rulerLayer9 = [(PKRulerLayer *)self rulerLayer];
    v29 = [(PKRulerLayer *)self addOpacityAnimationOnLayer:rulerLayer9 delegate:0 toOpacity:1.0];

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)hideRulerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  rulerLayer = [(PKRulerLayer *)self rulerLayer];

  if (rulerLayer)
  {
    if (animatedCopy)
    {
      [(PKRulerLayer *)self removeRulerMarkers];
      rulerAngleMarker = [(PKRulerLayer *)self rulerAngleMarker];
      v7 = [(PKRulerLayer *)self addOpacityAnimationOnLayer:rulerAngleMarker delegate:0 toOpacity:0.0];

      rulerLayer2 = [(PKRulerLayer *)self rulerLayer];
      v9 = [(PKRulerLayer *)self addOpacityAnimationOnLayer:rulerLayer2 delegate:self toOpacity:0.0];
    }

    else
    {
      rulerLayer3 = [(PKRulerLayer *)self rulerLayer];
      [rulerLayer3 removeFromSuperlayer];

      rulerLayer2 = [(PKRulerLayer *)self rulerDistanceHUD];
      [rulerLayer2 removeFromSuperlayer];
    }

    rulerLayer4 = [(PKRulerLayer *)self rulerLayer];
    v12 = rulerLayer4;
    if (rulerLayer4)
    {
      [rulerLayer4 affineTransform];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    [(PKRulerLayer *)self setPreviousRulerTransform:v13];
  }

  [(PKRulerLayer *)self setRulerLayer:0];
  [(PKRulerLayer *)self setRulerAngleMarker:0];
}

- (void)updateAngleWithAngleMarkerPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v88[1] = *MEMORY[0x1E69E9840];
  if ([(PKRulerLayer *)self compactRuler])
  {
    v6 = 14.0;
  }

  else
  {
    v6 = 18.0;
  }

  if ([(PKRulerLayer *)self shouldUseLargestRulerTextFontSize])
  {
    v6 = v6 + 10.0;
  }

  rulerAngleMarker = [(PKRulerLayer *)self rulerAngleMarker];

  if (!rulerAngleMarker)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6979398]);
    [(PKRulerLayer *)self setRulerAngleMarker:v8];

    rulerDialImage = [(PKRulerLayer *)self rulerDialImage];
    [rulerDialImage size];
    v11 = v10;
    v13 = v12;
    rulerAngleMarker2 = [(PKRulerLayer *)self rulerAngleMarker];
    [rulerAngleMarker2 setFrame:{0.0, 0.0, v11, v13}];

    cGImage = [rulerDialImage CGImage];
    rulerAngleMarker3 = [(PKRulerLayer *)self rulerAngleMarker];
    [rulerAngleMarker3 setContents:cGImage];

    rulerAngleMarker4 = [(PKRulerLayer *)self rulerAngleMarker];
    [rulerAngleMarker4 setOpacity:0.0];

    rulerAngleMarker5 = [(PKRulerLayer *)self rulerAngleMarker];
    rulerLayer = [(PKRulerLayer *)self rulerLayer];
    [(PKRulerLayer *)self insertSublayer:rulerAngleMarker5 above:rulerLayer];

    v20 = objc_alloc_init(MEMORY[0x1E6979398]);
    [(PKRulerLayer *)self setRulerAngleTick:v20];

    rulerDialLevelImage = [(PKRulerLayer *)self rulerDialLevelImage];
    [rulerDialLevelImage size];
    v23 = v22;
    v25 = v24;
    rulerAngleTick = [(PKRulerLayer *)self rulerAngleTick];
    [rulerAngleTick setFrame:{0.0, 0.0, v23, v25}];

    [rulerDialImage size];
    v28 = v27;
    [rulerDialImage size];
    v30 = v29;
    rulerAngleTick2 = [(PKRulerLayer *)self rulerAngleTick];
    [rulerAngleTick2 setPosition:{v28 * 0.5, v30 * 0.5}];

    cGImage2 = [rulerDialLevelImage CGImage];
    rulerAngleTick3 = [(PKRulerLayer *)self rulerAngleTick];
    [rulerAngleTick3 setContents:cGImage2];

    rulerAngleTick4 = [(PKRulerLayer *)self rulerAngleTick];
    LODWORD(v35) = 1.0;
    [rulerAngleTick4 setOpacity:v35];

    rulerAngleMarker6 = [(PKRulerLayer *)self rulerAngleMarker];
    rulerAngleTick5 = [(PKRulerLayer *)self rulerAngleTick];
    rulerAngleMarker7 = [(PKRulerLayer *)self rulerAngleMarker];
    [rulerAngleMarker6 insertSublayer:rulerAngleTick5 above:rulerAngleMarker7];

    v39 = objc_alloc_init(MEMORY[0x1E6979508]);
    [(PKRulerLayer *)self setRulerAngleText:v39];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v42 = v41;
    rulerAngleText = [(PKRulerLayer *)self rulerAngleText];
    [rulerAngleText setContentsScale:v42];

    rulerAngleText2 = [(PKRulerLayer *)self rulerAngleText];
    [rulerAngleText2 setFrame:{0.0, 0.0, 75.0, v6 + 4.0}];

    [rulerDialImage size];
    v46 = v45;
    [rulerDialImage size];
    v48 = v47;
    rulerAngleText3 = [(PKRulerLayer *)self rulerAngleText];
    [rulerAngleText3 setPosition:{v46 * 0.5, v48 * 0.5}];

    rulerAngleText4 = [(PKRulerLayer *)self rulerAngleText];
    [rulerAngleText4 setAlignmentMode:*MEMORY[0x1E6979560]];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    rulerAngleText5 = [(PKRulerLayer *)self rulerAngleText];
    [rulerAngleText5 setForegroundColor:cGColor];

    rulerAngleMarker8 = [(PKRulerLayer *)self rulerAngleMarker];
    rulerAngleText6 = [(PKRulerLayer *)self rulerAngleText];
    rulerAngleTick6 = [(PKRulerLayer *)self rulerAngleTick];
    [rulerAngleMarker8 insertSublayer:rulerAngleText6 above:rulerAngleTick6];
  }

  rulerAngleMarker9 = [(PKRulerLayer *)self rulerAngleMarker];
  [rulerAngleMarker9 opacity];
  v59 = v58;
  rulerLayer2 = [(PKRulerLayer *)self rulerLayer];
  [rulerLayer2 opacity];
  v62 = v61;

  if (v59 < v62)
  {
    rulerAngleMarker10 = [(PKRulerLayer *)self rulerAngleMarker];
    v64 = [(PKRulerLayer *)self addOpacityAnimationOnLayer:rulerAngleMarker10 delegate:0 toOpacity:1.0];
  }

  rulerAngleMarker11 = [(PKRulerLayer *)self rulerAngleMarker];
  [rulerAngleMarker11 setPosition:{x, y}];

  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  rulerLayer3 = [(PKRulerLayer *)self rulerLayer];
  v67 = rulerLayer3;
  if (rulerLayer3)
  {
    [rulerLayer3 affineTransform];
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
  }

  v86 = 0uLL;
  v81 = v84;
  v82 = v85;
  v83 = 0uLL;
  rulerAngleTick7 = [(PKRulerLayer *)self rulerAngleTick];
  v80[0] = v81;
  v80[1] = v82;
  v80[2] = 0uLL;
  [rulerAngleTick7 setAffineTransform:v80];

  userAngle = [(PKRulerLayer *)self userAngle];
  v70 = objc_alloc(MEMORY[0x1E696AD40]);
  v71 = MEMORY[0x1E696AEC0];
  v72 = _PencilKitBundle();
  v73 = [v72 localizedStringForKey:@"°%d°" value:@"°%d°" table:@"Localizable"];
  v74 = [v71 localizedStringWithFormat:v73, userAngle];
  v87 = *MEMORY[0x1E69DB648];
  v75 = [MEMORY[0x1E69DB878] systemFontOfSize:v6];
  v88[0] = v75;
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
  v77 = [v70 initWithString:v74 attributes:v76];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v77 addAttribute:*MEMORY[0x1E69DB650] value:clearColor range:{0, 1}];

  rulerAngleText7 = [(PKRulerLayer *)self rulerAngleText];
  [rulerAngleText7 setString:v77];
}

- (int64_t)currentAngle
{
  [(PKRulerLayer *)self rulerTransform];
  v2 = DKDTransformAngle(&v6);
  v3 = fmod(-v2, 360.0);
  if (v2 >= -360.0 && v2 <= 0.0)
  {
    v3 = -v2;
  }

  if (v3 < 0.0)
  {
    v3 = v3 + 360.0;
  }

  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return llround(v3);
}

- (int64_t)userAngle
{
  currentAngle = [(PKRulerLayer *)self currentAngle];
  if (currentAngle % 180 <= 90)
  {
    return currentAngle % 180;
  }

  else
  {
    return 180 - currentAngle % 180;
  }
}

- (void)hideRulerAngleMarker
{
  rulerAngleMarker = [(PKRulerLayer *)self rulerAngleMarker];
  v3 = [PKRulerLayer addOpacityAnimationOnLayer:"addOpacityAnimationOnLayer:delegate:toOpacity:" delegate:0.0 toOpacity:?];
}

- (BOOL)viewPointInRuler:(CGPoint)ruler
{
  y = ruler.y;
  x = ruler.x;
  rulerLayer = [(PKRulerLayer *)self rulerLayer];

  if (!rulerLayer)
  {
    return 0;
  }

  rulerLayer2 = [(PKRulerLayer *)self rulerLayer];
  [rulerLayer2 convertPoint:self fromLayer:{x, y}];
  v9 = v8;

  [(PKRulerLayer *)self rulerWidth];
  if (v9 <= v10 * 0.15)
  {
    return 0;
  }

  [(PKRulerLayer *)self rulerWidth];
  return v9 < v11 * 0.85;
}

- (CGPoint)getRulerCenterLineOriginAndTangent:(CGPoint *)tangent
{
  memset(&v26, 0, sizeof(v26));
  rulerLayer = [(PKRulerLayer *)self rulerLayer];
  v6 = rulerLayer;
  if (rulerLayer)
  {
    [rulerLayer affineTransform];
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  memset(&v25, 0, sizeof(v25));
  rulerController = [(PKRulerLayer *)self rulerController];
  v8 = rulerController;
  if (rulerController && (WeakRetained = objc_loadWeakRetained((rulerController + 40))) != 0)
  {
    v10 = WeakRetained;
    [WeakRetained strokeTransform];
  }

  else
  {
    v10 = 0;
    memset(&v24, 0, sizeof(v24));
  }

  CGAffineTransformInvert(&v25, &v24);

  t1 = v26;
  v22 = v25;
  CGAffineTransformConcat(&v24, &t1, &v22);
  v26 = v24;
  _Q1 = *&v24.a;
  v12 = *&v24.tx;
  v13 = vmulq_f64(*&v24.c, 0);
  if (tangent)
  {
    *tangent = vaddq_f64(*&v24.tx, vmlaq_f64(v13, vdupq_n_s64(0x409F400000000000uLL), *&v24.a));
  }

  _D4 = 0xC09F400000000000;
  v15 = *&v12 + v13.f64[0] + *&_Q1 * -2000.0;
  __asm { FMLA            D3, D4, V1.D[1] }

  v21 = *(&v12 + 1) + _D3;
  result.y = v21;
  result.x = v15;
  return result;
}

- (double)_fontSizeForRulerTextHUD:(id)d
{
  v33[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = [&stru_1F476BD20 stringByPaddingToLength:objc_msgSend(dCopy withString:"length") startingAtIndex:{@"X", 0}];
  [(PKRulerLayer *)self _distanceMarkerFontSize];
  v6 = v5;
  v7 = *MEMORY[0x1E69DB648];
  v32 = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
  v33[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

  [(CATextLayer *)self->_rulerDistanceText frame];
  [v4 boundingRectWithSize:1 options:v9 attributes:0 context:{1.79769313e308, v10}];
  v12 = v11;
  [(CATextLayer *)self->_rulerDistanceText frame];
  v14 = v13 - v12;
  if (v13 - v12 <= 3.0)
  {
    v16 = v14 > 3.5 && v14 < 3.0;
    v15 = 8.0;
    v17 = 8.0;
    if (v16 || v6 != 8.0)
    {
      v19 = v9;
      do
      {
        v15 = (v6 + v17) * 0.5;
        v30 = v7;
        v20 = [MEMORY[0x1E69DB878] systemFontOfSize:v15];
        v31 = v20;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

        [(CATextLayer *)self->_rulerDistanceText frame];
        [v4 boundingRectWithSize:1 options:v9 attributes:0 context:{1.79769313e308, v21}];
        v23 = v22;
        [(CATextLayer *)self->_rulerDistanceText frame];
        v25 = v24 - v23;
        if (v24 - v23 < 3.0)
        {
          v6 = (v6 + v17) * 0.5;
        }

        else
        {
          v17 = (v6 + v17) * 0.5;
        }

        v27 = (v25 <= 3.5 || v25 >= 3.0) && v15 == v17;
        v19 = v9;
      }

      while (!v27);
    }
  }

  else
  {
    v15 = v6;
  }

  return v15;
}

- (id)_textForRulerHUD:(double)d
{
  v31[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_rulerController);
  v6 = WeakRetained;
  if (WeakRetained && (v7 = objc_loadWeakRetained(WeakRetained + 6)) != 0)
  {
    v8 = v7;
    v9 = objc_loadWeakRetained(&self->_rulerController);
    v10 = v9;
    if (v9)
    {
      v11 = objc_loadWeakRetained(v9 + 6);
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_rulerController);
      v14 = v13;
      if (v13)
      {
        v15 = objc_loadWeakRetained(v13 + 6);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v15 rulerHostingStringFromPixels:d];

      [(PKRulerLayer *)self _fontSizeForRulerTextHUD:v16];
      v18 = v17;
      v19 = objc_alloc(MEMORY[0x1E696AAB0]);
      v20 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@", v16];
      v30 = *MEMORY[0x1E69DB648];
      v21 = [MEMORY[0x1E69DB878] systemFontOfSize:v18];
      v31[0] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v23 = [v19 initWithString:v20 attributes:v22];

      goto LABEL_11;
    }
  }

  else
  {
  }

  v16 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", d];
  [(PKRulerLayer *)self _fontSizeForRulerTextHUD:v16];
  v25 = v24;
  v26 = objc_alloc(MEMORY[0x1E696AAB0]);
  v28 = *MEMORY[0x1E69DB648];
  v20 = [MEMORY[0x1E69DB878] systemFontOfSize:v25];
  v29 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v23 = [v26 initWithString:v16 attributes:v21];
LABEL_11:

  return v23;
}

- (double)_distanceMarkerFontSize
{
  compactRuler = [(PKRulerLayer *)self compactRuler];
  result = 18.0;
  if (compactRuler)
  {
    return 14.0;
  }

  return result;
}

- (void)updateDistanceMarkerWithSpacing:(double)spacing
{
  v86[1] = *MEMORY[0x1E69E9840];
  if ([(PKRulerLayer *)self compactRuler])
  {
    v5 = 36.0;
  }

  else
  {
    v5 = 49.0;
  }

  [(PKRulerLayer *)self _distanceMarkerFontSize];
  v7 = v6;
  if ([(PKRulerLayer *)self compactRuler])
  {
    v8 = 9.0;
  }

  else
  {
    v8 = 13.0;
  }

  shouldUseLargestRulerTextFontSize = [(PKRulerLayer *)self shouldUseLargestRulerTextFontSize];
  v10 = v7 + 10.0;
  if (shouldUseLargestRulerTextFontSize)
  {
    v11 = v8 + 7.0;
  }

  else
  {
    v11 = v8;
  }

  if (shouldUseLargestRulerTextFontSize)
  {
    v12 = v7 + 10.0;
  }

  else
  {
    v12 = v7;
  }

  if (shouldUseLargestRulerTextFontSize)
  {
    v13 = v5 + 26.0;
  }

  else
  {
    v13 = v5;
  }

  [(PKRulerLayer *)self maxTValueForSnappedDrawing:v5 + 26.0];
  v15 = v14;
  [(PKRulerLayer *)self minTValueForSnappedDrawing];
  v17 = v16;
  rulerDistanceText = [(PKRulerLayer *)self rulerDistanceText];

  if (!rulerDistanceText)
  {
    [(PKRulerLayer *)self maxTValueForSnappedDrawing];
    v20 = v19;
    [(PKRulerLayer *)self originTValueForSnappedDrawing];
    v22 = vabdd_f64(v20, v21);
    [(PKRulerLayer *)self minTValueForSnappedDrawing];
    v24 = v23;
    [(PKRulerLayer *)self originTValueForSnappedDrawing];
    [(PKRulerLayer *)self setIsRulerDrawingMovingToEndOfRuler:v22 > vabdd_f64(v24, v25)];
    v26 = objc_alloc_init(MEMORY[0x1E6979398]);
    [(PKRulerLayer *)self setRulerDistanceHUD:v26];

    rulerDistanceHUD = [(PKRulerLayer *)self rulerDistanceHUD];
    [rulerDistanceHUD setFrame:{0.0, 0.0, v13, v13}];

    v28 = [MEMORY[0x1E69DC888] colorWithWhite:0.96 alpha:0.8];
    cGColor = [v28 CGColor];
    rulerDistanceHUD2 = [(PKRulerLayer *)self rulerDistanceHUD];
    [rulerDistanceHUD2 setBackgroundColor:cGColor];

    rulerDistanceHUD3 = [(PKRulerLayer *)self rulerDistanceHUD];
    [rulerDistanceHUD3 setCornerRadius:v13 * 0.5];

    rulerDistanceHUD4 = [(PKRulerLayer *)self rulerDistanceHUD];
    rulerLayer = [(PKRulerLayer *)self rulerLayer];
    [(PKRulerLayer *)self insertSublayer:rulerDistanceHUD4 above:rulerLayer];

    v34 = objc_alloc_init(MEMORY[0x1E6979508]);
    [(PKRulerLayer *)self setRulerDistanceText:v34];

    v35 = objc_alloc(MEMORY[0x1E696AAB0]);
    1234567890 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", 1234567890];
    v85 = *MEMORY[0x1E69DB648];
    v37 = [MEMORY[0x1E69DB878] systemFontOfSize:v12];
    v86[0] = v37;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    v39 = [v35 initWithString:1234567890 attributes:v38];
    [v39 size];
    v41 = v40;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v43 = blackColor;
    cGColor2 = [blackColor CGColor];
    rulerDistanceText2 = [(PKRulerLayer *)self rulerDistanceText];
    [rulerDistanceText2 setForegroundColor:cGColor2];

    rulerDistanceText3 = [(PKRulerLayer *)self rulerDistanceText];
    [rulerDistanceText3 setFontSize:v12];

    rulerDistanceText4 = [(PKRulerLayer *)self rulerDistanceText];
    [rulerDistanceText4 setFrame:{0.0, v11, v13, v41}];

    rulerDistanceText5 = [(PKRulerLayer *)self rulerDistanceText];
    [rulerDistanceText5 setAlignmentMode:*MEMORY[0x1E6979560]];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v51 = v50;
    rulerDistanceText6 = [(PKRulerLayer *)self rulerDistanceText];
    [rulerDistanceText6 setContentsScale:v51];

    rulerDistanceHUD5 = [(PKRulerLayer *)self rulerDistanceHUD];
    rulerDistanceText7 = [(PKRulerLayer *)self rulerDistanceText];
    rulerDistanceHUD6 = [(PKRulerLayer *)self rulerDistanceHUD];
    [rulerDistanceHUD5 insertSublayer:rulerDistanceText7 above:rulerDistanceHUD6];

    rulerDistanceHUD7 = [(PKRulerLayer *)self rulerDistanceHUD];
    [(PKRulerLayer *)self addScaleAndOpacityAnimationOnLayer:rulerDistanceHUD7 delegate:0 fromScale:0.25 toScale:1.0 fromAlpha:0.0 toAlpha:1.0];
  }

  [(PKRulerLayer *)self currentTValueForSnappedDrawing];
  v58 = v57;
  rulerLayer2 = [(PKRulerLayer *)self rulerLayer];
  v60 = rulerLayer2;
  if (rulerLayer2)
  {
    [rulerLayer2 affineTransform];
    v80 = v82;
    v81 = v84;
    v61 = vmulq_f64(v83, 0);
  }

  else
  {
    v61 = 0uLL;
    v80 = 0u;
    v81 = 0u;
  }

  v79 = v61;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v78 = v63;
  rulerDistanceHUD8 = [(PKRulerLayer *)self rulerDistanceHUD];
  [rulerDistanceHUD8 setPosition:{vmulq_n_f64(vrndaq_f64(vmulq_n_f64(vaddq_f64(v81, vmlaq_n_f64(v79, v80, v58 + -2000.0)), v78)), 1.0 / v78)}];

  v65 = (v15 - v17) / (spacing * 0.5);
  v66 = [(PKRulerLayer *)self _textForRulerHUD:v65];
  rulerDistanceHUD9 = [(PKRulerLayer *)self rulerDistanceHUD];
  [rulerDistanceHUD9 size];
  v69 = v68;
  rulerDistanceHUD10 = [(PKRulerLayer *)self rulerDistanceHUD];
  [rulerDistanceHUD10 size];
  v72 = v71;
  [v66 size];
  v74 = v73;

  rulerDistanceText8 = [(PKRulerLayer *)self rulerDistanceText];
  [rulerDistanceText8 setFrame:{v69 * 0.5 - v13 * 0.5, v72 * 0.5 - v74 * 0.5, v13, v74}];

  v76 = [(PKRulerLayer *)self _textForRulerHUD:v65];
  rulerDistanceText9 = [(PKRulerLayer *)self rulerDistanceText];
  [rulerDistanceText9 setString:v76];
}

- (void)updateRulerMarkerForLocation:(CGPoint)location firstTouch:(BOOL)touch
{
  touchCopy = touch;
  y = location.y;
  x = location.x;
  v29 = *MEMORY[0x1E69E9840];
  rulerLayer = [(PKRulerLayer *)self rulerLayer];
  if (!rulerLayer)
  {
    return;
  }

  rulerController = [(PKRulerLayer *)self rulerController];
  v10 = rulerController;
  if (rulerController)
  {
    WeakRetained = objc_loadWeakRetained((rulerController + 40));
  }

  else
  {
    WeakRetained = 0;
  }

  if (![WeakRetained isDrawing])
  {

    if (!touchCopy)
    {
      return;
    }

    goto LABEL_10;
  }

  rulerController2 = [(PKRulerLayer *)self rulerController];
  v13 = rulerController2;
  if (rulerController2)
  {
    v14 = objc_loadWeakRetained((rulerController2 + 40));
  }

  else
  {
    v14 = 0;
  }

  drawingController = [v14 drawingController];
  inputController = [(PKController *)drawingController inputController];
  v17 = [inputController isSnappedToRuler] | touchCopy;

  if (v17)
  {
LABEL_10:
    [(PKRulerLayer *)self getRulerCenterLineOriginAndTangent:&v27];
    *&v26[6] = v18;
    *&v26[7] = v19;
    v20 = ((y - v19) * (v28 - v19) + (x - v18) * (v27 - v18)) / ((v28 - v19) * (v28 - v19) + (v27 - v18) * (v27 - v18)) * 4000.0;
    [(PKRulerLayer *)self setCurrentTValueForSnappedDrawing:v20];
    if (touchCopy)
    {
      [(PKRulerLayer *)self setMinTValueForSnappedDrawing:v20];
      [(PKRulerLayer *)self setMaxTValueForSnappedDrawing:v20];
      [(PKRulerLayer *)self setOriginTValueForSnappedDrawing:v20];
    }

    else
    {
      [(PKRulerLayer *)self minTValueForSnappedDrawing];
      [(PKRulerLayer *)self setMinTValueForSnappedDrawing:fmin(v21, v20)];
      [(PKRulerLayer *)self maxTValueForSnappedDrawing];
      [(PKRulerLayer *)self setMaxTValueForSnappedDrawing:fmax(v22, v20)];
      rulerController3 = [(PKRulerLayer *)self rulerController];
      [(PKRulerController *)rulerController3 canvasTransform];
      v24 = *v26;
      v25 = *&v26[1];

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setAnimationDuration:0.0];
      [(PKRulerLayer *)self updateDistanceMarkerWithSpacing:sqrt(v25 * v25 + v24 * v24)];
      [MEMORY[0x1E6979518] commit];
    }
  }
}

- (void)removeRulerMarkers
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  rulerLayer = [(PKRulerLayer *)self rulerLayer];
  sublayers = [rulerLayer sublayers];
  v5 = [sublayers copy];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v8++) removeFromSuperlayer];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  rulerDistanceHUD = [(PKRulerLayer *)self rulerDistanceHUD];
  [(PKRulerLayer *)self addScaleAndOpacityAnimationOnLayer:rulerDistanceHUD delegate:self fromScale:1.0 toScale:0.25 fromAlpha:1.0 toAlpha:0.0];

  [(PKRulerLayer *)self setRulerDistanceHUD:0];
  [(PKRulerLayer *)self setRulerDistanceText:0];
  rulerAngleMarker = [(PKRulerLayer *)self rulerAngleMarker];
  [rulerAngleMarker removeFromSuperlayer];

  [(PKRulerLayer *)self setRulerAngleMarker:0];
  [(PKRulerLayer *)self setRulerDistanceText:0];
}

- (PKRulerController)rulerController
{
  WeakRetained = objc_loadWeakRetained(&self->_rulerController);

  return WeakRetained;
}

- (CGAffineTransform)previousRulerTransform
{
  v3 = *&self[4].b;
  *&retstr->a = *&self[3].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].d;
  return self;
}

- (void)setPreviousRulerTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_previousRulerTransform.a = *&transform->a;
  *&self->_previousRulerTransform.c = v4;
  *&self->_previousRulerTransform.tx = v3;
}

- (CGAffineTransform)rulerZoomStartTransform
{
  v3 = *&self[5].b;
  *&retstr->a = *&self[4].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[5].d;
  return self;
}

- (void)setRulerZoomStartTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_rulerZoomStartTransform.a = *&transform->a;
  *&self->_rulerZoomStartTransform.c = v4;
  *&self->_rulerZoomStartTransform.tx = v3;
}

@end