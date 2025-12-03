@interface CircularProgressView
- (CGSize)size;
- (CircularProgressView)initWithSize:(CGSize)size;
- (void)layoutSubviews;
- (void)setProgress:(double)progress animated:(BOOL)animated;
@end

@implementation CircularProgressView

- (CircularProgressView)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v20.receiver = self;
  v20.super_class = CircularProgressView;
  v5 = [(CircularProgressView *)&v20 initWithFrame:0.0, 0.0, size.width, size.height];
  v6 = v5;
  if (v5)
  {
    v5->_size.width = width;
    v5->_size.height = height;
    v7 = +[CATextLayer layer];
    backgroundPercentageLayer = v6->_backgroundPercentageLayer;
    v6->_backgroundPercentageLayer = v7;

    v9 = +[CAShapeLayer layer];
    backgroundStrokeLayer = v6->_backgroundStrokeLayer;
    v6->_backgroundStrokeLayer = v9;

    v11 = +[CAShapeLayer layer];
    animatedStrokeLayer = v6->_animatedStrokeLayer;
    v6->_animatedStrokeLayer = v11;

    [(CATextLayer *)v6->_backgroundPercentageLayer setString:&stru_100020878];
    v13 = +[UIColor grayColor];
    -[CATextLayer setForegroundColor:](v6->_backgroundPercentageLayer, "setForegroundColor:", [v13 CGColor]);

    [(CATextLayer *)v6->_backgroundPercentageLayer setAlignmentMode:kCAAlignmentCenter];
    [(CATextLayer *)v6->_backgroundPercentageLayer setFontSize:31.0];
    v14 = +[UIScreen mainScreen];
    [v14 scale];
    [(CATextLayer *)v6->_backgroundPercentageLayer setContentsScale:?];

    [(CAShapeLayer *)v6->_backgroundStrokeLayer setFillColor:0];
    v15 = [UIColor colorWithWhite:0.5 alpha:0.5];
    -[CAShapeLayer setStrokeColor:](v6->_backgroundStrokeLayer, "setStrokeColor:", [v15 CGColor]);

    [(CAShapeLayer *)v6->_backgroundStrokeLayer setStrokeStart:0.0];
    [(CAShapeLayer *)v6->_backgroundStrokeLayer setStrokeEnd:1.0];
    [(CAShapeLayer *)v6->_backgroundStrokeLayer setLineWidth:5.0];
    [(CAShapeLayer *)v6->_animatedStrokeLayer setFillColor:0];
    v16 = +[UIColor blueColor];
    -[CAShapeLayer setStrokeColor:](v6->_animatedStrokeLayer, "setStrokeColor:", [v16 CGColor]);

    [(CAShapeLayer *)v6->_animatedStrokeLayer setStrokeStart:0.0];
    [(CAShapeLayer *)v6->_animatedStrokeLayer setStrokeEnd:0.0];
    [(CAShapeLayer *)v6->_animatedStrokeLayer setLineWidth:5.0];
    [(CAShapeLayer *)v6->_animatedStrokeLayer setLineCap:kCALineCapRound];
    layer = [(CircularProgressView *)v6 layer];
    [layer addSublayer:v6->_backgroundStrokeLayer];

    layer2 = [(CircularProgressView *)v6 layer];
    [layer2 addSublayer:v6->_animatedStrokeLayer];
  }

  return v6;
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = CircularProgressView;
  [(CircularProgressView *)&v43 layoutSubviews];
  [(CircularProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backgroundPercentageLayer = [(CircularProgressView *)self backgroundPercentageLayer];
  [backgroundPercentageLayer setFrame:{v4, v6, v8, v10}];

  [(CircularProgressView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  backgroundStrokeLayer = [(CircularProgressView *)self backgroundStrokeLayer];
  [backgroundStrokeLayer setFrame:{v13, v15, v17, v19}];

  [(CircularProgressView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  animatedStrokeLayer = [(CircularProgressView *)self animatedStrokeLayer];
  [animatedStrokeLayer setFrame:{v22, v24, v26, v28}];

  [(CircularProgressView *)self bounds];
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  MidX = CGRectGetMidX(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MidY = CGRectGetMidY(v45);
  [(CircularProgressView *)self bounds];
  v36 = CGRectGetWidth(v46);
  [(CircularProgressView *)self bounds];
  v37 = CGRectGetHeight(v47);
  if (v36 < v37)
  {
    v37 = v36;
  }

  v38 = [UIBezierPath bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v37 * 0.5 clockwise:-1.57079633, 4.71238898];
  cGPath = [v38 CGPath];
  backgroundStrokeLayer2 = [(CircularProgressView *)self backgroundStrokeLayer];
  [backgroundStrokeLayer2 setPath:cGPath];

  cGPath2 = [v38 CGPath];
  animatedStrokeLayer2 = [(CircularProgressView *)self animatedStrokeLayer];
  [animatedStrokeLayer2 setPath:cGPath2];
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  if (progress < 0.0)
  {
    progress = 0.0;
  }

  v4 = fmin(progress, 1.0);
  if (v4 != self->_progress)
  {
    self->_progress = v4;
    progress = v4;
    if (animated)
    {
      v7 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
      animatedStrokeLayer = [(CircularProgressView *)self animatedStrokeLayer];
      [animatedStrokeLayer strokeEnd];
      v9 = [NSNumber numberWithDouble:?];
      [v7 setFromValue:v9];

      v10 = [NSNumber numberWithDouble:self->_progress];
      [v7 setToValue:v10];

      [v7 setDuration:2.0];
      animatedStrokeLayer2 = [(CircularProgressView *)self animatedStrokeLayer];
      [animatedStrokeLayer2 addAnimation:v7 forKey:@"strokeEnd"];

      progress = self->_progress;
    }

    animatedStrokeLayer3 = [(CircularProgressView *)self animatedStrokeLayer];
    [animatedStrokeLayer3 setStrokeEnd:progress];

    v14 = [NSString stringWithFormat:@"\n%d", (v4 * 100.0)];
    backgroundPercentageLayer = [(CircularProgressView *)self backgroundPercentageLayer];
    [backgroundPercentageLayer setString:v14];
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end