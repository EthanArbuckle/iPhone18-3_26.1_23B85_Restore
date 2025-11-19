@interface PKRulerLayer
- (BOOL)compactRuler;
- (BOOL)viewPointInRuler:(CGPoint)a3;
- (CGAffineTransform)previousRulerTransform;
- (CGAffineTransform)rulerTransform;
- (CGAffineTransform)rulerZoomStartTransform;
- (CGPoint)getRulerCenterLineOriginAndTangent:(CGPoint *)a3;
- (PKRulerController)rulerController;
- (PKRulerLayer)initWithRulerController:(id)a3;
- (double)_distanceMarkerFontSize;
- (double)_fontSizeForRulerTextHUD:(id)a3;
- (double)rulerWidth;
- (id)_rulerImage;
- (id)_textForRulerHUD:(double)a3;
- (id)addOpacityAnimationOnLayer:(id)a3 delegate:(id)a4 toOpacity:(double)a5;
- (id)addScaleAnimationOnLayer:(id)a3 delegate:(id)a4 fromScale:(double)a5 toScale:(double)a6;
- (id)rulerDialImage;
- (id)rulerDialLevelImage;
- (int64_t)currentAngle;
- (int64_t)userAngle;
- (void)addScaleAndOpacityAnimationOnLayer:(id)a3 delegate:(id)a4 fromScale:(double)a5 toScale:(double)a6 fromAlpha:(double)a7 toAlpha:(double)a8;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)hideRulerAngleMarker;
- (void)hideRulerAnimated:(BOOL)a3;
- (void)removeRulerMarkers;
- (void)setPreviousRulerTransform:(CGAffineTransform *)a3;
- (void)setRulerTransform:(CGAffineTransform *)a3;
- (void)setRulerZoomStartTransform:(CGAffineTransform *)a3;
- (void)showRuler;
- (void)updateAngleWithAngleMarkerPosition:(CGPoint)a3;
- (void)updateDistanceMarkerWithSpacing:(double)a3;
- (void)updateRulerAlpha:(double)a3;
- (void)updateRulerMarkerForLocation:(CGPoint)a3 firstTouch:(BOOL)a4;
- (void)updateRulerTickMarkImage;
@end

@implementation PKRulerLayer

- (PKRulerLayer)initWithRulerController:(id)a3
{
  objc_initWeak(&location, a3);
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
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

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
  v2 = [(PKRulerLayer *)self _rulerImage];
  [v2 size];
  v4 = v3;

  return v4;
}

- (void)updateRulerAlpha:(double)a3
{
  v14 = [(PKRulerLayer *)self rulerLayer];
  [v14 opacity];
  v6 = v5;

  if (v6 != a3)
  {
    v7 = a3;
    v15 = [(PKRulerLayer *)self rulerLayer];
    *&v8 = v7;
    [v15 setOpacity:v8];

    v9 = [(PKRulerLayer *)self rulerController];
    if (v9)
    {
      v10 = v9[18];

      if (v10 != 1)
      {
        return;
      }

      v16 = [(PKRulerLayer *)self rulerAngleMarker];
      *&v11 = v7;
      [v16 setOpacity:v11];

      v17 = [(PKRulerLayer *)self rulerAngleTick];
      *&v12 = v7;
      [v17 setOpacity:v12];

      v18 = [(PKRulerLayer *)self rulerAngleText];
      *&v13 = v7;
      [v18 setOpacity:v13];
    }

    else
    {
      v18 = 0;
    }
  }
}

