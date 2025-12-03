@interface CarSharedTripsContext
- (BOOL)provideAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (CarSharedTripsContext)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)_transportTypeStringForAnalytics;
- (id)cameraController;
- (id)desiredCards;
- (id)mapView;
- (id)personalizedItemSources;
- (id)routeAnnotationsController;
- (id)searchPinsManager;
- (id)sharedTripsAnnotationsController;
- (int)currentUsageTarget;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)configureCard:(id)card forKey:(id)key;
- (void)dismiss;
- (void)presentDetailsForSelectedTrip;
- (void)presentErrorForChinaTrip:(id)trip;
- (void)presentErrorForUnsupportedProtocolOrTransportWithTrip:(id)trip;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)sharedTripDetailCard:(id)card didSelectAction:(unint64_t)action;
@end

@implementation CarSharedTripsContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)carFocusOrderSequences
{
  chromeViewController = [(CarSharedTripsContext *)self chromeViewController];
  itemRepresentingStatusBanner = [chromeViewController itemRepresentingStatusBanner];
  chromeViewController2 = [(CarSharedTripsContext *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController2 itemRepresentingOverlays];
  v11[1] = itemRepresentingOverlays;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [CarFocusOrderSequence sequenceWithItems:v7 options:5];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];

  return v9;
}

- (id)_transportTypeStringForAnalytics
{
  sharedTrip = [(CarSharedTripDetailCardViewController *)self->_selectedSharedTripCardViewController sharedTrip];
  v3 = sharedTrip;
  if (sharedTrip)
  {
    _transportTypeStringForAnalytics = [sharedTrip _transportTypeStringForAnalytics];
  }

  else
  {
    v5 = +[MSPSharedTripService sharedInstance];
    receivedTrips = [v5 receivedTrips];
    v7 = sub_100021DB0(receivedTrips, &stru_101656C90);

    _transportTypeStringForAnalytics = [v7 componentsJoinedByString:{@", "}];
  }

  return _transportTypeStringForAnalytics;
}

- (int)currentUsageTarget
{
  if (self->_selectedSharedTripCardViewController)
  {
    return 1020;
  }

  else
  {
    return 268;
  }
}

- (void)sharedTripDetailCard:(id)card didSelectAction:(unint64_t)action
{
  cardCopy = card;
  if (action == 1)
  {
    v14 = cardCopy;
    chromeViewController = [(CarSharedTripsContext *)self chromeViewController];
    _transportTypeStringForAnalytics = [(CarSharedTripsContext *)self _transportTypeStringForAnalytics];
    [chromeViewController captureUserAction:9028 eventValue:_transportTypeStringForAnalytics];

    v9 = +[MSPSharedTripService sharedInstance];
    selectedTrip = [(SharedTripsContext *)self selectedTrip];
    groupIdentifier = [selectedTrip groupIdentifier];
    [v9 blockSharedTripWithIdentifier:groupIdentifier];
  }

  else
  {
    if (action)
    {
      goto LABEL_6;
    }

    v14 = cardCopy;
    chromeViewController2 = [(CarSharedTripsContext *)self chromeViewController];
    _transportTypeStringForAnalytics2 = [(CarSharedTripsContext *)self _transportTypeStringForAnalytics];
    [chromeViewController2 captureUserAction:6003 eventValue:_transportTypeStringForAnalytics2];

    v9 = +[CarChromeModeCoordinator sharedInstance];
    selectedTrip = [(SharedTripsContext *)self selectedTrip];
    groupIdentifier = [selectedTrip destinationWaypointMapItem];
    [v9 displayRoutePlanningForDestination:groupIdentifier];
  }

  cardCopy = v14;
LABEL_6:
}

- (BOOL)provideAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  sharedTrips = [(SharedTripsContext *)self sharedTrips];
  v9 = [sharedTrips count];
  if (v9)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E86464;
    block[3] = &unk_1016605F8;
    v12 = draftCopy;
    v13 = sharedTrips;
    v14 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v9 != 0;
}

- (void)presentErrorForUnsupportedProtocolOrTransportWithTrip:(id)trip
{
  tripCopy = trip;
  v4 = +[CarDisplayController sharedInstance];
  v9[0] = @"kMapsInterruptionTitle";
  alertTitleForDisallowedDetails = [tripCopy alertTitleForDisallowedDetails];
  v9[1] = @"kMapsInterruptionMessage";
  v10[0] = alertTitleForDisallowedDetails;
  alertMessageForTransportOrProtocolError = [tripCopy alertMessageForTransportOrProtocolError];

  v10[1] = alertMessageForTransportOrProtocolError;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = [v4 presentInterruptionOfKind:13 userInfo:v7 completionHandler:0];
}

