@interface RestaurantReservationRequestController
- (ExtensionFlowViewController)flowViewController;
- (INRestaurantReservationUserBooking)activeReservation;
- (RestaurantReservationErrorController)errorController;
- (RestaurantReservationRequestController)initWithFlowController:(id)controller reservationRequester:(id)requester;
- (RestaurantReservationRequestControllerDelegate)delegate;
- (id)appIcon;
- (id)appName;
- (id)defaultDate;
- (id)defaultGuestDisplayPreferences;
- (id)setupAnalyticsBookedSession;
- (unint64_t)defaultPartySize;
- (void)bookingSelectionViewController:(id)controller didSelectBooking:(id)booking offer:(id)offer;
- (void)bookingSelectionViewControllerDidSelectOpenInApp:(id)app;
- (void)bookingSelectionViewControllerDidUpdatePartySize:(id)size;
- (void)configureHeaderForBranding:(BOOL)branding;
- (void)confirmBooking:(id)booking guest:(id)guest selectedOffer:(id)offer specialRequest:(id)request;
- (void)didChangeProtectionStatusForBundleId:(id)id;
- (void)extensionFlowHeaderViewDidTapDismiss:(id)dismiss;
- (void)extensionTextInputViewControllerDidComplete:(id)complete;
- (void)handleRequestedTimeCompletion;
- (void)headerCellSelected;
- (void)kickoffRequests;
- (void)openAppWithActivity:(id)activity;
- (void)present;
- (void)pushReservationRefinementController;
- (void)pushRestaurantReservationController;
- (void)pushSuccessScreen;
- (void)requestAvailableBookingsWithDate:(id)date partySize:(unint64_t)size;
- (void)requester:(id)requester availableBookingsRequestDidFailWithError:(id)error;
- (void)requester:(id)requester bookRestaurantReservationRequestDidFailWithError:(id)error;
- (void)requester:(id)requester guestRequestDidFailWithError:(id)error;
- (void)requester:(id)requester reservationDefaultsRequestDidFailWithError:(id)error;
- (void)requesterAvailableBookingsRequestDidComplete:(id)complete;
- (void)requesterBookRestaurantReservationRequestDidComplete:(id)complete;
- (void)requesterGuestRequestDidComplete:(id)complete;
- (void)requesterReservationDefaultsRequestDidComplete:(id)complete;
- (void)requesterUserCurrentBookingRequestDidComplete:(id)complete;
- (void)reservationContactInfoViewControllerDidSelectDone:(id)done;
- (void)reservationRequestRefinementViewControllerDidRefine:(id)refine;
- (void)restaurantReservationConfirmationViewControllerDidSelectEditReservation:(id)reservation;
- (void)restaurantReservationConfirmationViewControllerRequestStatusUpdateForUserBooking:(id)booking;
- (void)setupAnalyticsBookingSession;
- (void)specialRequestCellSelected;
- (void)updateReservationTableViewController;
- (void)userInfoCellSelected;
- (void)willResignCurrent:(BOOL)current;
@end

@implementation RestaurantReservationRequestController

- (RestaurantReservationRequestControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ExtensionFlowViewController)flowViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_flowViewController);

  return WeakRetained;
}

