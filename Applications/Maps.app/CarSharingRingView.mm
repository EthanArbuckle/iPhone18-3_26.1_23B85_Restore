@interface CarSharingRingView
- (CAAnimationDelegate)animationDelegate;
- (CGColor)color;
- (CarSharingRingView)initWithFrame:(CGRect)frame;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)layoutSubviews;
- (void)setColor:(CGColor *)color;
- (void)setFilled:(BOOL)filled animated:(BOOL)animated;
@end

@implementation CarSharingRingView

- (CAAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  [(CarSharingRingView *)self setFilled:[(CarSharingRingView *)self isFilled]];
  animationDelegate = [(CarSharingRingView *)self animationDelegate];
  [animationDelegate animationDidStop:stopCopy finished:finishedCopy];
}

- (void)setFilled:(BOOL)filled animated:(BOOL)animated
{
  animatedCopy = animated;
  filledCopy = filled;
  self->_filled = filled;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  shapeLayer = [(CarSharingRingView *)self shapeLayer];
  [shapeLayer removeAnimationForKey:@"drawCircleAnimation"];

  if (animatedCopy)
  {
    shapeLayer2 = [(CarSharingRingView *)self shapeLayer];
    [shapeLayer2 setStrokeEnd:(filledCopy ^ 1)];

    [(CarSharingRingView *)self setAlpha:1.0];
    +[CATransaction commit];
    v14 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    [v14 setDuration:1.5];
    v9 = [NSNumber numberWithInt:filledCopy];
    [v14 setToValue:v9];

    v10 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v14 setTimingFunction:v10];

    [v14 setDelegate:self];
    [v14 setFillMode:kCAFillModeBoth];
    [v14 setRemovedOnCompletion:0];
    shapeLayer3 = [(CarSharingRingView *)self shapeLayer];
    [shapeLayer3 addAnimation:v14 forKey:@"drawCircleAnimation"];
  }

  else
  {
    v12 = filledCopy;
    shapeLayer4 = [(CarSharingRingView *)self shapeLayer];
    [shapeLayer4 setStrokeEnd:v12];

    [(CarSharingRingView *)self setAlpha:v12];

    +[CATransaction commit];
  }
}

- (void)setColor:(CGColor *)color
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  shapeLayer = [(CarSharingRingView *)self shapeLayer];
  [shapeLayer setStrokeColor:color];

  +[CATransaction commit];
}

- (CGColor)color
{
  shapeLayer = [(CarSharingRingView *)self shapeLayer];
  strokeColor = [shapeLayer strokeColor];

  return strokeColor;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CarSharingRingView;
  [(CarSharingRingView *)&v9 layoutSubviews];
  [(CarSharingRingView *)self bounds];
  if (v3 != self->_lastSize.width || v4 != self->_lastSize.height)
  {
    self->_lastSize.width = v3;
    self->_lastSize.height = v4;
    v6 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0];
    cGPath = [v6 CGPath];
    shapeLayer = [(CarSharingRingView *)self shapeLayer];
    [shapeLayer setPath:cGPath];
  }
}

- (CarSharingRingView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = CarSharingRingView;
  v3 = [(CarSharingRingView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarSharingRingView *)v3 setUserInteractionEnabled:0];
    v5 = +[UIColor clearColor];
    cGColor = [v5 CGColor];
    shapeLayer = [(CarSharingRingView *)v4 shapeLayer];
    [shapeLayer setFillColor:cGColor];

    shapeLayer2 = [(CarSharingRingView *)v4 shapeLayer];
    [shapeLayer2 setLineWidth:2.0];

    shapeLayer3 = [(CarSharingRingView *)v4 shapeLayer];
    [shapeLayer3 setStrokeEnd:0.0];

    CGAffineTransformMakeRotation(&v13, -1.57079633);
    shapeLayer4 = [(CarSharingRingView *)v4 shapeLayer];
    v12 = v13;
    [shapeLayer4 setAffineTransform:&v12];
  }

  return v4;
}

@end