@interface MKMapCamera
- (GEOURLCamera)geoCamera;
@end

@implementation MKMapCamera

- (GEOURLCamera)geoCamera
{
  v3 = objc_alloc_init(GEOURLCamera);
  [(MKMapCamera *)self centerCoordinate];
  [v3 setLatitude:?];
  [(MKMapCamera *)self centerCoordinate];
  [v3 setLongitude:v4];
  [(MKMapCamera *)self heading];
  [v3 setHeading:?];
  [(MKMapCamera *)self pitch];
  [v3 setPitch:?];
  [(MKMapCamera *)self altitude];
  [v3 setAltitude:?];
  [v3 latitude];
  if (__isnand() || ([v3 longitude], __isnand()) || (objc_msgSend(v3, "heading"), __isnand()) || (objc_msgSend(v3, "pitch"), __isnand()) || (objc_msgSend(v3, "altitude"), __isnand()))
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

@end