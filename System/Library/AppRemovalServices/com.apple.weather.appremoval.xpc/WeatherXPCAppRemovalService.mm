@interface WeatherXPCAppRemovalService
- (id)appContainerPath;
- (id)deleteAllFilesInDirectory:(id)a3 except:(id)a4;
- (id)deleteAllUserDefaults;
- (id)deleteNanoUserDefaults;
- (id)removeUserDefaults:(id)a3 container:(id)a4 doNanoSync:(BOOL)a5;
- (void)removeAppWithReply:(id)a3;
@end

@implementation WeatherXPCAppRemovalService

- (void)removeAppWithReply:(id)a3
{
  v4 = a3;
  v5 = os_log_xpcAppRemoval();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting AppRemoval.", buf, 2u);
  }

  v6 = [(WeatherXPCAppRemovalService *)self deleteAllUserDefaults];
  if (v6 || ([(WeatherXPCAppRemovalService *)self deleteNanoUserDefaults], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = os_log_xpcAppRemoval();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100003E78();
    }

    v4[2](v4, v7);
  }

  else
  {
    v9 = os_log_xpcAppRemoval();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Now decommissioning the weather daemon.", buf, 2u);
    }

    v7 = objc_alloc_init(WeatherDaemonDecommissioner);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001984;
    v10[3] = &unk_100008310;
    v10[4] = self;
    v11 = v4;
    [(WeatherDaemonDecommissioner *)v7 decommissionDaemonWithCompletion:v10];
  }
}

- (id)removeUserDefaults:(id)a3 container:(id)a4 doNanoSync:(BOOL)a5
{
  v5 = a5;
  applicationID = a3;
  v7 = a4;
  v8 = os_log_xpcAppRemoval();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  v34 = v7;
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v50 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Container is %@.", buf, 0xCu);
    }

    v10 = _CFPreferencesCopyKeyListWithContainer();
    if (v10)
    {
      v33 = v5;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v11 = v10;
      v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v37;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v36 + 1) + 8 * i);
            v17 = os_log_xpcAppRemoval();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing Default key: %@", buf, 0xCu);
            }

            _CFPreferencesSetValueWithContainer();
          }

          v13 = [(__CFArray *)v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
        }

        while (v13);
      }

      if (!_CFPreferencesSynchronizeWithContainer())
      {
        v44[0] = NSLocalizedDescriptionKey;
        v44[1] = @"BundleId";
        v45[0] = @"Unable to synchronize User Defaults for AppRemoval.";
        v45[1] = @"com.apple.weather";
        v18 = v45;
        v19 = v44;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

LABEL_30:
    v27 = 0;
    v11 = 0;
    goto LABEL_35;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Container is nil.", buf, 2u);
  }

  v20 = CFPreferencesCopyKeyList(applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (!v20)
  {
    goto LABEL_30;
  }

  v33 = v5;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v20;
  v21 = [(__CFArray *)v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v11);
        }

        v25 = *(*(&v40 + 1) + 8 * j);
        v26 = os_log_xpcAppRemoval();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Removing Default key: %@", buf, 0xCu);
        }
      }

      v22 = [(__CFArray *)v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v22);
  }

  CFPreferencesSetMultiple(0, v11, applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (!CFPreferencesSynchronize(applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v47[0] = NSLocalizedDescriptionKey;
    v47[1] = @"BundleId";
    v48[0] = @"Unable to synchronize User Defaults for AppRemoval.";
    v48[1] = @"com.apple.weather";
    v18 = v48;
    v19 = v47;
LABEL_32:
    v29 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:2];
    v27 = [NSError errorWithDomain:@"com.apple.weather.appremoval.errorDomain" code:-1 userInfo:v29];
    v28 = v33;

    if (v27)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_29:
  v27 = 0;
  v28 = v33;
LABEL_33:
  if (v28)
  {
    v30 = objc_opt_new();
    v31 = [NSSet setWithArray:v11];
    [v30 synchronizeUserDefaultsDomain:applicationID keys:v31];

    v27 = 0;
  }

LABEL_35:

  return v27;
}

- (id)deleteAllUserDefaults
{
  v3 = os_log_xpcAppRemoval();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = @"group.com.apple.weather";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing User Defaults for %@", buf, 0xCu);
  }

  v4 = [(WeatherXPCAppRemovalService *)self appContainerPath];
  v5 = os_log_xpcAppRemoval();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GroupContainer URL: %@", buf, 0xCu);
  }

  if (!v4)
  {
    v11 = os_log_xpcAppRemoval();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000406C(v11);
    }

    v13[0] = @"BundleId";
    v13[1] = @"PrefsGroupId";
    v14[0] = @"com.apple.weather";
    v14[1] = @"group.com.apple.weather";
    v13[2] = NSLocalizedFailureReasonErrorKey;
    v14[2] = @"Group container URL was nil.";
    v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    v9 = [NSError errorWithDomain:@"com.apple.weather.appremoval.errorDomain" code:4 userInfo:v10];
    goto LABEL_16;
  }

  [NSUserActivity deleteAllSavedUserActivitiesWithCompletionHandler:&stru_100008330];
  v6 = [(__CFString *)v4 path];
  v7 = [(WeatherXPCAppRemovalService *)self removeUserDefaults:@"group.com.apple.weather" container:v6 doNanoSync:0];

  if (v7)
  {
    v8 = os_log_xpcAppRemoval();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100003F9C();
    }
  }

  v9 = [(WeatherXPCAppRemovalService *)self removeUserDefaults:@"com.apple.weather.sensitive" container:0 doNanoSync:0];

  if (v9)
  {
    v10 = os_log_xpcAppRemoval();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100004004();
    }

