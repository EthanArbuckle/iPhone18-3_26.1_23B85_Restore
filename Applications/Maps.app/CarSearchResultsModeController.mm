@interface CarSearchResultsModeController
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (BOOL)_contentNeedsRefreshingForUpdatedLocation:(id)a3;
- (BrowseManager)browseManager;
- (CarSearchResultsModeController)initWithCategory:(id)a3;
- (CarSearchResultsModeController)initWithCollection:(id)a3;
- (CarSearchResultsModeController)initWithSearchInfo:(id)a3;
- (CarSearchResultsModeController)initWithSearchResults:(id)a3;
- (CarSearchResultsModeController)initWithSearchSession:(id)a3;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)_captureCurrentViewport;
- (void)_fetchCategoryResults;
- (void)_highlightSearchResult:(id)a3;
- (void)_reloadContentIfNeededForUpdatedLocation:(id)a3;
- (void)_resetUserInteractionState;
- (void)_setup;
- (void)_setupForCuratedCollection:(id)a3;
- (void)_setupForUserCollection:(id)a3;
- (void)_trackInteractionIfViewportChanged;
- (void)_userDidInteractWithMap;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)didResolveCollection:(id)a3 resolverInfo:(id)a4;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)searchResultsCard:(id)a3 didFocusResult:(id)a4;
- (void)searchResultsCard:(id)a3 didSelectResult:(id)a4;
- (void)searchResultsCard:(id)a3 didUpdateVisibleResults:(id)a4;
- (void)searchSessionDidChangeSearchFieldItem:(id)a3;
- (void)searchSessionDidChangeSearchResults:(id)a3;
- (void)searchSessionDidFail:(id)a3;
- (void)searchSessionDidInvalidate:(id)a3 reason:(unint64_t)a4;
- (void)setCardTitle:(id)a3;
- (void)setSearchInfo:(id)a3;
- (void)setSearchResults:(id)a3;
- (void)setSearchSession:(id)a3;
@end

@implementation CarSearchResultsModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v7 = a3;
  v4 = [v7 lastLocation];
  v5 = [(CarSearchResultsModeController *)self _contentNeedsRefreshingForUpdatedLocation:v4];

  if (v5)
  {
    v6 = [v7 lastLocation];
    [(CarSearchResultsModeController *)self _reloadContentIfNeededForUpdatedLocation:v6];
  }
}

- (BOOL)_contentNeedsRefreshingForUpdatedLocation:(id)a3
{
  v4 = a3;
  v5 = [(CarSearchResultsModeController *)self category];
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
  v9 = a3;
  v5 = [(CarSearchResultsModeController *)self category];
  if (v5)
  {
    v6 = v5;
    v7 = [(CarSearchResultsModeController *)self searchSession];
    v8 = [v7 isLoading];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_lastFetchedFromLocation, a3);
      [(CarSearchResultsModeController *)self _fetchCategoryResults];
    }
  }
}

- (void)_trackInteractionIfViewportChanged
{
  p_viewportBeforeResigning = &self->_viewportBeforeResigning;
  if (self->_viewportBeforeResigning.origin.x != MKMapRectNull.origin.x || self->_viewportBeforeResigning.origin.y != MKMapRectNull.origin.y)
  {
    v5 = [(CarSearchResultsModeController *)self chromeViewController];
    v6 = [v5 mapView];
    [v6 visibleMapRect];
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
  v8 = [(CarSearchResultsModeController *)self chromeViewController];
  v3 = [v8 mapView];
  [v3 visibleMapRect];
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

      v11 = [(CarSearchResultsModeController *)self chromeViewController];
      [v11 setNeedsUpdateComponent:@"mapcontrols" animated:1];

      return;
    }

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarSearchResultsModeController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v13 = v9;
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
      v10 = [(CarSearchResultsModeController *)self chromeViewController];
      [v10 setNeedsUpdateComponent:@"mapcontrols" animated:1];

      return;
    }

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarSearchResultsModeController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v12 = v9;
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
  v3 = [(CarSearchResultsModeController *)self searchResultsCard];

  if (v3)
  {
    v4 = [(CarSearchResultsModeController *)self searchResultsCard];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:v4];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)didResolveCollection:(id)a3 resolverInfo:(id)a4
{
  v6 = a4;
  v7 = [a3 collectionTitle];
  [(CarSearchResultsModeController *)self setCardTitle:v7];

  v8 = [v6 collectionItems];

  v9 = sub_100021DB0(v8, &stru_101628430);

  [(CarSearchResultsModeController *)self setSearchResults:v9];
}

