@interface IOSSharedTripsContext
- (ActionCoordination)delegate;
- (BOOL)provideAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (ChromeViewController)chromeViewController;
- (id)cameraController;
- (id)desiredCards;
- (id)mapView;
- (id)personalizedItemManager;
- (id)routeAnnotationsController;
- (id)searchPinsManager;
- (id)sharedTripsAnnotationsController;
- (id)windowScene;
- (void)_presentCardForSharedTrip:(id)trip;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)closeSharedTripDetail;
- (void)didRequestContactsCard;
- (void)didRequestDirectionsForSharedTrip:(id)trip;
- (void)didSelectStopWithMapItem:(id)item;
- (void)dismiss;
- (void)presentDetailsForSelectedTrip;
- (void)presentErrorForChinaTrip:(id)trip;
- (void)presentErrorForUnsupportedProtocolOrTransportWithTrip:(id)trip;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
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
  chromeViewController = [(IOSSharedTripsContext *)self chromeViewController];
  v4 = [chromeViewController isCurrentContext:self];

  chromeViewController2 = [(IOSSharedTripsContext *)self chromeViewController];
  v10 = chromeViewController2;
  if (v4)
  {
    [chromeViewController2 popContextAnimated:1 completion:0];
    v6 = v10;
  }

  else
  {
    contexts = [chromeViewController2 contexts];
    v8 = [contexts mutableCopy];

    [v8 removeObject:self];
    chromeViewController3 = [(IOSSharedTripsContext *)self chromeViewController];
    [chromeViewController3 setContexts:v8 animated:0 completion:0];

    v6 = v8;
  }
}

