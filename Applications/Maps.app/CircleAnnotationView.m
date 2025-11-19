@interface CircleAnnotationView
- (CircleAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (void)_setMapPitchRadians:(double)a3;
- (void)setColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (void)setRadius:(double)a3;
@end

@implementation CircleAnnotationView

- (void)_setMapPitchRadians:(double)a3
{
  v8.receiver = self;
  v8.super_class = CircleAnnotationView;
  [(CircleAnnotationView *)&v8 _setMapPitchRadians:?];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  CATransform3DMakeRotation(&v7, a3, 1.0, 0.0, 0.0);
  circleLayer = self->_circleLayer;
  v6 = v7;
  [(CALayer *)circleLayer setTransform:&v6];
  +[CATransaction commit];
}

- (void)setColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v8 = [UIColor colorWithRed:a3 green:a4 blue:a5 alpha:a6];
  v7 = v8;
  -[CALayer setBackgroundColor:](self->_circleLayer, "setBackgroundColor:", [v8 CGColor]);
}

- (void)setRadius:(double)a3
{
  self->_radius = a3;
  [(CircleAnnotationView *)self bounds];
  MidX = CGRectGetMidX(v9);
  [(CircleAnnotationView *)self bounds];
  [(CALayer *)self->_circleLayer setPosition:MidX, CGRectGetMidY(v10)];
  [(CALayer *)self->_circleLayer setBounds:0.0, 0.0, a3 + a3, a3 + a3];
  [(CALayer *)self->_circleLayer bounds];
  circleLayer = self->_circleLayer;

  [(CALayer *)circleLayer setCornerRadius:v6 * 0.5];
}

- (CircleAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v17.receiver = self;
  v17.super_class = CircleAnnotationView;
  v4 = [(CircleAnnotationView *)&v17 initWithAnnotation:a3 reuseIdentifier:a4];
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

    v14 = [(CircleAnnotationView *)v4 layer];
    [v14 addSublayer:v4->_circleLayer];

    v15 = v4;
  }

  return v4;
}

@end