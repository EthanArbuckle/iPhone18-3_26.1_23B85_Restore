@interface AKFollowUpSynchronizer
+ (void)updateSynchronizeTimeForAccount:(id)account inStore:(id)store;
+ (void)updateSynchronizeTimeNoSaveForAccount:(id)account;
- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context;
- (BOOL)shouldSynchronizeForAccount:(id)account;
- (BOOL)synchronizeFollowUpsForAccount:(id)account error:(id *)error;
- (BOOL)synchronizeFollowUpsForAccount:(id)account inStore:(id)store error:(id *)error;
- (id)_authController;
@end

@implementation AKFollowUpSynchronizer

- (BOOL)synchronizeFollowUpsForAccount:(id)account error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v18[1] = error;
  if (!location[0])
  {
    v18[0] = _AKLogSystem();
    v17 = 16;
    if (os_log_type_enabled(v18[0], OS_LOG_TYPE_ERROR))
    {
      log = v18[0];
      v14 = v17;
      sub_29C8728F4(v16);
      _os_log_error_impl(&dword_29C871000, log, v14, "AKFollowUpSynchronizer: Client provided nil account, defaulting to the primary iCloud account", v16, 2u);
    }

    objc_storeStrong(v18, 0);
    mEMORY[0x29EDBFB38] = [MEMORY[0x29EDBFB38] sharedInstance];
    primaryiCloudAccount = [mEMORY[0x29EDBFB38] primaryiCloudAccount];
    v5 = location[0];
    location[0] = primaryiCloudAccount;
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](mEMORY[0x29EDBFB38]);
  }

  mEMORY[0x29EDBFB38]2 = [MEMORY[0x29EDBFB38] sharedInstance];
  store = [mEMORY[0x29EDBFB38]2 store];
  v11 = [v8 synchronizeFollowUpsForAccount:v7 inStore:? error:?];
  MEMORY[0x29EDC9740](store);
  MEMORY[0x29EDC9740](mEMORY[0x29EDBFB38]2);
  objc_storeStrong(location, 0);
  return v11;
}

- (BOOL)synchronizeFollowUpsForAccount:(id)account inStore:(id)store error:(id *)error
{
  v33 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v28 = 0;
  objc_storeStrong(&v28, store);
  errorCopy = error;
  if ([(AKFollowUpSynchronizer *)selfCopy shouldSynchronizeForAccount:location[0]])
  {
    v26 = _AKLogSystem();
    v25 = 16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      log = v26;
      type = v25;
      username = [location[0] username];
      mEMORY[0x29EDBFB38] = [MEMORY[0x29EDBFB38] sharedInstance];
      v16 = [mEMORY[0x29EDBFB38] altDSIDForAccount:location[0]];
      v24 = MEMORY[0x29EDC9748](v16);
      sub_29C876360(v32, username, v24);
      _os_log_error_impl(&dword_29C871000, log, type, "Sync for account: %{private}@ - %{private}@", v32, 0x16u);
      MEMORY[0x29EDC9740](v16);
      MEMORY[0x29EDC9740](mEMORY[0x29EDBFB38]);
      MEMORY[0x29EDC9740](username);
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v26, 0);
    v23 = objc_opt_new();
    mEMORY[0x29EDBFB38]2 = [MEMORY[0x29EDBFB38] sharedInstance];
    v10 = [mEMORY[0x29EDBFB38]2 altDSIDForAccount:location[0]];
    [v23 setAltDSID:?];
    MEMORY[0x29EDC9740](v10);
    MEMORY[0x29EDC9740](mEMORY[0x29EDBFB38]2);
    v22 = 0;
    _authController = [(AKFollowUpSynchronizer *)selfCopy _authController];
    v21 = v22;
    v13 = [_authController synchronizeFollowUpItemsForContext:v23 error:&v21];
    objc_storeStrong(&v22, v21);
    MEMORY[0x29EDC9740](_authController);
    if (v13)
    {
      [AKFollowUpSynchronizer updateSynchronizeTimeForAccount:location[0] inStore:v28];
      v31 = 1;
    }

    else
    {
      if (errorCopy)
      {
        v9 = v22;
        v5 = v22;
        *errorCopy = v9;
      }

      v31 = 0;
    }

    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    if (errorCopy)
    {
      v8 = [MEMORY[0x29EDB9FA0] ak_errorWithCode:-7064];
      v6 = v8;
      *errorCopy = v8;
    }

    v31 = 0;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x29EDCA608];
  return v31 & 1;
}

