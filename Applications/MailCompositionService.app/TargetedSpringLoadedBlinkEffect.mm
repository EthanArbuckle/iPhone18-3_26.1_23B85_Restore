@interface TargetedSpringLoadedBlinkEffect
- (CALayer)blinkLayer;
- (TargetedSpringLoadedBlinkEffect)initWithTargetView:(id)view;
- (UIView)targetView;
- (id)blinkAnimation;
- (void)_prepareLayer:(id)layer forView:(id)view;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation TargetedSpringLoadedBlinkEffect

- (TargetedSpringLoadedBlinkEffect)initWithTargetView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = TargetedSpringLoadedBlinkEffect;
  v5 = [(TargetedSpringLoadedBlinkEffect *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_targetView, viewCopy);
  }

  return v6;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  contextCopy = context;
  blinkLayer = [(TargetedSpringLoadedBlinkEffect *)self blinkLayer];
  targetView = [(TargetedSpringLoadedBlinkEffect *)self targetView];
  if (targetView)
  {
    state = [contextCopy state];
    if (state > 1)
    {
      if (state == 2)
      {
        superlayer = [blinkLayer superlayer];

        if (!superlayer)
        {
          [(TargetedSpringLoadedBlinkEffect *)self _prepareLayer:blinkLayer forView:targetView];
          layer = [targetView layer];
          [layer addSublayer:blinkLayer];
        }

        blinkLayer = [(TargetedSpringLoadedBlinkEffect *)self blinkAnimation];
        [blinkLayer addAnimation:blinkLayer forKey:@"targetedBlinkAnimation"];
        goto LABEL_9;
      }

      if (state != 3)
      {
        goto LABEL_10;
      }
    }

    else if (state)
    {
      if (state != 1)
      {
        goto LABEL_10;
      }

      [(TargetedSpringLoadedBlinkEffect *)self _prepareLayer:blinkLayer forView:targetView];
      blinkLayer = [targetView layer];
      [blinkLayer addSublayer:blinkLayer];
      goto LABEL_9;
    }
  }

  [blinkLayer removeFromSuperlayer];
  blinkLayer = self->_blinkLayer;
  self->_blinkLayer = 0;
LABEL_9:

LABEL_10:
}

- (void)_prepareLayer:(id)layer forView:(id)view
{
  layerCopy = layer;
  viewCopy = view;
  layer = [viewCopy layer];
  [viewCopy bounds];
  [layerCopy setFrame:?];
  cornerCurve = [layer cornerCurve];
  [layerCopy setCornerCurve:cornerCurve];

  [layer cornerRadius];
  [layerCopy setCornerRadius:?];
}

- (CALayer)blinkLayer
{
  blinkLayer = self->_blinkLayer;
  if (!blinkLayer)
  {
    v4 = objc_opt_new();
    v5 = self->_blinkLayer;
    self->_blinkLayer = v4;

    v6 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](self->_blinkLayer, "setBackgroundColor:", [v6 CGColor]);

    LODWORD(v7) = 1045220557;
    [(CALayer *)self->_blinkLayer setOpacity:v7];
    blinkLayer = self->_blinkLayer;
  }

  return blinkLayer;
}

- (id)blinkAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v2 setToValue:&off_100018CB0];
  [v2 setDuration:0.1];
  [v2 setAutoreverses:1];
  LODWORD(v3) = 2.0;
  [v2 setRepeatCount:v3];

  return v2;
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

@end