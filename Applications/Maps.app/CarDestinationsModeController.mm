@interface CarDestinationsModeController
- (CarDestinationsModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (UIScrollView)pptTestScrollView;
- (id)desiredCards;
- (id)mapView;
- (void)configureCard:(id)card forKey:(id)key;
- (void)destinationsCard:(id)card didSelectRecent:(id)recent;
- (void)destinationsCard:(id)card didSelectSuggestion:(id)suggestion;
- (void)destinationsCardDidSelectSavedPlaces:(id)places;
@end

@implementation CarDestinationsModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (UIScrollView)pptTestScrollView
{
  destinationsCard = [(CarDestinationsModeController *)self destinationsCard];
  tableView = [destinationsCard tableView];

  return tableView;
}

- (NSArray)carFocusOrderSequences
{
  chromeViewController = [(CarDestinationsModeController *)self chromeViewController];
  itemRepresentingStatusBanner = [chromeViewController itemRepresentingStatusBanner];
  chromeViewController2 = [(CarDestinationsModeController *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController2 itemRepresentingOverlays];
  v11[1] = itemRepresentingOverlays;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [CarFocusOrderSequence sequenceWithItems:v7 options:5];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];

  return v9;
}

- (NSArray)preferredCarFocusEnvironments
{
  destinationsCard = [(CarDestinationsModeController *)self destinationsCard];

  if (destinationsCard)
  {
    destinationsCard2 = [(CarDestinationsModeController *)self destinationsCard];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:destinationsCard2];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)destinationsCard:(id)card didSelectRecent:(id)recent
{
  recentCopy = recent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[MSPSharedTripService sharedInstance];
    receivedTrips = [v5 receivedTrips];
    v7 = [receivedTrips count];

    if (v7 != 1)
    {
      v17 = +[CarChromeModeCoordinator sharedInstance];
      [v17 displayAllSharedTrips];
      goto LABEL_10;
    }

    v8 = +[MSPSharedTripService sharedInstance];
    receivedTrips2 = [v8 receivedTrips];
    firstObject = [receivedTrips2 firstObject];

    recentCopy = firstObject;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = recentCopy;
    recentCopy = v11;
    if (v11)
    {
      if ([v11 disallowDetailsForChina])
      {
        v12 = +[CarDisplayController sharedInstance];
        v22[0] = @"kMapsInterruptionTitle";
        alertTitleForDisallowedDetails = [recentCopy alertTitleForDisallowedDetails];
        v22[1] = @"kMapsInterruptionMessage";
        v23[0] = alertTitleForDisallowedDetails;
        alertMessageForChinaError = [recentCopy alertMessageForChinaError];
        v23[1] = alertMessageForChinaError;
        v15 = v23;
        v16 = v22;
LABEL_14:
        v18 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:2];
        v19 = [v12 presentInterruptionOfKind:13 userInfo:v18 completionHandler:0];

LABEL_16:
        goto LABEL_17;
      }

      if (([recentCopy disallowDetailsForTransportType] & 1) != 0 || objc_msgSend(recentCopy, "disallowDetailsForProtocolVersion"))
      {
        v12 = +[CarDisplayController sharedInstance];
        v20[0] = @"kMapsInterruptionTitle";
        alertTitleForDisallowedDetails = [recentCopy alertTitleForDisallowedDetails];
        v20[1] = @"kMapsInterruptionMessage";
        v21[0] = alertTitleForDisallowedDetails;
        alertMessageForChinaError = [recentCopy alertMessageForTransportOrProtocolError];
        v21[1] = alertMessageForChinaError;
        v15 = v21;
        v16 = v20;
        goto LABEL_14;
      }
    }

    v12 = +[CarChromeModeCoordinator sharedInstance];
    [v12 displaySharedTrip:recentCopy];
    goto LABEL_16;
  }

  v17 = +[CarChromeModeCoordinator sharedInstance];
  [v17 displayRoutePlanningForDestination:recentCopy];
