@interface MKMapItemAnnotation
- (CLLocationCoordinate2D)coordinate;
- (MKMapItemAnnotation)initWithMapItem:(id)item;
@end

@implementation MKMapItemAnnotation

- (CLLocationCoordinate2D)coordinate
{
  location = [(MKMapItem *)self->_mapItem location];
  v3 = location;
  if (location)
  {
    [location coordinate];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E6985CC0];
    v7 = *(MEMORY[0x1E6985CC0] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

- (MKMapItemAnnotation)initWithMapItem:(id)item
{
  itemCopy = item;
  selfCopy = [itemCopy location];
  if (selfCopy)
  {
    location = [itemCopy location];
    [location coordinate];
    v9 = v8;
    v11 = fabs(v10);

    selfCopy = 0;
    if (v11 <= 180.0 && fabs(v9) <= 90.0)
    {
      v15.receiver = self;
      v15.super_class = MKMapItemAnnotation;
      v12 = [(MKMapItemAnnotation *)&v15 init];
      v13 = v12;
      if (v12)
      {
        objc_storeStrong(&v12->_mapItem, item);
      }

      self = v13;
      selfCopy = self;
    }
  }

  return selfCopy;
}

@end