@interface CarNavigationSearchResultsModeController
- (BOOL)_contentNeedsRefreshingForUpdatedLocation:(id)location;
- (BrowseManager)browseManager;
- (CarNavigationSearchResultsModeController)initWithCategory:(id)category;
- (CarNavigationSearchResultsModeController)initWithDestinations:(id)destinations selectedDestinationIndex:(unint64_t)index;
- (CarNavigationSearchResultsModeController)initWithMapItems:(id)items selectedItemIndex:(unint64_t)index;
- (CarNavigationSearchResultsModeController)initWithSearchResults:(id)results selectedResultIndex:(unint64_t)index;
- (CarNavigationSearchResultsModeController)initWithSearchSession:(id)session;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (double)_detourDistanceToMapItem:(id)item;
- (id)_cardTitle;
- (id)desiredCards;
- (id)etaForCurrentRoute;
- (id)personalizedItemSources;
- (unint64_t)_rowForSearchItem:(id)item;
- (unint64_t)_validateSelectedIndex:(unint64_t)index forCount:(unint64_t)count;
- (void)_configureCard:(id)card;
- (void)_displayMapItems;
- (void)_displayPlaceCardForSearchResult:(id)result;
- (void)_fetchCategoryResults;
- (void)_highlightMapItem:(id)item;
- (void)_reloadContentIfNeededForUpdatedLocation:(id)location;
- (void)_updateContext;
- (void)_updateContextAndDisplay;
- (void)_updateDisplay;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)chromeDidEndConfiguringCards:(id)cards;
- (void)chromeDidStartConfiguringCards:(id)cards;
- (void)commonInit;
- (void)configureCard:(id)card forKey:(id)key;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)handleHardwareBackButtonPressed;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)mapView:(id)view didDeselectLabelMarker:(id)marker;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)placeCard:(id)card didPresentAlert:(id)alert;
- (void)placeCard:(id)card wantsToPresentEVAvailability:(id)availability;
- (void)placeCardDidDismissAlert:(id)alert;
- (void)placeCardDidSelectGo:(id)go;
- (void)placeCardDidSelectHandoff:(id)handoff;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)searchResultsCard:(id)card didFocusResult:(id)result;
- (void)searchResultsCard:(id)card didSelectResult:(id)result;
- (void)searchSessionDidChangeSearchResults:(id)results;
- (void)searchSessionDidFail:(id)fail;
- (void)searchSessionDidInvalidate:(id)invalidate reason:(unint64_t)reason;
- (void)searchSessionWillPerformSearch:(id)search;
- (void)setCategory:(id)category;
- (void)setDestinations:(id)destinations selectedDestinationIndex:(unint64_t)index;
- (void)setMapItems:(id)items selectedItemIndex:(unint64_t)index;
- (void)setSearchInfo:(id)info;
- (void)setSearchResults:(id)results selectedResultIndex:(unint64_t)index;
- (void)setSearchSession:(id)session;
- (void)setState:(int64_t)state;
@end

@implementation CarNavigationSearchResultsModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  lastLocation = [locationCopy lastLocation];
  v5 = [(CarNavigationSearchResultsModeController *)self _contentNeedsRefreshingForUpdatedLocation:lastLocation];

  if (v5)
  {
    lastLocation2 = [locationCopy lastLocation];
    [(CarNavigationSearchResultsModeController *)self _reloadContentIfNeededForUpdatedLocation:lastLocation2];
  }
}

