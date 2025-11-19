@interface CircularProgressView
- (CGSize)size;
- (CircularProgressView)initWithSize:(CGSize)a3;
- (void)layoutSubviews;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
@end

@implementation CircularProgressView

- (CircularProgressView)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v20.receiver = self;
  v20.super_class = CircularProgressView;
  v5 = [(CircularProgressView *)&v20 initWithFrame:0.0, 0.0, a3.width, a3.height];
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
    v17 = [(CircularProgressView *)v6 layer];
    [v17 addSublayer:v6->_backgroundStrokeLayer];

    v18 = [(CircularProgressView *)v6 layer];
    [v18 addSublayer:v6->_animatedStrokeLayer];
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
  v11 = [(CircularProgressView *)self backgroundPercentageLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(CircularProgressView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(CircularProgressView *)self backgroundStrokeLayer];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(CircularProgressView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(CircularProgressView *)self animatedStrokeLayer];
  [v29 setFrame:{v22, v24, v26, v28}];

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
  v39 = [v38 CGPath];
  v40 = [(CircularProgressView *)self backgroundStrokeLayer];
  [v40 setPath:v39];

  v41 = [v38 CGPath];
  v42 = [(CircularProgressView *)self animatedStrokeLayer];
  [v42 setPath:v41];
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  v4 = fmin(a3, 1.0);
  if (v4 != self->_progress)
  {
    self->_progress = v4;
    progress = v4;
    if (a4)
    {
      v7 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
      v8 = [(CircularProgressView *)self animatedStrokeLayer];
      [v8 strokeEnd];
      v9 = [NSNumber numberWithDouble:?];
      [v7 setFromValue:v9];

      v10 = [NSNumber numberWithDouble:self->_progress];
      [v7 setToValue:v10];

      [v7 setDuration:2.0];
      v11 = [(CircularProgressView *)self animatedStrokeLayer];
      [v11 addAnimation:v7 forKey:@"strokeEnd"];

      progress = self->_progress;
    }

    v12 = [(CircularProgressView *)self animatedStrokeLayer];
    [v12 setStrokeEnd:progress];

    v14 = [NSString stringWithFormat:@"\n%d", (v4 * 100.0)];
    v13 = [(CircularProgressView *)self backgroundPercentageLayer];
    [v13 setString:v14];
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