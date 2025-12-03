@interface RouteSearchViewController
- (BOOL)_isReadyToRoute;
- (BOOL)canDeleteCurrentFieldIndex;
- (BOOL)hasInputsInSearchField;
- (BOOL)routeSearchController:(id)controller waypointsIncludeObject:(id)object;
- (BOOL)waypointsIncludeCurrentLocationForRouteSearchTableViewController:(id)controller;
- (RoutePlanningDataCoordination)dataCoordinator;
- (RouteSearchViewController)initWithDelegate:(id)delegate dataCoordinator:(id)coordinator;
- (RouteSearchViewController)initWithDelegate:(id)delegate items:(id)items waypointIndex:(unint64_t)index selectionHandler:(id)handler;
- (RouteSearchViewController)initWithWaypointEditor:(id)editor suggestionsTableView:(id)view delegate:(id)delegate dataCoordinator:(id)coordinator;
- (RouteSearchViewControllerDelegate)delegate;
- (RouteWaypointSearchFields)routeSearchFields;
- (id)_itemsForRouteRequest;
- (id)latLngForRouteSearchTableViewController:(id)controller;
- (id)latLngFromSearchFieldItem:(id)item;
- (id)personalizedItemManagerForRouteSearchTableViewController:(id)controller;
- (id)selectedSearchFieldItem;
- (id)traitsForRouteSearchTableViewController:(id)controller;
- (id)userLocationSearchResultForRouteSearchTableViewController:(id)controller;
- (int)searchFieldTypeForAnalytics;
- (unint64_t)_currentlySelectedIndexForAddStop;
- (void)_addSubViewsWithTextSearchSupport:(BOOL)support;
- (void)_cancelTapped:(id)tapped;
- (void)_cancelTapped:(id)tapped exitRoutePlanning:(BOOL)planning;
- (void)_cleanUpOnDismiss;
- (void)_initOfflinePlaceHolderWithTicket;
- (void)_requestRoute;
- (void)_requestRouteWithItems:(id)items;
- (void)_selectFieldAtIndex:(unint64_t)index beginEditing:(BOOL)editing;
- (void)_setupConstraints:(BOOL)constraints;
- (void)_setupHeaderContentViewConstraints;
- (void)_updateTitle;
- (void)deleteCurrentFieldIndex;
- (void)didDismissByGesture;
- (void)didResignCurrent;
- (void)didTapOnQueryAcceleratorWithItem:(id)item;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)makeAFieldFirstResponderIfNeeded;
- (void)replaceSelectedFieldWithItem:(id)item;
- (void)routeSearch:(id)search didSearchForItem:(id)item previousSearchItem:(id)searchItem;
- (void)routeSearch:(id)search didUpdateInputText:(id)text atIndex:(unint64_t)index;
- (void)routeSearchController:(id)controller didSelectItem:(id)item;
- (void)routeSearchController:(id)controller doSearchItem:(id)item userInfo:(id)info;
- (void)routeSearchFields:(id)fields didClearInputTextForWaypointAtIndex:(unint64_t)waypointIndex;
- (void)routeSearchFieldsDidBeginEditing:(id)editing;
- (void)routeSearchFieldsDidUpdateItemsForRouteRequest:(id)request;
- (void)selectFieldIndex:(unint64_t)index beginEditing:(BOOL)editing;
- (void)setDataCoordinator:(id)coordinator;
- (void)setDelegate:(id)delegate;
- (void)setHeaderTitle:(id)title;
- (void)setPauseSelectionUpdates:(BOOL)updates;
- (void)setTitle:(id)title;
- (void)updateFieldsWithCurrentDirectionItem;
- (void)updateWithItems:(id)items;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
@end

@implementation RouteSearchViewController

