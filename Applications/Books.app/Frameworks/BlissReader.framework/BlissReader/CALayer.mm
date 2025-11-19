@interface CALayer
- (CGPath)tracedShadowPathWithScale:(double)a3;
- (id)_th_undoInvertColorsFilter;
- (id)p_recoilAnimationFromPoint:(CGPoint)a3 scale:(double)a4 duration:(double)a5 hardRebound:(BOOL)a6;
- (void)addButtonShadow;
- (void)addCABasicOpacityAnimationToValue:(double)a3 duration:(double)a4 removedOnCompletion:(BOOL)a5;
- (void)addMomentumTiltWithVelocity:(CGPoint)a3;
- (void)addPressAnimationFromPoint:(CGPoint)a3 scale:(double)a4;
- (void)addRecoilAnimationFromPoint:(CGPoint)a3 hardRebound:(BOOL)a4;
- (void)addRelaxAnimationFromPoint:(CGPoint)a3;
- (void)copyAnimationsFromLayer:(id)a3;
- (void)removeButtonShadow;
- (void)setFadeMaskWithTopHeight:(double)a3 bottomHeight:(double)a4;
- (void)spi_setPreloadsCache:(BOOL)a3;
- (void)th_accessibilityUndoInvertColorsIfNecessary;
- (void)translateToSuperlayer:(id)a3;
- (void)translateToSuperlayer:(id)a3 below:(id)a4;
@end

@implementation CALayer

- (void)addMomentumTiltWithVelocity:(CGPoint)a3
{
  [(CALayer *)self removeMomentumTiltAnimation];
  [(CALayer *)self addPerspectiveProjection];
  TSDPointLength();
  v5 = v4;
  TSDNormalizePoint();
  v7 = v6;
  v9 = v8;
  v10 = fmin(v5, 25.0);
  v11 = (v10 / 25.0 + -2.0) * (v10 / 25.0) * -0.698131701;
  v12 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
  [(CABasicAnimation *)v12 setFromValue:[NSNumber numberWithDouble:-(v9 * v11)]];
  [(CABasicAnimation *)v12 setToValue:[NSNumber numberWithDouble:0.0]];
  [(CABasicAnimation *)v12 setDuration:0.5];
  [(CABasicAnimation *)v12 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
  v13 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
  [(CABasicAnimation *)v13 setFromValue:[NSNumber numberWithDouble:v7 * v11]];
  [(CABasicAnimation *)v13 setToValue:[NSNumber numberWithDouble:0.0]];
  [(CABasicAnimation *)v13 setDuration:0.5];
  [(CABasicAnimation *)v13 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
  v14 = objc_alloc_init(CAAnimationGroup);
  [v14 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v12, v13, 0)}];
  [v14 setDuration:0.5];

  [(CALayer *)self addAnimation:v14 forKey:@"kTHWFreeTransformControllerMomentumTiltAnimationKey"];
}

- (void)copyAnimationsFromLayer:(id)a3
{
  v5 = [a3 animationKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        -[CALayer addAnimation:forKey:](self, "addAnimation:forKey:", [objc_msgSend(a3 animationForKey:{*(*(&v10 + 1) + 8 * v9)), "copy"}], *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addPressAnimationFromPoint:(CGPoint)a3 scale:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(CALayer *)self removeRecoilAnimation];
  [(CALayer *)self removeRelaxAnimation];
  [(CALayer *)self removePressAnimation];
  [(CALayer *)self frame];
  v8 = v27.origin.x;
  v9 = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v12 = (x - CGRectGetMinX(v27)) / v27.size.width;
  v28.origin.x = v8;
  v28.origin.y = v9;
  v28.size.width = width;
  v28.size.height = height;
  v13 = (y - CGRectGetMinY(v28)) / height;
  v14 = [CABasicAnimation animationWithKeyPath:@"anchorPoint"];
  v15 = [NSValue valueWithCGPoint:v12, v13];
  [(CABasicAnimation *)v14 setToValue:v15];
  [(CABasicAnimation *)v14 setFromValue:v15];
  [(CABasicAnimation *)v14 setDuration:1.0];
  [(CALayer *)self anchorPoint];
  TSDSubtractPoints();
  v17 = width * v16;
  v19 = height * v18;
  v20 = [CABasicAnimation animationWithKeyPath:@"position"];
  v21 = [NSValue valueWithCGPoint:v17, v19];
  [(CABasicAnimation *)v20 setToValue:v21];
  [(CABasicAnimation *)v20 setFromValue:v21];
  [(CABasicAnimation *)v20 setDuration:0.1];
  [(CABasicAnimation *)v20 setAdditive:1];
  v22 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
  [-[CALayer valueForKeyPath:](self valueForKeyPath:{@"transform.scale.xy", "floatValue"}];
  v24 = v23 * a4;
  *&v24 = v24;
  [(CABasicAnimation *)v22 setToValue:[NSNumber numberWithFloat:v24]];
  [(CABasicAnimation *)v22 setDuration:0.1];
  v25 = objc_alloc_init(CAAnimationGroup);
  [v25 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v14, v20, v22, 0)}];
  [v25 setDuration:0.1];
  [v25 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionLinear)}];
  [v25 setRemovedOnCompletion:0];
  [v25 setFillMode:kCAFillModeForwards];

  [(CALayer *)self addAnimation:v25 forKey:@"kTHPressAnimationKey"];
}

