@interface MAResultAnnotation
- (CLLocationCoordinate2D)coordinate;
- (MAResultAnnotation)initWithMapItem:(id)a3;
- (NSString)title;
- (id)_abbreviatedAddress;
@end

@implementation MAResultAnnotation

- (MAResultAnnotation)initWithMapItem:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = MAResultAnnotation;
  v6 = [(MAResultAnnotation *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    v8 = [v5 location];
    v9 = [v8 latitude];
    [v9 doubleValue];
    v11 = v10;
    v12 = [v5 location];
    v13 = [v12 longitude];
    [v13 doubleValue];
    v15 = CLLocationCoordinate2DMake(v11, v14);

    v7->_coordinate = v15;
  }

  return v7;
}

- (NSString)title
{
  v2 = [(MAResultAnnotation *)self mapItem];
  v3 = [v2 label];

  return v3;
}

- (id)_abbreviatedAddress
{
  v2 = [(MAResultAnnotation *)self mapItem];
  v3 = [v2 location];
  v4 = [v3 properties];

  v5 = [v4 valueForKey:@"street"];
  v6 = [v4 valueForKey:@"city"];
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