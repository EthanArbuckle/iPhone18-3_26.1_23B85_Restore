@interface RTLocationOfInterest
- (void)_maps_hydrateGeoMapItem:(id)a3;
@end

@implementation RTLocationOfInterest

- (void)_maps_hydrateGeoMapItem:(id)a3
{
  v4 = a3;
  v5 = [(RTLocationOfInterest *)self mapItem];
  v6 = [v5 geoMapItemHandle];

  if (v6)
  {
    v7 = ![(RTLocationOfInterest *)self type]|| [(RTLocationOfInterest *)self type]== 1 || [(RTLocationOfInterest *)self type]== 2;
    v9 = +[HydrateGeoMapItemCache sharedCache];
    v8 = [(RTLocationOfInterest *)self mapItem];
    [v9 resolveRTMapItem:v8 shouldUpdateAttributes:v7 completionHandler:v4];
  }

  else
  {
    v9 = GEOErrorDomain();
    v8 = [NSError errorWithDomain:"errorWithDomain:code:userInfo:" code:? userInfo:?];
    v4[2](v4, 0, v8);
  }
}

@end