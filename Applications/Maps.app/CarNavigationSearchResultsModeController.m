@interface CarNavigationSearchResultsModeController
- (BOOL)_contentNeedsRefreshingForUpdatedLocation:(id)a3;
- (BrowseManager)browseManager;
- (CarNavigationSearchResultsModeController)initWithCategory:(id)a3;
- (CarNavigationSearchResultsModeController)initWithDestinations:(id)a3 selectedDestinationIndex:(unint64_t)a4;
- (CarNavigationSearchResultsModeController)initWithMapItems:(id)a3 selectedItemIndex:(unint64_t)a4;
- (CarNavigationSearchResultsModeController)initWithSearchResults:(id)a3 selectedResultIndex:(unint64_t)a4;
- (CarNavigationSearchResultsModeController)initWithSearchSession:(id)a3;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (double)_detourDistanceToMapItem:(id)a3;
- (id)_cardTitle;
- (id)desiredCards;
- (id)etaForCurrentRoute;
- (id)personalizedItemSources;
- (unint64_t)_rowForSearchItem:(id)a3;
- (unint64_t)_validateSelectedIndex:(unint64_t)a3 forCount:(unint64_t)a4;
- (void)_configureCard:(id)a3;
- (void)_displayMapItems;
- (void)_displayPlaceCardForSearchResult:(id)a3;
- (void)_fetchCategoryResults;
- (void)_highlightMapItem:(id)a3;
- (void)_reloadContentIfNeededForUpdatedLocation:(id)a3;
- (void)_updateContext;
- (void)_updateContextAndDisplay;
- (void)_updateDisplay;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)chromeDidEndConfiguringCards:(id)a3;
- (void)chromeDidStartConfiguringCards:(id)a3;
- (void)commonInit;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)handleHardwareBackButtonPressed;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)placeCard:(id)a3 didPresentAlert:(id)a4;
- (void)placeCard:(id)a3 wantsToPresentEVAvailability:(id)a4;
- (void)placeCardDidDismissAlert:(id)a3;
- (void)placeCardDidSelectGo:(id)a3;
- (void)placeCardDidSelectHandoff:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)searchResultsCard:(id)a3 didFocusResult:(id)a4;
- (void)searchResultsCard:(id)a3 didSelectResult:(id)a4;
- (void)searchSessionDidChangeSearchResults:(id)a3;
- (void)searchSessionDidFail:(id)a3;
- (void)searchSessionDidInvalidate:(id)a3 reason:(unint64_t)a4;
- (void)searchSessionWillPerformSearch:(id)a3;
- (void)setCategory:(id)a3;
- (void)setDestinations:(id)a3 selectedDestinationIndex:(unint64_t)a4;
- (void)setMapItems:(id)a3 selectedItemIndex:(unint64_t)a4;
- (void)setSearchInfo:(id)a3;
- (void)setSearchResults:(id)a3 selectedResultIndex:(unint64_t)a4;
- (void)setSearchSession:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation CarNavigationSearchResultsModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v7 = a3;
  v4 = [v7 lastLocation];
  v5 = [(CarNavigationSearchResultsModeController *)self _contentNeedsRefreshingForUpdatedLocation:v4];

  if (v5)
  {
    v6 = [v7 lastLocation];
    [(CarNavigationSearchResultsModeController *)self _reloadContentIfNeededForUpdatedLocation:v6];
  }
}

- (BOOL)_contentNeedsRefreshingForUpdatedLocation:(id)a3
{
  v4 = a3;
  v5 = [(CarNavigationSearchResultsModeController *)self category];
  if (v5)
  {
    if (self->_lastFetchedFromLocation)
    {
      [v4 distanceFromLocation:?];
      v7 = v6 > 1000.0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_reloadContentIfNeededForUpdatedLocation:(id)a3
{
  v5 = a3;
  v6 = [(CarNavigationSearchResultsModeController *)self category];
  if (v6)
  {
    v7 = v6;
    v8 = [(CarNavigationSearchResultsModeController *)self searchSession];
    v9 = [v8 isLoading];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "SAR: _reloadContentIfNeededForUpdatedLocation", v11, 2u);
      }

      [(CarNavigationSearchResultsModeController *)self _fetchCategoryResults];
      objc_storeStrong(&self->_lastFetchedFromLocation, a3);
    }
  }
}

- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4
{
  if (([a4 isRouteEta] & 1) == 0)
  {
    longitude = kCLLocationCoordinate2DInvalid.longitude;
    customFeaturesSource = self->_customFeaturesSource;

    [(NavigationCustomFeaturesSource *)customFeaturesSource setOverriddenPointToFrame:kCLLocationCoordinate2DInvalid.latitude, longitude];
  }
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v9 = a4;
  if (([v9 isRouteEta] & 1) == 0)
  {
    [v9 coordinate];
    v6 = v5;
    [v9 coordinate];
    v8 = CLLocationCoordinate2DMake(v6, v7);
    [(NavigationCustomFeaturesSource *)self->_customFeaturesSource setOverriddenPointToFrame:v8.latitude, v8.longitude];
  }
}

