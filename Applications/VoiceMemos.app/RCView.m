@interface RCView
- (BOOL)_isSplitViewControllerTransitioningBetweenStates;
- (RCView)init;
- (RCWaveformRenderer)renderer;
- (id)_createSpringAnimationWithKeyPath:(id)a3 basedOnPropertiesFromSpringAnimation:(id)a4;
- (id)snapshot;
- (void)_setNeedsVisibleTimeRangeRenderingFromFrameChange;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
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
    v4 = [(RCView *)v2 layer];
    [v4 setDelegate:v3];
  }

  return v2;
}

- (void)_setNeedsVisibleTimeRangeRenderingFromFrameChange
{
  v2 = [(RCView *)self renderer];
  [v2 setCalcBlockShouldRefreshAllSlices:1];
  [v2 _setNeedsVisibleTimeRangeRenderingFromFrameChange];
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

      v11 = [(RCView *)self layer];
      [v11 addSublayer:self->_waveformLayer];
    }

    [(RCView *)self bounds];
    [(CALayer *)self->_waveformLayer setFrame:?];
    [(RCView *)self _setNeedsVisibleTimeRangeRenderingFromFrameChange];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(RCView *)self bounds];
  if (v9 != *&width || v8 != *&height)
  {
    v11 = [(RCView *)self renderer];
    v12 = [v11 displayMode];

    if (!v12)
    {
      [(CALayer *)self->_waveformLayer bounds];
      v14 = fmax(v13, 0.01);
      memset(&v27, 0, sizeof(v27));
      CATransform3DMakeScale(&v27, width / v14, 1.0, 1.0);
      v15 = [(RCView *)self superview];
      v16 = [v15 layer];
      v17 = [v16 animationForKey:@"bounds.origin"];

      if ([v17 isMemberOfClass:objc_opt_class()])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = [(RCView *)self _isSplitViewControllerTransitioningBetweenStates];
      if (v18)
      {
        v20 = v19;
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

    v24 = [(RCView *)self renderer];
    [v24 setWaitForFinalCalc:1];

    [(RCView *)self _setNeedsVisibleTimeRangeRenderingFromFrameChange];
  }

LABEL_16:
  v25.receiver = self;
  v25.super_class = RCView;
  [(RCView *)&v25 setBounds:x, y, width, height];
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RCView;
  [(RCView *)&v15 layoutSublayersOfLayer:v4];
  v5 = [(RCView *)self layer];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(RCView *)self layer];
    v8 = [v7 animationForKey:@"bounds.origin"];

    if ([v8 isMemberOfClass:objc_opt_class()])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(RCView *)self _isSplitViewControllerTransitioningBetweenStates];
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      goto LABEL_13;
    }

    v12 = [(RCView *)self renderer];
    if ([v12 displayMode] == 1)
    {
      v13 = [(CALayer *)self->_waveformLayer animationKeys];
      v14 = [v13 count];

      if (v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      +[CATransaction begin];
      v12 = [(RCView *)self _createSpringAnimationWithKeyPath:@"bounds" basedOnPropertiesFromSpringAnimation:v9];
      [(CALayer *)self->_waveformLayer addAnimation:v12 forKey:@"bounds"];
      +[CATransaction commit];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (BOOL)_isSplitViewControllerTransitioningBetweenStates
{
  v2 = [(RCView *)self renderer];
  v3 = [v2 splitViewController];

  LOBYTE(v2) = [v3 isTransitioningBetweenVisibleColumnStates];
  return v2;
}

- (id)_createSpringAnimationWithKeyPath:(id)a3 basedOnPropertiesFromSpringAnimation:(id)a4
{
  v5 = a4;
  v6 = [CASpringAnimation animationWithKeyPath:a3];
  [v5 duration];
  [v6 setDuration:?];
  v7 = [v5 timingFunction];
  [v6 setTimingFunction:v7];

  [v5 damping];
  [v6 setDamping:?];
  [v5 stiffness];
  [v6 setStiffness:?];
  [v5 mass];
  [v6 setMass:?];

  return v6;
}

- (RCWaveformRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end