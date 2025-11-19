@interface RouteSearchViewController
- (BOOL)_isReadyToRoute;
- (BOOL)canDeleteCurrentFieldIndex;
- (BOOL)hasInputsInSearchField;
- (BOOL)routeSearchController:(id)a3 waypointsIncludeObject:(id)a4;
- (BOOL)waypointsIncludeCurrentLocationForRouteSearchTableViewController:(id)a3;
- (RoutePlanningDataCoordination)dataCoordinator;
- (RouteSearchViewController)initWithDelegate:(id)a3 dataCoordinator:(id)a4;
- (RouteSearchViewController)initWithDelegate:(id)a3 items:(id)a4 waypointIndex:(unint64_t)a5 selectionHandler:(id)a6;
- (RouteSearchViewController)initWithWaypointEditor:(id)a3 suggestionsTableView:(id)a4 delegate:(id)a5 dataCoordinator:(id)a6;
- (RouteSearchViewControllerDelegate)delegate;
- (RouteWaypointSearchFields)routeSearchFields;
- (id)_itemsForRouteRequest;
- (id)latLngForRouteSearchTableViewController:(id)a3;
- (id)latLngFromSearchFieldItem:(id)a3;
- (id)personalizedItemManagerForRouteSearchTableViewController:(id)a3;
- (id)selectedSearchFieldItem;
- (id)traitsForRouteSearchTableViewController:(id)a3;
- (id)userLocationSearchResultForRouteSearchTableViewController:(id)a3;
- (int)searchFieldTypeForAnalytics;
- (unint64_t)_currentlySelectedIndexForAddStop;
- (void)_addSubViewsWithTextSearchSupport:(BOOL)a3;
- (void)_cancelTapped:(id)a3;
- (void)_cancelTapped:(id)a3 exitRoutePlanning:(BOOL)a4;
- (void)_cleanUpOnDismiss;
- (void)_initOfflinePlaceHolderWithTicket;
- (void)_requestRoute;
- (void)_requestRouteWithItems:(id)a3;
- (void)_selectFieldAtIndex:(unint64_t)a3 beginEditing:(BOOL)a4;
- (void)_setupConstraints:(BOOL)a3;
- (void)_setupHeaderContentViewConstraints;
- (void)_updateTitle;
- (void)deleteCurrentFieldIndex;
- (void)didDismissByGesture;
- (void)didResignCurrent;
- (void)didTapOnQueryAcceleratorWithItem:(id)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)makeAFieldFirstResponderIfNeeded;
- (void)replaceSelectedFieldWithItem:(id)a3;
- (void)routeSearch:(id)a3 didSearchForItem:(id)a4 previousSearchItem:(id)a5;
- (void)routeSearch:(id)a3 didUpdateInputText:(id)a4 atIndex:(unint64_t)a5;
- (void)routeSearchController:(id)a3 didSelectItem:(id)a4;
- (void)routeSearchController:(id)a3 doSearchItem:(id)a4 userInfo:(id)a5;
- (void)routeSearchFields:(id)a3 didClearInputTextForWaypointAtIndex:(unint64_t)waypointIndex;
- (void)routeSearchFieldsDidBeginEditing:(id)a3;
- (void)routeSearchFieldsDidUpdateItemsForRouteRequest:(id)a3;
- (void)selectFieldIndex:(unint64_t)a3 beginEditing:(BOOL)a4;
- (void)setDataCoordinator:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setPauseSelectionUpdates:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)updateFieldsWithCurrentDirectionItem;
- (void)updateWithItems:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
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
  v3 = [(RouteSearchViewController *)self fieldsViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 2;
  }

  v5 = [(RouteSearchViewController *)self fieldsViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 searchFieldTypeForAnalytics];
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (void)_cancelTapped:(id)a3 exitRoutePlanning:(BOOL)a4
{
  v4 = a4;
  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:18 onTarget:-[RouteSearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v7 = [(RouteSearchViewController *)self routeSearchFields];
  [v7 endEditingFields];

  selectionHandler = self->_selectionHandler;
  if (selectionHandler)
  {
    v9 = *(selectionHandler + 2);

    v9();
  }

  else
  {
    v10 = [(RouteSearchViewController *)self delegate];
    [v10 routeSearchViewControllerDidDismiss:self shouldExitRoutePlanning:v4];
  }
}

- (void)_cancelTapped:(id)a3
{
  v4 = a3;
  [(RouteSearchViewController *)self _cancelTapped:v4 exitRoutePlanning:[(RouteSearchViewController *)self exitRoutePlanningOnCancel]];
}

- (void)didTapOnQueryAcceleratorWithItem:(id)a3
{
  v4 = a3;
  v5 = [(RouteSearchViewController *)self searchFieldView];
  [v5 shouldReplaceTextWithCompletion:v4];
}

- (void)routeSearchController:(id)a3 doSearchItem:(id)a4 userInfo:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [v9 reset];

  v12 = [(RouteSearchViewController *)self delegate];
  v10 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v11 = [v10 recentAutocompleteSessionData];
  [v12 routeSearchViewController:self wantsToPerformSearchWithItem:v8 userInfo:v7 autocompleteSessionData:v11];
}

