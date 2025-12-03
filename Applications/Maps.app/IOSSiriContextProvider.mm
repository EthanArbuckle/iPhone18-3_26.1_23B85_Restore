@interface IOSSiriContextProvider
- (MKMapView)mapView;
- (NSArray)searchResults;
- (SiriMapItemConvertible)selectedPOI;
- (SiriMapItemConvertible)selectedResult;
@end

@implementation IOSSiriContextProvider

- (SiriMapItemConvertible)selectedResult
{
  v2 = +[SearchSession currentSearchSession];
  currentResultsSearchInfo = [v2 currentResultsSearchInfo];
  selectedResult = [currentResultsSearchInfo selectedResult];

  return selectedResult;
}

- (NSArray)searchResults
{
  v2 = +[SearchSession currentSearchSession];
  currentResults = [v2 currentResults];

  return currentResults;
}

- (SiriMapItemConvertible)selectedPOI
{
  mapView = [(IOSSiriContextProvider *)self mapView];
  _selectedLabelMarker = [mapView _selectedLabelMarker];

  if (!_selectedLabelMarker || ([_selectedLabelMarker isTrafficIncident] & 1) != 0 || (objc_msgSend(_selectedLabelMarker, "isTransitLine") & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v6 = +[UIApplication sharedMapsDelegate];
    poiSearchManager = [v6 poiSearchManager];

    identifier = [_selectedLabelMarker identifier];
    v4 = [poiSearchManager searchResultForIdentifier:identifier];

    if (!v4)
    {
      v4 = [[POIPlaceholderSearchResult alloc] initWithLabelMarker:_selectedLabelMarker];
    }
  }

  return v4;
}

- (MKMapView)mapView
{
  v2 = +[UIApplication sharedMapsDelegate];
  chromeViewController = [v2 chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

@end