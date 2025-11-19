@interface ForceTouchRingView
- (CGPoint)ringCenter;
- (ForceTouchRingView)initWithFrame:(CGRect)a3 ringCenter:(CGPoint)a4 startingCircleRadius:(float)a5 startingCircleRatio:(float)a6 endingCircleRatio:(float)a7 ringStartingColor:(id)a8 ringSuccessColor:(id)a9 ringFailedColor:(id)a10;
- (id)colorInterpolationFromColor:(id)a3 toColor:(id)a4 atRatio:(double)a5;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)playCircleAnimationWithCompletion:(id)a3;
- (void)updateCircleWithPressureRatio:(double)a3;
@end

@implementation ForceTouchRingView

- (ForceTouchRingView)initWithFrame:(CGRect)a3 ringCenter:(CGPoint)a4 startingCircleRadius:(float)a5 startingCircleRatio:(float)a6 endingCircleRatio:(float)a7 ringStartingColor:(id)a8 ringSuccessColor:(id)a9 ringFailedColor:(id)a10
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v19 = a3.origin.y;
  v20 = a3.origin.x;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v34.receiver = self;
  v34.super_class = ForceTouchRingView;
  v25 = [(ForceTouchRingView *)&v34 initWithFrame:v20, v19, width, height];
  if (v25)
  {
    v26 = +[UIColor clearColor];
    [(ForceTouchRingView *)v25 setBackgroundColor:v26];

    v25->_ringCenter.x = x;
    v25->_ringCenter.y = y;
    v25->_startingCircleRadius = a5;
    objc_storeStrong(&v25->_ringStartingColor, a8);
    objc_storeStrong(&v25->_ringSuccessColor, a9);
    objc_storeStrong(&v25->_ringFailedColor, a10);
    if (a6 >= a7)
    {
      v27 = a7;
    }

    else
    {
      v27 = a6;
    }

    v25->_minimumCircleRatio = v27;
    if (a6 >= a7)
    {
      v28 = a6;
    }

    else
    {
      v28 = a7;
    }

    v25->_maximumCircleRatio = v28;
    v25->_ringShouldGrow = a6 <= a7;
    v29 = [UIBezierPath bezierPathWithArcCenter:1 radius:v25->_ringCenter.x startAngle:v25->_ringCenter.y endAngle:(v25->_startingCircleRadius * v25->_minimumCircleRatio) clockwise:0.0, 6.28318531];
    [(ForceTouchRingView *)v25 setCirclePath:v29];

    v30 = [(ForceTouchRingView *)v25 layer];
    circle = v25->_circle;
    v25->_circle = v30;

    v32 = [(ForceTouchRingView *)v25 circlePath];
    -[CAShapeLayer setPath:](v25->_circle, "setPath:", [v32 CGPath]);

    -[CAShapeLayer setStrokeColor:](v25->_circle, "setStrokeColor:", [v22 CGColor]);
    -[CAShapeLayer setFillColor:](v25->_circle, "setFillColor:", [v22 CGColor]);
  }

  return v25;
}

- (void)playCircleAnimationWithCompletion:(id)a3
{
  [(ForceTouchRingView *)self setAnimationCompletion:a3];
  [(ForceTouchRingView *)self ringCenter];
  v5 = v4;
  v7 = v6;
  [(ForceTouchRingView *)self startingCircleRadius];
  v9 = v8;
  [(ForceTouchRingView *)self minimumCircleRatio];
  v11 = [UIBezierPath bezierPathWithArcCenter:1 radius:v5 startAngle:v7 endAngle:(v9 * v10) clockwise:0.0, 6.28318531];
  [(ForceTouchRingView *)self setCirclePath:v11];

  v12 = [(ForceTouchRingView *)self circlePath];
  v13 = [v12 CGPath];
  v14 = [(ForceTouchRingView *)self circle];
  [v14 setPath:v13];

  v15 = [CABasicAnimation animationWithKeyPath:@"path"];
  [(ForceTouchRingView *)self setCirclePathAnimation:v15];

  v16 = [(ForceTouchRingView *)self circlePathAnimation];
  [v16 setDuration:0.5];

  v17 = [(ForceTouchRingView *)self circlePathAnimation];
  [v17 setDelegate:self];

  v19 = [(ForceTouchRingView *)self circle];
  v18 = [(ForceTouchRingView *)self circlePathAnimation];
  [v19 addAnimation:v18 forKey:0];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    v5 = [(ForceTouchRingView *)self animationCompletion];

    if (v5)
    {
      v6 = [(ForceTouchRingView *)self animationCompletion];
      v6[2]();
    }
  }
}

