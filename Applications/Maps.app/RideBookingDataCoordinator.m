@interface RideBookingDataCoordinator
+ (void)openRideBookingApplication:(id)a3 withUserActivity:(id)a4;
- (RideBookingDataCoordinator)init;
- (RideBookingDataCoordinator)initWithRideBookingApplicationFinder:(id)a3;
- (void)_broadcastRequestRideStatusDidChange;
- (void)_broadcastRideOptionStateDidChange;
- (void)_broadcastRideStatusDidChange;
- (void)_cleanRequestLocationNames;
- (void)_expireRequestRideStatus;
- (void)_flushCompletedRideIdentifiersAndDatesMap;
- (void)_refreshRideOptions;
- (void)_resetRequestRide;
- (void)_startRefreshRideOptionsTimer;
- (void)_startRequestRideExpireTimerWithExpirationDate:(id)a3;
- (void)_startTimer:(id *)a3 withInterval:(double)a4 repeats:(BOOL)a5 block:(id)a6;
- (void)_stopRefreshRideOptionsTimer;
- (void)_stopRequestRideExpireTimer;
- (void)_stopTimer:(id *)a3;
- (void)_updateRequestRidePickupAndDropoffLocations;
- (void)_updateRequestRideStatus:(id)a3;
- (void)_updateRideOptionStatusMapForOrigin:(id)a3 destination:(id)a4 application:(id)a5;
- (void)_updateRideOptionStatusMapWithApplication:(id)a3 status:(id)a4;
- (void)_updateRideStatusMapForApplication:(id)a3;
- (void)_updateRideStatusMapWithApplication:(id)a3 status:(id)a4;
- (void)addRideBookingDataCoordinatorRequestRideObserver:(id)a3;
- (void)addRideBookingDataCoordinatorRideOptionStateObserver:(id)a3;
- (void)addRideBookingDataCoordinatorRideStatusObserver:(id)a3;
- (void)cancelRideWithRideStatus:(id)a3 completion:(id)a4;
- (void)checkIfCanCancelRideWithRideStatus:(id)a3 completion:(id)a4;
- (void)cleanMapItemName:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)enableRideBookingApplications:(id)a3;
- (void)removeRideBookingDataCoordinatorRequestRideObserver:(id)a3;
- (void)removeRideBookingDataCoordinatorRideOptionStateObserver:(id)a3;
- (void)removeRideBookingDataCoordinatorRideStatusObserver:(id)a3;
- (void)requestRideWithCompletion:(id)a3;
- (void)rideBookingApplicationsDidChange:(id)a3;
- (void)rideStatusDidChange:(id)a3;
- (void)sendFeedbackForRideStatus:(id)a3 feedbackRating:(id)a4 feedbackTip:(id)a5 completion:(id)a6;
- (void)startRequestRideForRideOption:(id)a3;
- (void)updateRequestRidePassengers:(id)a3;
- (void)updateRequestRidePaymentMethod:(id)a3;
- (void)updateRequestRideStartingWaypointCoordinate:(CLLocationCoordinate2D)a3;
- (void)updateRideOptionStateForOrigin:(id)a3 destination:(id)a4;
- (void)updateRideStatusMap;
@end

@implementation RideBookingDataCoordinator

- (RideBookingDataCoordinator)init
{
  v3 = [[RideBookingDataCoordinator alloc] initWithRideBookingApplicationFinder:0];

  return v3;
}

- (void)_flushCompletedRideIdentifiersAndDatesMap
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027024;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(processQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)dealloc
{
  [(RideBookingDataCoordinator *)self _stopTimer:&self->_refreshRideOptionsTimer];
  [(RideBookingDataCoordinator *)self _stopTimer:&self->_requestRideExpireTimer];
  v3.receiver = self;
  v3.super_class = RideBookingDataCoordinator;
  [(RideBookingDataCoordinator *)&v3 dealloc];
}