LABEL_16:
  }

  return v9;
}

- (id)appContainerPath
{
  if (qword_10000C838 != -1)
  {
    sub_1000040B0();
  }

  v3 = qword_10000C830;

  return v3;
}

- (id)deleteNanoUserDefaults
{
  v3 = os_log_xpcAppRemoval();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = @"com.apple.nanoweatherprefs";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing Nano Defaults for: %@", buf, 0xCu);
  }

  v4 = [(WeatherXPCAppRemovalService *)self removeUserDefaults:@"com.apple.nanoweatherprefs" container:0 doNanoSync:1];
  if (!v4)
  {
    v5 = +[NRPairedDeviceRegistry sharedInstance];
    v6 = [v5 getPairedDevices];

    v27 = objc_alloc_init(NPSManager);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v6;
    v31 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    v4 = 0;
    if (v31)
    {
      v29 = NRDevicePropertyPairingID;
      v30 = *v40;
      do
      {
        v7 = 0;
        do
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v39 + 1) + 8 * v7);
          v9 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanoweatherprefs" pairedDevice:v8];
          if (v9)
          {
            v33 = v7;
            v34 = v4;
            v10 = [v8 valueForProperty:v29];
            v11 = os_log_xpcAppRemoval();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v10 UUIDString];
              *buf = 138412290;
              v48 = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing Nano Defaults for device: %@", buf, 0xCu);
            }

            v32 = v10;

            v13 = [v9 dictionaryRepresentation];
            v14 = [v13 allKeys];

            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v35 objects:v45 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v36;
              do
              {
                for (i = 0; i != v17; i = i + 1)
                {
                  if (*v36 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v35 + 1) + 8 * i);
                  v21 = os_log_xpcAppRemoval();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v48 = v20;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing device specific Nano Default key: %@", buf, 0xCu);
                  }

                  [v9 removeObjectForKey:v20];
                }

                v17 = [v15 countByEnumeratingWithState:&v35 objects:v45 count:16];
              }

              while (v17);
            }

            v22 = [v9 synchronize];

            if (v22)
            {
              v23 = os_log_xpcAppRemoval();
              v24 = v32;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v48 = v22;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Error synchronizing NanoDomain. error=%@", buf, 0xCu);
              }

              v43[0] = NSLocalizedDescriptionKey;
              v43[1] = @"BundleId";
              v44[0] = @"Unable to synchronize device specific Nano defaults for AppRemoval.";
              v44[1] = @"com.apple.weather";
              v25 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
              v4 = [NSError errorWithDomain:@"com.apple.weather.appremoval.errorDomain" code:-1 userInfo:v25];
            }

            else
            {
              v25 = [NSSet setWithArray:v15];
              [v27 synchronizeNanoDomain:@"com.apple.nanoweatherprefs" keys:v25];
              v4 = 0;
              v24 = v32;
            }

            v7 = v33;
          }

          v7 = v7 + 1;
        }

        while (v7 != v31);
        v31 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v31);
    }
  }

  return v4;
}

- (id)deleteAllFilesInDirectory:(id)a3 except:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = os_log_xpcAppRemoval();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 path];
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing files in directory: %@", buf, 0xCu);
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v5 path];
  v11 = [v9 enumeratorAtPath:v10];
  v12 = [v11 nextObject];
  if (v12)
  {
    v14 = v12;
    v25 = 0;
    *&v13 = 138412546;
    v23 = v13;
    do
    {
      v15 = v14;
      while ([v6 containsObject:{v15, v23}])
      {
        v16 = os_log_xpcAppRemoval();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping exception %@.", buf, 0xCu);
        }

        [v11 skipDescendants];
        v17 = [v11 nextObject];

        v15 = v17;
        if (!v17)
        {
          goto LABEL_20;
        }
      }

      v24 = v5;
      v18 = [v10 stringByAppendingPathComponent:v15];
      v26 = 0;
      [v9 removeItemAtPath:v18 error:&v26];
      v19 = v26;
      v20 = os_log_xpcAppRemoval();
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = v23;
          v28 = v18;
          v29 = 2112;
          v30 = v25;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error encountered removing item: %@. Error: %@", buf, 0x16u);
        }

        v21 = v25;
        v25 = v19;
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removed item: %@", buf, 0xCu);
      }

      v14 = [v11 nextObject];

      v5 = v24;
    }

    while (v14);
  }

  else
  {
    v25 = 0;
  }

LABEL_20:

  return v25;
}

@end