@interface RoutingAppSelectionController
- (BOOL)_updateSuggestions;
- (RoutingAppSelectionController)initWithTransportType:(int64_t)type;
- (RoutingAppSelectionControllerDelegate)delegate;
- (id)_appDataForStoreRow:(unint64_t)row;
- (id)_sanitizedMapItemFromWaypoint:(id)waypoint;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_sectionAtIndex:(int64_t)index;
- (void)_cancelRoutingSelection;
- (void)_handleSearchResultError:(BOOL)error error:(id)a4;
- (void)_reloadSection:(unint64_t)section;
- (void)_updateSortedAppStoreAppsForTransportType:(int64_t)type;
- (void)_updateSortedInstalledAppsForTransportType:(int64_t)type;
- (void)_useInstalledApp:(id)app toRouteFromSource:(id)source toDestination:(id)destination;
- (void)didReceiveMemoryWarning;
- (void)reset;
- (void)routingAppSelectionCellRoutePressed:(id)pressed;
- (void)routingAppSuggestionProvider:(id)provider didFailToSuggestStoreApps:(id)apps;
- (void)routingAppSuggestionProvider:(id)provider didSuggestInstalledApps:(id)apps;
- (void)routingAppSuggestionProvider:(id)provider didSuggestStoreApps:(id)apps;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateForWaypointSet:(id)set;
- (void)viewDidLoad;
@end

@implementation RoutingAppSelectionController

- (RoutingAppSelectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)routingAppSelectionCellRoutePressed:(id)pressed
{
  appProxy = [pressed appProxy];
  [(RoutingAppSelectionController *)self _useInstalledApp:appProxy toRouteFromSource:self->_source toDestination:self->_destination];
}

- (void)_updateSortedAppStoreAppsForTransportType:(int64_t)type
{
  v5 = [RoutingAppSelectionCell _preferredModesForTransportType:?];
  v6 = [NSSet setWithArray:v5];

  v7 = [v6 count];
  if (type && v7)
  {
    v8 = [NSMutableArray alloc];
    suggestedStoreApps = [(RoutingAppSelectionController *)self suggestedStoreApps];
    suggestedStoreApps2 = [v8 initWithArray:suggestedStoreApps];

    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100B0AD20;
    v15 = &unk_101638210;
    v16 = v6;
    selfCopy = self;
    [suggestedStoreApps2 sortUsingComparator:&v12];
    v11 = [suggestedStoreApps2 copy];
    [(RoutingAppSelectionController *)self setSortedStoreApps:v11];
  }

  else
  {
    suggestedStoreApps2 = [(RoutingAppSelectionController *)self suggestedStoreApps];
    [(RoutingAppSelectionController *)self setSortedStoreApps:suggestedStoreApps2];
  }
}

- (void)_updateSortedInstalledAppsForTransportType:(int64_t)type
{
  v5 = [RoutingAppSelectionCell _preferredModesForTransportType:?];
  v6 = [NSSet setWithArray:v5];

  v7 = [v6 count];
  if (type && v7)
  {
    v8 = [NSMutableArray alloc];
    suggestedInstalledApps = [(RoutingAppSelectionController *)self suggestedInstalledApps];
    suggestedInstalledApps2 = [v8 initWithArray:suggestedInstalledApps];

    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100B0AFF8;
    v15 = &unk_1016381E8;
    v16 = v6;
    selfCopy = self;
    [suggestedInstalledApps2 sortUsingComparator:&v12];
    v11 = [suggestedInstalledApps2 copy];
    [(RoutingAppSelectionController *)self setSortedInstalledApps:v11];
  }

  else
  {
    suggestedInstalledApps2 = [(RoutingAppSelectionController *)self suggestedInstalledApps];
    [(RoutingAppSelectionController *)self setSortedInstalledApps:suggestedInstalledApps2];
  }
}

- (void)_useInstalledApp:(id)app toRouteFromSource:(id)source toDestination:(id)destination
{
  appCopy = app;
  sourceCopy = source;
  destinationCopy = destination;
  geoMapItem = [sourceCopy geoMapItem];
  v12 = -180.0;
  v13 = -180.0;
  v14 = -180.0;
  if (geoMapItem)
  {
    geoMapItem2 = [sourceCopy geoMapItem];
    [geoMapItem2 coordinate];
    v13 = v16;
    v14 = v17;
  }

  geoMapItem3 = [destinationCopy geoMapItem];
  v19 = -180.0;
  if (geoMapItem3)
  {
    geoMapItem4 = [destinationCopy geoMapItem];
    [geoMapItem4 coordinate];
    v12 = v21;
    v19 = v22;
  }

  bundleIdentifier = [appCopy bundleIdentifier];
  [GEOAPPortal captureTransitAppLaunchSource:bundleIdentifier destination:v13 bundleIdentifier:v14, v12, v19];

  v24 = objc_alloc_init(MKDirectionsRequest);
  v25 = [(RoutingAppSelectionController *)self _sanitizedMapItemFromWaypoint:sourceCopy];
  [v24 setSource:v25];

  v26 = [(RoutingAppSelectionController *)self _sanitizedMapItemFromWaypoint:destinationCopy];
  [v24 setDestination:v26];

  transportType = [(RoutingAppSelectionController *)self transportType];
  if (transportType > 5)
  {
    v28 = 1;
  }

  else
  {
    v28 = qword_101215D00[transportType];
  }

  [v24 setTransportType:{v28, sourceCopy}];
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
  bundleIdentifier2 = [appCopy bundleIdentifier];
  v38 = [v36 operationToOpenResource:v32 usingApplication:bundleIdentifier2 uniqueDocumentIdentifier:0 userInfo:0 delegate:0];

  [v38 start];
  v39 = +[RoutingAppsManager defaultManager];
  bundleIdentifier3 = [appCopy bundleIdentifier];
  [v39 recordAppLaunch:bundleIdentifier3];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routingAppSelectionControllerDidSelectApp:self];
}