- (void)routeSearchController:(id)a3 didSelectItem:(id)a4
{
  v5 = a4;
  v6 = [SearchFieldItem searchFieldItemWithObject:v5 expandRecentsItem:1 preserveContact:1];
  if (v6)
  {
    v7 = [(RouteSearchViewController *)self routeSearchFields];
    [v7 updateSearchFieldsFromIndex:0x7FFFFFFFFFFFFFFFLL withItem:v6];
  }

  else
  {
    objc_opt_class();
    v8 = v5;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 historyEntry];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_101013F60;
    v13[3] = &unk_101661B48;
    v13[4] = self;
    [v11 ifSearch:0 ifRoute:v13 ifPlaceDisplay:0 ifTransitLineItem:0];
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

- (BOOL)waypointsIncludeCurrentLocationForRouteSearchTableViewController:(id)a3
{
  v3 = [(RouteSearchViewController *)self routeSearchFields];
  v4 = [v3 containsCurrentLocationItem];

  return v4;
}

- (BOOL)routeSearchController:(id)a3 waypointsIncludeObject:(id)a4
{
  v5 = a4;
  v6 = [(RouteSearchViewController *)self routeSearchFields];
  v7 = [v6 containsWaypointForItem:v5];

  return v7;
}

- (id)traitsForRouteSearchTableViewController:(id)a3
{
  v4 = [(RouteSearchViewController *)self delegate];
  v5 = [v4 traitsForRouteSearchViewController:self];

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

- (id)latLngForRouteSearchTableViewController:(id)a3
{
  v4 = [(RouteSearchViewController *)self fieldsViewController];

  if (!v4)
  {
    v12 = [(RouteSearchViewController *)self searchFieldView];
    v13 = [v12 previousSearchFieldItem];
    v7 = [(RouteSearchViewController *)self latLngFromSearchFieldItem:v13];

LABEL_9:
    v7 = v7;
    v11 = v7;
    goto LABEL_10;
  }

  v5 = [(RouteSearchViewController *)self fieldsViewController];
  v6 = [v5 _currentlySelectedIndexForAddStop];

  v7 = 0;
  if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(RouteSearchViewController *)self fieldsViewController];
    v9 = [v8 items];

    v10 = [v9 objectAtIndexedSubscript:v6 - 1];
    v7 = [v10 latLng];
  }

  v11 = 0;
  if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

- (id)userLocationSearchResultForRouteSearchTableViewController:(id)a3
{
  v4 = [(RouteSearchViewController *)self delegate];
  v5 = [v4 userLocationSearchResultForRouteSearchViewController:self];

  return v5;
}

- (id)personalizedItemManagerForRouteSearchTableViewController:(id)a3
{
  v4 = [(RouteSearchViewController *)self delegate];
  v5 = [v4 personalizedItemManagerForRouteSearchViewController:self];

  return v5;
}

- (void)routeSearchFields:(id)a3 didClearInputTextForWaypointAtIndex:(unint64_t)waypointIndex
{
  v11 = a3;
  if (waypointIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(RouteSearchViewController *)self fieldsViewController];
    if (v6)
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
  v8 = [(RouteSearchViewController *)self currentUITargetForAnalytics];
  if ((~waypointIndex & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInteger:waypointIndex];
    v10 = [v9 stringValue];
    [v7 captureUserAction:278 onTarget:v8 eventValue:v10];
  }

  else
  {
    [v7 captureUserAction:278 onTarget:v8 eventValue:0];
  }
}

- (void)routeSearch:(id)a3 didSearchForItem:(id)a4 previousSearchItem:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(RouteSearchViewController *)self fieldsViewController];
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v11 = [(RouteSearchViewController *)self searchFieldView];
    v10 = [v11 searchFieldItem];
  }

  v22[0] = @"SearchSessionAddStopFromWaypointEditor";
  v22[1] = @"SearchSessionAddStopReplacingServerProvidedWaypoint";
  v23[0] = &__kCFBooleanTrue;
  v12 = [v10 composedWaypoint];
  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 isServerProvidedWaypoint]);
  v23[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (v8)
  {
    v16 = [(RouteSearchViewController *)self latLngFromSearchFieldItem:v8];
    if (v16)
    {
      [v15 setObject:v16 forKeyedSubscript:@"SearchSessionAddStopPreviousLatLng"];
    }
  }

  v17 = +[MKMapService sharedService];
  [v17 captureUserAction:2014 onTarget:-[RouteSearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v18 = [(RouteSearchViewController *)self delegate];
  v19 = [v15 copy];
  v20 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v21 = [v20 recentAutocompleteSessionData];
  [v18 routeSearchViewController:self wantsToPerformSearchWithItem:v7 userInfo:v19 autocompleteSessionData:v21];
}

- (void)routeSearch:(id)a3 didUpdateInputText:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v11 = [v8 length] != 0;
  v12 = [v9 isEditingAnySearchField];

  [v10 updateDataSourceHasInput:v11 isEditing:v12];
  v13 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v14 = [(RouteSearchViewController *)self traitsForRouteSearchTableViewController:v13];

  v15 = [(RouteSearchViewController *)self fieldsViewController];

  if (v15)
  {
    v16 = [(RouteSearchViewController *)self _itemsForRouteRequest];
    v17 = v16;
    if (a5)
    {
      if ([v16 count] > a5)
      {
        v18 = [v17 objectAtIndex:a5 - 1];
        v19 = [(RouteSearchViewController *)self fieldsViewController];
        v20 = [v19 items];
        v21 = [v20 objectAtIndex:a5];

        v22 = 14;
        goto LABEL_8;
      }

      v22 = 14;
    }

    else
    {
      v22 = 13;
    }

    v18 = 0;
    v21 = 0;
    goto LABEL_20;
  }

  waypointIndex = self->_waypointIndex;
  v24 = [(RouteSearchViewController *)self searchFieldView];
  v18 = [v24 previousSearchFieldItem];

  v17 = [(RouteSearchViewController *)self searchFieldView];
  v21 = [v17 searchFieldItem];
  if (waypointIndex)
  {
    v22 = 14;
  }

  else
  {
    v22 = 13;
  }

LABEL_8:

  if (v18)
  {
    v25 = [(RouteSearchViewController *)self latLngFromSearchFieldItem:v18];
    [v25 lat];
    v27 = v26;
    [v25 lng];
    if (fabs(v28) > 180.0 || v27 < -90.0 || v27 > 90.0)
    {
      v29 = sub_100798A3C();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v32 = 138412290;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Previous location in Route Planning has invalid coordinate. SearchFieldItem: %@", &v32, 0xCu);
      }
    }

    else
    {
      [v14 setAutocompleteOriginationPreviousLatlng:v25];
    }
  }

LABEL_20:
  v30 = [v21 composedWaypoint];
  [v14 setAutocompleteOriginationEditingServerWaypoints:{objc_msgSend(v30, "isServerProvidedWaypoint")}];

  [(RouteSearchViewController *)self setUsingExistingWaypointNameForAutocomplete:0];
  v31 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [v31 updateInputText:v8 traits:v14 source:v22];
}

