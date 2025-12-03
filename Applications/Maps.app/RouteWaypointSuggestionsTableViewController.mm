@interface RouteWaypointSuggestionsTableViewController
- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item;
- (GEOAutocompleteSessionData)recentAutocompleteSessionData;
- (RouteWaypointSuggestionsTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (RouteWaypointSuggestionsTableViewControllerDelegate)delegate;
- (id)newTraits;
- (void)_callTableHandlerIfNeeded;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)loadView;
- (void)reconfigureDataSources;
- (void)reloadSuggestionsTableView;
- (void)reset;
- (void)searchDataSource:(id)source replaceQueryWithItem:(id)item;
- (void)setDelegate:(id)delegate;
- (void)updateCategoryDataSource:(BOOL)source;
- (void)updateDataSourceHasInput:(BOOL)input isEditing:(BOOL)editing;
- (void)updateInputText:(id)text traits:(id)traits source:(int)source;
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
  delegate = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  v4 = [delegate traitsForRouteSearchTableViewController:self];

  return v4;
}

- (void)searchDataSource:(id)source replaceQueryWithItem:(id)item
{
  itemCopy = item;
  delegate = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
    [delegate2 didTapOnQueryAcceleratorWithItem:itemCopy];
  }
}

- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item
{
  sourceCopy = source;
  itemCopy = item;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(RouteWaypointSuggestionsTableViewController *)self shouldFilterMapsSuggestionsEntry:itemCopy];
    *(v17 + 24) = v8;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = itemCopy;
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
        historyEntry = [itemCopy historyEntry];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100E807CC;
        v15[3] = &unk_101656AE8;
        v15[4] = &v16;
        [historyEntry ifSearch:v15 ifRoute:0 ifPlaceDisplay:0 ifTransitLineItem:0];
      }
    }
  }

  delegate = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  if ([delegate routeSearchController:self waypointsIncludeObject:itemCopy])
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

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  sourceCopy = source;
  tappedCopy = tapped;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_100E80EF0;
  v53 = sub_100E80F00;
  v54 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = tappedCopy;
    _type = [v8 _type];
    if (_type && _type != 3)
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
      delegate8 = tappedCopy;
      v13 = [SearchFieldItem searchFieldItemWithObject:delegate8];
      v14 = v50[5];
      v50[5] = v13;

      delegate = [(RouteWaypointSuggestionsTableViewController *)self delegate];
      [delegate routeSearchController:self didSelectItem:v50[5]];

      goto LABEL_26;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate8 = tappedCopy;
        v31 = [SearchResult alloc];
        mKMapItem = [(__CFString *)delegate8 MKMapItem];
        v33 = [(SearchResult *)v31 initWithMapItem:mKMapItem];
        v34 = [SearchFieldItem searchFieldItemWithObject:v33];
        v35 = v50[5];
        v50[5] = v34;

        delegate2 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
        [delegate2 routeSearchController:self didSelectItem:v50[5]];

        goto LABEL_26;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_supportsFullTextSearch)
      {
        v37 = +[MapsOfflineUIHelper sharedHelper];
        isUsingOfflineMaps = [v37 isUsingOfflineMaps];

        if (isUsingOfflineMaps)
        {
          delegate8 = tappedCopy;
          category = [(__CFString *)delegate8 category];
          v40 = [SearchFieldItem searchFieldItemWithObject:category];

          v57[0] = @"SearchSessionIsAutoRedoSearch";
          v57[1] = @"SearchSessionAddStopFromWaypointEditor";
          v58[0] = &__kCFBooleanFalse;
          v58[1] = &__kCFBooleanTrue;
          v41 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
          v42 = [NSMutableDictionary dictionaryWithDictionary:v41];

          [v42 setObject:&off_1016EA0E8 forKeyedSubscript:@"SearchSessionTraitsSource"];
          delegate3 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
          [delegate3 routeSearchController:self doSearchItem:v40 userInfo:v42];

          goto LABEL_26;
        }
      }

      goto LABEL_11;
    }

    v16 = tappedCopy;
    historyEntry = [v16 historyEntry];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100E80F08;
    v46[3] = &unk_101656AC0;
    v48 = &v49;
    v47 = v16;
    [historyEntry ifSearch:v46 ifRoute:0 ifPlaceDisplay:0 ifTransitLineItem:0];

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
    delegate8 = [NSMutableDictionary dictionaryWithDictionary:v18];

    [(__CFString *)delegate8 setObject:&off_1016EA0E8 forKeyedSubscript:@"SearchSessionTraitsSource"];
    delegate4 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate5 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
      hasInputsInSearchField = [delegate5 hasInputsInSearchField];

      if (hasInputsInSearchField)
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

    [(__CFString *)delegate8 setObject:v22 forKeyedSubscript:@"SearchSessionTraitsSource"];
    delegate6 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
    v27 = [delegate6 latLngForRouteSearchTableViewController:self];

    if (v27)
    {
      [(__CFString *)delegate8 setObject:v27 forKeyedSubscript:@"SearchSessionAddStopPreviousLatLng"];
    }

    delegate7 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
    v29 = v50[5];
    v30 = [(__CFString *)delegate8 copy];
    [delegate7 routeSearchController:self doSearchItem:v29 userInfo:v30];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [tappedCopy isDynamicCurrentLocation])
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
      v45 = tappedCopy;
      [v25 requestTemporaryPreciseLocationAuthorizationWithPurposeKey:@"AppInfoTemporaryPreciseLocationAuthorizationForDirectionsPurposeKey" completion:v44];

      delegate8 = @"AppInfoTemporaryPreciseLocationAuthorizationForDirectionsPurposeKey";
    }

    else
    {
      delegate8 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
      [(__CFString *)delegate8 routeSearchController:self didSelectItem:tappedCopy];
    }
  }

