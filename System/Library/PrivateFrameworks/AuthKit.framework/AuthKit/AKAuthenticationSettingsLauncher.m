@interface AKAuthenticationSettingsLauncher
- (BOOL)launchSettingsForContext:(id)a3 withCheckinID:(id)a4;
- (id)_settingsPaneIDForContext:(id)a3;
@end

@implementation AKAuthenticationSettingsLauncher

- (BOOL)launchSettingsForContext:(id)a3 withCheckinID:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = +[AKAccountManager sharedInstance];
  v15 = [v29 UUIDString];
  v27 = [NSString stringWithFormat:@"prefs:notifyAuthKit=true&authKitContextID=%@", v15];
  _objc_release(v15);
  v26 = [(AKAuthenticationSettingsLauncher *)v31 _settingsPaneIDForContext:location[0]];
  v25 = [location[0] username];
  v24 = [v28 iCloudAccountForAppleID:v25];
  if (v24)
  {
    if ([v28 isPrimaryiCloudAccount:v24])
    {
      v23 = _AKLogSystem();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v35, v25);
        _os_log_impl(&_mh_execute_header, v23, v22, "Overriding Settings landing spot because the Apple ID %@ is used for iCloud.", v35, 0xCu);
      }

      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v26, @"APPLE_ACCOUNT");
    }

    else if ([v26 isEqualToString:@"APPLE_ACCOUNT"])
    {
      v13 = [v24 identifier];
      v4 = [NSString stringWithFormat:@"ACCOUNTS_AND_PASSWORDS&path=%@", v13];
      v5 = v26;
      v26 = v4;
      _objc_release(v5);
      _objc_release(v13);
    }
  }

  if (v26)
  {
    v11 = v27;
    v12 = [NSString stringWithFormat:@"&root=%@", v26];
    v6 = [v11 stringByAppendingString:?];
    v7 = v27;
    v27 = v6;
    _objc_release(v7);
    _objc_release(v12);
  }

  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v34, v27);
    _os_log_impl(&_mh_execute_header, v21, v20, "Opening internal URL: %@", v34, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  v19 = 0;
  v10 = +[LSApplicationWorkspace defaultWorkspace];
  v9 = [NSURL URLWithString:v27];
  v18 = v19;
  [v10 openSensitiveURL:? withOptions:? error:?];
  objc_storeStrong(&v19, v18);
  _objc_release(v9);
  _objc_release(v10);
  if (v19)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v33, v19);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error launching Preferences: %@", v33, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v32 = 0;
    v17 = 1;
  }

  else
  {
    v32 = 1;
    v17 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  return v32 & 1;
}

- (id)_settingsPaneIDForContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] serviceType];
  if (v6 == 1)
  {
    v10 = _objc_retain(@"APPLE_ACCOUNT");
    v8 = 1;
  }

  else if (v6 == 2)
  {
    v10 = _objc_retain(@"STORE");
    v8 = 1;
  }

  else if (v6 == 4)
  {
    v10 = _objc_retain(@"MESSAGES");
    v8 = 1;
  }

  else if (v6 == 5)
  {
    v10 = _objc_retain(@"FACETIME");
    v8 = 1;
  }

  else if (v6 == 6)
  {
    v10 = _objc_retain(@"GAMECENTER");
    v8 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [location[0] serviceType]);
      sub_1000194D4(v11, v5);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Invalid Apple ID service type %@. Falling back to iCloud.", v11, 0xCu);
      _objc_release(v5);
    }

    objc_storeStrong(&oslog, 0);
    v10 = _objc_retain(@"APPLE_ACCOUNT");
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

@end