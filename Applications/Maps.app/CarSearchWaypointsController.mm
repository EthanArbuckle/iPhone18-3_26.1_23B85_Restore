@interface CarSearchWaypointsController
- (CarSearchWaypointsController)initWithSearchResults:(id)a3 selectedIndex:(unint64_t)a4;
- (id)destinationSearchResultIfAvailable;
- (id)subtitleForCurrentDestination;
- (id)titleForCurrentDestination;
- (id)visuallySelectedItem;
- (unint64_t)totalDestinations;
- (void)nextPlaceWithTraits:(id)a3;
- (void)previousPlaceWithTraits:(id)a3;
- (void)setSelectedIndex:(unint64_t)a3;
@end

@implementation CarSearchWaypointsController

- (unint64_t)totalDestinations
{
  v2 = [(CarSearchWaypointsController *)self searchResults];
  v3 = [v2 count];

  return v3;
}

- (id)subtitleForCurrentDestination
{
  v2 = [(CarSearchWaypointsController *)self destinationSearchResultIfAvailable];
  v3 = [v2 mapItem];
  v4 = [v3 _addressFormattedAsShortenedAddress];

  return v4;
}

- (id)titleForCurrentDestination
{
  v2 = [(CarSearchWaypointsController *)self destinationSearchResultIfAvailable];
  v3 = [v2 title];

  return v3;
}

- (id)destinationSearchResultIfAvailable
{
  v3 = [(CarSearchWaypointsController *)self searchResults];
  v4 = [v3 objectAtIndexedSubscript:{-[CarSearchWaypointsController selectedIndex](self, "selectedIndex")}];

  return v4;
}

- (void)previousPlaceWithTraits:(id)a3
{
  v5 = a3;
  if ([(CarWaypointsController *)self allowLooping]&& ![(CarSearchWaypointsController *)self selectedIndex])
  {
    v4 = [(CarSearchWaypointsController *)self totalDestinations];
  }

  else
  {
    v4 = [(CarSearchWaypointsController *)self selectedIndex];
  }

  [(CarSearchWaypointsController *)self setSelectedIndex:v4 - 1];
  [(CarWaypointsController *)self startLoadWithTraits:v5];
}

- (void)nextPlaceWithTraits:(id)a3
{
  v5 = a3;
  v4 = [(CarSearchWaypointsController *)self selectedIndex]+ 1;
  if ([(CarWaypointsController *)self allowLooping]&& v4 >= [(CarSearchWaypointsController *)self totalDestinations])
  {
    v4 = 0;
  }

  [(CarSearchWaypointsController *)self setSelectedIndex:v4];
  [(CarWaypointsController *)self startLoadWithTraits:v5];
}

- (id)visuallySelectedItem
{
  v3 = [(CarSearchWaypointsController *)self searchResults];
  v4 = [v3 objectAtIndexedSubscript:self->_selectedIndex];

  return v4;
}

- (void)setSelectedIndex:(unint64_t)a3
{
  if ([(CarSearchWaypointsController *)self totalDestinations])
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a3 = 0;
    }

    else if ([(CarSearchWaypointsController *)self totalDestinations]<= a3)
    {
      a3 = [(CarSearchWaypointsController *)self totalDestinations];
    }
  }

  else
  {
    a3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_selectedIndex = a3;
}

- (CarSearchWaypointsController)initWithSearchResults:(id)a3 selectedIndex:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CarSearchWaypointsController;
  v7 = [(CarSearchWaypointsController *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    searchResults = v7->_searchResults;
    v7->_searchResults = v8;

    v7->_selectedIndex = a4;
  }

  return v7;
}

@end