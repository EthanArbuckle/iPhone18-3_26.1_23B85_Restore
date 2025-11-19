@interface RouteWaypointSuggestionsTableViewController
- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4;
- (GEOAutocompleteSessionData)recentAutocompleteSessionData;
- (RouteWaypointSuggestionsTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (RouteWaypointSuggestionsTableViewControllerDelegate)delegate;
- (id)newTraits;
- (void)_callTableHandlerIfNeeded;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)loadView;
- (void)reconfigureDataSources;
- (void)reloadSuggestionsTableView;
- (void)reset;
- (void)searchDataSource:(id)a3 replaceQueryWithItem:(id)a4;
- (void)setDelegate:(id)a3;
- (void)updateCategoryDataSource:(BOOL)a3;
- (void)updateDataSourceHasInput:(BOOL)a3 isEditing:(BOOL)a4;
- (void)updateInputText:(id)a3 traits:(id)a4 source:(int)a5;
- (void)updateRowHeightForCurrentDataSource;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RouteWaypointSuggestionsTableViewController

- (RouteWaypointSuggestionsTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)newTraits
{
  v3 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  v4 = [v3 traitsForRouteSearchTableViewController:self];

  return v4;
}

- (void)searchDataSource:(id)a3 replaceQueryWithItem:(id)a4
{
  v8 = a4;
  v5 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
    [v7 didTapOnQueryAcceleratorWithItem:v8];
  }
}

- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(RouteWaypointSuggestionsTableViewController *)self shouldFilterMapsSuggestionsEntry:v7];
    *(v17 + 24) = v8;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
      v12 = [v11 _type] & 0xFFFFFFFFFFFFFFFELL;

      if (v12 == 4)
      {
        v10 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v17 + 24) = 1;
        v14 = [v7 historyEntry];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100E807CC;
        v15[3] = &unk_101656AE8;
        v15[4] = &v16;
        [v14 ifSearch:v15 ifRoute:0 ifPlaceDisplay:0 ifTransitLineItem:0];
      }
    }
  }

  v9 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  if ([v9 routeSearchController:self waypointsIncludeObject:v7])
  {
    v10 = 1;
  }

  else
  {
    v10 = *(v17 + 24);
  }

LABEL_10:
  _Block_object_dispose(&v16, 8);

  return v10 & 1;
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v6 = a3;
  v7 = a4;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_100E80EF0;
  v53 = sub_100E80F00;
  v54 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 _type];
    if (v9 && v9 != 3)
    {
      goto LABEL_10;
    }

    v10 = [SearchFieldItem searchFieldItemWithObject:v8];
    v11 = v50[5];
    v50[5] = v10;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
      v13 = [SearchFieldItem searchFieldItemWithObject:v12];
      v14 = v50[5];
      v50[5] = v13;

      v15 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
      [v15 routeSearchController:self didSelectItem:v50[5]];

      goto LABEL_26;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v7;
        v31 = [SearchResult alloc];
        v32 = [(__CFString *)v12 MKMapItem];
        v33 = [(SearchResult *)v31 initWithMapItem:v32];
        v34 = [SearchFieldItem searchFieldItemWithObject:v33];
        v35 = v50[5];
        v50[5] = v34;

        v36 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
        [v36 routeSearchController:self didSelectItem:v50[5]];

        goto LABEL_26;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_supportsFullTextSearch)
      {
        v37 = +[MapsOfflineUIHelper sharedHelper];
        v38 = [v37 isUsingOfflineMaps];

        if (v38)
        {
          v12 = v7;
          v39 = [(__CFString *)v12 category];
          v40 = [SearchFieldItem searchFieldItemWithObject:v39];

          v57[0] = @"SearchSessionIsAutoRedoSearch";
          v57[1] = @"SearchSessionAddStopFromWaypointEditor";
          v58[0] = &__kCFBooleanFalse;
          v58[1] = &__kCFBooleanTrue;
          v41 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
          v42 = [NSMutableDictionary dictionaryWithDictionary:v41];

          [v42 setObject:&off_1016EA0E8 forKeyedSubscript:@"SearchSessionTraitsSource"];
          v43 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
          [v43 routeSearchController:self doSearchItem:v40 userInfo:v42];

          goto LABEL_26;
        }
      }

      goto LABEL_11;
    }

    v16 = v7;
    v17 = [v16 historyEntry];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100E80F08;
    v46[3] = &unk_101656AC0;
    v48 = &v49;
    v47 = v16;
    [v17 ifSearch:v46 ifRoute:0 ifPlaceDisplay:0 ifTransitLineItem:0];

    v11 = v47;
  }