- (void)searchSessionDidInvalidate:(id)a3 reason:(unint64_t)a4
{
  searchSession = self->_searchSession;
  if (searchSession == a3)
  {
    self->_searchSession = 0;

    if (a4 != 1)
    {
      v7 = sub_1007563B0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "will pop the top context: %@", &v9, 0xCu);
      }

      v8 = +[CarChromeModeCoordinator sharedInstance];
      [v8 popFromContext:self];
    }
  }
}

- (void)searchSessionDidFail:(id)a3
{
  v4 = a3;
  [(CarSearchResultsModeController *)self setSearchInfo:0];
  searchResultsCard = self->_searchResultsCard;
  v6 = [v4 lastError];

  [(CarSearchResultsCardViewController *)searchResultsCard setError:v6];
}

- (void)searchSessionDidChangeSearchResults:(id)a3
{
  v9 = a3;
  v4 = [(CarSearchResultsModeController *)self category];

  if (v4)
  {
    v5 = +[MKLocationManager sharedLocationManager];
    v6 = [v5 lastLocation];
    lastFetchedFromLocation = self->_lastFetchedFromLocation;
    self->_lastFetchedFromLocation = v6;
  }

  v8 = [v9 currentResultsSearchInfo];
  [(CarSearchResultsModeController *)self setSearchInfo:v8];
}

- (void)searchSessionDidChangeSearchFieldItem:(id)a3
{
  v7 = [(SearchSession *)self->_searchSession searchInfo];
  v4 = [v7 headerDisplayName];
  if (v4)
  {
    [(CarSearchResultsModeController *)self setCardTitle:v4];
  }

  else
  {
    v5 = [(SearchSession *)self->_searchSession searchFieldItem];
    v6 = [v5 searchString];
    [(CarSearchResultsModeController *)self setCardTitle:v6];
  }
}

- (void)searchResultsCard:(id)a3 didUpdateVisibleResults:(id)a4
{
  v5 = a4;
  self->_updatingVisibleResults = 1;
  objc_initWeak(&location, self);
  v6 = dispatch_time(0, 300000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100756C38;
  block[3] = &unk_101661340;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_after(v6, &_dispatch_main_q, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)searchResultsCard:(id)a3 didFocusResult:(id)a4
{
  v5 = a4;
  v6 = sub_1007563B0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 mapItem];
    v8 = [v7 name];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CarChromeModeCoordinator will focus search result for mapItem: %@", &v9, 0xCu);
  }

  [(CarSearchResultsModeController *)self _highlightSearchResult:v5];
}

- (void)searchResultsCard:(id)a3 didSelectResult:(id)a4
{
  v4 = a4;
  v5 = sub_1007563B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 mapItem];
    v7 = [v6 name];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CarChromeModeCoordinator will present place card for mapItem: %@", &v9, 0xCu);
  }

  v8 = +[CarChromeModeCoordinator sharedInstance];
  [v8 displayPlaceCardWithSearchResult:v4];
}

