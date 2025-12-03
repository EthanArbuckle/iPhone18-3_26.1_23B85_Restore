@interface MAResultAnnotation
- (CLLocationCoordinate2D)coordinate;
- (MAResultAnnotation)initWithMapItem:(id)item;
- (NSString)title;
- (id)_abbreviatedAddress;
@end

@implementation MAResultAnnotation

- (MAResultAnnotation)initWithMapItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = MAResultAnnotation;
  v6 = [(MAResultAnnotation *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    location = [itemCopy location];
    latitude = [location latitude];
    [latitude doubleValue];
    v11 = v10;
    location2 = [itemCopy location];
    longitude = [location2 longitude];
    [longitude doubleValue];
    v15 = CLLocationCoordinate2DMake(v11, v14);

    v7->_coordinate = v15;
  }

  return v7;
}

- (NSString)title
{
  mapItem = [(MAResultAnnotation *)self mapItem];
  label = [mapItem label];

  return label;
}

- (id)_abbreviatedAddress
{
  mapItem = [(MAResultAnnotation *)self mapItem];
  location = [mapItem location];
  properties = [location properties];

  v5 = [properties valueForKey:@"street"];
  v6 = [properties valueForKey:@"city"];
  v7 = v6;
  if (v5 | v6)
  {
    if (!v5 || v6)
    {
      if (v5 || !v6)
      {
        v8 = [NSString stringWithFormat:@"%@, %@", v5, v6];
      }

      else
      {
        v8 = v6;
      }
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
  }

  else
  {
    v9 = &stru_497A0;
  }

  return v9;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end