- (void)didChangeProtectionStatusForBundleId:(id)id
{
  idCopy = id;
  extension = [(RestaurantReservationRequester *)self->_reservationRequester extension];
  identifier = [extension identifier];
  v7 = [identifier containsString:idCopy];

  if (v7 && [MapsSuggestionsAppGuardian protectionStatusForBundleID:idCopy]== 3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C010C4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)requesterUserCurrentBookingRequestDidComplete:(id)complete
{
  completeCopy = complete;
  v5 = +[NSOperationQueue mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C01188;
  v7[3] = &unk_101661A90;
  v8 = completeCopy;
  selfCopy = self;
  v6 = completeCopy;
  [v5 addOperationWithBlock:v7];
}

- (RestaurantReservationErrorController)errorController
{
  errorController = self->_errorController;
  if (!errorController)
  {
    objc_initWeak(&location, self);
    v4 = [RestaurantReservationErrorController alloc];
    reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
    extension = [reservationRequester extension];
    displayName = [extension displayName];
    mapItem = [(RestaurantReservationRequestController *)self mapItem];
    name = [mapItem name];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100C01468;
    v15[3] = &unk_101661B98;
    objc_copyWeak(&v16, &location);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100C014D4;
    v13[3] = &unk_10164D938;
    objc_copyWeak(&v14, &location);
    v10 = [(RestaurantReservationErrorController *)v4 initWithAppName:displayName restaurantName:name cancelAction:v15 activityAction:v13];
    v11 = self->_errorController;
    self->_errorController = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    errorController = self->_errorController;
  }

  return errorController;
}

- (void)extensionFlowHeaderViewDidTapDismiss:(id)dismiss
{
  flowViewController = [(RestaurantReservationRequestController *)self flowViewController];
  topViewController = [flowViewController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    analyticsCaptor = [(RestaurantReservationRequestController *)self analyticsCaptor];
    [analyticsCaptor captureBookedCancel];
  }

  else
  {
    flowViewController2 = [(RestaurantReservationRequestController *)self flowViewController];
    topViewController2 = [flowViewController2 topViewController];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }

    analyticsCaptor = [(RestaurantReservationRequestController *)self analyticsCaptor];
    [analyticsCaptor captureSelectTimeCancel];
  }

LABEL_6:
  delegate = [(RestaurantReservationRequestController *)self delegate];
  [delegate restaurantReservationRequestControllerDidComplete:self contentRefresh:{-[RestaurantReservationRequestController contentLikelyChanged](self, "contentLikelyChanged")}];

  appGuardian = self->_appGuardian;

  [(MapsSuggestionsAppGuardian *)appGuardian unregisterAppTracker:self];
}

- (void)updateReservationTableViewController
{
  mapItem = [(RestaurantReservationRequestController *)self mapItem];
  name = [mapItem name];
  reservationTableViewController = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController setRestaurantName:name];

  mapItem2 = [(RestaurantReservationRequestController *)self mapItem];
  timeZone = [mapItem2 timeZone];
  reservationTableViewController2 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController2 setRestaurantTimeZone:timeZone];

  appName = [(RestaurantReservationRequestController *)self appName];
  reservationTableViewController3 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController3 setAppName:appName];

  reservationTableViewController4 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController4 setDelegate:self];

  reservationRequestRefinementViewController = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  partySize = [reservationRequestRefinementViewController partySize];

  if (!partySize)
  {
    partySize = [(RestaurantReservationRequestController *)self defaultPartySize];
  }

  reservationTableViewController5 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController5 setPartySize:partySize];

  reservationRequestRefinementViewController2 = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  date = [reservationRequestRefinementViewController2 date];
  defaultDate = date;
  if (!date)
  {
    defaultDate = [(RestaurantReservationRequestController *)self defaultDate];
  }

  reservationTableViewController6 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController6 setDate:defaultDate];

  if (!date)
  {
  }

  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsResponse = [reservationRequester availableBookingsResponse];
  localizedBookingAdvisementText = [availableBookingsResponse localizedBookingAdvisementText];
  reservationTableViewController7 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController7 setRestaurantAdvisementText:localizedBookingAdvisementText];

  reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsResponse2 = [reservationRequester2 availableBookingsResponse];
  localizedRestaurantDescriptionText = [availableBookingsResponse2 localizedRestaurantDescriptionText];
  if ([localizedRestaurantDescriptionText length])
  {

LABEL_10:
    reservationTableViewController8 = [(RestaurantReservationRequestController *)self reservationTableViewController];
    [reservationTableViewController8 setUseTruncatedAdvisement:1];

    reservationTableViewController9 = [(RestaurantReservationRequestController *)self reservationTableViewController];
    reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
    availableBookingsResponse3 = [reservationRequester3 availableBookingsResponse];
    localizedRestaurantDescriptionText2 = [availableBookingsResponse3 localizedRestaurantDescriptionText];
    [reservationTableViewController9 setRestaurantDescriptionText:localizedRestaurantDescriptionText2 keepExisting:1];

    goto LABEL_11;
  }

  reservationRequester4 = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsRequestPending = [reservationRequester4 availableBookingsRequestPending];

  if (availableBookingsRequestPending)
  {
    goto LABEL_10;
  }

  reservationTableViewController10 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController10 setUseTruncatedAdvisement:0];

  reservationTableViewController9 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  reservationRequester3 = [(RestaurantReservationRequestController *)self mapItem];
  availableBookingsResponse3 = [reservationRequester3 _addressFormattedAsMultilineAddress];
  [reservationTableViewController9 setRestaurantDescriptionText:availableBookingsResponse3 keepExisting:1];
LABEL_11:

  reservationRequester5 = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsResponse4 = [reservationRequester5 availableBookingsResponse];
  availableBookings = [availableBookingsResponse4 availableBookings];
  reservationTableViewController11 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController11 setAvailableBookings:availableBookings];

  reservationTableViewController12 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  guest = [reservationTableViewController12 guest];
  guest2 = guest;
  if (!guest)
  {
    availableBookings = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationTableViewController11 = [availableBookings guestResponse];
    guest2 = [reservationTableViewController11 guest];
  }

  reservationTableViewController13 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController13 setGuest:guest2];

  if (!guest)
  {
  }

  reservationRequester6 = [(RestaurantReservationRequestController *)self reservationRequester];
  guestResponse = [reservationRequester6 guestResponse];
  guestDisplayPreferences = [guestResponse guestDisplayPreferences];
  defaultGuestDisplayPreferences = guestDisplayPreferences;
  if (!guestDisplayPreferences)
  {
    defaultGuestDisplayPreferences = [(RestaurantReservationRequestController *)self defaultGuestDisplayPreferences];
  }

  reservationTableViewController14 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController14 setGuestDisplayPreferences:defaultGuestDisplayPreferences];

  if (!guestDisplayPreferences)
  {
  }

  reservationRequester7 = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsResponse5 = [reservationRequester7 availableBookingsResponse];
  termsAndConditions = [availableBookingsResponse5 termsAndConditions];
  reservationTableViewController15 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController15 setTermsAndConditions:termsAndConditions];

  reservationRequester8 = [(RestaurantReservationRequestController *)self reservationRequester];
  bookReservationRequestPending = [reservationRequester8 bookReservationRequestPending];
  reservationTableViewController16 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController16 setBookingPending:bookReservationRequestPending];

  reservationRequester9 = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsRequestPending2 = [reservationRequester9 availableBookingsRequestPending];
  if (availableBookingsRequestPending2)
  {
    reservationDefaultsRequestPending = 1;
  }

  else
  {
    reservationTableViewController16 = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationDefaultsRequestPending = [reservationTableViewController16 reservationDefaultsRequestPending];
  }

  reservationTableViewController17 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController17 setBookingsLoading:reservationDefaultsRequestPending];

  if ((availableBookingsRequestPending2 & 1) == 0)
  {
  }

  reservationRequester10 = [(RestaurantReservationRequestController *)self reservationRequester];
  guestRequestPending = [reservationRequester10 guestRequestPending];
  if (guestRequestPending)
  {
    v58 = 1;
  }

  else
  {
    availableBookingsRequestPending2 = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationTableViewController16 = [availableBookingsRequestPending2 guestResponse];
    v58 = reservationTableViewController16 == 0;
  }

  reservationTableViewController18 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController18 setGuestLoading:v58];

  if ((guestRequestPending & 1) == 0)
  {
  }
}

