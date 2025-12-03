@interface ForceTouchRingView
- (CGPoint)ringCenter;
- (ForceTouchRingView)initWithFrame:(CGRect)frame ringCenter:(CGPoint)center startingCircleRadius:(float)radius startingCircleRatio:(float)ratio endingCircleRatio:(float)circleRatio ringStartingColor:(id)color ringSuccessColor:(id)successColor ringFailedColor:(id)self0;
- (id)colorInterpolationFromColor:(id)color toColor:(id)toColor atRatio:(double)ratio;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)playCircleAnimationWithCompletion:(id)completion;
- (void)updateCircleWithPressureRatio:(double)ratio;
@end

@implementation ForceTouchRingView

- (ForceTouchRingView)initWithFrame:(CGRect)frame ringCenter:(CGPoint)center startingCircleRadius:(float)radius startingCircleRatio:(float)ratio endingCircleRatio:(float)circleRatio ringStartingColor:(id)color ringSuccessColor:(id)successColor ringFailedColor:(id)self0
{
  y = center.y;
  x = center.x;
  height = frame.size.height;
  width = frame.size.width;
  v19 = frame.origin.y;
  v20 = frame.origin.x;
  colorCopy = color;
  successColorCopy = successColor;
  failedColorCopy = failedColor;
  v34.receiver = self;
  v34.super_class = ForceTouchRingView;
  height = [(ForceTouchRingView *)&v34 initWithFrame:v20, v19, width, height];
  if (height)
  {
    v26 = +[UIColor clearColor];
    [(ForceTouchRingView *)height setBackgroundColor:v26];

    height->_ringCenter.x = x;
    height->_ringCenter.y = y;
    height->_startingCircleRadius = radius;
    objc_storeStrong(&height->_ringStartingColor, color);
    objc_storeStrong(&height->_ringSuccessColor, successColor);
    objc_storeStrong(&height->_ringFailedColor, failedColor);
    if (ratio >= circleRatio)
    {
      ratioCopy = circleRatio;
    }

    else
    {
      ratioCopy = ratio;
    }

    height->_minimumCircleRatio = ratioCopy;
    if (ratio >= circleRatio)
    {
      circleRatioCopy2 = ratio;
    }

    else
    {
      circleRatioCopy2 = circleRatio;
    }

    height->_maximumCircleRatio = circleRatioCopy2;
    height->_ringShouldGrow = ratio <= circleRatio;
    v29 = [UIBezierPath bezierPathWithArcCenter:1 radius:height->_ringCenter.x startAngle:height->_ringCenter.y endAngle:(height->_startingCircleRadius * height->_minimumCircleRatio) clockwise:0.0, 6.28318531];
    [(ForceTouchRingView *)height setCirclePath:v29];

    layer = [(ForceTouchRingView *)height layer];
    circle = height->_circle;
    height->_circle = layer;

    circlePath = [(ForceTouchRingView *)height circlePath];
    -[CAShapeLayer setPath:](height->_circle, "setPath:", [circlePath CGPath]);

    -[CAShapeLayer setStrokeColor:](height->_circle, "setStrokeColor:", [colorCopy CGColor]);
    -[CAShapeLayer setFillColor:](height->_circle, "setFillColor:", [colorCopy CGColor]);
  }

  return height;
}

