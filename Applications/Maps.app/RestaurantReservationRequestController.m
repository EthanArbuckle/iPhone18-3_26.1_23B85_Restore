@interface RestaurantReservationRequestController
- (ExtensionFlowViewController)flowViewController;
- (INRestaurantReservationUserBooking)activeReservation;
- (RestaurantReservationErrorController)errorController;
- (RestaurantReservationRequestController)initWithFlowController:(id)a3 reservationRequester:(id)a4;
- (RestaurantReservationRequestControllerDelegate)delegate;
- (id)appIcon;
- (id)appName;
- (id)defaultDate;
- (id)defaultGuestDisplayPreferences;
- (id)setupAnalyticsBookedSession;
- (unint64_t)defaultPartySize;
- (void)bookingSelectionViewController:(id)a3 didSelectBooking:(id)a4 offer:(id)a5;
- (void)bookingSelectionViewControllerDidSelectOpenInApp:(id)a3;
- (void)bookingSelectionViewControllerDidUpdatePartySize:(id)a3;
- (void)configureHeaderForBranding:(BOOL)a3;
- (void)confirmBooking:(id)a3 guest:(id)a4 selectedOffer:(id)a5 specialRequest:(id)a6;
- (void)didChangeProtectionStatusForBundleId:(id)a3;
- (void)extensionFlowHeaderViewDidTapDismiss:(id)a3;
- (void)extensionTextInputViewControllerDidComplete:(id)a3;
- (void)handleRequestedTimeCompletion;
- (void)headerCellSelected;
- (void)kickoffRequests;
- (void)openAppWithActivity:(id)a3;
- (void)present;
- (void)pushReservationRefinementController;
- (void)pushRestaurantReservationController;
- (void)pushSuccessScreen;
- (void)requestAvailableBookingsWithDate:(id)a3 partySize:(unint64_t)a4;
- (void)requester:(id)a3 availableBookingsRequestDidFailWithError:(id)a4;
- (void)requester:(id)a3 bookRestaurantReservationRequestDidFailWithError:(id)a4;
- (void)requester:(id)a3 guestRequestDidFailWithError:(id)a4;
- (void)requester:(id)a3 reservationDefaultsRequestDidFailWithError:(id)a4;
- (void)requesterAvailableBookingsRequestDidComplete:(id)a3;
- (void)requesterBookRestaurantReservationRequestDidComplete:(id)a3;
- (void)requesterGuestRequestDidComplete:(id)a3;
- (void)requesterReservationDefaultsRequestDidComplete:(id)a3;
- (void)requesterUserCurrentBookingRequestDidComplete:(id)a3;
- (void)reservationContactInfoViewControllerDidSelectDone:(id)a3;
- (void)reservationRequestRefinementViewControllerDidRefine:(id)a3;
- (void)restaurantReservationConfirmationViewControllerDidSelectEditReservation:(id)a3;
- (void)restaurantReservationConfirmationViewControllerRequestStatusUpdateForUserBooking:(id)a3;
- (void)setupAnalyticsBookingSession;
- (void)specialRequestCellSelected;
- (void)updateReservationTableViewController;
- (void)userInfoCellSelected;
- (void)willResignCurrent:(BOOL)a3;
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

