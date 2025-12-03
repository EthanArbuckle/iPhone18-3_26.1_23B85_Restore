@interface MKMapView
- (int64_t)desiredStateForLoi:(id)loi maximumWidth:(double)width;
@end

@implementation MKMapView

- (int64_t)desiredStateForLoi:(id)loi maximumWidth:(double)width
{
  loiCopy = loi;
  polygon = [loiCopy polygon];
  [polygon coordinate];
  v9 = v8;
  v11 = v10;
  polygon2 = [loiCopy polygon];
  [polygon2 radius];
  v14 = v13;
  polygon3 = [loiCopy polygon];

  [polygon3 radius];
  v17 = v16;
  v24.latitude = v9;
  v24.longitude = v11;
  v25 = MKCoordinateRegionMakeWithDistance(v24, v14, v17);
  latitude = v25.center.latitude;
  longitude = v25.center.longitude;
  latitudeDelta = v25.span.latitudeDelta;
  longitudeDelta = v25.span.longitudeDelta;

  [(MKMapView *)self convertRegion:self toRectToView:latitude, longitude, latitudeDelta, longitudeDelta];
  if (v22 <= width)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end