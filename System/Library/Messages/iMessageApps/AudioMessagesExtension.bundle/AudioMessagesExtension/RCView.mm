@interface RCView
- (RCView)init;
- (RCWaveformRenderer)renderer;
- (id)_createSpringAnimationWithKeyPath:(id)path basedOnPropertiesFromSpringAnimation:(id)animation;
- (id)snapshot;
- (void)_setNeedsVisibleTimeRangeRenderingFromFrameChange;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation RCView

- (RCView)init
{
  v6.receiver = self;
  v6.super_class = RCView;
  v2 = [(RCView *)&v6 init];
  if (v2)
  {
    v3 = +[RCNoAnimateLayerHelper sharedNoAnimationHelper];
    layer = [(RCView *)v2 layer];
    [layer setDelegate:v3];
  }

  return v2;
}

- (void)_setNeedsVisibleTimeRangeRenderingFromFrameChange
{
  renderer = [(RCView *)self renderer];
  [renderer setCalcBlockShouldRefreshAllSlices:1];
  [renderer _setNeedsVisibleTimeRangeRenderingFromFrameChange];
}

- (id)snapshot
{
  self->_isCreatingSnapshot = 1;
  [(RCView *)self _setNeedsVisibleTimeRangeRenderingFromFrameChange];
  [(RCView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v9 = v8;
  v13.width = v4;
  v13.height = v6;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v9);

  [(RCView *)self bounds];
  [(RCView *)self drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  self->_isCreatingSnapshot = 0;

  return v10;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(RCView *)self frame];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v12.receiver = self;
    v12.super_class = RCView;
    [(RCView *)&v12 setFrame:x, y, width, height];
    if (!self->_waveformLayer)
    {
      v8 = +[CALayer layer];
      waveformLayer = self->_waveformLayer;
      self->_waveformLayer = v8;

      [(CALayer *)self->_waveformLayer setOpaque:1];
      [(CALayer *)self->_waveformLayer setAllowsGroupOpacity:0];
      v10 = +[RCNoAnimateLayerHelper sharedNoAnimationHelper];
      [(CALayer *)self->_waveformLayer setDelegate:v10];

      layer = [(RCView *)self layer];
      [layer addSublayer:self->_waveformLayer];
    }

    [(RCView *)self bounds];
    [(CALayer *)self->_waveformLayer setFrame:?];
    [(RCView *)self _setNeedsVisibleTimeRangeRenderingFromFrameChange];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(RCView *)self bounds];
  if (v9 != *&width || v8 != *&height)
  {
    renderer = [(RCView *)self renderer];
    isOverview = [renderer isOverview];

    if (isOverview)
    {
      [(CALayer *)self->_waveformLayer bounds];
      v14 = fmax(v13, 0.01);
      memset(&v27, 0, sizeof(v27));
      CATransform3DMakeScale(&v27, width / v14, 1.0, 1.0);
      superview = [(RCView *)self superview];
      layer = [superview layer];
      v17 = [layer animationForKey:@"bounds.origin"];

      if ([v17 isMemberOfClass:objc_opt_class()])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      _isSplitViewControllerTransitioningBetweenStates = [(RCView *)self _isSplitViewControllerTransitioningBetweenStates];
      if (v18)
      {
        v20 = _isSplitViewControllerTransitioningBetweenStates;
      }

      else
      {
        v20 = 0;
      }

      if (v20 == 1)
      {
        +[CATransaction begin];
        v21 = [(RCView *)self _createSpringAnimationWithKeyPath:@"position" basedOnPropertiesFromSpringAnimation:v18];
        [(CALayer *)self->_waveformLayer setFrame:x, y, width, height];
        [(CALayer *)self->_waveformLayer addAnimation:v21 forKey:@"position"];
        v22 = [(RCView *)self _createSpringAnimationWithKeyPath:@"bounds" basedOnPropertiesFromSpringAnimation:v18];
        [(CALayer *)self->_waveformLayer setBounds:0.0, 0.0, v14, height];
        [(CALayer *)self->_waveformLayer addAnimation:v22 forKey:@"bounds"];
        v23 = [(RCView *)self _createSpringAnimationWithKeyPath:@"transform" basedOnPropertiesFromSpringAnimation:v18];
        v26 = v27;
        [(CALayer *)self->_waveformLayer setTransform:&v26];
        [(CALayer *)self->_waveformLayer addAnimation:v23 forKey:@"transform"];
        +[CATransaction commit];

        goto LABEL_16;
      }

      [(CALayer *)self->_waveformLayer setFrame:x, y, width, height];
      [(CALayer *)self->_waveformLayer setBounds:0.0, 0.0, v14, height];
      v26 = v27;
      [(CALayer *)self->_waveformLayer setTransform:&v26];
    }

    renderer2 = [(RCView *)self renderer];
    [renderer2 setWaitForFinalCalc:1];

    [(RCView *)self _setNeedsVisibleTimeRangeRenderingFromFrameChange];
  }

LABEL_16:
  v25.receiver = self;
  v25.super_class = RCView;
  [(RCView *)&v25 setBounds:x, y, width, height];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  v15.receiver = self;
  v15.super_class = RCView;
  [(RCView *)&v15 layoutSublayersOfLayer:layerCopy];
  layer = [(RCView *)self layer];
  v6 = [layerCopy isEqual:layer];

  if (v6)
  {
    layer2 = [(RCView *)self layer];
    v8 = [layer2 animationForKey:@"bounds.origin"];

    if ([v8 isMemberOfClass:objc_opt_class()])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    _isSplitViewControllerTransitioningBetweenStates = [(RCView *)self _isSplitViewControllerTransitioningBetweenStates];
    if (v9)
    {
      v11 = _isSplitViewControllerTransitioningBetweenStates;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      goto LABEL_13;
    }

    renderer = [(RCView *)self renderer];
    if (([renderer isOverview] & 1) == 0)
    {
      animationKeys = [(CALayer *)self->_waveformLayer animationKeys];
      v14 = [animationKeys count];

      if (v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      +[CATransaction begin];
      renderer = [(RCView *)self _createSpringAnimationWithKeyPath:@"bounds" basedOnPropertiesFromSpringAnimation:v9];
      [(CALayer *)self->_waveformLayer addAnimation:renderer forKey:@"bounds"];
      +[CATransaction commit];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)_createSpringAnimationWithKeyPath:(id)path basedOnPropertiesFromSpringAnimation:(id)animation
{
  animationCopy = animation;
  v6 = [CASpringAnimation animationWithKeyPath:path];
  [animationCopy duration];
  [v6 setDuration:?];
  timingFunction = [animationCopy timingFunction];
  [v6 setTimingFunction:timingFunction];

  [animationCopy damping];
  [v6 setDamping:?];
  [animationCopy stiffness];
  [v6 setStiffness:?];
  [animationCopy mass];
  [v6 setMass:?];

  return v6;
}

- (RCWaveformRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end