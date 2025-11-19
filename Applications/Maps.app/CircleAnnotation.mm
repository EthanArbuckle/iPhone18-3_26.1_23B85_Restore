@interface CircleAnnotation
- (CLLocationCoordinate2D)coordinate;
- (CircleAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3;
- (void)setColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
@end

@implementation CircleAnnotation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)setColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  self->_color[0] = a3;
  self->_color[1] = a4;
  self->_color[2] = a5;
  self->_color[3] = a6;
}

- (CircleAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6.receiver = self;
  v6.super_class = CircleAnnotation;
  result = [(CircleAnnotation *)&v6 init];
  if (result)
  {
    result->_coordinate.latitude = latitude;
    result->_coordinate.longitude = longitude;
  }

  return result;
}

@end