- (CGAffineTransform)rulerTransform
{
  v4 = [(PKRulerLayer *)self rulerLayer];
  v6 = v4;
  if (v4)
  {
    [v4 affineTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setRulerTransform:(CGAffineTransform *)a3
{
  v3 = [(PKRulerLayer *)self rulerLayer:*&a3->a];
  [v3 setAffineTransform:&v4];
}

- (void)updateRulerTickMarkImage
{
  v3 = [(PKRulerLayer *)self rulerLayer];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v6 = v5;

    [(PKRulerLayer *)self rulerWidth];
    v8 = v7;
    v39.width = 50.0;
    v39.height = v8;
    UIGraphicsBeginImageContextWithOptions(v39, 0, v6);
    CurrentContext = UIGraphicsGetCurrentContext();
    v10 = [(PKRulerLayer *)self _rulerImage];
    [(PKRulerLayer *)self rulerWidth];
    [v10 drawInRect:{0.0, 0.0, 50.0, v11}];

    Mutable = CGPathCreateMutable();
    v13 = [(PKRulerLayer *)self compactRuler];
    v14 = 0;
    if (v13)
    {
      v15 = 10.0;
    }

    else
    {
      v15 = 16.0;
    }

    if (v13)
    {
      v16 = 6.0;
    }

    else
    {
      v16 = 8.0;
    }

    if (v13)
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
    v25 = [v24 CGImage];
    v26 = [(PKRulerLayer *)self rulerLayer];
    [v26 setContents:v25];

    if ([(PKRulerLayer *)self zooming])
    {
      [(PKRulerLayer *)self rulerZoomStartCenterTValueOnScreen];
      v28 = v27;
      [(PKRulerLayer *)self rulerZoomStartScale];
      v30 = v29;
      [(PKRulerLayer *)self rulerZoomStartCenterTValueOnScreen];
      v32 = v31;
      v33 = [(PKRulerLayer *)self rulerController];
      [(PKRulerLayer *)self rulerZoomStartTransform];
      CGAffineTransformTranslate(&v37, &v36, (v32 - v28 * 50.0 / floor(v30 * 50.0)) * 4000.0, 0.0);
      v34 = [(PKRulerLayer *)self rulerLayer];
      v37 = v38;
      [v34 setAffineTransform:&v37];
    }

    [MEMORY[0x1E6979518] commit];
  }
}

- (id)addOpacityAnimationOnLayer:(id)a3 delegate:(id)a4 toOpacity:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v9 setTimingFunction:v10];

  v11 = MEMORY[0x1E696AD98];
  [v7 opacity];
  v12 = [v11 numberWithFloat:?];
  [v9 setFromValue:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  [v9 setToValue:v13];

  [v7 opacity];
  [v9 setDuration:{vabdd_f64(v14, a5) * 0.3}];
  if (v8)
  {
    [v9 setValue:v7 forKey:@"ICLayer"];
    [v9 setDelegate:v8];
  }

  *&v15 = a5;
  [v7 setOpacity:v15];
  [v7 addAnimation:v9 forKey:@"fade"];

  return v9;
}

- (id)addScaleAnimationOnLayer:(id)a3 delegate:(id)a4 fromScale:(double)a5 toScale:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v11 setTimingFunction:v12];

  v13 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v19, a5, a5, 1.0);
  v14 = [v13 valueWithCATransform3D:&v19];
  [v11 setFromValue:v14];

  v15 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v19, a6, a6, 1.0);
  v16 = [v15 valueWithCATransform3D:&v19];
  [v11 setToValue:v16];

  [v11 setDuration:0.2];
  [v11 setFillMode:*MEMORY[0x1E69797E8]];
  [v11 setRemovedOnCompletion:0];
  if (v10)
  {
    [v11 setValue:v9 forKey:@"ICLayer"];
    [v11 setDelegate:v10];
  }

  CATransform3DMakeScale(&v18, a6, a6, 1.0);
  v19 = v18;
  [v9 setTransform:&v19];
  [v9 addAnimation:v11 forKey:@"scale"];

  return v11;
}

