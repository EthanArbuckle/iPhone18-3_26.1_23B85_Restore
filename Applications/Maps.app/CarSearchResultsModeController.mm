@interface CarSearchResultsModeController
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (BOOL)_contentNeedsRefreshingForUpdatedLocation:(id)location;
- (BrowseManager)browseManager;
- (CarSearchResultsModeController)initWithCategory:(id)category;
- (CarSearchResultsModeController)initWithCollection:(id)collection;
- (CarSearchResultsModeController)initWithSearchInfo:(id)info;
- (CarSearchResultsModeController)initWithSearchResults:(id)results;
- (CarSearchResultsModeController)initWithSearchSession:(id)session;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)_captureCurrentViewport;
- (void)_fetchCategoryResults;
- (void)_highlightSearchResult:(id)result;
- (void)_reloadContentIfNeededForUpdatedLocation:(id)location;
- (void)_resetUserInteractionState;
- (void)_setup;
- (void)_setupForCuratedCollection:(id)collection;
- (void)_setupForUserCollection:(id)collection;
- (void)_trackInteractionIfViewportChanged;
- (void)_userDidInteractWithMap;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)configureCard:(id)card forKey:(id)key;
- (void)didResolveCollection:(id)collection resolverInfo:(id)info;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)searchResultsCard:(id)card didFocusResult:(id)result;
- (void)searchResultsCard:(id)card didSelectResult:(id)result;
- (void)searchResultsCard:(id)card didUpdateVisibleResults:(id)results;
- (void)searchSessionDidChangeSearchFieldItem:(id)item;
- (void)searchSessionDidChangeSearchResults:(id)results;
- (void)searchSessionDidFail:(id)fail;
- (void)searchSessionDidInvalidate:(id)invalidate reason:(unint64_t)reason;
- (void)setCardTitle:(id)title;
- (void)setSearchInfo:(id)info;
- (void)setSearchResults:(id)results;
- (void)setSearchSession:(id)session;
@end

@implementation CarSearchResultsModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  lastLocation = [locationCopy lastLocation];
  v5 = [(CarSearchResultsModeController *)self _contentNeedsRefreshingForUpdatedLocation:lastLocation];

  if (v5)
  {
    lastLocation2 = [locationCopy lastLocation];
    [(CarSearchResultsModeController *)self _reloadContentIfNeededForUpdatedLocation:lastLocation2];
  }
}

- (BOOL)_contentNeedsRefreshingForUpdatedLocation:(id)location
{
  locationCopy = location;
  category = [(CarSearchResultsModeController *)self category];
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
  category = [(CarSearchResultsModeController *)self category];
  if (category)
  {
    v6 = category;
    searchSession = [(CarSearchResultsModeController *)self searchSession];
    isLoading = [searchSession isLoading];

    if ((isLoading & 1) == 0)
    {
      objc_storeStrong(&self->_lastFetchedFromLocation, location);
      [(CarSearchResultsModeController *)self _fetchCategoryResults];
    }
  }
}