LABEL_26:

  _Block_object_dispose(&v49, 8);
}

- (GEOAutocompleteSessionData)recentAutocompleteSessionData
{
  searchDataProvider = [(SearchDataSource *)self->_acDataSource searchDataProvider];
  _recentAutocompleteSessionData = [searchDataProvider _recentAutocompleteSessionData];

  return _recentAutocompleteSessionData;
}

- (void)updateRowHeightForCurrentDataSource
{
  tableView = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  dataSource = [tableView dataSource];
  v5 = 40;
  acDataSource = self->_acDataSource;

  if (dataSource == acDataSource || (-[RouteWaypointSuggestionsTableViewController tableView](self, "tableView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 dataSource], v8 = objc_claimAutoreleasedReturnValue(), v5 = 32, noQueryDataSource = self->_noQueryDataSource, v8, v7, v8 == noQueryDataSource))
  {
    [*(&self->super.super.super.super.super.isa + v5) rowHeight];
    v10 = v11;
  }

  else
  {
    v10 = UITableViewAutomaticDimension;
  }

  tableView2 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView2 rowHeight];
  v14 = v13;

  if (v14 != v10)
  {
    tableView3 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    [tableView3 setRowHeight:v10];
  }
}

- (void)_callTableHandlerIfNeeded
{
  tableViewDidReloadHandler = [(RouteWaypointSuggestionsTableViewController *)self tableViewDidReloadHandler];

  if (tableViewDidReloadHandler)
  {
    tableView = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    numberOfSections = [tableView numberOfSections];

    if (numberOfSections < 1)
    {
LABEL_6:
      v9 = 0;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        tableView2 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
        v8 = [tableView2 numberOfRowsInSection:v6];
        v9 = v8 > 0;

        if (v8 >= 1)
        {
          break;
        }

        ++v6;
        tableView3 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
        numberOfSections2 = [tableView3 numberOfSections];

        if (v6 >= numberOfSections2)
        {
          goto LABEL_6;
        }
      }
    }

    tableViewDidReloadHandler2 = [(RouteWaypointSuggestionsTableViewController *)self tableViewDidReloadHandler];
    tableViewDidReloadHandler2[2](tableViewDidReloadHandler2, v9);
  }
}

- (void)reloadSuggestionsTableView
{
  [(RouteWaypointSuggestionsTableViewController *)self updateRowHeightForCurrentDataSource];
  tableView = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView reloadData];

  [(RouteWaypointSuggestionsTableViewController *)self _callTableHandlerIfNeeded];
}

- (void)reset
{
  [(RouteWaypointSuggestionsTableViewController *)self updateDataSourceHasInput:0 isEditing:0];
  [(SearchDataSource *)self->_acDataSource reset];
  acDataSource = self->_acDataSource;

  [(SearchDataSource *)acDataSource invalidateDataForFilterChange];
}

- (void)updateInputText:(id)text traits:(id)traits source:(int)source
{
  v5 = *&source;
  textCopy = text;
  traitsCopy = traits;
  [(SearchDataSource *)self->_acDataSource invalidateDataForFilterChange];
  acDataSource = self->_acDataSource;
  if (traitsCopy)
  {
    [(SearchDataSource *)acDataSource setInputText:textCopy traits:traitsCopy source:v5];
  }

  else
  {
    newTraits = [(RouteWaypointSuggestionsTableViewController *)self newTraits];
    [(SearchDataSource *)acDataSource setInputText:textCopy traits:newTraits source:v5];
  }
}

