@interface RoutePlanningWaypointEditorViewController
- (BOOL)canDeleteCurrentFieldIndex;
- (BOOL)containsCurrentLocationItem;
- (BOOL)containsWaypointForItem:(id)a3;
- (BOOL)hasInput;
- (BOOL)isEditingAnySearchField;
- (BOOL)mprEnabled;
- (NSArray)items;
- (NSArray)itemsForRouteRequest;
- (NSString)focusGroupIdentifierForCurrentlyEditingField;
- (RoutePlanningWaypointEditorViewController)initWithWaypointInfoProvider:(id)a3;
- (RouteWaypointSearchFieldsDelegate)delegate;
- (UILayoutGuide)layoutGuideForCurrentlyEditingField;
- (double)contentHeight;
- (unint64_t)_currentlySelectedIndexForAddStop;
- (void)_invalidateIntrinsicContentSize;
- (void)beginEditingNextSearchField;
- (void)deleteCurrentFieldIndex;
- (void)endEditingFields;
- (void)invokeSearchWithText:(id)a3;
- (void)selectFieldAtIndex:(unint64_t)a3;
- (void)selectFromField;
- (void)selectToField;
- (void)setItems:(id)a3;
- (void)setMprEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAutoCompleteWithText:(id)a3;
- (void)updateSearchFieldsFromIndex:(unint64_t)a3 withItem:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)waypointListView:(id)a3 didClearInputTextForWaypointAtIndex:(unint64_t)a4;
- (void)waypointListView:(id)a3 didDeleteWaypointAtIndex:(unint64_t)a4;
- (void)waypointListView:(id)a3 didMoveWaypoint:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6;
- (void)waypointListView:(id)a3 didSelectCollapsedWaypoints:(id)a4;
- (void)waypointListView:(id)a3 didStartEditingWaypointAtIndex:(unint64_t)a4;
- (void)waypointListViewDidSelectAddStop:(id)a3;
@end

@implementation RoutePlanningWaypointEditorViewController

- (RouteWaypointSearchFieldsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)invokeSearchWithText:(id)a3
{
  v4 = a3;
  if (sub_10000FA08(self) == 5)
  {
    v5 = sub_100EFD6B0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Invoking search by triggering route request", &v19, 2u);
    }

    v6 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [v6 deselectAllRows];

    v7 = [(RoutePlanningWaypointEditorViewController *)self delegate];
    [(SearchFieldItem *)v7 routeSearchFieldsDidUpdateItemsForRouteRequest:self];
LABEL_20:

    goto LABEL_21;
  }

  v8 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v9 = [v8 selectedIndex];

  if (v9)
  {
    v10 = (v9 - 1);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [(RoutePlanningWaypointEditorViewController *)self items];
  v12 = [v11 count];

  if (v9 < v12)
  {
    v13 = sub_100EFD6B0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Invoking search for index %lu", &v19, 0xCu);
    }

    v7 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v7 setSearchString:v4];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v17 = [(RoutePlanningWaypointEditorViewController *)self items];
      v14 = [v17 objectAtIndex:v10];
    }

    v18 = [(RoutePlanningWaypointEditorViewController *)self delegate];
    [v18 routeSearch:self didSearchForItem:v7 previousSearchItem:v14];

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
    v7 = sub_10006D178();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
    {
      v16 = +[NSThread callStackSymbols];
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)updateAutoCompleteWithText:(id)a3
{
  v4 = a3;
  v6 = [(RoutePlanningWaypointEditorViewController *)self delegate];
  v5 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [v6 routeSearch:self didUpdateInputText:v4 atIndex:{objc_msgSend(v5, "selectedIndex")}];
}

- (void)waypointListView:(id)a3 didSelectCollapsedWaypoints:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100EFD6B0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Did select collapsed waypoints", v13, 2u);
  }

  v9 = +[MKMapService sharedService];
  v10 = [v6 count];

  v11 = [NSNumber numberWithUnsignedInteger:v10];
  v12 = [v11 stringValue];
  [v9 captureUserAction:31 onTarget:607 eventValue:v12];

  [v7 expandStopsIfNeeded];
  [(RoutePlanningWaypointEditorViewController *)self _invalidateIntrinsicContentSize];
}

- (void)waypointListView:(id)a3 didClearInputTextForWaypointAtIndex:(unint64_t)a4
{
  v6 = sub_100EFD6B0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did clear input text for field at index %lu", &v10, 0xCu);
  }

  v7 = [(RoutePlanningWaypointEditorViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(RoutePlanningWaypointEditorViewController *)self delegate];
    [v9 routeSearchFields:self didClearInputTextForWaypointAtIndex:a4];
  }
}