- (void)searchSessionDidInvalidate:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SAR searchSessionDidInvalidate", v10, 2u);
  }

  v8 = [(CarNavigationSearchResultsModeController *)self searchSession];

  if (v8 == v6)
  {
    [(CarNavigationSearchResultsModeController *)self setSearchSession:0];
    if (a4 != 1)
    {
      v9 = +[CarChromeModeCoordinator sharedInstance];
      [v9 popFromContext:self];
    }
  }
}

- (void)searchSessionDidFail:(id)a3
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 lastError];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SAR searchSessionDidFail with error: %@", &v9, 0xCu);
  }

  [(CarNavigationSearchResultsModeController *)self setSearchInfo:0];
  v7 = [(CarNavigationSearchResultsModeController *)self sarCard];
  v8 = [v4 lastError];
  [v7 setError:v8];
}

- (void)searchSessionDidChangeSearchResults:(id)a3
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 currentResults];
    v12 = 134217984;
    v13 = [v6 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SAR searchSessionDidChangeSearchResults, count: %ld", &v12, 0xCu);
  }

  v7 = [(CarNavigationSearchResultsModeController *)self category];

  if (v7)
  {
    v8 = +[MKLocationManager sharedLocationManager];
    v9 = [v8 lastLocation];
    lastFetchedFromLocation = self->_lastFetchedFromLocation;
    self->_lastFetchedFromLocation = v9;
  }

  v11 = [v4 currentResultsSearchInfo];
  [(CarNavigationSearchResultsModeController *)self setSearchInfo:v11];

  [(CarNavigationSearchResultsModeController *)self _updateDisplay];
}

- (void)searchSessionWillPerformSearch:(id)a3
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SAR searchSessionWillPerformSearch", v6, 2u);
  }

  v5 = [(CarNavigationSearchResultsModeController *)self sarCard];
  [v5 setLoading];
}

- (NSArray)carFocusOrderSequences
{
  v3 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  v4 = [v3 itemRepresentingStatusBanner];
  v5 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  v6 = [v5 itemRepresentingOverlays];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [CarFocusOrderSequence sequenceWithItems:v7 options:3];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];

  return v9;
}

- (NSArray)preferredCarFocusEnvironments
{
  state = self->_state;
  if (state == 2)
  {
    v4 = [(CarNavigationSearchResultsModeController *)self evChargingAvailabilityVC];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:v4];
    v8 = v5;
    v6 = &v8;
  }

  else if (state == 1)
  {
    v4 = [(CarNavigationSearchResultsModeController *)self placeCard];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:v4];
    v9 = v5;
    v6 = &v9;
  }

  else
  {
    if (state)
    {
      goto LABEL_8;
    }

    v4 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
    v5 = [v4 environmentRepresentingOverlays];
    v10 = v5;
    v6 = &v10;
  }

  v2 = [NSArray arrayWithObjects:v6 count:1, v8, v9, v10];

LABEL_8:

  return v2;
}

- (void)carCardViewCloseButtonTapped:(id)a3
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(CarNavigationSearchResultsModeController *)self state];
    v6 = @"CarNavigationSearchResultsModeStateResults";
    if (v5 == 1)
    {
      v6 = @"CarNavigationSearchResultsModeStatePlaceCard";
    }

    if (v5 == 2)
    {
      v6 = @"CarNavigationSearchResultsModeStateEVAvailability";
    }

    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SAR: closeButtonTapped, currentState: %@", &v14, 0xCu);
  }

  v7 = [(CarNavigationSearchResultsModeController *)self state];
  if (v7 == 2)
  {
    [(CarNavigationSearchResultsModeController *)self setState:1];
    p_super = &self->_evChargingAvailabilityVC->super.super.super;
    self->_evChargingAvailabilityVC = 0;
  }

  else if (v7 == 1)
  {
    [(CarNavigationSearchResultsModeController *)self _highlightMapItem:0];
    [(CarNavigationSearchResultsModeController *)self setState:0];
    v10 = [(CarNavigationSearchResultsModeController *)self searchSession];
    v11 = [v10 currentResults];
    v12 = [v11 count];

    if (v12 != 1)
    {
      return;
    }

    v13 = +[CarChromeModeCoordinator sharedInstance];
    [v13 popFromContext:self];

    p_super = sub_100006E1C();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_INFO, "SAR: will remove search results as it had only one search result", &v14, 2u);
    }
  }

  else
  {
    if (v7)
    {
      return;
    }

    v8 = [(CarNavigationSearchResultsModeController *)self searchSession];

    if (v8)
    {
      p_super = [(CarNavigationSearchResultsModeController *)self searchSession];
      [p_super invalidate];
    }

    else
    {
      p_super = +[CarChromeModeCoordinator sharedInstance];
      [p_super popFromContext:self];
    }
  }
}

- (void)handleHardwareBackButtonPressed
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SAR handleHardwareBackButtonPressed, dismissing current modal VC.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [(CarNavigationSearchResultsModeController *)self placeCard];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100CA65CC;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, buf);
  [v4 dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)searchResultsCard:(id)a3 didFocusResult:(id)a4
{
  v5 = a4;
  self->_selectedIndex = [(CarNavigationSearchResultsModeController *)self _rowForSearchItem:v5];
  v6 = [v5 mapItem];

  [(CarNavigationSearchResultsModeController *)self _highlightMapItem:v6];
}

