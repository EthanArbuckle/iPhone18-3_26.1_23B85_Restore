@interface BuddySuspendTask
+ (BOOL)hasSuspendTaskWithBuddyPreferencesExcludedFromBackup:(id)backup;
- (BuddySuspendTask)init;
- (void)_attemptPreheat:(unint64_t)preheat;
- (void)accountWasAdded:(id)added;
- (void)preheat;
@end

@implementation BuddySuspendTask

- (BuddySuspendTask)init
{
  v10.receiver = self;
  v10.super_class = BuddySuspendTask;
  v2 = [(BuddySuspendTask *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Suspend Task Preheat Queue", 0);
    preheatQueue = v2->_preheatQueue;
    v2->_preheatQueue = v3;

    v5 = [ACMonitoredAccountStore alloc];
    v6 = [NSSet setWithObject:ACAccountTypeIdentifieriTunesStore];
    v7 = [v5 initWithAccountTypes:v6 delegate:v2];
    monitoredAccountStore = v2->_monitoredAccountStore;
    v2->_monitoredAccountStore = v7;

    [(ACMonitoredAccountStore *)v2->_monitoredAccountStore registerWithCompletion:&stru_28B88];
  }

  return v2;
}

+ (BOOL)hasSuspendTaskWithBuddyPreferencesExcludedFromBackup:(id)backup
{
  backupCopy = backup;
  v4 = +[NSLocale currentLocale];
  countryCode = [v4 countryCode];
  v6 = [countryCode isEqualToString:@"RU"];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [backupCopy objectForKey:@"AppStorePresented" includeCache:0];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue & 1) != 0 || (+[BYManagedAppleIDBootstrap isMultiUser](BYManagedAppleIDBootstrap, "isMultiUser") & 1) != 0 || (+[MCProfileConnection sharedConnection](MCProfileConnection, "sharedConnection"), v9 = objc_claimAutoreleasedReturnValue(), [v9 skipSetupKeys], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", kMCCCSkipAppStore), v10, v9, (v11))
  {
LABEL_5:
    v12 = 0;
  }

  else
  {
    v14 = +[MCProfileConnection sharedConnection];
    v12 = [v14 effectiveBoolValueForSetting:MCFeatureAppInstallationAllowed] != 2;
  }

  return v12;
}

- (void)preheat
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [(BuddySuspendTask *)self bag];

  if (!v3)
  {
    v4 = objc_alloc_init(BuddyMediaServicesBag);
    [(BuddySuspendTask *)self setBag:v4];
  }

  launchURL = [(BuddySuspendTask *)self launchURL];
  if (!launchURL || (v6 = launchURL, [(BuddySuspendTask *)self message], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Preheating suspend task...", buf, 2u);
    }
  }

  preheatQueue = [(BuddySuspendTask *)self preheatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8248;
  block[3] = &unk_28BB0;
  block[4] = self;
  dispatch_async(preheatQueue, block);
}

- (void)_attemptPreheat:(unint64_t)preheat
{
  preheatQueue = [(BuddySuspendTask *)self preheatQueue];
  dispatch_assert_queue_V2(preheatQueue);

  if (preheat)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_88C8;
    block[3] = &unk_28BD8;
    block[4] = self;
    block[5] = &v38;
    block[6] = &v34;
    dispatch_sync(&_dispatch_main_q, block);
    if (*(v39 + 24) == 1 && (v35[3] & 1) != 0)
    {
      goto LABEL_33;
    }

    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Attempting to preheat suspend task...", buf, 2u);
    }

    if (v39[3])
    {
      v7 = 0;
    }

    else
    {
      v9 = [(BuddySuspendTask *)self bag];
      getAppStoreURL = [v9 getAppStoreURL];
      v32 = 0;
      v11 = [getAppStoreURL valueWithError:&v32];
      v7 = v32;

      if (v7 || !v11)
      {
        v12 = _BYLoggingFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          if (_BYIsInternalInstall())
          {
            v22 = 0;
            v23 = v7;
          }

          else if (v7)
          {
            getAppStoreURL = [v7 domain];
            v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", getAppStoreURL, [v7 code]);
            v22 = 1;
          }

          else
          {
            v22 = 0;
            v23 = 0;
          }

          *buf = 138543362;
          v43 = v23;
          _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to fetch suspend task URL: %{public}@", buf, 0xCu);
          if (v22)
          {
          }
        }
      }

      else
      {
        *(v39 + 24) = 1;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_893C;
        v30[3] = &unk_28C00;
        v30[4] = self;
        v31 = v11;
        dispatch_async(&_dispatch_main_q, v30);
      }

      if ((v39[3] & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (v35[3])
    {
      v13 = v7;
    }

    else
    {
      domain = [(BuddySuspendTask *)self bag];
      getAppStoreMessage = [domain getAppStoreMessage];
      v29 = v7;
      v16 = [getAppStoreMessage valueWithError:&v29];
      v13 = v29;

      if (v13)
      {
        v17 = _BYLoggingFacility();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v24 = _BYIsInternalInstall();
          v25 = v13;
          if ((v24 & 1) == 0)
          {
            domain = [v13 domain];
            v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v13 code]);
          }

          *buf = 138543362;
          v43 = v25;
          _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Failed to fetch store message: %{public}@", buf, 0xCu);
          if ((v24 & 1) == 0)
          {
          }
        }
      }

      else
      {
        *(v35 + 24) = 1;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_8944;
        v27[3] = &unk_28C00;
        v27[4] = self;
        v28 = v16;
        dispatch_async(&_dispatch_main_q, v27);
      }

      v7 = v13;
      if ((v39[3] & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (v35[3])
    {
      v18 = _BYLoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Suspend task preheating completed", buf, 2u);
      }

      v7 = v13;
LABEL_32:

LABEL_33:
      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v38, 8);
      return;
    }

    v7 = v13;
LABEL_29:
    v19 = _BYLoggingFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Failed to preheat suspend task, will retry...", buf, 2u);
    }

    v20 = dispatch_time(0, 10000000000);
    preheatQueue2 = [(BuddySuspendTask *)self preheatQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_894C;
    v26[3] = &unk_28C28;
    v26[4] = self;
    v26[5] = preheat;
    dispatch_after(v20, preheatQueue2, v26);

    goto LABEL_32;
  }

  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_18F28(v8);
  }
}

- (void)accountWasAdded:(id)added
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Detected store account addition; attempting to preheat suspend task (if needed)", buf, 2u);
  }

  preheatQueue = [(BuddySuspendTask *)self preheatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8A2C;
  block[3] = &unk_28BB0;
  block[4] = self;
  dispatch_async(preheatQueue, block);
}

@end