- (RouteSearchViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RoutePlanningDataCoordination)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (void)_initOfflinePlaceHolderWithTicket
{
  objc_initWeak(&location, self);
  offlineTextSearchSupportQueue = self->_offlineTextSearchSupportQueue;
  if (!offlineTextSearchSupportQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.Maps.text.search.support.queue", v4);
    v6 = self->_offlineTextSearchSupportQueue;
    self->_offlineTextSearchSupportQueue = v5;

    offlineTextSearchSupportQueue = self->_offlineTextSearchSupportQueue;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_101013808;
  v7[3] = &unk_101661B98;
  objc_copyWeak(&v8, &location);
  dispatch_async(offlineTextSearchSupportQueue, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (int)searchFieldTypeForAnalytics
{
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];
  v4 = [fieldsViewController conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 2;
  }

  fieldsViewController2 = [(RouteSearchViewController *)self fieldsViewController];
  if (objc_opt_respondsToSelector())
  {
    searchFieldTypeForAnalytics = [fieldsViewController2 searchFieldTypeForAnalytics];
  }

  else
  {
    searchFieldTypeForAnalytics = 2;
  }

  return searchFieldTypeForAnalytics;
}

- (void)_cancelTapped:(id)tapped exitRoutePlanning:(BOOL)planning
{
  planningCopy = planning;
  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:18 onTarget:-[RouteSearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
  [routeSearchFields endEditingFields];

  selectionHandler = self->_selectionHandler;
  if (selectionHandler)
  {
    v9 = *(selectionHandler + 2);

    v9();
  }

  else
  {
    delegate = [(RouteSearchViewController *)self delegate];
    [delegate routeSearchViewControllerDidDismiss:self shouldExitRoutePlanning:planningCopy];
  }
}

- (void)_cancelTapped:(id)tapped
{
  tappedCopy = tapped;
  [(RouteSearchViewController *)self _cancelTapped:tappedCopy exitRoutePlanning:[(RouteSearchViewController *)self exitRoutePlanningOnCancel]];
}

- (void)didTapOnQueryAcceleratorWithItem:(id)item
{
  itemCopy = item;
  searchFieldView = [(RouteSearchViewController *)self searchFieldView];
  [searchFieldView shouldReplaceTextWithCompletion:itemCopy];
}

- (void)routeSearchController:(id)controller doSearchItem:(id)item userInfo:(id)info
{
  infoCopy = info;
  itemCopy = item;
  suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
  [suggestionsTableViewController reset];

  delegate = [(RouteSearchViewController *)self delegate];
  suggestionsTableViewController2 = [(RouteSearchViewController *)self suggestionsTableViewController];
  recentAutocompleteSessionData = [suggestionsTableViewController2 recentAutocompleteSessionData];
  [delegate routeSearchViewController:self wantsToPerformSearchWithItem:itemCopy userInfo:infoCopy autocompleteSessionData:recentAutocompleteSessionData];
}

- (void)routeSearchController:(id)controller didSelectItem:(id)item
{
  itemCopy = item;
  v6 = [SearchFieldItem searchFieldItemWithObject:itemCopy expandRecentsItem:1 preserveContact:1];
  if (v6)
  {
    routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
    [routeSearchFields updateSearchFieldsFromIndex:0x7FFFFFFFFFFFFFFFLL withItem:v6];
  }

  else
  {
    objc_opt_class();
    v8 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    historyEntry = [v10 historyEntry];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_101013F60;
    v13[3] = &unk_101661B48;
    v13[4] = self;
    [historyEntry ifSearch:0 ifRoute:v13 ifPlaceDisplay:0 ifTransitLineItem:0];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = +[MKMapService sharedService];
      [v12 captureUserAction:2025 onTarget:-[RouteSearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
    }
  }
}

- (BOOL)waypointsIncludeCurrentLocationForRouteSearchTableViewController:(id)controller
{
  routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
  containsCurrentLocationItem = [routeSearchFields containsCurrentLocationItem];

  return containsCurrentLocationItem;
}

- (BOOL)routeSearchController:(id)controller waypointsIncludeObject:(id)object
{
  objectCopy = object;
  routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
  v7 = [routeSearchFields containsWaypointForItem:objectCopy];

  return v7;
}

- (id)traitsForRouteSearchTableViewController:(id)controller
{
  delegate = [(RouteSearchViewController *)self delegate];
  v5 = [delegate traitsForRouteSearchViewController:self];

  if (MapsFeature_IsEnabled_VisitedPlaces())
  {
    v6 = 37;
  }

  else
  {
    v6 = 35;
  }

  [v5 setPlaceSummaryRevision:v6];
  [v5 addSupportedPlaceSummaryFormatType:1];
  [v5 addSupportedPlaceSummaryFormatType:2];
  [v5 addSupportedPlaceSummaryFormatType:3];
  [v5 setSupportClientRankingFeatureMetadata:1];
  [v5 setSupportClientRankingCompositeFeatures:1];
  [v5 setIsRoutePlanningEditStopFillRequest:{-[RouteSearchViewController isUsingExistingWaypointNameForAutocomplete](self, "isUsingExistingWaypointNameForAutocomplete")}];
  [v5 addSupportedAutocompleteListType:2];

  return v5;
}

- (id)latLngForRouteSearchTableViewController:(id)controller
{
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];

  if (!fieldsViewController)
  {
    searchFieldView = [(RouteSearchViewController *)self searchFieldView];
    previousSearchFieldItem = [searchFieldView previousSearchFieldItem];
    latLng = [(RouteSearchViewController *)self latLngFromSearchFieldItem:previousSearchFieldItem];

LABEL_9:
    latLng = latLng;
    v11 = latLng;
    goto LABEL_10;
  }

  fieldsViewController2 = [(RouteSearchViewController *)self fieldsViewController];
  _currentlySelectedIndexForAddStop = [fieldsViewController2 _currentlySelectedIndexForAddStop];

  latLng = 0;
  if (_currentlySelectedIndexForAddStop && _currentlySelectedIndexForAddStop != 0x7FFFFFFFFFFFFFFFLL)
  {
    fieldsViewController3 = [(RouteSearchViewController *)self fieldsViewController];
    items = [fieldsViewController3 items];

    v10 = [items objectAtIndexedSubscript:_currentlySelectedIndexForAddStop - 1];
    latLng = [v10 latLng];
  }

  v11 = 0;
  if (_currentlySelectedIndexForAddStop && _currentlySelectedIndexForAddStop != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

- (id)userLocationSearchResultForRouteSearchTableViewController:(id)controller
{
  delegate = [(RouteSearchViewController *)self delegate];
  v5 = [delegate userLocationSearchResultForRouteSearchViewController:self];

  return v5;
}

- (id)personalizedItemManagerForRouteSearchTableViewController:(id)controller
{
  delegate = [(RouteSearchViewController *)self delegate];
  v5 = [delegate personalizedItemManagerForRouteSearchViewController:self];

  return v5;
}

- (void)routeSearchFields:(id)fields didClearInputTextForWaypointAtIndex:(unint64_t)waypointIndex
{
  fieldsCopy = fields;
  if (waypointIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];
    if (fieldsViewController)
    {

      waypointIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (self->_waypointIndex == -1)
    {
      waypointIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      waypointIndex = self->_waypointIndex;
    }
  }

  v7 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(RouteSearchViewController *)self currentUITargetForAnalytics];
  if ((~waypointIndex & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInteger:waypointIndex];
    stringValue = [v9 stringValue];
    [v7 captureUserAction:278 onTarget:currentUITargetForAnalytics eventValue:stringValue];
  }

  else
  {
    [v7 captureUserAction:278 onTarget:currentUITargetForAnalytics eventValue:0];
  }
}

- (void)routeSearch:(id)search didSearchForItem:(id)item previousSearchItem:(id)searchItem
{
  itemCopy = item;
  searchItemCopy = searchItem;
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];
  if (fieldsViewController)
  {
    searchFieldItem = itemCopy;
  }

  else
  {
    searchFieldView = [(RouteSearchViewController *)self searchFieldView];
    searchFieldItem = [searchFieldView searchFieldItem];
  }

  v22[0] = @"SearchSessionAddStopFromWaypointEditor";
  v22[1] = @"SearchSessionAddStopReplacingServerProvidedWaypoint";
  v23[0] = &__kCFBooleanTrue;
  composedWaypoint = [searchFieldItem composedWaypoint];
  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [composedWaypoint isServerProvidedWaypoint]);
  v23[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (searchItemCopy)
  {
    v16 = [(RouteSearchViewController *)self latLngFromSearchFieldItem:searchItemCopy];
    if (v16)
    {
      [v15 setObject:v16 forKeyedSubscript:@"SearchSessionAddStopPreviousLatLng"];
    }
  }

  v17 = +[MKMapService sharedService];
  [v17 captureUserAction:2014 onTarget:-[RouteSearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  delegate = [(RouteSearchViewController *)self delegate];
  v19 = [v15 copy];
  suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
  recentAutocompleteSessionData = [suggestionsTableViewController recentAutocompleteSessionData];
  [delegate routeSearchViewController:self wantsToPerformSearchWithItem:itemCopy userInfo:v19 autocompleteSessionData:recentAutocompleteSessionData];
}

- (void)routeSearch:(id)search didUpdateInputText:(id)text atIndex:(unint64_t)index
{
  textCopy = text;
  searchCopy = search;
  suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
  v11 = [textCopy length] != 0;
  isEditingAnySearchField = [searchCopy isEditingAnySearchField];

  [suggestionsTableViewController updateDataSourceHasInput:v11 isEditing:isEditingAnySearchField];
  suggestionsTableViewController2 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v14 = [(RouteSearchViewController *)self traitsForRouteSearchTableViewController:suggestionsTableViewController2];

  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];

  if (fieldsViewController)
  {
    _itemsForRouteRequest = [(RouteSearchViewController *)self _itemsForRouteRequest];
    searchFieldView2 = _itemsForRouteRequest;
    if (index)
    {
      if ([_itemsForRouteRequest count] > index)
      {
        previousSearchFieldItem = [searchFieldView2 objectAtIndex:index - 1];
        fieldsViewController2 = [(RouteSearchViewController *)self fieldsViewController];
        items = [fieldsViewController2 items];
        searchFieldItem = [items objectAtIndex:index];

        v22 = 14;
        goto LABEL_8;
      }

      v22 = 14;
    }

    else
    {
      v22 = 13;
    }

    previousSearchFieldItem = 0;
    searchFieldItem = 0;
    goto LABEL_20;
  }

  waypointIndex = self->_waypointIndex;
  searchFieldView = [(RouteSearchViewController *)self searchFieldView];
  previousSearchFieldItem = [searchFieldView previousSearchFieldItem];

  searchFieldView2 = [(RouteSearchViewController *)self searchFieldView];
  searchFieldItem = [searchFieldView2 searchFieldItem];
  if (waypointIndex)
  {
    v22 = 14;
  }

  else
  {
    v22 = 13;
  }

LABEL_8:

  if (previousSearchFieldItem)
  {
    v25 = [(RouteSearchViewController *)self latLngFromSearchFieldItem:previousSearchFieldItem];
    [v25 lat];
    v27 = v26;
    [v25 lng];
    if (fabs(v28) > 180.0 || v27 < -90.0 || v27 > 90.0)
    {
      v29 = sub_100798A3C();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v32 = 138412290;
        v33 = previousSearchFieldItem;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Previous location in Route Planning has invalid coordinate. SearchFieldItem: %@", &v32, 0xCu);
      }
    }

    else
    {
      [v14 setAutocompleteOriginationPreviousLatlng:v25];
    }
  }

LABEL_20:
  composedWaypoint = [searchFieldItem composedWaypoint];
  [v14 setAutocompleteOriginationEditingServerWaypoints:{objc_msgSend(composedWaypoint, "isServerProvidedWaypoint")}];

  [(RouteSearchViewController *)self setUsingExistingWaypointNameForAutocomplete:0];
  suggestionsTableViewController3 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [suggestionsTableViewController3 updateInputText:textCopy traits:v14 source:v22];
}

- (void)routeSearchFieldsDidUpdateItemsForRouteRequest:(id)request
{
  requestCopy = request;
  suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
  [suggestionsTableViewController reset];

  if (self->_selectionHandler)
  {
    itemsForRouteRequest = [requestCopy itemsForRouteRequest];
    firstObject = [itemsForRouteRequest firstObject];

    (*(self->_selectionHandler + 2))();
    goto LABEL_3;
  }

  if (sub_10000FA08(self) == 5)
  {
    if (![(RouteSearchViewController *)self _isReadyToRoute])
    {
      goto LABEL_3;
    }

LABEL_9:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_101014ADC;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    goto LABEL_3;
  }

  searchFieldView = [(RouteSearchViewController *)self searchFieldView];
  if (searchFieldView)
  {
    v9 = searchFieldView;
    _isReadyToRoute = [(RouteSearchViewController *)self _isReadyToRoute];

    if (_isReadyToRoute)
    {
      goto LABEL_9;
    }
  }

LABEL_3:
}

- (void)routeSearchFieldsDidBeginEditing:(id)editing
{
  editingCopy = editing;
  suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
  hasInput = [editingCopy hasInput];
  isEditingAnySearchField = [editingCopy isEditingAnySearchField];

  [suggestionsTableViewController updateDataSourceHasInput:hasInput isEditing:isEditingAnySearchField];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  if (type == 1)
  {
    [(RouteSearchViewController *)self _cancelTapped:tapped];
  }
}

- (void)_requestRouteWithItems:(id)items
{
  itemsCopy = items;
  routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
  [routeSearchFields endEditingFields];

  suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
  routeSearchFields2 = [(RouteSearchViewController *)self routeSearchFields];
  [suggestionsTableViewController updateDataSourceHasInput:0 isEditing:{objc_msgSend(routeSearchFields2, "isEditingAnySearchField")}];

  suggestionsTableViewController2 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [suggestionsTableViewController2 reloadData];

  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:6003 onTarget:-[RouteSearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  dataCoordinator = [(RouteSearchViewController *)self dataCoordinator];
  desiredTransportType = [dataCoordinator desiredTransportType];

  delegate = [(RouteSearchViewController *)self delegate];
  v13 = [delegate currentDirectionItemForRouteSearchViewController:self];

  if (!desiredTransportType)
  {
    if ([v13 editRequired:0])
    {
      desiredTransportType = [v13 transportType];
    }

    else
    {
      desiredTransportType = 0;
    }
  }

  v14 = self->_wasLocationServicesApproved && self->_wasAuthorizedForPreciseLocation;
  v15 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = itemsCopy;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v43 + 1) + 8 * v20) copy];
        [v15 addObject:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v18);
  }

  v22 = [[DirectionItem alloc] initWithItems:v15 ignoreMapType:v14 transportType:desiredTransportType];
  dataCoordinator2 = [(RouteSearchViewController *)self dataCoordinator];

  if (dataCoordinator2)
  {
    dataCoordinator3 = [(RouteSearchViewController *)self dataCoordinator];
    drivePreferences = [dataCoordinator3 drivePreferences];
    [(DirectionItem *)v22 setDrivePreferences:drivePreferences];

    dataCoordinator4 = [(RouteSearchViewController *)self dataCoordinator];
    transitPreferences = [dataCoordinator4 transitPreferences];
    [(DirectionItem *)v22 setTransitPreferences:transitPreferences];

    dataCoordinator5 = [(RouteSearchViewController *)self dataCoordinator];
    cyclePreferences = [dataCoordinator5 cyclePreferences];
    [(DirectionItem *)v22 setCyclePreferences:cyclePreferences];

    dataCoordinator6 = [(RouteSearchViewController *)self dataCoordinator];
    timing = [dataCoordinator6 timing];
    [(DirectionItem *)v22 setTiming:timing];
  }

  v32 = [NSMutableDictionary alloc];
  v47 = @"DirectionsSessionInitiatorKey";
  v48 = &off_1016EAEB0;
  v33 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v34 = [v32 initWithDictionary:v33];

  dataCoordinator7 = [(RouteSearchViewController *)self dataCoordinator];
  originalHistoryEntryIdentifier = [dataCoordinator7 originalHistoryEntryIdentifier];
  [v34 setObject:originalHistoryEntryIdentifier forKeyedSubscript:@"DirectionsRouteUUIDKey"];

  dataCoordinator8 = [(RouteSearchViewController *)self dataCoordinator];
  automaticSharingContacts = [dataCoordinator8 automaticSharingContacts];
  [v34 setObject:automaticSharingContacts forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];

  routeSearchFields3 = [(RouteSearchViewController *)self routeSearchFields];
  LODWORD(automaticSharingContacts) = [routeSearchFields3 hasInput];

  if (automaticSharingContacts)
  {
    v40 = &off_1016EAEC8;
  }

  else
  {
    v40 = &off_1016EAEE0;
  }

  [v34 setObject:v40 forKeyedSubscript:{@"SearchSessionTraitsSource", v43}];
  delegate2 = [(RouteSearchViewController *)self delegate];
  v42 = [v34 copy];
  [delegate2 routeSearchViewController:self wantsToRequestRoutesWithItem:v22 allowToPromptEditing:1 userInfo:v42];
}