- (void)updateDataSourceHasInput:(BOOL)input isEditing:(BOOL)editing
{
  editingCopy = editing;
  inputCopy = input;
  delegate = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  selectedSearchFieldItem = [delegate selectedSearchFieldItem];

  composedWaypoint = [selectedSearchFieldItem composedWaypoint];
  isServerProvidedWaypoint = [composedWaypoint isServerProvidedWaypoint];

  if (!editingCopy || (!inputCopy & isServerProvidedWaypoint) != 0)
  {
    [(SearchDataSource *)self->_acDataSource setActive:0];
    [(RouteNoQueryDataSource *)self->_noQueryDataSource setActive:0];
    tableView = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    [tableView setDataSource:0];

    [(RouteWaypointSuggestionsTableViewController *)self reloadSuggestionsTableView];
  }

  else if (inputCopy)
  {
    if (![self->_acDataSource active])
    {
      [(RouteNoQueryDataSource *)self->_noQueryDataSource setActive:0];
      acDataSource = self->_acDataSource;
      tableView2 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
      [tableView2 setDelegate:acDataSource];

      v12 = self->_acDataSource;
      tableView3 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
      [tableView3 setDataSource:v12];

      [(SearchDataSource *)self->_acDataSource setActive:1];
      [(RouteWaypointSuggestionsTableViewController *)self updateRowHeightForCurrentDataSource];
    }
  }

  else if (![self->_noQueryDataSource active])
  {
    [(SearchDataSource *)self->_acDataSource setActive:0];
    noQueryDataSource = self->_noQueryDataSource;
    tableView4 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    [tableView4 setDelegate:noQueryDataSource];

    v17 = self->_noQueryDataSource;
    tableView5 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
    [tableView5 setDataSource:v17];

    v19 = +[MKLocationManager sharedLocationManager];
    LODWORD(tableView5) = [v19 isLocationServicesApproved];
    isAuthorizedForPreciseLocation = [v19 isAuthorizedForPreciseLocation];
    if (tableView5)
    {
      v21 = isAuthorizedForPreciseLocation;
      delegate2 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
      if (([delegate2 waypointsIncludeCurrentLocationForRouteSearchTableViewController:self] & v21) == 1)
      {
        [(RouteNoQueryDataSource *)self->_noQueryDataSource setUserLocationSearchResult:0];
      }

      else
      {
        delegate3 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
        v24 = [delegate3 userLocationSearchResultForRouteSearchTableViewController:self];
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

- (void)updateCategoryDataSource:(BOOL)source
{
  sourceCopy = source;
  tableView = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView setDataSource:0];

  tableView2 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView2 setDelegate:0];

  [(SearchDataSource *)self->_acDataSource setActive:0];
  [(RouteNoQueryDataSource *)self->_noQueryDataSource setActive:0];
  self->_supportsFullTextSearch = sourceCopy;
  v7 = [SearchHomeDataSource alloc];
  tableView3 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  newTraits = [(RouteWaypointSuggestionsTableViewController *)self newTraits];
  v10 = [(SearchHomeDataSource *)v7 initWithTableView:tableView3 traits:newTraits supportsFullTextSearch:sourceCopy];
  browseCategoryDataSource = self->_browseCategoryDataSource;
  self->_browseCategoryDataSource = v10;

  v12 = self->_browseCategoryDataSource;

  [(DataSource *)v12 setDelegate:self];
}

- (void)reconfigureDataSources
{
  delegate = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  v6 = [delegate personalizedItemManagerForRouteSearchTableViewController:self];

  delegate2 = [(RouteWaypointSuggestionsTableViewController *)self delegate];
  v5 = [delegate2 userLocationSearchResultForRouteSearchTableViewController:self];

  [(SearchDataSource *)self->_acDataSource setMapPersonalizedItems:v6];
  [(SearchDataSource *)self->_acDataSource setUserLocationSearchResult:v5];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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
  view = [(RouteWaypointSuggestionsTableViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  tableView = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  dataSource = [tableView dataSource];
  acDataSource = self->_acDataSource;
  if (dataSource == acDataSource)
  {
    shouldReloadOnHeightChange = [(SearchDataSource *)acDataSource shouldReloadOnHeightChange];

    if (shouldReloadOnHeightChange)
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
  view = [(RouteWaypointSuggestionsTableViewController *)self view];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 stringByReplacingOccurrencesOfString:@"Controller" withString:&stru_1016631F0];
  [view setAccessibilityIdentifier:v6];

  v7 = +[UIColor clearColor];
  tableView = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView setBackgroundColor:v7];

  tableView2 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView2 setSeparatorStyle:1];

  tableView3 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView3 _setDrawsSeparatorAtTopOfSections:0];

  tableView4 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView4 setPreservesSuperviewLayoutMargins:1];

  tableView5 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView5 setSectionHeaderTopPadding:0.0];

  tableView6 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView6 setAccessibilityIdentifier:@"RouteSearchResultsTableView"];

  [(RouteWaypointSuggestionsTableViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v15 = v14;
  tableView7 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  [tableView7 setLayoutMargins:{0.0, v15, 0.0, v15}];

  v17 = [SearchDataSource alloc];
  tableView8 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  v19 = [(SearchDataSource *)v17 initWithTableView:tableView8];
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
  tableView9 = [(RouteWaypointSuggestionsTableViewController *)self tableView];
  v24 = [(RouteNoQueryDataSource *)v22 initWithTableView:tableView9 filterPredicate:v21];
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

- (RouteWaypointSuggestionsTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = RouteWaypointSuggestionsTableViewController;
  v4 = [(RouteWaypointSuggestionsTableViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[MKLocationManager sharedLocationManager];
    v4->_wasLocationServicesApproved = [v5 isLocationServicesApproved];
    v4->_wasAuthorizedForPreciseLocation = [v5 isAuthorizedForPreciseLocation];
  }

  return v4;
}

@end