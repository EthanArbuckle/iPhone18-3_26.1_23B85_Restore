@interface THWImageCropAnimationController
- (CGRect)backgroundSourceFrame;
- (CGRect)backgroundTargetFrame;
- (CGRect)sourceContentsRect;
- (CGRect)targetContentsRect;
- (THWImageCropAnimationController)initWithImageContentLayer:(id)a3;
- (id)backgroundShadowPath;
- (id)sourceShadowPath;
- (void)addAnimationWithDuration:(double)a3 targetScale:(double)a4;
- (void)addBackgroundAnimationWithDuration:(double)a3 targetScale:(double)a4;
- (void)dealloc;
- (void)setBackgroundLayer:(id)a3;
- (void)setupWrapperLayer;
- (void)teardownWrapperLayer;
@end

@implementation THWImageCropAnimationController

- (THWImageCropAnimationController)initWithImageContentLayer:(id)a3
{
  v11.receiver = self;
  v11.super_class = THWImageCropAnimationController;
  v4 = [(THWImageCropAnimationController *)&v11 init];
  if (v4)
  {
    *(v4 + 9) = a3;
    __asm { FMOV            V0.2D, #1.0 }

    *(v4 + 40) = _Q0;
    *(v4 + 7) = 0x3FF0000000000000;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWImageCropAnimationController;
  [(THWImageCropAnimationController *)&v3 dealloc];
}

- (void)setupWrapperLayer
{
  v3 = +[CALayer layer];
  self->_wrapperLayer = v3;
  [(CALayer *)v3 setAnchorPoint:0.5, 0.5];
  [(CALayer *)self->_imageContentLayer frame];
  [(CALayer *)self->_wrapperLayer setFrame:?];
  [[(CALayer *)self->_imageContentLayer superlayer] replaceSublayer:self->_imageContentLayer with:self->_wrapperLayer];
  y = CGPointZero.y;
  [(CALayer *)self->_wrapperLayer frame];
  [(CALayer *)self->_imageContentLayer setFrame:CGPointZero.x, y];
  [(CALayer *)self->_imageContentLayer bounds];
  v6 = v5;
  v8 = v7;
  x = self->_sourceContentsRect.origin.x;
  v10 = self->_sourceContentsRect.origin.y;
  v15 = v10 * v7;
  v16 = x * v5;
  v11 = v5 * self->_sourceContentsRect.size.width;
  v12 = v7 * self->_sourceContentsRect.size.height;
  v13 = +[CALayer layer];
  self->_cropLayer = v13;
  [(CALayer *)v13 setMasksToBounds:1];
  [(CALayer *)self->_cropLayer setAnchorPoint:CGPointZero.x, y];
  [(CALayer *)self->_cropLayer setFrame:v16, v15, v11, v12];
  [(CALayer *)self->_cropLayer setCornerRadius:self->_sourceCornerRadius];
  CATransform3DMakeTranslation(&v18, -(x * v6), -(v10 * v8), 0.0);
  cropLayer = self->_cropLayer;
  v17 = v18;
  [(CALayer *)cropLayer setSublayerTransform:&v17];
  [(CALayer *)self->_cropLayer addSublayer:self->_imageContentLayer];
  if (self->_backgroundLayer)
  {
    [(CALayer *)self->_wrapperLayer addSublayer:?];
  }

  [(CALayer *)self->_wrapperLayer addSublayer:self->_cropLayer];
  [(CALayer *)self->_imageContentLayer removeAllAnimations];
}

- (void)setBackgroundLayer:(id)a3
{
  backgroundLayer = self->_backgroundLayer;
  if (backgroundLayer != a3)
  {
    if (backgroundLayer)
    {
      [(CALayer *)backgroundLayer removeFromSuperlayer];
      [(CALayer *)self->_backgroundLayer removeAllAnimations];
      v6 = self->_backgroundLayer;
    }

    else
    {
      v6 = 0;
    }

    v7 = a3;
    self->_backgroundLayer = v7;
    if (v7)
    {
      [(CALayer *)self->_wrapperLayer insertSublayer:v7 atIndex:0];
      v8 = self->_backgroundLayer;

      [(CALayer *)v8 removeAllAnimations];
    }
  }
}

- (void)teardownWrapperLayer
{
  [(CALayer *)self->_wrapperLayer frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CALayer *)self->_imageContentLayer superlayer]== self->_cropLayer)
  {
    v11 = [(CALayer *)self->_wrapperLayer superlayer];
    [(CALayer *)self->_imageContentLayer setFrame:v4, v6, v8, v10];
    [(CALayer *)v11 replaceSublayer:self->_wrapperLayer with:self->_imageContentLayer];
  }

  [(CALayer *)self->_wrapperLayer removeFromSuperlayer];
  [(CALayer *)self->_backgroundLayer removeAllAnimations];
  [(CALayer *)self->_imageContentLayer removeAllAnimations];

  self->_wrapperLayer = 0;
  self->_cropLayer = 0;
}

