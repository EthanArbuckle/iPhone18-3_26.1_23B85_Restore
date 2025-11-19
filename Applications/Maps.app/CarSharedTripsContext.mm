@interface CarSharedTripsContext
- (BOOL)provideAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
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
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)dismiss;
- (void)presentDetailsForSelectedTrip;
- (void)presentErrorForChinaTrip:(id)a3;
- (void)presentErrorForUnsupportedProtocolOrTransportWithTrip:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)sharedTripDetailCard:(id)a3 didSelectAction:(unint64_t)a4;
@end

@implementation CarSharedTripsContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)carFocusOrderSequences
{
  v3 = [(CarSharedTripsContext *)self chromeViewController];
  v4 = [v3 itemRepresentingStatusBanner];
  v5 = [(CarSharedTripsContext *)self chromeViewController];
  v6 = [v5 itemRepresentingOverlays];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [CarFocusOrderSequence sequenceWithItems:v7 options:5];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];

  return v9;
}

- (id)_transportTypeStringForAnalytics
{
  v2 = [(CarSharedTripDetailCardViewController *)self->_selectedSharedTripCardViewController sharedTrip];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _transportTypeStringForAnalytics];
  }

  else
  {
    v5 = +[MSPSharedTripService sharedInstance];
    v6 = [v5 receivedTrips];
    v7 = sub_100021DB0(v6, &stru_101656C90);

    v4 = [v7 componentsJoinedByString:{@", "}];
  }

  return v4;
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

- (void)sharedTripDetailCard:(id)a3 didSelectAction:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v14 = v6;
    v12 = [(CarSharedTripsContext *)self chromeViewController];
    v13 = [(CarSharedTripsContext *)self _transportTypeStringForAnalytics];
    [v12 captureUserAction:9028 eventValue:v13];

    v9 = +[MSPSharedTripService sharedInstance];
    v10 = [(SharedTripsContext *)self selectedTrip];
    v11 = [v10 groupIdentifier];
    [v9 blockSharedTripWithIdentifier:v11];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v14 = v6;
    v7 = [(CarSharedTripsContext *)self chromeViewController];
    v8 = [(CarSharedTripsContext *)self _transportTypeStringForAnalytics];
    [v7 captureUserAction:6003 eventValue:v8];

    v9 = +[CarChromeModeCoordinator sharedInstance];
    v10 = [(SharedTripsContext *)self selectedTrip];
    v11 = [v10 destinationWaypointMapItem];
    [v9 displayRoutePlanningForDestination:v11];
  }

  v6 = v14;
LABEL_6:
}

- (BOOL)provideAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SharedTripsContext *)self sharedTrips];
  v9 = [v8 count];
  if (v9)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E86464;
    block[3] = &unk_1016605F8;
    v12 = v6;
    v13 = v8;
    v14 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v9 != 0;
}

- (void)presentErrorForUnsupportedProtocolOrTransportWithTrip:(id)a3
{
  v3 = a3;
  v4 = +[CarDisplayController sharedInstance];
  v9[0] = @"kMapsInterruptionTitle";
  v5 = [v3 alertTitleForDisallowedDetails];
  v9[1] = @"kMapsInterruptionMessage";
  v10[0] = v5;
  v6 = [v3 alertMessageForTransportOrProtocolError];

  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = [v4 presentInterruptionOfKind:13 userInfo:v7 completionHandler:0];
}

- (void)presentErrorForChinaTrip:(id)a3
{
  v3 = a3;
  v4 = +[CarDisplayController sharedInstance];
  v9[0] = @"kMapsInterruptionTitle";
  v5 = [v3 alertTitleForDisallowedDetails];
  v9[1] = @"kMapsInterruptionMessage";
  v10[0] = v5;
  v6 = [v3 alertMessageForChinaError];

  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = [v4 presentInterruptionOfKind:13 userInfo:v7 completionHandler:0];
}

