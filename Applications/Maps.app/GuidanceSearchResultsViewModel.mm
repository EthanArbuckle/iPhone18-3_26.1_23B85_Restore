@interface GuidanceSearchResultsViewModel
- (GuidanceSearchResultsViewModel)initWithDataProvider:(id)provider navActionCoordinator:(id)coordinator routeInfoProvider:(id)infoProvider mapItemDisplayer:(id)displayer;
- (GuidanceSearchResultsViewModelDelegate)delegate;
- (NSString)subtitle;
- (NSString)title;
- (UIImage)headerImage;
- (void)_handleResults:(id)results error:(id)error;
- (void)cancelResultsView;
- (void)clearSelection;
- (void)dealloc;
- (void)loadDataIfNeeded;
- (void)navigateToItemAtIndex:(unint64_t)index;
- (void)selectMapItemAtIndex:(unint64_t)index;
@end

@implementation GuidanceSearchResultsViewModel

- (GuidanceSearchResultsViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = sub_100067540();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412290;
      v22 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SAR: Error received: %@", &v21, 0xCu);
    }

    [(GuidanceSearchResultsViewModel *)self setResults:0];
    delegate = [(GuidanceSearchResultsViewModel *)self delegate];
    mapItemDisplayer = delegate;
    selfCopy2 = self;
    v12 = errorCopy;
    goto LABEL_17;
  }

  if (![(GuidanceSearchResultsViewModel *)self isLoading])
  {
    v13 = [resultsCopy count];
    if (resultsCopy && v13)
    {
      [(GuidanceSearchResultsViewModel *)self setResults:resultsCopy];
      if ([resultsCopy count] == 1)
      {
        v14 = +[MNNavigationService sharedService];
        navigationTransportType = [v14 navigationTransportType];

        if (navigationTransportType != 3)
        {
          v19 = sub_100067540();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            results = [(GuidanceSearchResultsViewModel *)self results];
            v21 = 138412290;
            v22 = results;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "SAR: Received only one result, will open placecard directly. Result: %@", &v21, 0xCu);
          }

          mapItemDisplayer = [(GuidanceSearchResultsViewModel *)self mapItemDisplayer];
          [mapItemDisplayer displayMapItems:resultsCopy];
          goto LABEL_18;
        }
      }

      v16 = sub_100067540();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v21 = 134217984;
        v22 = [resultsCopy count];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "SAR: showing %ld search results", &v21, 0xCu);
      }

      mapItemDisplayer2 = [(GuidanceSearchResultsViewModel *)self mapItemDisplayer];
      [mapItemDisplayer2 displayMapItems:resultsCopy];
    }

    else
    {
      v18 = sub_100067540();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138412290;
        v22 = resultsCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "SAR: Empty results received: %@", &v21, 0xCu);
      }

      [(GuidanceSearchResultsViewModel *)self setResults:0];
    }

    delegate = [(GuidanceSearchResultsViewModel *)self delegate];
    mapItemDisplayer = delegate;
    selfCopy2 = self;
    v12 = 0;
LABEL_17:
    [delegate viewModelDidFinishLoading:selfCopy2 error:v12];
LABEL_18:
  }
}

- (void)selectMapItemAtIndex:(unint64_t)index
{
  results = [(GuidanceSearchResultsViewModel *)self results];
  v6 = [results count];

  if (v6 > index)
  {
    results2 = [(GuidanceSearchResultsViewModel *)self results];
    v9 = [results2 objectAtIndexedSubscript:index];

    navActionCoordinator = [(GuidanceSearchResultsViewModel *)self navActionCoordinator];
    [navActionCoordinator selectMapItem:v9 shouldRemoveResults:0];
  }
}