- (void)_requestRoute
{
  _itemsForRouteRequest = [(RouteSearchViewController *)self _itemsForRouteRequest];
  [(RouteSearchViewController *)self _requestRouteWithItems:_itemsForRouteRequest];
}

- (BOOL)_isReadyToRoute
{
  [(RouteSearchViewController *)self _itemsForRouteRequest];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        waypoint = [v8 waypoint];
        isValid = [waypoint isValid];

        if ((isValid & 1) == 0 && (sub_10000FA08(self) != 5 || !_UISolariumEnabled() || ![v8 isEmpty]))
        {
          v11 = 0;
          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_14:

  return v11;
}

- (id)_itemsForRouteRequest
{
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];

  routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
  itemsForRouteRequest = [routeSearchFields itemsForRouteRequest];
  v6 = itemsForRouteRequest;
  if (fieldsViewController)
  {
  }

  else
  {
    firstObject = [itemsForRouteRequest firstObject];

    dataCoordinator = [(RouteSearchViewController *)self dataCoordinator];
    directionItemForCurrentSession = [dataCoordinator directionItemForCurrentSession];
    items = [directionItemForCurrentSession items];
    v6 = [items mutableCopy];

    if (sub_10000FA08(self) == 5 && _UISolariumEnabled() && !v6)
    {
      v11 = objc_opt_new();
      v16[0] = v11;
      v12 = objc_opt_new();
      v16[1] = v12;
      v13 = [NSArray arrayWithObjects:v16 count:2];
      v6 = [v13 mutableCopy];
    }

    waypointIndex = self->_waypointIndex;
    if (waypointIndex >= [v6 count])
    {
      [v6 addObject:firstObject];
    }

    else
    {
      [v6 replaceObjectAtIndex:self->_waypointIndex withObject:firstObject];
    }
  }

  return v6;
}

