@interface FMCoreLocationController
+ (double)distanceBetween:(double)between srcLongitude:(double)longitude destLatitude:(double)latitude destLongitude:(double)destLongitude;
- (FMCoreLocationController)init;
- (const)authStatusAsString:(int)string;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didReportVisit:(id)visit;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)start;
@end

@implementation FMCoreLocationController

- (FMCoreLocationController)init
{
  v11.receiver = self;
  v11.super_class = FMCoreLocationController;
  v2 = [(FMCoreLocationController *)&v11 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2->_queue = dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility.CoreLocationController", v3);
  v4 = +[NSHashTable weakObjectsHashTable];
  delegates = v2->_delegates;
  v2->_delegates = v4;

  v6 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/WirelessDiagnostics.bundle" delegate:v2 onQueue:v2->_queue];
  locationManager = v2->_locationManager;
  v2->_locationManager = v6;

  v8 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/FedMobility.bundle" delegate:v2 onQueue:v2->_queue];
  authorizationManager = v2->_authorizationManager;
  v2->_authorizationManager = v8;

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203598();
  }

  return v2;
}

- (void)start
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMCoreLocationController]:#N Starting location updates", &buf, 2u);
  }

  queue = [(FMCoreLocationController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000991E4;
  block[3] = &unk_1002AB4D0;
  block[4] = self;
  dispatch_async(queue, block);
  objc_initWeak(&buf, self);
  v5 = dispatch_time(0, 120000000000);
  queue2 = [(FMCoreLocationController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000992FC;
  v7[3] = &unk_1002AC020;
  objc_copyWeak(&v8, &buf);
  dispatch_after(v5, queue2, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&buf);
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002035CC();
  }

  locationManager = [(FMCoreLocationController *)self locationManager];
  [locationManager setDelegate:0];

  authorizationManager = [(FMCoreLocationController *)self authorizationManager];
  [authorizationManager setDelegate:0];

  if ([(FMCoreLocationController *)self queue])
  {
    dispatch_release([(FMCoreLocationController *)self queue]);
  }

  v5.receiver = self;
  v5.super_class = FMCoreLocationController;
  [(FMCoreLocationController *)&v5 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(FMCoreLocationController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100099530;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  authorizationManager = [(FMCoreLocationController *)self authorizationManager];

  if (authorizationManager == authorizationCopy)
  {
    authorizationStatus = [authorizationCopy authorizationStatus];
    v7 = *(qword_1002DBE98 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = [(FMCoreLocationController *)self authStatusAsString:authorizationStatus];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMCoreLocationController]:#N Updated auth status from locationd %s", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    delegates = [(FMCoreLocationController *)self delegates];
    v9 = [delegates countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(delegates);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (v12)
          {
            [v12 handleLocationAuthorizationUpdate:{-[FMCoreLocationController statusIndicatesAuthorized:](self, "statusIndicatesAuthorized:", authorizationStatus)}];
          }
        }

        v9 = [delegates countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (const)authStatusAsString:(int)string
{
  if (string > 4)
  {
    return "Auth status is unknown";
  }

  else
  {
    return (&off_1002AE850)[string];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  lastObject = [locations lastObject];
  if (lastObject)
  {
    [(FMCoreLocationController *)self setCurrentLocation:lastObject];
    v6 = [FMLocation alloc];
    timestamp = [lastObject timestamp];
    [lastObject coordinate];
    v9 = v8;
    [lastObject coordinate];
    v11 = v10;
    [lastObject horizontalAccuracy];
    v13 = [(FMLocation *)v6 init:timestamp latitude:v9 longitude:v11 accuracy:v12];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    delegates = [(FMCoreLocationController *)self delegates];
    v15 = [delegates countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(delegates);
          }

          v18 = *(*(&v19 + 1) + 8 * i);
          if (v18)
          {
            [v18 handleLocationUpdate:v13];
          }
        }

        v15 = [delegates countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203600();
  }
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  visitCopy = visit;
  v6 = +[FMConfiguration sharedInstance];
  disableVisitChecking = [v6 disableVisitChecking];

  if (disableVisitChecking)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100203668();
    }

    goto LABEL_31;
  }

  _placeInference = [visitCopy _placeInference];
  if (_placeInference)
  {
    _placeInference2 = [visitCopy _placeInference];
    placemark = [_placeInference2 placemark];
    if (placemark)
    {
      _placeInference3 = [visitCopy _placeInference];
      placemark2 = [_placeInference3 placemark];
      location = [placemark2 location];

      if (location)
      {
        _placeInference4 = [visitCopy _placeInference];
        placemark3 = [_placeInference4 placemark];
        location2 = [placemark3 location];

        departureDate = [visitCopy departureDate];
        v18 = +[NSDate distantFuture];
        v19 = [departureDate isEqualToDate:v18];

        if (v19)
        {
          v20 = [FMLocation alloc];
          arrivalDate = [visitCopy arrivalDate];
          [location2 coordinate];
          v23 = v22;
          [location2 coordinate];
          v25 = v24;
          [location2 horizontalAccuracy];
          v27 = [(FMLocation *)v20 init:arrivalDate latitude:v23 longitude:v25 accuracy:v26];

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          delegates = [(FMCoreLocationController *)self delegates];
          v29 = [delegates countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v29)
          {
            v30 = *v49;
            do
            {
              for (i = 0; i != v29; i = i + 1)
              {
                if (*v49 != v30)
                {
                  objc_enumerationMutation(delegates);
                }

                v32 = *(*(&v48 + 1) + 8 * i);
                if (v32)
                {
                  [v32 handleVisitStarted:v27];
                }
              }

              v29 = [delegates countByEnumeratingWithState:&v48 objects:v53 count:16];
            }

            while (v29);
          }
        }

        else
        {
          v33 = [FMLocation alloc];
          departureDate2 = [visitCopy departureDate];
          [location2 coordinate];
          v36 = v35;
          [location2 coordinate];
          v38 = v37;
          [location2 horizontalAccuracy];
          v27 = [(FMLocation *)v33 init:departureDate2 latitude:v36 longitude:v38 accuracy:v39];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          delegates = [(FMCoreLocationController *)self delegates];
          v40 = [delegates countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v40)
          {
            v41 = *v45;
            do
            {
              for (j = 0; j != v40; j = j + 1)
              {
                if (*v45 != v41)
                {
                  objc_enumerationMutation(delegates);
                }

                v43 = *(*(&v44 + 1) + 8 * j);
                if (v43)
                {
                  [v43 handleVisitEnded:v27];
                }
              }

              v40 = [delegates countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v40);
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203634();
  }

LABEL_31:
}

- (void)locationManager:(id)manager didReportVisit:(id)visit
{
  visitCopy = visit;
  v6 = +[FMConfiguration sharedInstance];
  disableVisitChecking = [v6 disableVisitChecking];

  if (disableVisitChecking)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100203668();
    }

    goto LABEL_21;
  }

  if (visitCopy)
  {
    _placeInference = [visitCopy _placeInference];
    if (_placeInference)
    {
      _placeInference2 = [visitCopy _placeInference];
      placemark = [_placeInference2 placemark];
      if (placemark)
      {
        _placeInference3 = [visitCopy _placeInference];
        placemark2 = [_placeInference3 placemark];
        location = [placemark2 location];

        if (location)
        {
          _placeInference4 = [visitCopy _placeInference];
          placemark3 = [_placeInference4 placemark];
          location2 = [placemark3 location];

          v17 = [FMLocation alloc];
          v18 = +[NSDate now];
          [location2 coordinate];
          v20 = v19;
          [location2 coordinate];
          v22 = v21;
          [location2 horizontalAccuracy];
          v24 = [(FMLocation *)v17 init:v18 latitude:v20 longitude:v22 accuracy:v23];

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          delegates = [(FMCoreLocationController *)self delegates];
          v26 = [delegates countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v26)
          {
            v27 = *v31;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v31 != v27)
                {
                  objc_enumerationMutation(delegates);
                }

                v29 = *(*(&v30 + 1) + 8 * i);
                if (v29)
                {
                  [v29 handleVisitStarted:v24];
                }
              }

              v26 = [delegates countByEnumeratingWithState:&v30 objects:v34 count:16];
            }

            while (v26);
          }

          goto LABEL_21;
        }
      }

      else
      {
      }
    }
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_10020369C();
  }

LABEL_21:
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    localizedDescription = [errorCopy localizedDescription];
    sub_1002036D0(localizedDescription, v7, [errorCopy code], v5);
  }
}

+ (double)distanceBetween:(double)between srcLongitude:(double)longitude destLatitude:(double)latitude destLongitude:(double)destLongitude
{
  v8 = [[CLLocation alloc] initWithLatitude:between longitude:longitude];
  v9 = [[CLLocation alloc] initWithLatitude:latitude longitude:destLongitude];
  [v8 distanceFromLocation:v9];
  v11 = v10;

  return v11;
}

@end