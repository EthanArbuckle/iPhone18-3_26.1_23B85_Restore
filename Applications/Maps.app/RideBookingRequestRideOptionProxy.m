@interface RideBookingRequestRideOptionProxy
- (RideBookingRequestRideOptionProxy)initWithDelegate:(id)a3;
- (RideBookingRequestRideOptionProxyDelegate)delegate;
- (void)_updateAnalyticsWithRequestRideStatus:(id)a3;
- (void)_updateAnalyticsWithRideStatus:(id)a3;
- (void)requestRideStatusDidChange:(id)a3;
- (void)requestRideWithCompletion:(id)a3;
- (void)updateRequestRidePassengers:(id)a3;
- (void)updateRequestRidePaymentMethod:(id)a3;
- (void)updateStartingWaypointCoordinate:(CLLocationCoordinate2D)a3;
@end

@implementation RideBookingRequestRideOptionProxy

- (RideBookingRequestRideOptionProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAnalyticsWithRideStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 application];
  v6 = [v5 identifier];
  v7 = [v4 identifier];
  v8 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:v6 rideIdentifier:v7];

  v9 = [v4 application];
  v10 = [v9 version];
  [v8 setAppVersion:v10];

  [v8 setNumberOfEnabledExtensions:{-[RidesharingAnalyticsBookingSession numberOfEnabledExtensions](self->_analyticsBookingSession, "numberOfEnabledExtensions")}];
  [v8 setNumberOfInstalledExtensions:{-[RidesharingAnalyticsBookingSession numberOfInstalledExtensions](self->_analyticsBookingSession, "numberOfInstalledExtensions")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v4 intentResponseFailures];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v11);
        }

        [v8 captureIntent:3 withFailure:{objc_msgSend(*(*(&v20 + 1) + 8 * v15), "failure")}];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if ([v4 isValidRide])
  {
    [v8 setBookedUsingMaps:1];
    v16 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
    v17 = v16;
    v18 = 4;
    v19 = 1;
  }

  else
  {
    [v8 endSession];
    v16 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
    v17 = v16;
    v18 = 3;
    v19 = 5;
  }

  [v16 endSessionOnView:v18 state:v19];
}

- (void)_updateAnalyticsWithRequestRideStatus:(id)a3
{
  v14 = a3;
  v4 = [v14 origin];
  v5 = [v4 location];
  v6 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
  [v6 setOrigin:v5];

  v7 = [v14 destination];
  v8 = [v7 location];
  v9 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
  [v9 setDestination:v8];

  v10 = objc_opt_new();
  [v10 setIntent:2];
  [v10 setFailure:0];
  v11 = [v14 requestRideStatusError] - 1;
  if (v11 <= 7)
  {
    [v10 setFailure:dword_101215444[v11]];
  }

  if ([v10 failure])
  {
    v12 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
    [v12 captureIntent:objc_msgSend(v10 withFailure:{"intent"), objc_msgSend(v10, "failure")}];
  }

  if ([v14 requestRideStatusError])
  {
    v13 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
    [v13 endSessionOnView:2 state:5];
  }
}

- (void)requestRideStatusDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B2242C;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)requestRideWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(location, self);
    v5 = +[RideBookingAccessProxy coordinator];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100B22738;
    v7[3] = &unk_101638528;
    objc_copyWeak(&v9, location);
    v8 = v4;
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

- (void)updateRequestRidePassengers:(id)a3
{
  v3 = a3;
  v4 = +[RideBookingAccessProxy coordinator];
  [v4 updateRequestRidePassengers:v3];
}

- (void)updateRequestRidePaymentMethod:(id)a3
{
  v4 = a3;
  v5 = [v4 intentsPaymentMethod];
  v6 = [v5 type] == 8;

  v7 = [(RideBookingRequestRideOptionProxy *)self analyticsBookingSession];
  [v7 setPaymentIsApplePay:v6];

  v8 = +[RideBookingAccessProxy coordinator];
  [v8 updateRequestRidePaymentMethod:v4];
}

- (void)updateStartingWaypointCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = +[RideBookingAccessProxy coordinator];
  [v5 updateRequestRideStartingWaypointCoordinate:{latitude, longitude}];
}

- (RideBookingRequestRideOptionProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RideBookingRequestRideOptionProxy;
  v5 = [(RideBookingRequestRideOptionProxy *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [RideBookingAccessProxy rideBookingCurrentRideBookingSessionCreateIfNecessary:0];
    analyticsBookingSession = v6->_analyticsBookingSession;
    v6->_analyticsBookingSession = v7;

    v9 = +[RideBookingAccessProxy coordinator];
    [v9 addRideBookingDataCoordinatorRequestRideObserver:v6];
  }

  return v6;
}

@end