- (void)_cleanUpOnDismiss
{
  routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
  [routeSearchFields clear];

  [(RouteSearchViewController *)self setExitRoutePlanningOnCancel:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RouteSearchViewController;
  [(RouteSearchViewController *)&v4 viewDidAppear:appear];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"RouteSearchViewControllerDidAppear" object:0];
}

- (void)didResignCurrent
{
  v3.receiver = self;
  v3.super_class = RouteSearchViewController;
  [(ContaineeViewController *)&v3 didResignCurrent];
  [(RouteSearchViewController *)self _cleanUpOnDismiss];
}

- (void)willBecomeCurrent:(BOOL)current
{
  v12.receiver = self;
  v12.super_class = RouteSearchViewController;
  [(ContaineeViewController *)&v12 willBecomeCurrent:current];
  [(RouteSearchViewController *)self loadViewIfNeeded];
  dataCoordinator = [(RouteSearchViewController *)self dataCoordinator];
  desiredTransportType = [dataCoordinator desiredTransportType];
  v6 = 0;
  if (desiredTransportType > 1)
  {
    if (desiredTransportType != 2)
    {
      if (desiredTransportType != 5)
      {
        goto LABEL_13;
      }

      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
      goto LABEL_12;
    }
  }

  else
  {
    if (desiredTransportType)
    {
      if (desiredTransportType != 1)
      {
        goto LABEL_13;
      }

      IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
      goto LABEL_12;
    }

    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
    {
      v6 = 1;
      goto LABEL_13;
    }
  }

  IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
LABEL_12:
  v6 = IsEnabled_Maps420;
LABEL_13:
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];
  [fieldsViewController setMprEnabled:v6];

  fieldsViewController2 = [(RouteSearchViewController *)self fieldsViewController];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    fieldsViewController3 = [(RouteSearchViewController *)self fieldsViewController];
    [fieldsViewController3 willBecomeCurrent];
  }
}