- (void)routeSearchFieldsDidUpdateItemsForRouteRequest:(id)a3
{
  v4 = a3;
  v5 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [v5 reset];

  if (self->_selectionHandler)
  {
    v6 = [v4 itemsForRouteRequest];
    v7 = [v6 firstObject];

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

  v8 = [(RouteSearchViewController *)self searchFieldView];
  if (v8)
  {
    v9 = v8;
    v10 = [(RouteSearchViewController *)self _isReadyToRoute];

    if (v10)
    {
      goto LABEL_9;
    }
  }

LABEL_3:
}

- (void)routeSearchFieldsDidBeginEditing:(id)a3
{
  v4 = a3;
  v7 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v5 = [v4 hasInput];
  v6 = [v4 isEditingAnySearchField];

  [v7 updateDataSourceHasInput:v5 isEditing:v6];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  if (a4 == 1)
  {
    [(RouteSearchViewController *)self _cancelTapped:a3];
  }
}

- (void)_requestRouteWithItems:(id)a3
{
  v4 = a3;
  v5 = [(RouteSearchViewController *)self routeSearchFields];
  [v5 endEditingFields];

  v6 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v7 = [(RouteSearchViewController *)self routeSearchFields];
  [v6 updateDataSourceHasInput:0 isEditing:{objc_msgSend(v7, "isEditingAnySearchField")}];

  v8 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [v8 reloadData];

  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:6003 onTarget:-[RouteSearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v10 = [(RouteSearchViewController *)self dataCoordinator];
  v11 = [v10 desiredTransportType];

  v12 = [(RouteSearchViewController *)self delegate];
  v13 = [v12 currentDirectionItemForRouteSearchViewController:self];

  if (!v11)
  {
    if ([v13 editRequired:0])
    {
      v11 = [v13 transportType];
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = self->_wasLocationServicesApproved && self->_wasAuthorizedForPreciseLocation;
  v15 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = v4;
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

  v22 = [[DirectionItem alloc] initWithItems:v15 ignoreMapType:v14 transportType:v11];
  v23 = [(RouteSearchViewController *)self dataCoordinator];

  if (v23)
  {
    v24 = [(RouteSearchViewController *)self dataCoordinator];
    v25 = [v24 drivePreferences];
    [(DirectionItem *)v22 setDrivePreferences:v25];

    v26 = [(RouteSearchViewController *)self dataCoordinator];
    v27 = [v26 transitPreferences];
    [(DirectionItem *)v22 setTransitPreferences:v27];

    v28 = [(RouteSearchViewController *)self dataCoordinator];
    v29 = [v28 cyclePreferences];
    [(DirectionItem *)v22 setCyclePreferences:v29];

    v30 = [(RouteSearchViewController *)self dataCoordinator];
    v31 = [v30 timing];
    [(DirectionItem *)v22 setTiming:v31];
  }

  v32 = [NSMutableDictionary alloc];
  v47 = @"DirectionsSessionInitiatorKey";
  v48 = &off_1016EAEB0;
  v33 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v34 = [v32 initWithDictionary:v33];

  v35 = [(RouteSearchViewController *)self dataCoordinator];
  v36 = [v35 originalHistoryEntryIdentifier];
  [v34 setObject:v36 forKeyedSubscript:@"DirectionsRouteUUIDKey"];

  v37 = [(RouteSearchViewController *)self dataCoordinator];
  v38 = [v37 automaticSharingContacts];
  [v34 setObject:v38 forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];

  v39 = [(RouteSearchViewController *)self routeSearchFields];
  LODWORD(v38) = [v39 hasInput];

  if (v38)
  {
    v40 = &off_1016EAEC8;
  }

  else
  {
    v40 = &off_1016EAEE0;
  }

  [v34 setObject:v40 forKeyedSubscript:{@"SearchSessionTraitsSource", v43}];
  v41 = [(RouteSearchViewController *)self delegate];
  v42 = [v34 copy];
  [v41 routeSearchViewController:self wantsToRequestRoutesWithItem:v22 allowToPromptEditing:1 userInfo:v42];
}

- (void)_requestRoute
{
  v3 = [(RouteSearchViewController *)self _itemsForRouteRequest];
  [(RouteSearchViewController *)self _requestRouteWithItems:v3];
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
        v9 = [v8 waypoint];
        v10 = [v9 isValid];

        if ((v10 & 1) == 0 && (sub_10000FA08(self) != 5 || !_UISolariumEnabled() || ![v8 isEmpty]))
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
  v3 = [(RouteSearchViewController *)self fieldsViewController];

  v4 = [(RouteSearchViewController *)self routeSearchFields];
  v5 = [v4 itemsForRouteRequest];
  v6 = v5;
  if (v3)
  {
  }

  else
  {
    v7 = [v5 firstObject];

    v8 = [(RouteSearchViewController *)self dataCoordinator];
    v9 = [v8 directionItemForCurrentSession];
    v10 = [v9 items];
    v6 = [v10 mutableCopy];

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
      [v6 addObject:v7];
    }

    else
    {
      [v6 replaceObjectAtIndex:self->_waypointIndex withObject:v7];
    }
  }

  return v6;
}

- (void)_cleanUpOnDismiss
{
  v3 = [(RouteSearchViewController *)self routeSearchFields];
  [v3 clear];

  [(RouteSearchViewController *)self setExitRoutePlanningOnCancel:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RouteSearchViewController;
  [(RouteSearchViewController *)&v4 viewDidAppear:a3];
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

- (void)willBecomeCurrent:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = RouteSearchViewController;
  [(ContaineeViewController *)&v12 willBecomeCurrent:a3];
  [(RouteSearchViewController *)self loadViewIfNeeded];
  v4 = [(RouteSearchViewController *)self dataCoordinator];
  v5 = [v4 desiredTransportType];
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 5)
      {
        goto LABEL_13;
      }

      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
      goto LABEL_12;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
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
  v8 = [(RouteSearchViewController *)self fieldsViewController];
  [v8 setMprEnabled:v6];

  v9 = [(RouteSearchViewController *)self fieldsViewController];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(RouteSearchViewController *)self fieldsViewController];
    [v11 willBecomeCurrent];
  }
}

- (void)_setupConstraints:(BOOL)a3
{
  v3 = a3;
  v5 = [(RouteSearchViewController *)self fieldsViewController];

  if (!v5)
  {
    v46 = objc_alloc_init(NSMutableArray);
    if (v3)
    {
      v42 = [(RouteWaypointSearchFieldView *)self->_searchFieldView leadingAnchor];
      v44 = [(ContaineeViewController *)self contentView];
      v40 = [v44 leadingAnchor];
      v38 = [v42 constraintEqualToAnchor:v40];
      v48[0] = v38;
      v36 = [(RouteWaypointSearchFieldView *)self->_searchFieldView trailingAnchor];
      v6 = [(ContaineeViewController *)self contentView];
      v7 = [v6 trailingAnchor];
      v8 = [v36 constraintEqualToAnchor:v7];
      v48[1] = v8;
      v9 = [(RouteWaypointSearchFieldView *)self->_searchFieldView topAnchor];
      v10 = [(ContaineeViewController *)self contentView];
      v11 = [v10 topAnchor];
      v12 = [v9 constraintEqualToAnchor:v11];
      v48[2] = v12;
      v13 = [NSArray arrayWithObjects:v48 count:3];
      [v46 addObjectsFromArray:v13];

      v14 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      v15 = [(RouteWaypointSearchFieldView *)self->_searchFieldView bottomAnchor];
    }

    else
    {
      v16 = [(RouteSearchViewController *)self containerHeaderView];
      v15 = [v16 bottomAnchor];

      v14 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    }

    v32 = v15;
    v45 = [(RouteSearchViewController *)self suggestionsTableViewController];
    v43 = [v45 view];
    v39 = [v43 leadingAnchor];
    v41 = [(ContaineeViewController *)self contentView];
    v37 = [v41 leadingAnchor];
    v35 = [v39 constraintEqualToAnchor:v37];
    v47[0] = v35;
    v34 = [(RouteSearchViewController *)self suggestionsTableViewController];
    v33 = [v34 view];
    v30 = [v33 trailingAnchor];
    v31 = [(ContaineeViewController *)self contentView];
    v29 = [v31 trailingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v47[1] = v28;
    v27 = [(RouteSearchViewController *)self suggestionsTableViewController];
    v26 = [v27 view];
    v17 = [v26 topAnchor];
    v18 = [v17 constraintEqualToAnchor:v15 constant:16.0];
    v47[2] = v18;
    v19 = [(RouteSearchViewController *)self suggestionsTableViewController];
    v20 = [v19 view];
    v21 = [v20 bottomAnchor];
    v22 = [(ContaineeViewController *)self contentView];
    v23 = [v22 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v47[3] = v24;
    v25 = [v14[286] arrayWithObjects:v47 count:4];
    [v46 addObjectsFromArray:v25];

    [NSLayoutConstraint activateConstraints:v46];
  }
}

- (void)_setupHeaderContentViewConstraints
{
  v16 = [NSMutableArray alloc];
  v25 = [(RouteSearchViewController *)self containerHeaderView];
  v23 = [v25 topAnchor];
  v24 = [(ContaineeViewController *)self headerView];
  v22 = [v24 topAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v26[0] = v21;
  v20 = [(RouteSearchViewController *)self containerHeaderView];
  v18 = [v20 bottomAnchor];
  v19 = [(ContaineeViewController *)self headerView];
  v17 = [v19 bottomAnchor];
  v15 = [v18 constraintEqualToAnchor:v17];
  v26[1] = v15;
  v14 = [(RouteSearchViewController *)self containerHeaderView];
  v13 = [v14 leadingAnchor];
  v3 = [(ContaineeViewController *)self headerView];
  v4 = [v3 leadingAnchor];
  v5 = [v13 constraintEqualToAnchor:v4];
  v26[2] = v5;
  v6 = [(RouteSearchViewController *)self containerHeaderView];
  v7 = [v6 trailingAnchor];
  v8 = [(ContaineeViewController *)self headerView];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
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
  v5 = [(RouteSearchViewController *)self exitRoutePlanningOnCancel];
  dispatch_async(&_dispatch_main_q, block);
  v3.receiver = self;
  v3.super_class = RouteSearchViewController;
  [(ContaineeViewController *)&v3 didDismissByGesture];
}

- (void)_updateTitle
{
  v3 = [(RouteSearchViewController *)self title];
  v4 = [v3 length];

  if (v4)
  {
    v12 = [(RouteSearchViewController *)self title];
    v5 = [(RouteSearchViewController *)self containerHeaderView];
    [v5 setTitle:v12];
  }

  else
  {
    if (sub_10000FA08(self) == 5 && _UISolariumEnabled() && (v6 = self->_waypointIndex, (v6 | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL) && (v6 >= [(NSArray *)self->_cachedItems count]|| [(NSArray *)self->_cachedItems count]== 2))
    {
      waypointIndex = self->_waypointIndex;
      v8 = +[NSBundle mainBundle];
      v12 = v8;
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

      v12 = v8;
    }

    v5 = [v8 localizedStringForKey:v9 value:@"localized string not found" table:0];
    v11 = [(RouteSearchViewController *)self containerHeaderView];
    [v11 setTitle:v5];
  }
}

- (void)setTitle:(id)a3
{
  v6.receiver = self;
  v6.super_class = RouteSearchViewController;
  v4 = a3;
  [(RouteSearchViewController *)&v6 setTitle:v4];
  v5 = [(RouteSearchViewController *)self containerHeaderView:v6.receiver];
  [v5 setTitle:v4];
}

- (void)_addSubViewsWithTextSearchSupport:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [[RouteWaypointSearchFieldView alloc] initWithDelegate:self];
    searchFieldView = self->_searchFieldView;
    self->_searchFieldView = v5;

    [(RouteWaypointSearchFieldView *)self->_searchFieldView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(ContaineeViewController *)self contentView];
    [v7 addSubview:self->_searchFieldView];
  }

  v8 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [(RouteSearchViewController *)self addChildViewController:v8];

  v9 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v10 = [v9 view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(ContaineeViewController *)self contentView];
  v12 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v13 = [v12 view];
  [v11 addSubview:v13];

  v14 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [v14 didMoveToParentViewController:self];

  v15 = +[MapsOfflineUIHelper sharedHelper];
  LODWORD(v12) = [v15 isUsingOfflineMaps];

  if (v12 && !v3)
  {
    v16 = [(RouteSearchViewController *)self routeSearchFields];
    [v16 endEditingFields];
  }

  [(RouteSearchViewController *)self _setupConstraints:v3];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = RouteSearchViewController;
  [(ContaineeViewController *)&v14 viewDidLoad];
  v3 = [(RouteSearchViewController *)self fieldsViewController];

  if (!v3)
  {
    v4 = [(ContaineeViewController *)self headerView];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:1 forAxis:v5];

    v6 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
    [(ContainerHeaderView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)v6 setDelegate:self];
    v7 = [(ContaineeViewController *)self headerView];
    [v7 addSubview:v6];

    [(RouteSearchViewController *)self setContainerHeaderView:v6];
    [(RouteSearchViewController *)self _setupHeaderContentViewConstraints];
    [(RouteSearchViewController *)self _updateTitle];
    v8 = +[MapsOfflineUIHelper sharedHelper];
    v9 = [v8 isUsingOfflineMaps];

    if (v9)
    {
      [(RouteSearchViewController *)self _initOfflinePlaceHolderWithTicket];
    }

    else
    {
      [(RouteSearchViewController *)self _addSubViewsWithTextSearchSupport:1];
    }

    v10 = [(RouteSearchViewController *)self view];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v12 stringByReplacingOccurrencesOfString:@"Controller" withString:&stru_1016631F0];
    [v10 setAccessibilityIdentifier:v13];

    +[KeyboardAvoidingView startObservingKeyboard];
  }
}

- (BOOL)hasInputsInSearchField
{
  v2 = [(RouteSearchViewController *)self routeSearchFields];
  v3 = [v2 hasInput];

  return v3;
}

- (id)selectedSearchFieldItem
{
  v2 = [(RouteSearchViewController *)self searchFieldView];
  v3 = [v2 searchFieldItem];

  return v3;
}

- (id)latLngFromSearchFieldItem:(id)a3
{
  v3 = a3;
  v4 = [v3 latLng];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    [v3 address];
  }

  return v5;
}