- (void)_trackInteractionIfViewportChanged
{
  p_viewportBeforeResigning = &self->_viewportBeforeResigning;
  if (self->_viewportBeforeResigning.origin.x != MKMapRectNull.origin.x || self->_viewportBeforeResigning.origin.y != MKMapRectNull.origin.y)
  {
    chromeViewController = [(CarSearchResultsModeController *)self chromeViewController];
    mapView = [chromeViewController mapView];
    [mapView visibleMapRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = v8 == self->_viewportBeforeResigning.origin.x && v10 == self->_viewportBeforeResigning.origin.y;
    if (!v15 || (v12 == self->_viewportBeforeResigning.size.width ? (v16 = v14 == self->_viewportBeforeResigning.size.height) : (v16 = 0), !v16))
    {
      [(CarSearchResultsModeController *)self _userDidInteractWithMap];
    }

    size = MKMapRectNull.size;
    p_viewportBeforeResigning->origin = MKMapRectNull.origin;
    p_viewportBeforeResigning->size = size;
  }
}

- (void)_captureCurrentViewport
{
  chromeViewController = [(CarSearchResultsModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView visibleMapRect];
  self->_viewportBeforeResigning.origin.x = v4;
  self->_viewportBeforeResigning.origin.y = v5;
  self->_viewportBeforeResigning.size.width = v6;
  self->_viewportBeforeResigning.size.height = v7;
}

- (void)_resetUserInteractionState
{
  if (self->_userInteractedWithMap)
  {
    v3 = sub_1007563B0();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      *&self->_userInteractedWithMap = 0;
      lastFramedIndexPaths = self->_lastFramedIndexPaths;
      self->_lastFramedIndexPaths = 0;

      chromeViewController = [(CarSearchResultsModeController *)self chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"mapcontrols" animated:1];

      return;
    }

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarSearchResultsModeController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    *buf = 138543362;
    v13 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Clearing user interacted state, will allow camera updates", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)_userDidInteractWithMap
{
  if (!self->_userInteractedWithMap)
  {
    v3 = sub_1007563B0();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      self->_userInteractedWithMap = 1;
      chromeViewController = [(CarSearchResultsModeController *)self chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"mapcontrols" animated:1];

      return;
    }

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarSearchResultsModeController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] User started interacting with map, will suppress camera updates", buf, 0xCu);

    goto LABEL_9;
  }
}

- (NSArray)carFocusOrderSequences
{
  v2 = +[CarFocusOrderSequence defaultSequence];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (NSArray)preferredCarFocusEnvironments
{
  searchResultsCard = [(CarSearchResultsModeController *)self searchResultsCard];

  if (searchResultsCard)
  {
    searchResultsCard2 = [(CarSearchResultsModeController *)self searchResultsCard];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:searchResultsCard2];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)didResolveCollection:(id)collection resolverInfo:(id)info
{
  infoCopy = info;
  collectionTitle = [collection collectionTitle];
  [(CarSearchResultsModeController *)self setCardTitle:collectionTitle];

  collectionItems = [infoCopy collectionItems];

  v9 = sub_100021DB0(collectionItems, &stru_101628430);

  [(CarSearchResultsModeController *)self setSearchResults:v9];
}

- (void)searchSessionDidInvalidate:(id)invalidate reason:(unint64_t)reason
{
  searchSession = self->_searchSession;
  if (searchSession == invalidate)
  {
    self->_searchSession = 0;

    if (reason != 1)
    {
      v7 = sub_1007563B0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "will pop the top context: %@", &v9, 0xCu);
      }

      v8 = +[CarChromeModeCoordinator sharedInstance];
      [v8 popFromContext:self];
    }
  }
}

- (void)searchSessionDidFail:(id)fail
{
  failCopy = fail;
  [(CarSearchResultsModeController *)self setSearchInfo:0];
  searchResultsCard = self->_searchResultsCard;
  lastError = [failCopy lastError];

  [(CarSearchResultsCardViewController *)searchResultsCard setError:lastError];
}

- (void)searchSessionDidChangeSearchResults:(id)results
{
  resultsCopy = results;
  category = [(CarSearchResultsModeController *)self category];

  if (category)
  {
    v5 = +[MKLocationManager sharedLocationManager];
    lastLocation = [v5 lastLocation];
    lastFetchedFromLocation = self->_lastFetchedFromLocation;
    self->_lastFetchedFromLocation = lastLocation;
  }

  currentResultsSearchInfo = [resultsCopy currentResultsSearchInfo];
  [(CarSearchResultsModeController *)self setSearchInfo:currentResultsSearchInfo];
}

- (void)searchSessionDidChangeSearchFieldItem:(id)item
{
  searchInfo = [(SearchSession *)self->_searchSession searchInfo];
  headerDisplayName = [searchInfo headerDisplayName];
  if (headerDisplayName)
  {
    [(CarSearchResultsModeController *)self setCardTitle:headerDisplayName];
  }

  else
  {
    searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
    searchString = [searchFieldItem searchString];
    [(CarSearchResultsModeController *)self setCardTitle:searchString];
  }
}

