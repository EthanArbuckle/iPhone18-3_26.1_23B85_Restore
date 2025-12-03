@interface DACheckAnimationView
- (DACheckAnimationView)initWithColor:(id)color lineWidth:(double)width scale:(double)scale;
- (DACheckAnimationView)initWithFrame:(CGRect)frame color:(id)color scale:(double)scale;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)animateWithCompletion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)hide;
- (void)layoutSubviews;
- (void)show;
- (void)updateCheckPath;
@end

@implementation DACheckAnimationView

- (DACheckAnimationView)initWithFrame:(CGRect)frame color:(id)color scale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v27.receiver = self;
  v27.super_class = DACheckAnimationView;
  height = [(DACheckAnimationView *)&v27 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    [(DACheckAnimationView *)height setStrokeColor:colorCopy];
    layer = [(DACheckAnimationView *)v13 layer];
    [(DACheckAnimationView *)v13 setCheck:layer];

    strokeColor = [(DACheckAnimationView *)v13 strokeColor];
    cGColor = [strokeColor CGColor];
    check = [(DACheckAnimationView *)v13 check];
    [check setStrokeColor:cGColor];

    v18 = +[UIColor clearColor];
    cGColor2 = [v18 CGColor];
    check2 = [(DACheckAnimationView *)v13 check];
    [check2 setFillColor:cGColor2];

    check3 = [(DACheckAnimationView *)v13 check];
    [check3 setLineWidth:scale * 5.0];

    check4 = [(DACheckAnimationView *)v13 check];
    [check4 setStrokeStart:0.0];

    check5 = [(DACheckAnimationView *)v13 check];
    [check5 setStrokeEnd:0.0];

    check6 = [(DACheckAnimationView *)v13 check];
    [check6 setLineCap:kCALineCapRound];

    check7 = [(DACheckAnimationView *)v13 check];
    [check7 setLineJoin:kCALineJoinRound];
  }

  return v13;
}

- (DACheckAnimationView)initWithColor:(id)color lineWidth:(double)width scale:(double)scale
{
  scale = [(DACheckAnimationView *)self initWithFrame:color color:CGRectZero.origin.x scale:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, scale];
  v7 = scale;
  if (scale)
  {
    check = [(DACheckAnimationView *)scale check];
    [check setLineWidth:width];
  }

  return v7;
}

- (void)hide
{
  check = [(DACheckAnimationView *)self check];
  [check setStrokeEnd:0.0];
}

- (void)show
{
  check = [(DACheckAnimationView *)self check];
  [check setStrokeEnd:1.0];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  strokeColor = [(DACheckAnimationView *)self strokeColor];
  v3 = strokeColor;
  cGColor = [strokeColor CGColor];
  check = [(DACheckAnimationView *)self check];
  [check setStrokeColor:cGColor];
}

- (void)layoutSubviews
{
  check = [(DACheckAnimationView *)self check];
  strokeColor = [check strokeColor];
  strokeColor2 = [(DACheckAnimationView *)self strokeColor];
  cGColor = [strokeColor2 CGColor];

  if (strokeColor != cGColor)
  {
    strokeColor3 = [(DACheckAnimationView *)self strokeColor];
    cGColor2 = [strokeColor3 CGColor];
    check2 = [(DACheckAnimationView *)self check];
    [check2 setStrokeColor:cGColor2];
  }

  v10.receiver = self;
  v10.super_class = DACheckAnimationView;
  [(DACheckAnimationView *)&v10 layoutSubviews];
  [(DACheckAnimationView *)self updateCheckPath];
}

- (void)updateCheckPath
{
  [(DACheckAnimationView *)self bounds];
  v4 = v3;
  v5 = v3 * 0.75;
  v6 = v3 * 0.419999987;
  v7 = v3 * 0.75 * 0.550000012;
  v11 = +[UIBezierPath bezierPath];
  [v11 moveToPoint:{0.0, v7}];
  [v11 addLineToPoint:{v6, v5}];
  [v11 addLineToPoint:{v4, 0.0}];
  v8 = v11;
  cGPath = [v11 CGPath];
  check = [(DACheckAnimationView *)self check];
  [check setPath:cGPath];
}

- (void)animateWithCompletion:(id)completion
{
  [(DACheckAnimationView *)self setAnimationCompletion:completion];
  check = [(DACheckAnimationView *)self check];
  [check setStrokeEnd:1.0];

  v8 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
  [v8 setDuration:0.375];
  [v8 setFillMode:kCAFillModeBoth];
  [v8 setBeginTime:CACurrentMediaTime() + 0.150000006];
  [v8 setFromValue:&off_1001CCD80];
  [v8 setToValue:&off_1001CCD90];
  [v8 setDelegate:self];
  v5 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v8 setTimingFunction:v5];

  LODWORD(v6) = 1.0;
  [v8 setRepeatCount:v6];
  check2 = [(DACheckAnimationView *)self check];
  [check2 addAnimation:v8 forKey:@"strokeEndAnimation"];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  animationCompletion = [(DACheckAnimationView *)self animationCompletion];

  if (animationCompletion)
  {
    animationCompletion2 = [(DACheckAnimationView *)self animationCompletion];
    animationCompletion2[2](animationCompletion2, finishedCopy);
  }
}

@end