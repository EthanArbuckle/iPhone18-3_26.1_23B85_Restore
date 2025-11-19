@interface AKFollowUpSynchronizer
+ (void)updateSynchronizeTimeForAccount:(id)a3 inStore:(id)a4;
+ (void)updateSynchronizeTimeNoSaveForAccount:(id)a3;
- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6;
- (BOOL)shouldSynchronizeForAccount:(id)a3;
- (BOOL)synchronizeFollowUpsForAccount:(id)a3 error:(id *)a4;
- (BOOL)synchronizeFollowUpsForAccount:(id)a3 inStore:(id)a4 error:(id *)a5;
- (id)_authController;
@end

@implementation AKFollowUpSynchronizer

- (BOOL)synchronizeFollowUpsForAccount:(id)a3 error:(id *)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18[1] = a4;
  if (!location[0])
  {
    v18[0] = _AKLogSystem();
    v17 = 16;
    if (os_log_type_enabled(v18[0], OS_LOG_TYPE_ERROR))
    {
      log = v18[0];
      v14 = v17;
      sub_10000122C(v16);
      _os_log_error_impl(&_mh_execute_header, log, v14, "AKFollowUpSynchronizer: Client provided nil account, defaulting to the primary iCloud account", v16, 2u);
    }

    objc_storeStrong(v18, 0);
    v12 = +[AKAccountManager sharedInstance];
    v4 = [(AKAccountManager *)v12 primaryiCloudAccount];
    v5 = location[0];
    location[0] = v4;
  }

  v10 = [AKAccountManager sharedInstance:location[0]];
  v9 = [(AKAccountManager *)v10 store];
  v11 = [v8 synchronizeFollowUpsForAccount:v7 inStore:? error:?];

  objc_storeStrong(location, 0);
  return v11;
}

- (BOOL)synchronizeFollowUpsForAccount:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = a5;
  if ([(AKFollowUpSynchronizer *)v30 shouldSynchronizeForAccount:location[0]])
  {
    v26 = _AKLogSystem();
    v25 = 16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      log = v26;
      type = v25;
      v18 = [location[0] username];
      v17 = +[AKAccountManager sharedInstance];
      v16 = [(AKAccountManager *)v17 altDSIDForAccount:location[0]];
      v24 = v16;
      sub_100001610(v32, v18, v24);
      _os_log_error_impl(&_mh_execute_header, log, type, "Sync for account: %{private}@ - %{private}@", v32, 0x16u);

      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v26, 0);
    v23 = objc_opt_new();
    v11 = +[AKAccountManager sharedInstance];
    v10 = [(AKAccountManager *)v11 altDSIDForAccount:location[0]];
    [v23 setAltDSID:?];

    v22 = 0;
    v12 = [(AKFollowUpSynchronizer *)v30 _authController];
    v21 = v22;
    v13 = [v12 synchronizeFollowUpItemsForContext:v23 error:&v21];
    objc_storeStrong(&v22, v21);

    if (v13)
    {
      [AKFollowUpSynchronizer updateSynchronizeTimeForAccount:location[0] inStore:v28];
      v31 = 1;
    }

    else
    {
      if (v27)
      {
        v9 = v22;
        v5 = v22;
        *v27 = v9;
      }

      v31 = 0;
    }

    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    if (v27)
    {
      v8 = [NSError ak_errorWithCode:-7064];
      v6 = v8;
      *v27 = v8;
    }

    v31 = 0;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  return v31 & 1;
}

- (id)_authController
{
  if (!self->_controller)
  {
    v2 = objc_alloc_init(AKAppleIDAuthenticationController);
    controller = self->_controller;
    self->_controller = v2;

    [(AKAppleIDAuthenticationController *)self->_controller setDelegate:self];
  }

  v4 = self->_controller;

  return v4;
}

- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = 0;
  objc_storeStrong(&v10, a6);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)shouldSynchronizeForAccount:(id)a3
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v45 = 0;
    v44 = [location[0] accountPropertyForKey:@"AKFollowUpAccountRefreshTimestamp"];
    if (v44)
    {
      v15 = +[NSDate date];
      [(NSDate *)v15 timeIntervalSinceDate:v44];
      v16 = v3;

      v43 = v16;
      v42 = _AKLogSystem();
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [NSNumber numberWithDouble:v43];
        sub_100001F64(v52, v14);
        _os_log_impl(&_mh_execute_header, v42, v41, "Last follow up refresh occured %@ seconds ago", v52, 0xCu);
      }

      objc_storeStrong(&v42, 0);
      v45 = v43 >= 86400.0;
    }

    else
    {
      v45 = 1;
    }

    v39 = 0;
    v13 = 0;
    if (!v45)
    {
      v40 = [(AKFollowUpSynchronizer *)v48 followupProvider];
      v39 = 1;
      v13 = v40 != 0;
    }

    if (v39)
    {
    }

    if (v13)
    {
      v38 = _AKLogSystem();
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v38;
        v12 = v37;
        sub_10000122C(v36);
        _os_log_impl(&_mh_execute_header, v11, v12, "Checking for sparse follow ups", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      v35 = 0;
      v10 = [(AKFollowUpSynchronizer *)v48 followupProvider];
      v33 = v35;
      v9 = [(AKFollowUpProvider *)v10 pendingFollowUpItems:&v33];
      objc_storeStrong(&v35, v33);
      v34 = v9;

      if (v35)
      {
        v32 = _AKLogSystem();
        v31 = 16;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v7 = v32;
          v8 = v31;
          sub_10000122C(v30);
          _os_log_error_impl(&_mh_execute_header, v7, v8, "Failed to fetch items, falling back to sync", v30, 2u);
        }

        objc_storeStrong(&v32, 0);
        v45 = 1;
      }

      else
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x20000000;
        v28 = 32;
        v29 = 0;
        oslog[3] = _NSConcreteStackBlock;
        v20 = -1073741824;
        v21 = 0;
        v22 = sub_100001FA4;
        v23 = &unk_1000102D8;
        v24 = &v25;
        [v34 enumerateObjectsUsingBlock:?];
        v45 = (v26[3] & 1) == 1;
        oslog[0] = _AKLogSystem();
        v18 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
        {
          if (v45)
          {
            v4 = @"YES";
          }

          else
          {
            v4 = @"NO";
          }

          sub_100001F64(v51, v4);
          _os_log_impl(&_mh_execute_header, oslog[0], v18, "Sparse followup item detected: %@", v51, 0xCu);
        }

        objc_storeStrong(oslog, 0);
        _Block_object_dispose(&v25, 8);
      }

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    v17 = _AKLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (v45)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      sub_100001F64(v50, v5);
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Will synchronize followups %@", v50, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    v49 = v45;
    v46 = 1;
    objc_storeStrong(&v44, 0);
  }

  else
  {
    v49 = 0;
    v46 = 1;
  }

  objc_storeStrong(location, 0);
  return v49;
}

+ (void)updateSynchronizeTimeForAccount:(id)a3 inStore:(id)a4
{
  v16 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  [v16 updateSynchronizeTimeNoSaveForAccount:location[0]];
  v13 = dispatch_semaphore_create(0);
  v6 = v14;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100002244;
  v11 = &unk_100010300;
  v12 = v13;
  [v6 saveAccount:v5 withCompletionHandler:?];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

+ (void)updateSynchronizeTimeNoSaveForAccount:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = _AKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001F64(v7, location[0]);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating follow up synchronization for %@", v7, 0xCu);
  }

  objc_storeStrong(&v5, 0);
  v3 = location[0];
  v4 = +[NSDate date];
  [v3 setAccountProperty:? forKey:?];

  objc_storeStrong(location, 0);
}

@end