- (void)searchResultsCard:(id)card didUpdateVisibleResults:(id)results
{
  resultsCopy = results;
  self->_updatingVisibleResults = 1;
  objc_initWeak(&location, self);
  v6 = dispatch_time(0, 300000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100756C38;
  block[3] = &unk_101661340;
  objc_copyWeak(&v10, &location);
  v9 = resultsCopy;
  v7 = resultsCopy;
  dispatch_after(v6, &_dispatch_main_q, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)searchResultsCard:(id)card didFocusResult:(id)result
{
  resultCopy = result;
  v6 = sub_1007563B0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    mapItem = [resultCopy mapItem];
    name = [mapItem name];
    v9 = 138412290;
    v10 = name;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CarChromeModeCoordinator will focus search result for mapItem: %@", &v9, 0xCu);
  }

  [(CarSearchResultsModeController *)self _highlightSearchResult:resultCopy];
}

- (void)searchResultsCard:(id)card didSelectResult:(id)result
{
  resultCopy = result;
  v5 = sub_1007563B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mapItem = [resultCopy mapItem];
    name = [mapItem name];
    v9 = 138412290;
    v10 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CarChromeModeCoordinator will present place card for mapItem: %@", &v9, 0xCu);
  }

  v8 = +[CarChromeModeCoordinator sharedInstance];
  [v8 displayPlaceCardWithSearchResult:resultCopy];
}

- (void)_highlightSearchResult:(id)result
{
  resultCopy = result;
  chromeViewController = [(CarSearchResultsModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];
  objc_initWeak(&location, mapView);

  if (resultCopy)
  {
    if ([(NSArray *)self->_searchResults containsObject:resultCopy])
    {
      v7 = [PersonalizedMapItemKey alloc];
      mapItem = [resultCopy mapItem];
      v9 = [(PersonalizedMapItemKey *)v7 initWithMapItem:mapItem];

      chromeViewController2 = [(CarSearchResultsModeController *)self chromeViewController];
      customPOIsController = [chromeViewController2 customPOIsController];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100757148;
      v12[3] = &unk_101660180;
      objc_copyWeak(&v14, &location);
      v13 = resultCopy;
      [customPOIsController customFeatureForKey:v9 completion:v12];

      objc_destroyWeak(&v14);
    }

    else
    {
      v9 = sub_1007563B0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Tried to highlight focused search pin, but it wasn't in _searchResults.", buf, 2u);
      }
    }
  }

  else
  {
    v9 = objc_loadWeakRetained(&location);
    [v9 _deselectLabelMarkerAnimated:1];
  }

  objc_destroyWeak(&location);
}

- (void)_fetchCategoryResults
{
  category = [(CarSearchResultsModeController *)self category];

  if (category)
  {
    searchSession = [(CarSearchResultsModeController *)self searchSession];
    isLoading = [searchSession isLoading];

    if (isLoading)
    {
      v6 = sub_1007563B0();
      if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        v7 = "Tried to fetch search results for category, but we're already fetching them.";
LABEL_7:
        p_super = &v6->super;
        v9 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&_mh_execute_header, p_super, v9, v7, &v20, 2u);
      }
    }

    else
    {
      v10 = [(CarSearchResultsModeController *)self _contentNeedsRefreshingForUpdatedLocation:self->_lastFetchedFromLocation];
      v6 = sub_1007563B0();
      v11 = os_log_type_enabled(&v6->super, OS_LOG_TYPE_INFO);
      if ((v10 & 1) == 0)
      {
        if (!v11)
        {
          goto LABEL_15;
        }

        LOWORD(v20) = 0;
        v7 = "Not refreshing category results as no significant location changes.";
        p_super = &v6->super;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_8;
      }

      if (v11)
      {
        category2 = [(CarSearchResultsModeController *)self category];
        name = [category2 name];
        v20 = 138412290;
        v21 = name;
        _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_INFO, "Started fetching results for category: %@. Creating new searchSesssion.", &v20, 0xCu);
      }

      v6 = [[SearchSession alloc] initWithOrigin:1];
      v14 = +[CarDisplayController sharedInstance];
      chromeViewController = [v14 chromeViewController];
      currentTraits = [chromeViewController currentTraits];

      [(SearchSession *)v6 setTraits:currentTraits];
      [(SearchSession *)v6 setSource:6];
      [(CarSearchResultsModeController *)self setSearchSession:v6];
      category3 = [(CarSearchResultsModeController *)self category];
      v17Category = [category3 category];
      v19 = [SearchFieldItem searchFieldItemWithObject:v17Category];

      [(CarSearchResultsCardViewController *)self->_searchResultsCard setLoading];
      [(SearchSession *)v6 startSearch:v19];
    }
  }

  else
  {
    v6 = sub_1007563B0();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      v7 = "Tried to fetch search results for category that is nil.";
      goto LABEL_7;
    }
  }