- (void)waypointListView:(id)a3 didDeleteWaypointAtIndex:(unint64_t)a4
{
  v6 = sub_100EFD6B0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did delete waypoint at index %lu", &v11, 0xCu);
  }

  v7 = +[MKMapService sharedService];
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v9 = [v8 stringValue];
  [v7 captureUserAction:280 onTarget:607 eventValue:v9];

  [(RoutePlanningWaypointEditorViewController *)self _invalidateIntrinsicContentSize];
  v10 = [(RoutePlanningWaypointEditorViewController *)self delegate];
  [v10 routeSearchFieldsDidUpdateItemsForRouteRequest:self];
}

- (void)waypointListView:(id)a3 didMoveWaypoint:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6
{
  v9 = sub_100EFD6B0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 134218240;
    v15 = a5;
    v16 = 2048;
    v17 = a6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did move waypoint from index %lu at %lu", &v14, 0x16u);
  }

  v10 = +[MKMapService sharedService];
  v11 = [NSNumber numberWithUnsignedInteger:a5];
  v12 = [v11 stringValue];
  [v10 captureUserAction:279 onTarget:607 eventValue:v12];

  v13 = [(RoutePlanningWaypointEditorViewController *)self delegate];
  [v13 routeSearchFieldsDidUpdateItemsForRouteRequest:self];
}

- (void)waypointListView:(id)a3 didStartEditingWaypointAtIndex:(unint64_t)a4
{
  v5 = sub_100EFD6B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did start editing waypoint at index %lu", &v9, 0xCu);
  }

  v6 = +[MKMapService sharedService];
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8 = [v7 stringValue];
  [v6 captureUserAction:277 onTarget:607 eventValue:v8];
}

- (void)waypointListViewDidSelectAddStop:(id)a3
{
  v4 = sub_100EFD6B0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Did select Add Stop", buf, 2u);
  }

  v5 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [v5 addStop];

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
  v2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v3 = [v2 selectedIndex];

  return v3;
}

- (double)contentHeight
{
  v2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [v2 intrinsicContentSize];
  v4 = v3;

  return v4;
}

- (BOOL)hasInput
{
  v3 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v4 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v5 = [v3 cellForIndex:{objc_msgSend(v4, "selectedIndex")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 currentText];
    v7 = [v6 length] != 0;
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

  v4 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v3 = [v4 selectedIndex] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (BOOL)containsWaypointForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = v4, +[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isLocationServicesApproved], v8 = objc_msgSend(v6, "isAuthorizedForPreciseLocation"), v9 = objc_msgSend(v5, "isDynamicCurrentLocation"), v5, v6, v9) && (v7 & v8) == 0)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v11 = [SearchFieldItem searchFieldItemWithObject:v4 expandRecentsItem:1 preserveContact:1];
    if (v11)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [(RoutePlanningWaypointEditorViewController *)self items];
      v10 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v13 = *v17;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v12);
            }

            if ([v11 isEquivalentAsWaypointToSearchFieldItem:*(*(&v16 + 1) + 8 * i)])
            {
              LOBYTE(v10) = 1;
              goto LABEL_16;
            }
          }

          v10 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)updateSearchFieldsFromIndex:(unint64_t)a3 withItem:(id)a4
{
  v6 = a4;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v7 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  a3 = [v7 selectedIndex];

  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v8 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v9 = [v8 addStop];

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = sub_100EFD6B0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Adding waypoint cell to accommodate new item", &v18, 2u);
  }

  v11 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v12 = [v11 waypoints];
  a3 = [v12 count] - 1;

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
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

    v16 = sub_100EFD6B0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Didn't have a selected cell when applying item %@", &v18, 0xCu);
    }
  }

  else
  {
LABEL_15:
    v17 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [v17 replaceWaypointAtIndex:a3 withWaypoint:v6];

    v16 = [(RoutePlanningWaypointEditorViewController *)self delegate];
    [v16 routeSearchFieldsDidUpdateItemsForRouteRequest:self];
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

  v4 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [v4 deselectAllRows];
}