- (id)_authController
{
  if (!self->_controller)
  {
    v2 = objc_alloc_init(MEMORY[0x29EDBFB50]);
    controller = self->_controller;
    self->_controller = v2;
    MEMORY[0x29EDC9740](controller);
    [(AKAppleIDAuthenticationController *)self->_controller setDelegate:self];
  }

  v4 = self->_controller;

  return v4;
}

- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v12 = 0;
  objc_storeStrong(&v12, results);
  v11 = 0;
  objc_storeStrong(&v11, error);
  v10 = 0;
  objc_storeStrong(&v10, context);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)shouldSynchronizeForAccount:(id)account
{
  v53 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  if (location[0])
  {
    v45 = 0;
    v44 = [location[0] accountPropertyForKey:@"AKFollowUpAccountRefreshTimestamp"];
    if (v44)
    {
      date = [MEMORY[0x29EDB8DB0] date];
      [date timeIntervalSinceDate:v44];
      v16 = v3;
      MEMORY[0x29EDC9740](date);
      v43 = v16;
      v42 = _AKLogSystem();
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [MEMORY[0x29EDBA070] numberWithDouble:v43];
        sub_29C872030(v52, v14);
        _os_log_impl(&dword_29C871000, v42, v41, "Last follow up refresh occured %@ seconds ago", v52, 0xCu);
        MEMORY[0x29EDC9740](v14);
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
      followupProvider = [(AKFollowUpSynchronizer *)selfCopy followupProvider];
      v39 = 1;
      v13 = followupProvider != 0;
    }

    if (v39)
    {
      MEMORY[0x29EDC9740](followupProvider);
    }

    if (v13)
    {
      v38 = _AKLogSystem();
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v38;
        v12 = v37;
        sub_29C8728F4(v36);
        _os_log_impl(&dword_29C871000, v11, v12, "Checking for sparse follow ups", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      v35 = 0;
      followupProvider2 = [(AKFollowUpSynchronizer *)selfCopy followupProvider];
      v33 = v35;
      v9 = [(AKFollowUpProvider *)followupProvider2 pendingFollowUpItems:&v33];
      objc_storeStrong(&v35, v33);
      v34 = v9;
      MEMORY[0x29EDC9740](followupProvider2);
      if (v35)
      {
        v32 = _AKLogSystem();
        v31 = 16;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v7 = v32;
          v8 = v31;
          sub_29C8728F4(v30);
          _os_log_error_impl(&dword_29C871000, v7, v8, "Failed to fetch items, falling back to sync", v30, 2u);
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
        oslog[3] = MEMORY[0x29EDCA5F8];
        v20 = -1073741824;
        v21 = 0;
        v22 = sub_29C876CB4;
        v23 = &unk_29F32B4D0;
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

          sub_29C872030(v51, v4);
          _os_log_impl(&dword_29C871000, oslog[0], v18, "Sparse followup item detected: %@", v51, 0xCu);
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

      sub_29C872030(v50, v5);
      _os_log_impl(&dword_29C871000, v17, OS_LOG_TYPE_DEFAULT, "Will synchronize followups %@", v50, 0xCu);
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
  *MEMORY[0x29EDCA608];
  return v49;
}

+ (void)updateSynchronizeTimeForAccount:(id)account inStore:(id)store
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v14 = 0;
  objc_storeStrong(&v14, store);
  [selfCopy updateSynchronizeTimeNoSaveForAccount:location[0]];
  v13 = dispatch_semaphore_create(0);
  v6 = v14;
  v5 = location[0];
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_29C876F54;
  v11 = &unk_29F32B4F8;
  v12 = MEMORY[0x29EDC9748](v13);
  [v6 saveAccount:v5 withCompletionHandler:?];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

+ (void)updateSynchronizeTimeNoSaveForAccount:(id)account
{
  v8 = *MEMORY[0x29EDCA608];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = _AKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_29C872030(v7, location[0]);
    _os_log_impl(&dword_29C871000, v5, OS_LOG_TYPE_DEFAULT, "Updating follow up synchronization for %@", v7, 0xCu);
  }

  objc_storeStrong(&v5, 0);
  v3 = location[0];
  date = [MEMORY[0x29EDB8DB0] date];
  [v3 setAccountProperty:? forKey:?];
  MEMORY[0x29EDC9740](date);
  objc_storeStrong(location, 0);
  *MEMORY[0x29EDCA608];
}

@end