- (void)addScaleAndOpacityAnimationOnLayer:(id)a3 delegate:(id)a4 fromScale:(double)a5 toScale:(double)a6 fromAlpha:(double)a7 toAlpha:(double)a8
{
  v52[4] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  if (a5 <= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = a5;
  }

  if (a5 <= a6)
  {
    v16 = 0.133333333;
  }

  else
  {
    v16 = 0.0666666667;
  }

  if (a5 <= a6)
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
  CATransform3DMakeScale(&v51, a5, a5, 1.0);
  v22 = [v21 valueWithCATransform3D:&v51];
  [v18 setFromValue:v22];

  v23 = v15 * 1.066;
  v24 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v51, v23, v23, 1.0);
  v25 = [v24 valueWithCATransform3D:&v51];
  [v18 setToValue:v25];

  [v18 setDuration:v16];
  v26 = *MEMORY[0x1E69797E8];
  [v18 setFillMode:*MEMORY[0x1E69797E8]];
  [v18 setRemovedOnCompletion:0];
  if (v14)
  {
    [v18 setValue:v13 forKey:@"ICLayer"];
    [v18 setDelegate:v14];
  }

  v27 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v28 = [MEMORY[0x1E69793D0] functionWithName:v19];
  [v27 setTimingFunction:v28];

  v29 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v51, v23, v23, 1.0);
  v30 = [v29 valueWithCATransform3D:&v51];
  [v27 setFromValue:v30];

  v31 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v51, a6, a6, 1.0);
  v32 = [v31 valueWithCATransform3D:&v51];
  [v27 setToValue:v32];

  [v27 setBeginTime:v16];
  [v27 setDuration:v17];
  [v27 setFillMode:v26];
  [v27 setRemovedOnCompletion:0];
  if (v14)
  {
    [v27 setValue:v13 forKey:@"ICLayer"];
    [v27 setDelegate:v14];
  }

  CATransform3DMakeScale(&v50, a6, a6, 1.0);
  v51 = v50;
  [v13 setTransform:&v51];
  v33 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v34 = [MEMORY[0x1E69793D0] functionWithName:v19];
  [v33 setTimingFunction:v34];

  *&v35 = a7;
  v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
  [v33 setFromValue:v36];

  if (a5 <= a6)
  {
    v37 = a8;
  }

  else
  {
    v37 = a7;
  }

  v38 = v37;
  *&v37 = v38;
  v39 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
  [v33 setToValue:v39];

  [v33 setDuration:v16];
  [v33 setFillMode:v26];
  [v33 setRemovedOnCompletion:0];
  if (v14)
  {
    [v33 setValue:v13 forKey:@"ICLayer"];
    [v33 setDelegate:v14];
  }

  v40 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v41 = [MEMORY[0x1E69793D0] functionWithName:v19];
  [v40 setTimingFunction:v41];

  *&v42 = v38;
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
  [v40 setFromValue:v43];

  v44 = a8;
  *&v45 = v44;
  v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
  [v40 setToValue:v46];

  [v40 setBeginTime:v16];
  [v40 setDuration:v17];
  [v40 setFillMode:v26];
  [v40 setRemovedOnCompletion:0];
  if (v14)
  {
    [v40 setValue:v13 forKey:@"ICLayer"];
    [v40 setDelegate:v14];
  }

  *&v47 = v44;
  [v13 setOpacity:v47];
  v48 = [MEMORY[0x1E6979308] animation];
  v52[0] = v18;
  v52[1] = v27;
  v52[2] = v33;
  v52[3] = v40;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
  [v48 setAnimations:v49];

  [v48 setDuration:0.2];
  [v13 addAnimation:v48 forKey:@"scaleAndFade"];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v6 = a3;
  v4 = [v6 valueForKey:@"ICLayer"];

  if (v4)
  {
    v5 = [v6 valueForKey:@"ICLayer"];
    [v5 removeFromSuperlayer];
  }
}