LABEL_15:
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  v4 = sub_1007563B0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    searchSession = [(CarSearchResultsModeController *)self searchSession];
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = searchSession;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Close button tapped to close the top context. Top Context : %@ Search Session: %@", &v8, 0x16u);
  }

  searchSession2 = [(CarSearchResultsModeController *)self searchSession];

  if (searchSession2)
  {
    searchSession3 = [(CarSearchResultsModeController *)self searchSession];
    [searchSession3 invalidate];
  }

  else
  {
    searchSession3 = +[CarChromeModeCoordinator sharedInstance];
    [searchSession3 popFromContext:self];
  }
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100757688;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100757840;
  v8[3] = &unk_101661600;
  v8[4] = self;
  v8[5] = v9;
  [animationCopy addPreparation:v8];
  _Block_object_dispose(v9, 8);
}

- (id)personalizedItemSources
{
  chromeViewController = [(CarSearchResultsModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    chromeViewController2 = [(CarSearchResultsModeController *)self chromeViewController];
    searchPinsManager2 = [chromeViewController2 searchPinsManager];
    searchResultsItemSource = [searchPinsManager2 searchResultsItemSource];
    v10 = searchResultsItemSource;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  if (![key isEqualToString:@"primary"])
  {
    goto LABEL_32;
  }

  cardTitle = [(CarSearchResultsModeController *)self cardTitle];
  if (cardTitle)
  {
    cardTitle2 = [(CarSearchResultsModeController *)self cardTitle];
    if ([cardTitle2 length])
    {
      cardTitle3 = [(CarSearchResultsModeController *)self cardTitle];
      [cardCopy setTitle:cardTitle3];

LABEL_6:
      goto LABEL_7;
    }
  }

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"CarPlay_Search_Title" value:@"localized string not found" table:0];
  [cardCopy setTitle:v10];

  if (cardTitle)
  {
    goto LABEL_6;
  }

LABEL_7:

  [cardCopy setContent:self->_searchResultsCard];
  v11 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v11 setEdgePosition:0];
  [(CarCardLayout *)v11 setCornerPosition:4];
  [(CarCardLayout *)v11 setPrimaryAxis:1];
  [(CarCardLayout *)v11 setPinnedEdges:0];
  [(CarCardLayout *)v11 setPrimaryAxisFillMode:3];
  LODWORD(v12) = 1148846080;
  [(CarCardLayout *)v11 setPrimaryAxisFillModePriority:v12];
  [(CarCardLayout *)v11 setSecondaryAxisFillMode:2];
  LODWORD(v13) = 1148846080;
  [(CarCardLayout *)v11 setSecondaryAxisFillModePriority:v13];
  [(CarCardLayout *)v11 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v11 setFlipForRightHandDrive:1];
  v14 = v11;
  primaryAxis = [(CarCardLayout *)v14 primaryAxis];
  cornerPosition = [(CarCardLayout *)v14 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v14 cornerPosition]== 1 || [(CarCardLayout *)v14 edgePosition]== 2)
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    if ([(CarCardLayout *)v14 cornerPosition]== 8 || [(CarCardLayout *)v14 cornerPosition]== 2 || [(CarCardLayout *)v14 edgePosition]== 8)
    {
      v17 |= 2uLL;
    }

    if ([(CarCardLayout *)v14 edgePosition]== 1)
    {
      v17 |= 4uLL;
    }

    v18 = v17 | ([(CarCardLayout *)v14 edgePosition]== 4);
  }

  else
  {
    v18 = cornerPosition == 4 || [(CarCardLayout *)v14 cornerPosition]== 8 || [(CarCardLayout *)v14 edgePosition]== 4;
    if ([(CarCardLayout *)v14 cornerPosition]== 1 || [(CarCardLayout *)v14 cornerPosition]== 2 || [(CarCardLayout *)v14 edgePosition]== 1)
    {
      v18 |= 4uLL;
    }

    if ([(CarCardLayout *)v14 edgePosition]== 2)
    {
      v18 |= 8uLL;
    }

    if ([(CarCardLayout *)v14 edgePosition]== 8)
    {
      v18 |= 2uLL;
    }
  }

  [(CarCardLayout *)v14 setEdgesAffectingMapInsets:v18];
  [(CarCardLayout *)v14 setHorizontallyCenterMapInsets:0];
  [cardCopy setLayout:v14];

  [cardCopy setAccessoryType:1];
  chromeViewController = [(CarSearchResultsModeController *)self chromeViewController];
  overlayController = [chromeViewController overlayController];
  overlayContentView = [overlayController overlayContentView];
  [overlayContentView setAccessibilityViewIsModal:1];