- (void)_highlightSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(CarSearchResultsModeController *)self chromeViewController];
  v6 = [v5 mapView];
  objc_initWeak(&location, v6);

  if (v4)
  {
    if ([(NSArray *)self->_searchResults containsObject:v4])
    {
      v7 = [PersonalizedMapItemKey alloc];
      v8 = [v4 mapItem];
      v9 = [(PersonalizedMapItemKey *)v7 initWithMapItem:v8];

      v10 = [(CarSearchResultsModeController *)self chromeViewController];
      v11 = [v10 customPOIsController];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100757148;
      v12[3] = &unk_101660180;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      [v11 customFeatureForKey:v9 completion:v12];

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
  v3 = [(CarSearchResultsModeController *)self category];

  if (v3)
  {
    v4 = [(CarSearchResultsModeController *)self searchSession];
    v5 = [v4 isLoading];

    if (v5)
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
        v12 = [(CarSearchResultsModeController *)self category];
        v13 = [v12 name];
        v20 = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_INFO, "Started fetching results for category: %@. Creating new searchSesssion.", &v20, 0xCu);
      }

      v6 = [[SearchSession alloc] initWithOrigin:1];
      v14 = +[CarDisplayController sharedInstance];
      v15 = [v14 chromeViewController];
      v16 = [v15 currentTraits];

      [(SearchSession *)v6 setTraits:v16];
      [(SearchSession *)v6 setSource:6];
      [(CarSearchResultsModeController *)self setSearchSession:v6];
      v17 = [(CarSearchResultsModeController *)self category];
      v18 = [v17 category];
      v19 = [SearchFieldItem searchFieldItemWithObject:v18];

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

- (void)carCardViewCloseButtonTapped:(id)a3
{
  v4 = sub_1007563B0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(CarSearchResultsModeController *)self searchSession];
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Close button tapped to close the top context. Top Context : %@ Search Session: %@", &v8, 0x16u);
  }

  v6 = [(CarSearchResultsModeController *)self searchSession];

  if (v6)
  {
    v7 = [(CarSearchResultsModeController *)self searchSession];
    [v7 invalidate];
  }

  else
  {
    v7 = +[CarChromeModeCoordinator sharedInstance];
    [v7 popFromContext:self];
  }
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100757688;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [v7 addPreparation:v8];
  _Block_object_dispose(v9, 8);
}

