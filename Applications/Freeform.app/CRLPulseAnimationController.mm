@interface CRLPulseAnimationController
- (CRLPulseAnimationController)initWithDelegate:(id)a3;
- (unint64_t)pulseAnimationStyle;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)disconnect;
- (void)reset;
- (void)startAnimating;
- (void)startAnimatingStandardPulse;
- (void)stop;
@end

@implementation CRLPulseAnimationController

- (CRLPulseAnimationController)initWithDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLPulseAnimationController;
  v6 = [(CRLPulseAnimationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v7->_duration = 0.1;
    v7->_pulseOffset = 6.0;
  }

  return v7;
}

- (void)reset
{
  delegate = self->_delegate;
  self->_delegate = 0;

  v4.receiver = self;
  v4.super_class = CRLPulseAnimationController;
  [(CRLHighlightController *)&v4 reset];
}

- (void)disconnect
{
  delegate = self->_delegate;
  self->_delegate = 0;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  if (self->_pulsating)
  {
    v7 = v5;
    self->_pulsating = 0;
    if (self->_autohide)
    {
      [(CRLHighlightController *)self hide];
      v6 = [(CRLHighlightController *)self layer];
      [v6 removeAllAnimations];

      [(CRLHighlightController *)self setImage:0];
    }

    [(CRLPulseAnimationControllerProtocol *)self->_delegate pulseAnimationDidStopForPulse:self];
    v5 = v7;
  }
}

- (void)stop
{
  pulsating = self->_pulsating;
  self->_pulsating = 0;
  [(CRLHighlightController *)self hide];
  v4 = [(CRLHighlightController *)self layer];
  [v4 removeAllAnimations];

  [(CRLHighlightController *)self setImage:0];
  if (pulsating)
  {
    delegate = self->_delegate;

    [(CRLPulseAnimationControllerProtocol *)delegate pulseAnimationDidStopForPulse:self];
  }
}

- (unint64_t)pulseAnimationStyle
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(CRLPulseAnimationControllerProtocol *)delegate pulseAnimationStyle:self];
}

- (void)startAnimatingStandardPulse
{
  v3 = [(CRLHighlightController *)self layer];
  [v3 removeAllAnimations];

  if ([(CRLHighlightController *)self path])
  {
    [(CRLHighlightController *)self rectToAnimate];
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    v8 = CGRectGetWidth(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v9 = CGRectGetHeight(v44);
    pulseOffset = self->_pulseOffset;
    v11 = pulseOffset + v8;
    v12 = (pulseOffset + v9) / v9;
    if (v11 / v8 < v12)
    {
      v12 = v11 / v8;
    }

    v13 = sub_1004C3240(v12, 1.0, 1.1);
    self->_pulsating = 1;
    *&v13 = v13;
    v14 = *&CATransform3DIdentity.m33;
    *&v39.m31 = *&CATransform3DIdentity.m31;
    *&v39.m33 = v14;
    v35 = v14;
    v36 = *&v39.m31;
    v15 = *&CATransform3DIdentity.m43;
    *&v39.m41 = *&CATransform3DIdentity.m41;
    *&v39.m43 = v15;
    v33 = v15;
    v34 = *&v39.m41;
    v16 = *&CATransform3DIdentity.m13;
    *&v39.m11 = *&CATransform3DIdentity.m11;
    *&v39.m13 = v16;
    v31 = v16;
    v32 = *&v39.m11;
    v17 = *&CATransform3DIdentity.m23;
    *&v39.m21 = *&CATransform3DIdentity.m21;
    *&v39.m23 = v17;
    v29 = v17;
    v30 = *&v39.m21;
    v18 = *&v13;
    *&v38.m31 = *&v39.m31;
    *&v38.m33 = v14;
    *&v38.m41 = *&v39.m41;
    *&v38.m43 = v15;
    *&v38.m11 = *&v39.m11;
    *&v38.m13 = v16;
    *&v38.m21 = *&v39.m21;
    *&v38.m23 = v17;
    CATransform3DTranslate(&v39, &v38, -(x * *&v13 - x), -(y * *&v13 - y), 0.0);
    v37 = v39;
    CATransform3DTranslate(&v38, &v37, -(width - width * v18) * -0.5, -(height - height * v18) * -0.5, 0.0);
    v39 = v38;
    v37 = v38;
    CATransform3DScale(&v38, &v37, v18, v18, 1.0);
    v39 = v38;
    v19 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    [v19 setKeyTimes:&off_1018E1F38];
    *&v38.m31 = v36;
    *&v38.m33 = v35;
    *&v38.m41 = v34;
    *&v38.m43 = v33;
    *&v38.m11 = v32;
    *&v38.m13 = v31;
    *&v38.m21 = v30;
    *&v38.m23 = v29;
    v20 = [NSValue valueWithCATransform3D:&v38];
    v41[0] = v20;
    v38 = v39;
    v21 = [NSValue valueWithCATransform3D:&v38];
    v41[1] = v21;
    *&v38.m31 = v36;
    *&v38.m33 = v35;
    *&v38.m41 = v34;
    *&v38.m43 = v33;
    *&v38.m11 = v32;
    *&v38.m13 = v31;
    *&v38.m21 = v30;
    *&v38.m23 = v29;
    v22 = [NSValue valueWithCATransform3D:&v38];
    v41[2] = v22;
    v23 = [NSArray arrayWithObjects:v41 count:3];
    [v19 setValues:v23];

    v24 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    v40[0] = v24;
    v25 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    v40[1] = v25;
    v26 = [NSArray arrayWithObjects:v40 count:2];
    [v19 setTimingFunctions:v26];

    [v19 setDuration:self->_duration];
    [v19 setDelegate:self];
    v27 = [(CRLHighlightController *)self layerToAnimate];
    [v27 addAnimation:v19 forKey:@"PulseAnimation"];
  }

  else
  {
    delegate = self->_delegate;

    [(CRLPulseAnimationControllerProtocol *)delegate pulseAnimationDidStopForPulse:self];
  }
}

- (void)startAnimating
{
  v3 = [(CRLPulseAnimationController *)self pulseAnimationStyle];
  if (v3 == 1)
  {

    [(CRLPulseAnimationController *)self startAnimatingStandardThreePhasePulse];
  }

  else if (!v3)
  {

    [(CRLPulseAnimationController *)self startAnimatingStandardPulse];
  }
}

@end