- (void)showRuler
{
  v3 = [(PKRulerLayer *)self rulerLayer];

  if (!v3)
  {
    [(PKRulerLayer *)self previousRulerTransform];
    v4 = sqrt(*(v34 + 1) * *(v34 + 1) + *v34 * *v34);
    if (v4 > 0.01)
    {
      [(PKRulerLayer *)self previousRulerTransform];
    }

    else
    {
      v3 = [(PKRulerLayer *)self rulerController];
      v5 = [(PKRulerController *)v3 defaultRulerTransform];
    }

    v6 = [(PKRulerLayer *)self rulerController];
    if (v6)
    {
      v7 = v35[1];
      v6[7] = v35[0];
      v6[8] = v7;
      v6[9] = v35[2];
    }

    if (v4 <= 0.01)
    {
    }

    v8 = [(PKRulerLayer *)self rulerController];
    if (v8)
    {
      v8[18] = 0;
    }

    v9 = objc_alloc_init(MEMORY[0x1E6979398]);
    [(PKRulerLayer *)self setRulerLayer:v9];

    [(PKRulerLayer *)self rulerWidth];
    v11 = v10;
    v12 = [(PKRulerLayer *)self rulerLayer];
    [v12 setFrame:{0.0, 0.0, 4000.0, v11}];

    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
    v15 = [(PKRulerLayer *)self rulerLayer];
    [v15 setPosition:{v13, v14}];

    v16 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v16 scale];
    v18 = v17;
    v19 = [(PKRulerLayer *)self rulerLayer];
    [v19 setContentsScale:v18];

    [(PKRulerLayer *)self updateRulerTickMarkImage];
    v20 = *MEMORY[0x1E6979670];
    v21 = [(PKRulerLayer *)self rulerLayer];
    [v21 setContentsScaling:v20];

    v22 = [(PKRulerLayer *)self rulerController];
    v23 = v22;
    if (v22)
    {
      v24 = v22[8];
      v31 = v22[7];
      v32 = v24;
      v33 = v22[9];
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
    }

    v25 = [(PKRulerLayer *)self rulerLayer];
    v34[0] = v31;
    v34[1] = v32;
    v34[2] = v33;
    [v25 setAffineTransform:v34];

    v26 = [(PKRulerLayer *)self rulerLayer];
    [(PKRulerLayer *)self addSublayer:v26];

    v27 = [(PKRulerLayer *)self rulerLayer];
    [v27 setOpacity:0.0];

    [MEMORY[0x1E6979518] begin];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __25__PKRulerLayer_showRuler__block_invoke;
    v30[3] = &unk_1E82D6388;
    v30[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v30];
    v28 = [(PKRulerLayer *)self rulerLayer];
    v29 = [(PKRulerLayer *)self addOpacityAnimationOnLayer:v28 delegate:0 toOpacity:1.0];

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)hideRulerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKRulerLayer *)self rulerLayer];

  if (v5)
  {
    if (v3)
    {
      [(PKRulerLayer *)self removeRulerMarkers];
      v6 = [(PKRulerLayer *)self rulerAngleMarker];
      v7 = [(PKRulerLayer *)self addOpacityAnimationOnLayer:v6 delegate:0 toOpacity:0.0];

      v8 = [(PKRulerLayer *)self rulerLayer];
      v9 = [(PKRulerLayer *)self addOpacityAnimationOnLayer:v8 delegate:self toOpacity:0.0];
    }

    else
    {
      v10 = [(PKRulerLayer *)self rulerLayer];
      [v10 removeFromSuperlayer];

      v8 = [(PKRulerLayer *)self rulerDistanceHUD];
      [v8 removeFromSuperlayer];
    }

    v11 = [(PKRulerLayer *)self rulerLayer];
    v12 = v11;
    if (v11)
    {
      [v11 affineTransform];
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

- (void)updateAngleWithAngleMarkerPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

  v7 = [(PKRulerLayer *)self rulerAngleMarker];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6979398]);
    [(PKRulerLayer *)self setRulerAngleMarker:v8];

    v9 = [(PKRulerLayer *)self rulerDialImage];
    [v9 size];
    v11 = v10;
    v13 = v12;
    v14 = [(PKRulerLayer *)self rulerAngleMarker];
    [v14 setFrame:{0.0, 0.0, v11, v13}];

    v15 = [v9 CGImage];
    v16 = [(PKRulerLayer *)self rulerAngleMarker];
    [v16 setContents:v15];

    v17 = [(PKRulerLayer *)self rulerAngleMarker];
    [v17 setOpacity:0.0];

    v18 = [(PKRulerLayer *)self rulerAngleMarker];
    v19 = [(PKRulerLayer *)self rulerLayer];
    [(PKRulerLayer *)self insertSublayer:v18 above:v19];

    v20 = objc_alloc_init(MEMORY[0x1E6979398]);
    [(PKRulerLayer *)self setRulerAngleTick:v20];

    v21 = [(PKRulerLayer *)self rulerDialLevelImage];
    [v21 size];
    v23 = v22;
    v25 = v24;
    v26 = [(PKRulerLayer *)self rulerAngleTick];
    [v26 setFrame:{0.0, 0.0, v23, v25}];

    [v9 size];
    v28 = v27;
    [v9 size];
    v30 = v29;
    v31 = [(PKRulerLayer *)self rulerAngleTick];
    [v31 setPosition:{v28 * 0.5, v30 * 0.5}];

    v32 = [v21 CGImage];
    v33 = [(PKRulerLayer *)self rulerAngleTick];
    [v33 setContents:v32];

    v34 = [(PKRulerLayer *)self rulerAngleTick];
    LODWORD(v35) = 1.0;
    [v34 setOpacity:v35];

    v36 = [(PKRulerLayer *)self rulerAngleMarker];
    v37 = [(PKRulerLayer *)self rulerAngleTick];
    v38 = [(PKRulerLayer *)self rulerAngleMarker];
    [v36 insertSublayer:v37 above:v38];

    v39 = objc_alloc_init(MEMORY[0x1E6979508]);
    [(PKRulerLayer *)self setRulerAngleText:v39];

    v40 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v40 scale];
    v42 = v41;
    v43 = [(PKRulerLayer *)self rulerAngleText];
    [v43 setContentsScale:v42];

    v44 = [(PKRulerLayer *)self rulerAngleText];
    [v44 setFrame:{0.0, 0.0, 75.0, v6 + 4.0}];

    [v9 size];
    v46 = v45;
    [v9 size];
    v48 = v47;
    v49 = [(PKRulerLayer *)self rulerAngleText];
    [v49 setPosition:{v46 * 0.5, v48 * 0.5}];

    v50 = [(PKRulerLayer *)self rulerAngleText];
    [v50 setAlignmentMode:*MEMORY[0x1E6979560]];

    v51 = [MEMORY[0x1E69DC888] blackColor];
    v52 = [v51 CGColor];
    v53 = [(PKRulerLayer *)self rulerAngleText];
    [v53 setForegroundColor:v52];

    v54 = [(PKRulerLayer *)self rulerAngleMarker];
    v55 = [(PKRulerLayer *)self rulerAngleText];
    v56 = [(PKRulerLayer *)self rulerAngleTick];
    [v54 insertSublayer:v55 above:v56];
  }

  v57 = [(PKRulerLayer *)self rulerAngleMarker];
  [v57 opacity];
  v59 = v58;
  v60 = [(PKRulerLayer *)self rulerLayer];
  [v60 opacity];
  v62 = v61;

  if (v59 < v62)
  {
    v63 = [(PKRulerLayer *)self rulerAngleMarker];
    v64 = [(PKRulerLayer *)self addOpacityAnimationOnLayer:v63 delegate:0 toOpacity:1.0];
  }

  v65 = [(PKRulerLayer *)self rulerAngleMarker];
  [v65 setPosition:{x, y}];

  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v66 = [(PKRulerLayer *)self rulerLayer];
  v67 = v66;
  if (v66)
  {
    [v66 affineTransform];
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
  v68 = [(PKRulerLayer *)self rulerAngleTick];
  v80[0] = v81;
  v80[1] = v82;
  v80[2] = 0uLL;
  [v68 setAffineTransform:v80];

  v69 = [(PKRulerLayer *)self userAngle];
  v70 = objc_alloc(MEMORY[0x1E696AD40]);
  v71 = MEMORY[0x1E696AEC0];
  v72 = _PencilKitBundle();
  v73 = [v72 localizedStringForKey:@"°%d°" value:@"°%d°" table:@"Localizable"];
  v74 = [v71 localizedStringWithFormat:v73, v69];
  v87 = *MEMORY[0x1E69DB648];
  v75 = [MEMORY[0x1E69DB878] systemFontOfSize:v6];
  v88[0] = v75;
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
  v77 = [v70 initWithString:v74 attributes:v76];

  v78 = [MEMORY[0x1E69DC888] clearColor];
  [v77 addAttribute:*MEMORY[0x1E69DB650] value:v78 range:{0, 1}];

  v79 = [(PKRulerLayer *)self rulerAngleText];
  [v79 setString:v77];
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
  v2 = [(PKRulerLayer *)self currentAngle];
  if (v2 % 180 <= 90)
  {
    return v2 % 180;
  }

  else
  {
    return 180 - v2 % 180;
  }
}