- (void)addButtonShadow
{
  -[CALayer setShadowColor:](self, "setShadowColor:", [+[TSUColor blackColor](TSUColor "blackColor")]);
  [(CALayer *)self setShadowOffset:0.0, 0.0];
  LODWORD(v3) = 1.0;
  [(CALayer *)self setShadowOpacity:v3];
  [(CALayer *)self setShadowRadius:0.0];
  LODWORD(v4) = *"ff&?";

  [(CALayer *)self setOpacity:v4];
}

- (void)removeButtonShadow
{
  -[CALayer setShadowColor:](self, "setShadowColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
  LODWORD(v3) = 1.0;

  [(CALayer *)self setOpacity:v3];
}

- (id)p_recoilAnimationFromPoint:(CGPoint)a3 scale:(double)a4 duration:(double)a5 hardRebound:(BOOL)a6
{
  v6 = a6;
  y = a3.y;
  x = a3.x;
  [-[CALayer valueForKeyPath:](self valueForKeyPath:{@"transform.scale.xy", "floatValue"}];
  v13 = v12;
  v14 = v12 - a4;
  v40 = v13 + v14 * 0.5;
  v41 = v13 + v14 * -0.4;
  v39 = v13 + v14 * -0.3;
  [(CALayer *)self frame];
  v15 = v42.origin.x;
  v16 = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  v19 = (x - CGRectGetMinX(v42)) / v42.size.width;
  v43.origin.x = v15;
  v43.origin.y = v16;
  v43.size.width = width;
  v43.size.height = height;
  v20 = (y - CGRectGetMinY(v43)) / height;
  v21 = [CABasicAnimation animationWithKeyPath:@"anchorPoint"];
  v22 = [NSValue valueWithCGPoint:v19, v20];
  [(CABasicAnimation *)v21 setToValue:v22];
  [(CABasicAnimation *)v21 setFromValue:v22];
  [(CABasicAnimation *)v21 setDuration:1.0];
  [(CALayer *)self anchorPoint];
  TSDSubtractPoints();
  v24 = width * v23;
  v26 = height * v25;
  v27 = [CABasicAnimation animationWithKeyPath:@"position"];
  v28 = [NSValue valueWithCGPoint:v24, v26];
  [(CABasicAnimation *)v27 setToValue:v28];
  [(CABasicAnimation *)v27 setFromValue:v28];
  [(CABasicAnimation *)v27 setDuration:a5];
  [(CABasicAnimation *)v27 setAdditive:1];
  v29 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
  [(CABasicAnimation *)v29 setFromValue:[NSNumber numberWithDouble:a4]];
  if (v6)
  {
    v30 = v41;
  }

  else
  {
    v30 = v39;
  }

  if (v6)
  {
    v31 = v13;
  }

  else
  {
    v31 = v40;
  }

  if (v6)
  {
    v32 = kCAMediaTimingFunctionLinear;
  }

  else
  {
    v32 = kCAMediaTimingFunctionEaseOut;
  }

  if (v6)
  {
    v33 = kCAMediaTimingFunctionEaseOut;
  }

  else
  {
    v33 = kCAMediaTimingFunctionEaseInEaseOut;
  }

  [(CABasicAnimation *)v29 setToValue:[NSNumber numberWithDouble:v31]];
  [(CABasicAnimation *)v29 setTimingFunction:[CAMediaTimingFunction functionWithName:v32]];
  [(CABasicAnimation *)v29 setDuration:a5 * 0.5];
  v34 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
  [(CABasicAnimation *)v34 setFromValue:[NSNumber numberWithDouble:v31]];
  [(CABasicAnimation *)v34 setToValue:[NSNumber numberWithDouble:v30]];
  [(CABasicAnimation *)v34 setTimingFunction:[CAMediaTimingFunction functionWithName:v33]];
  [(CABasicAnimation *)v34 setBeginTime:a5 * 0.5];
  [(CABasicAnimation *)v34 setDuration:a5 * 0.3];
  v35 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
  [(CABasicAnimation *)v35 setFromValue:[NSNumber numberWithDouble:v30]];
  [(CABasicAnimation *)v35 setToValue:[NSNumber numberWithDouble:v13]];
  [(CABasicAnimation *)v35 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  [(CABasicAnimation *)v35 setBeginTime:a5 * 0.8];
  [(CABasicAnimation *)v35 setDuration:a5 * 0.2];
  v36 = objc_alloc_init(CAAnimationGroup);
  [v36 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v21, v27, v29, v34, v35, 0)}];
  [v36 setDuration:a5];
  [v36 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionLinear)}];
  [v36 setFillMode:kCAFillModeForwards];
  return v36;
}