- (void)confirmBooking:(id)booking guest:(id)guest selectedOffer:(id)offer specialRequest:(id)request
{
  requestCopy = request;
  offerCopy = offer;
  guestCopy = guest;
  bookingCopy = booking;
  analyticsBookingSession = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [analyticsBookingSession setCurrentView:6];

  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  [reservationRequester bookRestaurantReservation:bookingCopy guest:guestCopy selectedOffer:offerCopy specialRequest:requestCopy];

  [(RestaurantReservationRequestController *)self updateReservationTableViewController];
}

- (void)requester:(id)requester bookRestaurantReservationRequestDidFailWithError:(id)error
{
  requesterCopy = requester;
  errorCopy = error;
  v8 = +[NSOperationQueue mainQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C01E18;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = requesterCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requesterCopy;
  [v8 addOperationWithBlock:v11];
}

- (void)requesterBookRestaurantReservationRequestDidComplete:(id)complete
{
  completeCopy = complete;
  v5 = +[NSOperationQueue mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C01FD0;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = completeCopy;
  v6 = completeCopy;
  [v5 addOperationWithBlock:v7];
}

- (void)requester:(id)requester availableBookingsRequestDidFailWithError:(id)error
{
  requesterCopy = requester;
  errorCopy = error;
  v8 = +[NSOperationQueue mainQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C024C8;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = requesterCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requesterCopy;
  [v8 addOperationWithBlock:v11];
}

- (void)handleRequestedTimeCompletion
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsResponse = [reservationRequester availableBookingsResponse];
  v5 = +[RestaurantReservationErrorController shouldDisplayAlertForResponseWithAvailableBookingsIntentCode:](RestaurantReservationErrorController, "shouldDisplayAlertForResponseWithAvailableBookingsIntentCode:", [availableBookingsResponse code]);

  [(RestaurantReservationRequestController *)self updateReservationTableViewController];
  if (v5)
  {
    errorController = [(RestaurantReservationRequestController *)self errorController];
    reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
    availableBookingsResponse2 = [reservationRequester2 availableBookingsResponse];
    v13 = [errorController alertControllerForAvailableBookingsResponse:availableBookingsResponse2 error:0];

    analyticsBookingSession = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    message = [v13 message];
    [analyticsBookingSession addErrorMessage:message];

    analyticsBookingSession2 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    [analyticsBookingSession2 setCurrentState:5];

    flowViewController = [(RestaurantReservationRequestController *)self flowViewController];
    [flowViewController presentViewController:v13 animated:1 completion:0];
  }
}

- (void)requesterAvailableBookingsRequestDidComplete:(id)complete
{
  v4 = +[NSOperationQueue mainQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C027B4;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [v4 addOperationWithBlock:v5];
}

- (void)requestAvailableBookingsWithDate:(id)date partySize:(unint64_t)size
{
  dateCopy = date;
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  [reservationRequester requestAvailableBookingsForPreferredTime:dateCopy partySize:size];

  [(RestaurantReservationRequestController *)self updateReservationTableViewController];
}

- (void)requester:(id)requester guestRequestDidFailWithError:(id)error
{
  requesterCopy = requester;
  errorCopy = error;
  v8 = +[NSOperationQueue mainQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C02904;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = requesterCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requesterCopy;
  [v8 addOperationWithBlock:v11];
}

- (void)requesterGuestRequestDidComplete:(id)complete
{
  v4 = +[NSOperationQueue mainQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C02A8C;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [v4 addOperationWithBlock:v5];
}

- (void)requester:(id)requester reservationDefaultsRequestDidFailWithError:(id)error
{
  requesterCopy = requester;
  errorCopy = error;
  v8 = +[NSOperationQueue mainQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C02B70;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = requesterCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requesterCopy;
  [v8 addOperationWithBlock:v11];
}

- (void)requesterReservationDefaultsRequestDidComplete:(id)complete
{
  v4 = +[NSOperationQueue mainQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C02CF8;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [v4 addOperationWithBlock:v5];
}

- (void)kickoffRequests
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([reservationRequester reservationDefaultsRequestPending])
  {
    v4 = 0;
  }

  else
  {
    reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationDefaultsResponse = [reservationRequester2 reservationDefaultsResponse];
    v4 = reservationDefaultsResponse == 0;
  }

  reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([reservationRequester3 availableBookingsRequestPending])
  {
    v8 = 0;
  }

  else
  {
    reservationRequester4 = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationDefaultsResponse2 = [reservationRequester4 reservationDefaultsResponse];
    v8 = reservationDefaultsResponse2 != 0;
  }

  reservationRequester5 = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([reservationRequester5 availableBookingsRequestPending])
  {
    v12 = 0;
  }

  else
  {
    reservationRequester6 = [(RestaurantReservationRequestController *)self reservationRequester];
    availableBookingsResponse = [reservationRequester6 availableBookingsResponse];
    v12 = availableBookingsResponse != 0;
  }

  reservationRequester7 = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([reservationRequester7 guestRequestPending])
  {
LABEL_18:

    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  reservationRequester8 = [(RestaurantReservationRequestController *)self reservationRequester];
  guestResponse = [reservationRequester8 guestResponse];

  if (!guestResponse)
  {
    reservationRequester7 = [(RestaurantReservationRequestController *)self reservationRequester];
    [reservationRequester7 requestGuest];
    goto LABEL_18;
  }

  if (v4)
  {
LABEL_13:
    reservationRequester9 = [(RestaurantReservationRequestController *)self reservationRequester];
    [reservationRequester9 requestReservationDefaults];
LABEL_14:

    return;
  }

LABEL_19:
  if (!v8)
  {
    return;
  }

  if (!v12)
  {
    reservationRequester9 = [(RestaurantReservationRequestController *)self defaultDate];
    [(RestaurantReservationRequestController *)self requestAvailableBookingsWithDate:reservationRequester9 partySize:[(RestaurantReservationRequestController *)self defaultPartySize]];
    goto LABEL_14;
  }

  [(RestaurantReservationRequestController *)self handleRequestedTimeCompletion];
}

- (void)openAppWithActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    v5 = [LSApplicationRecord alloc];
    reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
    extension = [reservationRequester extension];
    _containingAppIdentifer = [extension _containingAppIdentifer];
    v9 = [v5 initWithBundleIdentifier:_containingAppIdentifer allowPlaceholder:0 error:0];

    analyticsBookingSession = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    v11 = analyticsBookingSession;
    if (v9)
    {
      [analyticsBookingSession endSessionWithState:4];

      v12 = +[MKSystemController sharedInstance];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100C0321C;
      v25[3] = &unk_10164D910;
      v25[4] = self;
      [v12 openUserActivity:activityCopy withApplicationRecord:v9 requireOptionKeyPromptUnlockDevice:0 completionHandler:v25];
    }

    else
    {
      reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
      extension2 = [reservationRequester2 extension];
      _containingAppIdentifer2 = [extension2 _containingAppIdentifer];
      v21 = [NSString stringWithFormat:@"Could not find the LaunchServices app information for application '%@'", _containingAppIdentifer2];
      [v11 addErrorMessage:v21];

      reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
      extension3 = [reservationRequester3 extension];
      _containingAppIdentifer3 = [extension3 _containingAppIdentifer];
      NSLog(@"Could not find the LaunchServices app information for application '%@'", _containingAppIdentifer3);
    }
  }

  else
  {
    analyticsBookingSession2 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    [analyticsBookingSession2 endSessionWithState:4];

    v14 = +[LSApplicationWorkspace defaultWorkspace];
    reservationRequester4 = [(RestaurantReservationRequestController *)self reservationRequester];
    extension4 = [reservationRequester4 extension];
    _containingAppIdentifer4 = [extension4 _containingAppIdentifer];
    [v14 openApplicationWithBundleID:_containingAppIdentifer4];

    [(MapsSuggestionsAppGuardian *)self->_appGuardian registerAppTracker:self];
  }
}

- (void)restaurantReservationConfirmationViewControllerDidSelectEditReservation:(id)reservation
{
  mapItem = [(RestaurantReservationRequestController *)self mapItem];
  v5 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [mapItem _muid], 1);
  [v5 setTappedChangeReservation:1];

  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  bookReservationUserActivity = [reservationRequester bookReservationUserActivity];

  reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
  v9 = reservationRequester2;
  if (bookReservationUserActivity)
  {
    [reservationRequester2 bookReservationUserActivity];
  }

  else
  {
    [reservationRequester2 userCurrentBookingUserActivity];
  }
  v10 = ;

  [(RestaurantReservationRequestController *)self openAppWithActivity:v10];
}

- (void)restaurantReservationConfirmationViewControllerRequestStatusUpdateForUserBooking:(id)booking
{
  bookingCopy = booking;
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  userBooking = [bookingCopy userBooking];

  bookingIdentifier = [userBooking bookingIdentifier];
  [reservationRequester requestUserCurrentBookingWithReservationIdentifier:bookingIdentifier];
}

- (void)bookingSelectionViewControllerDidSelectOpenInApp:(id)app
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsUserActivity = [reservationRequester availableBookingsUserActivity];
  [(RestaurantReservationRequestController *)self openAppWithActivity:availableBookingsUserActivity];
}

- (void)bookingSelectionViewControllerDidUpdatePartySize:(id)size
{
  sizeCopy = size;
  reservationRequestRefinementViewController = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  date = [reservationRequestRefinementViewController date];
  defaultDate = date;
  if (!date)
  {
    defaultDate = [(RestaurantReservationRequestController *)self defaultDate];
  }

  -[RestaurantReservationRequestController requestAvailableBookingsWithDate:partySize:](self, "requestAvailableBookingsWithDate:partySize:", defaultDate, [sizeCopy partySize]);
  if (!date)
  {
  }
}

- (void)bookingSelectionViewController:(id)controller didSelectBooking:(id)booking offer:(id)offer
{
  offerCopy = offer;
  bookingCopy = booking;
  controllerCopy = controller;
  setupAnalyticsBookedSession = [(RestaurantReservationRequestController *)self setupAnalyticsBookedSession];
  [setupAnalyticsBookedSession setBookedUsingMaps:1];
  [(RestaurantReservationRequestController *)self setSelectedBooking:bookingCopy];

  [(RestaurantReservationRequestController *)self setContentLikelyChanged:1];
  selectedBooking = [(RestaurantReservationRequestController *)self selectedBooking];
  guest = [controllerCopy guest];
  specialRequestText = [controllerCopy specialRequestText];

  [(RestaurantReservationRequestController *)self confirmBooking:selectedBooking guest:guest selectedOffer:offerCopy specialRequest:specialRequestText];
}

- (void)reservationRequestRefinementViewControllerDidRefine:(id)refine
{
  refineCopy = refine;
  if ([refineCopy partySize])
  {
    date = [refineCopy date];
    reservationTableViewController = [(RestaurantReservationRequestController *)self reservationTableViewController];
    [reservationTableViewController setDate:date];

    partySize = [refineCopy partySize];
    reservationTableViewController2 = [(RestaurantReservationRequestController *)self reservationTableViewController];
    [reservationTableViewController2 setPartySize:partySize];

    date2 = [refineCopy date];
    -[RestaurantReservationRequestController requestAvailableBookingsWithDate:partySize:](self, "requestAvailableBookingsWithDate:partySize:", date2, [refineCopy partySize]);
  }
}

- (void)reservationContactInfoViewControllerDidSelectDone:(id)done
{
  doneCopy = done;
  v5 = [INRestaurantGuest alloc];
  nameComponents = [doneCopy nameComponents];
  phoneNumber = [doneCopy phoneNumber];
  emailAddress = [doneCopy emailAddress];

  v10 = [v5 initWithNameComponents:nameComponents phoneNumber:phoneNumber emailAddress:emailAddress];
  reservationTableViewController = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController setGuest:v10];

  [(MapsSuggestionsAppGuardian *)self->_appGuardian unregisterAppTracker:self];
}

- (void)headerCellSelected
{
  v3 = [ExtensionLabelViewController alloc];
  mapItem = [(RestaurantReservationRequestController *)self mapItem];
  name = [mapItem name];
  reservationTableViewController = [(RestaurantReservationRequestController *)self reservationTableViewController];
  restaurantDescriptionText = [reservationTableViewController restaurantDescriptionText];
  v9 = [(ExtensionLabelViewController *)v3 initWithTitle:name advertisementText:restaurantDescriptionText];

  flowViewController = [(RestaurantReservationRequestController *)self flowViewController];
  [flowViewController pushViewController:v9];
}

- (void)specialRequestCellSelected
{
  v3 = +[NSBundle mainBundle];
  v11 = [v3 localizedStringForKey:@"reservation_special_request_key" value:@"localized string not found" table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"reservation_special_request_placeholder_key" value:@"localized string not found" table:0];

  v6 = [ExtensionTextInputViewController alloc];
  reservationTableViewController = [(RestaurantReservationRequestController *)self reservationTableViewController];
  specialRequestText = [reservationTableViewController specialRequestText];
  v9 = [(ExtensionTextInputViewController *)v6 initWithTitle:v11 placeholderText:v5 text:specialRequestText];

  [(ExtensionTextInputViewController *)v9 setInputDelegate:self];
  flowViewController = [(RestaurantReservationRequestController *)self flowViewController];
  [flowViewController pushViewController:v9];
}

- (void)userInfoCellSelected
{
  v19 = [ReservationContactInfoViewController alloc];
  reservationTableViewController = [(RestaurantReservationRequestController *)self reservationTableViewController];
  guest = [reservationTableViewController guest];
  nameComponents = [guest nameComponents];
  reservationTableViewController2 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  guest2 = [reservationTableViewController2 guest];
  emailAddress = [guest2 emailAddress];
  reservationTableViewController3 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  guest3 = [reservationTableViewController3 guest];
  phoneNumber = [guest3 phoneNumber];
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  guestResponse = [reservationRequester guestResponse];
  guestDisplayPreferences = [guestResponse guestDisplayPreferences];
  defaultGuestDisplayPreferences = guestDisplayPreferences;
  if (!guestDisplayPreferences)
  {
    defaultGuestDisplayPreferences = [(RestaurantReservationRequestController *)self defaultGuestDisplayPreferences];
  }

  reservationTableViewController4 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  inferredContactRequirements = [reservationTableViewController4 inferredContactRequirements];
  v20 = [(ReservationContactInfoViewController *)v19 initWithNameComponents:nameComponents emailAddress:emailAddress phoneNumber:phoneNumber guestDisplayPreferences:defaultGuestDisplayPreferences requirements:inferredContactRequirements];

  if (!guestDisplayPreferences)
  {
  }

  [(ReservationContactInfoViewController *)v20 setContactDelegate:self];
  flowViewController = [(RestaurantReservationRequestController *)self flowViewController];
  [flowViewController pushViewController:v20];
}

- (void)extensionTextInputViewControllerDidComplete:(id)complete
{
  text = [complete text];
  reservationTableViewController = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [reservationTableViewController setSpecialRequestText:text];
}

- (void)configureHeaderForBranding:(BOOL)branding
{
  brandingCopy = branding;
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  extension = [reservationRequester extension];
  v7 = [extension _iconWithFormat:1];
  flowViewController = [(RestaurantReservationRequestController *)self flowViewController];
  headerView = [flowViewController headerView];
  [headerView setIconImage:v7];

  if (brandingCopy)
  {
    reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
    extension2 = [reservationRequester2 extension];
    displayName = [extension2 displayName];
    flowViewController2 = [(RestaurantReservationRequestController *)self flowViewController];
    headerView2 = [flowViewController2 headerView];
    [headerView2 setTitleText:displayName];

    flowViewController3 = [(RestaurantReservationRequestController *)self flowViewController];
    headerView3 = [flowViewController3 headerView];
    [headerView3 setDetailText:0];

    flowViewController4 = [(RestaurantReservationRequestController *)self flowViewController];
    headerView4 = [flowViewController4 headerView];
    [headerView4 setDismissButtonType:1];

    reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationDefaultsResponse = [reservationRequester3 reservationDefaultsResponse];
    providerImage = [reservationDefaultsResponse providerImage];
    _identifier = [providerImage _identifier];

    if (_identifier)
    {
      reservationRequester4 = [(RestaurantReservationRequestController *)self reservationRequester];
      extension3 = [reservationRequester4 extension];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100C03FF4;
      v37[3] = &unk_1016519B0;
      v37[4] = self;
      [_MXExtensionManager imageForKey:_identifier extension:extension3 completion:v37];
    }
  }

  else
  {
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"Book a Table" value:@"localized string not found" table:0];
    flowViewController5 = [(RestaurantReservationRequestController *)self flowViewController];
    headerView5 = [flowViewController5 headerView];
    [headerView5 setTitleText:v26];

    v29 = +[NSBundle mainBundle];
    v36 = [v29 localizedStringForKey:@"reservation_at_restaurant_key" value:@"localized string not found" table:0];

    v30 = [NSString alloc];
    mapItem = [(RestaurantReservationRequestController *)self mapItem];
    name = [mapItem name];
    v33 = [v30 initWithFormat:v36, name];
    flowViewController6 = [(RestaurantReservationRequestController *)self flowViewController];
    headerView6 = [flowViewController6 headerView];
    [headerView6 setDetailText:v33];
  }
}

- (void)pushSuccessScreen
{
  setupAnalyticsBookedSession = [(RestaurantReservationRequestController *)self setupAnalyticsBookedSession];
  v4 = [RestaurantReservationConfirmationViewController alloc];
  activeReservation = [(RestaurantReservationRequestController *)self activeReservation];
  mapItem = [(RestaurantReservationRequestController *)self mapItem];
  appName = [(RestaurantReservationRequestController *)self appName];
  analyticsCaptor = [(RestaurantReservationRequestController *)self analyticsCaptor];
  v9 = [(RestaurantReservationConfirmationViewController *)v4 initWithUserBooking:activeReservation mapItem:mapItem appName:appName analyticsCaptor:analyticsCaptor];
  [(RestaurantReservationRequestController *)self setReservationSuccessViewController:v9];

  reservationSuccessViewController = [(RestaurantReservationRequestController *)self reservationSuccessViewController];
  [reservationSuccessViewController setReservationDelegate:self];

  flowViewController = [(RestaurantReservationRequestController *)self flowViewController];
  headerView = [flowViewController headerView];
  [headerView setDismissButtonType:0];

  analyticsBookingSession = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [analyticsBookingSession setCurrentView:7];

  analyticsBookingSession2 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [analyticsBookingSession2 setCurrentState:1];

  flowViewController2 = [(RestaurantReservationRequestController *)self flowViewController];
  reservationSuccessViewController2 = [(RestaurantReservationRequestController *)self reservationSuccessViewController];
  [flowViewController2 pushViewController:reservationSuccessViewController2];

  [(RestaurantReservationRequestController *)self configureHeaderForBranding:1];
}

- (void)pushReservationRefinementController
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  reservationDefaultsResponse = [reservationRequester reservationDefaultsResponse];
  minimumPartySize = [reservationDefaultsResponse minimumPartySize];
  if (minimumPartySize)
  {
    reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationDefaultsResponse2 = [reservationRequester2 reservationDefaultsResponse];
    minimumPartySize2 = [reservationDefaultsResponse2 minimumPartySize];
    unsignedIntegerValue = [minimumPartySize2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
  reservationDefaultsResponse3 = [reservationRequester3 reservationDefaultsResponse];
  maximumPartySize = [reservationDefaultsResponse3 maximumPartySize];
  if (maximumPartySize)
  {
    reservationRequester4 = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationDefaultsResponse4 = [reservationRequester4 reservationDefaultsResponse];
    maximumPartySize2 = [reservationDefaultsResponse4 maximumPartySize];
    unsignedIntegerValue2 = [maximumPartySize2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 6;
  }

  v17 = [ReservationRequestRefinementViewController alloc];
  defaultDate = [(RestaurantReservationRequestController *)self defaultDate];
  defaultPartySize = [(RestaurantReservationRequestController *)self defaultPartySize];
  analyticsCaptor = [(RestaurantReservationRequestController *)self analyticsCaptor];
  mapItem = [(RestaurantReservationRequestController *)self mapItem];
  timeZone = [mapItem timeZone];
  analyticsBookingSession = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  v24 = [(ReservationRequestRefinementViewController *)v17 initWithDate:defaultDate partySize:defaultPartySize minimumPartySize:unsignedIntegerValue maximumPartySize:unsignedIntegerValue2 analyticsCaptor:analyticsCaptor timeZone:timeZone analyticsBookingSession:analyticsBookingSession];
  [(RestaurantReservationRequestController *)self setReservationRequestRefinementViewController:v24];

  reservationRequestRefinementViewController = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  [reservationRequestRefinementViewController setRefinementDelegate:self];

  analyticsBookingSession2 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [analyticsBookingSession2 setCurrentView:3];

  flowViewController = [(RestaurantReservationRequestController *)self flowViewController];
  reservationRequestRefinementViewController2 = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  [flowViewController pushViewController:reservationRequestRefinementViewController2];
}

- (id)defaultGuestDisplayPreferences
{
  v2 = objc_alloc_init(INRestaurantGuestDisplayPreferences);
  [v2 setPhoneNumberFieldShouldBeDisplayed:1];
  [v2 setNameFieldShouldBeDisplayed:1];
  [v2 setEmailAddressFieldShouldBeDisplayed:1];

  return v2;
}

- (id)appIcon
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  extension = [reservationRequester extension];
  v4 = [extension _iconWithFormat:1];

  return v4;
}

- (id)appName
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  extension = [reservationRequester extension];
  displayName = [extension displayName];

  return displayName;
}

- (INRestaurantReservationUserBooking)activeReservation
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  bookReservationResponse = [reservationRequester bookReservationResponse];

  reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
  v6 = reservationRequester2;
  if (bookReservationResponse)
  {
    bookReservationResponse2 = [reservationRequester2 bookReservationResponse];
    userBooking = [bookReservationResponse2 userBooking];
  }

  else
  {
    userCurrentBookingResponse = [reservationRequester2 userCurrentBookingResponse];
    userCurrentBookings = [userCurrentBookingResponse userCurrentBookings];
    firstObject = [userCurrentBookings firstObject];

    if ([firstObject _maps_shouldBeDisplayed])
    {
      v6 = firstObject;
      userBooking = v6;
    }

    else
    {
      userBooking = 0;
      v6 = firstObject;
    }
  }

  return userBooking;
}

