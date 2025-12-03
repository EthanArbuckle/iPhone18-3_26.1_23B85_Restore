@interface CompassTriangleView
- (CompassTriangleView)initWithFrame:(CGRect)frame;
- (id)triangleView;
- (void)layoutSubviews;
- (void)setCompassHeading:(double)heading;
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
  triangleView = [(CompassTriangleView *)self triangleView];
  triangleRadius = self->_triangleRadius;
  v7 = __sincos_stret(((270.0 + 0.0) % 360) * 3.14159265 / 180.0);
  [triangleView setCenter:{MidX + triangleRadius * v7.__cosval, MidY + triangleRadius * v7.__sinval}];
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

- (CompassTriangleView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CompassTriangleView;
  return [(CompassTriangleView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setCompassHeading:(double)heading
{
  v6.receiver = self;
  v6.super_class = CompassTriangleView;
  [(CompassTriangleView *)&v6 setCompassHeading:heading];
  layer = [(CompassTriangleView *)self layer];
  [(CompassTriangleView *)self angle];
  v5 = [NSNumber numberWithDouble:?];
  [layer setValue:v5 forKeyPath:@"transform.rotation.z"];
}

@end