- (void)_setupConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];

  if (!fieldsViewController)
  {
    v46 = objc_alloc_init(NSMutableArray);
    if (constraintsCopy)
    {
      leadingAnchor = [(RouteWaypointSearchFieldView *)self->_searchFieldView leadingAnchor];
      contentView = [(ContaineeViewController *)self contentView];
      leadingAnchor2 = [contentView leadingAnchor];
      v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v48[0] = v38;
      trailingAnchor = [(RouteWaypointSearchFieldView *)self->_searchFieldView trailingAnchor];
      contentView2 = [(ContaineeViewController *)self contentView];
      trailingAnchor2 = [contentView2 trailingAnchor];
      v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v48[1] = v8;
      topAnchor = [(RouteWaypointSearchFieldView *)self->_searchFieldView topAnchor];
      contentView3 = [(ContaineeViewController *)self contentView];
      topAnchor2 = [contentView3 topAnchor];
      v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v48[2] = v12;
      v13 = [NSArray arrayWithObjects:v48 count:3];
      [v46 addObjectsFromArray:v13];

      v14 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      bottomAnchor = [(RouteWaypointSearchFieldView *)self->_searchFieldView bottomAnchor];
    }

    else
    {
      containerHeaderView = [(RouteSearchViewController *)self containerHeaderView];
      bottomAnchor = [containerHeaderView bottomAnchor];

      v14 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    }

    v32 = bottomAnchor;
    suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
    view = [suggestionsTableViewController view];
    leadingAnchor3 = [view leadingAnchor];
    contentView4 = [(ContaineeViewController *)self contentView];
    leadingAnchor4 = [contentView4 leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v47[0] = v35;
    suggestionsTableViewController2 = [(RouteSearchViewController *)self suggestionsTableViewController];
    view2 = [suggestionsTableViewController2 view];
    trailingAnchor3 = [view2 trailingAnchor];
    contentView5 = [(ContaineeViewController *)self contentView];
    trailingAnchor4 = [contentView5 trailingAnchor];
    v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v47[1] = v28;
    suggestionsTableViewController3 = [(RouteSearchViewController *)self suggestionsTableViewController];
    view3 = [suggestionsTableViewController3 view];
    topAnchor3 = [view3 topAnchor];
    v18 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
    v47[2] = v18;
    suggestionsTableViewController4 = [(RouteSearchViewController *)self suggestionsTableViewController];
    view4 = [suggestionsTableViewController4 view];
    bottomAnchor2 = [view4 bottomAnchor];
    contentView6 = [(ContaineeViewController *)self contentView];
    bottomAnchor3 = [contentView6 bottomAnchor];
    v24 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v47[3] = v24;
    v25 = [v14[286] arrayWithObjects:v47 count:4];
    [v46 addObjectsFromArray:v25];

    [NSLayoutConstraint activateConstraints:v46];
  }
}

