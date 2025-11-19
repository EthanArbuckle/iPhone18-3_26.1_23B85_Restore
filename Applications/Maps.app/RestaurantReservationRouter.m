@interface RestaurantReservationRouter
- (RestaurantReservationRouter)initWithExtension:(id)a3 parameters:(id)a4 appStoreApp:(id)a5 mapItem:(id)a6 presenter:(id)a7;
- (id)alertControllerForExtensionPermission;
- (id)alertControllerForLockedExtension;
- (id)reservationExtensionFlowViewController;
- (void)didChangeProtectionStatusForBundleId:(id)a3;
- (void)discoverActiveReservationEvents;
- (void)discoverAvailableBookings;
- (void)discoverDefaults;
- (void)discoverGuest;
- (void)requester:(id)a3 userCurrentBookingRequestDidFailWithError:(id)a4;
- (void)requesterReservationDefaultsRequestDidComplete:(id)a3;
- (void)requesterUserCurrentBookingRequestDidComplete:(id)a3;
- (void)resolve;
@end

@implementation RestaurantReservationRouter

- (void)didChangeProtectionStatusForBundleId:(id)a3
{
  extension = self->_extension;
  v5 = a3;
  v6 = [(_MXExtension *)extension identifier];
  v7 = [v6 containsString:v5];

  if (v7)
  {
    v8 = [(RestaurantReservationRouter *)self activeBookingSession];
    [v8 endSessionWithState:2];

    v10 = MapsSuggestionsResourceDepotForMapsProcess();
    v9 = [v10 oneAppGuardian];
    [v9 unregisterAppTracker:self];
  }
}

- (id)reservationExtensionFlowViewController
{
  v3 = [RestaurantReservationExtensionFlowViewController alloc];
  v4 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  v5 = [(RestaurantReservationExtensionFlowViewController *)v3 initWithRestaurantReservationRequester:v4];

  if (![(RestaurantReservationRouter *)self hasActiveRestaurantUserBooking])
  {
    v6 = [(RestaurantReservationRouter *)self activeBookingSession];
    [(RestaurantReservationRouter *)self updateSessionAsInstallCompletedIfNeeded:v6];

    v7 = [(RestaurantReservationRouter *)self activeBookingSession];
    [(RestaurantReservationExtensionFlowViewController *)v5 setBookingSession:v7];
  }

  return v5;
}

- (id)alertControllerForExtensionPermission
{
  v3 = +[NSBundle mainBundle];
  v24 = [v3 localizedStringForKey:@"reservation_book_with_app_title" value:@"localized string not found" table:0];

  v4 = [NSString alloc];
  v5 = [(RestaurantReservationRouter *)self extension];
  v6 = [v5 displayName];
  v23 = [v4 initWithFormat:v24, v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"reservations_agree_to_terms_alert_key" value:@"localized string not found" table:0];

  v9 = [NSString alloc];
  v10 = [(RestaurantReservationRouter *)self extension];
  v11 = [v10 displayName];
  v12 = [v9 initWithFormat:v8, v11];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"reservation_enable_extension_button_title_key" value:@"localized string not found" table:0];

  v15 = [ReservationErrorAlertController alertControllerWithTitle:v23 message:v12 preferredStyle:1];
  v16 = [(RestaurantReservationRouter *)self activeBookingSession];
  [(RestaurantReservationRouter *)self updateSessionAsInstallCompletedIfNeeded:v16];

  v17 = [(RestaurantReservationRouter *)self activeBookingSession];
  [v15 setBookingSession:v17];

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
  v6 = [(RestaurantReservationRouter *)self extension];
  v7 = [v6 displayName];
  v8 = [v5 initWithFormat:v4, v7];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"reservations_extension_locked_alert_key" value:@"localized string not found" table:0];

  v11 = [NSString alloc];
  v12 = [(RestaurantReservationRouter *)self extension];
  v13 = [v12 displayName];
  v14 = [v11 initWithFormat:v10, v13];

  v15 = [ReservationErrorAlertController alertControllerWithTitle:v8 message:v14 preferredStyle:1];
  v16 = [(RestaurantReservationRouter *)self activeBookingSession];
  [(RestaurantReservationRouter *)self updateSessionAsInstallCompletedIfNeeded:v16];

  v17 = [(RestaurantReservationRouter *)self activeBookingSession];
  [v15 setBookingSession:v17];

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