- (void)_broadcastRideStatusDidChange
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v30 = v5;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  v9 = [(RideBookingDataCoordinator *)self rideStatusMap];
  v10 = [v9 copy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [(RideBookingDataCoordinator *)self rideStatusObservers];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 rideStatusMapDidChange:v10];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v17 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v19 = [NSString alloc];
    v20 = [(RideBookingDataCoordinator *)self rideStatusObservers];
    v21 = [v20 count];
    v22 = [(RideBookingDataCoordinator *)self rideStatusObservers];
    v23 = [v19 initWithFormat:@"Broadcasted to %lu RideBookingDataCoordinatorRideStatusObservers: %@", v21, v22];
    *buf = 136315394;
    v30 = v18;
    v31 = 2112;
    v32 = v23;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }
}

- (void)_broadcastRideOptionStateDidChange
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v43 = v5;
    v44 = 2112;
    v45 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [(RideBookingDataCoordinator *)self rideOptionStateObservers];
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    v34 = *v38;
    do
    {
      v13 = 0;
      v35 = v11;
      do
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [(RideBookingDataCoordinator *)self rideOptionStatusMap];
          v16 = [v15 copy];

          if ([(RideBookingDataCoordinator *)self waitingAppSuggestionsToLoad])
          {
            v17 = 0;
          }

          else
          {
            v18 = [(RideBookingDataCoordinator *)self appStoreSuggestions];
            v17 = [v18 copy];
          }

          if ([(RideBookingDataCoordinator *)self waitingAppSuggestionsToLoad])
          {
            v19 = 0;
          }

          else
          {
            v20 = [(RideBookingDataCoordinator *)self installedSuggestions];
            v19 = [v20 copy];
          }

          v36 = v16;
          v21 = [RideBookingRideOptionState stateWithRideOptionStatusMap:v16 appStoreSuggestions:v17 installedSuggestions:v19];
          v22 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = self;
            v24 = v9;
            v25 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
            v26 = [[NSString alloc] initWithFormat:@"rideOptionState: %@, appStoreSuggestions:%@ installedSuggestions:%@", v21, v17, v19];
            *buf = 136315394;
            v43 = v25;
            v9 = v24;
            self = v23;
            v12 = v34;
            v44 = 2112;
            v45 = v26;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
          }

          [v14 rideOptionStateDidChange:v21];
          v11 = v35;
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v11);
  }

  v27 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v29 = [NSString alloc];
    v30 = [(RideBookingDataCoordinator *)self rideOptionStateObservers];
    v31 = [v30 count];
    v32 = [(RideBookingDataCoordinator *)self rideOptionStateObservers];
    v33 = [v29 initWithFormat:@"Broadcasted to %lu RideBookingDataCoordinatorRideOptionStateObservers: %@", v31, v32];
    *buf = 136315394;
    v43 = v28;
    v44 = 2112;
    v45 = v33;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }
}

- (void)updateRideStatusMap
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038B34;
  block[3] = &unk_10165FBC0;
  objc_copyWeak(v11, buf);
  v11[1] = a2;
  dispatch_async(processQueue, block);
  objc_destroyWeak(v11);
  objc_destroyWeak(buf);
}

- (void)_stopTimer:(id *)a3
{
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v7 = [NSString alloc];
    v8 = NSStringFromSelector(a2);
    v9 = [v7 initWithFormat:@"%@", v8];
    *buf = 136315394;
    v15 = v6;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (!a3)
  {
    v10 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v11 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v12 = [[NSString alloc] initWithFormat:@"Returning because timer==nil"];
    *buf = 136315394;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);

    goto LABEL_11;
  }

  if (!*a3)
  {
    v10 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v13 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v12 = [[NSString alloc] initWithFormat:@"Returning because *timer==nil (pointer)"];
    *buf = 136315394;
    v15 = v13;
    v16 = 2112;
    v17 = v12;
    goto LABEL_10;
  }

  dispatch_source_set_timer(*a3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_cancel(*a3);
  v10 = *a3;
  *a3 = 0;
LABEL_11:
}

