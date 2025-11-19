@interface MKMapView
- (int64_t)desiredStateForLoi:(id)a3 maximumWidth:(double)a4;
@end

@implementation MKMapView

- (int64_t)desiredStateForLoi:(id)a3 maximumWidth:(double)a4
{
  v6 = a3;
  v7 = [v6 polygon];
  [v7 coordinate];
  v9 = v8;
  v11 = v10;
  v12 = [v6 polygon];
  [v12 radius];
  v14 = v13;
  v15 = [v6 polygon];

  [v15 radius];
  v17 = v16;
  v24.latitude = v9;
  v24.longitude = v11;
  v25 = MKCoordinateRegionMakeWithDistance(v24, v14, v17);
  latitude = v25.center.latitude;
  longitude = v25.center.longitude;
  latitudeDelta = v25.span.latitudeDelta;
  longitudeDelta = v25.span.longitudeDelta;

  [(MKMapView *)self convertRegion:self toRectToView:latitude, longitude, latitudeDelta, longitudeDelta];
  if (v22 <= a4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end