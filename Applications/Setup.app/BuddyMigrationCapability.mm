@interface BuddyMigrationCapability
+ (BOOL)_currentHardwareSupportsMigration;
+ (BOOL)_supportsMigrationFromProductVersion:(id)version toProductVersion:(id)productVersion;
+ (BOOL)currentDeviceShouldOfferMigration;
+ (BOOL)isMigrationSupportedFromDeviceClass:(id)class toDeviceClass:(id)deviceClass reason:(id *)reason;
+ (BOOL)sourceDeviceSupportsMigration:(id)migration productVersion:(id)version deviceClass:(id)class softwareUpdateRequired:(BOOL *)required reason:(id *)reason;
+ (BOOL)supportsMigrationFromProductVersion:(id)version toProductVersion:(id)productVersion toProductVersionFetchedFromCurrentProductVersion:(BOOL)currentProductVersion;
+ (int64_t)_compareProductVersion:(id)version toProductVersion:(id)productVersion;
@end

@implementation BuddyMigrationCapability

+ (BOOL)currentDeviceShouldOfferMigration
{
  location[2] = self;
  location[1] = a2;
  if (BYSetupAssistantHasCompletedInitialRun())
  {
    return 0;
  }

  if (+[BuddyMigrationCapability _currentHardwareSupportsMigration])
  {
    v4 = +[MCProfileConnection sharedConnection];
    activationRecordIndicatesCloudConfigurationIsAvailable = [v4 activationRecordIndicatesCloudConfigurationIsAvailable];

    if (activationRecordIndicatesCloudConfigurationIsAvailable)
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

+ (BOOL)sourceDeviceSupportsMigration:(id)migration productVersion:(id)version deviceClass:(id)class softwareUpdateRequired:(BOOL *)required reason:(id *)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migration);
  v55 = 0;
  objc_storeStrong(&v55, version);
  v54 = 0;
  objc_storeStrong(&v54, class);
  requiredCopy = required;
  reasonCopy = reason;
  supportsDeviceToDeviceMigration = [location[0] supportsDeviceToDeviceMigration];
  LOBYTE(required) = [supportsDeviceToDeviceMigration BOOLValue] ^ 1;

  if (required)
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
    if (reasonCopy)
    {
      v14 = @"not supported";
      *reasonCopy = v14;
    }

    v58 = 0;
    v48 = 1;
  }

  else
  {
    deviceToDeviceMigrationVersion = [location[0] deviceToDeviceMigrationVersion];
    v16 = [NSNumber numberWithUnsignedInt:SASProximityDeviceToDeviceCurrentVersion];
    v17 = [deviceToDeviceMigrationVersion isEqualToNumber:v16] ^ 1;

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
      if (reasonCopy)
      {
        v20 = @"incompatible migration version";
        *reasonCopy = v20;
      }

      v58 = 0;
      v48 = 1;
    }

    else
    {
      v44 = MGCopyAnswer();
      if ([BuddyMigrationCapability isMigrationSupportedFromDeviceClass:v54 toDeviceClass:v44 reason:reasonCopy])
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
          if (reasonCopy)
          {
            v25 = @"source restoring";
            *reasonCopy = v25;
          }

          v58 = 0;
          v48 = 1;
        }

        else
        {
          v37 = +[SASSystemInformation productVersion];
          v36 = ([selfCopy supportsMigrationFromProductVersion:v55 toProductVersion:v37 toProductVersionFetchedFromCurrentProductVersion:1] ^ 1) & 1;
          v34 = 0;
          bOOLValue = 0;
          if (v36)
          {
            preventSoftwareUpdateDeviceMigration = [location[0] preventSoftwareUpdateDeviceMigration];
            v34 = 1;
            bOOLValue = [preventSoftwareUpdateDeviceMigration BOOLValue];
          }

          if (v34)
          {
          }

          if (bOOLValue)
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
            if (reasonCopy)
            {
              v29 = @"software update required, but prevented";
              *reasonCopy = v29;
            }

            v58 = 0;
            v48 = 1;
          }

          else
          {
            if (requiredCopy)
            {
              *requiredCopy = v36 & 1;
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

+ (BOOL)isMigrationSupportedFromDeviceClass:(id)class toDeviceClass:(id)deviceClass reason:(id *)reason
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v10 = 0;
  objc_storeStrong(&v10, deviceClass);
  reasonCopy = reason;
  v8 = +[BuddyMigrationCapability _allowedDeviceClasses];
  if ([v8 containsObject:location[0]] & 1) != 0 && (objc_msgSend(v8, "containsObject:", v10))
  {
    if ([location[0] isEqualToString:v10])
    {
      v12 = 1;
    }

    else
    {
      if (reasonCopy)
      {
        *reasonCopy = @"different device class";
      }

      v12 = 0;
    }
  }

  else
  {
    if (reasonCopy)
    {
      *reasonCopy = @"disallowed device class";
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
  location[2] = self;
  location[1] = a2;
  location[0] = MGCopyAnswer();
  v2 = +[BuddyMigrationCapability _allowedDeviceClasses];
  v3 = [v2 containsObject:location[0]];

  objc_storeStrong(location, 0);
  return v3 & 1;
}

+ (BOOL)supportsMigrationFromProductVersion:(id)version toProductVersion:(id)productVersion toProductVersionFetchedFromCurrentProductVersion:(BOOL)currentProductVersion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v13 = 0;
  objc_storeStrong(&v13, productVersion);
  currentProductVersionCopy = currentProductVersion;
  v11 = [selfCopy _supportsMigrationFromProductVersion:location[0] toProductVersion:v13] & 1;
  if (v11 && currentProductVersionCopy && (os_variant_has_internal_ui() & 1) != 0 && +[BuddyDataSourceCompatibilityManagerTestingSurrogate enabled])
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

+ (BOOL)_supportsMigrationFromProductVersion:(id)version toProductVersion:(id)productVersion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v6 = 0;
  objc_storeStrong(&v6, productVersion);
  LOBYTE(productVersion) = [selfCopy _compareProductVersion:location[0] toProductVersion:v6] != 1;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return productVersion & 1;
}

+ (int64_t)_compareProductVersion:(id)version toProductVersion:(id)productVersion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v17 = 0;
  objc_storeStrong(&v17, productVersion);
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

      intValue = 0;
      intValue2 = 0;
      if (i < [v15 count])
      {
        v8 = [v15 objectAtIndexedSubscript:i];
        intValue = [v8 intValue];
      }

      if (i < [v14 count])
      {
        v9 = [v14 objectAtIndexedSubscript:i];
        intValue2 = [v9 intValue];
      }

      if (intValue > intValue2)
      {
        v19 = 1;
        v16 = 1;
        goto LABEL_28;
      }

      if (intValue < intValue2)
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