- (id)_sanitizedMapItemFromWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if ([waypointCopy isCurrentLocation])
  {
    v4 = +[MKMapItem mapItemForCurrentLocation];
    goto LABEL_12;
  }

  geoMapItem = [waypointCopy geoMapItem];
  _clientAttributes = [geoMapItem _clientAttributes];
  addressBookAttributes = [_clientAttributes addressBookAttributes];

  if (addressBookAttributes)
  {
    geoMapItem2 = [waypointCopy geoMapItem];
    [geoMapItem2 coordinate];
    v10 = v9;
    v12 = v11;

    absoluteString = [[MKPlacemark alloc] initWithCoordinate:0 addressDictionary:{v10, v12}];
    v4 = [[MKMapItem alloc] initWithPlacemark:absoluteString];
    geoMapItem3 = [waypointCopy geoMapItem];
    contactName = [geoMapItem3 contactName];
    if (contactName)
    {
      [v4 setName:contactName];
    }

    else
    {
      geoMapItem4 = [waypointCopy geoMapItem];
      name = [geoMapItem4 name];
      [v4 setName:name];
    }

    goto LABEL_10;
  }

  v16 = [MKMapItem alloc];
  geoMapItem5 = [waypointCopy geoMapItem];
  v4 = [v16 initWithGeoMapItem:geoMapItem5 isPlaceHolderPlace:0];

  geoMapItem6 = [waypointCopy geoMapItem];
  name2 = [geoMapItem6 name];
  [v4 setName:name2];

  _fullSharingURL = [v4 _fullSharingURL];
  absoluteString = [_fullSharingURL absoluteString];

  if (absoluteString)
  {
    geoMapItem3 = [NSURL URLWithString:absoluteString];
    [v4 setUrl:geoMapItem3];
LABEL_10:
  }

LABEL_12:

  return v4;
}

- (void)routingAppSuggestionProvider:(id)provider didSuggestInstalledApps:(id)apps
{
  appsCopy = apps;
  v6 = sub_100B0B518();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [appsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received %lu Installed App suggestions", &v7, 0xCu);
  }

  [(RoutingAppSelectionController *)self setSuggestedInstalledApps:appsCopy];
  [(RoutingAppSelectionController *)self _updateSortedInstalledAppsForTransportType:self->_transportType];
  [(RoutingAppSelectionController *)self _reloadSection:0];
}

- (void)routingAppSuggestionProvider:(id)provider didFailToSuggestStoreApps:(id)apps
{
  appsCopy = apps;
  v6 = sub_100B0B518();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [appsCopy description];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error fetching store suggestions: %@.", &v8, 0xCu);
  }

  [(RoutingAppSelectionController *)self setSuggestedStoreApps:&__NSArray0__struct];
  [(RoutingAppSelectionController *)self _reloadSection:1];
}

- (void)routingAppSuggestionProvider:(id)provider didSuggestStoreApps:(id)apps
{
  appsCopy = apps;
  v6 = sub_100B0B518();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [appsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received %lu App Store suggestions", &v7, 0xCu);
  }

  [(RoutingAppSelectionController *)self setSuggestedStoreApps:appsCopy];
  [(RoutingAppSelectionController *)self _updateSortedAppStoreAppsForTransportType:self->_transportType];
  [(RoutingAppSelectionController *)self _reloadSection:1];
}

