@interface RoutingAppSelectionController
- (BOOL)_updateSuggestions;
- (RoutingAppSelectionController)initWithTransportType:(int64_t)a3;
- (RoutingAppSelectionControllerDelegate)delegate;
- (id)_appDataForStoreRow:(unint64_t)a3;
- (id)_sanitizedMapItemFromWaypoint:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_sectionAtIndex:(int64_t)a3;
- (void)_cancelRoutingSelection;
- (void)_handleSearchResultError:(BOOL)a3 error:(id)a4;
- (void)_reloadSection:(unint64_t)a3;
- (void)_updateSortedAppStoreAppsForTransportType:(int64_t)a3;
- (void)_updateSortedInstalledAppsForTransportType:(int64_t)a3;
- (void)_useInstalledApp:(id)a3 toRouteFromSource:(id)a4 toDestination:(id)a5;
- (void)didReceiveMemoryWarning;
- (void)reset;
- (void)routingAppSelectionCellRoutePressed:(id)a3;
- (void)routingAppSuggestionProvider:(id)a3 didFailToSuggestStoreApps:(id)a4;
- (void)routingAppSuggestionProvider:(id)a3 didSuggestInstalledApps:(id)a4;
- (void)routingAppSuggestionProvider:(id)a3 didSuggestStoreApps:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateForWaypointSet:(id)a3;
- (void)viewDidLoad;
@end

@implementation RoutingAppSelectionController

- (RoutingAppSelectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)routingAppSelectionCellRoutePressed:(id)a3
{
  v4 = [a3 appProxy];
  [(RoutingAppSelectionController *)self _useInstalledApp:v4 toRouteFromSource:self->_source toDestination:self->_destination];
}

- (void)_updateSortedAppStoreAppsForTransportType:(int64_t)a3
{
  v5 = [RoutingAppSelectionCell _preferredModesForTransportType:?];
  v6 = [NSSet setWithArray:v5];

  v7 = [v6 count];
  if (a3 && v7)
  {
    v8 = [NSMutableArray alloc];
    v9 = [(RoutingAppSelectionController *)self suggestedStoreApps];
    v10 = [v8 initWithArray:v9];

    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100B0AD20;
    v15 = &unk_101638210;
    v16 = v6;
    v17 = self;
    [v10 sortUsingComparator:&v12];
    v11 = [v10 copy];
    [(RoutingAppSelectionController *)self setSortedStoreApps:v11];
  }

  else
  {
    v10 = [(RoutingAppSelectionController *)self suggestedStoreApps];
    [(RoutingAppSelectionController *)self setSortedStoreApps:v10];
  }
}

- (void)_updateSortedInstalledAppsForTransportType:(int64_t)a3
{
  v5 = [RoutingAppSelectionCell _preferredModesForTransportType:?];
  v6 = [NSSet setWithArray:v5];

  v7 = [v6 count];
  if (a3 && v7)
  {
    v8 = [NSMutableArray alloc];
    v9 = [(RoutingAppSelectionController *)self suggestedInstalledApps];
    v10 = [v8 initWithArray:v9];

    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100B0AFF8;
    v15 = &unk_1016381E8;
    v16 = v6;
    v17 = self;
    [v10 sortUsingComparator:&v12];
    v11 = [v10 copy];
    [(RoutingAppSelectionController *)self setSortedInstalledApps:v11];
  }

  else
  {
    v10 = [(RoutingAppSelectionController *)self suggestedInstalledApps];
    [(RoutingAppSelectionController *)self setSortedInstalledApps:v10];
  }
}

