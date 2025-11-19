@interface CarWaypointsController
- (BOOL)canGoNext;
- (BOOL)canGoPrevious;
- (NSArray)searchFieldItems;
- (NSDictionary)userInfo;
- (NSString)titleForCurrentDestination;
- (SearchResult)originSearchResult;
- (void)startLoadWithTraits:(id)a3;
@end

@implementation CarWaypointsController

- (void)startLoadWithTraits:(id)a3
{
  v4 = a3;
  v5 = [DirectionItem alloc];
  v6 = [(CarWaypointsController *)self searchFieldItems];
  v17 = [(DirectionItem *)v5 initWithItems:v6 transportType:1];

  [(CarWaypointsController *)self configureDirectionItemForLoad:v17];
  v7 = [(CarWaypointsController *)self userInfo];
  v8 = [v7 mutableCopy];

  [(CarWaypointsController *)self configureUserInfoForLoad:v8];
  v9 = sub_100D506E0(v17, v4, 0, v8);

  v10 = +[CarDisplayController sharedInstance];
  v11 = [v10 platformController];
  v12 = [v11 currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v14 = +[CarDisplayController sharedInstance];
  v15 = [v14 platformController];
  v16 = v15;
  if (isKindOfClass)
  {
    [v15 replaceCurrentSessionWithSession:v9];
  }

  else
  {
    [v15 pushSession:v9];
  }
}

- (SearchResult)originSearchResult
{
  originSearchResult = self->_originSearchResult;
  if (!originSearchResult)
  {
    v4 = +[SearchResult currentLocationSearchResult];
    v5 = self->_originSearchResult;
    self->_originSearchResult = v4;

    originSearchResult = self->_originSearchResult;
  }

  return originSearchResult;
}

- (NSArray)searchFieldItems
{
  searchFieldItems = self->_searchFieldItems;
  if (!searchFieldItems)
  {
    v4 = [(CarWaypointsController *)self originSearchResult];
    v5 = [SearchFieldItem searchFieldItemWithObject:v4];

    v6 = [(CarWaypointsController *)self destinationSearchResultIfAvailable];
    v7 = [SearchFieldItem searchFieldItemWithObject:v6];

    v11[0] = v5;
    v11[1] = v7;
    v8 = [NSArray arrayWithObjects:v11 count:2];
    v9 = self->_searchFieldItems;
    self->_searchFieldItems = v8;

    searchFieldItems = self->_searchFieldItems;
  }

  return searchFieldItems;
}

- (NSString)titleForCurrentDestination
{
  v2 = [(CarWaypointsController *)self searchFieldItems];
  v3 = [v2 lastObject];
  v4 = [v3 waypointName];

  return v4;
}

- (NSDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = objc_alloc_init(NSDictionary);
    v5 = self->_userInfo;
    self->_userInfo = v4;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (BOOL)canGoPrevious
{
  v3 = [(CarWaypointsController *)self indexOfCurrentDestination];
  v4 = [(CarWaypointsController *)self totalDestinations];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (BOOL)canGoNext
{
  v3 = [(CarWaypointsController *)self indexOfCurrentDestination];
  v4 = [(CarWaypointsController *)self totalDestinations];
  return v3 < v4 - 1 && v4 != 0;
}

@end