- (unint64_t)defaultPartySize
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsRequest = [reservationRequester availableBookingsRequest];
  if (availableBookingsRequest)
  {
    v5 = availableBookingsRequest;
    reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
    availableBookingsRequest2 = [reservationRequester2 availableBookingsRequest];
    partySize = [availableBookingsRequest2 partySize];

    if (partySize)
    {
      reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
      availableBookingsRequest3 = [reservationRequester3 availableBookingsRequest];
      partySize2 = [availableBookingsRequest3 partySize];
      goto LABEL_10;
    }
  }

  else
  {
  }

  reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
  if (([reservationRequester3 reservationDefaultsRequestPending] & 1) == 0)
  {
    availableBookingsRequest3 = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationDefaultsResponse = [availableBookingsRequest3 reservationDefaultsResponse];
    if (!reservationDefaultsResponse)
    {
      v12 = 2;
      goto LABEL_11;
    }

    v14 = reservationDefaultsResponse;
    reservationRequester4 = [(RestaurantReservationRequestController *)self reservationRequester];
    reservationDefaultsResponse2 = [reservationRequester4 reservationDefaultsResponse];
    defaultPartySize = [reservationDefaultsResponse2 defaultPartySize];

    if (!defaultPartySize)
    {
      return 2;
    }

    reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
    availableBookingsRequest3 = [reservationRequester3 reservationDefaultsResponse];
    partySize2 = [availableBookingsRequest3 defaultPartySize];
LABEL_10:
    v12 = partySize2;
LABEL_11:

    goto LABEL_12;
  }

  v12 = 2;
