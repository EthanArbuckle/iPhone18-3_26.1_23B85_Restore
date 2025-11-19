@interface BYSoftwareUpdateCache
- (void)_scanUsingCache:(BOOL)a3 allowBootstrap:(BOOL)a4 attemptCount:(unint64_t)a5 attemptsAllowed:(unint64_t)a6 withCompletion:(id)a7;
- (void)_scanUsingCache:(BOOL)a3 allowBootstrap:(BOOL)a4 attemptsAllowed:(unint64_t)a5 withCompletion:(id)a6;
- (void)reset;
- (void)scanUsingCache:(BOOL)a3 allowBootstrap:(BOOL)a4 retry:(BOOL)a5 withCompletion:(id)a6;
- (void)scanUsingCache:(BOOL)a3 allowBootstrap:(BOOL)a4 withCompletion:(id)a5;
- (void)scanUsingCache:(BOOL)a3 withCompletion:(id)a4;
@end

@implementation BYSoftwareUpdateCache

- (void)scanUsingCache:(BOOL)a3 withCompletion:(id)a4
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v20 = 0;
  v4 = 0;
  if (v23)
  {
    v21 = [(BYSoftwareUpdateCache *)v25 preferredUpdate];
    v20 = 1;
    v4 = 0;
    if (v21)
    {
      v4 = location != 0;
    }
  }

  if (v20)
  {
  }

  if (v4)
  {
    v5 = location;
    v6 = [(BYSoftwareUpdateCache *)v25 preferredUpdate];
    v7 = [(BYSoftwareUpdateCache *)v25 alternateUpdate];
    v8 = [(BYSoftwareUpdateCache *)v25 latestUpdate];
    v5[2](v5, v6, v7, v8, 0);

    v19 = 1;
  }

  else
  {
    v18 = objc_alloc_init(SUScanOptions);
    [v18 setForced:1];
    [v18 setIdentifier:@"com.apple.purplebuddy.software_update"];
    v9 = dispatch_get_global_queue(0, 0);
    v17 = [BYSUManagerClient createWithQueue:v9 clientType:1];

    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1001F8408;
    v14 = &unk_10032EF38;
    v15 = v25;
    v16 = location;
    [v17 scanForUpdates:v18 withScanResults:&v10];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  objc_storeStrong(&location, 0);
}

- (void)scanUsingCache:(BOOL)a3 allowBootstrap:(BOOL)a4 withCompletion:(id)a5
{
  v42 = self;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v36 = 0;
  v5 = 0;
  if (v40)
  {
    v37 = [(BYSoftwareUpdateCache *)v42 preferredUpdate];
    v36 = 1;
    v5 = 0;
    if (v37)
    {
      v5 = location != 0;
    }
  }

  if (v36)
  {
  }

  if (v5)
  {
    v6 = location;
    v7 = [(BYSoftwareUpdateCache *)v42 preferredUpdate];
    v8 = [(BYSoftwareUpdateCache *)v42 alternateUpdate];
    v9 = [(BYSoftwareUpdateCache *)v42 latestUpdate];
    v6[2](v6, v7, v8, v9, 0);

    v35 = 1;
  }

  else
  {
    v34 = 0;
    if (v39)
    {
      v33 = dispatch_queue_create("Telephony Queue", 0);
      v32 = [[CoreTelephonyClient alloc] initWithQueue:v33];
      v31 = 0;
      obj = 0;
      v10 = [v32 usingBootstrapDataService:&obj];
      objc_storeStrong(&v31, obj);
      v11 = v34;
      v34 = v10;

      if (v34)
      {
        if ([v34 BOOLValue])
        {
          v13 = +[CTCellularPlanManager sharedManager];
          [v13 setUserInPurchaseFlow:1];
        }
      }

      else
      {
        oslog = _BYLoggingFacility();
        v28 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v26 = 0;
          v24 = 0;
          if (_BYIsInternalInstall())
          {
            v12 = v31;
          }

          else if (v31)
          {
            v27 = [v31 domain];
            v26 = 1;
            v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v27, [v31 code]);
            v25 = v12;
            v24 = 1;
          }

          else
          {
            v12 = 0;
          }

          sub_100071CBC(buf, v12);
          _os_log_error_impl(&_mh_execute_header, oslog, v28, "Unable to get bootstrap status for software update scan: %{public}@", buf, 0xCu);
          if (v24)
          {
          }

          if (v26)
          {
          }
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
    }

    v14 = v42;
    v15 = v40;
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1001F8CD4;
    v20 = &unk_10032EF60;
    v23 = v39;
    v21 = v34;
    v22 = location;
    [(BYSoftwareUpdateCache *)v14 scanUsingCache:v15 withCompletion:&v16];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v34, 0);
    v35 = 0;
  }

  objc_storeStrong(&location, 0);
}

- (void)scanUsingCache:(BOOL)a3 allowBootstrap:(BOOL)a4 retry:(BOOL)a5 withCompletion:(id)a6
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  if (v7)
  {
    [(BYSoftwareUpdateCache *)v11 _scanUsingCache:v9 allowBootstrap:v8 attemptsAllowed:3 withCompletion:location];
  }

  else
  {
    [(BYSoftwareUpdateCache *)v11 scanUsingCache:v9 allowBootstrap:v8 withCompletion:location];
  }

  objc_storeStrong(&location, 0);
}

- (void)reset
{
  v7 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "Resetting software update cache...", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(BYSoftwareUpdateCache *)v7 setPreferredUpdate:0];
  [(BYSoftwareUpdateCache *)v7 setAlternateUpdate:0];
  [(BYSoftwareUpdateCache *)v7 setLatestUpdate:0];
  [(BYSoftwareUpdateCache *)v7 setLastScanDate:0];
}

- (void)_scanUsingCache:(BOOL)a3 allowBootstrap:(BOOL)a4 attemptsAllowed:(unint64_t)a5 withCompletion:(id)a6
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  [(BYSoftwareUpdateCache *)v11 _scanUsingCache:v9 allowBootstrap:v8 attemptCount:0 attemptsAllowed:v7 withCompletion:location];
  objc_storeStrong(&location, 0);
}

- (void)_scanUsingCache:(BOOL)a3 allowBootstrap:(BOOL)a4 attemptCount:(unint64_t)a5 attemptsAllowed:(unint64_t)a6 withCompletion:(id)a7
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  location = 0;
  objc_storeStrong(&location, a7);
  v7 = v25;
  v8 = v23;
  v9 = v22;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1001F9104;
  v14 = &unk_10032EFB0;
  v16[1] = v21;
  v16[2] = v20;
  v16[0] = location;
  v15 = v25;
  v17 = v23;
  v18 = v22;
  [(BYSoftwareUpdateCache *)v7 scanUsingCache:v8 allowBootstrap:v9 withCompletion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&location, 0);
}

@end