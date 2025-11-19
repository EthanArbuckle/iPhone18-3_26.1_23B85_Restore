@interface DACheckAnimationView
- (DACheckAnimationView)initWithColor:(id)a3 lineWidth:(double)a4 scale:(double)a5;
- (DACheckAnimationView)initWithFrame:(CGRect)a3 color:(id)a4 scale:(double)a5;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)animateWithCompletion:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)hide;
- (void)layoutSubviews;
- (void)show;
- (void)updateCheckPath;
@end

@implementation DACheckAnimationView

- (DACheckAnimationView)initWithFrame:(CGRect)a3 color:(id)a4 scale:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v27.receiver = self;
  v27.super_class = DACheckAnimationView;
  v12 = [(DACheckAnimationView *)&v27 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(DACheckAnimationView *)v12 setStrokeColor:v11];
    v14 = [(DACheckAnimationView *)v13 layer];
    [(DACheckAnimationView *)v13 setCheck:v14];

    v15 = [(DACheckAnimationView *)v13 strokeColor];
    v16 = [v15 CGColor];
    v17 = [(DACheckAnimationView *)v13 check];
    [v17 setStrokeColor:v16];

    v18 = +[UIColor clearColor];
    v19 = [v18 CGColor];
    v20 = [(DACheckAnimationView *)v13 check];
    [v20 setFillColor:v19];

    v21 = [(DACheckAnimationView *)v13 check];
    [v21 setLineWidth:a5 * 5.0];

    v22 = [(DACheckAnimationView *)v13 check];
    [v22 setStrokeStart:0.0];

    v23 = [(DACheckAnimationView *)v13 check];
    [v23 setStrokeEnd:0.0];

    v24 = [(DACheckAnimationView *)v13 check];
    [v24 setLineCap:kCALineCapRound];

    v25 = [(DACheckAnimationView *)v13 check];
    [v25 setLineJoin:kCALineJoinRound];
  }

  return v13;
}

- (DACheckAnimationView)initWithColor:(id)a3 lineWidth:(double)a4 scale:(double)a5
{
  v6 = [(DACheckAnimationView *)self initWithFrame:a3 color:CGRectZero.origin.x scale:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, a5];
  v7 = v6;
  if (v6)
  {
    v8 = [(DACheckAnimationView *)v6 check];
    [v8 setLineWidth:a4];
  }

  return v7;
}

- (void)hide
{
  v2 = [(DACheckAnimationView *)self check];
  [v2 setStrokeEnd:0.0];
}

- (void)show
{
  v2 = [(DACheckAnimationView *)self check];
  [v2 setStrokeEnd:1.0];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v6 = [(DACheckAnimationView *)self strokeColor];
  v3 = v6;
  v4 = [v6 CGColor];
  v5 = [(DACheckAnimationView *)self check];
  [v5 setStrokeColor:v4];
}

- (void)layoutSubviews
{
  v3 = [(DACheckAnimationView *)self check];
  v4 = [v3 strokeColor];
  v5 = [(DACheckAnimationView *)self strokeColor];
  v6 = [v5 CGColor];

  if (v4 != v6)
  {
    v7 = [(DACheckAnimationView *)self strokeColor];
    v8 = [v7 CGColor];
    v9 = [(DACheckAnimationView *)self check];
    [v9 setStrokeColor:v8];
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
  v9 = [v11 CGPath];
  v10 = [(DACheckAnimationView *)self check];
  [v10 setPath:v9];
}

- (void)animateWithCompletion:(id)a3
{
  [(DACheckAnimationView *)self setAnimationCompletion:a3];
  v4 = [(DACheckAnimationView *)self check];
  [v4 setStrokeEnd:1.0];

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
  v7 = [(DACheckAnimationView *)self check];
  [v7 addAnimation:v8 forKey:@"strokeEndAnimation"];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = [(DACheckAnimationView *)self animationCompletion];

  if (v6)
  {
    v7 = [(DACheckAnimationView *)self animationCompletion];
    v7[2](v7, v4);
  }
}

@end