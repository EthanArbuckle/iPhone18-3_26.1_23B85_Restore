@interface RoutePlanningWaypointEditorViewController
- (BOOL)canDeleteCurrentFieldIndex;
- (BOOL)containsCurrentLocationItem;
- (BOOL)containsWaypointForItem:(id)item;
- (BOOL)hasInput;
- (BOOL)isEditingAnySearchField;
- (BOOL)mprEnabled;
- (NSArray)items;
- (NSArray)itemsForRouteRequest;
- (NSString)focusGroupIdentifierForCurrentlyEditingField;
- (RoutePlanningWaypointEditorViewController)initWithWaypointInfoProvider:(id)provider;
- (RouteWaypointSearchFieldsDelegate)delegate;
- (UILayoutGuide)layoutGuideForCurrentlyEditingField;
- (double)contentHeight;
- (unint64_t)_currentlySelectedIndexForAddStop;
- (void)_invalidateIntrinsicContentSize;
- (void)beginEditingNextSearchField;
- (void)deleteCurrentFieldIndex;
- (void)endEditingFields;
- (void)invokeSearchWithText:(id)text;
- (void)selectFieldAtIndex:(unint64_t)index;
- (void)selectFromField;
- (void)selectToField;
- (void)setItems:(id)items;
- (void)setMprEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAutoCompleteWithText:(id)text;
- (void)updateSearchFieldsFromIndex:(unint64_t)index withItem:(id)item;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)waypointListView:(id)view didClearInputTextForWaypointAtIndex:(unint64_t)index;
- (void)waypointListView:(id)view didDeleteWaypointAtIndex:(unint64_t)index;
- (void)waypointListView:(id)view didMoveWaypoint:(id)waypoint fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)waypointListView:(id)view didSelectCollapsedWaypoints:(id)waypoints;
- (void)waypointListView:(id)view didStartEditingWaypointAtIndex:(unint64_t)index;
- (void)waypointListViewDidSelectAddStop:(id)stop;
@end

@implementation RoutePlanningWaypointEditorViewController

- (RouteWaypointSearchFieldsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)invokeSearchWithText:(id)text
{
  textCopy = text;
  if (sub_10000FA08(self) == 5)
  {
    v5 = sub_100EFD6B0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Invoking search by triggering route request", &v19, 2u);
    }

    waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [waypointListView deselectAllRows];

    delegate = [(RoutePlanningWaypointEditorViewController *)self delegate];
    [(SearchFieldItem *)delegate routeSearchFieldsDidUpdateItemsForRouteRequest:self];
LABEL_20:

    goto LABEL_21;
  }

  waypointListView2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  selectedIndex = [waypointListView2 selectedIndex];

  if (selectedIndex)
  {
    v10 = (selectedIndex - 1);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  items = [(RoutePlanningWaypointEditorViewController *)self items];
  v12 = [items count];

  if (selectedIndex < v12)
  {
    v13 = sub_100EFD6B0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = selectedIndex;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Invoking search for index %lu", &v19, 0xCu);
    }

    delegate = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)delegate setSearchString:textCopy];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      items2 = [(RoutePlanningWaypointEditorViewController *)self items];
      v14 = [items2 objectAtIndex:v10];
    }

    delegate2 = [(RoutePlanningWaypointEditorViewController *)self delegate];
    [delegate2 routeSearch:self didSearchForItem:delegate previousSearchItem:v14];

    goto LABEL_20;
  }

  v15 = sub_10006D178();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315650;
    v20 = "[RoutePlanningWaypointEditorViewController invokeSearchWithText:]";
    v21 = 2080;
    v22 = "RoutePlanningWaypointEditorViewController.m";
    v23 = 1024;
    v24 = 358;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v19, 0x1Cu);
  }

  if (sub_100E03634())
  {
    delegate = sub_10006D178();
    if (os_log_type_enabled(&delegate->super, OS_LOG_TYPE_ERROR))
    {
      v16 = +[NSThread callStackSymbols];
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, &delegate->super, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)updateAutoCompleteWithText:(id)text
{
  textCopy = text;
  delegate = [(RoutePlanningWaypointEditorViewController *)self delegate];
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [delegate routeSearch:self didUpdateInputText:textCopy atIndex:{objc_msgSend(waypointListView, "selectedIndex")}];
}

- (void)waypointListView:(id)view didSelectCollapsedWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  viewCopy = view;
  v8 = sub_100EFD6B0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Did select collapsed waypoints", v13, 2u);
  }

  v9 = +[MKMapService sharedService];
  v10 = [waypointsCopy count];

  v11 = [NSNumber numberWithUnsignedInteger:v10];
  stringValue = [v11 stringValue];
  [v9 captureUserAction:31 onTarget:607 eventValue:stringValue];

  [viewCopy expandStopsIfNeeded];
  [(RoutePlanningWaypointEditorViewController *)self _invalidateIntrinsicContentSize];
}