- (BOOL)_contentNeedsRefreshingForUpdatedLocation:(id)location
{
  locationCopy = location;
  category = [(CarNavigationSearchResultsModeController *)self category];
  if (category)
  {
    if (self->_lastFetchedFromLocation)
    {
      [locationCopy distanceFromLocation:?];
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

- (void)_reloadContentIfNeededForUpdatedLocation:(id)location
{
  locationCopy = location;
  category = [(CarNavigationSearchResultsModeController *)self category];
  if (category)
  {
    v7 = category;
    searchSession = [(CarNavigationSearchResultsModeController *)self searchSession];
    isLoading = [searchSession isLoading];

    if ((isLoading & 1) == 0)
    {
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "SAR: _reloadContentIfNeededForUpdatedLocation", v11, 2u);
      }

      [(CarNavigationSearchResultsModeController *)self _fetchCategoryResults];
      objc_storeStrong(&self->_lastFetchedFromLocation, location);
    }
  }
}

- (void)mapView:(id)view didDeselectLabelMarker:(id)marker
{
  if (([marker isRouteEta] & 1) == 0)
  {
    longitude = kCLLocationCoordinate2DInvalid.longitude;
    customFeaturesSource = self->_customFeaturesSource;

    [(NavigationCustomFeaturesSource *)customFeaturesSource setOverriddenPointToFrame:kCLLocationCoordinate2DInvalid.latitude, longitude];
  }
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  if (([markerCopy isRouteEta] & 1) == 0)
  {
    [markerCopy coordinate];
    v6 = v5;
    [markerCopy coordinate];
    v8 = CLLocationCoordinate2DMake(v6, v7);
    [(NavigationCustomFeaturesSource *)self->_customFeaturesSource setOverriddenPointToFrame:v8.latitude, v8.longitude];
  }
}

- (void)searchSessionDidInvalidate:(id)invalidate reason:(unint64_t)reason
{
  invalidateCopy = invalidate;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SAR searchSessionDidInvalidate", v10, 2u);
  }

  searchSession = [(CarNavigationSearchResultsModeController *)self searchSession];

  if (searchSession == invalidateCopy)
  {
    [(CarNavigationSearchResultsModeController *)self setSearchSession:0];
    if (reason != 1)
    {
      v9 = +[CarChromeModeCoordinator sharedInstance];
      [v9 popFromContext:self];
    }
  }
}

- (void)searchSessionDidFail:(id)fail
{
  failCopy = fail;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastError = [failCopy lastError];
    v9 = 138412290;
    v10 = lastError;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SAR searchSessionDidFail with error: %@", &v9, 0xCu);
  }

  [(CarNavigationSearchResultsModeController *)self setSearchInfo:0];
  sarCard = [(CarNavigationSearchResultsModeController *)self sarCard];
  lastError2 = [failCopy lastError];
  [sarCard setError:lastError2];
}

- (void)searchSessionDidChangeSearchResults:(id)results
{
  resultsCopy = results;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    currentResults = [resultsCopy currentResults];
    v12 = 134217984;
    v13 = [currentResults count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SAR searchSessionDidChangeSearchResults, count: %ld", &v12, 0xCu);
  }

  category = [(CarNavigationSearchResultsModeController *)self category];

  if (category)
  {
    v8 = +[MKLocationManager sharedLocationManager];
    lastLocation = [v8 lastLocation];
    lastFetchedFromLocation = self->_lastFetchedFromLocation;
    self->_lastFetchedFromLocation = lastLocation;
  }

  currentResultsSearchInfo = [resultsCopy currentResultsSearchInfo];
  [(CarNavigationSearchResultsModeController *)self setSearchInfo:currentResultsSearchInfo];

  [(CarNavigationSearchResultsModeController *)self _updateDisplay];
}

- (void)searchSessionWillPerformSearch:(id)search
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SAR searchSessionWillPerformSearch", v6, 2u);
  }

  sarCard = [(CarNavigationSearchResultsModeController *)self sarCard];
  [sarCard setLoading];
}

- (NSArray)carFocusOrderSequences
{
  chromeViewController = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  itemRepresentingStatusBanner = [chromeViewController itemRepresentingStatusBanner];
  chromeViewController2 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController2 itemRepresentingOverlays];
  v11[1] = itemRepresentingOverlays;
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
    evChargingAvailabilityVC = [(CarNavigationSearchResultsModeController *)self evChargingAvailabilityVC];
    environmentRepresentingOverlays = [CarFocusOrderEnvironment environmentWithFocusEnvironment:evChargingAvailabilityVC];
    v8 = environmentRepresentingOverlays;
    v6 = &v8;
  }

  else if (state == 1)
  {
    evChargingAvailabilityVC = [(CarNavigationSearchResultsModeController *)self placeCard];
    environmentRepresentingOverlays = [CarFocusOrderEnvironment environmentWithFocusEnvironment:evChargingAvailabilityVC];
    v9 = environmentRepresentingOverlays;
    v6 = &v9;
  }

  else
  {
    if (state)
    {
      goto LABEL_8;
    }

    evChargingAvailabilityVC = [(CarNavigationSearchResultsModeController *)self chromeViewController];
    environmentRepresentingOverlays = [evChargingAvailabilityVC environmentRepresentingOverlays];
    v10 = environmentRepresentingOverlays;
    v6 = &v10;
  }

  v2 = [NSArray arrayWithObjects:v6 count:1, v8, v9, v10];