- (void)_startTimer:(id *)a3 withInterval:(double)a4 repeats:(BOOL)a5 block:(id)a6
{
  v6 = a5;
  v11 = a6;
  if (!v11)
  {
    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v30 = 1024;
      *v31 = 1111;
      *&v31[4] = 2082;
      *&v31[6] = "[RideBookingDataCoordinator _startTimer:withInterval:repeats:block:]";
      v32 = 2082;
      v33 = "nil == (block)";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }

    goto LABEL_17;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v14 = [NSString alloc];
    v15 = NSStringFromSelector(a2);
    v16 = [v14 initWithFormat:@"%@", v15];
    *buf = 136315394;
    v29 = v13;
    v30 = 2112;
    *v31 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (!a3)
  {
    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v27 = [[NSString alloc] initWithFormat:@"Returning because timer==nil"];
      *buf = 136315394;
      v29 = v26;
      v30 = 2112;
      *v31 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

LABEL_17:

    goto LABEL_18;
  }

  v17 = *a3;
  if (!*a3)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v20 = [[NSString alloc] initWithFormat:@"Instantiating a new timer"];
      *buf = 136315394;
      v29 = v19;
      v30 = 2112;
      *v31 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_processQueue);
    v22 = *a3;
    *a3 = v21;

    dispatch_source_set_timer(*a3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(*a3, v11);
    dispatch_resume(*a3);
    v17 = *a3;
  }

  if (v6)
  {
    v23 = (a4 * 1000000000.0);
  }

  else
  {
    v23 = -1;
  }

  v24 = dispatch_time(0, (a4 * 1000000000.0));
  dispatch_source_set_timer(v17, v24, v23, 0x3B9ACA00uLL);
LABEL_18:
}

- (void)cleanMapItemName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v10 = [NSString alloc];
      v11 = NSStringFromSelector(a2);
      v12 = [v10 initWithFormat:@"%@", v11];
      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v13 = [v6 addressObject];
    v14 = [v13 fullAddressWithMultiline:0];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_10084D604;
    *&buf[32] = sub_10084D614;
    v15 = v6;
    v38 = v15;
    v16 = [v15 place];
    [v16 setName:v14];

    v17 = objc_opt_new();
    [v17 setName:v14];
    [*(*&buf[8] + 40) setUserValues:v17];
    if ([v15 _hasMUID])
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v20 = [[NSString alloc] initWithFormat:@"Have a MUID, so looking up the name by issuing a Ticket"];
        *v33 = 136315394;
        v34 = v19;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", v33, 0x16u);
      }

      v21 = +[GEOMapService sharedService];
      v22 = [v21 defaultTraits];

      v23 = +[GEOMapService sharedService];
      v24 = [v15 _identifier];
      v32 = v24;
      v25 = [NSArray arrayWithObjects:&v32 count:1];
      v26 = [v23 ticketForIdentifiers:v25 traits:v22];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10084D61C;
      v29[3] = &unk_101638908;
      v31 = buf;
      v30 = v7;
      [v26 submitWithHandler:v29 networkActivity:0];
    }

    else
    {
      (*(v7 + 2))(v7, *(*&buf[8] + 40));
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v28 = [[NSString alloc] initWithFormat:@"Returning because originalMapItem.hasMUID==NO"];
        *v33 = 136315394;
        v34 = v27;
        v35 = 2112;
        v36 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", v33, 0x16u);
      }

      v22 = v26;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      *&buf[12] = 1024;
      *&buf[14] = 1070;
      *&buf[18] = 2082;
      *&buf[20] = "[RideBookingDataCoordinator cleanMapItemName:completion:]";
      *&buf[28] = 2082;
      *&buf[30] = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)enableRideBookingApplications:(id)a3
{
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v8 = [NSString alloc];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@", v9];
    *buf = 136315394;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10084D978;
  block[3] = &unk_101661340;
  v14 = v5;
  v12 = v5;
  objc_copyWeak(&v15, buf);
  dispatch_async(processQueue, block);
  objc_destroyWeak(&v15);

  objc_destroyWeak(buf);
}