- (void)addAnimationWithDuration:(double)a3 targetScale:(double)a4
{
  if (!self->_animationDisabled)
  {
    v5 = self->_cropDurationScale * a3;
    v31 = self->_cornerRadiusDurationScale * a3;
    [(CALayer *)self->_imageContentLayer bounds];
    v7 = v6;
    v9 = v8;
    y = self->_sourceContentsRect.origin.y;
    x = self->_sourceContentsRect.origin.x;
    v22 = y * v8;
    v23 = x * v6;
    v11 = v6 * self->_sourceContentsRect.size.width;
    v12 = v8 * self->_sourceContentsRect.size.height;
    v27 = self->_targetContentsRect.origin.y;
    v28 = self->_targetContentsRect.origin.x;
    v24 = v8 * v27;
    v25 = v6 * v28;
    v13 = v6 * self->_targetContentsRect.size.width;
    v14 = v8 * self->_targetContentsRect.size.height;
    v15 = [CABasicAnimation animationWithKeyPath:@"bounds.size"];
    [(CABasicAnimation *)v15 setFromValue:[NSValue valueWithCGSize:v11, v12]];
    [(CABasicAnimation *)v15 setToValue:[NSValue valueWithCGSize:v13, v14]];
    [(CABasicAnimation *)v15 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v15 setFillMode:kCAFillModeForwards];
    [(CABasicAnimation *)v15 setDuration:v5];
    v16 = [CABasicAnimation animationWithKeyPath:@"position"];
    [(CABasicAnimation *)v16 setFromValue:[NSValue valueWithCGPoint:v23, v22]];
    [(CABasicAnimation *)v16 setToValue:[NSValue valueWithCGPoint:v25, v24]];
    [(CABasicAnimation *)v16 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v16 setFillMode:kCAFillModeForwards];
    [(CABasicAnimation *)v16 setDuration:v5];
    v17 = [CABasicAnimation animationWithKeyPath:@"sublayerTransform"];
    CATransform3DMakeTranslation(&v32, -(x * v7), -(y * v9), 0.0);
    [(CABasicAnimation *)v17 setFromValue:[NSValue valueWithCATransform3D:&v32]];
    CATransform3DMakeTranslation(&v32, -(v7 * v28), -(v9 * v27), 0.0);
    [(CABasicAnimation *)v17 setToValue:[NSValue valueWithCATransform3D:&v32]];
    [(CABasicAnimation *)v17 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v17 setFillMode:kCAFillModeForwards];
    [(CABasicAnimation *)v17 setDuration:v5];
    v18 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    sourceCornerRadius = self->_sourceCornerRadius;
    *&sourceCornerRadius = sourceCornerRadius;
    [(CABasicAnimation *)v18 setFromValue:[NSNumber numberWithFloat:sourceCornerRadius]];
    v20 = self->_targetCornerRadius / a4;
    *&v20 = v20;
    [(CABasicAnimation *)v18 setToValue:[NSNumber numberWithFloat:v20]];
    [(CABasicAnimation *)v18 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v18 setFillMode:kCAFillModeForwards];
    [(CABasicAnimation *)v18 setDuration:v31];
    [(CABasicAnimation *)v18 setBeginTime:a3 - v31];
    v21 = +[CAAnimationGroup animation];
    [v21 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v15, v16, v18, v17, 0)}];
    [v21 setDuration:a3];
    [v21 setRemovedOnCompletion:0];
    [v21 setFillMode:kCAFillModeForwards];
    [(CALayer *)self->_cropLayer addAnimation:v21 forKey:@"cropAnimation"];
  }
}

