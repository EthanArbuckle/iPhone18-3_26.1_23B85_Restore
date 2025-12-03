@interface RestaurantReservationRouter
- (RestaurantReservationRouter)initWithExtension:(id)extension parameters:(id)parameters appStoreApp:(id)app mapItem:(id)item presenter:(id)presenter;
- (id)alertControllerForExtensionPermission;
- (id)alertControllerForLockedExtension;
- (id)reservationExtensionFlowViewController;
- (void)didChangeProtectionStatusForBundleId:(id)id;
- (void)discoverActiveReservationEvents;
- (void)discoverAvailableBookings;
- (void)discoverDefaults;
- (void)discoverGuest;
- (void)requester:(id)requester userCurrentBookingRequestDidFailWithError:(id)error;
- (void)requesterReservationDefaultsRequestDidComplete:(id)complete;
- (void)requesterUserCurrentBookingRequestDidComplete:(id)complete;
- (void)resolve;
@end

@implementation RestaurantReservationRouter

- (void)didChangeProtectionStatusForBundleId:(id)id
{
  extension = self->_extension;
  idCopy = id;
  identifier = [(_MXExtension *)extension identifier];
  v7 = [identifier containsString:idCopy];

  if (v7)
  {
    activeBookingSession = [(RestaurantReservationRouter *)self activeBookingSession];
    [activeBookingSession endSessionWithState:2];

    v10 = MapsSuggestionsResourceDepotForMapsProcess();
    oneAppGuardian = [v10 oneAppGuardian];
    [oneAppGuardian unregisterAppTracker:self];
  }
}

- (id)reservationExtensionFlowViewController
{
  v3 = [RestaurantReservationExtensionFlowViewController alloc];
  restaurantReservationRequester = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  v5 = [(RestaurantReservationExtensionFlowViewController *)v3 initWithRestaurantReservationRequester:restaurantReservationRequester];

  if (![(RestaurantReservationRouter *)self hasActiveRestaurantUserBooking])
  {
    activeBookingSession = [(RestaurantReservationRouter *)self activeBookingSession];
    [(RestaurantReservationRouter *)self updateSessionAsInstallCompletedIfNeeded:activeBookingSession];

    activeBookingSession2 = [(RestaurantReservationRouter *)self activeBookingSession];
    [(RestaurantReservationExtensionFlowViewController *)v5 setBookingSession:activeBookingSession2];
  }

  return v5;
}

- (id)alertControllerForExtensionPermission
{
  v3 = +[NSBundle mainBundle];
  v24 = [v3 localizedStringForKey:@"reservation_book_with_app_title" value:@"localized string not found" table:0];

  v4 = [NSString alloc];
  extension = [(RestaurantReservationRouter *)self extension];
  displayName = [extension displayName];
  v23 = [v4 initWithFormat:v24, displayName];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"reservations_agree_to_terms_alert_key" value:@"localized string not found" table:0];

  v9 = [NSString alloc];
  extension2 = [(RestaurantReservationRouter *)self extension];
  displayName2 = [extension2 displayName];
  v12 = [v9 initWithFormat:v8, displayName2];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"reservation_enable_extension_button_title_key" value:@"localized string not found" table:0];

  v15 = [ReservationErrorAlertController alertControllerWithTitle:v23 message:v12 preferredStyle:1];
  activeBookingSession = [(RestaurantReservationRouter *)self activeBookingSession];
  [(RestaurantReservationRouter *)self updateSessionAsInstallCompletedIfNeeded:activeBookingSession];

  activeBookingSession2 = [(RestaurantReservationRouter *)self activeBookingSession];
  [v15 setBookingSession:activeBookingSession2];

  [v15 setDisplayView:2];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100F83130;
  v26[3] = &unk_10165F220;
  v26[4] = self;
  v18 = [UIAlertAction actionWithTitle:v14 style:0 handler:v26];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100F831BC;
  v25[3] = &unk_10165F220;
  v25[4] = self;
  v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:v25];

  [v15 addAction:v18];
  [v15 addAction:v21];

  return v15;
}

- (id)alertControllerForLockedExtension
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"reservation_book_with_app_title" value:@"localized string not found" table:0];

  v5 = [NSString alloc];
  extension = [(RestaurantReservationRouter *)self extension];
  displayName = [extension displayName];
  v8 = [v5 initWithFormat:v4, displayName];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"reservations_extension_locked_alert_key" value:@"localized string not found" table:0];

  v11 = [NSString alloc];
  extension2 = [(RestaurantReservationRouter *)self extension];
  displayName2 = [extension2 displayName];
  v14 = [v11 initWithFormat:v10, displayName2];

  v15 = [ReservationErrorAlertController alertControllerWithTitle:v8 message:v14 preferredStyle:1];
  activeBookingSession = [(RestaurantReservationRouter *)self activeBookingSession];
  [(RestaurantReservationRouter *)self updateSessionAsInstallCompletedIfNeeded:activeBookingSession];

  activeBookingSession2 = [(RestaurantReservationRouter *)self activeBookingSession];
  [v15 setBookingSession:activeBookingSession2];

  [v15 setDisplayView:2];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100F83484;
  v22[3] = &unk_10165F220;
  v22[4] = self;
  v20 = [UIAlertAction actionWithTitle:v19 style:1 handler:v22];
  [v15 addAction:v20];

  return v15;
}