LABEL_10:

LABEL_17:
}

- (void)destinationsCard:(id)card didSelectSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = +[CarChromeModeCoordinator sharedInstance];
  [v5 displayRoutePlanningForDestination:suggestionCopy];
}

- (void)destinationsCardDidSelectSavedPlaces:(id)places
{
  v3 = +[CarChromeModeCoordinator sharedInstance];
  [v3 displayCollectionList];
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  if ([key isEqualToString:@"primary"])
  {
    destinationsCard = [(CarDestinationsModeController *)self destinationsCard];
    [cardCopy setContent:destinationsCard];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"CarDestinations_Destinations_Title" value:@"localized string not found" table:0];
    [cardCopy setTitle:v8];

    v9 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v9 setEdgePosition:0];
    [(CarCardLayout *)v9 setCornerPosition:4];
    [(CarCardLayout *)v9 setPrimaryAxis:1];
    [(CarCardLayout *)v9 setPinnedEdges:0];
    [(CarCardLayout *)v9 setPrimaryAxisFillMode:3];
    LODWORD(v10) = 1148846080;
    [(CarCardLayout *)v9 setPrimaryAxisFillModePriority:v10];
    [(CarCardLayout *)v9 setSecondaryAxisFillMode:2];
    LODWORD(v11) = 1148846080;
    [(CarCardLayout *)v9 setSecondaryAxisFillModePriority:v11];
    [(CarCardLayout *)v9 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v9 setFlipForRightHandDrive:1];
    v12 = v9;
    primaryAxis = [(CarCardLayout *)v12 primaryAxis];
    cornerPosition = [(CarCardLayout *)v12 cornerPosition];
    if (primaryAxis == 1)
    {
      if (cornerPosition == 4 || [(CarCardLayout *)v12 cornerPosition]== 1 || [(CarCardLayout *)v12 edgePosition]== 2)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if ([(CarCardLayout *)v12 cornerPosition]== 8 || [(CarCardLayout *)v12 cornerPosition]== 2 || [(CarCardLayout *)v12 edgePosition]== 8)
      {
        v15 |= 2uLL;
      }

      if ([(CarCardLayout *)v12 edgePosition]== 1)
      {
        v15 |= 4uLL;
      }

      v16 = v15 | ([(CarCardLayout *)v12 edgePosition]== 4);
    }

    else
    {
      v16 = cornerPosition == 4 || [(CarCardLayout *)v12 cornerPosition]== 8 || [(CarCardLayout *)v12 edgePosition]== 4;
      if ([(CarCardLayout *)v12 cornerPosition]== 1 || [(CarCardLayout *)v12 cornerPosition]== 2 || [(CarCardLayout *)v12 edgePosition]== 1)
      {
        v16 |= 4uLL;
      }

      if ([(CarCardLayout *)v12 edgePosition]== 2)
      {
        v16 |= 8uLL;
      }

      if ([(CarCardLayout *)v12 edgePosition]== 8)
      {
        v16 |= 2uLL;
      }
    }

    [(CarCardLayout *)v12 setEdgesAffectingMapInsets:v16];
    [(CarCardLayout *)v12 setHorizontallyCenterMapInsets:0];
    [cardCopy setLayout:v12];

    [cardCopy setAccessoryType:1];
  }
}

- (id)desiredCards
{
  v4 = @"primary";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)mapView
{
  chromeViewController = [(CarDestinationsModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (CarDestinationsModeController)init
{
  v6.receiver = self;
  v6.super_class = CarDestinationsModeController;
  v2 = [(CarDestinationsModeController *)&v6 init];
  if (v2)
  {
    v3 = [[CarDestinationsCardViewController alloc] initWithDelegate:v2];
    destinationsCard = v2->_destinationsCard;
    v2->_destinationsCard = v3;
  }

  return v2;
}

@end