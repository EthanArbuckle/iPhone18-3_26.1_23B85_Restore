@interface MapsActivityAnnotation
- (CLLocationCoordinate2D)coordinate;
- (MapsActivityAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title subtitle:(id)subtitle;
- (MapsActivityAnnotation)initWithSearchResult:(id)result;
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

- (MapsActivityAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title subtitle:(id)subtitle
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  titleCopy = title;
  subtitleCopy = subtitle;
  v18.receiver = self;
  v18.super_class = MapsActivityAnnotation;
  v11 = [(MapsActivityAnnotation *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_coordinate.latitude = latitude;
    v11->_coordinate.longitude = longitude;
    v13 = [titleCopy copy];
    title = v12->_title;
    v12->_title = v13;

    v15 = [subtitleCopy copy];
    subtitle = v12->_subtitle;
    v12->_subtitle = v15;
  }

  return v12;
}

- (MapsActivityAnnotation)initWithSearchResult:(id)result
{
  resultCopy = result;
  [resultCopy coordinate];
  v6 = v5;
  v8 = v7;
  title = [resultCopy title];
  subtitle = [resultCopy subtitle];

  v11 = [(MapsActivityAnnotation *)self initWithCoordinate:title title:subtitle subtitle:v6, v8];
  return v11;
}

@end