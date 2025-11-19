@interface RAPAnnotation
- (CLLocationCoordinate2D)coordinate;
- (RAPAnnotation)init;
- (RAPAnnotation)initWithMapItem:(id)a3;
@end

@implementation RAPAnnotation

- (CLLocationCoordinate2D)coordinate
{
  v2 = [(MKMapItem *)self->_item placemark];
  [v2 coordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (RAPAnnotation)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPAnnotation;
  v6 = [(RAPAnnotation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (RAPAnnotation)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end