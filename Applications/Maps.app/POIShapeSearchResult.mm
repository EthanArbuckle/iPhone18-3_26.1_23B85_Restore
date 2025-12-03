@interface POIShapeSearchResult
- (POIShapeSearchResult)initWithMapView:(id)view searchResult:(id)result;
@end

@implementation POIShapeSearchResult

- (POIShapeSearchResult)initWithMapView:(id)view searchResult:(id)result
{
  resultCopy = result;
  viewCopy = view;
  routeData = [resultCopy routeData];

  if (routeData)
  {
    composedWaypoint = [resultCopy composedWaypoint];
  }

  else
  {
    v10 = [GEOComposedWaypoint alloc];
    mapItem = [resultCopy mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    composedWaypoint = [v10 initWithMapItem:_geoMapItem];
  }

  v15.receiver = self;
  v15.super_class = POIShapeSearchResult;
  v13 = [(POIShapeComposedWaypoint *)&v15 initWithMapView:viewCopy composedWaypoint:composedWaypoint];

  return v13;
}

@end