- (id)colorInterpolationFromColor:(id)a3 toColor:(id)a4 atRatio:(double)a5
{
  v8 = a3;
  v9 = a4;
  Components = CGColorGetComponents([a3 CGColor]);
  v11 = [v9 CGColor];

  v12 = CGColorGetComponents(v11);
  v13 = *v12 * a5 + (1.0 - a5) * *Components;
  v14 = v12[1] * a5 + (1.0 - a5) * Components[1];
  v15 = v12[2] * a5 + (1.0 - a5) * Components[2];

  return [UIColor colorWithRed:v13 green:v14 blue:v15 alpha:1.0];
}

- (void)updateCircleWithPressureRatio:(double)a3
{
  if ([(ForceTouchRingView *)self timedOut])
  {
    v5 = [(ForceTouchRingView *)self ringStartingColor];
    v6 = [(ForceTouchRingView *)self ringFailedColor];
    v7 = [(ForceTouchRingView *)self colorInterpolationFromColor:v5 toColor:v6 atRatio:1.0];
    v8 = [v7 CGColor];
    v9 = [(ForceTouchRingView *)self circle];
    [v9 setStrokeColor:v8];

    v10 = [(ForceTouchRingView *)self ringStartingColor];
    v11 = [(ForceTouchRingView *)self ringFailedColor];
    v12 = [(ForceTouchRingView *)self colorInterpolationFromColor:v10 toColor:v11 atRatio:1.0];
    v13 = [v12 CGColor];
    v14 = [(ForceTouchRingView *)self circle];
    [v14 setFillColor:v13];
  }

  else
  {
    v15 = fmin(fmax(a3, 0.0), 1.0);
    v16 = [(ForceTouchRingView *)self ringStartingColor];
    v17 = [(ForceTouchRingView *)self ringSuccessColor];
    v18 = [(ForceTouchRingView *)self colorInterpolationFromColor:v16 toColor:v17 atRatio:v15];
    v19 = [v18 CGColor];
    v20 = [(ForceTouchRingView *)self circle];
    [v20 setStrokeColor:v19];

    v21 = [(ForceTouchRingView *)self ringStartingColor];
    v22 = [(ForceTouchRingView *)self ringSuccessColor];
    v23 = [(ForceTouchRingView *)self colorInterpolationFromColor:v21 toColor:v22 atRatio:v15];
    v24 = [v23 CGColor];
    v25 = [(ForceTouchRingView *)self circle];
    [v25 setFillColor:v24];

    [(ForceTouchRingView *)self maximumCircleRatio];
    v27 = v26;
    if (v15 < v27)
    {
      v27 = v15;
    }

    [(ForceTouchRingView *)self setPressureRatio:v27];
  }

  [(ForceTouchRingView *)self ringCenter];
  v29 = v28;
  v31 = v30;
  [(ForceTouchRingView *)self startingCircleRadius];
  v33 = v32;
  if ([(ForceTouchRingView *)self ringShouldGrow])
  {
    [(ForceTouchRingView *)self pressureRatio];
    v35 = v34;
  }

  else
  {
    [(ForceTouchRingView *)self maximumCircleRatio];
    v37 = v36;
    [(ForceTouchRingView *)self pressureRatio];
    v35 = v37 - v38;
  }

  v39 = v33;
  [(ForceTouchRingView *)self minimumCircleRatio];
  v41 = v40;
  if (v35 >= v41)
  {
    v41 = v35;
  }

  v42 = [UIBezierPath bezierPathWithArcCenter:1 radius:v29 startAngle:v31 endAngle:v41 * v39 clockwise:0.0, 6.28318531];
  [(ForceTouchRingView *)self setCirclePath:v42];

  v46 = [(ForceTouchRingView *)self circlePath];
  v43 = v46;
  v44 = [v46 CGPath];
  v45 = [(ForceTouchRingView *)self circle];
  [v45 setPath:v44];
}

- (CGPoint)ringCenter
{
  x = self->_ringCenter.x;
  y = self->_ringCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end