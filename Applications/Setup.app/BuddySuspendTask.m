@interface BuddySuspendTask
+ (BOOL)hasSuspendTaskWithBuddyPreferencesExcludedFromBackup:(id)a3;
- (BuddySuspendTask)init;
- (void)_attemptPreheat:(unint64_t)a3;
- (void)accountWasAdded:(id)a3;
- (void)preheat;
@end

@implementation BuddySuspendTask

- (BuddySuspendTask)init
{
  v11 = a2;
  location = 0;
  v10.receiver = self;
  v10.super_class = BuddySuspendTask;
  location = [(BuddySuspendTask *)&v10 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = dispatch_queue_create("Suspend Task Preheat Queue", 0);
    v3 = *(location + 4);
    *(location + 4) = v2;

    v4 = [ACMonitoredAccountStore alloc];
    v5 = [NSSet setWithObject:ACAccountTypeIdentifieriTunesStore];
    v6 = [v4 initWithAccountTypes:v5 delegate:location];
    v7 = *(location + 5);
    *(location + 5) = v6;

    [*(location + 5) registerWithCompletion:&stru_10032CC98];
  }

  v8 = location;
  objc_storeStrong(&location, 0);
  return v8;
}

+ (BOOL)hasSuspendTaskWithBuddyPreferencesExcludedFromBackup:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[NSLocale currentLocale];
  v4 = [(NSLocale *)v3 countryCode];
  v5 = ![(NSString *)v4 isEqualToString:@"RU"];

  if (v5)
  {
    v15 = 0;
  }

  else
  {
    v6 = [location[0] objectForKey:@"AppStorePresented" includeCache:0];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v15 = 0;
    }

    else if ((+[BYManagedAppleIDBootstrap isMultiUser]& 1) != 0)
    {
      v15 = 0;
    }

    else
    {
      v8 = +[MCProfileConnection sharedConnection];
      v9 = [v8 skipSetupKeys];
      v10 = [v9 containsObject:kMCCCSkipAppStore];

      if (v10)
      {
        v15 = 0;
      }

      else
      {
        v11 = +[MCProfileConnection sharedConnection];
        v12 = [v11 effectiveBoolValueForSetting:MCFeatureAppInstallationAllowed] == 2;

        v15 = !v12;
      }
    }
  }

  objc_storeStrong(location, 0);
  return v15;
}