- (void)cancelRideWithRideStatus:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v11 = [NSString alloc];
      v12 = NSStringFromSelector(a2);
      v13 = [v11 initWithFormat:@"%@", v12];
      *buf = 136315394;
      v23 = v10;
      v24 = 2112;
      *v25 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10084DE70;
    block[3] = &unk_10162BE08;
    objc_copyWeak(v21, buf);
    v18 = v7;
    v15 = v8;
    v21[1] = a2;
    v19 = self;
    v20 = v15;
    dispatch_async(processQueue, block);

    objc_destroyWeak(v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v24 = 1024;
      *v25 = 1021;
      *&v25[4] = 2082;
      *&v25[6] = "[RideBookingDataCoordinator cancelRideWithRideStatus:completion:]";
      v26 = 2082;
      v27 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)checkIfCanCancelRideWithRideStatus:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v11 = [NSString alloc];
      v12 = NSStringFromSelector(a2);
      v13 = [v11 initWithFormat:@"%@", v12];
      *buf = 136315394;
      v21 = v10;
      v22 = 2112;
      *v23 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10084E610;
    block[3] = &unk_10162C510;
    objc_copyWeak(v19, buf);
    v17 = v7;
    v19[1] = a2;
    v18 = v8;
    dispatch_async(processQueue, block);

    objc_destroyWeak(v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v22 = 1024;
      *v23 = 999;
      *&v23[4] = 2082;
      *&v23[6] = "[RideBookingDataCoordinator checkIfCanCancelRideWithRideStatus:completion:]";
      v24 = 2082;
      v25 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)sendFeedbackForRideStatus:(id)a3 feedbackRating:(id)a4 feedbackTip:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v17 = [NSString alloc];
      v18 = NSStringFromSelector(a2);
      v19 = [v17 initWithFormat:@"%@", v18];
      *buf = 136315394;
      v29 = v16;
      v30 = 2112;
      *v31 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10084ECE8;
    block[3] = &unk_10162BD70;
    objc_copyWeak(v27, buf);
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v27[1] = a2;
    v26 = v14;
    dispatch_async(processQueue, block);

    objc_destroyWeak(v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v30 = 1024;
      *v31 = 974;
      *&v31[4] = 2082;
      *&v31[6] = "[RideBookingDataCoordinator sendFeedbackForRideStatus:feedbackRating:feedbackTip:completion:]";
      v32 = 2082;
      v33 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)rideStatusDidChange:(id)a3
{
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v8 = [NSString alloc];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@", v9];
    *buf = 136315394;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10084F290;
  block[3] = &unk_101651D38;
  objc_copyWeak(v15, buf);
  v15[1] = a2;
  v14 = v5;
  v12 = v5;
  dispatch_async(processQueue, block);

  objc_destroyWeak(v15);
  objc_destroyWeak(buf);
}

- (void)_updateRideStatusMapWithApplication:(id)a3 status:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v11 = [NSString alloc];
    v12 = NSStringFromSelector(a2);
    v13 = [v11 initWithFormat:@"%@", v12];
    *buf = 136315394;
    v22 = v10;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10084F678;
  block[3] = &unk_10162BD20;
  objc_copyWeak(v20, buf);
  v18 = v8;
  v19 = v7;
  v20[1] = a2;
  v15 = v7;
  v16 = v8;
  dispatch_async(processQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(buf);
}

- (void)_updateRideStatusMapForApplication:(id)a3
{
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v8 = [NSString alloc];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@", v9];
    *buf = 136315394;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10084FF94;
  block[3] = &unk_101651D38;
  v14 = v5;
  v12 = v5;
  objc_copyWeak(v15, buf);
  v15[1] = a2;
  dispatch_async(processQueue, block);
  objc_destroyWeak(v15);

  objc_destroyWeak(buf);
}

- (void)removeRideBookingDataCoordinatorRideStatusObserver:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v8 = [NSString alloc];
      v9 = NSStringFromSelector(a2);
      v10 = [v8 initWithFormat:@"%@", v9];
      *buf = 136315394;
      v17 = v7;
      v18 = 2112;
      *v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008504D4;
    block[3] = &unk_101661340;
    objc_copyWeak(&v15, buf);
    v14 = v5;
    dispatch_async(processQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v18 = 1024;
      *v19 = 824;
      *&v19[4] = 2082;
      *&v19[6] = "[RideBookingDataCoordinator removeRideBookingDataCoordinatorRideStatusObserver:]";
      v20 = 2082;
      v21 = "nil == (observer)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires non-nil RideBookingDataCoordinatorRideStatusObserver to be removed", buf, 0x26u);
    }
  }
}