LABEL_10:
LABEL_11:
  if (v50[5])
  {
    v55[0] = @"SearchSessionIsAutoRedoSearch";
    v55[1] = @"SearchSessionAddStopFromWaypointEditor";
    v56[0] = &__kCFBooleanFalse;
    v56[1] = &__kCFBooleanTrue;
    v18 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
    v12 = [NSMutableDictionary dictionaryWithDictionary:v18];

    [(__CFString *)v12 setObject:&off_1016EA0E8 forKeyedSubscript:@"SearchSessionTraitsSource"];
    v19 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
      v21 = [v20 hasInputsInSearchField];

      if (v21)
      {
        v22 = &off_1016EA0E8;
      }

      else
      {
        v22 = &off_1016EA100;
      }
    }

    else
    {

      v22 = &off_1016EA100;
    }

    [(__CFString *)v12 setObject:v22 forKeyedSubscript:@"SearchSessionTraitsSource"];
    v26 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
    v27 = [v26 latLngForRouteSearchTableViewController:self];

    if (v27)
    {
      [(__CFString *)v12 setObject:v27 forKeyedSubscript:@"SearchSessionAddStopPreviousLatLng"];
    }

    v28 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
    v29 = v50[5];
    v30 = [(__CFString *)v12 copy];
    [v28 routeSearchController:self doSearchItem:v29 userInfo:v30];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isDynamicCurrentLocation])
    {
      v23 = @"AppInfoTemporaryPreciseLocationAuthorizationForDirectionsPurposeKey";
      v24 = +[MKMapService sharedService];
      [v24 captureUserAction:56 onTarget:607 eventValue:0];

      v25 = +[MKLocationManager sharedLocationManager];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100E80F5C;
      v44[3] = &unk_10165D300;
      v44[4] = self;
      v45 = v7;
      [v25 requestTemporaryPreciseLocationAuthorizationWithPurposeKey:@"AppInfoTemporaryPreciseLocationAuthorizationForDirectionsPurposeKey" completion:v44];

      v12 = @"AppInfoTemporaryPreciseLocationAuthorizationForDirectionsPurposeKey";
    }

    else
    {
      v12 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
      [(__CFString *)v12 routeSearchController:self didSelectItem:v7];
    }
  }

LABEL_26:

  _Block_object_dispose(&v49, 8);
}

- (GEOAutocompleteSessionData)recentAutocompleteSessionData
{
  v2 = [(SearchDataSource *)self->_acDataSource searchDataProvider];
  v3 = [v2 _recentAutocompleteSessionData];

  return v3;
}

- (void)updateRowHeightForCurrentDataSource
{
  v3 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  v4 = [v3 dataSource];
  v5 = 40;
  acDataSource = self->_acDataSource;

  if (v4 == acDataSource || (-[RouteWaypointSuggestionsTableViewController tableView](self, "tableView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 dataSource], v8 = objc_claimAutoreleasedReturnValue(), v5 = 32, noQueryDataSource = self->_noQueryDataSource, v8, v7, v8 == noQueryDataSource))
  {
    [*(&self->super.super.super.super.super.isa + v5) rowHeight];
    v10 = v11;
  }

  else
  {
    v10 = UITableViewAutomaticDimension;
  }

  v12 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v12 rowHeight];
  v14 = v13;

  if (v14 != v10)
  {
    v15 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    [v15 setRowHeight:v10];
  }
}

- (void)_callTableHandlerIfNeeded
{
  v3 = [(RouteWaypointSuggestionsTableViewController *)self tableViewDidReloadHandler];

  if (v3)
  {
    v4 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    v5 = [v4 numberOfSections];

    if (v5 < 1)
    {
LABEL_6:
      v9 = 0;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v7 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
        v8 = [v7 numberOfRowsInSection:v6];
        v9 = v8 > 0;

        if (v8 >= 1)
        {
          break;
        }

        ++v6;
        v10 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
        v11 = [v10 numberOfSections];

        if (v6 >= v11)
        {
          goto LABEL_6;
        }
      }
    }

    v12 = [(RouteWaypointSuggestionsTableViewController *)self tableViewDidReloadHandler];
    v12[2](v12, v9);
  }
}

- (void)reloadSuggestionsTableView
{
  [(RouteWaypointSuggestionsTableViewController *)self updateRowHeightForCurrentDataSource];
  v3 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v3 reloadData];

  [(RouteWaypointSuggestionsTableViewController *)self _callTableHandlerIfNeeded];
}

