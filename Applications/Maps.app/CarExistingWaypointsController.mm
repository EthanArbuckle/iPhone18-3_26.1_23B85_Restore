@interface CarExistingWaypointsController
- (CarExistingWaypointsController)initWithRoutePlanningSession:(id)session;
- (id)destinationSearchResultIfAvailable;
- (id)originSearchResult;
- (id)subtitleForCurrentDestination;
- (id)titleForCurrentDestination;
@end

@implementation CarExistingWaypointsController

- (id)subtitleForCurrentDestination
{
  destinationSearchResultIfAvailable = [(CarExistingWaypointsController *)self destinationSearchResultIfAvailable];
  mapItem = [destinationSearchResultIfAvailable mapItem];
  _addressFormattedAsShortenedAddress = [mapItem _addressFormattedAsShortenedAddress];

  return _addressFormattedAsShortenedAddress;
}

- (id)titleForCurrentDestination
{
  routePlanningSession = [(CarExistingWaypointsController *)self routePlanningSession];
  destinationName = [routePlanningSession destinationName];

  return destinationName;
}

- (id)destinationSearchResultIfAvailable
{
  routePlanningSession = [(CarExistingWaypointsController *)self routePlanningSession];
  destinationDisplayableMarker = [routePlanningSession destinationDisplayableMarker];

  return destinationDisplayableMarker;
}

- (id)originSearchResult
{
  routePlanningSession = [(CarExistingWaypointsController *)self routePlanningSession];
  originDisplayableMarker = [routePlanningSession originDisplayableMarker];

  return originDisplayableMarker;
}

- (CarExistingWaypointsController)initWithRoutePlanningSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = CarExistingWaypointsController;
  v6 = [(CarExistingWaypointsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routePlanningSession, session);
  }

  return v7;
}

@end