@interface MKUserLocationAnnotation
- (CLLocationCoordinate2D)coordinate;
@end

@implementation MKUserLocationAnnotation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end