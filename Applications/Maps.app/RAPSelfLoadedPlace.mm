@interface RAPSelfLoadedPlace
- (CLLocationCoordinate2D)coordinate;
- (RAPSelfLoadedPlace)initWithMapItem:(id)a3;
@end

@implementation RAPSelfLoadedPlace

- (CLLocationCoordinate2D)coordinate
{
  v2 = [(MKMapItem *)self->_mapItem location];
  [v2 coordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (RAPSelfLoadedPlace)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPSelfLoadedPlace;
  v6 = [(RAPSelfLoadedPlace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end