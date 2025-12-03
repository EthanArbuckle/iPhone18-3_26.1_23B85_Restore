@interface RTLocationOfInterest
- (void)_maps_hydrateGeoMapItem:(id)item;
@end

@implementation RTLocationOfInterest

- (void)_maps_hydrateGeoMapItem:(id)item
{
  itemCopy = item;
  mapItem = [(RTLocationOfInterest *)self mapItem];
  geoMapItemHandle = [mapItem geoMapItemHandle];

  if (geoMapItemHandle)
  {
    v7 = ![(RTLocationOfInterest *)self type]|| [(RTLocationOfInterest *)self type]== 1 || [(RTLocationOfInterest *)self type]== 2;
    v9 = +[HydrateGeoMapItemCache sharedCache];
    mapItem2 = [(RTLocationOfInterest *)self mapItem];
    [v9 resolveRTMapItem:mapItem2 shouldUpdateAttributes:v7 completionHandler:itemCopy];
  }

  else
  {
    v9 = GEOErrorDomain();
    mapItem2 = [NSError errorWithDomain:"errorWithDomain:code:userInfo:" code:? userInfo:?];
    itemCopy[2](itemCopy, 0, mapItem2);
  }
}

@end