- (void)addRideBookingDataCoordinatorRideStatusObserver:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v8 = [NSString alloc];
      v9 = NSStringFromSelector(a2);
      v10 = [v8 initWithFormat:@"%@, adding observer: %@", v9, v5];
      *buf = 136315394;
      v17 = v7;
      v18 = 2112;
      *v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008508F8;
    block[3] = &unk_101661340;
    objc_copyWeak(&v15, buf);
    v14 = v5;
    dispatch_async(processQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v18 = 1024;
      *v19 = 805;
      *&v19[4] = 2082;
      *&v19[6] = "[RideBookingDataCoordinator addRideBookingDataCoordinatorRideStatusObserver:]";
      v20 = 2082;
      v21 = "nil == (observer)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires non-nil RideBookingDataCoordinatorRideStatusObserver to be added", buf, 0x26u);
    }
  }
}

- (void)requestRideWithCompletion:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v8 = [NSString alloc];
      v9 = NSStringFromSelector(a2);
      v10 = [v8 initWithFormat:@"%@", v9];
      *buf = 136315394;
      v17 = v7;
      v18 = 2112;
      *v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100850E08;
    block[3] = &unk_10162C510;
    objc_copyWeak(v15, buf);
    block[4] = self;
    v15[1] = a2;
    v14 = v5;
    dispatch_async(processQueue, block);

    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v18 = 1024;
      *v19 = 770;
      *&v19[4] = 2082;
      *&v19[6] = "[RideBookingDataCoordinator requestRideWithCompletion:]";
      v20 = 2082;
      v21 = "nil == (completion)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", buf, 0x26u);
    }
  }
}

- (void)updateRequestRidePassengers:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v8 = [NSString alloc];
      v9 = NSStringFromSelector(a2);
      v10 = [v8 initWithFormat:@"%@", v9];
      *buf = 136315394;
      v17 = v7;
      v18 = 2112;
      *v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008516AC;
    block[3] = &unk_101651D38;
    objc_copyWeak(v15, buf);
    v15[1] = a2;
    v14 = v5;
    dispatch_sync(processQueue, block);

    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v18 = 1024;
      *v19 = 757;
      *&v19[4] = 2082;
      *&v19[6] = "[RideBookingDataCoordinator updateRequestRidePassengers:]";
      v20 = 2082;
      v21 = "nil == (passengers)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires non-nil RideBookingPassengersChoice to be added", buf, 0x26u);
    }
  }
}

