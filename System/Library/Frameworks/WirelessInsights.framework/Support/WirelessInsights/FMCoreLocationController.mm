@interface FMCoreLocationController
+ (double)distanceBetween:(double)a3 srcLongitude:(double)a4 destLatitude:(double)a5 destLongitude:(double)a6;
- (FMCoreLocationController)init;
- (const)authStatusAsString:(int)a3;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didReportVisit:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
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

  v4 = [(FMCoreLocationController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000991E4;
  block[3] = &unk_1002AB4D0;
  block[4] = self;
  dispatch_async(v4, block);
  objc_initWeak(&buf, self);
  v5 = dispatch_time(0, 120000000000);
  v6 = [(FMCoreLocationController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000992FC;
  v7[3] = &unk_1002AC020;
  objc_copyWeak(&v8, &buf);
  dispatch_after(v5, v6, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&buf);
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002035CC();
  }

  v3 = [(FMCoreLocationController *)self locationManager];
  [v3 setDelegate:0];

  v4 = [(FMCoreLocationController *)self authorizationManager];
  [v4 setDelegate:0];

  if ([(FMCoreLocationController *)self queue])
  {
    dispatch_release([(FMCoreLocationController *)self queue]);
  }

  v5.receiver = self;
  v5.super_class = FMCoreLocationController;
  [(FMCoreLocationController *)&v5 dealloc];
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(FMCoreLocationController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100099530;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = [(FMCoreLocationController *)self authorizationManager];

  if (v5 == v4)
  {
    v6 = [v4 authorizationStatus];
    v7 = *(qword_1002DBE98 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = [(FMCoreLocationController *)self authStatusAsString:v6];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMCoreLocationController]:#N Updated auth status from locationd %s", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [(FMCoreLocationController *)self delegates];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (v12)
          {
            [v12 handleLocationAuthorizationUpdate:{-[FMCoreLocationController statusIndicatesAuthorized:](self, "statusIndicatesAuthorized:", v6)}];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (const)authStatusAsString:(int)a3
{
  if (a3 > 4)
  {
    return "Auth status is unknown";
  }

  else
  {
    return (&off_1002AE850)[a3];
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = [a4 lastObject];
  if (v5)
  {
    [(FMCoreLocationController *)self setCurrentLocation:v5];
    v6 = [FMLocation alloc];
    v7 = [v5 timestamp];
    [v5 coordinate];
    v9 = v8;
    [v5 coordinate];
    v11 = v10;
    [v5 horizontalAccuracy];
    v13 = [(FMLocation *)v6 init:v7 latitude:v9 longitude:v11 accuracy:v12];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [(FMCoreLocationController *)self delegates];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v19 + 1) + 8 * i);
          if (v18)
          {
            [v18 handleLocationUpdate:v13];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203600();
  }
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v5 = a4;
  v6 = +[FMConfiguration sharedInstance];
  v7 = [v6 disableVisitChecking];

  if (v7)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100203668();
    }

    goto LABEL_31;
  }

  v8 = [v5 _placeInference];
  if (v8)
  {
    v9 = [v5 _placeInference];
    v10 = [v9 placemark];
    if (v10)
    {
      v11 = [v5 _placeInference];
      v12 = [v11 placemark];
      v13 = [v12 location];

      if (v13)
      {
        v14 = [v5 _placeInference];
        v15 = [v14 placemark];
        v16 = [v15 location];

        v17 = [v5 departureDate];
        v18 = +[NSDate distantFuture];
        v19 = [v17 isEqualToDate:v18];

        if (v19)
        {
          v20 = [FMLocation alloc];
          v21 = [v5 arrivalDate];
          [v16 coordinate];
          v23 = v22;
          [v16 coordinate];
          v25 = v24;
          [v16 horizontalAccuracy];
          v27 = [(FMLocation *)v20 init:v21 latitude:v23 longitude:v25 accuracy:v26];

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v28 = [(FMCoreLocationController *)self delegates];
          v29 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v29)
          {
            v30 = *v49;
            do
            {
              for (i = 0; i != v29; i = i + 1)
              {
                if (*v49 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v48 + 1) + 8 * i);
                if (v32)
                {
                  [v32 handleVisitStarted:v27];
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
            }

            while (v29);
          }
        }

        else
        {
          v33 = [FMLocation alloc];
          v34 = [v5 departureDate];
          [v16 coordinate];
          v36 = v35;
          [v16 coordinate];
          v38 = v37;
          [v16 horizontalAccuracy];
          v27 = [(FMLocation *)v33 init:v34 latitude:v36 longitude:v38 accuracy:v39];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v28 = [(FMCoreLocationController *)self delegates];
          v40 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v40)
          {
            v41 = *v45;
            do
            {
              for (j = 0; j != v40; j = j + 1)
              {
                if (*v45 != v41)
                {
                  objc_enumerationMutation(v28);
                }

                v43 = *(*(&v44 + 1) + 8 * j);
                if (v43)
                {
                  [v43 handleVisitEnded:v27];
                }
              }

              v40 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
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

- (void)locationManager:(id)a3 didReportVisit:(id)a4
{
  v5 = a4;
  v6 = +[FMConfiguration sharedInstance];
  v7 = [v6 disableVisitChecking];

  if (v7)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100203668();
    }

    goto LABEL_21;
  }

  if (v5)
  {
    v8 = [v5 _placeInference];
    if (v8)
    {
      v9 = [v5 _placeInference];
      v10 = [v9 placemark];
      if (v10)
      {
        v11 = [v5 _placeInference];
        v12 = [v11 placemark];
        v13 = [v12 location];

        if (v13)
        {
          v14 = [v5 _placeInference];
          v15 = [v14 placemark];
          v16 = [v15 location];

          v17 = [FMLocation alloc];
          v18 = +[NSDate now];
          [v16 coordinate];
          v20 = v19;
          [v16 coordinate];
          v22 = v21;
          [v16 horizontalAccuracy];
          v24 = [(FMLocation *)v17 init:v18 latitude:v20 longitude:v22 accuracy:v23];

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v25 = [(FMCoreLocationController *)self delegates];
          v26 = [v25 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v26)
          {
            v27 = *v31;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v31 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v30 + 1) + 8 * i);
                if (v29)
                {
                  [v29 handleVisitStarted:v24];
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v30 objects:v34 count:16];
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

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v4 localizedDescription];
    sub_1002036D0(v6, v7, [v4 code], v5);
  }
}

+ (double)distanceBetween:(double)a3 srcLongitude:(double)a4 destLatitude:(double)a5 destLongitude:(double)a6
{
  v8 = [[CLLocation alloc] initWithLatitude:a3 longitude:a4];
  v9 = [[CLLocation alloc] initWithLatitude:a5 longitude:a6];
  [v8 distanceFromLocation:v9];
  v11 = v10;

  return v11;
}

@end