- (unint64_t)_currentlySelectedIndexForAddStop
{
  v3 = [(RouteSearchViewController *)self fieldsViewController];

  if (v3)
  {
    v4 = [(RouteSearchViewController *)self fieldsViewController];
    v5 = [v4 _currentlySelectedIndexForAddStop];

    return v5;
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

- (void)setDataCoordinator:(id)a3
{
  objc_storeWeak(&self->_dataCoordinator, a3);

  [(RouteSearchViewController *)self updateFieldsWithCurrentDirectionItem];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  v4 = [(RouteSearchViewController *)self suggestionsTableViewController];
  [v4 reconfigureDataSources];
}

- (void)makeAFieldFirstResponderIfNeeded
{
  v3 = [(RouteSearchViewController *)self fieldsViewController];

  if (v3)
  {
    v4 = [(RouteSearchViewController *)self fieldsViewController];
    v5 = [v4 _currentlySelectedIndexForAddStop];

    v6 = [(RouteSearchViewController *)self fieldsViewController];
    v9 = v6;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 selectFieldAtIndex:v5];
      goto LABEL_9;
    }
  }

  else
  {
    if (!self->_supportsFullTextSearch)
    {
      v7 = +[MapsOfflineUIHelper sharedHelper];
      v8 = [v7 isUsingOfflineMaps];

      if (v8)
      {
        v9 = [(RouteSearchViewController *)self suggestionsTableViewController];
        [v9 updateCategoryDataSource:self->_supportsFullTextSearch];
        goto LABEL_9;
      }
    }

    v6 = [(RouteSearchViewController *)self routeSearchFields];
    v9 = v6;
  }

  [v6 beginEditingNextSearchField];
LABEL_9:
}

