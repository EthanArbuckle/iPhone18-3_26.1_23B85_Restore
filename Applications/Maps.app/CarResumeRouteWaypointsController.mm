@interface CarResumeRouteWaypointsController
- (CarResumeRouteWaypointsController)initWithEntry:(id)a3;
- (id)destinationSearchResultIfAvailable;
- (id)searchFieldItems;
- (void)configureDirectionItemForLoad:(id)a3;
- (void)configureUserInfoForLoad:(id)a3;
@end

@implementation CarResumeRouteWaypointsController

- (void)configureUserInfoForLoad:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CarResumeRouteWaypointsController;
  [(CarWaypointsController *)&v7 configureUserInfoForLoad:v4];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DirectionsIsResumedNavigationSession"];
  v5 = [(MapsSuggestionsEntry *)self->_entry sharingContacts];
  [v4 setObject:v5 forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];

  v6 = sub_10079A4D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Using userInfo %{private}@", buf, 0xCu);
  }
}

- (void)configureDirectionItemForLoad:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CarResumeRouteWaypointsController;
  [(CarWaypointsController *)&v10 configureDirectionItemForLoad:v4];
  if ([(MapsSuggestionsEntry *)self->_entry containsKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"])
  {
    v5 = [(MapsSuggestionsEntry *)self->_entry routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
    v6 = [DrivePreferences alloc];
    v7 = [v5 automobileOptions];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [(DrivePreferences *)v6 initWithAutomobileOptions:v7 defaults:v8];
    [v4 setDrivePreferences:v9];
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
  v2 = [(CarResumeRouteWaypointsController *)self searchFieldItems];
  v3 = [v2 lastObject];
  v4 = [v3 waypoint];
  v5 = [v4 pin];

  return v5;
}

- (CarResumeRouteWaypointsController)initWithEntry:(id)a3
{
  v5 = a3;
  if ([v5 type] == 11)
  {
    v10.receiver = self;
    v10.super_class = CarResumeRouteWaypointsController;
    v6 = [(CarResumeRouteWaypointsController *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_entry, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end