- (void)_useInstalledApp:(id)a3 toRouteFromSource:(id)a4 toDestination:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 geoMapItem];
  v12 = -180.0;
  v13 = -180.0;
  v14 = -180.0;
  if (v11)
  {
    v15 = [v9 geoMapItem];
    [v15 coordinate];
    v13 = v16;
    v14 = v17;
  }

  v18 = [v10 geoMapItem];
  v19 = -180.0;
  if (v18)
  {
    v20 = [v10 geoMapItem];
    [v20 coordinate];
    v12 = v21;
    v19 = v22;
  }

  v23 = [v8 bundleIdentifier];
  [GEOAPPortal captureTransitAppLaunchSource:v23 destination:v13 bundleIdentifier:v14, v12, v19];

  v24 = objc_alloc_init(MKDirectionsRequest);
  v25 = [(RoutingAppSelectionController *)self _sanitizedMapItemFromWaypoint:v9];
  [v24 setSource:v25];

  v26 = [(RoutingAppSelectionController *)self _sanitizedMapItemFromWaypoint:v10];
  [v24 setDestination:v26];

  v27 = [(RoutingAppSelectionController *)self transportType];
  if (v27 > 5)
  {
    v28 = 1;
  }

  else
  {
    v28 = qword_101215D00[v27];
  }

  [v24 setTransportType:{v28, v9}];
  v29 = NSTemporaryDirectory();
  v30 = [v29 stringByAppendingPathComponent:@"request"];
  v31 = [v30 stringByAppendingPathExtension:MKDirectionsRequestFileExtension];

  v32 = [NSURL fileURLWithPath:v31];
  v43 = 0;
  v33 = [v24 writeToURL:v32 error:&v43];
  v34 = v43;
  if ((v33 & 1) == 0)
  {
    v35 = sub_100B0B518();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = v32;
      v46 = 2112;
      v47 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Couldn't write directions request to URL: %@.  Error: %@", buf, 0x16u);
    }
  }

  v36 = +[LSApplicationWorkspace defaultWorkspace];
  v37 = [v8 bundleIdentifier];
  v38 = [v36 operationToOpenResource:v32 usingApplication:v37 uniqueDocumentIdentifier:0 userInfo:0 delegate:0];

  [v38 start];
  v39 = +[RoutingAppsManager defaultManager];
  v40 = [v8 bundleIdentifier];
  [v39 recordAppLaunch:v40];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routingAppSelectionControllerDidSelectApp:self];
}

- (id)_sanitizedMapItemFromWaypoint:(id)a3
{
  v3 = a3;
  if ([v3 isCurrentLocation])
  {
    v4 = +[MKMapItem mapItemForCurrentLocation];
    goto LABEL_12;
  }

  v5 = [v3 geoMapItem];
  v6 = [v5 _clientAttributes];
  v7 = [v6 addressBookAttributes];

  if (v7)
  {
    v8 = [v3 geoMapItem];
    [v8 coordinate];
    v10 = v9;
    v12 = v11;

    v13 = [[MKPlacemark alloc] initWithCoordinate:0 addressDictionary:{v10, v12}];
    v4 = [[MKMapItem alloc] initWithPlacemark:v13];
    v14 = [v3 geoMapItem];
    v15 = [v14 contactName];
    if (v15)
    {
      [v4 setName:v15];
    }

    else
    {
      v21 = [v3 geoMapItem];
      v22 = [v21 name];
      [v4 setName:v22];
    }

    goto LABEL_10;
  }

  v16 = [MKMapItem alloc];
  v17 = [v3 geoMapItem];
  v4 = [v16 initWithGeoMapItem:v17 isPlaceHolderPlace:0];

  v18 = [v3 geoMapItem];
  v19 = [v18 name];
  [v4 setName:v19];

  v20 = [v4 _fullSharingURL];
  v13 = [v20 absoluteString];

  if (v13)
  {
    v14 = [NSURL URLWithString:v13];
    [v4 setUrl:v14];
LABEL_10:
  }

LABEL_12:

  return v4;
}

- (void)routingAppSuggestionProvider:(id)a3 didSuggestInstalledApps:(id)a4
{
  v5 = a4;
  v6 = sub_100B0B518();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received %lu Installed App suggestions", &v7, 0xCu);
  }

  [(RoutingAppSelectionController *)self setSuggestedInstalledApps:v5];
  [(RoutingAppSelectionController *)self _updateSortedInstalledAppsForTransportType:self->_transportType];
  [(RoutingAppSelectionController *)self _reloadSection:0];
}

