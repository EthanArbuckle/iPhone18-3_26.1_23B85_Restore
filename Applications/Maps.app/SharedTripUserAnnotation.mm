@interface SharedTripUserAnnotation
- (CLLocationCoordinate2D)coordinate;
@end

@implementation SharedTripUserAnnotation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end