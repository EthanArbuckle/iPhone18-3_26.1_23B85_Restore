@interface GuidanceSearchResultsViewModel
- (GuidanceSearchResultsViewModel)initWithDataProvider:(id)a3 navActionCoordinator:(id)a4 routeInfoProvider:(id)a5 mapItemDisplayer:(id)a6;
- (GuidanceSearchResultsViewModelDelegate)delegate;
- (NSString)subtitle;
- (NSString)title;
- (UIImage)headerImage;
- (void)_handleResults:(id)a3 error:(id)a4;
- (void)cancelResultsView;
- (void)clearSelection;
- (void)dealloc;
- (void)loadDataIfNeeded;
- (void)navigateToItemAtIndex:(unint64_t)a3;
- (void)selectMapItemAtIndex:(unint64_t)a3;
@end

@implementation GuidanceSearchResultsViewModel

- (GuidanceSearchResultsViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleResults:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = sub_100067540();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SAR: Error received: %@", &v21, 0xCu);
    }

    [(GuidanceSearchResultsViewModel *)self setResults:0];
    v9 = [(GuidanceSearchResultsViewModel *)self delegate];
    v10 = v9;
    v11 = self;
    v12 = v7;
    goto LABEL_17;
  }

  if (![(GuidanceSearchResultsViewModel *)self isLoading])
  {
    v13 = [v6 count];
    if (v6 && v13)
    {
      [(GuidanceSearchResultsViewModel *)self setResults:v6];
      if ([v6 count] == 1)
      {
        v14 = +[MNNavigationService sharedService];
        v15 = [v14 navigationTransportType];

        if (v15 != 3)
        {
          v19 = sub_100067540();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = [(GuidanceSearchResultsViewModel *)self results];
            v21 = 138412290;
            v22 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "SAR: Received only one result, will open placecard directly. Result: %@", &v21, 0xCu);
          }

          v10 = [(GuidanceSearchResultsViewModel *)self mapItemDisplayer];
          [v10 displayMapItems:v6];
          goto LABEL_18;
        }
      }

      v16 = sub_100067540();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v21 = 134217984;
        v22 = [v6 count];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "SAR: showing %ld search results", &v21, 0xCu);
      }

      v17 = [(GuidanceSearchResultsViewModel *)self mapItemDisplayer];
      [v17 displayMapItems:v6];
    }

    else
    {
      v18 = sub_100067540();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138412290;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "SAR: Empty results received: %@", &v21, 0xCu);
      }

      [(GuidanceSearchResultsViewModel *)self setResults:0];
    }

    v9 = [(GuidanceSearchResultsViewModel *)self delegate];
    v10 = v9;
    v11 = self;
    v12 = 0;
LABEL_17:
    [v9 viewModelDidFinishLoading:v11 error:v12];
LABEL_18:
  }
}

- (void)selectMapItemAtIndex:(unint64_t)a3
{
  v5 = [(GuidanceSearchResultsViewModel *)self results];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(GuidanceSearchResultsViewModel *)self results];
    v9 = [v7 objectAtIndexedSubscript:a3];

    v8 = [(GuidanceSearchResultsViewModel *)self navActionCoordinator];
    [v8 selectMapItem:v9 shouldRemoveResults:0];
  }
}

- (void)navigateToItemAtIndex:(unint64_t)a3
{
  [(GuidanceSearchResultsViewModel *)self loadDataIfNeeded];
  v5 = [(GuidanceSearchResultsViewModel *)self results];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(GuidanceSearchResultsViewModel *)self results];
    v9 = [v7 objectAtIndexedSubscript:a3];

    [SARAnalytics captureListStartDetourToMapItem:v9 index:a3];
    v8 = [(GuidanceSearchResultsViewModel *)self navActionCoordinator];
    [v8 detourToMapItem:v9];

    [(NavigationMapItemDisplaying *)self->_mapItemDisplayer removeMapItems];
  }
}

- (void)cancelResultsView
{
  [(GuidanceSearchResultsViewModel *)self clearSelection];
  [(NavigationMapItemDisplaying *)self->_mapItemDisplayer removeMapItems];
  v3 = [(GuidanceSearchResultsViewModel *)self navActionCoordinator];
  [v3 dismissSearchAlongRoute];
}

- (void)clearSelection
{
  v2 = [(GuidanceSearchResultsViewModel *)self navActionCoordinator];
  [v2 selectMapItem:0 shouldRemoveResults:1];
}