- (void)reset
{
  [(RouteWaypointSuggestionsTableViewController *)self updateDataSourceHasInput:0 isEditing:0];
  [(SearchDataSource *)self->_acDataSource reset];
  acDataSource = self->_acDataSource;

  [(SearchDataSource *)acDataSource invalidateDataForFilterChange];
}

- (void)updateInputText:(id)a3 traits:(id)a4 source:(int)a5
{
  v5 = *&a5;
  v11 = a3;
  v8 = a4;
  [(SearchDataSource *)self->_acDataSource invalidateDataForFilterChange];
  acDataSource = self->_acDataSource;
  if (v8)
  {
    [(SearchDataSource *)acDataSource setInputText:v11 traits:v8 source:v5];
  }

  else
  {
    v10 = [(RouteWaypointSuggestionsTableViewController *)self newTraits];
    [(SearchDataSource *)acDataSource setInputText:v11 traits:v10 source:v5];
  }
}

- (void)updateDataSourceHasInput:(BOOL)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  v25 = [v7 selectedSearchFieldItem];

  v8 = [v25 composedWaypoint];
  v9 = [v8 isServerProvidedWaypoint];

  if (!v4 || (!v5 & v9) != 0)
  {
    [(SearchDataSource *)self->_acDataSource setActive:0];
    [(RouteNoQueryDataSource *)self->_noQueryDataSource setActive:0];
    v14 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    [v14 setDataSource:0];

    [(RouteWaypointSuggestionsTableViewController *)self reloadSuggestionsTableView];
  }

  else if (v5)
  {
    if (![self->_acDataSource active])
    {
      [(RouteNoQueryDataSource *)self->_noQueryDataSource setActive:0];
      acDataSource = self->_acDataSource;
      v11 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
      [v11 setDelegate:acDataSource];

      v12 = self->_acDataSource;
      v13 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
      [v13 setDataSource:v12];

      [(SearchDataSource *)self->_acDataSource setActive:1];
      [(RouteWaypointSuggestionsTableViewController *)self updateRowHeightForCurrentDataSource];
    }
  }

  else if (![self->_noQueryDataSource active])
  {
    [(SearchDataSource *)self->_acDataSource setActive:0];
    noQueryDataSource = self->_noQueryDataSource;
    v16 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    [v16 setDelegate:noQueryDataSource];

    v17 = self->_noQueryDataSource;
    v18 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    [v18 setDataSource:v17];

    v19 = +[MKLocationManager sharedLocationManager];
    LODWORD(v18) = [v19 isLocationServicesApproved];
    v20 = [v19 isAuthorizedForPreciseLocation];
    if (v18)
    {
      v21 = v20;
      v22 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
      if (([v22 waypointsIncludeCurrentLocationForRouteSearchTableViewController:self] & v21) == 1)
      {
        [(RouteNoQueryDataSource *)self->_noQueryDataSource setUserLocationSearchResult:0];
      }

      else
      {
        v23 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
        v24 = [v23 userLocationSearchResultForRouteSearchTableViewController:self];
        [(RouteNoQueryDataSource *)self->_noQueryDataSource setUserLocationSearchResult:v24];
      }
    }

    else
    {
      [(RouteNoQueryDataSource *)self->_noQueryDataSource setUserLocationSearchResult:0];
    }

    [(RouteNoQueryDataSource *)self->_noQueryDataSource setActive:1];
    [(RouteWaypointSuggestionsTableViewController *)self updateRowHeightForCurrentDataSource];
  }
}

- (void)updateCategoryDataSource:(BOOL)a3
{
  v3 = a3;
  v5 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v5 setDataSource:0];

  v6 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v6 setDelegate:0];

  [(SearchDataSource *)self->_acDataSource setActive:0];
  [(RouteNoQueryDataSource *)self->_noQueryDataSource setActive:0];
  self->_supportsFullTextSearch = v3;
  v7 = [SearchHomeDataSource alloc];
  v8 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  v9 = [(RouteWaypointSuggestionsTableViewController *)self newTraits];
  v10 = [(SearchHomeDataSource *)v7 initWithTableView:v8 traits:v9 supportsFullTextSearch:v3];
  browseCategoryDataSource = self->_browseCategoryDataSource;
  self->_browseCategoryDataSource = v10;

  v12 = self->_browseCategoryDataSource;

  [(DataSource *)v12 setDelegate:self];
}

