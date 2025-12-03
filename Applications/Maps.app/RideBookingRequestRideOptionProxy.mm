@interface RideBookingRequestRideOptionProxy
- (RideBookingRequestRideOptionProxy)initWithDelegate:(id)delegate;
- (RideBookingRequestRideOptionProxyDelegate)delegate;
- (void)_updateAnalyticsWithRequestRideStatus:(id)status;
- (void)_updateAnalyticsWithRideStatus:(id)status;
- (void)requestRideStatusDidChange:(id)change;
- (void)requestRideWithCompletion:(id)completion;
- (void)updateRequestRidePassengers:(id)passengers;
- (void)updateRequestRidePaymentMethod:(id)method;
- (void)updateStartingWaypointCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation RideBookingRequestRideOptionProxy

- (RideBookingRequestRideOptionProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAnalyticsWithRideStatus:(id)status
{
  statusCopy = status;
  application = [statusCopy application];
  identifier = [application identifier];
  identifier2 = [statusCopy identifier];
  v8 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:identifier rideIdentifier:identifier2];

  application2 = [statusCopy application];
  version = [application2 version];
  [v8 setAppVersion:version];

  [v8 setNumberOfEnabledExtensions:{-[RidesharingAnalyticsBookingSession numberOfEnabledExtensions](self->_analyticsBookingSession, "numberOfEnabledExtensions")}];
  [v8 setNumberOfInstalledExtensions:{-[RidesharingAnalyticsBookingSession numberOfInstalledExtensions](self->_analyticsBookingSession, "numberOfInstalledExtensions")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  intentResponseFailures = [statusCopy intentResponseFailures];
  v12 = [intentResponseFailures countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(intentResponseFailures);
        }

        [v8 captureIntent:3 withFailure:{objc_msgSend(*(*(&v20 + 1) + 8 * v15), "failure")}];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [intentResponseFailures countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if ([statusCopy isValidRide])
  {
    [v8 setBookedUsingMaps:1];
    analyticsBookingSession = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
    v17 = analyticsBookingSession;
    v18 = 4;
    v19 = 1;
  }

  else
  {
    [v8 endSession];
    analyticsBookingSession = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
    v17 = analyticsBookingSession;
    v18 = 3;
    v19 = 5;
  }

  [analyticsBookingSession endSessionOnView:v18 state:v19];
}

- (void)_updateAnalyticsWithRequestRideStatus:(id)status
{
  statusCopy = status;
  origin = [statusCopy origin];
  location = [origin location];
  analyticsBookingSession = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
  [analyticsBookingSession setOrigin:location];

  destination = [statusCopy destination];
  location2 = [destination location];
  analyticsBookingSession2 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
  [analyticsBookingSession2 setDestination:location2];

  v10 = objc_opt_new();
  [v10 setIntent:2];
  [v10 setFailure:0];
  v11 = [statusCopy requestRideStatusError] - 1;
  if (v11 <= 7)
  {
    [v10 setFailure:dword_101215444[v11]];
  }

  if ([v10 failure])
  {
    analyticsBookingSession3 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
    [analyticsBookingSession3 captureIntent:objc_msgSend(v10 withFailure:{"intent"), objc_msgSend(v10, "failure")}];
  }

  if ([statusCopy requestRideStatusError])
  {
    analyticsBookingSession4 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
    [analyticsBookingSession4 endSessionOnView:2 state:5];
  }
}

- (void)requestRideStatusDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B2242C;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)requestRideWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(location, self);
    v5 = +[RideBookingAccessProxy coordinator];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100B22738;
    v7[3] = &unk_101638528;
    objc_copyWeak(&v9, location);
    v8 = completionCopy;
    [v5 requestRideWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingRequestRideOptionProxy.m";
      v11 = 1024;
      v12 = 66;
      v13 = 2082;
      v14 = "[RideBookingRequestRideOptionProxy requestRideWithCompletion:]";
      v15 = 2082;
      v16 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", location, 0x26u);
    }
  }
}

- (void)updateRequestRidePassengers:(id)passengers
{
  passengersCopy = passengers;
  v4 = +[RideBookingAccessProxy coordinator];
  [v4 updateRequestRidePassengers:passengersCopy];
}

- (void)updateRequestRidePaymentMethod:(id)method
{
  methodCopy = method;
  intentsPaymentMethod = [methodCopy intentsPaymentMethod];
  v6 = [intentsPaymentMethod type] == 8;

  analyticsBookingSession = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
  [analyticsBookingSession setPaymentIsApplePay:v6];

  v8 = +[RideBookingAccessProxy coordinator];
  [v8 updateRequestRidePaymentMethod:methodCopy];
}

- (void)updateStartingWaypointCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v5 = +[RideBookingAccessProxy coordinator];
  [v5 updateRequestRideStartingWaypointCoordinate:{latitude, longitude}];
}

- (RideBookingRequestRideOptionProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = RideBookingRequestRideOptionProxy;
  v5 = [(RideBookingRequestRideOptionProxy *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [RideBookingAccessProxy rideBookingCurrentRideBookingSessionCreateIfNecessary:0];
    analyticsBookingSession = v6->_analyticsBookingSession;
    v6->_analyticsBookingSession = v7;

    v9 = +[RideBookingAccessProxy coordinator];
    [v9 addRideBookingDataCoordinatorRequestRideObserver:v6];
  }

  return v6;
}

@end