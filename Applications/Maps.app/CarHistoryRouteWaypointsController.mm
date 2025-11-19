@interface CarHistoryRouteWaypointsController
- (CarHistoryRouteWaypointsController)initWithHistoryItem:(id)a3;
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

    v6 = [(NSArray *)self->super._searchFieldItems firstObject];
    v7 = [v6 searchResult];
    v8 = [v7 isDynamicCurrentLocation];

    if ((v8 & 1) == 0)
    {
      v9 = +[SearchResult currentLocationSearchResult];
      [v6 setSearchResult:v9];
    }

    searchFieldItems = self->super._searchFieldItems;
  }

  return searchFieldItems;
}

- (id)destinationSearchResultIfAvailable
{
  v3 = [(MSPHistoryEntryRoute *)self->_historyItem endWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [SearchResult alloc];
    v6 = [(MSPHistoryEntryRoute *)self->_historyItem endWaypoint];
    v7 = [(SearchResult *)v5 initWithComposedWaypoint:v6];
  }

  else
  {
    v6 = [(CarHistoryRouteWaypointsController *)self searchFieldItems];
    v8 = [v6 lastObject];
    v9 = [v8 waypoint];
    v7 = [v9 pin];
  }

  return v7;
}

- (CarHistoryRouteWaypointsController)initWithHistoryItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CarHistoryRouteWaypointsController;
  v6 = [(CarHistoryRouteWaypointsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_historyItem, a3);
  }

  return v7;
}

@end