- (void)didChangeProtectionStatusForBundleId:(id)a3
{
  v4 = a3;
  v5 = [(RestaurantReservationRequester *)self->_reservationRequester extension];
  v6 = [v5 identifier];
  v7 = [v6 containsString:v4];

  if (v7 && [MapsSuggestionsAppGuardian protectionStatusForBundleID:v4]== 3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C010C4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)requesterUserCurrentBookingRequestDidComplete:(id)a3
{
  v4 = a3;
  v5 = +[NSOperationQueue mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C01188;
  v7[3] = &unk_101661A90;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (RestaurantReservationErrorController)errorController
{
  errorController = self->_errorController;
  if (!errorController)
  {
    objc_initWeak(&location, self);
    v4 = [RestaurantReservationErrorController alloc];
    v5 = [(RestaurantReservationRequestController *)self reservationRequester];
    v6 = [v5 extension];
    v7 = [v6 displayName];
    v8 = [(RestaurantReservationRequestController *)self mapItem];
    v9 = [v8 name];
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
    v10 = [(RestaurantReservationErrorController *)v4 initWithAppName:v7 restaurantName:v9 cancelAction:v15 activityAction:v13];
    v11 = self->_errorController;
    self->_errorController = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    errorController = self->_errorController;
  }

  return errorController;
}

- (void)extensionFlowHeaderViewDidTapDismiss:(id)a3
{
  v4 = [(RestaurantReservationRequestController *)self flowViewController];
  v5 = [v4 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(RestaurantReservationRequestController *)self analyticsCaptor];
    [v7 captureBookedCancel];
  }

  else
  {
    v8 = [(RestaurantReservationRequestController *)self flowViewController];
    v9 = [v8 topViewController];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = [(RestaurantReservationRequestController *)self analyticsCaptor];
    [v7 captureSelectTimeCancel];
  }

LABEL_6:
  v11 = [(RestaurantReservationRequestController *)self delegate];
  [v11 restaurantReservationRequestControllerDidComplete:self contentRefresh:{-[RestaurantReservationRequestController contentLikelyChanged](self, "contentLikelyChanged")}];

  appGuardian = self->_appGuardian;

  [(MapsSuggestionsAppGuardian *)appGuardian unregisterAppTracker:self];
}

- (void)updateReservationTableViewController
{
  v3 = [(RestaurantReservationRequestController *)self mapItem];
  v4 = [v3 name];
  v5 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v5 setRestaurantName:v4];

  v6 = [(RestaurantReservationRequestController *)self mapItem];
  v7 = [v6 timeZone];
  v8 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v8 setRestaurantTimeZone:v7];

  v9 = [(RestaurantReservationRequestController *)self appName];
  v10 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v10 setAppName:v9];

  v11 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v11 setDelegate:self];

  v12 = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  v13 = [v12 partySize];

  if (!v13)
  {
    v13 = [(RestaurantReservationRequestController *)self defaultPartySize];
  }

  v14 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v14 setPartySize:v13];

  v15 = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  v16 = [v15 date];
  v17 = v16;
  if (!v16)
  {
    v17 = [(RestaurantReservationRequestController *)self defaultDate];
  }

  v18 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v18 setDate:v17];

  if (!v16)
  {
  }

  v19 = [(RestaurantReservationRequestController *)self reservationRequester];
  v20 = [v19 availableBookingsResponse];
  v21 = [v20 localizedBookingAdvisementText];
  v22 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v22 setRestaurantAdvisementText:v21];

  v23 = [(RestaurantReservationRequestController *)self reservationRequester];
  v24 = [v23 availableBookingsResponse];
  v25 = [v24 localizedRestaurantDescriptionText];
  if ([v25 length])
  {

LABEL_10:
    v28 = [(RestaurantReservationRequestController *)self reservationTableViewController];
    [v28 setUseTruncatedAdvisement:1];

    v29 = [(RestaurantReservationRequestController *)self reservationTableViewController];
    v30 = [(RestaurantReservationRequestController *)self reservationRequester];
    v31 = [v30 availableBookingsResponse];
    v32 = [v31 localizedRestaurantDescriptionText];
    [v29 setRestaurantDescriptionText:v32 keepExisting:1];

    goto LABEL_11;
  }

  v26 = [(RestaurantReservationRequestController *)self reservationRequester];
  v27 = [v26 availableBookingsRequestPending];

  if (v27)
  {
    goto LABEL_10;
  }

  v60 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v60 setUseTruncatedAdvisement:0];

  v29 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  v30 = [(RestaurantReservationRequestController *)self mapItem];
  v31 = [v30 _addressFormattedAsMultilineAddress];
  [v29 setRestaurantDescriptionText:v31 keepExisting:1];
LABEL_11:

  v33 = [(RestaurantReservationRequestController *)self reservationRequester];
  v34 = [v33 availableBookingsResponse];
  v35 = [v34 availableBookings];
  v36 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v36 setAvailableBookings:v35];

  v37 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  v38 = [v37 guest];
  v39 = v38;
  if (!v38)
  {
    v35 = [(RestaurantReservationRequestController *)self reservationRequester];
    v36 = [v35 guestResponse];
    v39 = [v36 guest];
  }

  v40 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v40 setGuest:v39];

  if (!v38)
  {
  }

  v41 = [(RestaurantReservationRequestController *)self reservationRequester];
  v42 = [v41 guestResponse];
  v43 = [v42 guestDisplayPreferences];
  v44 = v43;
  if (!v43)
  {
    v44 = [(RestaurantReservationRequestController *)self defaultGuestDisplayPreferences];
  }

  v45 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v45 setGuestDisplayPreferences:v44];

  if (!v43)
  {
  }

  v46 = [(RestaurantReservationRequestController *)self reservationRequester];
  v47 = [v46 availableBookingsResponse];
  v48 = [v47 termsAndConditions];
  v49 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v49 setTermsAndConditions:v48];

  v50 = [(RestaurantReservationRequestController *)self reservationRequester];
  v51 = [v50 bookReservationRequestPending];
  v52 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v52 setBookingPending:v51];

  v53 = [(RestaurantReservationRequestController *)self reservationRequester];
  v54 = [v53 availableBookingsRequestPending];
  if (v54)
  {
    v55 = 1;
  }

  else
  {
    v52 = [(RestaurantReservationRequestController *)self reservationRequester];
    v55 = [v52 reservationDefaultsRequestPending];
  }

  v56 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v56 setBookingsLoading:v55];

  if ((v54 & 1) == 0)
  {
  }

  v61 = [(RestaurantReservationRequestController *)self reservationRequester];
  v57 = [v61 guestRequestPending];
  if (v57)
  {
    v58 = 1;
  }

  else
  {
    v54 = [(RestaurantReservationRequestController *)self reservationRequester];
    v52 = [v54 guestResponse];
    v58 = v52 == 0;
  }

  v59 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v59 setGuestLoading:v58];

  if ((v57 & 1) == 0)
  {
  }
}