- (void)searchResultsCard:(id)a3 didSelectResult:(id)a4
{
  v6 = a4;
  self->_selectedIndex = [(CarNavigationSearchResultsModeController *)self _rowForSearchItem:v6];
  v5 = [v6 mapItem];
  [(CarNavigationSearchResultsModeController *)self _highlightMapItem:v5];

  [(CarNavigationSearchResultsModeController *)self _displayPlaceCardForSearchResult:v6];
}

- (unint64_t)_rowForSearchItem:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  searchResults = self->_searchResults;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CA687C;
  v11[3] = &unk_101650128;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [(NSArray *)searchResults enumerateObjectsUsingBlock:v11];
  v7 = v15[3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "SAR: couldn't find selected/highlighted search result in our _searchResults array.", v10, 2u);
    }

    v7 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  return v7;
}

- (void)placeCard:(id)a3 wantsToPresentEVAvailability:(id)a4
{
  [(CarNavigationSearchResultsModeController *)self setEvChargingAvailabilityVC:a4];

  [(CarNavigationSearchResultsModeController *)self setState:2];
}

- (void)placeCardDidDismissAlert:(id)a3
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SAR didDismissAlert", v6, 2u);
  }

  v5 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  [v5 setHardwareBackButtonBehavior:0 forContext:self];
}

- (void)placeCard:(id)a3 didPresentAlert:(id)a4
{
  v5 = a4;
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 title];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SAR didPresentAlert with title: %@", &v9, 0xCu);
  }

  v8 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  [v8 setHardwareBackButtonBehavior:1 forContext:self];
}

- (void)placeCardDidSelectHandoff:(id)a3
{
  v4 = a3;
  selectedIndex = self->_selectedIndex;
  if (selectedIndex < [(NSArray *)self->_searchResults count]&& ([(NSArray *)self->_searchResults objectAtIndexedSubscript:self->_selectedIndex], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    objc_initWeak(&location, self);
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 name];
      *buf = 138477827;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SAR: handing off to destination: %{private}@", buf, 0xCu);
    }

    v9 = +[MapsExternalDevice sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100CA6C78;
    v11[3] = &unk_1016540B0;
    objc_copyWeak(&v13, &location);
    v10 = v6;
    v12 = v10;
    [v9 handoffDestination:v10 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "SAR: couldn't find destination for placeCard handOff.", buf, 2u);
    }
  }
}

- (void)placeCardDidSelectGo:(id)a3
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SAR: placeCard didSelectGo.", &v15, 2u);
  }

  selectedIndex = self->_selectedIndex;
  if (selectedIndex >= [(NSArray *)self->_searchResults count]|| ([(NSArray *)self->_searchResults objectAtIndexedSubscript:self->_selectedIndex], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = self->_selectedIndex;
      searchResults = self->_searchResults;
      v15 = 134218242;
      v16 = v9;
      v17 = 2112;
      v18 = searchResults;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "SAR: _selectedIndex (%lu) no longer matches _searchResults: %@", &v15, 0x16u);
    }

    v7 = [v4 searchResult];
  }

  v11 = [v7 mapItem];
  if (v11)
  {
    if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
    {
      v12 = [(CarNavigationSearchResultsModeController *)self carChromeViewController];
      [v12 captureUserAction:6097 onTarget:-[CarNavigationSearchResultsModeController currentUsageTarget](self eventValue:{"currentUsageTarget"), 0}];

      v13 = [(CarNavigationSearchResultsModeController *)self carChromeViewController];
      [v13 captureUserAction:3001 onTarget:-[CarNavigationSearchResultsModeController currentUsageTarget](self eventValue:{"currentUsageTarget"), 0}];
    }

    v14 = +[CarDisplayController sharedInstance];
    [v14 detourToMapItem:v11];
  }

  else
  {
    v14 = sub_100006E1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "SAR: aborting detour as we don't have a map item", &v15, 2u);
    }
  }
}

