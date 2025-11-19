@interface CompassTriangleView
- (CompassTriangleView)initWithFrame:(CGRect)a3;
- (id)triangleView;
- (void)layoutSubviews;
- (void)setCompassHeading:(double)a3;
@end

@implementation CompassTriangleView

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CompassTriangleView;
  [(CompassTriangleView *)&v8 layoutSubviews];
  [(CompassTriangleView *)self bounds];
  MidX = CGRectGetMidX(v9);
  [(CompassTriangleView *)self bounds];
  MidY = CGRectGetMidY(v10);
  v5 = [(CompassTriangleView *)self triangleView];
  triangleRadius = self->_triangleRadius;
  v7 = __sincos_stret(((270.0 + 0.0) % 360) * 3.14159265 / 180.0);
  [v5 setCenter:{MidX + triangleRadius * v7.__cosval, MidY + triangleRadius * v7.__sinval}];
}

- (id)triangleView
{
  triangleView = self->_triangleView;
  if (!triangleView)
  {
    v4 = [UIImage imageNamed:@"northMarker"];
    v5 = [[UIImageView alloc] initWithImage:v4];
    v6 = self->_triangleView;
    self->_triangleView = v5;

    [(CompassTriangleView *)self addSubview:self->_triangleView];
    triangleView = self->_triangleView;
  }

  return triangleView;
}

- (CompassTriangleView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CompassTriangleView;
  return [(CompassTriangleView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setCompassHeading:(double)a3
{
  v6.receiver = self;
  v6.super_class = CompassTriangleView;
  [(CompassTriangleView *)&v6 setCompassHeading:a3];
  v4 = [(CompassTriangleView *)self layer];
  [(CompassTriangleView *)self angle];
  v5 = [NSNumber numberWithDouble:?];
  [v4 setValue:v5 forKeyPath:@"transform.rotation.z"];
}

@end