- (void)confirmBooking:(id)a3 guest:(id)a4 selectedOffer:(id)a5 specialRequest:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [v14 setCurrentView:6];

  v15 = [(RestaurantReservationRequestController *)self reservationRequester];
  [v15 bookRestaurantReservation:v13 guest:v12 selectedOffer:v11 specialRequest:v10];

  [(RestaurantReservationRequestController *)self updateReservationTableViewController];
}

- (void)requester:(id)a3 bookRestaurantReservationRequestDidFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSOperationQueue mainQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C01E18;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

- (void)requesterBookRestaurantReservationRequestDidComplete:(id)a3
{
  v4 = a3;
  v5 = +[NSOperationQueue mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C01FD0;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (void)requester:(id)a3 availableBookingsRequestDidFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSOperationQueue mainQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C024C8;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

- (void)handleRequestedTimeCompletion
{
  v3 = [(RestaurantReservationRequestController *)self reservationRequester];
  v4 = [v3 availableBookingsResponse];
  v5 = +[RestaurantReservationErrorController shouldDisplayAlertForResponseWithAvailableBookingsIntentCode:](RestaurantReservationErrorController, "shouldDisplayAlertForResponseWithAvailableBookingsIntentCode:", [v4 code]);

  [(RestaurantReservationRequestController *)self updateReservationTableViewController];
  if (v5)
  {
    v6 = [(RestaurantReservationRequestController *)self errorController];
    v7 = [(RestaurantReservationRequestController *)self reservationRequester];
    v8 = [v7 availableBookingsResponse];
    v13 = [v6 alertControllerForAvailableBookingsResponse:v8 error:0];

    v9 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    v10 = [v13 message];
    [v9 addErrorMessage:v10];

    v11 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    [v11 setCurrentState:5];

    v12 = [(RestaurantReservationRequestController *)self flowViewController];
    [v12 presentViewController:v13 animated:1 completion:0];
  }
}

- (void)requesterAvailableBookingsRequestDidComplete:(id)a3
{
  v4 = +[NSOperationQueue mainQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C027B4;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [v4 addOperationWithBlock:v5];
}

- (void)requestAvailableBookingsWithDate:(id)a3 partySize:(unint64_t)a4
{
  v6 = a3;
  v7 = [(RestaurantReservationRequestController *)self reservationRequester];
  [v7 requestAvailableBookingsForPreferredTime:v6 partySize:a4];

  [(RestaurantReservationRequestController *)self updateReservationTableViewController];
}

- (void)requester:(id)a3 guestRequestDidFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSOperationQueue mainQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C02904;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

- (void)requesterGuestRequestDidComplete:(id)a3
{
  v4 = +[NSOperationQueue mainQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C02A8C;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [v4 addOperationWithBlock:v5];
}

- (void)requester:(id)a3 reservationDefaultsRequestDidFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSOperationQueue mainQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C02B70;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

- (void)requesterReservationDefaultsRequestDidComplete:(id)a3
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
  v3 = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([v3 reservationDefaultsRequestPending])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(RestaurantReservationRequestController *)self reservationRequester];
    v6 = [v5 reservationDefaultsResponse];
    v4 = v6 == 0;
  }

  v7 = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([v7 availableBookingsRequestPending])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(RestaurantReservationRequestController *)self reservationRequester];
    v10 = [v9 reservationDefaultsResponse];
    v8 = v10 != 0;
  }

  v11 = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([v11 availableBookingsRequestPending])
  {
    v12 = 0;
  }

  else
  {
    v13 = [(RestaurantReservationRequestController *)self reservationRequester];
    v14 = [v13 availableBookingsResponse];
    v12 = v14 != 0;
  }

  v15 = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([v15 guestRequestPending])
  {
LABEL_18:

    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v16 = [(RestaurantReservationRequestController *)self reservationRequester];
  v17 = [v16 guestResponse];

  if (!v17)
  {
    v15 = [(RestaurantReservationRequestController *)self reservationRequester];
    [v15 requestGuest];
    goto LABEL_18;
  }

  if (v4)
  {
LABEL_13:
    v18 = [(RestaurantReservationRequestController *)self reservationRequester];
    [v18 requestReservationDefaults];
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
    v18 = [(RestaurantReservationRequestController *)self defaultDate];
    [(RestaurantReservationRequestController *)self requestAvailableBookingsWithDate:v18 partySize:[(RestaurantReservationRequestController *)self defaultPartySize]];
    goto LABEL_14;
  }

  [(RestaurantReservationRequestController *)self handleRequestedTimeCompletion];
}

