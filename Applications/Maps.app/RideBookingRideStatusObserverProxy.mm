@interface RideBookingRideStatusObserverProxy
- (RideBookingRideStatusObserverProxy)initWithDelegate:(id)a3;
- (RideBookingRideStatusObserverProxyDelegate)delegate;
- (void)_updateAnalyticsWithRideStatus:(id)a3;
- (void)_updateAnalyticsWithRideStatus:(id)a3 cancelError:(id)a4 handling:(BOOL)a5;
- (void)_updateAnalyticsWithRideStatus:(id)a3 feedbackError:(id)a4;
- (void)cancelRideWithRideStatus:(id)a3 completion:(id)a4;
- (void)checkIfCanCancelRideWithRideStatus:(id)a3 completion:(id)a4;
- (void)rideStatusMapDidChange:(id)a3;
- (void)sendFeedbackForRideStatus:(id)a3 feedbackRating:(id)a4 feedbackTip:(id)a5 completion:(id)a6;
@end

@implementation RideBookingRideStatusObserverProxy

- (RideBookingRideStatusObserverProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAnalyticsWithRideStatus:(id)a3 feedbackError:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = [v6 application];
    v8 = [v7 identifier];
    v9 = [v6 identifier];

    v12 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:v8 rideIdentifier:v9];

    v10 = objc_opt_new();
    [v10 setIntent:7];
    [v10 setFailure:1];
    v11 = [v5 code];

    if (v11 == -11)
    {
      [v10 setFailure:4];
    }

    [v12 captureIntent:objc_msgSend(v10 withFailure:{"intent"), objc_msgSend(v10, "failure")}];
    [v12 endSession];
  }
}

- (void)_updateAnalyticsWithRideStatus:(id)a3 cancelError:(id)a4 handling:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  if (v7)
  {
    v16 = v7;
    v8 = a3;
    v9 = [v8 application];
    v10 = [v9 identifier];
    v11 = [v8 identifier];

    v12 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:v10 rideIdentifier:v11];

    v13 = objc_opt_new();
    v14 = v13;
    if (v5)
    {
      v15 = 6;
    }

    else
    {
      v15 = 5;
    }

    [v13 setIntent:v15];
    [v14 setFailure:1];
    if ([v16 code] == -11)
    {
      [v14 setFailure:4];
    }

    if ([v16 code] == -13)
    {
      [v14 setFailure:3];
    }

    [v12 captureIntent:objc_msgSend(v14 withFailure:{"intent"), objc_msgSend(v14, "failure")}];
    [v12 endSession];

    v7 = v16;
  }
}

- (void)_updateAnalyticsWithRideStatus:(id)a3
{
  v3 = a3;
  v4 = [v3 application];
  v5 = [v4 identifier];
  v6 = [v3 identifier];
  v7 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:v5 rideIdentifier:v6];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v3 intentResponseFailures];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 captureIntent:objc_msgSend(*(*(&v13 + 1) + 8 * v12) withFailure:{"intent"), objc_msgSend(*(*(&v13 + 1) + 8 * v12), "failure")}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  if (([v3 isValidRide] & 1) == 0)
  {
    [v7 endSession];
  }
}

- (void)rideStatusMapDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008B6580;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)cancelRideWithRideStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(location, self);
    v8 = +[RideBookingAccessProxy coordinator];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1008B6954;
    v10[3] = &unk_101660FD8;
    objc_copyWeak(&v13, location);
    v11 = v6;
    v12 = v7;
    [v8 cancelRideWithRideStatus:v11 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingRideStatusObserverProxy.m";
      v15 = 1024;
      v16 = 77;
      v17 = 2082;
      v18 = "[RideBookingRideStatusObserverProxy cancelRideWithRideStatus:completion:]";
      v19 = 2082;
      v20 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", location, 0x26u);
    }
  }
}

- (void)checkIfCanCancelRideWithRideStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(location, self);
    v8 = +[RideBookingAccessProxy coordinator];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1008B6D60;
    v10[3] = &unk_10162D318;
    objc_copyWeak(&v13, location);
    v11 = v6;
    v12 = v7;
    [v8 checkIfCanCancelRideWithRideStatus:v11 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingRideStatusObserverProxy.m";
      v15 = 1024;
      v16 = 63;
      v17 = 2082;
      v18 = "[RideBookingRideStatusObserverProxy checkIfCanCancelRideWithRideStatus:completion:]";
      v19 = 2082;
      v20 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", location, 0x26u);
    }
  }
}

- (void)sendFeedbackForRideStatus:(id)a3 feedbackRating:(id)a4 feedbackTip:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    objc_initWeak(location, self);
    v14 = +[RideBookingAccessProxy coordinator];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1008B71EC;
    v16[3] = &unk_101660FD8;
    objc_copyWeak(&v19, location);
    v17 = v10;
    v18 = v13;
    [v14 sendFeedbackForRideStatus:v17 feedbackRating:v11 feedbackTip:v12 completion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingRideStatusObserverProxy.m";
      v21 = 1024;
      v22 = 49;
      v23 = 2082;
      v24 = "[RideBookingRideStatusObserverProxy sendFeedbackForRideStatus:feedbackRating:feedbackTip:completion:]";
      v25 = 2082;
      v26 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", location, 0x26u);
    }
  }
}

- (RideBookingRideStatusObserverProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RideBookingRideStatusObserverProxy;
  v5 = [(RideBookingRideStatusObserverProxy *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[RideBookingAccessProxy coordinator];
    [v7 addRideBookingDataCoordinatorRideStatusObserver:v6];
  }

  return v6;
}

@end