- (void)loadDataIfNeeded
{
  v26 = [(GuidanceSearchResultsViewModel *)self results];
  if ([v26 count])
  {
    v3 = v26;
LABEL_3:

    return;
  }

  v4 = [(GuidanceSearchResultsViewModel *)self isLoading];

  if (v4)
  {
    return;
  }

  [(GuidanceSearchResultsViewModel *)self setLoading:1];
  v5 = [(GuidanceSearchResultsViewModel *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(GuidanceSearchResultsViewModel *)self delegate];
    [v7 viewModelWillStartLoading:self];
  }

  v8 = +[MNNavigationService sharedService];
  v9 = [v8 navigationTransportType];
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v9 != 3)
  {
    if (v9 != 6)
    {
LABEL_16:
      IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();

      if (IsEnabled_DrivingMultiWaypointRoutes)
      {
        goto LABEL_21;
      }

LABEL_17:
      objc_initWeak(location, self);
      v12 = [(GuidanceSearchResultsViewModel *)self dataProvider];
      v13 = [(GuidanceSearchResultsViewModel *)self routeInfoProvider];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100E5749C;
      v28[3] = &unk_10165F290;
      objc_copyWeak(&v29, location);
      [v12 loadSearchResultsWithRouteInfo:v13 completion:v28];

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
  v15 = [(GuidanceSearchResultsViewModel *)self dataProvider];
  if (objc_opt_respondsToSelector())
  {
    v16 = [(GuidanceSearchResultsViewModel *)self dataProvider];
    v17 = [v16 hasValidSearchResults];

    if (v17)
    {
      objc_initWeak(location, self);
      v18 = [(GuidanceSearchResultsViewModel *)self dataProvider];
      v19 = [(GuidanceSearchResultsViewModel *)self routeInfoProvider];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100E57418;
      v30[3] = &unk_10165F290;
      objc_copyWeak(&v31, location);
      [v18 loadSearchResultsWithRouteInfo:v19 completion:v30];

      objc_destroyWeak(&v31);
      objc_destroyWeak(location);
      return;
    }
  }

  else
  {
  }

  v20 = [(GuidanceSearchResultsViewModel *)self dataProvider];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v27 = [(GuidanceSearchResultsViewModel *)self dataProvider];
    v22 = [v27 error];
    [(GuidanceSearchResultsViewModel *)self _handleResults:&__NSArray0__struct error:v22];

    v3 = v27;
    goto LABEL_3;
  }

  v23 = sub_100067540();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = [(GuidanceSearchResultsViewModel *)self dataProvider];
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v24;
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
    v5 = [(GuidanceSearchResultsViewModel *)self dataProvider];
    v6 = [v5 styleAttributes];

    if (!v6 || (-[GuidanceSearchResultsViewModel dataProvider](self, "dataProvider"), v7 = objc_claimAutoreleasedReturnValue(), [v7 styleAttributes], v8 = objc_claimAutoreleasedReturnValue(), +[UIScreen mainScreen](UIScreen, "mainScreen"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "nativeScale"), +[MKIconManager imageForStyle:size:forScale:format:](MKIconManager, "imageForStyle:size:forScale:format:", v8, 4, 1), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v10))
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
  v5 = [(GuidanceSearchResultsViewModel *)self results];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [v5 count]);

  v7 = [(GuidanceSearchResultsViewModel *)self dataProvider];
  v8 = [v7 subtitle];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  if ([v11 containsString:@"%[destination]"])
  {
    v12 = [(NavActionCoordination *)self->_navActionCoordinator appCoordinator];
    v13 = [v12 platformController];
    v14 = [v13 currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v16 currentDestinationString];

    if (v17)
    {
      v18 = [v11 stringByReplacingOccurrencesOfString:@"%[destination]" withString:v17];
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
  v3 = [(GuidanceSearchResultsViewModel *)self dataProvider];
  v4 = [v3 title];

  v5 = [(GuidanceSearchResultsViewModel *)self results];
  v6 = [v5 count];

  if (![v4 length] && v6)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"NAV_SAR_RESULT_TITLE" value:@"localized string not found" table:0];

    v9 = [NSString localizedStringWithFormat:v8, v6];

    v4 = v9;
  }

  return v4;
}

- (void)dealloc
{
  [(GuidanceSearchResultsViewModel *)self clearSelection];
  [(NavigationMapItemDisplaying *)self->_mapItemDisplayer removeMapItems];
  v3.receiver = self;
  v3.super_class = GuidanceSearchResultsViewModel;
  [(GuidanceSearchResultsViewModel *)&v3 dealloc];
}

- (GuidanceSearchResultsViewModel)initWithDataProvider:(id)a3 navActionCoordinator:(id)a4 routeInfoProvider:(id)a5 mapItemDisplayer:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = GuidanceSearchResultsViewModel;
  v15 = [(GuidanceSearchResultsViewModel *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataProvider, a3);
    objc_storeStrong(&v16->_navActionCoordinator, a4);
    objc_storeStrong(&v16->_routeInfoProvider, a5);
    objc_storeStrong(&v16->_mapItemDisplayer, a6);
  }

  return v16;
}

@end