- (void)navigateToItemAtIndex:(unint64_t)index
{
  [(GuidanceSearchResultsViewModel *)self loadDataIfNeeded];
  results = [(GuidanceSearchResultsViewModel *)self results];
  v6 = [results count];

  if (v6 > index)
  {
    results2 = [(GuidanceSearchResultsViewModel *)self results];
    v9 = [results2 objectAtIndexedSubscript:index];

    [SARAnalytics captureListStartDetourToMapItem:v9 index:index];
    navActionCoordinator = [(GuidanceSearchResultsViewModel *)self navActionCoordinator];
    [navActionCoordinator detourToMapItem:v9];

    [(NavigationMapItemDisplaying *)self->_mapItemDisplayer removeMapItems];
  }
}

- (void)cancelResultsView
{
  [(GuidanceSearchResultsViewModel *)self clearSelection];
  [(NavigationMapItemDisplaying *)self->_mapItemDisplayer removeMapItems];
  navActionCoordinator = [(GuidanceSearchResultsViewModel *)self navActionCoordinator];
  [navActionCoordinator dismissSearchAlongRoute];
}

- (void)clearSelection
{
  navActionCoordinator = [(GuidanceSearchResultsViewModel *)self navActionCoordinator];
  [navActionCoordinator selectMapItem:0 shouldRemoveResults:1];
}