LABEL_32:
}

- (id)desiredCards
{
  v4 = @"primary";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  v3 = 6;
  if (!LOBYTE(self[3].var2))
  {
    v3 = 0;
  }

  retstr->var0 = 0;
  retstr->var1 = v3;
  retstr->var2 = 5;
  return self;
}

- (void)setCardTitle:(id)title
{
  titleCopy = title;
  if (self->_cardTitle != titleCopy)
  {
    v7 = titleCopy;
    objc_storeStrong(&self->_cardTitle, title);
    chromeViewController = [(CarSearchResultsModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:0];

    titleCopy = v7;
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
    [(CarSearchResultsModeController *)self setSearchResults:results];

    infoCopy = v7;
  }
}

- (void)setSearchResults:(id)results
{
  resultsCopy = results;
  if (([resultsCopy isEqualToArray:self->_searchResults] & 1) == 0)
  {
    objc_storeStrong(&self->_fullSearchResults, results);
    carShortenedArray = [resultsCopy carShortenedArray];
    searchResults = self->_searchResults;
    self->_searchResults = carShortenedArray;

    chromeViewController = [(CarSearchResultsModeController *)self chromeViewController];
    searchPinsManager = [chromeViewController searchPinsManager];
    [searchPinsManager setSearchPins:self->_searchResults selectedPin:0 animated:0];

    [(CarSearchResultsCardViewController *)self->_searchResultsCard setSearchResults:self->_searchResults searchAlongRoute:0];
  }
}

- (void)setSearchSession:(id)session
{
  sessionCopy = session;
  searchSession = self->_searchSession;
  if (searchSession != sessionCopy)
  {
    v15 = sessionCopy;
    [(SearchSession *)searchSession unregisterObserver:self];
    objc_storeStrong(&self->_searchSession, session);
    [(SearchSession *)self->_searchSession registerObserver:self];
    searchInfo = [(SearchSession *)self->_searchSession searchInfo];
    headerDisplayName = [searchInfo headerDisplayName];
    v9 = headerDisplayName;
    if (headerDisplayName)
    {
      v10 = headerDisplayName;
      cardTitle = self->_cardTitle;
      self->_cardTitle = v10;
    }

    else
    {
      cardTitle = [(SearchSession *)self->_searchSession searchFieldItem];
      searchString = [cardTitle searchString];
      v13 = self->_cardTitle;
      self->_cardTitle = searchString;
    }

    searchInfo2 = [(SearchSession *)self->_searchSession searchInfo];
    [(CarSearchResultsModeController *)self setSearchInfo:searchInfo2];

    sessionCopy = v15;
  }
}

- (BrowseManager)browseManager
{
  browseManager = self->_browseManager;
  if (!browseManager)
  {
    v4 = [[BrowseManager alloc] initWithCacheKey:@"Stark"];
    v5 = self->_browseManager;
    self->_browseManager = v4;

    [(BrowseManager *)self->_browseManager readCategoriesFromDiskIfNeeded];
    category = [(CarSearchResultsModeController *)self category];

    browseManager = self->_browseManager;
    if (!category)
    {
      cachedCategories = [(BrowseManager *)browseManager cachedCategories];
      lastObject = [cachedCategories lastObject];
      [(CarSearchResultsModeController *)self setCategory:lastObject];

      browseManager = self->_browseManager;
    }
  }

  return browseManager;
}

- (void)_setup
{
  v3 = [[_TtC4Maps34CarSearchResultsCardViewController alloc] initWithDelegate:self];
  searchResultsCard = self->_searchResultsCard;
  self->_searchResultsCard = v3;

  searchResults = self->_searchResults;
  if (searchResults)
  {
    [(CarSearchResultsCardViewController *)self->_searchResultsCard setSearchResults:searchResults searchAlongRoute:0];
  }

  v6 = +[CarDisplayController sharedInstance];
  chromeViewController = [v6 chromeViewController];
  currentTraits = [chromeViewController currentTraits];
  [(BrowseManager *)self->_browseManager setTraits:currentTraits];

  lastFetchedFromLocation = self->_lastFetchedFromLocation;
  self->_lastFetchedFromLocation = 0;
}

- (void)_setupForCuratedCollection:(id)collection
{
  collectionCopy = collection;
  curatedCollectionIdentifier = [collectionCopy curatedCollectionIdentifier];

  if (curatedCollectionIdentifier)
  {
    v5 = [CuratedCollectionResolver alloc];
    curatedCollectionIdentifier2 = [collectionCopy curatedCollectionIdentifier];
    v7 = [(CuratedCollectionResolver *)v5 initWithCuratedCollectionIdentifier:curatedCollectionIdentifier2 delegate:self];
    curatedCollectionResolver = self->_curatedCollectionResolver;
    self->_curatedCollectionResolver = v7;
  }

  [(CuratedCollectionResolver *)self->_curatedCollectionResolver resolveCollection];
}

- (void)_setupForUserCollection:(id)collection
{
  collectionCopy = collection;
  [collectionCopy setSortType:1];
  v18 = collectionCopy;
  content = [collectionCopy content];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [content count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = content;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [[MKMapItem alloc] initWithGeoMapItem:v12 isPlaceHolderPlace:0];

          v14 = [[SearchResult alloc] initWithMapItem:v13];
          [v5 addObject:v14];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v15 = v11;
          v13 = [[SearchResult alloc] initWithMapItem:v15];

          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];
  [(CarSearchResultsModeController *)self setSearchResults:v16];
}

- (CarSearchResultsModeController)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = CarSearchResultsModeController;
  v5 = [(CarSearchResultsModeController *)&v9 init];
  if (v5)
  {
    if ([collectionCopy handlerType] == 4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CarSearchResultsModeController *)v5 _setupForCuratedCollection:collectionCopy];
      }
    }

    else
    {
      [(CarSearchResultsModeController *)v5 _setupForUserCollection:collectionCopy];
    }

    title = [collectionCopy title];
    cardTitle = v5->_cardTitle;
    v5->_cardTitle = title;

    [(CarSearchResultsModeController *)v5 _setup];
  }

  return v5;
}