- (void)setPauseSelectionUpdates:(BOOL)a3
{
  v3 = a3;
  v4 = [(RouteSearchViewController *)self fieldsViewController];
  [v4 setPauseSelectionUpdates:v3];
}

- (void)replaceSelectedFieldWithItem:(id)a3
{
  v4 = a3;
  v5 = [(RouteSearchViewController *)self routeSearchFields];
  [v5 updateSearchFieldsFromIndex:0x7FFFFFFFFFFFFFFFLL withItem:v4];
}

- (void)deleteCurrentFieldIndex
{
  v2 = [(RouteSearchViewController *)self fieldsViewController];
  [v2 deleteCurrentFieldIndex];
}

- (BOOL)canDeleteCurrentFieldIndex
{
  v2 = [(RouteSearchViewController *)self fieldsViewController];
  v3 = [v2 canDeleteCurrentFieldIndex];

  return v3;
}

- (void)_selectFieldAtIndex:(unint64_t)a3 beginEditing:(BOOL)a4
{
  v4 = a4;
  if (!self->_selectionHandler)
  {
    v7 = [(RouteSearchViewController *)self dataCoordinator];
    v8 = [v7 directionItemForCurrentSession];
    v9 = [v8 items];
    cachedItems = self->_cachedItems;
    self->_cachedItems = v9;

    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v11 = a3;
    }

    self->_waypointIndex = v11;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a3 = 0;
    goto LABEL_10;
  }

  if (a3 == -1)
  {
    a3 = [(NSArray *)self->_cachedItems lastObject];
LABEL_10:
    v12 = 0;
    goto LABEL_16;
  }

  if ([(NSArray *)self->_cachedItems count]<= a3)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = [(NSArray *)self->_cachedItems objectAtIndexedSubscript:a3];
  if (a3)
  {
LABEL_15:
    v22 = v12;
    a3 = [(NSArray *)self->_cachedItems objectAtIndexedSubscript:a3 - 1];
    v12 = v22;
  }

