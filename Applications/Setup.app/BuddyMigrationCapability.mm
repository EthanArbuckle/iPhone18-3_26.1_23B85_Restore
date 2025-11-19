@interface BuddyMigrationCapability
+ (BOOL)_currentHardwareSupportsMigration;
+ (BOOL)_supportsMigrationFromProductVersion:(id)a3 toProductVersion:(id)a4;
+ (BOOL)currentDeviceShouldOfferMigration;
+ (BOOL)isMigrationSupportedFromDeviceClass:(id)a3 toDeviceClass:(id)a4 reason:(id *)a5;
+ (BOOL)sourceDeviceSupportsMigration:(id)a3 productVersion:(id)a4 deviceClass:(id)a5 softwareUpdateRequired:(BOOL *)a6 reason:(id *)a7;
+ (BOOL)supportsMigrationFromProductVersion:(id)a3 toProductVersion:(id)a4 toProductVersionFetchedFromCurrentProductVersion:(BOOL)a5;
+ (int64_t)_compareProductVersion:(id)a3 toProductVersion:(id)a4;
@end

@implementation BuddyMigrationCapability

+ (BOOL)currentDeviceShouldOfferMigration
{
  location[2] = a1;
  location[1] = a2;
  if (BYSetupAssistantHasCompletedInitialRun())
  {
    return 0;
  }

  if (+[BuddyMigrationCapability _currentHardwareSupportsMigration])
  {
    v4 = +[MCProfileConnection sharedConnection];
    v5 = [v4 activationRecordIndicatesCloudConfigurationIsAvailable];

    if (v5)
    {
      oslog = _BYLoggingFacility();
      v24 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = oslog;
        v7 = v24;
        sub_10006AA68(v23);
        _os_log_impl(&_mh_execute_header, v6, v7, "Current device is enrolled in DEP; not offering migration", v23, 2u);
      }

      objc_storeStrong(&oslog, 0);
      return 0;
    }

    else
    {
      v8 = +[BuddyCloudConfigManager sharedManager];
      v9 = [v8 cloudConfigWantsToSkipControllerClass:objc_opt_class()];

      if (v9)
      {
        v22 = _BYLoggingFacility();
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v22;
          v11 = v21;
          sub_10006AA68(v20);
          _os_log_impl(&_mh_execute_header, v10, v11, "Current device skips Quick Start via cloud configuration; not offering migration", v20, 2u);
        }

        objc_storeStrong(&v22, 0);
        return 0;
      }

      else
      {
        v12 = +[BuddyCloudConfigManager sharedManager];
        v13 = [v12 cloudConfigWantsToSkipControllerClass:objc_opt_class()];

        if (v13)
        {
          v19 = _BYLoggingFacility();
          v18 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v19;
            v15 = v18;
            sub_10006AA68(v17);
            _os_log_impl(&_mh_execute_header, v14, v15, "Current device skips migration via cloud configuration; not offering migration", v17, 2u);
          }

          objc_storeStrong(&v19, 0);
          return 0;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  else
  {
    location[0] = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = location[0];
      v3 = v27;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Current hardware does not support migration; not offering migration", buf, 2u);
    }

    objc_storeStrong(location, 0);
    return 0;
  }
}

+ (BOOL)sourceDeviceSupportsMigration:(id)a3 productVersion:(id)a4 deviceClass:(id)a5 softwareUpdateRequired:(BOOL *)a6 reason:(id *)a7
{
  v57 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v55 = 0;
  objc_storeStrong(&v55, a4);
  v54 = 0;
  objc_storeStrong(&v54, a5);
  v53 = a6;
  v52 = a7;
  v11 = [location[0] supportsDeviceToDeviceMigration];
  LOBYTE(a6) = [v11 BOOLValue] ^ 1;

  if (a6)
  {
    v51 = _BYLoggingFacility();
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v51;
      v13 = v50;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v12, v13, "Source device does not support migration; not offering migration", buf, 2u);
    }

    objc_storeStrong(&v51, 0);
    if (v52)
    {
      v14 = @"not supported";
      *v52 = v14;
    }

    v58 = 0;
    v48 = 1;
  }

  else
  {
    v15 = [location[0] deviceToDeviceMigrationVersion];
    v16 = [NSNumber numberWithUnsignedInt:SASProximityDeviceToDeviceCurrentVersion];
    v17 = [v15 isEqualToNumber:v16] ^ 1;

    if (v17)
    {
      oslog = _BYLoggingFacility();
      v46 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = oslog;
        v19 = v46;
        sub_10006AA68(v45);
        _os_log_impl(&_mh_execute_header, v18, v19, "Source device does not support migration version; not offering migration", v45, 2u);
      }

      objc_storeStrong(&oslog, 0);
      if (v52)
      {
        v20 = @"incompatible migration version";
        *v52 = v20;
      }

      v58 = 0;
      v48 = 1;
    }

    else
    {
      v44 = MGCopyAnswer();
      if ([BuddyMigrationCapability isMigrationSupportedFromDeviceClass:v54 toDeviceClass:v44 reason:v52])
      {
        if ([location[0] isRestoring])
        {
          v40 = _BYLoggingFacility();
          v39 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v40;
            v24 = v39;
            sub_10006AA68(v38);
            _os_log_impl(&_mh_execute_header, v23, v24, "Source device is restoring; not offering migration", v38, 2u);
          }

          objc_storeStrong(&v40, 0);
          if (v52)
          {
            v25 = @"source restoring";
            *v52 = v25;
          }

          v58 = 0;
          v48 = 1;
        }

        else
        {
          v37 = +[SASSystemInformation productVersion];
          v36 = ([v57 supportsMigrationFromProductVersion:v55 toProductVersion:v37 toProductVersionFetchedFromCurrentProductVersion:1] ^ 1) & 1;
          v34 = 0;
          v26 = 0;
          if (v36)
          {
            v35 = [location[0] preventSoftwareUpdateDeviceMigration];
            v34 = 1;
            v26 = [v35 BOOLValue];
          }

          if (v34)
          {
          }

          if (v26)
          {
            v33 = _BYLoggingFacility();
            v32 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v33;
              v28 = v32;
              sub_10006AA68(v31);
              _os_log_impl(&_mh_execute_header, v27, v28, "Source device prevents software update migration and a software update is required; not offering migration", v31, 2u);
            }

            objc_storeStrong(&v33, 0);
            if (v52)
            {
              v29 = @"software update required, but prevented";
              *v52 = v29;
            }

            v58 = 0;
            v48 = 1;
          }

          else
          {
            if (v53)
            {
              *v53 = v36 & 1;
            }

            v58 = 1;
            v48 = 1;
          }

          objc_storeStrong(&v37, 0);
        }
      }

      else
      {
        v43 = _BYLoggingFacility();
        v42 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v43;
          v22 = v42;
          sub_10006AA68(v41);
          _os_log_impl(&_mh_execute_header, v21, v22, "Source device hardware does not support migration to current device hardware; not offering migration", v41, 2u);
        }

        objc_storeStrong(&v43, 0);
        v58 = 0;
        v48 = 1;
      }

      objc_storeStrong(&v44, 0);
    }
  }

  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(location, 0);
  return v58 & 1;
}