LABEL_12:

  return v12;
}

- (id)defaultDate
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  availableBookingsRequest = [reservationRequester availableBookingsRequest];
  mapItem = [(RestaurantReservationRequestController *)self mapItem];
  timeZone = [mapItem timeZone];
  v7 = [availableBookingsRequest _maps_preferredBookingDateWithTimeZone:timeZone];

  if (v7)
  {
    v8 = v7;
    goto LABEL_9;
  }

  reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([reservationRequester2 reservationDefaultsRequestPending])
  {

LABEL_7:
    reservationRequester4 = +[NSCalendar currentCalendar];
    v15 = +[NSDate date];
    reservationDefaultsResponse2 = [reservationRequester4 components:124 fromDate:v15];

    [reservationDefaultsResponse2 setHour:{objc_msgSend(reservationDefaultsResponse2, "hour") + 1}];
    [reservationDefaultsResponse2 setMinute:0];
    defaultBookingDate = [reservationRequester4 dateFromComponents:reservationDefaultsResponse2];
    goto LABEL_8;
  }

  reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
  reservationDefaultsResponse = [reservationRequester3 reservationDefaultsResponse];

  if (!reservationDefaultsResponse)
  {
    goto LABEL_7;
  }

  reservationRequester4 = [(RestaurantReservationRequestController *)self reservationRequester];
  reservationDefaultsResponse2 = [reservationRequester4 reservationDefaultsResponse];
  defaultBookingDate = [reservationDefaultsResponse2 defaultBookingDate];