LABEL_16:
  v23 = v12;
  v13 = [v12 waypointName];
  -[RouteSearchViewController setUsingExistingWaypointNameForAutocomplete:](self, "setUsingExistingWaypointNameForAutocomplete:", [v13 length] != 0);

  v14 = [(RouteSearchViewController *)self searchFieldView];
  [v14 setSearchFieldItem:v23];

  v15 = [(RouteSearchViewController *)self searchFieldView];
  [v15 setPreviousSearchFieldItem:a3];

  if (v4)
  {
    v16 = [(RouteSearchViewController *)self searchFieldView];
    [v16 beginEditingNextSearchField];
  }

  [(RouteSearchViewController *)self _updateTitle];
  waypointIndex = self->_waypointIndex;
  v18 = waypointIndex == 0x7FFFFFFFFFFFFFFFLL || waypointIndex >= [(NSArray *)self->_cachedItems count];
  v19 = +[MapsOfflineUIHelper sharedHelper];
  v20 = [v19 isUsingOfflineMaps];

  if (!v20 || self->_supportsFullTextSearch)
  {
    v21 = [(RouteSearchViewController *)self suggestionsTableViewController];
    [v21 updateTableViewHeader:v18];
  }
}

- (void)selectFieldIndex:(unint64_t)a3 beginEditing:(BOOL)a4
{
  v4 = a4;
  v7 = [(RouteSearchViewController *)self fieldsViewController];

  if (v7)
  {
    v10 = [(RouteSearchViewController *)self fieldsViewController];
    [v10 selectFieldAtIndex:a3];
  }

  else
  {
    v8 = +[MapsOfflineUIHelper sharedHelper];
    v9 = [v8 isUsingOfflineMaps];

    if (v9)
    {
      self->_isWaitingForTextSearchSupport = 1;
      self->_editIndex = a3;
      self->_waypointIndex = a3;
    }

    else
    {

      [(RouteSearchViewController *)self _selectFieldAtIndex:a3 beginEditing:v4];
    }
  }
}