- (void)updateRequestRidePaymentMethod:(id)a3
{
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v8 = [NSString alloc];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@", v9];
    *buf = 136315394;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100851A74;
  block[3] = &unk_101661340;
  objc_copyWeak(&v15, buf);
  v14 = v5;
  v12 = v5;
  dispatch_sync(processQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)updateRequestRideStartingWaypointCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v9 = [NSString alloc];
    v10 = NSStringFromSelector(a2);
    v11 = [v9 initWithFormat:@"%@", v10];
    *buf = 136315394;
    v16 = v8;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100851D48;
  block[3] = &unk_10164CBF8;
  objc_copyWeak(v14, buf);
  v14[1] = *&latitude;
  v14[2] = *&longitude;
  dispatch_async(processQueue, block);
  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

- (void)_updateRequestRideStatus:(id)a3
{
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v8 = [NSString alloc];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@", v9];
    *buf = 136315394;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100852AE4;
  block[3] = &unk_101661340;
  objc_copyWeak(&v15, buf);
  v14 = v5;
  v12 = v5;
  dispatch_async(processQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_cleanRequestLocationNames
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100852DCC;
  block[3] = &unk_101661340;
  objc_copyWeak(&v11, buf);
  block[4] = self;
  dispatch_async(processQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_stopRequestRideExpireTimer
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100853430;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(processQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_expireRequestRideStatus
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008537B0;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(processQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_startRequestRideExpireTimerWithExpirationDate:(id)a3
{
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v8 = [NSString alloc];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@", v9];
    *buf = 136315394;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (v5)
  {
    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100853B5C;
    block[3] = &unk_101661340;
    objc_copyWeak(&v14, buf);
    v13 = v5;
    dispatch_async(processQueue, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

- (void)_updateRequestRidePickupAndDropoffLocations
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100854080;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(processQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)startRequestRideForRideOption:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v8 = [NSString alloc];
      v9 = NSStringFromSelector(a2);
      v10 = [v8 initWithFormat:@"%@", v9];
      *buf = 136315394;
      v17 = v7;
      v18 = 2112;
      *v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100854538;
    block[3] = &unk_101661340;
    objc_copyWeak(&v15, buf);
    v14 = v5;
    dispatch_async(processQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v18 = 1024;
      *v19 = 523;
      *&v19[4] = 2082;
      *&v19[6] = "[RideBookingDataCoordinator startRequestRideForRideOption:]";
      v20 = 2082;
      v21 = "nil == (rideOption)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires non-nil RideBookingRideOption", buf, 0x26u);
    }
  }
}

- (void)_broadcastRequestRideStatusDidChange
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v29 = v5;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(RideBookingDataCoordinator *)self requestRideObservers];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [(RideBookingDataCoordinator *)self requestRideStatus];
          [v14 requestRideStatusDidChange:v15];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v18 = [NSString alloc];
    v19 = [(RideBookingDataCoordinator *)self requestRideObservers];
    v20 = [v19 count];
    v21 = [(RideBookingDataCoordinator *)self requestRideObservers];
    v22 = [v18 initWithFormat:@"Broadcasted to %lu RideBookingDataSourceRequestRideObservers: %@", v20, v21];
    *buf = 136315394;
    v29 = v17;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }
}

- (void)_resetRequestRide
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v17 = v5;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  requestRideApplication = self->_requestRideApplication;
  self->_requestRideApplication = 0;

  requestRidePickupLocation = self->_requestRidePickupLocation;
  self->_requestRidePickupLocation = 0;

  requestRideDropoffLocation = self->_requestRideDropoffLocation;
  self->_requestRideDropoffLocation = 0;

  requestRideEtaUpdateIdentifier = self->_requestRideEtaUpdateIdentifier;
  self->_requestRideEtaUpdateIdentifier = 0;

  requestRidePaymentMethod = self->_requestRidePaymentMethod;
  self->_requestRidePaymentMethod = 0;

  [(RideBookingDataCoordinator *)self _stopRequestRideExpireTimer];
  requestRideExpireTimer = self->_requestRideExpireTimer;
  self->_requestRideExpireTimer = 0;

  requestRideStatus = self->_requestRideStatus;
  self->_requestRideStatus = 0;
}

- (void)removeRideBookingDataCoordinatorRequestRideObserver:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v8 = [NSString alloc];
      v9 = NSStringFromSelector(a2);
      v10 = [v8 initWithFormat:@"%@", v9];
      *buf = 136315394;
      v17 = v7;
      v18 = 2112;
      *v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100854D9C;
    block[3] = &unk_101661340;
    objc_copyWeak(&v15, buf);
    v14 = v5;
    dispatch_async(processQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v18 = 1024;
      *v19 = 480;
      *&v19[4] = 2082;
      *&v19[6] = "[RideBookingDataCoordinator removeRideBookingDataCoordinatorRequestRideObserver:]";
      v20 = 2082;
      v21 = "nil == (observer)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires non-nil RideBookingDataCoordinatorRequestRideObserver to be removed", buf, 0x26u);
    }
  }
}

- (void)addRideBookingDataCoordinatorRequestRideObserver:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v8 = [NSString alloc];
      v9 = NSStringFromSelector(a2);
      v10 = [v8 initWithFormat:@"%@", v9];
      *buf = 136315394;
      v17 = v7;
      v18 = 2112;
      *v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008551C0;
    block[3] = &unk_101661340;
    objc_copyWeak(&v15, buf);
    v14 = v5;
    dispatch_async(processQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v18 = 1024;
      *v19 = 462;
      *&v19[4] = 2082;
      *&v19[6] = "[RideBookingDataCoordinator addRideBookingDataCoordinatorRequestRideObserver:]";
      v20 = 2082;
      v21 = "nil == (observer)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires non-nil RideBookingDataCoordinatorRequestRideObserver to be added", buf, 0x26u);
    }
  }
}

