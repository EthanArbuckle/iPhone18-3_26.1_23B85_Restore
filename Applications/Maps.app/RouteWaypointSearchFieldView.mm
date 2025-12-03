@interface RouteWaypointSearchFieldView
- (BOOL)_shouldHideDynamicCurrentLocation;
- (BOOL)containsCurrentLocationItem;
- (BOOL)containsWaypointForItem:(id)item;
- (BOOL)hasInput;
- (BOOL)searchBarShouldClear:(id)clear;
- (RouteWaypointSearchFieldView)initWithDelegate:(id)delegate;
- (RouteWaypointSearchFieldsDelegate)delegate;
- (id)itemsForRouteRequest;
- (void)beginEditingNextSearchField;
- (void)clear;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)setSearchFieldItem:(id)item;
- (void)shouldReplaceTextWithCompletion:(id)completion;
- (void)updateSearchFieldsFromIndex:(unint64_t)index withItem:(id)item;
- (void)updateTheme;
@end

@implementation RouteWaypointSearchFieldView

- (RouteWaypointSearchFieldsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)searchBarShouldClear:(id)clear
{
  delegate = [(RouteWaypointSearchFieldView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RouteWaypointSearchFieldView *)self delegate];
    [delegate2 routeSearchFields:self didClearInputTextForWaypointAtIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return 1;
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  delegate = [(RouteWaypointSearchFieldView *)self delegate];
  text = [clickedCopy text];

  v6 = [SearchFieldItem searchFieldItemWithObject:text];
  previousSearchFieldItem = [(RouteWaypointSearchFieldView *)self previousSearchFieldItem];
  [delegate routeSearch:self didSearchForItem:v6 previousSearchItem:previousSearchFieldItem];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  delegate = [(RouteWaypointSearchFieldView *)self delegate];
  [delegate routeSearch:self didUpdateInputText:changeCopy atIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(RouteWaypointSearchFieldView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(RouteWaypointSearchFieldView *)self delegate];
    [delegate2 routeSearchFieldsDidBeginEditing:self];
  }

  delegate3 = [(RouteWaypointSearchFieldView *)self delegate];
  text = [editingCopy text];

  if (text)
  {
    v9 = text;
  }

  else
  {
    v9 = &stru_1016631F0;
  }

  [delegate3 routeSearch:self didUpdateInputText:v9 atIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)clear
{
  searchFieldItem = [(RouteWaypointSearchFieldView *)self searchFieldItem];
  [searchFieldItem clear];

  [(UISearchBar *)self->_searchBar setText:0];
  searchBar = self->_searchBar;

  [(UISearchBar *)searchBar resignFirstResponder];
}

- (void)shouldReplaceTextWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = completionCopy;
  if (isKindOfClass)
  {
    v6 = completionCopy;
    queryAcceleratorCompletionString = [v6 queryAcceleratorCompletionString];
    if ([queryAcceleratorCompletionString length])
    {
      [v6 queryAcceleratorCompletionString];
    }

    else
    {
      [v6 title];
    }
    v8 = ;

    [(UISearchTextField *)self->_searchField setText:v8];
    delegate = [(RouteWaypointSearchFieldView *)self delegate];
    [delegate routeSearch:self didUpdateInputText:v8 atIndex:0x7FFFFFFFFFFFFFFFLL];

    v5 = completionCopy;
  }
}

- (void)updateSearchFieldsFromIndex:(unint64_t)index withItem:(id)item
{
  itemCopy = item;
  [(UISearchBar *)self->_searchBar resignFirstResponder];
  searchFieldItem = self->_searchFieldItem;
  self->_searchFieldItem = itemCopy;

  delegate = [(RouteWaypointSearchFieldView *)self delegate];
  [delegate routeSearchFieldsDidUpdateItemsForRouteRequest:self];
}

- (BOOL)containsWaypointForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [itemCopy isDynamicCurrentLocation] && -[RouteWaypointSearchFieldView _shouldHideDynamicCurrentLocation](self, "_shouldHideDynamicCurrentLocation"))
  {
    v5 = 0;
  }

  else
  {
    v6 = [SearchFieldItem searchFieldItemWithObject:itemCopy expandRecentsItem:1 preserveContact:1];
    if (v6)
    {
      searchFieldItem = [(RouteWaypointSearchFieldView *)self searchFieldItem];
      v5 = [v6 isEquivalentAsWaypointToSearchFieldItem:searchFieldItem];
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
  searchFieldItem = [(RouteWaypointSearchFieldView *)self searchFieldItem];
  searchResult = [searchFieldItem searchResult];
  isDynamicCurrentLocation = [searchResult isDynamicCurrentLocation];

  return isDynamicCurrentLocation;
}

- (id)itemsForRouteRequest
{
  searchFieldItem = [(RouteWaypointSearchFieldView *)self searchFieldItem];
  v5 = searchFieldItem;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)_shouldHideDynamicCurrentLocation
{
  v2 = +[MKLocationManager sharedLocationManager];
  isLocationServicesApproved = [v2 isLocationServicesApproved];
  v4 = isLocationServicesApproved & [v2 isAuthorizedForPreciseLocation];

  return v4 ^ 1;
}

- (void)beginEditingNextSearchField
{
  [(UISearchBar *)self->_searchBar becomeFirstResponder];
  searchTextField = [(UISearchBar *)self->_searchBar searchTextField];
  beginningOfDocument = [searchTextField beginningOfDocument];
  endOfDocument = [searchTextField endOfDocument];
  v5 = [searchTextField textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  [searchTextField setSelectedTextRange:v5];
}

- (BOOL)hasInput
{
  text = [(UISearchBar *)self->_searchBar text];
  v3 = [text length] != 0;

  return v3;
}

- (void)updateTheme
{
  v7.receiver = self;
  v7.super_class = RouteWaypointSearchFieldView;
  [(MapsThemeView *)&v7 updateTheme];
  theme = [(RouteWaypointSearchFieldView *)self theme];
  searchBarPlaceHolderColor = [theme searchBarPlaceHolderColor];
  _placeholderLabel = [(UISearchTextField *)self->_searchField _placeholderLabel];
  [_placeholderLabel setTextColor:searchBarPlaceHolderColor];

  theme2 = [(RouteWaypointSearchFieldView *)self theme];
  -[UISearchTextField setKeyboardAppearance:](self->_searchField, "setKeyboardAppearance:", [theme2 textFieldKeyboardAppearance]);
}

- (void)setSearchFieldItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_searchFieldItem, item);
  v5 = itemCopy;
  if (itemCopy)
  {
    searchResult = [itemCopy searchResult];
    if ([searchResult isDynamicCurrentLocation])
    {
      _shouldHideDynamicCurrentLocation = [(RouteWaypointSearchFieldView *)self _shouldHideDynamicCurrentLocation];

      if (_shouldHideDynamicCurrentLocation)
      {
        waypointName = 0;
LABEL_8:
        v5 = itemCopy;
        goto LABEL_9;
      }
    }

    else
    {
    }

    waypointName = [itemCopy waypointName];
    goto LABEL_8;
  }

  waypointName = 0;
LABEL_9:
  routePlanningWaypointRequest = [v5 routePlanningWaypointRequest];
  waypointRequest = [routePlanningWaypointRequest waypointRequest];

  objc_opt_class();
  LOBYTE(routePlanningWaypointRequest) = objc_opt_isKindOfClass();

  if ((routePlanningWaypointRequest & 1) != 0 && waypointRequest)
  {
    routePlanningWaypointRequest2 = [itemCopy routePlanningWaypointRequest];
    waypointRequest2 = [routePlanningWaypointRequest2 waypointRequest];

    waypointNameWhenEditing = [waypointRequest2 waypointNameWhenEditing];

    waypointName = waypointNameWhenEditing;
  }

  [(UISearchBar *)self->_searchBar setText:waypointName];
  evStopWaypoint = [(SearchFieldItem *)self->_searchFieldItem evStopWaypoint];
  isServerProvidedWaypoint = [evStopWaypoint isServerProvidedWaypoint];

  v16 = +[NSBundle mainBundle];
  v17 = v16;
  if (isServerProvidedWaypoint)
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

- (RouteWaypointSearchFieldView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = RouteWaypointSearchFieldView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(RouteWaypointSearchFieldView *)&v28 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = height;
  if (height)
  {
    LODWORD(v9) = 1148846080;
    [(RouteWaypointSearchFieldView *)height setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v11) = 1148846080;
    [(RouteWaypointSearchFieldView *)v10 setContentHuggingPriority:1 forAxis:v11];
    objc_storeWeak(&v10->_delegate, delegateCopy);
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
    searchTextField = [(UISearchBar *)v10->_searchBar searchTextField];
    searchField = v10->_searchField;
    v10->_searchField = searchTextField;

    [(UISearchTextField *)v10->_searchField setAccessibilityIdentifier:@"WaypointSearchField"];
    v20 = objc_alloc_init(NSMutableArray);
    LODWORD(v21) = 1148846080;
    v22 = [(UISearchBar *)v10->_searchBar _maps_constraintsEqualToEdgesOfView:v10 priority:v21];
    allConstraints = [v22 allConstraints];
    [v20 addObjectsFromArray:allConstraints];

    [NSLayoutConstraint activateConstraints:v20];
    v24 = +[MapsOfflineUIHelper sharedHelper];
    LODWORD(allConstraints) = [v24 isUsingOfflineMaps];

    if (allConstraints)
    {
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"[Waypoint Editing] Search Offline Maps" value:@"localized string not found" table:0];
      [(UISearchBar *)v10->_searchBar setPlaceholder:v26];
    }
  }

  return v10;
}

@end