- (void)routingAppSuggestionProvider:(id)a3 didFailToSuggestStoreApps:(id)a4
{
  v5 = a4;
  v6 = sub_100B0B518();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v5 description];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error fetching store suggestions: %@.", &v8, 0xCu);
  }

  [(RoutingAppSelectionController *)self setSuggestedStoreApps:&__NSArray0__struct];
  [(RoutingAppSelectionController *)self _reloadSection:1];
}

- (void)routingAppSuggestionProvider:(id)a3 didSuggestStoreApps:(id)a4
{
  v5 = a4;
  v6 = sub_100B0B518();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received %lu App Store suggestions", &v7, 0xCu);
  }

  [(RoutingAppSelectionController *)self setSuggestedStoreApps:v5];
  [(RoutingAppSelectionController *)self _updateSortedAppStoreAppsForTransportType:self->_transportType];
  [(RoutingAppSelectionController *)self _reloadSection:1];
}

- (void)_reloadSection:(unint64_t)a3
{
  if (-[RoutingAppSelectionController isViewLoaded](self, "isViewLoaded") && (-[RoutingAppSelectionController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v8 = [[NSIndexSet alloc] initWithIndex:a3];
    v7 = [(RoutingAppSelectionController *)self tableView];
    [v7 reloadSections:v8 withRowAnimation:100];
  }

  else
  {
    v8 = [(RoutingAppSelectionController *)self tableView];
    [v8 reloadData];
  }
}

- (void)_cancelRoutingSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routingAppSelectionControllerDidCancel:self];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  if ([v8 section] == 1)
  {
    v5 = [(RoutingAppSelectionController *)self tableView];
    [v5 deselectRowAtIndexPath:v8 animated:1];

    v6 = -[RoutingAppSelectionController _appDataForStoreRow:](self, "_appDataForStoreRow:", [v8 row]);
    v7 = [v6 iOSBundleIdentifier];
    [GEOAPPortal captureUserAction:45 target:733 value:v7];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = -[RoutingAppSelectionController _sectionAtIndex:](self, "_sectionAtIndex:", [v7 section]);
  if (v9)
  {
    if (v9 == 1 && ![(NSArray *)self->_sortedStoreApps count])
    {
      v10 = [v6 dequeueReusableCellWithIdentifier:@"LoadingCell" forIndexPath:v7];
      v11 = [(RoutingAppSelectionController *)self suggestedStoreApps];
LABEL_11:
      v12 = v11;
      [v10 setMode:v11 != 0];
      goto LABEL_12;
    }
  }

  else if (![(NSArray *)self->_sortedInstalledApps count])
  {
    v10 = [v6 dequeueReusableCellWithIdentifier:@"LoadingCell" forIndexPath:v7];
    v11 = [(RoutingAppSelectionController *)self suggestedInstalledApps];
    goto LABEL_11;
  }

  v10 = [v6 dequeueReusableCellWithIdentifier:@"AppCell" forIndexPath:v7];
  [v10 setDelegate:self];
  [v10 setIntendedTransportType:self->_transportType];
  if ([v7 section])
  {
    if ([v7 section] != 1)
    {
      goto LABEL_13;
    }

    v12 = [(RoutingAppSelectionController *)self _appDataForStoreRow:v8];
    [v10 setAppStoreApp:v12];
  }

  else
  {
    v12 = [(NSArray *)self->_sortedInstalledApps objectAtIndexedSubscript:v8];
    [v10 setAppProxy:v12];
  }

LABEL_12:

LABEL_13:

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(RoutingAppSelectionController *)self _sectionAtIndex:a4];
  if (v7)
  {
    if (v7 != 1)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"Header"];
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"From the App Store";
  }

  else
  {
    v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"Header"];
    v12 = MGGetSInt32Answer();
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    if ((v12 - 1) > 8)
    {
      v11 = @"[RoutingApps] Installed Section Header (Device)";
    }

    else
    {
      v11 = *(&off_101638250 + (v12 - 1));
    }
  }

  v13 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];
  [v8 setTitle:v13];

  [v8 setAccessibilityIdentifiersWithBaseString:@"RoutingApps"];