- (void)_stopRefreshRideOptionsTimer
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008555F4;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(processQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_refreshRideOptions
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008558A4;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(processQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_startRefreshRideOptionsTimer
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [NSString alloc];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 initWithFormat:@"%@", v7];
    *buf = 136315394;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100855D78;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(processQueue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_updateRideOptionStatusMapWithApplication:(id)a3 status:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v11 = [NSString alloc];
    v12 = NSStringFromSelector(a2);
    v13 = [v11 initWithFormat:@"%@", v12];
    *buf = 136315394;
    v23 = v10;
    v24 = 2112;
    *v25 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  v14 = [v7 identifier];

  if (v14)
  {
    objc_initWeak(buf, self);
    processQueue = self->_processQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008562F8;
    block[3] = &unk_101661480;
    objc_copyWeak(&v21, buf);
    v19 = v8;
    v20 = v7;
    dispatch_async(processQueue, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = [v7 name];
      *buf = 136447234;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m";
      v24 = 1024;
      *v25 = 397;
      *&v25[4] = 2082;
      *&v25[6] = "[RideBookingDataCoordinator _updateRideOptionStatusMapWithApplication:status:]";
      v26 = 2082;
      v27 = "nil == (application.identifier)";
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. application %@ identifier cannot be nil", buf, 0x30u);
    }
  }
}

- (void)_updateRideOptionStatusMapForOrigin:(id)a3 destination:(id)a4 application:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v14 = [NSString alloc];
    v15 = NSStringFromSelector(a2);
    v16 = [v14 initWithFormat:@"%@", v15];
    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  v17 = [CLPlacemark placemarkWithGEOMapItem:v9];
  v18 = [CLPlacemark placemarkWithGEOMapItem:v10];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = sub_10084D604;
  v43 = sub_10084D614;
  v44 = 0;
  if ([v11 enabled] && (objc_msgSend(v11, "identifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = isExtensionHidden(), v19, !v20))
  {
    v26 = [RideBookingRideOptionStatus statusWithApplication:v11 loadingRideOptions:1];
    [(RideBookingDataCoordinator *)self _updateRideOptionStatusMapWithApplication:v11 status:v26];

    objc_initWeak(&location, self);
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v29 = [[NSString alloc] initWithFormat:@"Sending a getRideStatus request with application %@", v11];
      *v37 = 136315394;
      v38 = v28;
      v39 = 2112;
      v40 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", v37, 0x16u);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100856900;
    v30[3] = &unk_10162BC30;
    objc_copyWeak(&v35, &location);
    v34 = buf;
    v31 = v11;
    v32 = v17;
    v33 = v18;
    [v31 getRideStatusWithCompletion:v30];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  else
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v23 = [[NSString alloc] initWithFormat:@"Application is disabled. Returning the rideOptionStatus request."];
      *v37 = 136315394;
      v38 = v22;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", v37, 0x16u);
    }

    v24 = [RideBookingRideOptionStatus statusWithApplication:v11];
    v25 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v24;

    [(RideBookingDataCoordinator *)self _updateRideOptionStatusMapWithApplication:v11 status:*(*&buf[8] + 40)];
  }

  _Block_object_dispose(buf, 8);
}

- (void)updateRideOptionStateForOrigin:(id)a3 destination:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v11 = [NSString alloc];
    v12 = NSStringFromSelector(a2);
    v13 = [v11 initWithFormat:@"%@", v12];
    *buf = 136315394;
    v33 = v10;
    v34 = 2112;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008571F0;
  block[3] = &unk_101661480;
  objc_copyWeak(&v31, buf);
  v15 = v7;
  v29 = v15;
  v16 = v8;
  v30 = v16;
  dispatch_async(processQueue, block);
  [v15 coordinate];
  v18 = v17;
  [v15 coordinate];
  v20 = CLLocationCoordinate2DMake(v18, v19);
  [v16 coordinate];
  v22 = v21;
  [v16 coordinate];
  v24 = CLLocationCoordinate2DMake(v22, v23);
  v25 = +[RidesharingAppSuggestionsProvider sharedProvider];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1008575B8;
  v26[3] = &unk_10162BBE0;
  v26[4] = self;
  objc_copyWeak(&v27, buf);
  [v25 fetchSuggestedAppsForSource:v26 destination:v20.latitude withCompletion:{v20.longitude, v24.latitude, v24.longitude}];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

- (void)removeRideBookingDataCoordinatorRideOptionStateObserver:(id)a3
{
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v8 = [NSString alloc];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@", v9];
    *buf = 136315394;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100857BA4;
  block[3] = &unk_101661340;
  objc_copyWeak(&v15, buf);
  v14 = v5;
  v12 = v5;
  dispatch_async(processQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)addRideBookingDataCoordinatorRideOptionStateObserver:(id)a3
{
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v8 = [NSString alloc];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@", v9];
    *buf = 136315394;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100857FE0;
  block[3] = &unk_101661340;
  objc_copyWeak(&v15, buf);
  v14 = v5;
  v12 = v5;
  dispatch_async(processQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)rideBookingApplicationsDidChange:(id)a3
{
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v8 = [NSString alloc];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@", v9];
    *buf = 136315394;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  processQueue = self->_processQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100858558;
  block[3] = &unk_101661340;
  objc_copyWeak(&v15, buf);
  v14 = v5;
  v12 = v5;
  dispatch_async(processQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (RideBookingDataCoordinator)initWithRideBookingApplicationFinder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = RideBookingDataCoordinator;
  v5 = [(RideBookingDataCoordinator *)&v31 init];
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v8 = [[NSString alloc] initWithFormat:@"Initializing RideBookingDataCoordinator with RideBookingApplicationFinder: %@", v4];
      *buf = 136315394;
      v33 = v7;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.maps.RideBookingDataCoordinator", v9);
    processQueue = v5->_processQueue;
    v5->_processQueue = v10;

    refreshRideOptionsTimer = v5->_refreshRideOptionsTimer;
    v5->_refreshRideOptionsTimer = 0;

    requestRideExpireTimer = v5->_requestRideExpireTimer;
    v5->_requestRideExpireTimer = 0;

    if (!v4)
    {
      v4 = objc_alloc_init(RideBookingApplicationFinder);
    }

    objc_storeStrong(&v5->_applicationFinder, v4);
    [(RideBookingApplicationFinder *)v5->_applicationFinder setDelegate:v5];
    v14 = objc_opt_new();
    applications = v5->_applications;
    v5->_applications = v14;

    v16 = objc_opt_new();
    rideOptionStatusMap = v5->_rideOptionStatusMap;
    v5->_rideOptionStatusMap = v16;

    v18 = objc_opt_new();
    rideStatusMap = v5->_rideStatusMap;
    v5->_rideStatusMap = v18;

    v20 = +[NSUserDefaults standardUserDefaults];
    v21 = [v20 dictionaryForKey:@"RideBookingCompletedRideIdentifiersAndDates"];

    if (v21)
    {
      v22 = [v21 mutableCopy];
    }

    else
    {
      v22 = objc_opt_new();
    }

    completedRideIdentifiersAndDatesMap = v5->_completedRideIdentifiersAndDatesMap;
    v5->_completedRideIdentifiersAndDatesMap = v22;

    [(RideBookingDataCoordinator *)v5 _flushCompletedRideIdentifiersAndDatesMap];
    v24 = [[NSHashTable alloc] initWithOptions:517 capacity:0];
    rideOptionStateObservers = v5->_rideOptionStateObservers;
    v5->_rideOptionStateObservers = v24;

    v26 = [[NSHashTable alloc] initWithOptions:517 capacity:0];
    requestRideObservers = v5->_requestRideObservers;
    v5->_requestRideObservers = v26;

    v28 = [[NSHashTable alloc] initWithOptions:517 capacity:0];
    rideStatusObservers = v5->_rideStatusObservers;
    v5->_rideStatusObservers = v28;

    v5->_waitingAppSuggestionsToLoad = 1;
  }

  return v5;
}

+ (void)openRideBookingApplication:(id)a3 withUserActivity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v10 = [NSString alloc];
    v11 = NSStringFromSelector(a2);
    v12 = [v10 initWithFormat:@"%@", v11];
    *buf = 136315394;
    v19 = v9;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v15 = [NSString alloc];
    v16 = [v6 title];
    v17 = [v15 initWithFormat:@"Opening app with activity: %@", v16];
    *buf = 136315394;
    v19 = v14;
    v20 = 2112;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  [v7 openWithActivity:v6];
}

@end