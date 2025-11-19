@interface CompassBearingView
- (CompassBearingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCompassHeading:(double)a3;
- (void)updateLayer;
@end

@implementation CompassBearingView

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = CompassBearingView;
  [(CompassBearingView *)&v20 layoutSubviews];
  [(CompassBearingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CAShapeLayer *)self->_bearingDeviationLayer setFrame:?];
  if (self->_bearing == 1.79769313e308 || (startAngle = self->_startAngle, endAngle = self->_endAngle, startAngle == endAngle))
  {
    [(CAShapeLayer *)self->_bearingDeviationLayer setPath:0];
  }

  else
  {
    v13 = startAngle >= endAngle;
    v14 = startAngle < endAngle;
    v21.origin.x = v4;
    v21.origin.y = v6;
    v21.size.width = v8;
    v21.size.height = v10;
    MidX = CGRectGetMidX(v21);
    v22.origin.x = v4;
    v22.origin.y = v6;
    v22.size.width = v8;
    v22.size.height = v10;
    MidY = CGRectGetMidY(v22);
    v17 = [UIBezierPath bezierPathWithArcCenter:v14 radius:MidX startAngle:MidY endAngle:self->_innerRadius clockwise:self->_startAngle, self->_endAngle];
    outerRadius = self->_outerRadius;
    v19 = __sincos_stret(self->_endAngle);
    [v17 addLineToPoint:{MidX + outerRadius * v19.__cosval, MidY + outerRadius * v19.__sinval}];
    [v17 addArcWithCenter:v13 radius:MidX startAngle:MidY endAngle:self->_outerRadius clockwise:{self->_endAngle, self->_startAngle}];
    -[CAShapeLayer setPath:](self->_bearingDeviationLayer, "setPath:", [v17 CGPath]);
  }
}

- (CompassBearingView)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  v13.receiver = self;
  v13.super_class = CompassBearingView;
  v4 = [(CompassBearingView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = +[CAShapeLayer layer];
    bearingDeviationLayer = v4->_bearingDeviationLayer;
    v4->_bearingDeviationLayer = v5;

    v4->_innerRadius = sub_1000025FC(width);
    v4->_outerRadius = sub_10000261C(width);
    v4->_bearing = 1.79769313e308;
    v7 = v4->_bearingDeviationLayer;
    v8 = +[UIColor clearColor];
    -[CAShapeLayer setStrokeColor:](v7, "setStrokeColor:", [v8 CGColor]);

    v9 = v4->_bearingDeviationLayer;
    v10 = +[UIColor redColor];
    -[CAShapeLayer setFillColor:](v9, "setFillColor:", [v10 CGColor]);

    v11 = [(CompassBearingView *)v4 layer];
    [v11 addSublayer:v4->_bearingDeviationLayer];
  }

  return v4;
}

- (void)updateLayer
{
  [(CompassBearingView *)self angle];
  v4 = fmod(v3, 6.28318531);
  v5 = 270.0 * 3.14159265 / 180.0;
  self->_startAngle = v5;
  v6 = sub_100005BD0(v5, v4 + v5 + self->_bearing * 3.14159265 / 180.0);
  if (vabdd_f64(v6, self->_endAngle) > 0.00100000005)
  {
    self->_endAngle = v6;

    [(CompassBearingView *)self setNeedsLayout];
  }
}

- (void)setCompassHeading:(double)a3
{
  v4.receiver = self;
  v4.super_class = CompassBearingView;
  [(CompassBearingView *)&v4 setCompassHeading:a3];
  [(CompassBearingView *)self updateLayer];
}

@end