- (void)openAppWithActivity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [LSApplicationRecord alloc];
    v6 = [(RestaurantReservationRequestController *)self reservationRequester];
    v7 = [v6 extension];
    v8 = [v7 _containingAppIdentifer];
    v9 = [v5 initWithBundleIdentifier:v8 allowPlaceholder:0 error:0];

    v10 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    v11 = v10;
    if (v9)
    {
      [v10 endSessionWithState:4];

      v12 = +[MKSystemController sharedInstance];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100C0321C;
      v25[3] = &unk_10164D910;
      v25[4] = self;
      [v12 openUserActivity:v4 withApplicationRecord:v9 requireOptionKeyPromptUnlockDevice:0 completionHandler:v25];
    }

    else
    {
      v18 = [(RestaurantReservationRequestController *)self reservationRequester];
      v19 = [v18 extension];
      v20 = [v19 _containingAppIdentifer];
      v21 = [NSString stringWithFormat:@"Could not find the LaunchServices app information for application '%@'", v20];
      [v11 addErrorMessage:v21];

      v22 = [(RestaurantReservationRequestController *)self reservationRequester];
      v23 = [v22 extension];
      v24 = [v23 _containingAppIdentifer];
      NSLog(@"Could not find the LaunchServices app information for application '%@'", v24);
    }
  }

  else
  {
    v13 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    [v13 endSessionWithState:4];

    v14 = +[LSApplicationWorkspace defaultWorkspace];
    v15 = [(RestaurantReservationRequestController *)self reservationRequester];
    v16 = [v15 extension];
    v17 = [v16 _containingAppIdentifer];
    [v14 openApplicationWithBundleID:v17];

    [(MapsSuggestionsAppGuardian *)self->_appGuardian registerAppTracker:self];
  }
}

- (void)restaurantReservationConfirmationViewControllerDidSelectEditReservation:(id)a3
{
  v4 = [(RestaurantReservationRequestController *)self mapItem];
  v5 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [v4 _muid], 1);
  [v5 setTappedChangeReservation:1];

  v6 = [(RestaurantReservationRequestController *)self reservationRequester];
  v7 = [v6 bookReservationUserActivity];

  v8 = [(RestaurantReservationRequestController *)self reservationRequester];
  v9 = v8;
  if (v7)
  {
    [v8 bookReservationUserActivity];
  }

  else
  {
    [v8 userCurrentBookingUserActivity];
  }
  v10 = ;

  [(RestaurantReservationRequestController *)self openAppWithActivity:v10];
}

- (void)restaurantReservationConfirmationViewControllerRequestStatusUpdateForUserBooking:(id)a3
{
  v4 = a3;
  v7 = [(RestaurantReservationRequestController *)self reservationRequester];
  v5 = [v4 userBooking];

  v6 = [v5 bookingIdentifier];
  [v7 requestUserCurrentBookingWithReservationIdentifier:v6];
}

- (void)bookingSelectionViewControllerDidSelectOpenInApp:(id)a3
{
  v5 = [(RestaurantReservationRequestController *)self reservationRequester];
  v4 = [v5 availableBookingsUserActivity];
  [(RestaurantReservationRequestController *)self openAppWithActivity:v4];
}

- (void)bookingSelectionViewControllerDidUpdatePartySize:(id)a3
{
  v7 = a3;
  v4 = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  v5 = [v4 date];
  v6 = v5;
  if (!v5)
  {
    v6 = [(RestaurantReservationRequestController *)self defaultDate];
  }

  -[RestaurantReservationRequestController requestAvailableBookingsWithDate:partySize:](self, "requestAvailableBookingsWithDate:partySize:", v6, [v7 partySize]);
  if (!v5)
  {
  }
}