- (void)addRecoilAnimationFromPoint:(CGPoint)a3 hardRebound:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  [(CALayer *)self removeRecoilAnimation];
  [-[CALayer valueForKeyPath:](self valueForKeyPath:{@"transform.scale.xy", "floatValue"}];
  v9 = v8;
  if ([(CALayer *)self animationForKey:@"kTHPressAnimationKey"])
  {
    [-[CALayer valueForKeyPath:](-[CALayer presentationLayer](self "presentationLayer")];
    v9 = v10;
    [(CALayer *)self removePressAnimation];
  }

  v11 = [(CALayer *)self p_recoilAnimationFromPoint:v4 scale:x duration:y hardRebound:v9, 0.2];

  [(CALayer *)self addAnimation:v11 forKey:@"kTHRecoilAnimationKey"];
}

- (void)addRelaxAnimationFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CALayer *)self removeRelaxAnimation];
  [-[CALayer valueForKeyPath:](self valueForKeyPath:{@"transform.scale.xy", "floatValue"}];
  v7 = v6;
  if ([(CALayer *)self animationForKey:@"kTHPressAnimationKey"])
  {
    [-[CALayer valueForKeyPath:](-[CALayer presentationLayer](self "presentationLayer")];
    v7 = v8;
    [(CALayer *)self removePressAnimation];
  }

  [(CALayer *)self frame];
  v9 = v28.origin.x;
  v10 = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  v13 = (x - CGRectGetMinX(v28)) / v28.size.width;
  v29.origin.x = v9;
  v29.origin.y = v10;
  v29.size.width = width;
  v29.size.height = height;
  v14 = (y - CGRectGetMinY(v29)) / height;
  v15 = [CABasicAnimation animationWithKeyPath:@"anchorPoint"];
  v16 = [NSValue valueWithCGPoint:v13, v14];
  [(CABasicAnimation *)v15 setToValue:v16];
  [(CABasicAnimation *)v15 setFromValue:v16];
  [(CABasicAnimation *)v15 setDuration:1.0];
  [(CALayer *)self anchorPoint];
  TSDSubtractPoints();
  v18 = width * v17;
  v20 = height * v19;
  v21 = [CABasicAnimation animationWithKeyPath:@"position"];
  v22 = [NSValue valueWithCGPoint:v18, v20];
  [(CABasicAnimation *)v21 setToValue:v22];
  [(CABasicAnimation *)v21 setFromValue:v22];
  [(CABasicAnimation *)v21 setDuration:0.1];
  [(CABasicAnimation *)v21 setAdditive:1];
  v23 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
  *&v24 = v7;
  [(CABasicAnimation *)v23 setFromValue:[NSNumber numberWithFloat:v24]];
  v25 = v7 / fabs(v7);
  *&v25 = v25;
  [(CABasicAnimation *)v23 setToValue:[NSNumber numberWithFloat:v25]];
  [(CABasicAnimation *)v23 setDuration:0.1];
  v26 = objc_alloc_init(CAAnimationGroup);
  [v26 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v15, v21, v23, 0)}];
  [v26 setDuration:0.1];
  [v26 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionLinear)}];
  [v26 setFillMode:kCAFillModeForwards];

  [(CALayer *)self addAnimation:v26 forKey:@"kTHRelaxAnimationKey"];
}