- (id)personalizedItemSources
{
  v3 = [(CarSearchResultsModeController *)self chromeViewController];
  v4 = [v3 searchPinsManager];

  if (v4)
  {
    v5 = [(CarSearchResultsModeController *)self chromeViewController];
    v6 = [v5 searchPinsManager];
    v7 = [v6 searchResultsItemSource];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v22 = a3;
  if (![a4 isEqualToString:@"primary"])
  {
    goto LABEL_32;
  }

  v7 = [(CarSearchResultsModeController *)self cardTitle];
  if (v7)
  {
    v4 = [(CarSearchResultsModeController *)self cardTitle];
    if ([v4 length])
    {
      v8 = [(CarSearchResultsModeController *)self cardTitle];
      [v22 setTitle:v8];

LABEL_6:
      goto LABEL_7;
    }
  }

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"CarPlay_Search_Title" value:@"localized string not found" table:0];
  [v22 setTitle:v10];

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:

  [v22 setContent:self->_searchResultsCard];
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
  v15 = [(CarCardLayout *)v14 primaryAxis];
  v16 = [(CarCardLayout *)v14 cornerPosition];
  if (v15 == 1)
  {
    if (v16 == 4 || [(CarCardLayout *)v14 cornerPosition]== 1 || [(CarCardLayout *)v14 edgePosition]== 2)
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
    v18 = v16 == 4 || [(CarCardLayout *)v14 cornerPosition]== 8 || [(CarCardLayout *)v14 edgePosition]== 4;
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
  [v22 setLayout:v14];

  [v22 setAccessoryType:1];
  v19 = [(CarSearchResultsModeController *)self chromeViewController];
  v20 = [v19 overlayController];
  v21 = [v20 overlayContentView];
  [v21 setAccessibilityViewIsModal:1];

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

- (void)setCardTitle:(id)a3
{
  v5 = a3;
  if (self->_cardTitle != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_cardTitle, a3);
    v6 = [(CarSearchResultsModeController *)self chromeViewController];
    [v6 updateCardsForContext:self animated:0];

    v5 = v7;
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
    [(CarSearchResultsModeController *)self setSearchResults:v6];

    v5 = v7;
  }
}

- (void)setSearchResults:(id)a3
{
  v9 = a3;
  if (([v9 isEqualToArray:self->_searchResults] & 1) == 0)
  {
    objc_storeStrong(&self->_fullSearchResults, a3);
    v5 = [v9 carShortenedArray];
    searchResults = self->_searchResults;
    self->_searchResults = v5;

    v7 = [(CarSearchResultsModeController *)self chromeViewController];
    v8 = [v7 searchPinsManager];
    [v8 setSearchPins:self->_searchResults selectedPin:0 animated:0];

    [(CarSearchResultsCardViewController *)self->_searchResultsCard setSearchResults:self->_searchResults searchAlongRoute:0];
  }
}

- (void)setSearchSession:(id)a3
{
  v5 = a3;
  searchSession = self->_searchSession;
  if (searchSession != v5)
  {
    v15 = v5;
    [(SearchSession *)searchSession unregisterObserver:self];
    objc_storeStrong(&self->_searchSession, a3);
    [(SearchSession *)self->_searchSession registerObserver:self];
    v7 = [(SearchSession *)self->_searchSession searchInfo];
    v8 = [v7 headerDisplayName];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      cardTitle = self->_cardTitle;
      self->_cardTitle = v10;
    }

    else
    {
      cardTitle = [(SearchSession *)self->_searchSession searchFieldItem];
      v12 = [cardTitle searchString];
      v13 = self->_cardTitle;
      self->_cardTitle = v12;
    }

    v14 = [(SearchSession *)self->_searchSession searchInfo];
    [(CarSearchResultsModeController *)self setSearchInfo:v14];

    v5 = v15;
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
    v6 = [(CarSearchResultsModeController *)self category];

    browseManager = self->_browseManager;
    if (!v6)
    {
      v7 = [(BrowseManager *)browseManager cachedCategories];
      v8 = [v7 lastObject];
      [(CarSearchResultsModeController *)self setCategory:v8];

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
  v7 = [v6 chromeViewController];
  v8 = [v7 currentTraits];
  [(BrowseManager *)self->_browseManager setTraits:v8];

  lastFetchedFromLocation = self->_lastFetchedFromLocation;
  self->_lastFetchedFromLocation = 0;
}

- (void)_setupForCuratedCollection:(id)a3
{
  v9 = a3;
  v4 = [v9 curatedCollectionIdentifier];

  if (v4)
  {
    v5 = [CuratedCollectionResolver alloc];
    v6 = [v9 curatedCollectionIdentifier];
    v7 = [(CuratedCollectionResolver *)v5 initWithCuratedCollectionIdentifier:v6 delegate:self];
    curatedCollectionResolver = self->_curatedCollectionResolver;
    self->_curatedCollectionResolver = v7;
  }

  [(CuratedCollectionResolver *)self->_curatedCollectionResolver resolveCollection];
}

- (void)_setupForUserCollection:(id)a3
{
  v3 = a3;
  [v3 setSortType:1];
  v18 = v3;
  v4 = [v3 content];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
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

- (CarSearchResultsModeController)initWithCollection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CarSearchResultsModeController;
  v5 = [(CarSearchResultsModeController *)&v9 init];
  if (v5)
  {
    if ([v4 handlerType] == 4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CarSearchResultsModeController *)v5 _setupForCuratedCollection:v4];
      }
    }

    else
    {
      [(CarSearchResultsModeController *)v5 _setupForUserCollection:v4];
    }

    v6 = [v4 title];
    cardTitle = v5->_cardTitle;
    v5->_cardTitle = v6;

    [(CarSearchResultsModeController *)v5 _setup];
  }

  return v5;
}

- (CarSearchResultsModeController)initWithCategory:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CarSearchResultsModeController;
  v6 = [(CarSearchResultsModeController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, a3);
    v8 = [v5 name];
    cardTitle = v7->_cardTitle;
    v7->_cardTitle = v8;

    [(CarSearchResultsModeController *)v7 _setup];
  }

  return v7;
}

- (CarSearchResultsModeController)initWithSearchResults:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CarSearchResultsModeController;
  v5 = [(CarSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarSearchResultsModeController *)v5 setSearchResults:v4];
    [(CarSearchResultsModeController *)v6 _setup];
  }

  return v6;
}

- (CarSearchResultsModeController)initWithSearchInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CarSearchResultsModeController;
  v5 = [(CarSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarSearchResultsModeController *)v5 setSearchInfo:v4];
    [(CarSearchResultsModeController *)v6 _setup];
  }

  return v6;
}

- (CarSearchResultsModeController)initWithSearchSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CarSearchResultsModeController;
  v5 = [(CarSearchResultsModeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CarSearchResultsModeController *)v5 setSearchSession:v4];
    [(CarSearchResultsModeController *)v6 _setup];
  }

  return v6;
}

@end