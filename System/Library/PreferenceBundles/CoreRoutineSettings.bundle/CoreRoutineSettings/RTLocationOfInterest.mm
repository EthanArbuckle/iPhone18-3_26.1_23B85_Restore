@interface RTLocationOfInterest
- ($E52F3E051E5C75A06C7E7E376FB84C16)bestFitMapRect;
- (CLLocationCoordinate2D)coordinate;
- (id)polygon;
@end

@implementation RTLocationOfInterest

- (CLLocationCoordinate2D)coordinate
{
  location = [(RTLocationOfInterest *)self location];
  [location latitude];
  v5 = v4;
  location2 = [(RTLocationOfInterest *)self location];
  [location2 longitude];
  v8 = CLLocationCoordinate2DMake(v5, v7);

  latitude = v8.latitude;
  longitude = v8.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)polygon
{
  selfCopy = self;
  [(RTLocationOfInterest *)self coordinate];
  v4 = v3;
  v6 = v5;
  location = [selfCopy location];
  [location horizontalUncertainty];
  v9 = v8;
  if (v8 <= 1.0)
  {
    v11 = 100.0;
  }

  else
  {
    selfCopy = [selfCopy location];
    [selfCopy horizontalUncertainty];
    v11 = v10;
  }

  v12 = [MKCircle circleWithCenterCoordinate:v4 radius:v6, v11];
  if (v9 > 1.0)
  {
  }

  return v12;
}

- ($E52F3E051E5C75A06C7E7E376FB84C16)bestFitMapRect
{
  y = MKMapRectNull.origin.y;
  width = MKMapRectNull.size.width;
  height = MKMapRectNull.size.height;
  polygon = [(RTLocationOfInterest *)self polygon];
  [polygon boundingMapRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  x = MKMapRectNull.origin.x;
  v15 = y;
  v16 = width;
  v17 = height;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;

  return MKMapRectUnion(*&x, *&v18);
}

@end