- (void)bookingSelectionViewController:(id)a3 didSelectBooking:(id)a4 offer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [(RestaurantReservationRequestController *)self setupAnalyticsBookedSession];
  [v14 setBookedUsingMaps:1];
  [(RestaurantReservationRequestController *)self setSelectedBooking:v9];

  [(RestaurantReservationRequestController *)self setContentLikelyChanged:1];
  v11 = [(RestaurantReservationRequestController *)self selectedBooking];
  v12 = [v10 guest];
  v13 = [v10 specialRequestText];

  [(RestaurantReservationRequestController *)self confirmBooking:v11 guest:v12 selectedOffer:v8 specialRequest:v13];
}

- (void)reservationRequestRefinementViewControllerDidRefine:(id)a3
{
  v9 = a3;
  if ([v9 partySize])
  {
    v4 = [v9 date];
    v5 = [(RestaurantReservationRequestController *)self reservationTableViewController];
    [v5 setDate:v4];

    v6 = [v9 partySize];
    v7 = [(RestaurantReservationRequestController *)self reservationTableViewController];
    [v7 setPartySize:v6];

    v8 = [v9 date];
    -[RestaurantReservationRequestController requestAvailableBookingsWithDate:partySize:](self, "requestAvailableBookingsWithDate:partySize:", v8, [v9 partySize]);
  }
}

- (void)reservationContactInfoViewControllerDidSelectDone:(id)a3
{
  v4 = a3;
  v5 = [INRestaurantGuest alloc];
  v6 = [v4 nameComponents];
  v7 = [v4 phoneNumber];
  v8 = [v4 emailAddress];

  v10 = [v5 initWithNameComponents:v6 phoneNumber:v7 emailAddress:v8];
  v9 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v9 setGuest:v10];

  [(MapsSuggestionsAppGuardian *)self->_appGuardian unregisterAppTracker:self];
}

- (void)headerCellSelected
{
  v3 = [ExtensionLabelViewController alloc];
  v4 = [(RestaurantReservationRequestController *)self mapItem];
  v5 = [v4 name];
  v6 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  v7 = [v6 restaurantDescriptionText];
  v9 = [(ExtensionLabelViewController *)v3 initWithTitle:v5 advertisementText:v7];

  v8 = [(RestaurantReservationRequestController *)self flowViewController];
  [v8 pushViewController:v9];
}

- (void)specialRequestCellSelected
{
  v3 = +[NSBundle mainBundle];
  v11 = [v3 localizedStringForKey:@"reservation_special_request_key" value:@"localized string not found" table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"reservation_special_request_placeholder_key" value:@"localized string not found" table:0];

  v6 = [ExtensionTextInputViewController alloc];
  v7 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  v8 = [v7 specialRequestText];
  v9 = [(ExtensionTextInputViewController *)v6 initWithTitle:v11 placeholderText:v5 text:v8];

  [(ExtensionTextInputViewController *)v9 setInputDelegate:self];
  v10 = [(RestaurantReservationRequestController *)self flowViewController];
  [v10 pushViewController:v9];
}

- (void)userInfoCellSelected
{
  v19 = [ReservationContactInfoViewController alloc];
  v16 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  v15 = [v16 guest];
  v18 = [v15 nameComponents];
  v14 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  v13 = [v14 guest];
  v17 = [v13 emailAddress];
  v3 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  v4 = [v3 guest];
  v5 = [v4 phoneNumber];
  v6 = [(RestaurantReservationRequestController *)self reservationRequester];
  v7 = [v6 guestResponse];
  v8 = [v7 guestDisplayPreferences];
  v9 = v8;
  if (!v8)
  {
    v9 = [(RestaurantReservationRequestController *)self defaultGuestDisplayPreferences];
  }

  v10 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  v11 = [v10 inferredContactRequirements];
  v20 = [(ReservationContactInfoViewController *)v19 initWithNameComponents:v18 emailAddress:v17 phoneNumber:v5 guestDisplayPreferences:v9 requirements:v11];

  if (!v8)
  {
  }

  [(ReservationContactInfoViewController *)v20 setContactDelegate:self];
  v12 = [(RestaurantReservationRequestController *)self flowViewController];
  [v12 pushViewController:v20];
}

- (void)extensionTextInputViewControllerDidComplete:(id)a3
{
  v5 = [a3 text];
  v4 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v4 setSpecialRequestText:v5];
}