- (void)_setupHeaderContentViewConstraints
{
  v16 = [NSMutableArray alloc];
  containerHeaderView = [(RouteSearchViewController *)self containerHeaderView];
  topAnchor = [containerHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v21;
  containerHeaderView2 = [(RouteSearchViewController *)self containerHeaderView];
  bottomAnchor = [containerHeaderView2 bottomAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView2 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[1] = v15;
  containerHeaderView3 = [(RouteSearchViewController *)self containerHeaderView];
  leadingAnchor = [containerHeaderView3 leadingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView3 leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[2] = v5;
  containerHeaderView4 = [(RouteSearchViewController *)self containerHeaderView];
  trailingAnchor = [containerHeaderView4 trailingAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView4 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[3] = v10;
  v11 = [NSArray arrayWithObjects:v26 count:4];
  v12 = [v16 initWithArray:v11];

  [NSLayoutConstraint activateConstraints:v12];
}

- (void)didDismissByGesture
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_101015D48;
  block[3] = &unk_101661AE0;
  block[4] = self;
  exitRoutePlanningOnCancel = [(RouteSearchViewController *)self exitRoutePlanningOnCancel];
  dispatch_async(&_dispatch_main_q, block);
  v3.receiver = self;
  v3.super_class = RouteSearchViewController;
  [(ContaineeViewController *)&v3 didDismissByGesture];
}

- (void)_updateTitle
{
  title = [(RouteSearchViewController *)self title];
  v4 = [title length];

  if (v4)
  {
    title2 = [(RouteSearchViewController *)self title];
    containerHeaderView = [(RouteSearchViewController *)self containerHeaderView];
    [containerHeaderView setTitle:title2];
  }

  else
  {
    if (sub_10000FA08(self) == 5 && _UISolariumEnabled() && (v6 = self->_waypointIndex, (v6 | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL) && (v6 >= [(NSArray *)self->_cachedItems count]|| [(NSArray *)self->_cachedItems count]== 2))
    {
      waypointIndex = self->_waypointIndex;
      v8 = +[NSBundle mainBundle];
      title2 = v8;
      if (waypointIndex)
      {
        v9 = @"[Route Planning] To";
      }

      else
      {
        v9 = @"[Route Planning] From";
      }
    }

    else
    {
      v10 = self->_waypointIndex;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL || v10 >= [(NSArray *)self->_cachedItems count])
      {
        v8 = +[NSBundle mainBundle];
        v9 = @"Add Stop";
      }

      else
      {
        v8 = +[NSBundle mainBundle];
        v9 = @"Change Stop";
      }

      title2 = v8;
    }

    containerHeaderView = [v8 localizedStringForKey:v9 value:@"localized string not found" table:0];
    containerHeaderView2 = [(RouteSearchViewController *)self containerHeaderView];
    [containerHeaderView2 setTitle:containerHeaderView];
  }
}

- (void)setTitle:(id)title
{
  v6.receiver = self;
  v6.super_class = RouteSearchViewController;
  titleCopy = title;
  [(RouteSearchViewController *)&v6 setTitle:titleCopy];
  v5 = [(RouteSearchViewController *)self containerHeaderView:v6.receiver];
  [v5 setTitle:titleCopy];
}

- (void)_addSubViewsWithTextSearchSupport:(BOOL)support
{
  supportCopy = support;
  if (support)
  {
    v5 = [[RouteWaypointSearchFieldView alloc] initWithDelegate:self];
    searchFieldView = self->_searchFieldView;
    self->_searchFieldView = v5;

    [(RouteWaypointSearchFieldView *)self->_searchFieldView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(ContaineeViewController *)self contentView];
    [contentView addSubview:self->_searchFieldView];
  }

  suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
  [(RouteSearchViewController *)self addChildViewController:suggestionsTableViewController];

  suggestionsTableViewController2 = [(RouteSearchViewController *)self suggestionsTableViewController];
  view = [suggestionsTableViewController2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(ContaineeViewController *)self contentView];
  suggestionsTableViewController3 = [(RouteSearchViewController *)self suggestionsTableViewController];
  view2 = [suggestionsTableViewController3 view];
  [contentView2 addSubview:view2];

  suggestionsTableViewController4 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [suggestionsTableViewController4 didMoveToParentViewController:self];

  v15 = +[MapsOfflineUIHelper sharedHelper];
  LODWORD(suggestionsTableViewController3) = [v15 isUsingOfflineMaps];

  if (suggestionsTableViewController3 && !supportCopy)
  {
    routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
    [routeSearchFields endEditingFields];
  }

  [(RouteSearchViewController *)self _setupConstraints:supportCopy];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = RouteSearchViewController;
  [(ContaineeViewController *)&v14 viewDidLoad];
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];

  if (!fieldsViewController)
  {
    headerView = [(ContaineeViewController *)self headerView];
    LODWORD(v5) = 1148846080;
    [headerView setContentHuggingPriority:1 forAxis:v5];

    v6 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
    [(ContainerHeaderView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)v6 setDelegate:self];
    headerView2 = [(ContaineeViewController *)self headerView];
    [headerView2 addSubview:v6];

    [(RouteSearchViewController *)self setContainerHeaderView:v6];
    [(RouteSearchViewController *)self _setupHeaderContentViewConstraints];
    [(RouteSearchViewController *)self _updateTitle];
    v8 = +[MapsOfflineUIHelper sharedHelper];
    isUsingOfflineMaps = [v8 isUsingOfflineMaps];

    if (isUsingOfflineMaps)
    {
      [(RouteSearchViewController *)self _initOfflinePlaceHolderWithTicket];
    }

    else
    {
      [(RouteSearchViewController *)self _addSubViewsWithTextSearchSupport:1];
    }

    view = [(RouteSearchViewController *)self view];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v12 stringByReplacingOccurrencesOfString:@"Controller" withString:&stru_1016631F0];
    [view setAccessibilityIdentifier:v13];

    +[KeyboardAvoidingView startObservingKeyboard];
  }
}

- (BOOL)hasInputsInSearchField
{
  routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
  hasInput = [routeSearchFields hasInput];

  return hasInput;
}

- (id)selectedSearchFieldItem
{
  searchFieldView = [(RouteSearchViewController *)self searchFieldView];
  searchFieldItem = [searchFieldView searchFieldItem];

  return searchFieldItem;
}

- (id)latLngFromSearchFieldItem:(id)item
{
  itemCopy = item;
  latLng = [itemCopy latLng];
  v5 = latLng;
  if (latLng)
  {
    v6 = latLng;
  }

  else
  {
    [itemCopy address];
  }

  return v5;
}

- (unint64_t)_currentlySelectedIndexForAddStop
{
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];

  if (fieldsViewController)
  {
    fieldsViewController2 = [(RouteSearchViewController *)self fieldsViewController];
    _currentlySelectedIndexForAddStop = [fieldsViewController2 _currentlySelectedIndexForAddStop];

    return _currentlySelectedIndexForAddStop;
  }

  else if (self->_waypointIndex == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return self->_waypointIndex;
  }
}

