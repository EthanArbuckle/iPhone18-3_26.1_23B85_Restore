@interface CarSiriContextProvider
- (MKMapView)mapView;
- (NSArray)searchResults;
- (SiriMapItemConvertible)selectedResult;
- (id)_visuallySelectedResult;
@end

@implementation CarSiriContextProvider

- (SiriMapItemConvertible)selectedResult
{
  v2 = [(CarSiriContextProvider *)self _visuallySelectedResult];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = +[SearchSession currentSearchSession];
    v6 = [v5 currentResultsSearchInfo];
    v4 = [v6 selectedResult];
  }

  return v4;
}

- (NSArray)searchResults
{
  v3 = +[SearchSession currentSearchSession];
  v4 = [v3 currentResults];

  v5 = [(CarSiriContextProvider *)self _visuallySelectedResult];
  if (v5 && ![v4 containsObject:v5])
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (MKMapView)mapView
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 mapView];

  return v4;
}

- (id)_visuallySelectedResult
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 visuallySelectedItem];

  v5 = v4;
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