- (id)etaForCurrentRoute
{
  selectedIndex = self->_selectedIndex;
  if (selectedIndex >= [(NSArray *)self->_mapItems count])
  {
    v14 = sub_100006E1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "SAR: failed to find ETA for the mapItem that is currently displayed in the placeCard.", v16, 2u);
    }

    v13 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_mapItems objectAtIndexedSubscript:self->_selectedIndex];
    v5 = [v4 _detourInfo];

    if (v5)
    {
      v6 = [v4 _detourInfo];
      [v6 timeToPlace];
      v8 = v7;

      [(CarNavigationSearchResultsModeController *)self _detourDistanceToMapItem:v4];
      v10 = v9;
      v11 = [GuidanceETA alloc];
      v12 = [v4 timeZone];
      v13 = [(GuidanceETA *)v11 initWithRemainingTime:0 remainingDistance:v12 arrivalBatteryCharge:0 destinationTimeZone:v8 transportType:v10];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (double)_detourDistanceToMapItem:(id)a3
{
  v4 = a3;
  v5 = [v4 _detourInfo];
  [v5 distanceToPlace];
  if (v6 <= 0.0)
  {
    v8 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
    v9 = [v8 mapView];
    v10 = [v9 userLocation];
    [v10 coordinate];

    [v4 _coordinate];
    v12 = v11;
    [v4 _coordinate];
    CLLocationCoordinate2DMake(v12, v13);
    CLLocationCoordinate2DGetDistanceFrom();
  }

  else
  {
    [v5 distanceToPlace];
  }

  v14 = v7;

  return v14;
}

- (void)_fetchCategoryResults
{
  v3 = [(CarNavigationSearchResultsModeController *)self category];

  if (v3)
  {
    v4 = [(CarNavigationSearchResultsModeController *)self searchSession];
    v5 = [v4 isLoading];

    v6 = sub_100006E1C();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        v8 = "SAR: Tried to fetch search results for category, but we're already fetching them.";
        p_super = &v7->super;
        v10 = OS_LOG_TYPE_ERROR;
LABEL_7:
        _os_log_impl(&_mh_execute_header, p_super, v10, v8, &v20, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = [(CarNavigationSearchResultsModeController *)self category];
        v12 = [v11 name];
        v20 = 138412290;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_INFO, "SAR: Started fetching results for category: %@. Creating new searchSesssion.", &v20, 0xCu);
      }

      v7 = [[SearchSession alloc] initWithOrigin:1];
      v13 = +[CarDisplayController sharedInstance];
      v14 = [v13 chromeViewController];
      v15 = [v14 navigationAwareTraits];

      if ([v15 navigating])
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      [v15 setSearchOriginationType:v16];
      [v15 useOnlineToOfflineFailoverRequestModeIfAllowed];
      [(SearchSession *)v7 setTraits:v15];
      [(SearchSession *)v7 setSource:6];
      [(CarNavigationSearchResultsModeController *)self setSearchSession:v7];
      v17 = [(CarNavigationSearchResultsModeController *)self category];
      v18 = [v17 category];
      v19 = [SearchFieldItem searchFieldItemWithObject:v18];

      [(SearchSession *)v7 startSearch:v19];
    }
  }

  else
  {
    v7 = sub_100006E1C();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      v8 = "SAR: Tried to fetch search results for category that is nil.";
      p_super = &v7->super;
      v10 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }
  }
}

- (unint64_t)_validateSelectedIndex:(unint64_t)a3 forCount:(unint64_t)a4
{
  if (a3 >= a4 || a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  if (a4)
  {
    return v5;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)_updateContextAndDisplay
{
  v3 = [(CarNavigationSearchResultsModeController *)self searchSession];
  if (v3 && (v4 = v3, -[CarNavigationSearchResultsModeController searchSession](self, "searchSession"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 selectedResultIndex], selectedIndex = self->_selectedIndex, v5, v4, v6 != selectedIndex))
  {

    [(CarNavigationSearchResultsModeController *)self _updateContext];
  }

  else
  {

    [(CarNavigationSearchResultsModeController *)self _updateDisplay];
  }
}

- (void)_updateContext
{
  selectedIndex = self->_selectedIndex;
  v3 = [(CarNavigationSearchResultsModeController *)self searchSession];
  [v3 setSelectedResultIndex:selectedIndex];
}

- (void)_updateDisplay
{
  searchResults = self->_searchResults;
  if (searchResults && [(NSArray *)searchResults count])
  {
    v4 = [(CarNavigationSearchResultsModeController *)self sarCard];
    [v4 setSearchResults:self->_searchResults searchAlongRoute:1];

    [(CarNavigationSearchResultsModeController *)self _displayMapItems];
  }
}

- (void)_displayMapItems
{
  selectedIndex = self->_selectedIndex;
  v4 = [(NSArray *)self->_mapItems count];
  customFeaturesSource = self->_customFeaturesSource;
  if (selectedIndex >= v4)
  {

    [(NavigationCustomFeaturesSource *)customFeaturesSource removeMapItems];
  }

  else
  {
    v6 = [(NavigationCustomFeaturesSource *)customFeaturesSource pointsFramer];

    if (!v6)
    {
      v7 = [(CarNavigationSearchResultsModeController *)self carChromeViewController];
      v8 = [v7 navigationDisplay];
      v9 = [v8 cameraController];
      [(NavigationCustomFeaturesSource *)self->_customFeaturesSource setPointsFramer:v9];
    }

    v10 = self->_customFeaturesSource;
    mapItems = self->_mapItems;

    [(NavigationCustomFeaturesSource *)v10 displayMapItems:mapItems];
  }
}

- (void)_highlightMapItem:(id)a3
{
  v4 = a3;
  v5 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  v6 = [v5 mapView];
  objc_initWeak(&location, v6);

  if (v4)
  {
    v7 = [[PersonalizedMapItemKey alloc] initWithMapItem:v4];
    v8 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
    v9 = [v8 customPOIsController];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100CA795C;
    v10[3] = &unk_101660180;
    v11 = v4;
    objc_copyWeak(&v12, &location);
    [v9 customFeatureForKey:v7 completion:v10];
    objc_destroyWeak(&v12);
  }

  else
  {
    v7 = objc_loadWeakRetained(&location);
    [(PersonalizedMapItemKey *)v7 _deselectLabelMarkerAnimated:1];
  }

  objc_destroyWeak(&location);
}

- (void)_displayPlaceCardForSearchResult:(id)a3
{
  v4 = a3;
  if ([(CarNavigationSearchResultsModeController *)self state])
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "SAR: tried to get to .PlaceCard state but not in .Results state, ignoring.", v7, 2u);
    }
  }

  else
  {
    v6 = [[CarPlaceCardCardViewController alloc] initWithSearchResult:v4 style:1 dataSource:self delegate:self];
    [(CarNavigationSearchResultsModeController *)self setPlaceCard:v6];

    [(CarNavigationSearchResultsModeController *)self setState:1];
  }
}

