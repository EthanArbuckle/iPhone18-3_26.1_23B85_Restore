@interface DebugLocationAnnotation
- (CLLocationCoordinate2D)coordinate;
- (double)course;
@end

@implementation DebugLocationAnnotation

- (double)course
{
  locationType = self->_locationType;
  location = self->_location;
  if (locationType)
  {
    [(CLLocation *)location course];
  }

  else
  {
    [(CLLocation *)location rawCourse];
  }

  return result;
}

- (CLLocationCoordinate2D)coordinate
{
  locationType = self->_locationType;
  location = self->_location;
  if (locationType)
  {
    [(CLLocation *)location coordinate];
  }

  else
  {
    [(CLLocation *)location rawCoordinate];
  }

  result.longitude = v5;
  result.latitude = v4;
  return result;
}

@end