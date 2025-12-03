@interface CircleAnnotationView
- (CircleAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (void)_setMapPitchRadians:(double)radians;
- (void)setColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (void)setRadius:(double)radius;
@end

@implementation CircleAnnotationView

- (void)_setMapPitchRadians:(double)radians
{
  v8.receiver = self;
  v8.super_class = CircleAnnotationView;
  [(CircleAnnotationView *)&v8 _setMapPitchRadians:?];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  CATransform3DMakeRotation(&v7, radians, 1.0, 0.0, 0.0);
  circleLayer = self->_circleLayer;
  v6 = v7;
  [(CALayer *)circleLayer setTransform:&v6];
  +[CATransaction commit];
}

- (void)setColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v8 = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
  v7 = v8;
  -[CALayer setBackgroundColor:](self->_circleLayer, "setBackgroundColor:", [v8 CGColor]);
}

- (void)setRadius:(double)radius
{
  self->_radius = radius;
  [(CircleAnnotationView *)self bounds];
  MidX = CGRectGetMidX(v9);
  [(CircleAnnotationView *)self bounds];
  [(CALayer *)self->_circleLayer setPosition:MidX, CGRectGetMidY(v10)];
  [(CALayer *)self->_circleLayer setBounds:0.0, 0.0, radius + radius, radius + radius];
  [(CALayer *)self->_circleLayer bounds];
  circleLayer = self->_circleLayer;

  [(CALayer *)circleLayer setCornerRadius:v6 * 0.5];
}

- (CircleAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = CircleAnnotationView;
  v4 = [(CircleAnnotationView *)&v17 initWithAnnotation:annotation reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[CALayer layer];
    circleLayer = v4->_circleLayer;
    v4->_circleLayer = v5;

    v7 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](v4->_circleLayer, "setBackgroundColor:", [v7 CGColor]);

    v18[0] = @"bounds";
    v8 = +[NSNull null];
    v19[0] = v8;
    v18[1] = @"position";
    v9 = +[NSNull null];
    v19[1] = v9;
    v18[2] = @"cornerRadius";
    v10 = +[NSNull null];
    v19[2] = v10;
    v18[3] = @"transform";
    v11 = +[NSNull null];
    v19[3] = v11;
    v18[4] = @"hidden";
    v12 = +[NSNull null];
    v19[4] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];
    [(CALayer *)v4->_circleLayer setActions:v13];

    layer = [(CircleAnnotationView *)v4 layer];
    [layer addSublayer:v4->_circleLayer];

    v15 = v4;
  }

  return v4;
}

@end