- (void)_configureCard:(id)a3
{
  v24 = a3;
  v4 = [(CarNavigationSearchResultsModeController *)self state];
  v5 = [(CarNavigationSearchResultsModeController *)self _cardTitle];
  [v24 setTitle:v5];

  if (v4)
  {
    v6 = [(CarNavigationSearchResultsModeController *)self placeCard];
    [v24 setContent:v6];

    v7 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v7 setEdgePosition:0];
    [(CarCardLayout *)v7 setCornerPosition:4];
    [(CarCardLayout *)v7 setPrimaryAxis:1];
    [(CarCardLayout *)v7 setPinnedEdges:0];
    [(CarCardLayout *)v7 setPrimaryAxisFillMode:3];
    LODWORD(v8) = 1148846080;
    [(CarCardLayout *)v7 setPrimaryAxisFillModePriority:v8];
    [(CarCardLayout *)v7 setSecondaryAxisFillMode:2];
    LODWORD(v9) = 1148846080;
    [(CarCardLayout *)v7 setSecondaryAxisFillModePriority:v9];
    [(CarCardLayout *)v7 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v7 setFlipForRightHandDrive:1];
    v10 = v7;
    v11 = [(CarCardLayout *)v10 primaryAxis];
    v12 = [(CarCardLayout *)v10 cornerPosition];
    if (v11 == 1)
    {
      if (v12 == 4 || [(CarCardLayout *)v10 cornerPosition]== 1 || [(CarCardLayout *)v10 edgePosition]== 2)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      if ([(CarCardLayout *)v10 cornerPosition]== 8 || [(CarCardLayout *)v10 cornerPosition]== 2 || [(CarCardLayout *)v10 edgePosition]== 8)
      {
        v13 |= 2uLL;
      }

      if ([(CarCardLayout *)v10 edgePosition]== 1)
      {
        v13 |= 4uLL;
      }

      v14 = v13 | ([(CarCardLayout *)v10 edgePosition]== 4);
    }

    else
    {
      v14 = v12 == 4 || [(CarCardLayout *)v10 cornerPosition]== 8 || [(CarCardLayout *)v10 edgePosition]== 4;
      if ([(CarCardLayout *)v10 cornerPosition]== 1 || [(CarCardLayout *)v10 cornerPosition]== 2 || [(CarCardLayout *)v10 edgePosition]== 1)
      {
        v14 |= 4uLL;
      }

      if ([(CarCardLayout *)v10 edgePosition]== 2)
      {
        v14 |= 8uLL;
      }

      if ([(CarCardLayout *)v10 edgePosition]== 8)
      {
        v14 |= 2uLL;
      }
    }

    [(CarCardLayout *)v10 setEdgesAffectingMapInsets:v14];
    [(CarCardLayout *)v10 setHorizontallyCenterMapInsets:0];
    [v24 setLayout:v10];

    [v24 setAccessoryType:1];
    [v24 setSelectionHandler:0];
  }

  else
  {
    v15 = [(CarNavigationSearchResultsModeController *)self sarCard];
    [v24 setContent:v15];

    v16 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v16 setEdgePosition:0];
    [(CarCardLayout *)v16 setCornerPosition:4];
    [(CarCardLayout *)v16 setPrimaryAxis:1];
    [(CarCardLayout *)v16 setPinnedEdges:0];
    [(CarCardLayout *)v16 setPrimaryAxisFillMode:3];
    LODWORD(v17) = 1148846080;
    [(CarCardLayout *)v16 setPrimaryAxisFillModePriority:v17];
    [(CarCardLayout *)v16 setSecondaryAxisFillMode:2];
    LODWORD(v18) = 1148846080;
    [(CarCardLayout *)v16 setSecondaryAxisFillModePriority:v18];
    [(CarCardLayout *)v16 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v16 setFlipForRightHandDrive:1];
    v19 = v16;
    v20 = [(CarCardLayout *)v19 primaryAxis];
    v21 = [(CarCardLayout *)v19 cornerPosition];
    if (v20 == 1)
    {
      if (v21 == 4 || [(CarCardLayout *)v19 cornerPosition]== 1 || [(CarCardLayout *)v19 edgePosition]== 2)
      {
        v22 = 8;
      }

      else
      {
        v22 = 0;
      }

      if ([(CarCardLayout *)v19 cornerPosition]== 8 || [(CarCardLayout *)v19 cornerPosition]== 2 || [(CarCardLayout *)v19 edgePosition]== 8)
      {
        v22 |= 2uLL;
      }

      if ([(CarCardLayout *)v19 edgePosition]== 1)
      {
        v22 |= 4uLL;
      }

      v23 = v22 | ([(CarCardLayout *)v19 edgePosition]== 4);
    }

    else
    {
      v23 = v21 == 4 || [(CarCardLayout *)v19 cornerPosition]== 8 || [(CarCardLayout *)v19 edgePosition]== 4;
      if ([(CarCardLayout *)v19 cornerPosition]== 1 || [(CarCardLayout *)v19 cornerPosition]== 2 || [(CarCardLayout *)v19 edgePosition]== 1)
      {
        v23 |= 4uLL;
      }

      if ([(CarCardLayout *)v19 edgePosition]== 2)
      {
        v23 |= 8uLL;
      }

      if ([(CarCardLayout *)v19 edgePosition]== 8)
      {
        v23 |= 2uLL;
      }
    }

    [(CarCardLayout *)v19 setEdgesAffectingMapInsets:v23];
    [(CarCardLayout *)v19 setHorizontallyCenterMapInsets:0];
    [v24 setLayout:v19];

    [v24 setAccessoryType:1];
  }
}