- (void)beginEditingNextSearchField
{
  v3 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v4 = [v3 selectedIndex];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    v6 = [v5 waypoints];

    v7 = [v6 count];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = v7 - 1;
      while (1)
      {
        v11 = [v6 objectAtIndexedSubscript:v9];
        v12 = [v11 waypointName];
        v13 = [v12 length];

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

    v16 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [v16 selectRowIndex:v9];
  }

  else
  {
    v14 = sub_100EFD6B0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Begin editing next field", &v17, 2u);
    }

    v6 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [v6 selectNextSearchField];
  }
}

- (BOOL)mprEnabled
{
  v2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v3 = [v2 mprEnabled];

  return v3;
}

- (void)setMprEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [v4 setMprEnabled:v3];
}

- (NSArray)itemsForRouteRequest
{
  v2 = [(RoutePlanningWaypointEditorViewController *)self items];
  v3 = sub_100021DB0(v2, &stru_10165CA80);

  return v3;
}

- (void)setItems:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [v5 setWaypoints:v4];
}

- (NSArray)items
{
  v2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v3 = [v2 waypoints];

  return v3;
}

- (void)deleteCurrentFieldIndex
{
  v3 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v4 = [v3 selectedIndex];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
    [v5 performDeleteAtIndex:v4];
  }
}

- (BOOL)canDeleteCurrentFieldIndex
{
  v3 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v4 = [v3 selectedIndex];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v7 = [v6 canDeleteWaypointForCellAtIndex:v4];

  return v7;
}

- (void)selectFieldAtIndex:(unint64_t)a3
{
  v4 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [v4 selectRowIndex:a3];
}

- (void)selectToField
{
  v5 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v3 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v4 = [v3 waypoints];
  [v5 selectRowIndex:{objc_msgSend(v4, "count") - 1}];
}

- (void)selectFromField
{
  v2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  [v2 selectRowIndex:0];
}

- (BOOL)containsCurrentLocationItem
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(RoutePlanningWaypointEditorViewController *)self items];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) searchResult];
        v7 = [v6 isDynamicCurrentLocation];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v3 = [v2 focusGroupIdentifierForCurrentlyEditingField];

  return v3;
}

- (UILayoutGuide)layoutGuideForCurrentlyEditingField
{
  v2 = [(RoutePlanningWaypointEditorViewController *)self waypointListView];
  v3 = [v2 layoutGuideForCurrentlyEditingField];

  return v3;
}

- (void)_invalidateIntrinsicContentSize
{
  v3 = [(RoutePlanningWaypointEditorViewController *)self intrinsicContentSizeInvalidationHandler];

  if (v3)
  {
    v4 = [(RoutePlanningWaypointEditorViewController *)self intrinsicContentSizeInvalidationHandler];
    v4[2]();
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = RoutePlanningWaypointEditorViewController;
  v4 = a3;
  [(RoutePlanningWaypointEditorViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 verticalSizeClass];

  v6 = [(RoutePlanningWaypointEditorViewController *)self traitCollection];
  v7 = [v6 verticalSizeClass];

  if (v5 != v7)
  {
    [(RoutePlanningWaypointEditorViewController *)self _invalidateIntrinsicContentSize];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RoutePlanningWaypointEditorViewController;
  [(RoutePlanningWaypointEditorViewController *)&v4 viewDidDisappear:a3];
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

  v9 = [(RoutePlanningWaypointEditorViewController *)self view];
  [v9 addSubview:self->_waypointListView];

  v25 = [(RoutePlanningWaypointListView *)self->_waypointListView leadingAnchor];
  v26 = [(RoutePlanningWaypointEditorViewController *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v28[0] = v23;
  v21 = [(RoutePlanningWaypointListView *)self->_waypointListView trailingAnchor];
  v22 = [(RoutePlanningWaypointEditorViewController *)self view];
  v20 = [v22 trailingAnchor];
  v10 = [v21 constraintEqualToAnchor:v20];
  v28[1] = v10;
  v11 = [(RoutePlanningWaypointListView *)self->_waypointListView topAnchor];
  v12 = [(RoutePlanningWaypointEditorViewController *)self view];
  v13 = [v12 topAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v28[2] = v14;
  v15 = [(RoutePlanningWaypointListView *)self->_waypointListView bottomAnchor];
  v16 = [(RoutePlanningWaypointEditorViewController *)self view];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:-4.0];
  v28[3] = v18;
  v19 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (RoutePlanningWaypointEditorViewController)initWithWaypointInfoProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RoutePlanningWaypointEditorViewController;
  v5 = [(RoutePlanningWaypointEditorViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_waypointInfoProvider, v4);
  }

  return v6;
}

@end