- (void)requester:(id)requester userCurrentBookingRequestDidFailWithError:(id)error
{
  v5 = [NSOperationQueue mainQueue:requester];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F83598;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  [v5 addOperationWithBlock:v6];
}

- (void)requesterUserCurrentBookingRequestDidComplete:(id)complete
{
  completeCopy = complete;
  v5 = +[NSOperationQueue mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F836D4;
  v7[3] = &unk_101661A90;
  v8 = completeCopy;
  selfCopy = self;
  v6 = completeCopy;
  [v5 addOperationWithBlock:v7];
}

- (void)discoverActiveReservationEvents
{
  extension = [(RestaurantReservationRouter *)self extension];

  if (extension)
  {
    restaurantReservationRequester = [(RestaurantReservationRouter *)self restaurantReservationRequester];
    [restaurantReservationRequester requestUserCurrentBookingWithRelevanceWindow:1800.0];
  }
}

- (void)discoverGuest
{
  restaurantReservationRequester = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  [restaurantReservationRequester requestGuest];
}

- (void)discoverAvailableBookings
{
  v15 = +[NSDate date];
  restaurantReservationRequester = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  reservationDefaultsResponse = [restaurantReservationRequester reservationDefaultsResponse];
  if (reservationDefaultsResponse)
  {
    v5 = reservationDefaultsResponse;
    restaurantReservationRequester2 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
    reservationDefaultsResponse2 = [restaurantReservationRequester2 reservationDefaultsResponse];
    code = [reservationDefaultsResponse2 code];

    if (code)
    {
      defaultPartySize = 2;
      goto LABEL_7;
    }

    restaurantReservationRequester3 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
    reservationDefaultsResponse3 = [restaurantReservationRequester3 reservationDefaultsResponse];
    defaultPartySize = [reservationDefaultsResponse3 defaultPartySize];

    restaurantReservationRequester = [(RestaurantReservationRouter *)self restaurantReservationRequester];
    reservationDefaultsResponse4 = [restaurantReservationRequester reservationDefaultsResponse];
    defaultBookingDate = [reservationDefaultsResponse4 defaultBookingDate];

    v15 = defaultBookingDate;
  }

  else
  {
    defaultPartySize = 2;
  }

LABEL_7:
  restaurantReservationRequester4 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  [restaurantReservationRequester4 requestAvailableBookingsForPreferredTime:v15 partySize:defaultPartySize];
}

- (void)requesterReservationDefaultsRequestDidComplete:(id)complete
{
  completeCopy = complete;
  reservationDefaultsResponse = [completeCopy reservationDefaultsResponse];
  if (reservationDefaultsResponse)
  {
    v5 = reservationDefaultsResponse;
    reservationDefaultsResponse2 = [completeCopy reservationDefaultsResponse];
    code = [reservationDefaultsResponse2 code];

    if (!code)
    {
      [(RestaurantReservationRouter *)self discoverAvailableBookings];
      [(RestaurantReservationRouter *)self discoverGuest];
    }
  }
}

- (void)discoverDefaults
{
  restaurantReservationRequester = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  [restaurantReservationRequester requestReservationDefaults];
}

- (void)resolve
{
  extension = self->_extension;
  if (!extension || ([(_MXExtension *)extension _containingAppIdentifer], v4 = objc_claimAutoreleasedReturnValue(), v5 = isExtensionHidden(), v4, v5))
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [WeakRetained presentAppStoreApp:self->_appStoreApp];
LABEL_4:

    return;
  }

  if (([(_MXExtension *)self->_extension isEnabled]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    alertControllerForExtensionPermission = [(RestaurantReservationRouter *)self alertControllerForExtensionPermission];
    [WeakRetained presentPermissionsController:alertControllerForExtensionPermission];

    goto LABEL_4;
  }

  _containingAppIdentifer = [(_MXExtension *)self->_extension _containingAppIdentifer];
  v7 = isExtensionLocked();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_presenter);
    alertControllerForLockedExtension = [(RestaurantReservationRouter *)self alertControllerForLockedExtension];
    [v8 presentPermissionsController:alertControllerForLockedExtension];

    WeakRetained = MapsSuggestionsResourceDepotForMapsProcess();
    oneAppGuardian = [WeakRetained oneAppGuardian];
    [oneAppGuardian registerAppTracker:self];

    goto LABEL_4;
  }

  [(RestaurantReservationRouter *)self discoverActiveReservationEvents];
}

- (RestaurantReservationRouter)initWithExtension:(id)extension parameters:(id)parameters appStoreApp:(id)app mapItem:(id)item presenter:(id)presenter
{
  extensionCopy = extension;
  parametersCopy = parameters;
  appCopy = app;
  itemCopy = item;
  presenterCopy = presenter;
  v25.receiver = self;
  v25.super_class = RestaurantReservationRouter;
  v18 = [(RestaurantReservationRouter *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_presenter, presenterCopy);
    objc_storeStrong(&v19->_extension, extension);
    v20 = [[RestaurantReservationRequester alloc] initWithExtension:extensionCopy mapItem:itemCopy delegate:v19 parameters:parametersCopy];
    restaurantReservationRequester = v19->_restaurantReservationRequester;
    v19->_restaurantReservationRequester = v20;

    v22 = objc_alloc_init(RestaurantReservationAnalyticsBookingSession);
    activeBookingSession = v19->_activeBookingSession;
    v19->_activeBookingSession = v22;

    objc_storeStrong(&v19->_appStoreApp, app);
  }

  return v19;
}

@end