- (void)chromeDidEndConfiguringCards:(id)a3
{
  v4 = a3;
  v5 = [(CarNavigationSearchResultsModeController *)self desiredCards];
  v6 = [v4 isEqualToArray:v5];

  if (v6)
  {
    v7 = [(CarNavigationSearchResultsModeController *)self placeCard];
    [v7 setHasCardFinishedTransitioning:1];
  }
}

- (void)chromeDidStartConfiguringCards:(id)a3
{
  v4 = a3;
  v5 = [(CarNavigationSearchResultsModeController *)self desiredCards];
  v6 = [v4 isEqualToArray:v5];

  if (v6)
  {
    v7 = [(CarNavigationSearchResultsModeController *)self placeCard];
    [v7 setHasCardFinishedTransitioning:0];
  }
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100CA82C8;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  v5 = a4;
  [v5 addPreparation:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100CA8408;
  v6[3] = &unk_101661738;
  v6[4] = self;
  [v5 addCompletion:v6];
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100CA851C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  [(CarNavigationSearchResultsModeController *)self _highlightMapItem:0, a4];
  v5 = +[MKLocationManager sharedLocationManager];
  [v5 stopLocationUpdateWithObserver:self];
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v18 = a3;
  v5 = [(CarNavigationSearchResultsModeController *)self _cardTitle];
  [v18 setTitle:v5];

  v6 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v6 setEdgePosition:0];
  [(CarCardLayout *)v6 setCornerPosition:4];
  [(CarCardLayout *)v6 setPrimaryAxis:1];
  [(CarCardLayout *)v6 setPinnedEdges:0];
  [(CarCardLayout *)v6 setPrimaryAxisFillMode:3];
  LODWORD(v7) = 1148846080;
  [(CarCardLayout *)v6 setPrimaryAxisFillModePriority:v7];
  [(CarCardLayout *)v6 setSecondaryAxisFillMode:2];
  LODWORD(v8) = 1148846080;
  [(CarCardLayout *)v6 setSecondaryAxisFillModePriority:v8];
  [(CarCardLayout *)v6 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v6 setFlipForRightHandDrive:1];
  v9 = v6;
  v10 = [(CarCardLayout *)v9 primaryAxis];
  v11 = [(CarCardLayout *)v9 cornerPosition];
  if (v10 == 1)
  {
    if (v11 == 4 || [(CarCardLayout *)v9 cornerPosition]== 1 || [(CarCardLayout *)v9 edgePosition]== 2)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    if ([(CarCardLayout *)v9 cornerPosition]== 8 || [(CarCardLayout *)v9 cornerPosition]== 2 || [(CarCardLayout *)v9 edgePosition]== 8)
    {
      v12 |= 2uLL;
    }

    if ([(CarCardLayout *)v9 edgePosition]== 1)
    {
      v12 |= 4uLL;
    }

    v13 = v12 | ([(CarCardLayout *)v9 edgePosition]== 4);
  }

  else
  {
    v13 = v11 == 4 || [(CarCardLayout *)v9 cornerPosition]== 8 || [(CarCardLayout *)v9 edgePosition]== 4;
    if ([(CarCardLayout *)v9 cornerPosition]== 1 || [(CarCardLayout *)v9 cornerPosition]== 2 || [(CarCardLayout *)v9 edgePosition]== 1)
    {
      v13 |= 4uLL;
    }

    if ([(CarCardLayout *)v9 edgePosition]== 2)
    {
      v13 |= 8uLL;
    }

    if ([(CarCardLayout *)v9 edgePosition]== 8)
    {
      v13 |= 2uLL;
    }
  }

  [(CarCardLayout *)v9 setEdgesAffectingMapInsets:v13];
  [(CarCardLayout *)v9 setHorizontallyCenterMapInsets:0];
  [v18 setLayout:v9];

  [v18 setAccessoryType:1];
  v14 = [(CarNavigationSearchResultsModeController *)self state];
  if (v14 == 2)
  {
    [v18 setContent:self->_evChargingAvailabilityVC];
  }

  else
  {
    if (v14 == 1)
    {
      v16 = [(CarNavigationSearchResultsModeController *)self placeCard];
    }

    else
    {
      v15 = v18;
      if (v14)
      {
        goto LABEL_33;
      }

      v16 = [(CarNavigationSearchResultsModeController *)self sarCard];
    }

    v17 = v16;
    [v18 setContent:v16];
  }

  v15 = v18;
LABEL_33:
}