- (void)configureHeaderForBranding:(BOOL)a3
{
  v3 = a3;
  v5 = [(RestaurantReservationRequestController *)self reservationRequester];
  v6 = [v5 extension];
  v7 = [v6 _iconWithFormat:1];
  v8 = [(RestaurantReservationRequestController *)self flowViewController];
  v9 = [v8 headerView];
  [v9 setIconImage:v7];

  if (v3)
  {
    v10 = [(RestaurantReservationRequestController *)self reservationRequester];
    v11 = [v10 extension];
    v12 = [v11 displayName];
    v13 = [(RestaurantReservationRequestController *)self flowViewController];
    v14 = [v13 headerView];
    [v14 setTitleText:v12];

    v15 = [(RestaurantReservationRequestController *)self flowViewController];
    v16 = [v15 headerView];
    [v16 setDetailText:0];

    v17 = [(RestaurantReservationRequestController *)self flowViewController];
    v18 = [v17 headerView];
    [v18 setDismissButtonType:1];

    v19 = [(RestaurantReservationRequestController *)self reservationRequester];
    v20 = [v19 reservationDefaultsResponse];
    v21 = [v20 providerImage];
    v22 = [v21 _identifier];

    if (v22)
    {
      v23 = [(RestaurantReservationRequestController *)self reservationRequester];
      v24 = [v23 extension];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100C03FF4;
      v37[3] = &unk_1016519B0;
      v37[4] = self;
      [_MXExtensionManager imageForKey:v22 extension:v24 completion:v37];
    }
  }

  else
  {
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"Book a Table" value:@"localized string not found" table:0];
    v27 = [(RestaurantReservationRequestController *)self flowViewController];
    v28 = [v27 headerView];
    [v28 setTitleText:v26];

    v29 = +[NSBundle mainBundle];
    v36 = [v29 localizedStringForKey:@"reservation_at_restaurant_key" value:@"localized string not found" table:0];

    v30 = [NSString alloc];
    v31 = [(RestaurantReservationRequestController *)self mapItem];
    v32 = [v31 name];
    v33 = [v30 initWithFormat:v36, v32];
    v34 = [(RestaurantReservationRequestController *)self flowViewController];
    v35 = [v34 headerView];
    [v35 setDetailText:v33];
  }
}

- (void)pushSuccessScreen
{
  v3 = [(RestaurantReservationRequestController *)self setupAnalyticsBookedSession];
  v4 = [RestaurantReservationConfirmationViewController alloc];
  v5 = [(RestaurantReservationRequestController *)self activeReservation];
  v6 = [(RestaurantReservationRequestController *)self mapItem];
  v7 = [(RestaurantReservationRequestController *)self appName];
  v8 = [(RestaurantReservationRequestController *)self analyticsCaptor];
  v9 = [(RestaurantReservationConfirmationViewController *)v4 initWithUserBooking:v5 mapItem:v6 appName:v7 analyticsCaptor:v8];
  [(RestaurantReservationRequestController *)self setReservationSuccessViewController:v9];

  v10 = [(RestaurantReservationRequestController *)self reservationSuccessViewController];
  [v10 setReservationDelegate:self];

  v11 = [(RestaurantReservationRequestController *)self flowViewController];
  v12 = [v11 headerView];
  [v12 setDismissButtonType:0];

  v13 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [v13 setCurrentView:7];

  v14 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [v14 setCurrentState:1];

  v15 = [(RestaurantReservationRequestController *)self flowViewController];
  v16 = [(RestaurantReservationRequestController *)self reservationSuccessViewController];
  [v15 pushViewController:v16];

  [(RestaurantReservationRequestController *)self configureHeaderForBranding:1];
}