LABEL_9:

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(RoutingAppSelectionController *)self _sectionAtIndex:a4];
  if (v5)
  {
    if (v5 != 1)
    {
      return 0;
    }

    v6 = &OBJC_IVAR___RoutingAppSelectionController__sortedStoreApps;
  }

  else
  {
    v6 = &OBJC_IVAR___RoutingAppSelectionController__sortedInstalledApps;
  }

  result = [*(&self->super.super.super.super.isa + *v6) count];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (unint64_t)_sectionAtIndex:(int64_t)a3
{
  if ([(NSArray *)self->_sections count]<= a3)
  {
    return -1;
  }

  v5 = [(NSArray *)self->_sections objectAtIndexedSubscript:a3];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

- (id)_appDataForStoreRow:(unint64_t)a3
{
  v4 = [(RoutingAppSelectionController *)self sortedStoreApps];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)reset
{
  locationLookupOperation = self->_locationLookupOperation;
  if (locationLookupOperation)
  {
    [(MKLocationManagerOperation *)locationLookupOperation cancel];
    v4 = self->_locationLookupOperation;
    self->_locationLookupOperation = 0;
  }

  suggestionProvider = self->_suggestionProvider;

  [(RoutingAppSuggestionProvider *)suggestionProvider reset];
}

- (void)_handleSearchResultError:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = sub_100B0B518();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = @"Destination";
    if (v4)
    {
      v7 = @"Source";
    }

    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error resolving %{public}@. %@", &v8, 0x16u);
  }
}

- (BOOL)_updateSuggestions
{
  if ([(RoutingAppSelectionController *)self hasResolvedEndpoints])
  {
    v3 = sub_100B0B518();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      v4 = "Endpoints are already resolved, ignoring update command.";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, v23, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v5 = [(GEOComposedWaypoint *)self->_source latLng];
  [v5 lat];
  v7 = v6;
  v8 = [(GEOComposedWaypoint *)self->_source latLng];
  [v8 lng];
  v10 = v9;

  if (!self->_source || fabs(v10) > 180.0 || v7 < -90.0 || v7 > 90.0)
  {
    v3 = sub_100B0B518();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      v4 = "Can't update suggestions yet. Source coordinate is not yet resolved.";
      goto LABEL_20;
    }

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v11 = [(GEOComposedWaypoint *)self->_destination latLng];
  [v11 lat];
  v13 = v12;
  v14 = [(GEOComposedWaypoint *)self->_destination latLng];
  [v14 lng];
  v16 = v15;

  if (!self->_destination || fabs(v16) > 180.0 || v13 < -90.0 || v13 > 90.0)
  {
    v3 = sub_100B0B518();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      v4 = "Can't update suggestions yet. Destination coordinate is not yet resolved.";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  [(RoutingAppSelectionController *)self setResolvedEndpoints:1];
  v17 = sub_100B0B518();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "We've got the start and end coordinates. Requesting suggestions.", v23, 2u);
  }

  [(RoutingAppSuggestionProvider *)self->_suggestionProvider requestSuggestionsForSource:v7 destination:v10, v13, v16];
  destination = self->_destination;
  v24[0] = self->_source;
  v24[1] = destination;
  v3 = [NSArray arrayWithObjects:v24 count:2];
  v19 = [(RoutingAppSelectionController *)self transportType]- 1;
  if (v19 > 4)
  {
    v20 = 4;
  }

  else
  {
    v20 = dword_101216100[v19];
  }

  [HistoryEntryRecentsItem saveWaypoints:v3 transportType:v20];
  v21 = 1;
LABEL_22:

  return v21;
}