- (void)presentErrorForChinaTrip:(id)trip
{
  tripCopy = trip;
  v4 = +[CarDisplayController sharedInstance];
  v9[0] = @"kMapsInterruptionTitle";
  alertTitleForDisallowedDetails = [tripCopy alertTitleForDisallowedDetails];
  v9[1] = @"kMapsInterruptionMessage";
  v10[0] = alertTitleForDisallowedDetails;
  alertMessageForChinaError = [tripCopy alertMessageForChinaError];

  v10[1] = alertMessageForChinaError;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = [v4 presentInterruptionOfKind:13 userInfo:v7 completionHandler:0];
}

- (void)presentDetailsForSelectedTrip
{
  selectedTrip = [(SharedTripsContext *)self selectedTrip];

  if (selectedTrip)
  {
    v4 = [CarSharedTripDetailCardViewController alloc];
    selectedTrip2 = [(SharedTripsContext *)self selectedTrip];
    v6 = [(CarSharedTripDetailCardViewController *)v4 initWithSharedTrip:selectedTrip2 delegate:self];
    selectedSharedTripCardViewController = self->_selectedSharedTripCardViewController;
    self->_selectedSharedTripCardViewController = v6;
  }

  else
  {
    v8 = self->_selectedSharedTripCardViewController;
    if (!v8)
    {
      return;
    }

    self->_selectedSharedTripCardViewController = 0;

    [(CarSharedTripsCardViewController *)self->_listCardViewController clearSelection];
  }

  chromeViewController = [(CarSharedTripsContext *)self chromeViewController];
  [chromeViewController updateCardsForContext:self animated:1];
}

- (id)sharedTripsAnnotationsController
{
  annotationsController = self->_annotationsController;
  if (!annotationsController)
  {
    v4 = objc_alloc_init(SharedTripsAnnotationsController);
    v5 = self->_annotationsController;
    self->_annotationsController = v4;

    annotationsController = self->_annotationsController;
  }

  return annotationsController;
}

- (id)searchPinsManager
{
  chromeViewController = [(CarSharedTripsContext *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  return searchPinsManager;
}

- (id)routeAnnotationsController
{
  chromeViewController = [(CarSharedTripsContext *)self chromeViewController];
  routeAnnotationsController = [chromeViewController routeAnnotationsController];

  return routeAnnotationsController;
}

- (id)mapView
{
  chromeViewController = [(CarSharedTripsContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (id)cameraController
{
  chromeViewController = [(CarSharedTripsContext *)self chromeViewController];
  mapCameraController = [chromeViewController mapCameraController];

  return mapCameraController;
}

- (id)personalizedItemSources
{
  annotationsController = self->_annotationsController;
  if (annotationsController)
  {
    itemSource = [(SharedTripsAnnotationsController *)annotationsController itemSource];
    v6 = itemSource;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  v4 = sub_100E86D00();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 134349056;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Close button tapped", &v11, 0xCu);
  }

  if (self->_selectedSharedTripCardViewController && self->_listCardViewController)
  {
    v5 = sub_100E86D00();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Clearing selected trip", &v11, 0xCu);
    }

    [(SharedTripsContext *)self setSelectedTrip:0];
  }

  else
  {
    chromeViewController = [(CarSharedTripsContext *)self chromeViewController];
    v7 = [chromeViewController isTopContext:self];

    if (v7)
    {
      v8 = sub_100E86D00();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 134349056;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Popping context", &v11, 0xCu);
      }

      v9 = +[CarChromeModeCoordinator sharedInstance];
      [v9 popFromContext:self];
    }
  }

  chromeViewController2 = [(CarSharedTripsContext *)self chromeViewController];
  [chromeViewController2 captureUserAction:4];
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  keyCopy = key;
  v8 = sub_100E86D00();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v27 = 2112;
    v28 = keyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Configuring card for key: %@", buf, 0x16u);
  }

  if ([keyCopy isEqualToString:@"SharedTrip.List"])
  {
    [cardCopy setContent:self->_listCardViewController];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"CarPlay_SharedTrips_List_Title" value:@"localized string not found" table:0];
    [cardCopy setTitle:v10];
  }

  else
  {
    if (![keyCopy isEqualToString:@"SharedTrip.Selected"])
    {
      goto LABEL_32;
    }

    [cardCopy setContent:self->_selectedSharedTripCardViewController];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"CarPlay_SharedTrip_Detail_Title" value:@"localized string not found" table:0];
    sharedTrip = [(CarSharedTripDetailCardViewController *)self->_selectedSharedTripCardViewController sharedTrip];
    senderInfo = [sharedTrip senderInfo];
    localName = [senderInfo localName];
    v16 = [NSString stringWithFormat:v12, localName];
    [cardCopy setTitle:v16];
  }

  [cardCopy setAccessoryType:1];
  v17 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v17 setEdgePosition:0];
  [(CarCardLayout *)v17 setCornerPosition:4];
  [(CarCardLayout *)v17 setPrimaryAxis:1];
  [(CarCardLayout *)v17 setPinnedEdges:0];
  [(CarCardLayout *)v17 setPrimaryAxisFillMode:3];
  LODWORD(v18) = 1148846080;
  [(CarCardLayout *)v17 setPrimaryAxisFillModePriority:v18];
  [(CarCardLayout *)v17 setSecondaryAxisFillMode:2];
  LODWORD(v19) = 1148846080;
  [(CarCardLayout *)v17 setSecondaryAxisFillModePriority:v19];
  [(CarCardLayout *)v17 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v17 setFlipForRightHandDrive:1];
  v20 = v17;
  primaryAxis = [(CarCardLayout *)v20 primaryAxis];
  cornerPosition = [(CarCardLayout *)v20 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v20 cornerPosition]== 1 || [(CarCardLayout *)v20 edgePosition]== 2)
    {
      v23 = 8;
    }

    else
    {
      v23 = 0;
    }

    if ([(CarCardLayout *)v20 cornerPosition]== 8 || [(CarCardLayout *)v20 cornerPosition]== 2 || [(CarCardLayout *)v20 edgePosition]== 8)
    {
      v23 |= 2uLL;
    }

    if ([(CarCardLayout *)v20 edgePosition]== 1)
    {
      v23 |= 4uLL;
    }

    v24 = v23 | ([(CarCardLayout *)v20 edgePosition]== 4);
  }

  else
  {
    v24 = cornerPosition == 4 || [(CarCardLayout *)v20 cornerPosition]== 8 || [(CarCardLayout *)v20 edgePosition]== 4;
    if ([(CarCardLayout *)v20 cornerPosition]== 1 || [(CarCardLayout *)v20 cornerPosition]== 2 || [(CarCardLayout *)v20 edgePosition]== 1)
    {
      v24 |= 4uLL;
    }

    if ([(CarCardLayout *)v20 edgePosition]== 2)
    {
      v24 |= 8uLL;
    }

    if ([(CarCardLayout *)v20 edgePosition]== 8)
    {
      v24 |= 2uLL;
    }
  }

  [(CarCardLayout *)v20 setEdgesAffectingMapInsets:v24];
  [(CarCardLayout *)v20 setHorizontallyCenterMapInsets:0];
  [cardCopy setLayout:v20];