- (void)playCircleAnimationWithCompletion:(id)completion
{
  [(ForceTouchRingView *)self setAnimationCompletion:completion];
  [(ForceTouchRingView *)self ringCenter];
  v5 = v4;
  v7 = v6;
  [(ForceTouchRingView *)self startingCircleRadius];
  v9 = v8;
  [(ForceTouchRingView *)self minimumCircleRatio];
  v11 = [UIBezierPath bezierPathWithArcCenter:1 radius:v5 startAngle:v7 endAngle:(v9 * v10) clockwise:0.0, 6.28318531];
  [(ForceTouchRingView *)self setCirclePath:v11];

  circlePath = [(ForceTouchRingView *)self circlePath];
  cGPath = [circlePath CGPath];
  circle = [(ForceTouchRingView *)self circle];
  [circle setPath:cGPath];

  v15 = [CABasicAnimation animationWithKeyPath:@"path"];
  [(ForceTouchRingView *)self setCirclePathAnimation:v15];

  circlePathAnimation = [(ForceTouchRingView *)self circlePathAnimation];
  [circlePathAnimation setDuration:0.5];

  circlePathAnimation2 = [(ForceTouchRingView *)self circlePathAnimation];
  [circlePathAnimation2 setDelegate:self];

  circle2 = [(ForceTouchRingView *)self circle];
  circlePathAnimation3 = [(ForceTouchRingView *)self circlePathAnimation];
  [circle2 addAnimation:circlePathAnimation3 forKey:0];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    animationCompletion = [(ForceTouchRingView *)self animationCompletion];

    if (animationCompletion)
    {
      animationCompletion2 = [(ForceTouchRingView *)self animationCompletion];
      animationCompletion2[2]();
    }
  }
}

- (id)colorInterpolationFromColor:(id)color toColor:(id)toColor atRatio:(double)ratio
{
  colorCopy = color;
  toColorCopy = toColor;
  Components = CGColorGetComponents([color CGColor]);
  cGColor = [toColorCopy CGColor];

  v12 = CGColorGetComponents(cGColor);
  v13 = *v12 * ratio + (1.0 - ratio) * *Components;
  v14 = v12[1] * ratio + (1.0 - ratio) * Components[1];
  v15 = v12[2] * ratio + (1.0 - ratio) * Components[2];

  return [UIColor colorWithRed:v13 green:v14 blue:v15 alpha:1.0];
}

- (void)updateCircleWithPressureRatio:(double)ratio
{
  if ([(ForceTouchRingView *)self timedOut])
  {
    ringStartingColor = [(ForceTouchRingView *)self ringStartingColor];
    ringFailedColor = [(ForceTouchRingView *)self ringFailedColor];
    v7 = [(ForceTouchRingView *)self colorInterpolationFromColor:ringStartingColor toColor:ringFailedColor atRatio:1.0];
    cGColor = [v7 CGColor];
    circle = [(ForceTouchRingView *)self circle];
    [circle setStrokeColor:cGColor];

    ringStartingColor2 = [(ForceTouchRingView *)self ringStartingColor];
    ringFailedColor2 = [(ForceTouchRingView *)self ringFailedColor];
    v12 = [(ForceTouchRingView *)self colorInterpolationFromColor:ringStartingColor2 toColor:ringFailedColor2 atRatio:1.0];
    cGColor2 = [v12 CGColor];
    circle2 = [(ForceTouchRingView *)self circle];
    [circle2 setFillColor:cGColor2];
  }

  else
  {
    v15 = fmin(fmax(ratio, 0.0), 1.0);
    ringStartingColor3 = [(ForceTouchRingView *)self ringStartingColor];
    ringSuccessColor = [(ForceTouchRingView *)self ringSuccessColor];
    v18 = [(ForceTouchRingView *)self colorInterpolationFromColor:ringStartingColor3 toColor:ringSuccessColor atRatio:v15];
    cGColor3 = [v18 CGColor];
    circle3 = [(ForceTouchRingView *)self circle];
    [circle3 setStrokeColor:cGColor3];

    ringStartingColor4 = [(ForceTouchRingView *)self ringStartingColor];
    ringSuccessColor2 = [(ForceTouchRingView *)self ringSuccessColor];
    v23 = [(ForceTouchRingView *)self colorInterpolationFromColor:ringStartingColor4 toColor:ringSuccessColor2 atRatio:v15];
    cGColor4 = [v23 CGColor];
    circle4 = [(ForceTouchRingView *)self circle];
    [circle4 setFillColor:cGColor4];

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

  circlePath = [(ForceTouchRingView *)self circlePath];
  v43 = circlePath;
  cGPath = [circlePath CGPath];
  circle5 = [(ForceTouchRingView *)self circle];
  [circle5 setPath:cGPath];
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