- (void)preheat
{
  v22 = self;
  v21 = a2;
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  v3 = [(BuddySuspendTask *)v22 bag];
  if (!v3)
  {
    v4 = objc_alloc_init(BuddyMediaServicesBag);
    [(BuddySuspendTask *)v22 setBag:v4];
  }

  v5 = [(BuddySuspendTask *)v22 launchURL];
  v19 = 0;
  v6 = 1;
  if (v5)
  {
    v20 = [(BuddySuspendTask *)v22 message];
    v19 = 1;
    v6 = v20 == 0;
  }

  if (v19)
  {
  }

  if (v6)
  {
    oslog = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v17;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v7, v8, "Preheating suspend task...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v9 = [(BuddySuspendTask *)v22 preheatQueue];
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000F5D88;
  v14 = &unk_10032B0D0;
  v15 = v22;
  dispatch_async(v9, &block);

  objc_storeStrong(&v15, 0);
}

- (void)_attemptPreheat:(unint64_t)a3
{
  v93 = self;
  v92 = a2;
  v91 = a3;
  v3 = [(BuddySuspendTask *)self preheatQueue];
  dispatch_assert_queue_V2(v3);

  if (v91)
  {
    v83 = 0;
    v84 = &v83;
    v85 = 0x20000000;
    v86 = 32;
    v87 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x20000000;
    v81 = 32;
    v82 = 0;
    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v73 = -1073741824;
    v74 = 0;
    v75 = sub_1000F6850;
    v76 = &unk_10032CCC0;
    v77[1] = &v83;
    v77[0] = v93;
    v77[2] = &v78;
    dispatch_sync(v6, &block);

    if (v84[3] & 1) != 0 && (v79[3])
    {
      v71 = 1;
    }

    else
    {
      oslog = _BYLoggingFacility();
      v69 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = oslog;
        v8 = v69;
        sub_10006AA68(v68);
        _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to preheat suspend task...", v68, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v67 = 0;
      if ((v84[3] & 1) == 0)
      {
        v9 = [(BuddySuspendTask *)v93 bag];
        v10 = [(BuddyMediaServicesBag *)v9 getAppStoreURL];
        obj = v67;
        v11 = [v10 valueWithError:&obj];
        objc_storeStrong(&v67, obj);
        v66 = v11;

        if (!v67 && v66)
        {
          *(v84 + 24) = 1;
          v13 = &_dispatch_main_q;
          v52 = _NSConcreteStackBlock;
          v53 = -1073741824;
          v54 = 0;
          v55 = sub_1000F68D8;
          v56 = &unk_10032B838;
          v57 = v93;
          v58 = v66;
          dispatch_async(v13, &v52);

          objc_storeStrong(&v58, 0);
          objc_storeStrong(&v57, 0);
        }

        else
        {
          v64 = _BYLoggingFacility();
          v63 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v61 = 0;
            v59 = 0;
            if (_BYIsInternalInstall())
            {
              v12 = v67;
            }

            else if (v67)
            {
              v62 = [v67 domain];
              v61 = 1;
              v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v62, [v67 code]);
              v60 = v12;
              v59 = 1;
            }

            else
            {
              v12 = 0;
            }

            sub_100071CBC(v95, v12);
            _os_log_error_impl(&_mh_execute_header, v64, v63, "Failed to fetch suspend task URL: %{public}@", v95, 0xCu);
            if (v59)
            {
            }

            if (v61)
            {
            }
          }

          objc_storeStrong(&v64, 0);
        }

        objc_storeStrong(&v66, 0);
      }

      if ((v84[3] & 1) != 0 && (v79[3] & 1) == 0)
      {
        v14 = [(BuddySuspendTask *)v93 bag];
        v15 = [(BuddyMediaServicesBag *)v14 getAppStoreMessage];
        v50 = v67;
        v16 = [v15 valueWithError:&v50];
        objc_storeStrong(&v67, v50);
        v51 = v16;

        if (v67)
        {
          v49 = _BYLoggingFacility();
          v48 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v46 = 0;
            v44 = 0;
            if (_BYIsInternalInstall())
            {
              v17 = v67;
            }

            else if (v67)
            {
              v47 = [v67 domain];
              v46 = 1;
              v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v47, [v67 code]);
              v45 = v17;
              v44 = 1;
            }

            else
            {
              v17 = 0;
            }

            sub_100071CBC(v94, v17);
            _os_log_error_impl(&_mh_execute_header, v49, v48, "Failed to fetch store message: %{public}@", v94, 0xCu);
            if (v44)
            {
            }

            if (v46)
            {
            }
          }

          objc_storeStrong(&v49, 0);
        }

        else
        {
          *(v79 + 24) = 1;
          v18 = &_dispatch_main_q;
          v37 = _NSConcreteStackBlock;
          v38 = -1073741824;
          v39 = 0;
          v40 = sub_1000F6908;
          v41 = &unk_10032B838;
          v42 = v93;
          v43 = v51;
          dispatch_async(v18, &v37);

          objc_storeStrong(&v43, 0);
          objc_storeStrong(&v42, 0);
        }

        objc_storeStrong(&v51, 0);
      }

      if (v84[3] & 1) != 0 && (v79[3])
      {
        v27 = _BYLoggingFacility();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v27;
          v24 = v26;
          sub_10006AA68(v25);
          _os_log_impl(&_mh_execute_header, v23, v24, "Suspend task preheating completed", v25, 2u);
        }

        objc_storeStrong(&v27, 0);
      }

      else
      {
        v36 = _BYLoggingFacility();
        v35 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v36;
          v20 = v35;
          sub_10006AA68(v34);
          _os_log_impl(&_mh_execute_header, v19, v20, "Failed to preheat suspend task, will retry...", v34, 2u);
        }

        objc_storeStrong(&v36, 0);
        v21 = dispatch_time(0, 10000000000);
        v22 = [(BuddySuspendTask *)v93 preheatQueue];
        v28 = _NSConcreteStackBlock;
        v29 = -1073741824;
        v30 = 0;
        v31 = sub_1000F6938;
        v32 = &unk_10032B718;
        v33[0] = v93;
        v33[1] = v91;
        dispatch_after(v21, v22, &v28);

        objc_storeStrong(v33, 0);
      }

      objc_storeStrong(&v67, 0);
      v71 = 0;
    }

    objc_storeStrong(v77, 0);
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(&v83, 8);
  }

  else
  {
    location = _BYLoggingFacility();
    v89 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v4 = location;
      v5 = v89;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v4, v5, "No further attempts remaining for preheating suspend task", buf, 2u);
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)accountWasAdded:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v14;
    v4 = v13;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Detected store account addition; attempting to preheat suspend task (if needed)", buf, 2u);
  }

  objc_storeStrong(&v14, 0);
  v5 = [(BuddySuspendTask *)v16 preheatQueue];
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000F6ABC;
  v10 = &unk_10032B0D0;
  v11 = v16;
  dispatch_async(v5, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end