LABEL_32:
}

- (id)desiredCards
{
  selectedSharedTripCardViewController = self->_selectedSharedTripCardViewController;
  if (self->_listCardViewController)
  {
    if (selectedSharedTripCardViewController)
    {
      v9[0] = @"SharedTrip.List";
      v9[1] = @"SharedTrip.Selected";
      v3 = v9;
      v4 = 2;
LABEL_8:
      v5 = [NSArray arrayWithObjects:v3 count:v4];
      goto LABEL_9;
    }

    v8 = @"SharedTrip.List";
    v3 = &v8;
LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  if (selectedSharedTripCardViewController)
  {
    v7 = @"SharedTrip.Selected";
    v3 = &v7;
    goto LABEL_7;
  }

  v5 = &__NSArray0__struct;
LABEL_9:

  return v5;
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  v6 = sub_100E86D00();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Resigning top context", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100E873E0;
  v7[3] = &unk_101661AE0;
  isAnimated = [animationCopy isAnimated];
  v7[4] = self;
  [animationCopy addPreparation:v7];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  v8 = sub_100E86D00();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Becoming top context", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E87580;
  v10[3] = &unk_101660CE8;
  isAnimated = [animationCopy isAnimated];
  v10[4] = self;
  v11 = controllerCopy;
  v9 = controllerCopy;
  [animationCopy addPreparation:v10];
}

- (void)dismiss
{
  v3 = +[CarChromeModeCoordinator sharedInstance];
  [v3 popFromContext:self];
}

- (CarSharedTripsContext)init
{
  v20.receiver = self;
  v20.super_class = CarSharedTripsContext;
  v2 = [(SharedTripsContext *)&v20 init];
  v3 = v2;
  if (v2)
  {
    sharedTrips = [(SharedTripsContext *)v2 sharedTrips];
    v5 = [sharedTrips count];

    if (v5 < 2)
    {
      sharedTrips2 = [(SharedTripsContext *)v3 sharedTrips];
      v10 = [sharedTrips2 count];

      if (v10 == 1)
      {
        v11 = [CarSharedTripDetailCardViewController alloc];
        sharedTrips3 = [(SharedTripsContext *)v3 sharedTrips];
        firstObject = [sharedTrips3 firstObject];
        v14 = [(CarSharedTripDetailCardViewController *)v11 initWithSharedTrip:firstObject delegate:v3];
        selectedSharedTripCardViewController = v3->_selectedSharedTripCardViewController;
        v3->_selectedSharedTripCardViewController = v14;
      }
    }

    else
    {
      objc_initWeak(&location, v3);
      v6 = [CarSharedTripsCardViewController alloc];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100E878A0;
      v17[3] = &unk_101656C50;
      objc_copyWeak(&v18, &location);
      v7 = [(CarSharedTripsCardViewController *)v6 initWithSelectionHandler:v17];
      listCardViewController = v3->_listCardViewController;
      v3->_listCardViewController = v7;

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }

  return v3;
}

@end