- (void)waypointListView:(id)view didClearInputTextForWaypointAtIndex:(unint64_t)index
{
  v6 = sub_100EFD6B0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did clear input text for field at index %lu", &v10, 0xCu);
  }

  delegate = [(RoutePlanningWaypointEditorViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(RoutePlanningWaypointEditorViewController *)self delegate];
    [delegate2 routeSearchFields:self didClearInputTextForWaypointAtIndex:index];
  }
}

- (void)waypointListView:(id)view didDeleteWaypointAtIndex:(unint64_t)index
{
  v6 = sub_100EFD6B0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did delete waypoint at index %lu", &v11, 0xCu);
  }

  v7 = +[MKMapService sharedService];
  v8 = [NSNumber numberWithUnsignedInteger:index];
  stringValue = [v8 stringValue];
  [v7 captureUserAction:280 onTarget:607 eventValue:stringValue];

  [(RoutePlanningWaypointEditorViewController *)self _invalidateIntrinsicContentSize];
  delegate = [(RoutePlanningWaypointEditorViewController *)self delegate];
  [delegate routeSearchFieldsDidUpdateItemsForRouteRequest:self];
}

- (void)waypointListView:(id)view didMoveWaypoint:(id)waypoint fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v9 = sub_100EFD6B0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 134218240;
    indexCopy = index;
    v16 = 2048;
    toIndexCopy = toIndex;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did move waypoint from index %lu at %lu", &v14, 0x16u);
  }

  v10 = +[MKMapService sharedService];
  v11 = [NSNumber numberWithUnsignedInteger:index];
  stringValue = [v11 stringValue];
  [v10 captureUserAction:279 onTarget:607 eventValue:stringValue];

  delegate = [(RoutePlanningWaypointEditorViewController *)self delegate];
  [delegate routeSearchFieldsDidUpdateItemsForRouteRequest:self];
}

- (void)waypointListView:(id)view didStartEditingWaypointAtIndex:(unint64_t)index
{
  v5 = sub_100EFD6B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did start editing waypoint at index %lu", &v9, 0xCu);
  }

  v6 = +[MKMapService sharedService];
  v7 = [NSNumber numberWithUnsignedInteger:index];
  stringValue = [v7 stringValue];
  [v6 captureUserAction:277 onTarget:607 eventValue:stringValue];
}

- (void)waypointListViewDidSelectAddStop:(id)stop
{
  v4 = sub_100EFD6B0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Did select Add Stop", buf, 2u);
  }

  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [waypointListView addStop];

  [(RoutePlanningWaypointEditorViewController *)self _invalidateIntrinsicContentSize];
  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:6097 onTarget:607 eventValue:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100EFDE4C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (unint64_t)_currentlySelectedIndexForAddStop
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  selectedIndex = [waypointListView selectedIndex];

  return selectedIndex;
}

- (double)contentHeight
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [waypointListView intrinsicContentSize];
  v4 = v3;

  return v4;
}

