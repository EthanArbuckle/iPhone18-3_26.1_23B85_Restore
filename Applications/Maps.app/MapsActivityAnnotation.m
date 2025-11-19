@interface MapsActivityAnnotation
- (CLLocationCoordinate2D)coordinate;
- (MapsActivityAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4 subtitle:(id)a5;
- (MapsActivityAnnotation)initWithSearchResult:(id)a3;
@end

@implementation MapsActivityAnnotation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MapsActivityAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4 subtitle:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MapsActivityAnnotation;
  v11 = [(MapsActivityAnnotation *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_coordinate.latitude = latitude;
    v11->_coordinate.longitude = longitude;
    v13 = [v9 copy];
    title = v12->_title;
    v12->_title = v13;

    v15 = [v10 copy];
    subtitle = v12->_subtitle;
    v12->_subtitle = v15;
  }

  return v12;
}

- (MapsActivityAnnotation)initWithSearchResult:(id)a3
{
  v4 = a3;
  [v4 coordinate];
  v6 = v5;
  v8 = v7;
  v9 = [v4 title];
  v10 = [v4 subtitle];

  v11 = [(MapsActivityAnnotation *)self initWithCoordinate:v9 title:v10 subtitle:v6, v8];
  return v11;
}

@end