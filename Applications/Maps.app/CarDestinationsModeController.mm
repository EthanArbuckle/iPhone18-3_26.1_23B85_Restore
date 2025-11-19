@interface CarDestinationsModeController
- (CarDestinationsModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (UIScrollView)pptTestScrollView;
- (id)desiredCards;
- (id)mapView;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)destinationsCard:(id)a3 didSelectRecent:(id)a4;
- (void)destinationsCard:(id)a3 didSelectSuggestion:(id)a4;
- (void)destinationsCardDidSelectSavedPlaces:(id)a3;
@end

@implementation CarDestinationsModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (UIScrollView)pptTestScrollView
{
  v2 = [(CarDestinationsModeController *)self destinationsCard];
  v3 = [v2 tableView];

  return v3;
}

- (NSArray)carFocusOrderSequences
{
  v3 = [(CarDestinationsModeController *)self chromeViewController];
  v4 = [v3 itemRepresentingStatusBanner];
  v5 = [(CarDestinationsModeController *)self chromeViewController];
  v6 = [v5 itemRepresentingOverlays];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [CarFocusOrderSequence sequenceWithItems:v7 options:5];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];

  return v9;
}

- (NSArray)preferredCarFocusEnvironments
{
  v3 = [(CarDestinationsModeController *)self destinationsCard];

  if (v3)
  {
    v4 = [(CarDestinationsModeController *)self destinationsCard];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:v4];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)destinationsCard:(id)a3 didSelectRecent:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[MSPSharedTripService sharedInstance];
    v6 = [v5 receivedTrips];
    v7 = [v6 count];

    if (v7 != 1)
    {
      v17 = +[CarChromeModeCoordinator sharedInstance];
      [v17 displayAllSharedTrips];
      goto LABEL_10;
    }

    v8 = +[MSPSharedTripService sharedInstance];
    v9 = [v8 receivedTrips];
    v10 = [v9 firstObject];

    v4 = v10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v4;
    v4 = v11;
    if (v11)
    {
      if ([v11 disallowDetailsForChina])
      {
        v12 = +[CarDisplayController sharedInstance];
        v22[0] = @"kMapsInterruptionTitle";
        v13 = [v4 alertTitleForDisallowedDetails];
        v22[1] = @"kMapsInterruptionMessage";
        v23[0] = v13;
        v14 = [v4 alertMessageForChinaError];
        v23[1] = v14;
        v15 = v23;
        v16 = v22;
LABEL_14:
        v18 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:2];
        v19 = [v12 presentInterruptionOfKind:13 userInfo:v18 completionHandler:0];

LABEL_16:
        goto LABEL_17;
      }

      if (([v4 disallowDetailsForTransportType] & 1) != 0 || objc_msgSend(v4, "disallowDetailsForProtocolVersion"))
      {
        v12 = +[CarDisplayController sharedInstance];
        v20[0] = @"kMapsInterruptionTitle";
        v13 = [v4 alertTitleForDisallowedDetails];
        v20[1] = @"kMapsInterruptionMessage";
        v21[0] = v13;
        v14 = [v4 alertMessageForTransportOrProtocolError];
        v21[1] = v14;
        v15 = v21;
        v16 = v20;
        goto LABEL_14;
      }
    }

    v12 = +[CarChromeModeCoordinator sharedInstance];
    [v12 displaySharedTrip:v4];
    goto LABEL_16;
  }

  v17 = +[CarChromeModeCoordinator sharedInstance];
  [v17 displayRoutePlanningForDestination:v4];
LABEL_10:

LABEL_17:
}

- (void)destinationsCard:(id)a3 didSelectSuggestion:(id)a4
{
  v4 = a4;
  v5 = +[CarChromeModeCoordinator sharedInstance];
  [v5 displayRoutePlanningForDestination:v4];
}

- (void)destinationsCardDidSelectSavedPlaces:(id)a3
{
  v3 = +[CarChromeModeCoordinator sharedInstance];
  [v3 displayCollectionList];
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v17 = a3;
  if ([a4 isEqualToString:@"primary"])
  {
    v6 = [(CarDestinationsModeController *)self destinationsCard];
    [v17 setContent:v6];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"CarDestinations_Destinations_Title" value:@"localized string not found" table:0];
    [v17 setTitle:v8];

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
    v13 = [(CarCardLayout *)v12 primaryAxis];
    v14 = [(CarCardLayout *)v12 cornerPosition];
    if (v13 == 1)
    {
      if (v14 == 4 || [(CarCardLayout *)v12 cornerPosition]== 1 || [(CarCardLayout *)v12 edgePosition]== 2)
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
      v16 = v14 == 4 || [(CarCardLayout *)v12 cornerPosition]== 8 || [(CarCardLayout *)v12 edgePosition]== 4;
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
    [v17 setLayout:v12];

    [v17 setAccessoryType:1];
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
  v2 = [(CarDestinationsModeController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
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