LABEL_8:
  v8 = defaultBookingDate;

LABEL_9:

  return v8;
}

- (void)pushRestaurantReservationController
{
  [(RestaurantReservationRequestController *)self setupAnalyticsBookingSession];
  reservationTableViewController = [(RestaurantReservationRequestController *)self reservationTableViewController];

  if (!reservationTableViewController)
  {
    v4 = [RestaurantReservationTableViewController alloc];
    analyticsCaptor = [(RestaurantReservationRequestController *)self analyticsCaptor];
    analyticsBookingSession = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    v7 = [(RestaurantReservationTableViewController *)v4 initWithAnalyticsCaptor:analyticsCaptor analyticsBookingSession:analyticsBookingSession];
    [(RestaurantReservationRequestController *)self setReservationTableViewController:v7];
  }

  [(RestaurantReservationRequestController *)self updateReservationTableViewController];
  [(RestaurantReservationRequestController *)self configureHeaderForBranding:1];
  analyticsBookingSession2 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [analyticsBookingSession2 setCurrentView:5];

  flowViewController = [(RestaurantReservationRequestController *)self flowViewController];
  reservationTableViewController2 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [flowViewController pushViewController:reservationTableViewController2];
}

- (id)setupAnalyticsBookedSession
{
  reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
  mapItem = [reservationRequester mapItem];
  v5 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [mapItem _muid], 1);

  reservationRequester2 = [(RestaurantReservationRequestController *)self reservationRequester];
  extension = [reservationRequester2 extension];
  identifier = [extension identifier];
  [v5 setAppID:identifier];

  reservationRequester3 = [(RestaurantReservationRequestController *)self reservationRequester];
  mapItem2 = [reservationRequester3 mapItem];
  [v5 setMuid:{objc_msgSend(mapItem2, "_muid")}];

  reservationRequester4 = [(RestaurantReservationRequestController *)self reservationRequester];
  extension2 = [reservationRequester4 extension];
  [v5 setHasAppsInstalled:extension2 != 0];

  reservationRequester5 = [(RestaurantReservationRequestController *)self reservationRequester];
  extension3 = [reservationRequester5 extension];
  [v5 setHasAppsEnabled:{objc_msgSend(extension3, "isEnabled")}];

  return v5;
}

