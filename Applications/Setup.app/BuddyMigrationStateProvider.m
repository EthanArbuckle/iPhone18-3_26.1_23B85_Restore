@interface BuddyMigrationStateProvider
+ (id)validateAndResolveMigrationStateUsingPreferences:(id)a3 didCompleteInitialRun:(BOOL)a4;
@end

@implementation BuddyMigrationStateProvider

+ (id)validateAndResolveMigrationStateUsingPreferences:(id)a3 didCompleteInitialRun:(BOOL)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v24 = [BuddyMigrationState loadFromPreferences:location[0]];
  if (v24)
  {
    if ([v24 intent] || !v25)
    {
      v9 = +[BYDeviceConfiguration currentConfiguration];
      v16 = [v9 buildVersion];

      v10 = [v24 productBuild];
      v11 = [v10 isEqualToString:v16] ^ 1;

      if (v11)
      {
        v15 = _BYLoggingFacility();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v12 = [v24 productBuild];
          sub_100078180(v28, v12, v16);
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "MigrationStateProvider expected update to %@, but currently running %@!", v28, 0x16u);
        }

        objc_storeStrong(&v15, 0);
        [BuddyMigrationState removeFromPreferences:location[0]];
        v27 = 0;
        v20 = 1;
      }

      else
      {
        v20 = 0;
      }

      objc_storeStrong(&v16, 0);
      if (!v20)
      {
        v27 = v24;
        v20 = 1;
      }
    }

    else
    {
      v19 = _BYLoggingFacility();
      v18 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v7 = v19;
        v8 = v18;
        sub_10006AA68(v17);
        _os_log_error_impl(&_mh_execute_header, v7, v8, "Found stale migration state for target device, but already completed initial run! Removing and ignoring stale state.", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      [BuddyMigrationState removeFromPreferences:location[0]];
      v27 = 0;
      v20 = 1;
    }
  }

  else
  {
    oslog = _BYLoggingFacility();
    v22 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v5 = oslog;
      v6 = v22;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "No migration state found on disk!", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [BuddyMigrationState removeFromPreferences:location[0]];
    v27 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  v13 = v27;

  return v13;
}

@end