- (void)reconfigureDataSources
{
  v3 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  v6 = [v3 personalizedItemManagerForRouteSearchTableViewController:self];

  v4 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  v5 = [v4 userLocationSearchResultForRouteSearchTableViewController:self];

  [(SearchDataSource *)self->_acDataSource setMapPersonalizedItems:v6];
  [(SearchDataSource *)self->_acDataSource setUserLocationSearchResult:v5];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(RouteWaypointSuggestionsTableViewController *)self reconfigureDataSources];
    v5 = obj;
  }
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = RouteWaypointSuggestionsTableViewController;
  [(RouteWaypointSuggestionsTableViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(RouteWaypointSuggestionsTableViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  v9 = [v8 dataSource];
  acDataSource = self->_acDataSource;
  if (v9 == acDataSource)
  {
    v11 = [(SearchDataSource *)acDataSource shouldReloadOnHeightChange];

    if (v11)
    {
      if (self->_lastSize.width != v5 || self->_lastSize.height != v7)
      {
        self->_lastSize.width = v5;
        self->_lastSize.height = v7;
        [(RouteWaypointSuggestionsTableViewController *)self reloadSuggestionsTableView];
      }
    }
  }

  else
  {
  }
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = RouteWaypointSuggestionsTableViewController;
  [(RouteWaypointSuggestionsTableViewController *)&v27 viewDidLoad];
  v3 = [(RouteWaypointSuggestionsTableViewController *)self view];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 stringByReplacingOccurrencesOfString:@"Controller" withString:&stru_1016631F0];
  [v3 setAccessibilityIdentifier:v6];

  v7 = +[UIColor clearColor];
  v8 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v8 setBackgroundColor:v7];

  v9 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v9 setSeparatorStyle:1];

  v10 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v10 _setDrawsSeparatorAtTopOfSections:0];

  v11 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v11 setPreservesSuperviewLayoutMargins:1];

  v12 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v12 setSectionHeaderTopPadding:0.0];

  v13 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v13 setAccessibilityIdentifier:@"RouteSearchResultsTableView"];

  [(RouteWaypointSuggestionsTableViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v15 = v14;
  v16 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [v16 setLayoutMargins:{0.0, v15, 0.0, v15}];

  v17 = [SearchDataSource alloc];
  v18 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  v19 = [(SearchDataSource *)v17 initWithTableView:v18];
  acDataSource = self->_acDataSource;
  self->_acDataSource = v19;

  [(SearchDataSource *)self->_acDataSource setSearchMode:2];
  [(SearchDataSource *)self->_acDataSource setRoutePlanning:1];
  [self->_acDataSource setDelegate:self];
  [(RouteWaypointSuggestionsTableViewController *)self reconfigureDataSources];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100E81CC4;
  v26[3] = &unk_101656A98;
  v26[4] = self;
  v21 = [NSPredicate predicateWithBlock:v26];
  v22 = [RouteNoQueryDataSource alloc];
  v23 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  v24 = [(RouteNoQueryDataSource *)v22 initWithTableView:v23 filterPredicate:v21];
  noQueryDataSource = self->_noQueryDataSource;
  self->_noQueryDataSource = v24;

  [self->_noQueryDataSource setDelegate:self];
  [(RouteWaypointSuggestionsTableViewController *)self updateDataSourceHasInput:0 isEditing:0];
}

- (void)loadView
{
  v3 = [[MapsThemeTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(RouteWaypointSuggestionsTableViewController *)self setView:v3];
}

- (RouteWaypointSuggestionsTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = RouteWaypointSuggestionsTableViewController;
  v4 = [(RouteWaypointSuggestionsTableViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[MKLocationManager sharedLocationManager];
    v4->_wasLocationServicesApproved = [v5 isLocationServicesApproved];
    v4->_wasAuthorizedForPreciseLocation = [v5 isAuthorizedForPreciseLocation];
  }

  return v4;
}

@end