- (void)setupAnalyticsBookingSession
{
  analyticsBookingSession = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [analyticsBookingSession setCurrentState:2];
}

- (void)willResignCurrent:(BOOL)current
{
  analyticsBookingSession = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [analyticsBookingSession endSession];

  mapItem = [(RestaurantReservationRequestController *)self mapItem];
  v5 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [mapItem _muid], 0);
  [v5 endSession];
}

- (void)present
{
  activeReservation = [(RestaurantReservationRequestController *)self activeReservation];

  if (activeReservation)
  {
    reservationRequester = [(RestaurantReservationRequestController *)self reservationRequester];
    mapItem = [reservationRequester mapItem];
    v6 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [mapItem _muid], 1);
    [v6 setViewedDetailsFromPlacecard:1];

    [(RestaurantReservationRequestController *)self pushSuccessScreen];
  }

  else
  {
    [(RestaurantReservationRequestController *)self kickoffRequests];

    [(RestaurantReservationRequestController *)self pushRestaurantReservationController];
  }
}

- (RestaurantReservationRequestController)initWithFlowController:(id)controller reservationRequester:(id)requester
{
  controllerCopy = controller;
  requesterCopy = requester;
  v20.receiver = self;
  v20.super_class = RestaurantReservationRequestController;
  v8 = [(RestaurantReservationRequestController *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(RestaurantReservationRequestController *)v8 setFlowViewController:controllerCopy];
    [(RestaurantReservationRequestController *)v9 setReservationRequester:requesterCopy];
    [requesterCopy setDelegate:v9];
    mapItem = [requesterCopy mapItem];
    [(RestaurantReservationRequestController *)v9 setMapItem:mapItem];

    [(RestaurantReservationRequestController *)v9 configureHeaderForBranding:0];
    flowViewController = [(RestaurantReservationRequestController *)v9 flowViewController];
    headerView = [flowViewController headerView];
    [headerView setDelegate:v9];

    v13 = objc_opt_new();
    [(RestaurantReservationRequestController *)v9 setAnalyticsCaptor:v13];

    mapItem2 = [(RestaurantReservationRequestController *)v9 mapItem];
    analyticsCaptor = [(RestaurantReservationRequestController *)v9 analyticsCaptor];
    [analyticsCaptor setMapItem:mapItem2];

    v16 = MapsSuggestionsResourceDepotForMapsProcess();
    oneAppGuardian = [v16 oneAppGuardian];
    appGuardian = v9->_appGuardian;
    v9->_appGuardian = oneAppGuardian;

    [(MapsSuggestionsAppGuardian *)v9->_appGuardian registerAppTracker:v9];
  }

  return v9;
}

@end