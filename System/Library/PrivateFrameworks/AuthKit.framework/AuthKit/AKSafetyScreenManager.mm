@interface AKSafetyScreenManager
- (AKSafetyScreenManager)init;
- (AKSafetyScreenManager)initWithAccountManager:(id)manager;
- (BOOL)_hasSeenSafetyScreenForAccount:(id)account;
- (BOOL)_safetyScreenEligibilityForAccount:(id)account;
- (BOOL)shouldShowSafetyScreenForAccount:(id)account;
- (void)_setSafetyScreenSeen:(BOOL)seen forAccount:(id)account;
- (void)markSafetyScreenSeenForAccount:(id)account;
@end

@implementation AKSafetyScreenManager

- (AKSafetyScreenManager)init
{
  selfCopy = self;
  v4 = +[AKAccountManager sharedInstance];
  selfCopy = 0;
  selfCopy = [(AKSafetyScreenManager *)self initWithAccountManager:?];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKSafetyScreenManager)initWithAccountManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKSafetyScreenManager;
  v6 = [(AKSafetyScreenManager *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_accountManager, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)markSafetyScreenSeenForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  [(AKSafetyScreenManager *)selfCopy _setSafetyScreenSeen:1 forAccount:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_setSafetyScreenSeen:(BOOL)seen forAccount:(id)account
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  seenCopy = seen;
  location = 0;
  objc_storeStrong(&location, account);
  v8 = location;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:seenCopy];
  [v8 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v7);
  v13 = 0;
  accountManager = selfCopy->_accountManager;
  v12 = 0;
  v6 = [(AKAccountManager *)accountManager saveAccount:location error:&v12];
  objc_storeStrong(&v13, v12);
  if (v6)
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if (seenCopy)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v18, v5);
      _os_log_debug_impl(&dword_193225000, v9, OS_LOG_TYPE_DEBUG, "Successfully saved account with safety screen seen property: %@", v18, 0xCu);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v19, v13);
      _os_log_error_impl(&dword_193225000, v11, v10, "Failed to save account after setting safety screen seen property: %@", v19, 0xCu);
    }

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)shouldShowSafetyScreenForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  LOBYTE(v4) = 0;
  if ([(AKSafetyScreenManager *)selfCopy _safetyScreenEligibilityForAccount:location[0]])
  {
    v4 = ![(AKSafetyScreenManager *)selfCopy _hasSeenSafetyScreenForAccount:location[0]];
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)_safetyScreenEligibilityForAccount:(id)account
{
  v27 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v21 = [(AKAccountManager *)selfCopy->_accountManager isEligibleForSafetyScreenForAccount:location[0]];
  if (v21)
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      if (v21)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v26, v3);
      _os_log_debug_impl(&dword_193225000, v20, v19, "Safety screen eligibility for account: %@ (source: direct property)", v26, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    v24 = v21;
    v18 = 1;
  }

  else
  {
    v17 = [(AKAccountManager *)selfCopy->_accountManager additionalInfoForAccount:location[0]];
    v8 = objc_opt_class();
    v9 = [v17 objectForKeyedSubscript:@"isEligibleForSafetyScreen"];
    v16 = _AKSafeCast_4(v8, v9);
    MEMORY[0x1E69E5920](v9);
    if (v16)
    {
      bOOLValue = [v16 BOOLValue];
      oslog = _AKLogSystem();
      v13 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        if (bOOLValue)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        __os_log_helper_16_2_1_8_64(v25, v4);
        _os_log_debug_impl(&dword_193225000, oslog, v13, "Safety screen eligibility for account: %@ (source: additionalInfo)", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v24 = bOOLValue & 1;
      v18 = 1;
    }

    else
    {
      v12 = _AKLogSystem();
      v11 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v6 = v12;
        v7 = v11;
        __os_log_helper_16_0_0(v10);
        _os_log_debug_impl(&dword_193225000, v6, v7, "Safety screen eligibility for account: NO (not found)", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
      v24 = 0;
      v18 = 1;
    }

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v24 & 1;
}

- (BOOL)_hasSeenSafetyScreenForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"safetyScreenSeen"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

@end