- (void)updateForWaypointSet:(id)a3
{
  v4 = a3;
  [(RoutingAppSelectionController *)self setResolvedEndpoints:0];
  [(RoutingAppSelectionController *)self setSortedStoreApps:0];
  [(RoutingAppSelectionController *)self setSortedInstalledApps:0];
  [(RoutingAppSelectionController *)self setSuggestedStoreApps:0];
  [(RoutingAppSelectionController *)self setSuggestedInstalledApps:0];
  v5 = [(RoutingAppSelectionController *)self suggestionProvider];
  [v5 reset];

  v6 = [(RoutingAppSelectionController *)self tableView];
  [v6 reloadData];

  v7 = [v4 origin];
  v8 = [v7 copy];
  [(RoutingAppSelectionController *)self setSource:v8];

  v9 = [v4 destination];

  v10 = [v9 copy];
  [(RoutingAppSelectionController *)self setDestination:v10];

  p_source = &self->_source;
  if (([(GEOComposedWaypoint *)self->_source isCurrentLocation]& 1) != 0 || [(GEOComposedWaypoint *)self->_destination isCurrentLocation])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100B0C6EC;
    v14[3] = &unk_1016381C0;
    v14[4] = self;
    v12 = objc_retainBlock(v14);
    if (([(GEOComposedWaypoint *)*p_source isCurrentLocation]& 1) == 0)
    {
      p_source = &self->_destination;
    }

    v13 = (v12[2])(v12, *p_source);
    [(RoutingAppSelectionController *)self setLocationLookupOperation:v13];
  }

  [(RoutingAppSelectionController *)self _updateSuggestions];
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = RoutingAppSelectionController;
  [(RoutingAppSelectionController *)&v3 didReceiveMemoryWarning];
  v2 = +[MKAppImageManager sharedImageManager];
  [v2 clearImageCache];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = RoutingAppSelectionController;
  [(RoutingAppSelectionController *)&v7 viewDidLoad];
  v3 = [(RoutingAppSelectionController *)self tableView];
  [v3 setSeparatorStyle:1];
  [v3 _setMarginWidth:15.0];
  [v3 setSectionHeaderTopPadding:0.0];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setBackgroundView:0];
  v5 = [(RoutingAppSelectionController *)self theme];
  v6 = [v5 hairlineColor];
  [v3 setSeparatorColor:v6];

  [v3 setRowHeight:UITableViewAutomaticDimension];
  [v3 setEstimatedRowHeight:84.0];
  [v3 setSectionHeaderHeight:UITableViewAutomaticDimension];
  [v3 _setHeaderAndFooterViewsFloat:0];
  [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"Header"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"AppCell"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"LoadingCell"];
}

- (RoutingAppSelectionController)initWithTransportType:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = RoutingAppSelectionController;
  v4 = [(RoutingAppSelectionController *)&v14 initWithStyle:0];
  v5 = v4;
  if (v4)
  {
    v4->_transportType = a3;
    v6 = [(RoutingAppSelectionController *)v4 navigationItem];
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v5 action:"_cancelRoutingSelection"];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Routing Apps" value:@"localized string not found" table:0];
    [v6 setTitle:v9];

    [v6 setLeftBarButtonItem:v7];
    v10 = objc_alloc_init(RoutingAppSuggestionProvider);
    suggestionProvider = v5->_suggestionProvider;
    v5->_suggestionProvider = v10;

    [(RoutingAppSuggestionProvider *)v5->_suggestionProvider setDelegate:v5];
    if ([(RoutingAppSuggestionProvider *)v5->_suggestionProvider appInstallationDisallowed])
    {
      v12 = &off_1016ED4D8;
    }

    else
    {
      v12 = &off_1016ED4F0;
    }

    objc_storeStrong(&v5->_sections, v12);
  }

  return v5;
}

@end