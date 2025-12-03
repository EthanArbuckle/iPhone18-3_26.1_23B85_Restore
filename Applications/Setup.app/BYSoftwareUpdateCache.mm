@interface BYSoftwareUpdateCache
- (void)_scanUsingCache:(BOOL)cache allowBootstrap:(BOOL)bootstrap attemptCount:(unint64_t)count attemptsAllowed:(unint64_t)allowed withCompletion:(id)completion;
- (void)_scanUsingCache:(BOOL)cache allowBootstrap:(BOOL)bootstrap attemptsAllowed:(unint64_t)allowed withCompletion:(id)completion;
- (void)reset;
- (void)scanUsingCache:(BOOL)cache allowBootstrap:(BOOL)bootstrap retry:(BOOL)retry withCompletion:(id)completion;
- (void)scanUsingCache:(BOOL)cache allowBootstrap:(BOOL)bootstrap withCompletion:(id)completion;
- (void)scanUsingCache:(BOOL)cache withCompletion:(id)completion;
@end

@implementation BYSoftwareUpdateCache

- (void)scanUsingCache:(BOOL)cache withCompletion:(id)completion
{
  selfCopy = self;
  v24 = a2;
  cacheCopy = cache;
  location = 0;
  objc_storeStrong(&location, completion);
  v20 = 0;
  v4 = 0;
  if (cacheCopy)
  {
    preferredUpdate = [(BYSoftwareUpdateCache *)selfCopy preferredUpdate];
    v20 = 1;
    v4 = 0;
    if (preferredUpdate)
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
    preferredUpdate2 = [(BYSoftwareUpdateCache *)selfCopy preferredUpdate];
    alternateUpdate = [(BYSoftwareUpdateCache *)selfCopy alternateUpdate];
    latestUpdate = [(BYSoftwareUpdateCache *)selfCopy latestUpdate];
    v5[2](v5, preferredUpdate2, alternateUpdate, latestUpdate, 0);

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
    v15 = selfCopy;
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

- (void)scanUsingCache:(BOOL)cache allowBootstrap:(BOOL)bootstrap withCompletion:(id)completion
{
  selfCopy = self;
  v41 = a2;
  cacheCopy = cache;
  bootstrapCopy = bootstrap;
  location = 0;
  objc_storeStrong(&location, completion);
  v36 = 0;
  v5 = 0;
  if (cacheCopy)
  {
    preferredUpdate = [(BYSoftwareUpdateCache *)selfCopy preferredUpdate];
    v36 = 1;
    v5 = 0;
    if (preferredUpdate)
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
    preferredUpdate2 = [(BYSoftwareUpdateCache *)selfCopy preferredUpdate];
    alternateUpdate = [(BYSoftwareUpdateCache *)selfCopy alternateUpdate];
    latestUpdate = [(BYSoftwareUpdateCache *)selfCopy latestUpdate];
    v6[2](v6, preferredUpdate2, alternateUpdate, latestUpdate, 0);

    v35 = 1;
  }

  else
  {
    v34 = 0;
    if (bootstrapCopy)
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
            domain = [v31 domain];
            v26 = 1;
            v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v31 code]);
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

    v14 = selfCopy;
    v15 = cacheCopy;
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1001F8CD4;
    v20 = &unk_10032EF60;
    v23 = bootstrapCopy;
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

- (void)scanUsingCache:(BOOL)cache allowBootstrap:(BOOL)bootstrap retry:(BOOL)retry withCompletion:(id)completion
{
  selfCopy = self;
  v10 = a2;
  cacheCopy = cache;
  bootstrapCopy = bootstrap;
  retryCopy = retry;
  location = 0;
  objc_storeStrong(&location, completion);
  if (retryCopy)
  {
    [(BYSoftwareUpdateCache *)selfCopy _scanUsingCache:cacheCopy allowBootstrap:bootstrapCopy attemptsAllowed:3 withCompletion:location];
  }

  else
  {
    [(BYSoftwareUpdateCache *)selfCopy scanUsingCache:cacheCopy allowBootstrap:bootstrapCopy withCompletion:location];
  }

  objc_storeStrong(&location, 0);
}

- (void)reset
{
  selfCopy = self;
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
  [(BYSoftwareUpdateCache *)selfCopy setPreferredUpdate:0];
  [(BYSoftwareUpdateCache *)selfCopy setAlternateUpdate:0];
  [(BYSoftwareUpdateCache *)selfCopy setLatestUpdate:0];
  [(BYSoftwareUpdateCache *)selfCopy setLastScanDate:0];
}

- (void)_scanUsingCache:(BOOL)cache allowBootstrap:(BOOL)bootstrap attemptsAllowed:(unint64_t)allowed withCompletion:(id)completion
{
  selfCopy = self;
  v10 = a2;
  cacheCopy = cache;
  bootstrapCopy = bootstrap;
  allowedCopy = allowed;
  location = 0;
  objc_storeStrong(&location, completion);
  [(BYSoftwareUpdateCache *)selfCopy _scanUsingCache:cacheCopy allowBootstrap:bootstrapCopy attemptCount:0 attemptsAllowed:allowedCopy withCompletion:location];
  objc_storeStrong(&location, 0);
}

- (void)_scanUsingCache:(BOOL)cache allowBootstrap:(BOOL)bootstrap attemptCount:(unint64_t)count attemptsAllowed:(unint64_t)allowed withCompletion:(id)completion
{
  selfCopy = self;
  v24 = a2;
  cacheCopy = cache;
  bootstrapCopy = bootstrap;
  countCopy = count;
  allowedCopy = allowed;
  location = 0;
  objc_storeStrong(&location, completion);
  v7 = selfCopy;
  v8 = cacheCopy;
  v9 = bootstrapCopy;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1001F9104;
  v14 = &unk_10032EFB0;
  v16[1] = countCopy;
  v16[2] = allowedCopy;
  v16[0] = location;
  v15 = selfCopy;
  v17 = cacheCopy;
  v18 = bootstrapCopy;
  [(BYSoftwareUpdateCache *)v7 scanUsingCache:v8 allowBootstrap:v9 withCompletion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&location, 0);
}

@end