- (void)pushReservationRefinementController
{
  v3 = [(RestaurantReservationRequestController *)self reservationRequester];
  v4 = [v3 reservationDefaultsResponse];
  v5 = [v4 minimumPartySize];
  if (v5)
  {
    v6 = [(RestaurantReservationRequestController *)self reservationRequester];
    v7 = [v6 reservationDefaultsResponse];
    v8 = [v7 minimumPartySize];
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = 1;
  }

  v10 = [(RestaurantReservationRequestController *)self reservationRequester];
  v11 = [v10 reservationDefaultsResponse];
  v12 = [v11 maximumPartySize];
  if (v12)
  {
    v13 = [(RestaurantReservationRequestController *)self reservationRequester];
    v14 = [v13 reservationDefaultsResponse];
    v15 = [v14 maximumPartySize];
    v16 = [v15 unsignedIntegerValue];
  }

  else
  {
    v16 = 6;
  }

  v17 = [ReservationRequestRefinementViewController alloc];
  v18 = [(RestaurantReservationRequestController *)self defaultDate];
  v19 = [(RestaurantReservationRequestController *)self defaultPartySize];
  v20 = [(RestaurantReservationRequestController *)self analyticsCaptor];
  v21 = [(RestaurantReservationRequestController *)self mapItem];
  v22 = [v21 timeZone];
  v23 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  v24 = [(ReservationRequestRefinementViewController *)v17 initWithDate:v18 partySize:v19 minimumPartySize:v9 maximumPartySize:v16 analyticsCaptor:v20 timeZone:v22 analyticsBookingSession:v23];
  [(RestaurantReservationRequestController *)self setReservationRequestRefinementViewController:v24];

  v25 = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  [v25 setRefinementDelegate:self];

  v26 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [v26 setCurrentView:3];

  v28 = [(RestaurantReservationRequestController *)self flowViewController];
  v27 = [(RestaurantReservationRequestController *)self reservationRequestRefinementViewController];
  [v28 pushViewController:v27];
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
  v2 = [(RestaurantReservationRequestController *)self reservationRequester];
  v3 = [v2 extension];
  v4 = [v3 _iconWithFormat:1];

  return v4;
}

- (id)appName
{
  v2 = [(RestaurantReservationRequestController *)self reservationRequester];
  v3 = [v2 extension];
  v4 = [v3 displayName];

  return v4;
}

- (INRestaurantReservationUserBooking)activeReservation
{
  v3 = [(RestaurantReservationRequestController *)self reservationRequester];
  v4 = [v3 bookReservationResponse];

  v5 = [(RestaurantReservationRequestController *)self reservationRequester];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 bookReservationResponse];
    v8 = [v7 userBooking];
  }

  else
  {
    v9 = [v5 userCurrentBookingResponse];
    v10 = [v9 userCurrentBookings];
    v11 = [v10 firstObject];

    if ([v11 _maps_shouldBeDisplayed])
    {
      v6 = v11;
      v8 = v6;
    }

    else
    {
      v8 = 0;
      v6 = v11;
    }
  }

  return v8;
}

