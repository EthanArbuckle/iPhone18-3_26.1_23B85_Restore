@interface IOSSharedTripsContext
- (ActionCoordination)delegate;
- (BOOL)provideAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
- (ChromeViewController)chromeViewController;
- (id)cameraController;
- (id)desiredCards;
- (id)mapView;
- (id)personalizedItemManager;
- (id)routeAnnotationsController;
- (id)searchPinsManager;
- (id)sharedTripsAnnotationsController;
- (id)windowScene;
- (void)_presentCardForSharedTrip:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)closeSharedTripDetail;
- (void)didRequestContactsCard;
- (void)didRequestDirectionsForSharedTrip:(id)a3;
- (void)didSelectStopWithMapItem:(id)a3;
- (void)dismiss;
- (void)presentDetailsForSelectedTrip;
- (void)presentErrorForChinaTrip:(id)a3;
- (void)presentErrorForUnsupportedProtocolOrTransportWithTrip:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
@end

@implementation IOSSharedTripsContext

- (ActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)dismiss
{
  v3 = [(IOSSharedTripsContext *)self chromeViewController];
  v4 = [v3 isCurrentContext:self];

  v5 = [(IOSSharedTripsContext *)self chromeViewController];
  v10 = v5;
  if (v4)
  {
    [v5 popContextAnimated:1 completion:0];
    v6 = v10;
  }

  else
  {
    v7 = [v5 contexts];
    v8 = [v7 mutableCopy];

    [v8 removeObject:self];
    v9 = [(IOSSharedTripsContext *)self chromeViewController];
    [v9 setContexts:v8 animated:0 completion:0];

    v6 = v8;
  }
}

- (void)didRequestContactsCard
{
  v3 = +[AddressBookManager sharedManager];
  v4 = [(SharedTripsContext *)self selectedTrip];
  v5 = [v4 senderInfo];
  v6 = [v5 localContactIdentifier];
  v7 = [v3 contactForCNContactIdentifier:v6];

  if (v7)
  {
    v8 = [CNContactViewController viewControllerForContact:v7];
    [v8 setDelegate:self];
    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissContactsViewController"];
    v10 = [v8 navigationItem];
    [v10 setBackBarButtonItem:v9];

    [v8 setDisplayMode:1];
    v11 = [[UINavigationController alloc] initWithRootViewController:v8];
    contactsViewController = self->_contactsViewController;
    self->_contactsViewController = v11;
    v13 = v11;

    v14 = [(IOSSharedTripsContext *)self chromeViewController];
    [v14 _maps_topMostPresentViewController:self->_contactsViewController animated:1 completion:0];
  }

  else
  {
    v15 = sub_1000946AC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "didRequestContactsCard called with no contact present", v16, 2u);
    }
  }
}

- (void)didRequestDirectionsForSharedTrip:(id)a3
{
  v4 = a3;
  v5 = [(IOSSharedTripsContext *)self chromeViewController];
  [v5 popContextAnimated:1 completion:0];

  v6 = [v4 destinationWaypointMapItem];

  v7 = [MKMapItem _itemWithGeoMapItem:v6];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = MKLaunchOptionsDirectionsModeKey;
  v11 = MKLaunchOptionsDirectionsModeDefault;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [MKMapItem openMapsWithItems:v8 launchOptions:v9 completionHandler:&stru_10164C708];
}

- (void)_presentCardForSharedTrip:(id)a3
{
  v4 = a3;
  v5 = [[SharedTripContaineeViewController alloc] initWithSharedTrip:v4];

  sharedTripInfoController = self->_sharedTripInfoController;
  self->_sharedTripInfoController = v5;

  [(SharedTripContaineeViewController *)self->_sharedTripInfoController setActionDelegate:self];
  v7 = [(IOSSharedTripsContext *)self chromeViewController];
  [v7 setNeedsUpdateComponent:@"cards" animated:1];
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
    block[2] = sub_100BB2308;
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
  v4 = a3;
  v5 = [(IOSSharedTripsContext *)self delegate];
  [v5 presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:v4];
}

