@interface CarSearchWaypointsController
- (CarSearchWaypointsController)initWithSearchResults:(id)results selectedIndex:(unint64_t)index;
- (id)destinationSearchResultIfAvailable;
- (id)subtitleForCurrentDestination;
- (id)titleForCurrentDestination;
- (id)visuallySelectedItem;
- (unint64_t)totalDestinations;
- (void)nextPlaceWithTraits:(id)traits;
- (void)previousPlaceWithTraits:(id)traits;
- (void)setSelectedIndex:(unint64_t)index;
@end

@implementation CarSearchWaypointsController

- (unint64_t)totalDestinations
{
  searchResults = [(CarSearchWaypointsController *)self searchResults];
  v3 = [searchResults count];

  return v3;
}

- (id)subtitleForCurrentDestination
{
  destinationSearchResultIfAvailable = [(CarSearchWaypointsController *)self destinationSearchResultIfAvailable];
  mapItem = [destinationSearchResultIfAvailable mapItem];
  _addressFormattedAsShortenedAddress = [mapItem _addressFormattedAsShortenedAddress];

  return _addressFormattedAsShortenedAddress;
}

- (id)titleForCurrentDestination
{
  destinationSearchResultIfAvailable = [(CarSearchWaypointsController *)self destinationSearchResultIfAvailable];
  title = [destinationSearchResultIfAvailable title];

  return title;
}

- (id)destinationSearchResultIfAvailable
{
  searchResults = [(CarSearchWaypointsController *)self searchResults];
  v4 = [searchResults objectAtIndexedSubscript:{-[CarSearchWaypointsController selectedIndex](self, "selectedIndex")}];

  return v4;
}

- (void)previousPlaceWithTraits:(id)traits
{
  traitsCopy = traits;
  if ([(CarWaypointsController *)self allowLooping]&& ![(CarSearchWaypointsController *)self selectedIndex])
  {
    totalDestinations = [(CarSearchWaypointsController *)self totalDestinations];
  }

  else
  {
    totalDestinations = [(CarSearchWaypointsController *)self selectedIndex];
  }

  [(CarSearchWaypointsController *)self setSelectedIndex:totalDestinations - 1];
  [(CarWaypointsController *)self startLoadWithTraits:traitsCopy];
}

- (void)nextPlaceWithTraits:(id)traits
{
  traitsCopy = traits;
  v4 = [(CarSearchWaypointsController *)self selectedIndex]+ 1;
  if ([(CarWaypointsController *)self allowLooping]&& v4 >= [(CarSearchWaypointsController *)self totalDestinations])
  {
    v4 = 0;
  }

  [(CarSearchWaypointsController *)self setSelectedIndex:v4];
  [(CarWaypointsController *)self startLoadWithTraits:traitsCopy];
}

- (id)visuallySelectedItem
{
  searchResults = [(CarSearchWaypointsController *)self searchResults];
  v4 = [searchResults objectAtIndexedSubscript:self->_selectedIndex];

  return v4;
}

- (void)setSelectedIndex:(unint64_t)index
{
  if ([(CarSearchWaypointsController *)self totalDestinations])
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      index = 0;
    }

    else if ([(CarSearchWaypointsController *)self totalDestinations]<= index)
    {
      index = [(CarSearchWaypointsController *)self totalDestinations];
    }
  }

  else
  {
    index = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_selectedIndex = index;
}

- (CarSearchWaypointsController)initWithSearchResults:(id)results selectedIndex:(unint64_t)index
{
  resultsCopy = results;
  v11.receiver = self;
  v11.super_class = CarSearchWaypointsController;
  v7 = [(CarSearchWaypointsController *)&v11 init];
  if (v7)
  {
    v8 = [resultsCopy copy];
    searchResults = v7->_searchResults;
    v7->_searchResults = v8;

    v7->_selectedIndex = index;
  }

  return v7;
}

@end