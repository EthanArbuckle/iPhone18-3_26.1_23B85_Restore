@interface CarSiriContextProvider
- (MKMapView)mapView;
- (NSArray)searchResults;
- (SiriMapItemConvertible)selectedResult;
- (id)_visuallySelectedResult;
@end

@implementation CarSiriContextProvider

- (SiriMapItemConvertible)selectedResult
{
  _visuallySelectedResult = [(CarSiriContextProvider *)self _visuallySelectedResult];
  v3 = _visuallySelectedResult;
  if (_visuallySelectedResult)
  {
    selectedResult = _visuallySelectedResult;
  }

  else
  {
    v5 = +[SearchSession currentSearchSession];
    currentResultsSearchInfo = [v5 currentResultsSearchInfo];
    selectedResult = [currentResultsSearchInfo selectedResult];
  }

  return selectedResult;
}

- (NSArray)searchResults
{
  v3 = +[SearchSession currentSearchSession];
  currentResults = [v3 currentResults];

  _visuallySelectedResult = [(CarSiriContextProvider *)self _visuallySelectedResult];
  if (_visuallySelectedResult && ![currentResults containsObject:_visuallySelectedResult])
  {
    v6 = 0;
  }

  else
  {
    v6 = currentResults;
  }

  return v6;
}

- (MKMapView)mapView
{
  v2 = +[CarDisplayController sharedInstance];
  chromeViewController = [v2 chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (id)_visuallySelectedResult
{
  v2 = +[CarDisplayController sharedInstance];
  chromeViewController = [v2 chromeViewController];
  visuallySelectedItem = [chromeViewController visuallySelectedItem];

  v5 = visuallySelectedItem;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end