- (id)desiredCards
{
  v2 = [(CarNavigationSearchResultsModeController *)self state];
  if (v2 <= 2)
  {
    v4 = @"primary";
    v2 = [NSArray arrayWithObjects:&v4 count:1];
  }

  return v2;
}

- (id)personalizedItemSources
{
  if (self->_customFeaturesSource)
  {
    customFeaturesSource = self->_customFeaturesSource;
    v2 = [NSArray arrayWithObjects:&customFeaturesSource count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (id)_cardTitle
{
  v3 = [(CarNavigationSearchResultsModeController *)self state];
  switch(v3)
  {
    case 2:
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Available Now [Carplay EV Charging Availability header]" value:@"localized string not found" table:0];
      goto LABEL_10;
    case 1:
      selectedIndex = self->_selectedIndex;
      if (selectedIndex < [(NSArray *)self->_mapItems count])
      {
        v6 = [(NSArray *)self->_mapItems objectAtIndexedSubscript:self->_selectedIndex];
        goto LABEL_8;
      }

      break;
    case 0:
      v4 = [(CarNavigationSearchResultsModeController *)self category];
      v5 = [v4 name];

      if (v5)
      {
        v6 = [(CarNavigationSearchResultsModeController *)self category];
LABEL_8:
        v8 = v6;
        v9 = [v6 name];
LABEL_10:
        v10 = v9;
        goto LABEL_11;
      }

      v13 = [(CarNavigationSearchResultsModeController *)self searchSession];
      v14 = [v13 searchInfo];
      v15 = [v14 headerDisplayName];

      v16 = [(CarNavigationSearchResultsModeController *)self searchSession];
      v8 = v16;
      if (v15)
      {
        v17 = [v16 searchInfo];
        v18 = [v17 headerDisplayName];
LABEL_20:
        v10 = v18;

LABEL_11:
        if (v10)
        {
          goto LABEL_13;
        }

        break;
      }

      v19 = [v16 searchFieldItem];
      v20 = [v19 searchString];

      if (v20)
      {
        v8 = [(CarNavigationSearchResultsModeController *)self searchSession];
        v17 = [v8 searchFieldItem];
        v18 = [v17 searchString];
        goto LABEL_20;
      }

      v21 = sub_100006E1C();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [(CarNavigationSearchResultsModeController *)self searchSession];
        v23 = 138412290;
        v24 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "SAR: failed to find an appropriate title for current search session: %@", &v23, 0xCu);
      }

      break;
  }

  v11 = +[NSBundle mainBundle];
  v10 = [v11 localizedStringForKey:@"CarPlay_Search_Title" value:@"localized string not found" table:0];

LABEL_13:

  return v10;
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"CarNavigationSearchResultsModeStateResults";
      if (a3 == 1)
      {
        v6 = @"CarNavigationSearchResultsModeStatePlaceCard";
      }

      if (a3 == 2)
      {
        v6 = @"CarNavigationSearchResultsModeStateEVAvailability";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SAR: setState: %@, -> updating cardsOverlay.", &v8, 0xCu);
    }

    v7 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
    [v7 updateCardsForContext:self animated:1];
  }
}

- (void)setCategory:(id)a3
{
  v5 = a3;
  if (self->_category != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_category, a3);
    [(CarNavigationSearchResultsModeController *)self _fetchCategoryResults];
    [(CarNavigationSearchResultsModeController *)self _updateContextAndDisplay];
    v5 = v6;
  }
}

- (void)setMapItems:(id)a3 selectedItemIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 carShortenedArray];
  mapItems = self->_mapItems;
  self->_mapItems = v7;

  self->_selectedIndex = [(CarNavigationSearchResultsModeController *)self _validateSelectedIndex:a4 forCount:[(NSArray *)self->_mapItems count]];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v10 = [MKMapItem searchResultsForMapItems:self->_mapItems];
  searchResults = self->_searchResults;
  self->_searchResults = v10;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        v18 = [SearchResult alloc];
        v19 = [(SearchResult *)v18 initWithMapItem:v17, v22];
        [v9 addObject:v19];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v20 = [v9 copy];
  v21 = self->_searchResults;
  self->_searchResults = v20;

  [(CarNavigationSearchResultsModeController *)self _updateContextAndDisplay];
}

