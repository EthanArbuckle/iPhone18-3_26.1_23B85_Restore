@interface CarWaypointsController
- (BOOL)canGoNext;
- (BOOL)canGoPrevious;
- (NSArray)searchFieldItems;
- (NSDictionary)userInfo;
- (NSString)titleForCurrentDestination;
- (SearchResult)originSearchResult;
- (void)startLoadWithTraits:(id)traits;
@end

@implementation CarWaypointsController

- (void)startLoadWithTraits:(id)traits
{
  traitsCopy = traits;
  v5 = [DirectionItem alloc];
  searchFieldItems = [(CarWaypointsController *)self searchFieldItems];
  v17 = [(DirectionItem *)v5 initWithItems:searchFieldItems transportType:1];

  [(CarWaypointsController *)self configureDirectionItemForLoad:v17];
  userInfo = [(CarWaypointsController *)self userInfo];
  v8 = [userInfo mutableCopy];

  [(CarWaypointsController *)self configureUserInfoForLoad:v8];
  v9 = sub_100D506E0(v17, traitsCopy, 0, v8);

  v10 = +[CarDisplayController sharedInstance];
  platformController = [v10 platformController];
  currentSession = [platformController currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v14 = +[CarDisplayController sharedInstance];
  platformController2 = [v14 platformController];
  v16 = platformController2;
  if (isKindOfClass)
  {
    [platformController2 replaceCurrentSessionWithSession:v9];
  }

  else
  {
    [platformController2 pushSession:v9];
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
    originSearchResult = [(CarWaypointsController *)self originSearchResult];
    v5 = [SearchFieldItem searchFieldItemWithObject:originSearchResult];

    destinationSearchResultIfAvailable = [(CarWaypointsController *)self destinationSearchResultIfAvailable];
    v7 = [SearchFieldItem searchFieldItemWithObject:destinationSearchResultIfAvailable];

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
  searchFieldItems = [(CarWaypointsController *)self searchFieldItems];
  lastObject = [searchFieldItems lastObject];
  waypointName = [lastObject waypointName];

  return waypointName;
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
  indexOfCurrentDestination = [(CarWaypointsController *)self indexOfCurrentDestination];
  totalDestinations = [(CarWaypointsController *)self totalDestinations];
  if (indexOfCurrentDestination)
  {
    v5 = totalDestinations == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (BOOL)canGoNext
{
  indexOfCurrentDestination = [(CarWaypointsController *)self indexOfCurrentDestination];
  totalDestinations = [(CarWaypointsController *)self totalDestinations];
  return indexOfCurrentDestination < totalDestinations - 1 && totalDestinations != 0;
}

@end