- (void)addBackgroundAnimationWithDuration:(double)a3 targetScale:(double)a4
{
  if (!self->_animationDisabled && self->_backgroundLayer)
  {
    v5 = self->_backgroundDurationScale * a3;
    x = self->_backgroundSourceFrame.origin.x;
    y = self->_backgroundSourceFrame.origin.y;
    TSDMultiplyRectScalar();
    v9 = v8;
    v11 = v10;
    v12 = [CABasicAnimation animationWithKeyPath:@"position"];
    [(CABasicAnimation *)v12 setFromValue:[NSValue valueWithCGPoint:x, y]];
    [(CABasicAnimation *)v12 setToValue:[NSValue valueWithCGPoint:v9, v11]];
    [(CABasicAnimation *)v12 setDuration:v5];
    [(CABasicAnimation *)v12 setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)v12 setRemovedOnCompletion:0];
    v13 = [CABasicAnimation animationWithKeyPath:@"bounds"];
    TSDRectWithSize();
    [(CABasicAnimation *)v13 setFromValue:[NSValue valueWithCGRect:?]];
    TSDRectWithSize();
    [(CABasicAnimation *)v13 setToValue:[NSValue valueWithCGRect:?]];
    [(CABasicAnimation *)v13 setDuration:v5];
    [(CABasicAnimation *)v13 setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)v13 setRemovedOnCompletion:0];
    v14 = +[CAAnimationGroup animation];
    [v14 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v12, v13, 0)}];
    [v14 setDuration:v5];
    [v14 setRemovedOnCompletion:0];
    [v14 setFillMode:kCAFillModeBoth];
    backgroundLayer = self->_backgroundLayer;

    [(CALayer *)backgroundLayer addAnimation:v14 forKey:@"frame"];
  }
}

- (id)sourceShadowPath
{
  [(CALayer *)self->_imageContentLayer bounds];
  v4 = self->_sourceContentsRect.origin.x * v3;
  v5 = v3 * self->_sourceContentsRect.size.width;
  v7 = self->_sourceContentsRect.origin.y * v6;
  v8 = v6 * self->_sourceContentsRect.size.height;
  sourceCornerRadius = self->_sourceCornerRadius;

  return [TSDBezierPath bezierPathWithRoundedRect:v4 cornerRadius:v7, v5, v8, sourceCornerRadius];
}

- (id)backgroundShadowPath
{
  result = self->_backgroundLayer;
  if (result)
  {
    wrapperLayer = self->_wrapperLayer;
    [result bounds];
    [(CALayer *)wrapperLayer convertRect:self->_backgroundLayer fromLayer:?];

    return [TSDBezierPath bezierPathWithRect:?];
  }

  return result;
}

- (CGRect)sourceContentsRect
{
  x = self->_sourceContentsRect.origin.x;
  y = self->_sourceContentsRect.origin.y;
  width = self->_sourceContentsRect.size.width;
  height = self->_sourceContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetContentsRect
{
  x = self->_targetContentsRect.origin.x;
  y = self->_targetContentsRect.origin.y;
  width = self->_targetContentsRect.size.width;
  height = self->_targetContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)backgroundSourceFrame
{
  x = self->_backgroundSourceFrame.origin.x;
  y = self->_backgroundSourceFrame.origin.y;
  width = self->_backgroundSourceFrame.size.width;
  height = self->_backgroundSourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)backgroundTargetFrame
{
  x = self->_backgroundTargetFrame.origin.x;
  y = self->_backgroundTargetFrame.origin.y;
  width = self->_backgroundTargetFrame.size.width;
  height = self->_backgroundTargetFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end