- (CarSearchResultsModeController)initWithCategory:(id)category
{
  categoryCopy = category;
  v11.receiver = self;
  v11.super_class = CarSearchResultsModeController;
  v6 = [(CarSearchResultsModeController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, category);
    name = [categoryCopy name];
    cardTitle = v7->_cardTitle;
    v7->_cardTitle = name;

    [(CarSearchResultsModeController *)v7 _setup];
  }

  return v7;
}

- (CarSearchResultsModeController)initWithSearchResults:(id)results
{
  resultsCopy = results;
  v8.receiver = self;
  v8.super_class = CarSearchResultsModeController;
  v5 = [(CarSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarSearchResultsModeController *)v5 setSearchResults:resultsCopy];
    [(CarSearchResultsModeController *)v6 _setup];
  }

  return v6;
}

- (CarSearchResultsModeController)initWithSearchInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = CarSearchResultsModeController;
  v5 = [(CarSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarSearchResultsModeController *)v5 setSearchInfo:infoCopy];
    [(CarSearchResultsModeController *)v6 _setup];
  }

  return v6;
}

- (CarSearchResultsModeController)initWithSearchSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = CarSearchResultsModeController;
  v5 = [(CarSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarSearchResultsModeController *)v5 setSearchSession:sessionCopy];
    [(CarSearchResultsModeController *)v6 _setup];
  }

  return v6;
}

@end