LABEL_8:

  return v2;
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    state = [(CarNavigationSearchResultsModeController *)self state];
    v6 = @"CarNavigationSearchResultsModeStateResults";
    if (state == 1)
    {
      v6 = @"CarNavigationSearchResultsModeStatePlaceCard";
    }

    if (state == 2)
    {
      v6 = @"CarNavigationSearchResultsModeStateEVAvailability";
    }

    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SAR: closeButtonTapped, currentState: %@", &v14, 0xCu);
  }

  state2 = [(CarNavigationSearchResultsModeController *)self state];
  if (state2 == 2)
  {
    [(CarNavigationSearchResultsModeController *)self setState:1];
    p_super = &self->_evChargingAvailabilityVC->super.super.super;
    self->_evChargingAvailabilityVC = 0;
  }

  else if (state2 == 1)
  {
    [(CarNavigationSearchResultsModeController *)self _highlightMapItem:0];
    [(CarNavigationSearchResultsModeController *)self setState:0];
    searchSession = [(CarNavigationSearchResultsModeController *)self searchSession];
    currentResults = [searchSession currentResults];
    v12 = [currentResults count];

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
    if (state2)
    {
      return;
    }

    searchSession2 = [(CarNavigationSearchResultsModeController *)self searchSession];

    if (searchSession2)
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
  placeCard = [(CarNavigationSearchResultsModeController *)self placeCard];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100CA65CC;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, buf);
  [placeCard dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)searchResultsCard:(id)card didFocusResult:(id)result
{
  resultCopy = result;
  self->_selectedIndex = [(CarNavigationSearchResultsModeController *)self _rowForSearchItem:resultCopy];
  mapItem = [resultCopy mapItem];

  [(CarNavigationSearchResultsModeController *)self _highlightMapItem:mapItem];
}

- (void)searchResultsCard:(id)card didSelectResult:(id)result
{
  resultCopy = result;
  self->_selectedIndex = [(CarNavigationSearchResultsModeController *)self _rowForSearchItem:resultCopy];
  mapItem = [resultCopy mapItem];
  [(CarNavigationSearchResultsModeController *)self _highlightMapItem:mapItem];

  [(CarNavigationSearchResultsModeController *)self _displayPlaceCardForSearchResult:resultCopy];
}

- (unint64_t)_rowForSearchItem:(id)item
{
  itemCopy = item;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  searchResults = self->_searchResults;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CA687C;
  v11[3] = &unk_101650128;
  v6 = itemCopy;
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

- (void)placeCard:(id)card wantsToPresentEVAvailability:(id)availability
{
  [(CarNavigationSearchResultsModeController *)self setEvChargingAvailabilityVC:availability];

  [(CarNavigationSearchResultsModeController *)self setState:2];
}

- (void)placeCardDidDismissAlert:(id)alert
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SAR didDismissAlert", v6, 2u);
  }

  chromeViewController = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  [chromeViewController setHardwareBackButtonBehavior:0 forContext:self];
}

- (void)placeCard:(id)card didPresentAlert:(id)alert
{
  alertCopy = alert;
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    title = [alertCopy title];
    v9 = 138412290;
    v10 = title;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SAR didPresentAlert with title: %@", &v9, 0xCu);
  }

  chromeViewController = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  [chromeViewController setHardwareBackButtonBehavior:1 forContext:self];
}