- (void)_reloadSection:(unint64_t)section
{
  if (-[RoutingAppSelectionController isViewLoaded](self, "isViewLoaded") && (-[RoutingAppSelectionController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    tableView2 = [[NSIndexSet alloc] initWithIndex:section];
    tableView = [(RoutingAppSelectionController *)self tableView];
    [tableView reloadSections:tableView2 withRowAnimation:100];
  }

  else
  {
    tableView2 = [(RoutingAppSelectionController *)self tableView];
    [tableView2 reloadData];
  }
}

- (void)_cancelRoutingSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routingAppSelectionControllerDidCancel:self];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    tableView = [(RoutingAppSelectionController *)self tableView];
    [tableView deselectRowAtIndexPath:pathCopy animated:1];

    v6 = -[RoutingAppSelectionController _appDataForStoreRow:](self, "_appDataForStoreRow:", [pathCopy row]);
    iOSBundleIdentifier = [v6 iOSBundleIdentifier];
    [GEOAPPortal captureUserAction:45 target:733 value:iOSBundleIdentifier];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  v9 = -[RoutingAppSelectionController _sectionAtIndex:](self, "_sectionAtIndex:", [pathCopy section]);
  if (v9)
  {
    if (v9 == 1 && ![(NSArray *)self->_sortedStoreApps count])
    {
      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"LoadingCell" forIndexPath:pathCopy];
      suggestedStoreApps = [(RoutingAppSelectionController *)self suggestedStoreApps];
LABEL_11:
      v12 = suggestedStoreApps;
      [v10 setMode:suggestedStoreApps != 0];
      goto LABEL_12;
    }
  }

  else if (![(NSArray *)self->_sortedInstalledApps count])
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"LoadingCell" forIndexPath:pathCopy];
    suggestedStoreApps = [(RoutingAppSelectionController *)self suggestedInstalledApps];
    goto LABEL_11;
  }

  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"AppCell" forIndexPath:pathCopy];
  [v10 setDelegate:self];
  [v10 setIntendedTransportType:self->_transportType];
  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(RoutingAppSelectionController *)self _sectionAtIndex:section];
  if (v7)
  {
    if (v7 != 1)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"Header"];
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"From the App Store";
  }

  else
  {
    v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"Header"];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(RoutingAppSelectionController *)self _sectionAtIndex:section];
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

- (unint64_t)_sectionAtIndex:(int64_t)index
{
  if ([(NSArray *)self->_sections count]<= index)
  {
    return -1;
  }

  v5 = [(NSArray *)self->_sections objectAtIndexedSubscript:index];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)_appDataForStoreRow:(unint64_t)row
{
  sortedStoreApps = [(RoutingAppSelectionController *)self sortedStoreApps];
  v5 = [sortedStoreApps objectAtIndexedSubscript:row];

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

- (void)_handleSearchResultError:(BOOL)error error:(id)a4
{
  errorCopy = error;
  v5 = a4;
  v6 = sub_100B0B518();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = @"Destination";
    if (errorCopy)
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

  latLng = [(GEOComposedWaypoint *)self->_source latLng];
  [latLng lat];
  v7 = v6;
  latLng2 = [(GEOComposedWaypoint *)self->_source latLng];
  [latLng2 lng];
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

  latLng3 = [(GEOComposedWaypoint *)self->_destination latLng];
  [latLng3 lat];
  v13 = v12;
  latLng4 = [(GEOComposedWaypoint *)self->_destination latLng];
  [latLng4 lng];
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

- (void)updateForWaypointSet:(id)set
{
  setCopy = set;
  [(RoutingAppSelectionController *)self setResolvedEndpoints:0];
  [(RoutingAppSelectionController *)self setSortedStoreApps:0];
  [(RoutingAppSelectionController *)self setSortedInstalledApps:0];
  [(RoutingAppSelectionController *)self setSuggestedStoreApps:0];
  [(RoutingAppSelectionController *)self setSuggestedInstalledApps:0];
  suggestionProvider = [(RoutingAppSelectionController *)self suggestionProvider];
  [suggestionProvider reset];

  tableView = [(RoutingAppSelectionController *)self tableView];
  [tableView reloadData];

  origin = [setCopy origin];
  v8 = [origin copy];
  [(RoutingAppSelectionController *)self setSource:v8];

  destination = [setCopy destination];

  v10 = [destination copy];
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
  tableView = [(RoutingAppSelectionController *)self tableView];
  [tableView setSeparatorStyle:1];
  [tableView _setMarginWidth:15.0];
  [tableView setSectionHeaderTopPadding:0.0];
  v4 = +[UIColor clearColor];
  [tableView setBackgroundColor:v4];

  [tableView setBackgroundView:0];
  theme = [(RoutingAppSelectionController *)self theme];
  hairlineColor = [theme hairlineColor];
  [tableView setSeparatorColor:hairlineColor];

  [tableView setRowHeight:UITableViewAutomaticDimension];
  [tableView setEstimatedRowHeight:84.0];
  [tableView setSectionHeaderHeight:UITableViewAutomaticDimension];
  [tableView _setHeaderAndFooterViewsFloat:0];
  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"Header"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"AppCell"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"LoadingCell"];
}

- (RoutingAppSelectionController)initWithTransportType:(int64_t)type
{
  v14.receiver = self;
  v14.super_class = RoutingAppSelectionController;
  v4 = [(RoutingAppSelectionController *)&v14 initWithStyle:0];
  v5 = v4;
  if (v4)
  {
    v4->_transportType = type;
    navigationItem = [(RoutingAppSelectionController *)v4 navigationItem];
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v5 action:"_cancelRoutingSelection"];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Routing Apps" value:@"localized string not found" table:0];
    [navigationItem setTitle:v9];

    [navigationItem setLeftBarButtonItem:v7];
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