- (void)setHeaderTitle:(id)a3
{
  v4 = a3;
  [(RouteSearchViewController *)self loadViewIfNeeded];
  v5 = [(RouteSearchViewController *)self containerHeaderView];
  [v5 setTitle:v4];
}

- (void)updateWithItems:(id)a3
{
  v4 = a3;
  v5 = [(RouteSearchViewController *)self fieldsViewController];
  [v5 setItems:v4];

  v9 = [(RouteSearchViewController *)self suggestionsTableViewController];
  v6 = [(RouteSearchViewController *)self fieldsViewController];
  v7 = [v6 hasInput];
  v8 = [(RouteSearchViewController *)self fieldsViewController];
  [v9 updateDataSourceHasInput:v7 isEditing:{objc_msgSend(v8, "isEditingAnySearchField")}];
}

- (void)updateFieldsWithCurrentDirectionItem
{
  [(RouteSearchViewController *)self loadViewIfNeeded];
  v3 = [(RouteSearchViewController *)self dataCoordinator];
  v5 = [v3 directionItemForCurrentSession];

  v4 = [v5 items];
  [(RouteSearchViewController *)self updateWithItems:v4];
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

- (RouteSearchViewController)initWithWaypointEditor:(id)a3 suggestionsTableView:(id)a4 delegate:(id)a5 dataCoordinator:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = RouteSearchViewController;
  v15 = [(RouteSearchViewController *)&v18 init];
  if (v15)
  {
    v16 = +[MKLocationManager sharedLocationManager];
    v15->_wasLocationServicesApproved = [v16 isLocationServicesApproved];
    v15->_wasAuthorizedForPreciseLocation = [v16 isAuthorizedForPreciseLocation];
    objc_storeStrong(&v15->_fieldsViewController, a3);
    [(RoutePlanningWaypointEditorViewController *)v15->_fieldsViewController setDelegate:v15];
    objc_storeStrong(&v15->_suggestionsTableViewController, a4);
    [(RouteSearchViewController *)v15 setDelegate:v13];
    [(RouteSearchViewController *)v15 setDataCoordinator:v14];
    [(RouteWaypointSuggestionsTableViewController *)v15->_suggestionsTableViewController setDelegate:v15];
  }

  return v15;
}