- (void)setSearchResults:(id)a3 selectedResultIndex:(unint64_t)a4
{
  v6 = [a3 carShortenedArray];
  searchResults = self->_searchResults;
  self->_searchResults = v6;

  self->_selectedIndex = [(CarNavigationSearchResultsModeController *)self _validateSelectedIndex:a4 forCount:[(NSArray *)self->_searchResults count]];
  v8 = [(NSArray *)self->_searchResults count];
  if (v8)
  {
    v8 = [(NSArray *)self->_searchResults valueForKey:@"mapItem"];
  }

  mapItems = self->_mapItems;
  self->_mapItems = v8;

  [(CarNavigationSearchResultsModeController *)self _updateContextAndDisplay];
}

- (void)setDestinations:(id)a3 selectedDestinationIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [MKMapItem carMapItemFromDestination:v14, v18];
        v16 = v15;
        if (v15)
        {
          if (v7 == v14)
          {
            v17 = v15;

            v7 = v17;
          }

          [v8 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  -[CarNavigationSearchResultsModeController setMapItems:selectedItemIndex:](self, "setMapItems:selectedItemIndex:", v8, [v8 indexOfObject:v7]);
}

- (void)setSearchSession:(id)a3
{
  v5 = a3;
  searchSession = self->_searchSession;
  if (searchSession != v5)
  {
    v8 = v5;
    [(SearchSession *)searchSession unregisterObserver:self];
    objc_storeStrong(&self->_searchSession, a3);
    [(SearchSession *)self->_searchSession registerObserver:self];
    v7 = [(SearchSession *)self->_searchSession currentResults];
    [(CarNavigationSearchResultsModeController *)self setSearchResults:v7 selectedResultIndex:[(SearchSession *)self->_searchSession selectedResultIndex]];

    v5 = v8;
  }
}

- (void)setSearchInfo:(id)a3
{
  v5 = a3;
  if (self->_searchInfo != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_searchInfo, a3);
    v6 = [(SearchInfo *)self->_searchInfo results];
    [(CarNavigationSearchResultsModeController *)self setSearchResults:v6 selectedResultIndex:[(SearchInfo *)self->_searchInfo selectedIndex]];

    v5 = v7;
  }
}

- (BrowseManager)browseManager
{
  browseManager = self->_browseManager;
  if (!browseManager)
  {
    v4 = [[BrowseManager alloc] initWithCacheKey:@"Stark-SAR"];
    v5 = self->_browseManager;
    self->_browseManager = v4;

    [(BrowseManager *)self->_browseManager readCategoriesFromDiskIfNeeded];
    browseManager = self->_browseManager;
  }

  return browseManager;
}

- (void)commonInit
{
  self->_state = 0;
  v3 = [[_TtC4Maps34CarSearchResultsCardViewController alloc] initWithDelegate:self];
  sarCard = self->_sarCard;
  self->_sarCard = v3;

  if (self->_searchResults)
  {
    v5 = self->_sarCard;

    [CarSearchResultsCardViewController setSearchResults:v5 searchAlongRoute:"setSearchResults:searchAlongRoute:"];
  }
}

- (CarNavigationSearchResultsModeController)initWithCategory:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CarNavigationSearchResultsModeController;
  v5 = [(CarNavigationSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarNavigationSearchResultsModeController *)v5 commonInit];
    [(CarNavigationSearchResultsModeController *)v6 setCategory:v4];
  }

  return v6;
}

- (CarNavigationSearchResultsModeController)initWithMapItems:(id)a3 selectedItemIndex:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CarNavigationSearchResultsModeController;
  v7 = [(CarNavigationSearchResultsModeController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CarNavigationSearchResultsModeController *)v7 commonInit];
    [(CarNavigationSearchResultsModeController *)v8 setMapItems:v6 selectedItemIndex:a4];
  }

  return v8;
}

- (CarNavigationSearchResultsModeController)initWithSearchResults:(id)a3 selectedResultIndex:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CarNavigationSearchResultsModeController;
  v7 = [(CarNavigationSearchResultsModeController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CarNavigationSearchResultsModeController *)v7 commonInit];
    [(CarNavigationSearchResultsModeController *)v8 setSearchResults:v6 selectedResultIndex:a4];
  }

  return v8;
}

- (CarNavigationSearchResultsModeController)initWithDestinations:(id)a3 selectedDestinationIndex:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CarNavigationSearchResultsModeController;
  v7 = [(CarNavigationSearchResultsModeController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CarNavigationSearchResultsModeController *)v7 commonInit];
    [(CarNavigationSearchResultsModeController *)v8 setDestinations:v6 selectedDestinationIndex:a4];
  }

  return v8;
}

- (CarNavigationSearchResultsModeController)initWithSearchSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CarNavigationSearchResultsModeController;
  v5 = [(CarNavigationSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarNavigationSearchResultsModeController *)v5 commonInit];
    [(CarNavigationSearchResultsModeController *)v6 setSearchSession:v4];
  }

  return v6;
}

@end