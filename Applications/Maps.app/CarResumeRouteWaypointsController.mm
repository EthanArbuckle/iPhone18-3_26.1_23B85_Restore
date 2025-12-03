@interface CarResumeRouteWaypointsController
- (CarResumeRouteWaypointsController)initWithEntry:(id)entry;
- (id)destinationSearchResultIfAvailable;
- (id)searchFieldItems;
- (void)configureDirectionItemForLoad:(id)load;
- (void)configureUserInfoForLoad:(id)load;
@end

@implementation CarResumeRouteWaypointsController

- (void)configureUserInfoForLoad:(id)load
{
  loadCopy = load;
  v7.receiver = self;
  v7.super_class = CarResumeRouteWaypointsController;
  [(CarWaypointsController *)&v7 configureUserInfoForLoad:loadCopy];
  [loadCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"DirectionsIsResumedNavigationSession"];
  sharingContacts = [(MapsSuggestionsEntry *)self->_entry sharingContacts];
  [loadCopy setObject:sharingContacts forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];

  v6 = sub_10079A4D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v9 = loadCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Using userInfo %{private}@", buf, 0xCu);
  }
}

- (void)configureDirectionItemForLoad:(id)load
{
  loadCopy = load;
  v10.receiver = self;
  v10.super_class = CarResumeRouteWaypointsController;
  [(CarWaypointsController *)&v10 configureDirectionItemForLoad:loadCopy];
  if ([(MapsSuggestionsEntry *)self->_entry containsKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"])
  {
    v5 = [(MapsSuggestionsEntry *)self->_entry routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
    v6 = [DrivePreferences alloc];
    automobileOptions = [v5 automobileOptions];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [(DrivePreferences *)v6 initWithAutomobileOptions:automobileOptions defaults:v8];
    [loadCopy setDrivePreferences:v9];
  }
}

- (id)searchFieldItems
{
  searchFieldItems = self->super._searchFieldItems;
  if (!searchFieldItems)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = objc_alloc_init(SearchFieldItem);
    v6 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v5 setSearchResult:v6];

    [v4 addObject:v5];
    v7 = [SearchFieldItem searchFieldItemsForRouteInSuggestionsEntry:self->_entry excludeCurrentLocationOrigin:1];
    [v4 addObjectsFromArray:v7];
    v8 = sub_10079A4D8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138477827;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using items %{private}@", &v12, 0xCu);
    }

    v9 = [v4 copy];
    v10 = self->super._searchFieldItems;
    self->super._searchFieldItems = v9;

    searchFieldItems = self->super._searchFieldItems;
  }

  return searchFieldItems;
}

- (id)destinationSearchResultIfAvailable
{
  searchFieldItems = [(CarResumeRouteWaypointsController *)self searchFieldItems];
  lastObject = [searchFieldItems lastObject];
  waypoint = [lastObject waypoint];
  v5 = [waypoint pin];

  return v5;
}

- (CarResumeRouteWaypointsController)initWithEntry:(id)entry
{
  entryCopy = entry;
  if ([entryCopy type] == 11)
  {
    v10.receiver = self;
    v10.super_class = CarResumeRouteWaypointsController;
    v6 = [(CarResumeRouteWaypointsController *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_entry, entry);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end