- (void)setFadeMaskWithTopHeight:(double)a3 bottomHeight:(double)a4
{
  v17 = objc_alloc_init(CAGradientLayer);
  [(CALayer *)self frame];
  [v17 setFrame:?];
  [v17 setColors:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", objc_msgSend(+[TSUColor clearColor](TSUColor, "clearColor"), "CGColor"), objc_msgSend(+[TSUColor blackColor](TSUColor, "blackColor"), "CGColor"), objc_msgSend(+[TSUColor blackColor](TSUColor, "blackColor"), "CGColor"), objc_msgSend(+[TSUColor clearColor](TSUColor, "clearColor"), "CGColor"), 0)}];
  [(CALayer *)self bounds];
  v8 = a3 / v7;
  [(CALayer *)self bounds];
  v10 = a4 / v9;
  v11 = [NSNumber numberWithFloat:0.0];
  *&v12 = v8;
  v13 = [NSNumber numberWithFloat:v12];
  v14 = 1.0 - v10;
  *&v14 = 1.0 - v10;
  v15 = [NSNumber numberWithFloat:v14];
  LODWORD(v16) = 1.0;
  [v17 setLocations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v11, v13, v15, +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v16), 0)}];
  [(CALayer *)self setMask:v17];
}

- (void)translateToSuperlayer:(id)a3
{
  v5 = [(CALayer *)self superlayer];
  [(CALayer *)self position];
  [(CALayer *)v5 convertPoint:a3 toLayer:?];
  [(CALayer *)self setPosition:?];

  [a3 addSublayer:self];
}

- (void)translateToSuperlayer:(id)a3 below:(id)a4
{
  v7 = [(CALayer *)self superlayer];
  [(CALayer *)self position];
  [(CALayer *)v7 convertPoint:a3 toLayer:?];
  [(CALayer *)self setPosition:?];

  [a3 insertSublayer:self below:a4];
}

- (CGPath)tracedShadowPathWithScale:(double)a3
{
  [(CALayer *)self bounds];
  TSDMultiplySizeScalar();
  v5 = TSDBitmapContextCreate();
  if (v5)
  {
    v6 = v5;
    CGContextScaleCTM(v5, a3, a3);
    objc_opt_class();
    [(CALayer *)self delegate];
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = v7;
      [v7 contentOffset];
      v10 = -v9;
      [v8 contentOffset];
      CGContextTranslateCTM(v6, v10, -v11);
    }

    [(CALayer *)self renderInContext:v6];
    Image = CGBitmapContextCreateImage(v6);
    if (Image)
    {
      v13 = Image;
      v14 = [TSDBezierPath tracedPathForImage:Image alphaThreshold:0.5 pointSpacing:2.0];
      CGImageRelease(v13);
      CGContextRelease(v6);
      if (v14)
      {
        goto LABEL_9;
      }
    }

    else
    {
      CGContextRelease(v6);
    }
  }

  TSDRectWithSize();
  v14 = [TSDBezierPath bezierPathWithRect:?];
LABEL_9:

  return [(TSDBezierPath *)v14 CGPath];
}

- (void)spi_setPreloadsCache:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {

    [(CALayer *)self setPreloadsCache:v3];
  }
}

- (void)addCABasicOpacityAnimationToValue:(double)a3 duration:(double)a4 removedOnCompletion:(BOOL)a5
{
  v5 = a5;
  v9 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  *&v10 = a3;
  [(CABasicAnimation *)v9 setToValue:[NSNumber numberWithFloat:v10]];
  if (a4 > 0.0)
  {
    [(CABasicAnimation *)v9 setDuration:a4];
  }

  [(CABasicAnimation *)v9 setRemovedOnCompletion:v5];
  [(CABasicAnimation *)v9 setFillMode:kCAFillModeForwards];

  [(CALayer *)self addAnimation:v9 forKey:@"opacity"];
}

- (void)th_accessibilityUndoInvertColorsIfNecessary
{
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v4 = [(CALayer *)self _th_undoInvertColorsFilter];
  v5 = v4;
  if (IsInvertColorsEnabled)
  {
    if (v4)
    {
      return;
    }

    v6 = [CAFilter filterWithType:kCAFilterColorInvert];
    [(CAFilter *)v6 setName:@"kTHAXUndoInvertColorsFilter"];
    v7 = [(NSArray *)[(CALayer *)self filters] mutableCopy];
    if (!v7)
    {
      v7 = objc_opt_new();
    }

    v8 = v7;
    [v7 addObject:v6];
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v8 = [(NSArray *)[(CALayer *)self filters] mutableCopy];
    [v8 removeObject:v5];
  }

  [(CALayer *)self setFilters:v8];
}

- (id)_th_undoInvertColorsFilter
{
  v2 = [(CALayer *)self filters];

  return [(NSArray *)v2 tsu_firstObjectPassingTest:&stru_45D080];
}

@end