- (void)setDataCoordinator:(id)coordinator
{
  objc_storeWeak(&self->_dataCoordinator, coordinator);

  [(RouteSearchViewController *)self updateFieldsWithCurrentDirectionItem];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
  [suggestionsTableViewController reconfigureDataSources];
}

- (void)makeAFieldFirstResponderIfNeeded
{
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];

  if (fieldsViewController)
  {
    fieldsViewController2 = [(RouteSearchViewController *)self fieldsViewController];
    _currentlySelectedIndexForAddStop = [fieldsViewController2 _currentlySelectedIndexForAddStop];

    fieldsViewController3 = [(RouteSearchViewController *)self fieldsViewController];
    suggestionsTableViewController = fieldsViewController3;
    if (_currentlySelectedIndexForAddStop != 0x7FFFFFFFFFFFFFFFLL)
    {
      [fieldsViewController3 selectFieldAtIndex:_currentlySelectedIndexForAddStop];
      goto LABEL_9;
    }
  }

  else
  {
    if (!self->_supportsFullTextSearch)
    {
      v7 = +[MapsOfflineUIHelper sharedHelper];
      isUsingOfflineMaps = [v7 isUsingOfflineMaps];

      if (isUsingOfflineMaps)
      {
        suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
        [suggestionsTableViewController updateCategoryDataSource:self->_supportsFullTextSearch];
        goto LABEL_9;
      }
    }

    fieldsViewController3 = [(RouteSearchViewController *)self routeSearchFields];
    suggestionsTableViewController = fieldsViewController3;
  }

  [fieldsViewController3 beginEditingNextSearchField];
LABEL_9:
}

- (void)setPauseSelectionUpdates:(BOOL)updates
{
  updatesCopy = updates;
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];
  [fieldsViewController setPauseSelectionUpdates:updatesCopy];
}

- (void)replaceSelectedFieldWithItem:(id)item
{
  itemCopy = item;
  routeSearchFields = [(RouteSearchViewController *)self routeSearchFields];
  [routeSearchFields updateSearchFieldsFromIndex:0x7FFFFFFFFFFFFFFFLL withItem:itemCopy];
}

- (void)deleteCurrentFieldIndex
{
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];
  [fieldsViewController deleteCurrentFieldIndex];
}

- (BOOL)canDeleteCurrentFieldIndex
{
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];
  canDeleteCurrentFieldIndex = [fieldsViewController canDeleteCurrentFieldIndex];

  return canDeleteCurrentFieldIndex;
}

- (void)_selectFieldAtIndex:(unint64_t)index beginEditing:(BOOL)editing
{
  editingCopy = editing;
  if (!self->_selectionHandler)
  {
    dataCoordinator = [(RouteSearchViewController *)self dataCoordinator];
    directionItemForCurrentSession = [dataCoordinator directionItemForCurrentSession];
    items = [directionItemForCurrentSession items];
    cachedItems = self->_cachedItems;
    self->_cachedItems = items;

    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      indexCopy = 0;
    }

    else
    {
      indexCopy = index;
    }

    self->_waypointIndex = indexCopy;
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    index = 0;
    goto LABEL_10;
  }

  if (index == -1)
  {
    index = [(NSArray *)self->_cachedItems lastObject];
LABEL_10:
    v12 = 0;
    goto LABEL_16;
  }

  if ([(NSArray *)self->_cachedItems count]<= index)
  {
    v12 = 0;
    if (!index)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = [(NSArray *)self->_cachedItems objectAtIndexedSubscript:index];
  if (index)
  {
LABEL_15:
    v22 = v12;
    index = [(NSArray *)self->_cachedItems objectAtIndexedSubscript:index - 1];
    v12 = v22;
  }

LABEL_16:
  v23 = v12;
  waypointName = [v12 waypointName];
  -[RouteSearchViewController setUsingExistingWaypointNameForAutocomplete:](self, "setUsingExistingWaypointNameForAutocomplete:", [waypointName length] != 0);

  searchFieldView = [(RouteSearchViewController *)self searchFieldView];
  [searchFieldView setSearchFieldItem:v23];

  searchFieldView2 = [(RouteSearchViewController *)self searchFieldView];
  [searchFieldView2 setPreviousSearchFieldItem:index];

  if (editingCopy)
  {
    searchFieldView3 = [(RouteSearchViewController *)self searchFieldView];
    [searchFieldView3 beginEditingNextSearchField];
  }

  [(RouteSearchViewController *)self _updateTitle];
  waypointIndex = self->_waypointIndex;
  v18 = waypointIndex == 0x7FFFFFFFFFFFFFFFLL || waypointIndex >= [(NSArray *)self->_cachedItems count];
  v19 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v19 isUsingOfflineMaps];

  if (!isUsingOfflineMaps || self->_supportsFullTextSearch)
  {
    suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
    [suggestionsTableViewController updateTableViewHeader:v18];
  }
}

