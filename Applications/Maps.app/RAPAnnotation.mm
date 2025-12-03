@interface RAPAnnotation
- (CLLocationCoordinate2D)coordinate;
- (RAPAnnotation)init;
- (RAPAnnotation)initWithMapItem:(id)item;
@end

@implementation RAPAnnotation

- (CLLocationCoordinate2D)coordinate
{
  placemark = [(MKMapItem *)self->_item placemark];
  [placemark coordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (RAPAnnotation)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = RAPAnnotation;
  v6 = [(RAPAnnotation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
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