+ (BOOL)isMigrationSupportedFromDeviceClass:(id)a3 toDeviceClass:(id)a4 reason:(id *)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = a5;
  v8 = +[BuddyMigrationCapability _allowedDeviceClasses];
  if ([v8 containsObject:location[0]] & 1) != 0 && (objc_msgSend(v8, "containsObject:", v10))
  {
    if ([location[0] isEqualToString:v10])
    {
      v12 = 1;
    }

    else
    {
      if (v9)
      {
        *v9 = @"different device class";
      }

      v12 = 0;
    }
  }

  else
  {
    if (v9)
    {
      *v9 = @"disallowed device class";
    }

    v12 = 0;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

+ (BOOL)_currentHardwareSupportsMigration
{
  location[2] = a1;
  location[1] = a2;
  location[0] = MGCopyAnswer();
  v2 = +[BuddyMigrationCapability _allowedDeviceClasses];
  v3 = [v2 containsObject:location[0]];

  objc_storeStrong(location, 0);
  return v3 & 1;
}

+ (BOOL)supportsMigrationFromProductVersion:(id)a3 toProductVersion:(id)a4 toProductVersionFetchedFromCurrentProductVersion:(BOOL)a5
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = a5;
  v11 = [v15 _supportsMigrationFromProductVersion:location[0] toProductVersion:v13] & 1;
  if (v11 && v12 && (os_variant_has_internal_ui() & 1) != 0 && +[BuddyDataSourceCompatibilityManagerTestingSurrogate enabled])
  {
    v7 = objc_alloc_init(BuddyDataSourceCompatibilityManagerTestingSurrogate);
    v11 = [(BuddyDataSourceCompatibilityManagerTestingSurrogate *)v7 canCurrentProductVersionAcceptDataSourceProductVersion:location[0], v7];
    objc_storeStrong(&v10, 0);
  }

  v8 = v11;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

+ (BOOL)_supportsMigrationFromProductVersion:(id)a3 toProductVersion:(id)a4
{
  v8 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  LOBYTE(a4) = [v8 _compareProductVersion:location[0] toProductVersion:v6] != 1;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return a4 & 1;
}

+ (int64_t)_compareProductVersion:(id)a3 toProductVersion:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  if ([location[0] isEqualToString:v17])
  {
    v19 = 0;
    v16 = 1;
  }

  else
  {
    v15 = [location[0] componentsSeparatedByString:@"."];
    v14 = [v17 componentsSeparatedByString:@"."];
    for (i = 0; ; ++i)
    {
      v5 = [v15 count] >= 2 ? 2 : objc_msgSend(v15, "count");
      v6 = [v14 count] >= 2 ? 2 : objc_msgSend(v14, "count");
      if (v5 <= v6)
      {
        v7 = [v14 count] >= 2 ? 2 : objc_msgSend(v14, "count");
      }

      else
      {
        v7 = [v15 count] >= 2 ? 2 : objc_msgSend(v15, "count");
      }

      if (i >= v7)
      {
        break;
      }

      v12 = 0;
      v11 = 0;
      if (i < [v15 count])
      {
        v8 = [v15 objectAtIndexedSubscript:i];
        v12 = [v8 intValue];
      }

      if (i < [v14 count])
      {
        v9 = [v14 objectAtIndexedSubscript:i];
        v11 = [v9 intValue];
      }

      if (v12 > v11)
      {
        v19 = 1;
        v16 = 1;
        goto LABEL_28;
      }

      if (v12 < v11)
      {
        v19 = -1;
        v16 = 1;
        goto LABEL_28;
      }
    }

    v19 = 0;
    v16 = 1;
LABEL_28:
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  return v19;
}

@end