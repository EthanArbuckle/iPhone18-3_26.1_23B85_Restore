@interface RAPTransitLinesAnnotation
- (CLLocationCoordinate2D)coordinate;
- (RAPTransitLinesAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4;
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

- (RAPTransitLinesAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = RAPTransitLinesAnnotation;
  v8 = [(RAPTransitLinesAnnotation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_coordinate.latitude = latitude;
    v8->_coordinate.longitude = longitude;
    v10 = [v7 copy];
    title = v9->_title;
    v9->_title = v10;
  }

  return v9;
}

@end