- (void)hideRulerAngleMarker
{
  v4 = [(PKRulerLayer *)self rulerAngleMarker];
  v3 = [PKRulerLayer addOpacityAnimationOnLayer:"addOpacityAnimationOnLayer:delegate:toOpacity:" delegate:0.0 toOpacity:?];
}

- (BOOL)viewPointInRuler:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKRulerLayer *)self rulerLayer];

  if (!v6)
  {
    return 0;
  }

  v7 = [(PKRulerLayer *)self rulerLayer];
  [v7 convertPoint:self fromLayer:{x, y}];
  v9 = v8;

  [(PKRulerLayer *)self rulerWidth];
  if (v9 <= v10 * 0.15)
  {
    return 0;
  }

  [(PKRulerLayer *)self rulerWidth];
  return v9 < v11 * 0.85;
}

- (CGPoint)getRulerCenterLineOriginAndTangent:(CGPoint *)a3
{
  memset(&v26, 0, sizeof(v26));
  v5 = [(PKRulerLayer *)self rulerLayer];
  v6 = v5;
  if (v5)
  {
    [v5 affineTransform];
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  memset(&v25, 0, sizeof(v25));
  v7 = [(PKRulerLayer *)self rulerController];
  v8 = v7;
  if (v7 && (WeakRetained = objc_loadWeakRetained((v7 + 40))) != 0)
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
  if (a3)
  {
    *a3 = vaddq_f64(*&v24.tx, vmlaq_f64(v13, vdupq_n_s64(0x409F400000000000uLL), *&v24.a));
  }

  _D4 = 0xC09F400000000000;
  v15 = *&v12 + v13.f64[0] + *&_Q1 * -2000.0;
  __asm { FMLA            D3, D4, V1.D[1] }

  v21 = *(&v12 + 1) + _D3;
  result.y = v21;
  result.x = v15;
  return result;
}

- (double)_fontSizeForRulerTextHUD:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v4 = [&stru_1F476BD20 stringByPaddingToLength:objc_msgSend(v29 withString:"length") startingAtIndex:{@"X", 0}];
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

- (id)_textForRulerHUD:(double)a3
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

      v16 = [v15 rulerHostingStringFromPixels:a3];

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

  v16 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", a3];
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
  v2 = [(PKRulerLayer *)self compactRuler];
  result = 18.0;
  if (v2)
  {
    return 14.0;
  }

  return result;
}

