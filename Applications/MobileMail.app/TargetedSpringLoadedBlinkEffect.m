@interface TargetedSpringLoadedBlinkEffect
- (CALayer)blinkLayer;
- (TargetedSpringLoadedBlinkEffect)initWithTargetView:(id)a3;
- (UIView)targetView;
- (id)blinkAnimation;
- (void)_prepareLayer:(id)a3 forView:(id)a4;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
@end

@implementation TargetedSpringLoadedBlinkEffect

- (TargetedSpringLoadedBlinkEffect)initWithTargetView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TargetedSpringLoadedBlinkEffect;
  v5 = [(TargetedSpringLoadedBlinkEffect *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_targetView, v4);
  }

  return v6;
}

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v11 = a4;
  v5 = [(TargetedSpringLoadedBlinkEffect *)self blinkLayer];
  v6 = [(TargetedSpringLoadedBlinkEffect *)self targetView];
  if (v6)
  {
    v7 = [v11 state];
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v9 = [v5 superlayer];

        if (!v9)
        {
          [(TargetedSpringLoadedBlinkEffect *)self _prepareLayer:v5 forView:v6];
          v10 = [v6 layer];
          [v10 addSublayer:v5];
        }

        blinkLayer = [(TargetedSpringLoadedBlinkEffect *)self blinkAnimation];
        [v5 addAnimation:blinkLayer forKey:@"targetedBlinkAnimation"];
        goto LABEL_9;
      }

      if (v7 != 3)
      {
        goto LABEL_10;
      }
    }

    else if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_10;
      }

      [(TargetedSpringLoadedBlinkEffect *)self _prepareLayer:v5 forView:v6];
      blinkLayer = [v6 layer];
      [blinkLayer addSublayer:v5];
      goto LABEL_9;
    }
  }

  [v5 removeFromSuperlayer];
  blinkLayer = self->_blinkLayer;
  self->_blinkLayer = 0;
LABEL_9:

LABEL_10:
}

- (void)_prepareLayer:(id)a3 forView:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v5 layer];
  [v5 bounds];
  [v8 setFrame:?];
  v7 = [v6 cornerCurve];
  [v8 setCornerCurve:v7];

  [v6 cornerRadius];
  [v8 setCornerRadius:?];
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
  [v2 setToValue:&off_100674940];
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