- (void)placeCardDidSelectHandoff:(id)handoff
{
  handoffCopy = handoff;
  selectedIndex = self->_selectedIndex;
  if (selectedIndex < [(NSArray *)self->_searchResults count]&& ([(NSArray *)self->_searchResults objectAtIndexedSubscript:self->_selectedIndex], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    objc_initWeak(&location, self);
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      name = [v6 name];
      *buf = 138477827;
      v16 = name;
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

- (void)placeCardDidSelectGo:(id)go
{
  goCopy = go;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SAR: placeCard didSelectGo.", &v15, 2u);
  }

  selectedIndex = self->_selectedIndex;
  if (selectedIndex >= [(NSArray *)self->_searchResults count]|| ([(NSArray *)self->_searchResults objectAtIndexedSubscript:self->_selectedIndex], (searchResult = objc_claimAutoreleasedReturnValue()) == 0))
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

    searchResult = [goCopy searchResult];
  }

  mapItem = [searchResult mapItem];
  if (mapItem)
  {
    if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
    {
      carChromeViewController = [(CarNavigationSearchResultsModeController *)self carChromeViewController];
      [carChromeViewController captureUserAction:6097 onTarget:-[CarNavigationSearchResultsModeController currentUsageTarget](self eventValue:{"currentUsageTarget"), 0}];

      carChromeViewController2 = [(CarNavigationSearchResultsModeController *)self carChromeViewController];
      [carChromeViewController2 captureUserAction:3001 onTarget:-[CarNavigationSearchResultsModeController currentUsageTarget](self eventValue:{"currentUsageTarget"), 0}];
    }

    v14 = +[CarDisplayController sharedInstance];
    [v14 detourToMapItem:mapItem];
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
    _detourInfo = [v4 _detourInfo];

    if (_detourInfo)
    {
      _detourInfo2 = [v4 _detourInfo];
      [_detourInfo2 timeToPlace];
      v8 = v7;

      [(CarNavigationSearchResultsModeController *)self _detourDistanceToMapItem:v4];
      v10 = v9;
      v11 = [GuidanceETA alloc];
      timeZone = [v4 timeZone];
      v13 = [(GuidanceETA *)v11 initWithRemainingTime:0 remainingDistance:timeZone arrivalBatteryCharge:0 destinationTimeZone:v8 transportType:v10];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (double)_detourDistanceToMapItem:(id)item
{
  itemCopy = item;
  _detourInfo = [itemCopy _detourInfo];
  [_detourInfo distanceToPlace];
  if (v6 <= 0.0)
  {
    chromeViewController = [(CarNavigationSearchResultsModeController *)self chromeViewController];
    mapView = [chromeViewController mapView];
    userLocation = [mapView userLocation];
    [userLocation coordinate];

    [itemCopy _coordinate];
    v12 = v11;
    [itemCopy _coordinate];
    CLLocationCoordinate2DMake(v12, v13);
    CLLocationCoordinate2DGetDistanceFrom();
  }

  else
  {
    [_detourInfo distanceToPlace];
  }

  v14 = v7;

  return v14;
}

- (void)_fetchCategoryResults
{
  category = [(CarNavigationSearchResultsModeController *)self category];

  if (category)
  {
    searchSession = [(CarNavigationSearchResultsModeController *)self searchSession];
    isLoading = [searchSession isLoading];

    v6 = sub_100006E1C();
    v7 = v6;
    if (isLoading)
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
        category2 = [(CarNavigationSearchResultsModeController *)self category];
        name = [category2 name];
        v20 = 138412290;
        v21 = name;
        _os_log_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_INFO, "SAR: Started fetching results for category: %@. Creating new searchSesssion.", &v20, 0xCu);
      }

      v7 = [[SearchSession alloc] initWithOrigin:1];
      v13 = +[CarDisplayController sharedInstance];
      chromeViewController = [v13 chromeViewController];
      navigationAwareTraits = [chromeViewController navigationAwareTraits];

      if ([navigationAwareTraits navigating])
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      [navigationAwareTraits setSearchOriginationType:v16];
      [navigationAwareTraits useOnlineToOfflineFailoverRequestModeIfAllowed];
      [(SearchSession *)v7 setTraits:navigationAwareTraits];
      [(SearchSession *)v7 setSource:6];
      [(CarNavigationSearchResultsModeController *)self setSearchSession:v7];
      category3 = [(CarNavigationSearchResultsModeController *)self category];
      v17Category = [category3 category];
      v19 = [SearchFieldItem searchFieldItemWithObject:v17Category];

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

- (unint64_t)_validateSelectedIndex:(unint64_t)index forCount:(unint64_t)count
{
  if (index >= count || index == 0x7FFFFFFFFFFFFFFFLL)
  {
    indexCopy = 0;
  }

  else
  {
    indexCopy = index;
  }

  if (count)
  {
    return indexCopy;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)_updateContextAndDisplay
{
  searchSession = [(CarNavigationSearchResultsModeController *)self searchSession];
  if (searchSession && (v4 = searchSession, -[CarNavigationSearchResultsModeController searchSession](self, "searchSession"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 selectedResultIndex], selectedIndex = self->_selectedIndex, v5, v4, v6 != selectedIndex))
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
  searchSession = [(CarNavigationSearchResultsModeController *)self searchSession];
  [searchSession setSelectedResultIndex:selectedIndex];
}

- (void)_updateDisplay
{
  searchResults = self->_searchResults;
  if (searchResults && [(NSArray *)searchResults count])
  {
    sarCard = [(CarNavigationSearchResultsModeController *)self sarCard];
    [sarCard setSearchResults:self->_searchResults searchAlongRoute:1];

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
    pointsFramer = [(NavigationCustomFeaturesSource *)customFeaturesSource pointsFramer];

    if (!pointsFramer)
    {
      carChromeViewController = [(CarNavigationSearchResultsModeController *)self carChromeViewController];
      navigationDisplay = [carChromeViewController navigationDisplay];
      cameraController = [navigationDisplay cameraController];
      [(NavigationCustomFeaturesSource *)self->_customFeaturesSource setPointsFramer:cameraController];
    }

    v10 = self->_customFeaturesSource;
    mapItems = self->_mapItems;

    [(NavigationCustomFeaturesSource *)v10 displayMapItems:mapItems];
  }
}

- (void)_highlightMapItem:(id)item
{
  itemCopy = item;
  chromeViewController = [(CarNavigationSearchResultsModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];
  objc_initWeak(&location, mapView);

  if (itemCopy)
  {
    v7 = [[PersonalizedMapItemKey alloc] initWithMapItem:itemCopy];
    chromeViewController2 = [(CarNavigationSearchResultsModeController *)self chromeViewController];
    customPOIsController = [chromeViewController2 customPOIsController];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100CA795C;
    v10[3] = &unk_101660180;
    v11 = itemCopy;
    objc_copyWeak(&v12, &location);
    [customPOIsController customFeatureForKey:v7 completion:v10];
    objc_destroyWeak(&v12);
  }

  else
  {
    v7 = objc_loadWeakRetained(&location);
    [(PersonalizedMapItemKey *)v7 _deselectLabelMarkerAnimated:1];
  }

  objc_destroyWeak(&location);
}

- (void)_displayPlaceCardForSearchResult:(id)result
{
  resultCopy = result;
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
    v6 = [[CarPlaceCardCardViewController alloc] initWithSearchResult:resultCopy style:1 dataSource:self delegate:self];
    [(CarNavigationSearchResultsModeController *)self setPlaceCard:v6];

    [(CarNavigationSearchResultsModeController *)self setState:1];
  }
}

- (void)_configureCard:(id)card
{
  cardCopy = card;
  state = [(CarNavigationSearchResultsModeController *)self state];
  _cardTitle = [(CarNavigationSearchResultsModeController *)self _cardTitle];
  [cardCopy setTitle:_cardTitle];

  if (state)
  {
    placeCard = [(CarNavigationSearchResultsModeController *)self placeCard];
    [cardCopy setContent:placeCard];

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
    primaryAxis = [(CarCardLayout *)v10 primaryAxis];
    cornerPosition = [(CarCardLayout *)v10 cornerPosition];
    if (primaryAxis == 1)
    {
      if (cornerPosition == 4 || [(CarCardLayout *)v10 cornerPosition]== 1 || [(CarCardLayout *)v10 edgePosition]== 2)
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
      v14 = cornerPosition == 4 || [(CarCardLayout *)v10 cornerPosition]== 8 || [(CarCardLayout *)v10 edgePosition]== 4;
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
    [cardCopy setLayout:v10];

    [cardCopy setAccessoryType:1];
    [cardCopy setSelectionHandler:0];
  }

  else
  {
    sarCard = [(CarNavigationSearchResultsModeController *)self sarCard];
    [cardCopy setContent:sarCard];

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
    primaryAxis2 = [(CarCardLayout *)v19 primaryAxis];
    cornerPosition2 = [(CarCardLayout *)v19 cornerPosition];
    if (primaryAxis2 == 1)
    {
      if (cornerPosition2 == 4 || [(CarCardLayout *)v19 cornerPosition]== 1 || [(CarCardLayout *)v19 edgePosition]== 2)
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
      v23 = cornerPosition2 == 4 || [(CarCardLayout *)v19 cornerPosition]== 8 || [(CarCardLayout *)v19 edgePosition]== 4;
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
    [cardCopy setLayout:v19];

    [cardCopy setAccessoryType:1];
  }
}

- (void)chromeDidEndConfiguringCards:(id)cards
{
  cardsCopy = cards;
  desiredCards = [(CarNavigationSearchResultsModeController *)self desiredCards];
  v6 = [cardsCopy isEqualToArray:desiredCards];

  if (v6)
  {
    placeCard = [(CarNavigationSearchResultsModeController *)self placeCard];
    [placeCard setHasCardFinishedTransitioning:1];
  }
}

- (void)chromeDidStartConfiguringCards:(id)cards
{
  cardsCopy = cards;
  desiredCards = [(CarNavigationSearchResultsModeController *)self desiredCards];
  v6 = [cardsCopy isEqualToArray:desiredCards];

  if (v6)
  {
    placeCard = [(CarNavigationSearchResultsModeController *)self placeCard];
    [placeCard setHasCardFinishedTransitioning:0];
  }
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100CA82C8;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  animationCopy = animation;
  [animationCopy addPreparation:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100CA8408;
  v6[3] = &unk_101661738;
  v6[4] = self;
  [animationCopy addCompletion:v6];
}

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100CA851C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  [(CarNavigationSearchResultsModeController *)self _highlightMapItem:0, animation];
  v5 = +[MKLocationManager sharedLocationManager];
  [v5 stopLocationUpdateWithObserver:self];
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  _cardTitle = [(CarNavigationSearchResultsModeController *)self _cardTitle];
  [cardCopy setTitle:_cardTitle];

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
  primaryAxis = [(CarCardLayout *)v9 primaryAxis];
  cornerPosition = [(CarCardLayout *)v9 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v9 cornerPosition]== 1 || [(CarCardLayout *)v9 edgePosition]== 2)
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
    v13 = cornerPosition == 4 || [(CarCardLayout *)v9 cornerPosition]== 8 || [(CarCardLayout *)v9 edgePosition]== 4;
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
  [cardCopy setLayout:v9];

  [cardCopy setAccessoryType:1];
  state = [(CarNavigationSearchResultsModeController *)self state];
  if (state == 2)
  {
    [cardCopy setContent:self->_evChargingAvailabilityVC];
  }

  else
  {
    if (state == 1)
    {
      placeCard = [(CarNavigationSearchResultsModeController *)self placeCard];
    }

    else
    {
      v15 = cardCopy;
      if (state)
      {
        goto LABEL_33;
      }

      placeCard = [(CarNavigationSearchResultsModeController *)self sarCard];
    }

    v17 = placeCard;
    [cardCopy setContent:placeCard];
  }

  v15 = cardCopy;
LABEL_33:
}

- (id)desiredCards
{
  state = [(CarNavigationSearchResultsModeController *)self state];
  if (state <= 2)
  {
    v4 = @"primary";
    state = [NSArray arrayWithObjects:&v4 count:1];
  }

  return state;
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
  state = [(CarNavigationSearchResultsModeController *)self state];
  switch(state)
  {
    case 2:
      searchSession3 = +[NSBundle mainBundle];
      name2 = [searchSession3 localizedStringForKey:@"Available Now [Carplay EV Charging Availability header]" value:@"localized string not found" table:0];
      goto LABEL_10;
    case 1:
      selectedIndex = self->_selectedIndex;
      if (selectedIndex < [(NSArray *)self->_mapItems count])
      {
        category2 = [(NSArray *)self->_mapItems objectAtIndexedSubscript:self->_selectedIndex];
        goto LABEL_8;
      }

      break;
    case 0:
      category = [(CarNavigationSearchResultsModeController *)self category];
      name = [category name];

      if (name)
      {
        category2 = [(CarNavigationSearchResultsModeController *)self category];
LABEL_8:
        searchSession3 = category2;
        name2 = [category2 name];
LABEL_10:
        v10 = name2;
        goto LABEL_11;
      }

      searchSession = [(CarNavigationSearchResultsModeController *)self searchSession];
      searchInfo = [searchSession searchInfo];
      headerDisplayName = [searchInfo headerDisplayName];

      searchSession2 = [(CarNavigationSearchResultsModeController *)self searchSession];
      searchSession3 = searchSession2;
      if (headerDisplayName)
      {
        searchInfo2 = [searchSession2 searchInfo];
        headerDisplayName2 = [searchInfo2 headerDisplayName];
LABEL_20:
        v10 = headerDisplayName2;

LABEL_11:
        if (v10)
        {
          goto LABEL_13;
        }

        break;
      }

      searchFieldItem = [searchSession2 searchFieldItem];
      searchString = [searchFieldItem searchString];

      if (searchString)
      {
        searchSession3 = [(CarNavigationSearchResultsModeController *)self searchSession];
        searchInfo2 = [searchSession3 searchFieldItem];
        headerDisplayName2 = [searchInfo2 searchString];
        goto LABEL_20;
      }

      v21 = sub_100006E1C();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        searchSession4 = [(CarNavigationSearchResultsModeController *)self searchSession];
        v23 = 138412290;
        v24 = searchSession4;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "SAR: failed to find an appropriate title for current search session: %@", &v23, 0xCu);
      }

      break;
  }

  v11 = +[NSBundle mainBundle];
  v10 = [v11 localizedStringForKey:@"CarPlay_Search_Title" value:@"localized string not found" table:0];

LABEL_13:

  return v10;
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"CarNavigationSearchResultsModeStateResults";
      if (state == 1)
      {
        v6 = @"CarNavigationSearchResultsModeStatePlaceCard";
      }

      if (state == 2)
      {
        v6 = @"CarNavigationSearchResultsModeStateEVAvailability";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SAR: setState: %@, -> updating cardsOverlay.", &v8, 0xCu);
    }

    chromeViewController = [(CarNavigationSearchResultsModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:1];
  }
}

- (void)setCategory:(id)category
{
  categoryCopy = category;
  if (self->_category != categoryCopy)
  {
    v6 = categoryCopy;
    objc_storeStrong(&self->_category, category);
    [(CarNavigationSearchResultsModeController *)self _fetchCategoryResults];
    [(CarNavigationSearchResultsModeController *)self _updateContextAndDisplay];
    categoryCopy = v6;
  }
}

- (void)setMapItems:(id)items selectedItemIndex:(unint64_t)index
{
  itemsCopy = items;
  carShortenedArray = [itemsCopy carShortenedArray];
  mapItems = self->_mapItems;
  self->_mapItems = carShortenedArray;

  self->_selectedIndex = [(CarNavigationSearchResultsModeController *)self _validateSelectedIndex:index forCount:[(NSArray *)self->_mapItems count]];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
  v10 = [MKMapItem searchResultsForMapItems:self->_mapItems];
  searchResults = self->_searchResults;
  self->_searchResults = v10;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = itemsCopy;
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

- (void)setSearchResults:(id)results selectedResultIndex:(unint64_t)index
{
  carShortenedArray = [results carShortenedArray];
  searchResults = self->_searchResults;
  self->_searchResults = carShortenedArray;

  self->_selectedIndex = [(CarNavigationSearchResultsModeController *)self _validateSelectedIndex:index forCount:[(NSArray *)self->_searchResults count]];
  v8 = [(NSArray *)self->_searchResults count];
  if (v8)
  {
    v8 = [(NSArray *)self->_searchResults valueForKey:@"mapItem"];
  }

  mapItems = self->_mapItems;
  self->_mapItems = v8;

  [(CarNavigationSearchResultsModeController *)self _updateContextAndDisplay];
}

- (void)setDestinations:(id)destinations selectedDestinationIndex:(unint64_t)index
{
  destinationsCopy = destinations;
  v7 = [destinationsCopy objectAtIndexedSubscript:index];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [destinationsCopy count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = destinationsCopy;
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

- (void)setSearchSession:(id)session
{
  sessionCopy = session;
  searchSession = self->_searchSession;
  if (searchSession != sessionCopy)
  {
    v8 = sessionCopy;
    [(SearchSession *)searchSession unregisterObserver:self];
    objc_storeStrong(&self->_searchSession, session);
    [(SearchSession *)self->_searchSession registerObserver:self];
    currentResults = [(SearchSession *)self->_searchSession currentResults];
    [(CarNavigationSearchResultsModeController *)self setSearchResults:currentResults selectedResultIndex:[(SearchSession *)self->_searchSession selectedResultIndex]];

    sessionCopy = v8;
  }
}

- (void)setSearchInfo:(id)info
{
  infoCopy = info;
  if (self->_searchInfo != infoCopy)
  {
    v7 = infoCopy;
    objc_storeStrong(&self->_searchInfo, info);
    results = [(SearchInfo *)self->_searchInfo results];
    [(CarNavigationSearchResultsModeController *)self setSearchResults:results selectedResultIndex:[(SearchInfo *)self->_searchInfo selectedIndex]];

    infoCopy = v7;
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

- (CarNavigationSearchResultsModeController)initWithCategory:(id)category
{
  categoryCopy = category;
  v8.receiver = self;
  v8.super_class = CarNavigationSearchResultsModeController;
  v5 = [(CarNavigationSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarNavigationSearchResultsModeController *)v5 commonInit];
    [(CarNavigationSearchResultsModeController *)v6 setCategory:categoryCopy];
  }

  return v6;
}

- (CarNavigationSearchResultsModeController)initWithMapItems:(id)items selectedItemIndex:(unint64_t)index
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = CarNavigationSearchResultsModeController;
  v7 = [(CarNavigationSearchResultsModeController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CarNavigationSearchResultsModeController *)v7 commonInit];
    [(CarNavigationSearchResultsModeController *)v8 setMapItems:itemsCopy selectedItemIndex:index];
  }

  return v8;
}

- (CarNavigationSearchResultsModeController)initWithSearchResults:(id)results selectedResultIndex:(unint64_t)index
{
  resultsCopy = results;
  v10.receiver = self;
  v10.super_class = CarNavigationSearchResultsModeController;
  v7 = [(CarNavigationSearchResultsModeController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CarNavigationSearchResultsModeController *)v7 commonInit];
    [(CarNavigationSearchResultsModeController *)v8 setSearchResults:resultsCopy selectedResultIndex:index];
  }

  return v8;
}

- (CarNavigationSearchResultsModeController)initWithDestinations:(id)destinations selectedDestinationIndex:(unint64_t)index
{
  destinationsCopy = destinations;
  v10.receiver = self;
  v10.super_class = CarNavigationSearchResultsModeController;
  v7 = [(CarNavigationSearchResultsModeController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CarNavigationSearchResultsModeController *)v7 commonInit];
    [(CarNavigationSearchResultsModeController *)v8 setDestinations:destinationsCopy selectedDestinationIndex:index];
  }

  return v8;
}

- (CarNavigationSearchResultsModeController)initWithSearchSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = CarNavigationSearchResultsModeController;
  v5 = [(CarNavigationSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarNavigationSearchResultsModeController *)v5 commonInit];
    [(CarNavigationSearchResultsModeController *)v6 setSearchSession:sessionCopy];
  }

  return v6;
}

@end