@interface MapsRippleAnnotation
- (CLLocationCoordinate2D)coordinate;
- (MapsRippleAnnotation)init;
@end

@implementation MapsRippleAnnotation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MapsRippleAnnotation)init
{
  v6.receiver = self;
  v6.super_class = MapsRippleAnnotation;
  v2 = [(MapsRippleAnnotation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    rippleView = v2->_rippleView;
    v2->_rippleView = v3;

    [(MapsRippleView *)v2->_rippleView setLooping:1];
  }

  return v2;
}

@end