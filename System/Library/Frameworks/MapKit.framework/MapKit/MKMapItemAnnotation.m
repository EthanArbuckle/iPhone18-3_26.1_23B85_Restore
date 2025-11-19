@interface MKMapItemAnnotation
- (CLLocationCoordinate2D)coordinate;
- (MKMapItemAnnotation)initWithMapItem:(id)a3;
@end

@implementation MKMapItemAnnotation

- (CLLocationCoordinate2D)coordinate
{
  v2 = [(MKMapItem *)self->_mapItem location];
  v3 = v2;
  if (v2)
  {
    [v2 coordinate];
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

- (MKMapItemAnnotation)initWithMapItem:(id)a3
{
  v5 = a3;
  v6 = [v5 location];
  if (v6)
  {
    v7 = [v5 location];
    [v7 coordinate];
    v9 = v8;
    v11 = fabs(v10);

    v6 = 0;
    if (v11 <= 180.0 && fabs(v9) <= 90.0)
    {
      v15.receiver = self;
      v15.super_class = MKMapItemAnnotation;
      v12 = [(MKMapItemAnnotation *)&v15 init];
      v13 = v12;
      if (v12)
      {
        objc_storeStrong(&v12->_mapItem, a3);
      }

      self = v13;
      v6 = self;
    }
  }

  return v6;
}

@end