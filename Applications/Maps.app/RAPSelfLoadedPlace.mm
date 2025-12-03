@interface RAPSelfLoadedPlace
- (CLLocationCoordinate2D)coordinate;
- (RAPSelfLoadedPlace)initWithMapItem:(id)item;
@end

@implementation RAPSelfLoadedPlace

- (CLLocationCoordinate2D)coordinate
{
  location = [(MKMapItem *)self->_mapItem location];
  [location coordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (RAPSelfLoadedPlace)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = RAPSelfLoadedPlace;
  v6 = [(RAPSelfLoadedPlace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end