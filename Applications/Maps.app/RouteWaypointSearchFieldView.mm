@interface RouteWaypointSearchFieldView
- (BOOL)_shouldHideDynamicCurrentLocation;
- (BOOL)containsCurrentLocationItem;
- (BOOL)containsWaypointForItem:(id)a3;
- (BOOL)hasInput;
- (BOOL)searchBarShouldClear:(id)a3;
- (RouteWaypointSearchFieldView)initWithDelegate:(id)a3;
- (RouteWaypointSearchFieldsDelegate)delegate;
- (id)itemsForRouteRequest;
- (void)beginEditingNextSearchField;
- (void)clear;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)setSearchFieldItem:(id)a3;
- (void)shouldReplaceTextWithCompletion:(id)a3;
- (void)updateSearchFieldsFromIndex:(unint64_t)a3 withItem:(id)a4;
- (void)updateTheme;
@end

@implementation RouteWaypointSearchFieldView

- (RouteWaypointSearchFieldsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)searchBarShouldClear:(id)a3
{
  v4 = [(RouteWaypointSearchFieldView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(RouteWaypointSearchFieldView *)self delegate];
    [v6 routeSearchFields:self didClearInputTextForWaypointAtIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return 1;
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v8 = [(RouteWaypointSearchFieldView *)self delegate];
  v5 = [v4 text];

  v6 = [SearchFieldItem searchFieldItemWithObject:v5];
  v7 = [(RouteWaypointSearchFieldView *)self previousSearchFieldItem];
  [v8 routeSearch:self didSearchForItem:v6 previousSearchItem:v7];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  v6 = [(RouteWaypointSearchFieldView *)self delegate];
  [v6 routeSearch:self didUpdateInputText:v5 atIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(RouteWaypointSearchFieldView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(RouteWaypointSearchFieldView *)self delegate];
    [v7 routeSearchFieldsDidBeginEditing:self];
  }

  v10 = [(RouteWaypointSearchFieldView *)self delegate];
  v8 = [v4 text];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1016631F0;
  }

  [v10 routeSearch:self didUpdateInputText:v9 atIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)clear
{
  v3 = [(RouteWaypointSearchFieldView *)self searchFieldItem];
  [v3 clear];

  [(UISearchBar *)self->_searchBar setText:0];
  searchBar = self->_searchBar;

  [(UISearchBar *)searchBar resignFirstResponder];
}

- (void)shouldReplaceTextWithCompletion:(id)a3
{
  v10 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v10;
  if (isKindOfClass)
  {
    v6 = v10;
    v7 = [v6 queryAcceleratorCompletionString];
    if ([v7 length])
    {
      [v6 queryAcceleratorCompletionString];
    }

    else
    {
      [v6 title];
    }
    v8 = ;

    [(UISearchTextField *)self->_searchField setText:v8];
    v9 = [(RouteWaypointSearchFieldView *)self delegate];
    [v9 routeSearch:self didUpdateInputText:v8 atIndex:0x7FFFFFFFFFFFFFFFLL];

    v5 = v10;
  }
}

- (void)updateSearchFieldsFromIndex:(unint64_t)a3 withItem:(id)a4
{
  v5 = a4;
  [(UISearchBar *)self->_searchBar resignFirstResponder];
  searchFieldItem = self->_searchFieldItem;
  self->_searchFieldItem = v5;

  v7 = [(RouteWaypointSearchFieldView *)self delegate];
  [v7 routeSearchFieldsDidUpdateItemsForRouteRequest:self];
}

- (BOOL)containsWaypointForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 isDynamicCurrentLocation] && -[RouteWaypointSearchFieldView _shouldHideDynamicCurrentLocation](self, "_shouldHideDynamicCurrentLocation"))
  {
    v5 = 0;
  }

  else
  {
    v6 = [SearchFieldItem searchFieldItemWithObject:v4 expandRecentsItem:1 preserveContact:1];
    if (v6)
    {
      v7 = [(RouteWaypointSearchFieldView *)self searchFieldItem];
      v5 = [v6 isEquivalentAsWaypointToSearchFieldItem:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)containsCurrentLocationItem
{
  v2 = [(RouteWaypointSearchFieldView *)self searchFieldItem];
  v3 = [v2 searchResult];
  v4 = [v3 isDynamicCurrentLocation];

  return v4;
}

- (id)itemsForRouteRequest
{
  v2 = [(RouteWaypointSearchFieldView *)self searchFieldItem];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)_shouldHideDynamicCurrentLocation
{
  v2 = +[MKLocationManager sharedLocationManager];
  v3 = [v2 isLocationServicesApproved];
  v4 = v3 & [v2 isAuthorizedForPreciseLocation];

  return v4 ^ 1;
}

- (void)beginEditingNextSearchField
{
  [(UISearchBar *)self->_searchBar becomeFirstResponder];
  v6 = [(UISearchBar *)self->_searchBar searchTextField];
  v3 = [v6 beginningOfDocument];
  v4 = [v6 endOfDocument];
  v5 = [v6 textRangeFromPosition:v3 toPosition:v4];

  [v6 setSelectedTextRange:v5];
}

- (BOOL)hasInput
{
  v2 = [(UISearchBar *)self->_searchBar text];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)updateTheme
{
  v7.receiver = self;
  v7.super_class = RouteWaypointSearchFieldView;
  [(MapsThemeView *)&v7 updateTheme];
  v3 = [(RouteWaypointSearchFieldView *)self theme];
  v4 = [v3 searchBarPlaceHolderColor];
  v5 = [(UISearchTextField *)self->_searchField _placeholderLabel];
  [v5 setTextColor:v4];

  v6 = [(RouteWaypointSearchFieldView *)self theme];
  -[UISearchTextField setKeyboardAppearance:](self->_searchField, "setKeyboardAppearance:", [v6 textFieldKeyboardAppearance]);
}

- (void)setSearchFieldItem:(id)a3
{
  v20 = a3;
  objc_storeStrong(&self->_searchFieldItem, a3);
  v5 = v20;
  if (v20)
  {
    v6 = [v20 searchResult];
    if ([v6 isDynamicCurrentLocation])
    {
      v7 = [(RouteWaypointSearchFieldView *)self _shouldHideDynamicCurrentLocation];

      if (v7)
      {
        v8 = 0;
LABEL_8:
        v5 = v20;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = [v20 waypointName];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:
  v9 = [v5 routePlanningWaypointRequest];
  v10 = [v9 waypointRequest];

  objc_opt_class();
  LOBYTE(v9) = objc_opt_isKindOfClass();

  if ((v9 & 1) != 0 && v10)
  {
    v11 = [v20 routePlanningWaypointRequest];
    v12 = [v11 waypointRequest];

    v13 = [v12 waypointNameWhenEditing];

    v8 = v13;
  }

  [(UISearchBar *)self->_searchBar setText:v8];
  v14 = [(SearchFieldItem *)self->_searchFieldItem evStopWaypoint];
  v15 = [v14 isServerProvidedWaypoint];

  v16 = +[NSBundle mainBundle];
  v17 = v16;
  if (v15)
  {
    v18 = @"[Waypoint Editing] Search for charging stations";
  }

  else
  {
    v18 = @"[Waypoint Editing] Search Maps";
  }

  v19 = [v16 localizedStringForKey:v18 value:@"localized string not found" table:0];
  [(UISearchBar *)self->_searchBar setPlaceholder:v19];
}

- (RouteWaypointSearchFieldView)initWithDelegate:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = RouteWaypointSearchFieldView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(RouteWaypointSearchFieldView *)&v28 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = v8;
  if (v8)
  {
    LODWORD(v9) = 1148846080;
    [(RouteWaypointSearchFieldView *)v8 setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v11) = 1148846080;
    [(RouteWaypointSearchFieldView *)v10 setContentHuggingPriority:1 forAxis:v11];
    objc_storeWeak(&v10->_delegate, v4);
    v12 = objc_alloc_init(SearchFieldItem);
    searchFieldItem = v10->_searchFieldItem;
    v10->_searchFieldItem = v12;

    v14 = [[UISearchBar alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    searchBar = v10->_searchBar;
    v10->_searchBar = v14;

    [(UISearchBar *)v10->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UISearchBar *)v10->_searchBar setDelegate:v10];
    v16 = +[UIColor clearColor];
    [(UISearchBar *)v10->_searchBar setBackgroundColor:v16];

    v17 = objc_alloc_init(UIImage);
    [(UISearchBar *)v10->_searchBar setBackgroundImage:v17];

    [(UISearchBar *)v10->_searchBar setTranslucent:1];
    [(UISearchBar *)v10->_searchBar setOpaque:0];
    [(UISearchBar *)v10->_searchBar _setOverrideContentInsets:15 forRectEdges:0.0, 16.0, 0.0, 16.0];
    [(UISearchBar *)v10->_searchBar _setBackdropStyle:2005];
    [(UISearchBar *)v10->_searchBar setAccessibilityIdentifier:@"WaypointSearchBar"];
    [(UISearchBar *)v10->_searchBar setAutocorrectionType:1];
    [(UISearchBar *)v10->_searchBar setSpellCheckingType:1];
    [(RouteWaypointSearchFieldView *)v10 addSubview:v10->_searchBar];
    v18 = [(UISearchBar *)v10->_searchBar searchTextField];
    searchField = v10->_searchField;
    v10->_searchField = v18;

    [(UISearchTextField *)v10->_searchField setAccessibilityIdentifier:@"WaypointSearchField"];
    v20 = objc_alloc_init(NSMutableArray);
    LODWORD(v21) = 1148846080;
    v22 = [(UISearchBar *)v10->_searchBar _maps_constraintsEqualToEdgesOfView:v10 priority:v21];
    v23 = [v22 allConstraints];
    [v20 addObjectsFromArray:v23];

    [NSLayoutConstraint activateConstraints:v20];
    v24 = +[MapsOfflineUIHelper sharedHelper];
    LODWORD(v23) = [v24 isUsingOfflineMaps];

    if (v23)
    {
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"[Waypoint Editing] Search Offline Maps" value:@"localized string not found" table:0];
      [(UISearchBar *)v10->_searchBar setPlaceholder:v26];
    }
  }

  return v10;
}

@end