- (void)updateDistanceMarkerWithSpacing:(double)a3
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

  v9 = [(PKRulerLayer *)self shouldUseLargestRulerTextFontSize];
  v10 = v7 + 10.0;
  if (v9)
  {
    v11 = v8 + 7.0;
  }

  else
  {
    v11 = v8;
  }

  if (v9)
  {
    v12 = v7 + 10.0;
  }

  else
  {
    v12 = v7;
  }

  if (v9)
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
  v18 = [(PKRulerLayer *)self rulerDistanceText];

  if (!v18)
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

    v27 = [(PKRulerLayer *)self rulerDistanceHUD];
    [v27 setFrame:{0.0, 0.0, v13, v13}];

    v28 = [MEMORY[0x1E69DC888] colorWithWhite:0.96 alpha:0.8];
    v29 = [v28 CGColor];
    v30 = [(PKRulerLayer *)self rulerDistanceHUD];
    [v30 setBackgroundColor:v29];

    v31 = [(PKRulerLayer *)self rulerDistanceHUD];
    [v31 setCornerRadius:v13 * 0.5];

    v32 = [(PKRulerLayer *)self rulerDistanceHUD];
    v33 = [(PKRulerLayer *)self rulerLayer];
    [(PKRulerLayer *)self insertSublayer:v32 above:v33];

    v34 = objc_alloc_init(MEMORY[0x1E6979508]);
    [(PKRulerLayer *)self setRulerDistanceText:v34];

    v35 = objc_alloc(MEMORY[0x1E696AAB0]);
    v36 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", 1234567890];
    v85 = *MEMORY[0x1E69DB648];
    v37 = [MEMORY[0x1E69DB878] systemFontOfSize:v12];
    v86[0] = v37;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    v39 = [v35 initWithString:v36 attributes:v38];
    [v39 size];
    v41 = v40;

    v42 = [MEMORY[0x1E69DC888] blackColor];
    v43 = v42;
    v44 = [v42 CGColor];
    v45 = [(PKRulerLayer *)self rulerDistanceText];
    [v45 setForegroundColor:v44];

    v46 = [(PKRulerLayer *)self rulerDistanceText];
    [v46 setFontSize:v12];

    v47 = [(PKRulerLayer *)self rulerDistanceText];
    [v47 setFrame:{0.0, v11, v13, v41}];

    v48 = [(PKRulerLayer *)self rulerDistanceText];
    [v48 setAlignmentMode:*MEMORY[0x1E6979560]];

    v49 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v49 scale];
    v51 = v50;
    v52 = [(PKRulerLayer *)self rulerDistanceText];
    [v52 setContentsScale:v51];

    v53 = [(PKRulerLayer *)self rulerDistanceHUD];
    v54 = [(PKRulerLayer *)self rulerDistanceText];
    v55 = [(PKRulerLayer *)self rulerDistanceHUD];
    [v53 insertSublayer:v54 above:v55];

    v56 = [(PKRulerLayer *)self rulerDistanceHUD];
    [(PKRulerLayer *)self addScaleAndOpacityAnimationOnLayer:v56 delegate:0 fromScale:0.25 toScale:1.0 fromAlpha:0.0 toAlpha:1.0];
  }

  [(PKRulerLayer *)self currentTValueForSnappedDrawing];
  v58 = v57;
  v59 = [(PKRulerLayer *)self rulerLayer];
  v60 = v59;
  if (v59)
  {
    [v59 affineTransform];
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

  v62 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v62 scale];
  v78 = v63;
  v64 = [(PKRulerLayer *)self rulerDistanceHUD];
  [v64 setPosition:{vmulq_n_f64(vrndaq_f64(vmulq_n_f64(vaddq_f64(v81, vmlaq_n_f64(v79, v80, v58 + -2000.0)), v78)), 1.0 / v78)}];

  v65 = (v15 - v17) / (a3 * 0.5);
  v66 = [(PKRulerLayer *)self _textForRulerHUD:v65];
  v67 = [(PKRulerLayer *)self rulerDistanceHUD];
  [v67 size];
  v69 = v68;
  v70 = [(PKRulerLayer *)self rulerDistanceHUD];
  [v70 size];
  v72 = v71;
  [v66 size];
  v74 = v73;

  v75 = [(PKRulerLayer *)self rulerDistanceText];
  [v75 setFrame:{v69 * 0.5 - v13 * 0.5, v72 * 0.5 - v74 * 0.5, v13, v74}];

  v76 = [(PKRulerLayer *)self _textForRulerHUD:v65];
  v77 = [(PKRulerLayer *)self rulerDistanceText];
  [v77 setString:v76];
}