- (unint64_t)defaultPartySize
{
  v3 = [(RestaurantReservationRequestController *)self reservationRequester];
  v4 = [v3 availableBookingsRequest];
  if (v4)
  {
    v5 = v4;
    v6 = [(RestaurantReservationRequestController *)self reservationRequester];
    v7 = [v6 availableBookingsRequest];
    v8 = [v7 partySize];

    if (v8)
    {
      v9 = [(RestaurantReservationRequestController *)self reservationRequester];
      v10 = [v9 availableBookingsRequest];
      v11 = [v10 partySize];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = [(RestaurantReservationRequestController *)self reservationRequester];
  if (([v9 reservationDefaultsRequestPending] & 1) == 0)
  {
    v10 = [(RestaurantReservationRequestController *)self reservationRequester];
    v13 = [v10 reservationDefaultsResponse];
    if (!v13)
    {
      v12 = 2;
      goto LABEL_11;
    }

    v14 = v13;
    v15 = [(RestaurantReservationRequestController *)self reservationRequester];
    v16 = [v15 reservationDefaultsResponse];
    v17 = [v16 defaultPartySize];

    if (!v17)
    {
      return 2;
    }

    v9 = [(RestaurantReservationRequestController *)self reservationRequester];
    v10 = [v9 reservationDefaultsResponse];
    v11 = [v10 defaultPartySize];
LABEL_10:
    v12 = v11;
LABEL_11:

    goto LABEL_12;
  }

  v12 = 2;
LABEL_12:

  return v12;
}

- (id)defaultDate
{
  v3 = [(RestaurantReservationRequestController *)self reservationRequester];
  v4 = [v3 availableBookingsRequest];
  v5 = [(RestaurantReservationRequestController *)self mapItem];
  v6 = [v5 timeZone];
  v7 = [v4 _maps_preferredBookingDateWithTimeZone:v6];

  if (v7)
  {
    v8 = v7;
    goto LABEL_9;
  }

  v9 = [(RestaurantReservationRequestController *)self reservationRequester];
  if ([v9 reservationDefaultsRequestPending])
  {

LABEL_7:
    v12 = +[NSCalendar currentCalendar];
    v15 = +[NSDate date];
    v13 = [v12 components:124 fromDate:v15];

    [v13 setHour:{objc_msgSend(v13, "hour") + 1}];
    [v13 setMinute:0];
    v14 = [v12 dateFromComponents:v13];
    goto LABEL_8;
  }

  v10 = [(RestaurantReservationRequestController *)self reservationRequester];
  v11 = [v10 reservationDefaultsResponse];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [(RestaurantReservationRequestController *)self reservationRequester];
  v13 = [v12 reservationDefaultsResponse];
  v14 = [v13 defaultBookingDate];
LABEL_8:
  v8 = v14;

LABEL_9:

  return v8;
}

- (void)pushRestaurantReservationController
{
  [(RestaurantReservationRequestController *)self setupAnalyticsBookingSession];
  v3 = [(RestaurantReservationRequestController *)self reservationTableViewController];

  if (!v3)
  {
    v4 = [RestaurantReservationTableViewController alloc];
    v5 = [(RestaurantReservationRequestController *)self analyticsCaptor];
    v6 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
    v7 = [(RestaurantReservationTableViewController *)v4 initWithAnalyticsCaptor:v5 analyticsBookingSession:v6];
    [(RestaurantReservationRequestController *)self setReservationTableViewController:v7];
  }

  [(RestaurantReservationRequestController *)self updateReservationTableViewController];
  [(RestaurantReservationRequestController *)self configureHeaderForBranding:1];
  v8 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [v8 setCurrentView:5];

  v10 = [(RestaurantReservationRequestController *)self flowViewController];
  v9 = [(RestaurantReservationRequestController *)self reservationTableViewController];
  [v10 pushViewController:v9];
}

- (id)setupAnalyticsBookedSession
{
  v3 = [(RestaurantReservationRequestController *)self reservationRequester];
  v4 = [v3 mapItem];
  v5 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [v4 _muid], 1);

  v6 = [(RestaurantReservationRequestController *)self reservationRequester];
  v7 = [v6 extension];
  v8 = [v7 identifier];
  [v5 setAppID:v8];

  v9 = [(RestaurantReservationRequestController *)self reservationRequester];
  v10 = [v9 mapItem];
  [v5 setMuid:{objc_msgSend(v10, "_muid")}];

  v11 = [(RestaurantReservationRequestController *)self reservationRequester];
  v12 = [v11 extension];
  [v5 setHasAppsInstalled:v12 != 0];

  v13 = [(RestaurantReservationRequestController *)self reservationRequester];
  v14 = [v13 extension];
  [v5 setHasAppsEnabled:{objc_msgSend(v14, "isEnabled")}];

  return v5;
}

- (void)setupAnalyticsBookingSession
{
  v2 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [v2 setCurrentState:2];
}

- (void)willResignCurrent:(BOOL)a3
{
  v4 = [(RestaurantReservationRequestController *)self analyticsBookingSession];
  [v4 endSession];

  v6 = [(RestaurantReservationRequestController *)self mapItem];
  v5 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [v6 _muid], 0);
  [v5 endSession];
}

- (void)present
{
  v3 = [(RestaurantReservationRequestController *)self activeReservation];

  if (v3)
  {
    v4 = [(RestaurantReservationRequestController *)self reservationRequester];
    v5 = [v4 mapItem];
    v6 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [v5 _muid], 1);
    [v6 setViewedDetailsFromPlacecard:1];

    [(RestaurantReservationRequestController *)self pushSuccessScreen];
  }

  else
  {
    [(RestaurantReservationRequestController *)self kickoffRequests];

    [(RestaurantReservationRequestController *)self pushRestaurantReservationController];
  }
}

- (RestaurantReservationRequestController)initWithFlowController:(id)a3 reservationRequester:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = RestaurantReservationRequestController;
  v8 = [(RestaurantReservationRequestController *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(RestaurantReservationRequestController *)v8 setFlowViewController:v6];
    [(RestaurantReservationRequestController *)v9 setReservationRequester:v7];
    [v7 setDelegate:v9];
    v10 = [v7 mapItem];
    [(RestaurantReservationRequestController *)v9 setMapItem:v10];

    [(RestaurantReservationRequestController *)v9 configureHeaderForBranding:0];
    v11 = [(RestaurantReservationRequestController *)v9 flowViewController];
    v12 = [v11 headerView];
    [v12 setDelegate:v9];

    v13 = objc_opt_new();
    [(RestaurantReservationRequestController *)v9 setAnalyticsCaptor:v13];

    v14 = [(RestaurantReservationRequestController *)v9 mapItem];
    v15 = [(RestaurantReservationRequestController *)v9 analyticsCaptor];
    [v15 setMapItem:v14];

    v16 = MapsSuggestionsResourceDepotForMapsProcess();
    v17 = [v16 oneAppGuardian];
    appGuardian = v9->_appGuardian;
    v9->_appGuardian = v17;

    [(MapsSuggestionsAppGuardian *)v9->_appGuardian registerAppTracker:v9];
  }

  return v9;
}

@end