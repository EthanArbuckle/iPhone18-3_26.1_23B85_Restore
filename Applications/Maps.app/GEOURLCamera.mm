@interface GEOURLCamera
- (MKMapCamera)mapCamera;
@end

@implementation GEOURLCamera

- (MKMapCamera)mapCamera
{
  v3 = objc_alloc_init(MKMapCamera);
  [(GEOURLCamera *)self latitude];
  v5 = v4;
  [(GEOURLCamera *)self longitude];
  v7 = CLLocationCoordinate2DMake(v5, v6);
  [v3 setCenterCoordinate:{v7.latitude, v7.longitude}];
  [(GEOURLCamera *)self heading];
  [v3 setHeading:?];
  [(GEOURLCamera *)self pitch];
  [v3 setPitch:?];
  [(GEOURLCamera *)self altitude];
  [v3 setAltitude:?];

  return v3;
}

@end