- (void)presentDetailsForSelectedTrip
{
  v3 = [(SharedTripsContext *)self selectedTrip];

  if (v3)
  {
    v4 = [CarSharedTripDetailCardViewController alloc];
    v5 = [(SharedTripsContext *)self selectedTrip];
    v6 = [(CarSharedTripDetailCardViewController *)v4 initWithSharedTrip:v5 delegate:self];
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

  v9 = [(CarSharedTripsContext *)self chromeViewController];
  [v9 updateCardsForContext:self animated:1];
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
  v2 = [(CarSharedTripsContext *)self chromeViewController];
  v3 = [v2 searchPinsManager];

  return v3;
}

- (id)routeAnnotationsController
{
  v2 = [(CarSharedTripsContext *)self chromeViewController];
  v3 = [v2 routeAnnotationsController];

  return v3;
}

- (id)mapView
{
  v2 = [(CarSharedTripsContext *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (id)cameraController
{
  v2 = [(CarSharedTripsContext *)self chromeViewController];
  v3 = [v2 mapCameraController];

  return v3;
}

- (id)personalizedItemSources
{
  annotationsController = self->_annotationsController;
  if (annotationsController)
  {
    v3 = [(SharedTripsAnnotationsController *)annotationsController itemSource];
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (void)carCardViewCloseButtonTapped:(id)a3
{
  v4 = sub_100E86D00();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 134349056;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Close button tapped", &v11, 0xCu);
  }

  if (self->_selectedSharedTripCardViewController && self->_listCardViewController)
  {
    v5 = sub_100E86D00();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Clearing selected trip", &v11, 0xCu);
    }

    [(SharedTripsContext *)self setSelectedTrip:0];
  }

  else
  {
    v6 = [(CarSharedTripsContext *)self chromeViewController];
    v7 = [v6 isTopContext:self];

    if (v7)
    {
      v8 = sub_100E86D00();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 134349056;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Popping context", &v11, 0xCu);
      }

      v9 = +[CarChromeModeCoordinator sharedInstance];
      [v9 popFromContext:self];
    }
  }

  v10 = [(CarSharedTripsContext *)self chromeViewController];
  [v10 captureUserAction:4];
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100E86D00();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v26 = self;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Configuring card for key: %@", buf, 0x16u);
  }

  if ([v7 isEqualToString:@"SharedTrip.List"])
  {
    [v6 setContent:self->_listCardViewController];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"CarPlay_SharedTrips_List_Title" value:@"localized string not found" table:0];
    [v6 setTitle:v10];
  }

  else
  {
    if (![v7 isEqualToString:@"SharedTrip.Selected"])
    {
      goto LABEL_32;
    }

    [v6 setContent:self->_selectedSharedTripCardViewController];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"CarPlay_SharedTrip_Detail_Title" value:@"localized string not found" table:0];
    v13 = [(CarSharedTripDetailCardViewController *)self->_selectedSharedTripCardViewController sharedTrip];
    v14 = [v13 senderInfo];
    v15 = [v14 localName];
    v16 = [NSString stringWithFormat:v12, v15];
    [v6 setTitle:v16];
  }

  [v6 setAccessoryType:1];
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
  v21 = [(CarCardLayout *)v20 primaryAxis];
  v22 = [(CarCardLayout *)v20 cornerPosition];
  if (v21 == 1)
  {
    if (v22 == 4 || [(CarCardLayout *)v20 cornerPosition]== 1 || [(CarCardLayout *)v20 edgePosition]== 2)
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
    v24 = v22 == 4 || [(CarCardLayout *)v20 cornerPosition]== 8 || [(CarCardLayout *)v20 edgePosition]== 4;
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
  [v6 setLayout:v20];

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

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a4;
  v6 = sub_100E86D00();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Resigning top context", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100E873E0;
  v7[3] = &unk_101661AE0;
  v8 = [v5 isAnimated];
  v7[4] = self;
  [v5 addPreparation:v7];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100E86D00();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Becoming top context", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E87580;
  v10[3] = &unk_101660CE8;
  v12 = [v7 isAnimated];
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 addPreparation:v10];
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
    v4 = [(SharedTripsContext *)v2 sharedTrips];
    v5 = [v4 count];

    if (v5 < 2)
    {
      v9 = [(SharedTripsContext *)v3 sharedTrips];
      v10 = [v9 count];

      if (v10 == 1)
      {
        v11 = [CarSharedTripDetailCardViewController alloc];
        v12 = [(SharedTripsContext *)v3 sharedTrips];
        v13 = [v12 firstObject];
        v14 = [(CarSharedTripDetailCardViewController *)v11 initWithSharedTrip:v13 delegate:v3];
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