- (void)didRequestContactsCard
{
  v3 = +[AddressBookManager sharedManager];
  selectedTrip = [(SharedTripsContext *)self selectedTrip];
  senderInfo = [selectedTrip senderInfo];
  localContactIdentifier = [senderInfo localContactIdentifier];
  v7 = [v3 contactForCNContactIdentifier:localContactIdentifier];

  if (v7)
  {
    v8 = [CNContactViewController viewControllerForContact:v7];
    [v8 setDelegate:self];
    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissContactsViewController"];
    navigationItem = [v8 navigationItem];
    [navigationItem setBackBarButtonItem:v9];

    [v8 setDisplayMode:1];
    v11 = [[UINavigationController alloc] initWithRootViewController:v8];
    contactsViewController = self->_contactsViewController;
    self->_contactsViewController = v11;
    v13 = v11;

    chromeViewController = [(IOSSharedTripsContext *)self chromeViewController];
    [chromeViewController _maps_topMostPresentViewController:self->_contactsViewController animated:1 completion:0];
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

- (void)didRequestDirectionsForSharedTrip:(id)trip
{
  tripCopy = trip;
  chromeViewController = [(IOSSharedTripsContext *)self chromeViewController];
  [chromeViewController popContextAnimated:1 completion:0];

  destinationWaypointMapItem = [tripCopy destinationWaypointMapItem];

  v7 = [MKMapItem _itemWithGeoMapItem:destinationWaypointMapItem];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = MKLaunchOptionsDirectionsModeKey;
  v11 = MKLaunchOptionsDirectionsModeDefault;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [MKMapItem openMapsWithItems:v8 launchOptions:v9 completionHandler:&stru_10164C708];
}

- (void)_presentCardForSharedTrip:(id)trip
{
  tripCopy = trip;
  v5 = [[SharedTripContaineeViewController alloc] initWithSharedTrip:tripCopy];

  sharedTripInfoController = self->_sharedTripInfoController;
  self->_sharedTripInfoController = v5;

  [(SharedTripContaineeViewController *)self->_sharedTripInfoController setActionDelegate:self];
  chromeViewController = [(IOSSharedTripsContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
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
    block[2] = sub_100BB2308;
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
  delegate = [(IOSSharedTripsContext *)self delegate];
  [delegate presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:tripCopy];
}

- (void)presentErrorForChinaTrip:(id)trip
{
  tripCopy = trip;
  delegate = [(IOSSharedTripsContext *)self delegate];
  [delegate presentChinaAlertForSharedTrip:tripCopy];
}

- (void)presentDetailsForSelectedTrip
{
  selectedTrip = [(SharedTripsContext *)self selectedTrip];

  if (selectedTrip)
  {
    selectedTrip2 = [(SharedTripsContext *)self selectedTrip];
    [(IOSSharedTripsContext *)self _presentCardForSharedTrip:?];
  }

  else
  {
    if (!self->_sharedTripInfoController)
    {
      return;
    }

    selectedTrip2 = [(IOSSharedTripsContext *)self chromeViewController];
    [selectedTrip2 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

- (id)sharedTripsAnnotationsController
{
  iosBasedChromeViewController = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  sharedTripsAnnotationsController = [iosBasedChromeViewController sharedTripsAnnotationsController];

  return sharedTripsAnnotationsController;
}

- (id)searchPinsManager
{
  iosBasedChromeViewController = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  searchPinsManager = [iosBasedChromeViewController searchPinsManager];

  return searchPinsManager;
}

- (id)routeAnnotationsController
{
  iosBasedChromeViewController = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  routeAnnotationsController = [iosBasedChromeViewController routeAnnotationsController];

  return routeAnnotationsController;
}

- (id)personalizedItemManager
{
  iosBasedChromeViewController = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  personalizedItemManager = [iosBasedChromeViewController personalizedItemManager];

  return personalizedItemManager;
}

- (id)mapView
{
  chromeViewController = [(IOSSharedTripsContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (id)cameraController
{
  iosBasedChromeViewController = [(IOSSharedTripsContext *)self iosBasedChromeViewController];
  mapCameraController = [iosBasedChromeViewController mapCameraController];

  return mapCameraController;
}

- (void)closeSharedTripDetail
{
  sharedTrips = [(SharedTripsContext *)self sharedTrips];
  if ([sharedTrips count] < 2)
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

      chromeViewController = [(IOSSharedTripsContext *)self chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];

      return;
    }
  }

  [(IOSSharedTripsContext *)self dismiss];
}

- (void)didSelectStopWithMapItem:(id)item
{
  itemCopy = item;
  _displayMapRegion = [itemCopy _displayMapRegion];
  GEOMapRectForMapRegion();
  v18 = MKCoordinateRegionForMapRect(v17);
  latitude = v18.center.latitude;
  longitude = v18.center.longitude;
  latitudeDelta = v18.span.latitudeDelta;
  longitudeDelta = v18.span.longitudeDelta;

  chromeViewController = [(IOSSharedTripsContext *)self chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView setRegion:1 animated:{latitude, longitude, latitudeDelta, longitudeDelta}];

  v15 = [[PlaceCardItem alloc] initWithMapItem:itemCopy];
  v12 = [[_TtC4Maps29PlaceCardContextConfiguration alloc] initWithPlaceCardItem:v15 shouldInsertInHistory:0 excludedContent:[(IOSSharedTripsContext *)self _placeCardExcludedContent] buildingMultistopRoute:0];
  v13 = [[_TtC4Maps16PlaceCardContext alloc] initWithConfiguration:v12];
  chromeViewController2 = [(IOSSharedTripsContext *)self chromeViewController];
  [chromeViewController2 pushContext:v13 animated:1 completion:0];
}

- (id)windowScene
{
  chromeViewController = [(IOSSharedTripsContext *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  windowScene = [window windowScene];

  return windowScene;
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BB2B08;
  v6[3] = &unk_101661AE0;
  isAnimated = [animationCopy isAnimated];
  v6[4] = self;
  [animationCopy addPreparation:v6];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BB2BD8;
  v6[3] = &unk_101661AE0;
  isAnimated = [animationCopy isAnimated];
  v6[4] = self;
  [animationCopy addPreparation:v6];
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