- (RouteSearchViewController)initWithDelegate:(id)a3 items:(id)a4 waypointIndex:(unint64_t)a5 selectionHandler:(id)a6
{
  v11 = a4;
  v12 = a6;
  v13 = [(RouteSearchViewController *)self initWithDelegate:a3 dataCoordinator:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_cachedItems, a4);
    v14->_waypointIndex = a5;
    v15 = [v12 copy];
    selectionHandler = v14->_selectionHandler;
    v14->_selectionHandler = v15;
  }

  return v14;
}

- (RouteSearchViewController)initWithDelegate:(id)a3 dataCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RouteSearchViewController;
  v8 = [(RouteSearchViewController *)&v14 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[RouteWaypointSuggestionsTableViewController alloc] initWithNibName:0 bundle:0];
    suggestionsTableViewController = v8->_suggestionsTableViewController;
    v8->_suggestionsTableViewController = v9;

    v11 = [(ContaineeViewController *)v8 cardPresentationController];
    [v11 setPresentedModally:1];

    v12 = [(ContaineeViewController *)v8 cardPresentationController];
    [v12 setTakesAvailableHeight:1];

    [(RouteSearchViewController *)v8 setExitRoutePlanningOnCancel:0];
    [(RouteSearchViewController *)v8 setDelegate:v6];
    [(RouteSearchViewController *)v8 setDataCoordinator:v7];
    [(RouteWaypointSuggestionsTableViewController *)v8->_suggestionsTableViewController setDelegate:v8];
  }

  return v8;
}

@end