- (void)selectFieldIndex:(unint64_t)index beginEditing:(BOOL)editing
{
  editingCopy = editing;
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];

  if (fieldsViewController)
  {
    fieldsViewController2 = [(RouteSearchViewController *)self fieldsViewController];
    [fieldsViewController2 selectFieldAtIndex:index];
  }

  else
  {
    v8 = +[MapsOfflineUIHelper sharedHelper];
    isUsingOfflineMaps = [v8 isUsingOfflineMaps];

    if (isUsingOfflineMaps)
    {
      self->_isWaitingForTextSearchSupport = 1;
      self->_editIndex = index;
      self->_waypointIndex = index;
    }

    else
    {

      [(RouteSearchViewController *)self _selectFieldAtIndex:index beginEditing:editingCopy];
    }
  }
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  [(RouteSearchViewController *)self loadViewIfNeeded];
  containerHeaderView = [(RouteSearchViewController *)self containerHeaderView];
  [containerHeaderView setTitle:titleCopy];
}

- (void)updateWithItems:(id)items
{
  itemsCopy = items;
  fieldsViewController = [(RouteSearchViewController *)self fieldsViewController];
  [fieldsViewController setItems:itemsCopy];

  suggestionsTableViewController = [(RouteSearchViewController *)self suggestionsTableViewController];
  fieldsViewController2 = [(RouteSearchViewController *)self fieldsViewController];
  hasInput = [fieldsViewController2 hasInput];
  fieldsViewController3 = [(RouteSearchViewController *)self fieldsViewController];
  [suggestionsTableViewController updateDataSourceHasInput:hasInput isEditing:{objc_msgSend(fieldsViewController3, "isEditingAnySearchField")}];
}

- (void)updateFieldsWithCurrentDirectionItem
{
  [(RouteSearchViewController *)self loadViewIfNeeded];
  dataCoordinator = [(RouteSearchViewController *)self dataCoordinator];
  directionItemForCurrentSession = [dataCoordinator directionItemForCurrentSession];

  items = [directionItemForCurrentSession items];
  [(RouteSearchViewController *)self updateWithItems:items];
}

- (RouteWaypointSearchFields)routeSearchFields
{
  fieldsViewController = self->_fieldsViewController;
  if (!fieldsViewController)
  {
    fieldsViewController = self->_searchFieldView;
  }

  return fieldsViewController;
}

- (RouteSearchViewController)initWithWaypointEditor:(id)editor suggestionsTableView:(id)view delegate:(id)delegate dataCoordinator:(id)coordinator
{
  editorCopy = editor;
  viewCopy = view;
  delegateCopy = delegate;
  coordinatorCopy = coordinator;
  v18.receiver = self;
  v18.super_class = RouteSearchViewController;
  v15 = [(RouteSearchViewController *)&v18 init];
  if (v15)
  {
    v16 = +[MKLocationManager sharedLocationManager];
    v15->_wasLocationServicesApproved = [v16 isLocationServicesApproved];
    v15->_wasAuthorizedForPreciseLocation = [v16 isAuthorizedForPreciseLocation];
    objc_storeStrong(&v15->_fieldsViewController, editor);
    [(RoutePlanningWaypointEditorViewController *)v15->_fieldsViewController setDelegate:v15];
    objc_storeStrong(&v15->_suggestionsTableViewController, view);
    [(RouteSearchViewController *)v15 setDelegate:delegateCopy];
    [(RouteSearchViewController *)v15 setDataCoordinator:coordinatorCopy];
    [(RouteWaypointSuggestionsTableViewController *)v15->_suggestionsTableViewController setDelegate:v15];
  }

  return v15;
}

- (RouteSearchViewController)initWithDelegate:(id)delegate items:(id)items waypointIndex:(unint64_t)index selectionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v13 = [(RouteSearchViewController *)self initWithDelegate:delegate dataCoordinator:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_cachedItems, items);
    v14->_waypointIndex = index;
    v15 = [handlerCopy copy];
    selectionHandler = v14->_selectionHandler;
    v14->_selectionHandler = v15;
  }

  return v14;
}

- (RouteSearchViewController)initWithDelegate:(id)delegate dataCoordinator:(id)coordinator
{
  delegateCopy = delegate;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = RouteSearchViewController;
  v8 = [(RouteSearchViewController *)&v14 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[RouteWaypointSuggestionsTableViewController alloc] initWithNibName:0 bundle:0];
    suggestionsTableViewController = v8->_suggestionsTableViewController;
    v8->_suggestionsTableViewController = v9;

    cardPresentationController = [(ContaineeViewController *)v8 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v8 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    [(RouteSearchViewController *)v8 setExitRoutePlanningOnCancel:0];
    [(RouteSearchViewController *)v8 setDelegate:delegateCopy];
    [(RouteSearchViewController *)v8 setDataCoordinator:coordinatorCopy];
    [(RouteWaypointSuggestionsTableViewController *)v8->_suggestionsTableViewController setDelegate:v8];
  }

  return v8;
}

@end