- (void)loadDataIfNeeded
{
  results = [(GuidanceSearchResultsViewModel *)self results];
  if ([results count])
  {
    v3 = results;
LABEL_3:

    return;
  }

  isLoading = [(GuidanceSearchResultsViewModel *)self isLoading];

  if (isLoading)
  {
    return;
  }

  [(GuidanceSearchResultsViewModel *)self setLoading:1];
  delegate = [(GuidanceSearchResultsViewModel *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(GuidanceSearchResultsViewModel *)self delegate];
    [delegate2 viewModelWillStartLoading:self];
  }

  v8 = +[MNNavigationService sharedService];
  navigationTransportType = [v8 navigationTransportType];
  if (navigationTransportType <= 2)
  {
    if (navigationTransportType != 1)
    {
      if (navigationTransportType == 2)
      {
        IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (navigationTransportType != 3)
  {
    if (navigationTransportType != 6)
    {
LABEL_16:
      IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();

      if (IsEnabled_DrivingMultiWaypointRoutes)
      {
        goto LABEL_21;
      }

LABEL_17:
      objc_initWeak(location, self);
      dataProvider = [(GuidanceSearchResultsViewModel *)self dataProvider];
      routeInfoProvider = [(GuidanceSearchResultsViewModel *)self routeInfoProvider];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100E5749C;
      v28[3] = &unk_10165F290;
      objc_copyWeak(&v29, location);
      [dataProvider loadSearchResultsWithRouteInfo:routeInfoProvider completion:v28];

      objc_destroyWeak(&v29);
      objc_destroyWeak(location);
      return;
    }

LABEL_15:

    goto LABEL_17;
  }

  IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
LABEL_20:
  v14 = IsEnabled_Maps182;

  if ((v14 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_21:
  dataProvider2 = [(GuidanceSearchResultsViewModel *)self dataProvider];
  if (objc_opt_respondsToSelector())
  {
    dataProvider3 = [(GuidanceSearchResultsViewModel *)self dataProvider];
    hasValidSearchResults = [dataProvider3 hasValidSearchResults];

    if (hasValidSearchResults)
    {
      objc_initWeak(location, self);
      dataProvider4 = [(GuidanceSearchResultsViewModel *)self dataProvider];
      routeInfoProvider2 = [(GuidanceSearchResultsViewModel *)self routeInfoProvider];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100E57418;
      v30[3] = &unk_10165F290;
      objc_copyWeak(&v31, location);
      [dataProvider4 loadSearchResultsWithRouteInfo:routeInfoProvider2 completion:v30];

      objc_destroyWeak(&v31);
      objc_destroyWeak(location);
      return;
    }
  }

  else
  {
  }

  dataProvider5 = [(GuidanceSearchResultsViewModel *)self dataProvider];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    dataProvider6 = [(GuidanceSearchResultsViewModel *)self dataProvider];
    error = [dataProvider6 error];
    [(GuidanceSearchResultsViewModel *)self _handleResults:&__NSArray0__struct error:error];

    v3 = dataProvider6;
    goto LABEL_3;
  }

  v23 = sub_100067540();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    dataProvider7 = [(GuidanceSearchResultsViewModel *)self dataProvider];
    LODWORD(location[0]) = 138412290;
    *(location + 4) = dataProvider7;
  }

  v25 = [NSError errorWithDomain:@"SAR_Results" code:0 userInfo:0];
  [(GuidanceSearchResultsViewModel *)self _handleResults:&__NSArray0__struct error:v25];
}

- (UIImage)headerImage
{
  headerImage = self->_headerImage;
  if (headerImage)
  {
    v3 = headerImage;
  }

  else
  {
    dataProvider = [(GuidanceSearchResultsViewModel *)self dataProvider];
    styleAttributes = [dataProvider styleAttributes];

    if (!styleAttributes || (-[GuidanceSearchResultsViewModel dataProvider](self, "dataProvider"), v7 = objc_claimAutoreleasedReturnValue(), [v7 styleAttributes], v8 = objc_claimAutoreleasedReturnValue(), +[UIScreen mainScreen](UIScreen, "mainScreen"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "nativeScale"), +[MKIconManager imageForStyle:size:forScale:format:](MKIconManager, "imageForStyle:size:forScale:format:", v8, 4, 1), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v10))
    {
      v10 = [UIImage imageNamed:@"search"];
    }

    v11 = self->_headerImage;
    self->_headerImage = v10;
    v12 = v10;

    v3 = self->_headerImage;
  }

  return v3;
}

- (NSString)subtitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Results] subtitle" value:@"localized string not found" table:0];
  results = [(GuidanceSearchResultsViewModel *)self results];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [results count]);

  dataProvider = [(GuidanceSearchResultsViewModel *)self dataProvider];
  subtitle = [dataProvider subtitle];
  v9 = subtitle;
  if (subtitle)
  {
    v10 = subtitle;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  if ([v11 containsString:@"%[destination]"])
  {
    appCoordinator = [(NavActionCoordination *)self->_navActionCoordinator appCoordinator];
    platformController = [appCoordinator platformController];
    currentSession = [platformController currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = currentSession;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    currentDestinationString = [v16 currentDestinationString];

    if (currentDestinationString)
    {
      v18 = [v11 stringByReplacingOccurrencesOfString:@"%[destination]" withString:currentDestinationString];
    }

    else
    {
      v18 = v6;
    }

    v19 = v18;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

- (NSString)title
{
  dataProvider = [(GuidanceSearchResultsViewModel *)self dataProvider];
  title = [dataProvider title];

  results = [(GuidanceSearchResultsViewModel *)self results];
  v6 = [results count];

  if (![title length] && v6)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"NAV_SAR_RESULT_TITLE" value:@"localized string not found" table:0];

    v9 = [NSString localizedStringWithFormat:v8, v6];

    title = v9;
  }

  return title;
}

- (void)dealloc
{
  [(GuidanceSearchResultsViewModel *)self clearSelection];
  [(NavigationMapItemDisplaying *)self->_mapItemDisplayer removeMapItems];
  v3.receiver = self;
  v3.super_class = GuidanceSearchResultsViewModel;
  [(GuidanceSearchResultsViewModel *)&v3 dealloc];
}

- (GuidanceSearchResultsViewModel)initWithDataProvider:(id)provider navActionCoordinator:(id)coordinator routeInfoProvider:(id)infoProvider mapItemDisplayer:(id)displayer
{
  providerCopy = provider;
  coordinatorCopy = coordinator;
  infoProviderCopy = infoProvider;
  displayerCopy = displayer;
  v18.receiver = self;
  v18.super_class = GuidanceSearchResultsViewModel;
  v15 = [(GuidanceSearchResultsViewModel *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataProvider, provider);
    objc_storeStrong(&v16->_navActionCoordinator, coordinator);
    objc_storeStrong(&v16->_routeInfoProvider, infoProvider);
    objc_storeStrong(&v16->_mapItemDisplayer, displayer);
  }

  return v16;
}

@end