- (void)requester:(id)a3 userCurrentBookingRequestDidFailWithError:(id)a4
{
  v5 = [NSOperationQueue mainQueue:a3];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F83598;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  [v5 addOperationWithBlock:v6];
}

- (void)requesterUserCurrentBookingRequestDidComplete:(id)a3
{
  v4 = a3;
  v5 = +[NSOperationQueue mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F836D4;
  v7[3] = &unk_101661A90;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (void)discoverActiveReservationEvents
{
  v3 = [(RestaurantReservationRouter *)self extension];

  if (v3)
  {
    v4 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
    [v4 requestUserCurrentBookingWithRelevanceWindow:1800.0];
  }
}

- (void)discoverGuest
{
  v2 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  [v2 requestGuest];
}

- (void)discoverAvailableBookings
{
  v15 = +[NSDate date];
  v3 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  v4 = [v3 reservationDefaultsResponse];
  if (v4)
  {
    v5 = v4;
    v6 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
    v7 = [v6 reservationDefaultsResponse];
    v8 = [v7 code];

    if (v8)
    {
      v9 = 2;
      goto LABEL_7;
    }

    v10 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
    v11 = [v10 reservationDefaultsResponse];
    v9 = [v11 defaultPartySize];

    v3 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
    v12 = [v3 reservationDefaultsResponse];
    v13 = [v12 defaultBookingDate];

    v15 = v13;
  }

  else
  {
    v9 = 2;
  }

LABEL_7:
  v14 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  [v14 requestAvailableBookingsForPreferredTime:v15 partySize:v9];
}

- (void)requesterReservationDefaultsRequestDidComplete:(id)a3
{
  v8 = a3;
  v4 = [v8 reservationDefaultsResponse];
  if (v4)
  {
    v5 = v4;
    v6 = [v8 reservationDefaultsResponse];
    v7 = [v6 code];

    if (!v7)
    {
      [(RestaurantReservationRouter *)self discoverAvailableBookings];
      [(RestaurantReservationRouter *)self discoverGuest];
    }
  }
}

- (void)discoverDefaults
{
  v2 = [(RestaurantReservationRouter *)self restaurantReservationRequester];
  [v2 requestReservationDefaults];
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
    v11 = [(RestaurantReservationRouter *)self alertControllerForExtensionPermission];
    [WeakRetained presentPermissionsController:v11];

    goto LABEL_4;
  }

  v6 = [(_MXExtension *)self->_extension _containingAppIdentifer];
  v7 = isExtensionLocked();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_presenter);
    v9 = [(RestaurantReservationRouter *)self alertControllerForLockedExtension];
    [v8 presentPermissionsController:v9];

    WeakRetained = MapsSuggestionsResourceDepotForMapsProcess();
    v10 = [WeakRetained oneAppGuardian];
    [v10 registerAppTracker:self];

    goto LABEL_4;
  }

  [(RestaurantReservationRouter *)self discoverActiveReservationEvents];
}

- (RestaurantReservationRouter)initWithExtension:(id)a3 parameters:(id)a4 appStoreApp:(id)a5 mapItem:(id)a6 presenter:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = RestaurantReservationRouter;
  v18 = [(RestaurantReservationRouter *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_presenter, v17);
    objc_storeStrong(&v19->_extension, a3);
    v20 = [[RestaurantReservationRequester alloc] initWithExtension:v13 mapItem:v16 delegate:v19 parameters:v14];
    restaurantReservationRequester = v19->_restaurantReservationRequester;
    v19->_restaurantReservationRequester = v20;

    v22 = objc_alloc_init(RestaurantReservationAnalyticsBookingSession);
    activeBookingSession = v19->_activeBookingSession;
    v19->_activeBookingSession = v22;

    objc_storeStrong(&v19->_appStoreApp, a5);
  }

  return v19;
}

@end