- (BOOL)hasInput
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  waypointListView2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v5 = [waypointListView cellForIndex:{objc_msgSend(waypointListView2, "selectedIndex")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentText = [v5 currentText];
    v7 = [currentText length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEditingAnySearchField
{
  if (!self->_didInteractWithFields && sub_10000FA08(self) == 5)
  {
    return 0;
  }

  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v3 = [waypointListView selectedIndex] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (BOOL)containsWaypointForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = itemCopy, +[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isLocationServicesApproved], v8 = objc_msgSend(v6, "isAuthorizedForPreciseLocation"), v9 = objc_msgSend(v5, "isDynamicCurrentLocation"), v5, v6, v9) && (v7 & v8) == 0)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v11 = [SearchFieldItem searchFieldItemWithObject:itemCopy expandRecentsItem:1 preserveContact:1];
    if (v11)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      items = [(RoutePlanningWaypointEditorViewController *)self items];
      v10 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v13 = *v17;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(items);
            }

            if ([v11 isEquivalentAsWaypointToSearchFieldItem:*(*(&v16 + 1) + 8 * i)])
            {
              LOBYTE(v10) = 1;
              goto LABEL_16;
            }
          }

          v10 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (void)updateSearchFieldsFromIndex:(unint64_t)index withItem:(id)item
{
  itemCopy = item;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  index = [waypointListView selectedIndex];

  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  waypointListView2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  addStop = [waypointListView2 addStop];

  if (!addStop)
  {
    goto LABEL_7;
  }

  v10 = sub_100EFD6B0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Adding waypoint cell to accommodate new item", &v18, 2u);
  }

  waypointListView3 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  waypoints = [waypointListView3 waypoints];
  index = [waypoints count] - 1;

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = "[RoutePlanningWaypointEditorViewController updateSearchFieldsFromIndex:withItem:]";
      v20 = 2080;
      v21 = "RoutePlanningWaypointEditorViewController.m";
      v22 = 1024;
      v23 = 228;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v18, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
      }
    }

    delegate = sub_100EFD6B0();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = itemCopy;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_ERROR, "Didn't have a selected cell when applying item %@", &v18, 0xCu);
    }
  }

  else
  {
LABEL_15:
    waypointListView4 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [waypointListView4 replaceWaypointAtIndex:index withWaypoint:itemCopy];

    delegate = [(RoutePlanningWaypointEditorViewController *)self delegate];
    [delegate routeSearchFieldsDidUpdateItemsForRouteRequest:self];
  }
}

- (void)endEditingFields
{
  v3 = sub_100EFD6B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "End all editing", v5, 2u);
  }

  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [waypointListView deselectAllRows];
}

- (void)beginEditingNextSearchField
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  selectedIndex = [waypointListView selectedIndex];

  if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    waypointListView2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    waypoints = [waypointListView2 waypoints];

    v7 = [waypoints count];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = v7 - 1;
      while (1)
      {
        v11 = [waypoints objectAtIndexedSubscript:v9];
        waypointName = [v11 waypointName];
        v13 = [waypointName length];

        if (!v13)
        {
          break;
        }

        if (v8 == ++v9)
        {
          v9 = v10;
          break;
        }
      }
    }

    else
    {
      v9 = -1;
    }

    v15 = sub_100EFD6B0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Begin editing at index %lu", &v17, 0xCu);
    }

    waypointListView3 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [waypointListView3 selectRowIndex:v9];
  }

  else
  {
    v14 = sub_100EFD6B0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Begin editing next field", &v17, 2u);
    }

    waypoints = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [waypoints selectNextSearchField];
  }
}

- (BOOL)mprEnabled
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  mprEnabled = [waypointListView mprEnabled];

  return mprEnabled;
}

- (void)setMprEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [waypointListView setMprEnabled:enabledCopy];
}

- (NSArray)itemsForRouteRequest
{
  items = [(RoutePlanningWaypointEditorViewController *)self items];
  v3 = sub_100021DB0(items, &stru_10165CA80);

  return v3;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [waypointListView setWaypoints:itemsCopy];
}

- (NSArray)items
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  waypoints = [waypointListView waypoints];

  return waypoints;
}

- (void)deleteCurrentFieldIndex
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  selectedIndex = [waypointListView selectedIndex];

  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    waypointListView2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [waypointListView2 performDeleteAtIndex:selectedIndex];
  }
}

- (BOOL)canDeleteCurrentFieldIndex
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  selectedIndex = [waypointListView selectedIndex];

  if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  waypointListView2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v7 = [waypointListView2 canDeleteWaypointForCellAtIndex:selectedIndex];

  return v7;
}

- (void)selectFieldAtIndex:(unint64_t)index
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [waypointListView selectRowIndex:index];
}

- (void)selectToField
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  waypointListView2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  waypoints = [waypointListView2 waypoints];
  [waypointListView selectRowIndex:{objc_msgSend(waypoints, "count") - 1}];
}