- (void)updateRulerMarkerForLocation:(CGPoint)a3 firstTouch:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v29 = *MEMORY[0x1E69E9840];
  v8 = [(PKRulerLayer *)self rulerLayer];
  if (!v8)
  {
    return;
  }

  v9 = [(PKRulerLayer *)self rulerController];
  v10 = v9;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 40));
  }

  else
  {
    WeakRetained = 0;
  }

  if (![WeakRetained isDrawing])
  {

    if (!v4)
    {
      return;
    }

    goto LABEL_10;
  }

  v12 = [(PKRulerLayer *)self rulerController];
  v13 = v12;
  if (v12)
  {
    v14 = objc_loadWeakRetained((v12 + 40));
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 drawingController];
  v16 = [(PKController *)v15 inputController];
  v17 = [v16 isSnappedToRuler] | v4;

  if (v17)
  {
LABEL_10:
    [(PKRulerLayer *)self getRulerCenterLineOriginAndTangent:&v27];
    *&v26[6] = v18;
    *&v26[7] = v19;
    v20 = ((y - v19) * (v28 - v19) + (x - v18) * (v27 - v18)) / ((v28 - v19) * (v28 - v19) + (v27 - v18) * (v27 - v18)) * 4000.0;
    [(PKRulerLayer *)self setCurrentTValueForSnappedDrawing:v20];
    if (v4)
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
      v23 = [(PKRulerLayer *)self rulerController];
      [(PKRulerController *)v23 canvasTransform];
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
  v3 = [(PKRulerLayer *)self rulerLayer];
  v4 = [v3 sublayers];
  v5 = [v4 copy];

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

  v9 = [(PKRulerLayer *)self rulerDistanceHUD];
  [(PKRulerLayer *)self addScaleAndOpacityAnimationOnLayer:v9 delegate:self fromScale:1.0 toScale:0.25 fromAlpha:1.0 toAlpha:0.0];

  [(PKRulerLayer *)self setRulerDistanceHUD:0];
  [(PKRulerLayer *)self setRulerDistanceText:0];
  v10 = [(PKRulerLayer *)self rulerAngleMarker];
  [v10 removeFromSuperlayer];

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

- (void)setPreviousRulerTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_previousRulerTransform.a = *&a3->a;
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

- (void)setRulerZoomStartTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_rulerZoomStartTransform.a = *&a3->a;
  *&self->_rulerZoomStartTransform.c = v4;
  *&self->_rulerZoomStartTransform.tx = v3;
}

@end