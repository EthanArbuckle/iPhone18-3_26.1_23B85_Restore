@interface CarSharingRingView
- (CAAnimationDelegate)animationDelegate;
- (CGColor)color;
- (CarSharingRingView)initWithFrame:(CGRect)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)layoutSubviews;
- (void)setColor:(CGColor *)a3;
- (void)setFilled:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CarSharingRingView

- (CAAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CarSharingRingView *)self setFilled:[(CarSharingRingView *)self isFilled]];
  v7 = [(CarSharingRingView *)self animationDelegate];
  [v7 animationDidStop:v6 finished:v4];
}

- (void)setFilled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  self->_filled = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v7 = [(CarSharingRingView *)self shapeLayer];
  [v7 removeAnimationForKey:@"drawCircleAnimation"];

  if (v4)
  {
    v8 = [(CarSharingRingView *)self shapeLayer];
    [v8 setStrokeEnd:(v5 ^ 1)];

    [(CarSharingRingView *)self setAlpha:1.0];
    +[CATransaction commit];
    v14 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    [v14 setDuration:1.5];
    v9 = [NSNumber numberWithInt:v5];
    [v14 setToValue:v9];

    v10 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v14 setTimingFunction:v10];

    [v14 setDelegate:self];
    [v14 setFillMode:kCAFillModeBoth];
    [v14 setRemovedOnCompletion:0];
    v11 = [(CarSharingRingView *)self shapeLayer];
    [v11 addAnimation:v14 forKey:@"drawCircleAnimation"];
  }

  else
  {
    v12 = v5;
    v13 = [(CarSharingRingView *)self shapeLayer];
    [v13 setStrokeEnd:v12];

    [(CarSharingRingView *)self setAlpha:v12];

    +[CATransaction commit];
  }
}

- (void)setColor:(CGColor *)a3
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v5 = [(CarSharingRingView *)self shapeLayer];
  [v5 setStrokeColor:a3];

  +[CATransaction commit];
}

- (CGColor)color
{
  v2 = [(CarSharingRingView *)self shapeLayer];
  v3 = [v2 strokeColor];

  return v3;
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
    v7 = [v6 CGPath];
    v8 = [(CarSharingRingView *)self shapeLayer];
    [v8 setPath:v7];
  }
}

- (CarSharingRingView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = CarSharingRingView;
  v3 = [(CarSharingRingView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarSharingRingView *)v3 setUserInteractionEnabled:0];
    v5 = +[UIColor clearColor];
    v6 = [v5 CGColor];
    v7 = [(CarSharingRingView *)v4 shapeLayer];
    [v7 setFillColor:v6];

    v8 = [(CarSharingRingView *)v4 shapeLayer];
    [v8 setLineWidth:2.0];

    v9 = [(CarSharingRingView *)v4 shapeLayer];
    [v9 setStrokeEnd:0.0];

    CGAffineTransformMakeRotation(&v13, -1.57079633);
    v10 = [(CarSharingRingView *)v4 shapeLayer];
    v12 = v13;
    [v10 setAffineTransform:&v12];
  }

  return v4;
}

@end