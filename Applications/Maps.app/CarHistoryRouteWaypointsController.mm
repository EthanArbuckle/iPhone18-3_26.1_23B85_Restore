@interface CarHistoryRouteWaypointsController
- (CarHistoryRouteWaypointsController)initWithHistoryItem:(id)item;
- (id)destinationSearchResultIfAvailable;
- (id)searchFieldItems;
@end

@implementation CarHistoryRouteWaypointsController

- (id)searchFieldItems
{
  searchFieldItems = self->super._searchFieldItems;
  if (!searchFieldItems)
  {
    v4 = [SearchFieldItem searchFieldItemsForRouteHistoryEntry:self->_historyItem];
    v5 = self->super._searchFieldItems;
    self->super._searchFieldItems = v4;

    firstObject = [(NSArray *)self->super._searchFieldItems firstObject];
    searchResult = [firstObject searchResult];
    isDynamicCurrentLocation = [searchResult isDynamicCurrentLocation];

    if ((isDynamicCurrentLocation & 1) == 0)
    {
      v9 = +[SearchResult currentLocationSearchResult];
      [firstObject setSearchResult:v9];
    }

    searchFieldItems = self->super._searchFieldItems;
  }

  return searchFieldItems;
}

- (id)destinationSearchResultIfAvailable
{
  endWaypoint = [(MSPHistoryEntryRoute *)self->_historyItem endWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [SearchResult alloc];
    endWaypoint2 = [(MSPHistoryEntryRoute *)self->_historyItem endWaypoint];
    v7 = [(SearchResult *)v5 initWithComposedWaypoint:endWaypoint2];
  }

  else
  {
    endWaypoint2 = [(CarHistoryRouteWaypointsController *)self searchFieldItems];
    lastObject = [endWaypoint2 lastObject];
    waypoint = [lastObject waypoint];
    v7 = [waypoint pin];
  }

  return v7;
}

- (CarHistoryRouteWaypointsController)initWithHistoryItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = CarHistoryRouteWaypointsController;
  v6 = [(CarHistoryRouteWaypointsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_historyItem, item);
  }

  return v7;
}

@end