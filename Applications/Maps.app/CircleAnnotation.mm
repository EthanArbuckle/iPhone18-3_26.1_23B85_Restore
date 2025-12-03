@interface CircleAnnotation
- (CLLocationCoordinate2D)coordinate;
- (CircleAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
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

- (void)setColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  self->_color[0] = red;
  self->_color[1] = green;
  self->_color[2] = blue;
  self->_color[3] = alpha;
}

- (CircleAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
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