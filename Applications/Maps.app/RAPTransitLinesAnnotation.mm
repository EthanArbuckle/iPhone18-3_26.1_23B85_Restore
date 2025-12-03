@interface RAPTransitLinesAnnotation
- (CLLocationCoordinate2D)coordinate;
- (RAPTransitLinesAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title;
@end

@implementation RAPTransitLinesAnnotation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (RAPTransitLinesAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  titleCopy = title;
  v13.receiver = self;
  v13.super_class = RAPTransitLinesAnnotation;
  v8 = [(RAPTransitLinesAnnotation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_coordinate.latitude = latitude;
    v8->_coordinate.longitude = longitude;
    v10 = [titleCopy copy];
    title = v9->_title;
    v9->_title = v10;
  }

  return v9;
}

@end