- (void)selectFromField
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [waypointListView selectRowIndex:0];
}

- (BOOL)containsCurrentLocationItem
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  items = [(RoutePlanningWaypointEditorViewController *)self items];
  v3 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(items);
        }

        searchResult = [*(*(&v9 + 1) + 8 * i) searchResult];
        isDynamicCurrentLocation = [searchResult isDynamicCurrentLocation];

        if (isDynamicCurrentLocation)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSString)focusGroupIdentifierForCurrentlyEditingField
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  focusGroupIdentifierForCurrentlyEditingField = [waypointListView focusGroupIdentifierForCurrentlyEditingField];

  return focusGroupIdentifierForCurrentlyEditingField;
}

- (UILayoutGuide)layoutGuideForCurrentlyEditingField
{
  waypointListView = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  layoutGuideForCurrentlyEditingField = [waypointListView layoutGuideForCurrentlyEditingField];

  return layoutGuideForCurrentlyEditingField;
}

- (void)_invalidateIntrinsicContentSize
{
  intrinsicContentSizeInvalidationHandler = [(RoutePlanningWaypointEditorViewController *)self intrinsicContentSizeInvalidationHandler];

  if (intrinsicContentSizeInvalidationHandler)
  {
    intrinsicContentSizeInvalidationHandler2 = [(RoutePlanningWaypointEditorViewController *)self intrinsicContentSizeInvalidationHandler];
    intrinsicContentSizeInvalidationHandler2[2]();
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = RoutePlanningWaypointEditorViewController;
  changeCopy = change;
  [(RoutePlanningWaypointEditorViewController *)&v8 traitCollectionDidChange:changeCopy];
  verticalSizeClass = [changeCopy verticalSizeClass];

  traitCollection = [(RoutePlanningWaypointEditorViewController *)self traitCollection];
  verticalSizeClass2 = [traitCollection verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
    [(RoutePlanningWaypointEditorViewController *)self _invalidateIntrinsicContentSize];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = RoutePlanningWaypointEditorViewController;
  [(RoutePlanningWaypointEditorViewController *)&v4 viewDidDisappear:disappear];
  [(RoutePlanningWaypointListView *)self->_waypointListView collapseStopsIfNeeded];
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = RoutePlanningWaypointEditorViewController;
  [(RoutePlanningWaypointEditorViewController *)&v27 viewDidLoad];
  v3 = [RoutePlanningWaypointListView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_waypointInfoProvider);
  v5 = [(RoutePlanningWaypointListView *)v3 initWithWaypoints:&__NSArray0__struct editingMode:2 delegate:self waypointInfoProvider:WeakRetained];
  waypointListView = self->_waypointListView;
  self->_waypointListView = v5;

  [(RoutePlanningWaypointListView *)self->_waypointListView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (sub_10000FA08(self) == 5)
  {
    LODWORD(v7) = 1148846080;
    [(RoutePlanningWaypointListView *)self->_waypointListView setContentCompressionResistancePriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(RoutePlanningWaypointListView *)self->_waypointListView setContentHuggingPriority:1 forAxis:v8];
  }

  view = [(RoutePlanningWaypointEditorViewController *)self view];
  [view addSubview:self->_waypointListView];

  leadingAnchor = [(RoutePlanningWaypointListView *)self->_waypointListView leadingAnchor];
  view2 = [(RoutePlanningWaypointEditorViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v28[0] = v23;
  trailingAnchor = [(RoutePlanningWaypointListView *)self->_waypointListView trailingAnchor];
  view3 = [(RoutePlanningWaypointEditorViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v28[1] = v10;
  topAnchor = [(RoutePlanningWaypointListView *)self->_waypointListView topAnchor];
  view4 = [(RoutePlanningWaypointEditorViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[2] = v14;
  bottomAnchor = [(RoutePlanningWaypointListView *)self->_waypointListView bottomAnchor];
  view5 = [(RoutePlanningWaypointEditorViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
  v28[3] = v18;
  v19 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (RoutePlanningWaypointEditorViewController)initWithWaypointInfoProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = RoutePlanningWaypointEditorViewController;
  v5 = [(RoutePlanningWaypointEditorViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_waypointInfoProvider, providerCopy);
  }

  return v6;
}

@end