- (void)presentErrorForChinaTrip:(id)a3
{
  v4 = a3;
  v5 = [(IOSSharedTripsContext *)self delegate];
  [v5 presentChinaAlertForSharedTrip:v4];
}

- (void)presentDetailsForSelectedTrip
{
  v3 = [(SharedTripsContext *)self selectedTrip];

  if (v3)
  {
    v4 = [(SharedTripsContext *)self selectedTrip];
    [(IOSSharedTripsContext *)self _presentCardForSharedTrip:?];
  }

  else
  {
    if (!self->_sharedTripInfoController)
    {
      return;
    }

    v4 = [(IOSSharedTripsContext *)self chromeViewController];
    [v4 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

- (id)sharedTripsAnnotationsController
{
  v2 = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  v3 = [v2 sharedTripsAnnotationsController];

  return v3;
}

- (id)searchPinsManager
{
  v2 = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  v3 = [v2 searchPinsManager];

  return v3;
}

- (id)routeAnnotationsController
{
  v2 = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  v3 = [v2 routeAnnotationsController];

  return v3;
}

- (id)personalizedItemManager
{
  v2 = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  v3 = [v2 personalizedItemManager];

  return v3;
}

- (id)mapView
{
  v2 = [(IOSSharedTripsContext *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (id)cameraController
{
  v2 = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  v3 = [v2 mapCameraController];

  return v3;
}

- (void)closeSharedTripDetail
{
  v3 = [(SharedTripsContext *)self sharedTrips];
  if ([v3 count] < 2)
  {
  }

  else
  {
    listContaineeController = self->_listContaineeController;

    if (listContaineeController)
    {
      [(SharedTripsContext *)self setSelectedTrip:0];
      sharedTripInfoController = self->_sharedTripInfoController;
      self->_sharedTripInfoController = 0;

      v6 = [(IOSSharedTripsContext *)self chromeViewController];
      [v6 setNeedsUpdateComponent:@"cards" animated:1];

      return;
    }
  }

  [(IOSSharedTripsContext *)self dismiss];
}

- (void)didSelectStopWithMapItem:(id)a3
{
  v4 = a3;
  v5 = [v4 _displayMapRegion];
  GEOMapRectForMapRegion();
  v18 = MKCoordinateRegionForMapRect(v17);
  latitude = v18.center.latitude;
  longitude = v18.center.longitude;
  latitudeDelta = v18.span.latitudeDelta;
  longitudeDelta = v18.span.longitudeDelta;

  v10 = [(IOSSharedTripsContext *)self chromeViewController];
  v11 = [v10 mapView];
  [v11 setRegion:1 animated:{latitude, longitude, latitudeDelta, longitudeDelta}];

  v15 = [[PlaceCardItem alloc] initWithMapItem:v4];
  v12 = [[_TtC4Maps29PlaceCardContextConfiguration alloc] initWithPlaceCardItem:v15 shouldInsertInHistory:0 excludedContent:[(IOSSharedTripsContext *)self _placeCardExcludedContent] buildingMultistopRoute:0];
  v13 = [[_TtC4Maps16PlaceCardContext alloc] initWithConfiguration:v12];
  v14 = [(IOSSharedTripsContext *)self chromeViewController];
  [v14 pushContext:v13 animated:1 completion:0];
}

- (id)windowScene
{
  v2 = [(IOSSharedTripsContext *)self chromeViewController];
  v3 = [v2 view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  return v5;
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BB2B08;
  v6[3] = &unk_101661AE0;
  v7 = [v5 isAnimated];
  v6[4] = self;
  [v5 addPreparation:v6];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BB2BD8;
  v6[3] = &unk_101661AE0;
  v7 = [v5 isAnimated];
  v6[4] = self;
  [v5 addPreparation:v6];
}

- (id)desiredCards
{
  v3 = [[NSMutableArray alloc] initWithCapacity:2];
  v4 = v3;
  if (self->_listContaineeController)
  {
    [v3 addObject:?];
  }

  if (self->_sharedTripInfoController)
  {
    [v4 addObject:?];
  }

  return v4;
}

@end