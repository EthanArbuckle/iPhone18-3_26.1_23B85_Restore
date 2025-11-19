@interface BuddyTransferDataFlow
+ (id)allowedFlowItems;
+ (void)skippedByCloudConfigWithEnvironment:(id)a3;
- (BuddyTransferDataFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (id)classList;
- (id)firstItem;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)prepareUserSignalToMigrate:(BOOL)a3;
@end

@implementation BuddyTransferDataFlow

- (BuddyTransferDataFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v9 = v17;
  v17 = 0;
  v12.receiver = v9;
  v12.super_class = BuddyTransferDataFlow;
  v17 = [(BuddyTransferDataFlow *)&v12 initWithNavigationController:location[0] flowDelegate:v15 flowStarter:v14 dependencyInjector:v13];
  v10 = v17;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v10;
}

- (id)classList
{
  location[2] = self;
  location[1] = a2;
  v9.receiver = self;
  v9.super_class = BuddyTransferDataFlow;
  location[0] = [(BuddyTransferDataFlow *)&v9 classList];
  if (![location[0] count])
  {
    oslog = _BYLoggingFacility();
    v7 = 17;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      v2 = oslog;
      v3 = v7;
      sub_10006AA68(v6);
      _os_log_fault_impl(&_mh_execute_header, v2, v3, "BuddyTransferDataFlow failed to set initial classList", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)firstItem
{
  v41 = self;
  v40[1] = a2;
  v39.receiver = self;
  v39.super_class = BuddyTransferDataFlow;
  v40[0] = [(BuddyTransferDataFlow *)&v39 firstItem];
  if ([v40[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyTransferDataProtocol])
  {
    v37 = v40[0];
    v2 = [(BuddyTransferDataFlow *)v41 proximitySetupController];
    v36 = [(ProximitySetupController *)v2 information];

    v3 = [v36 storageCapacity];
    v4 = [v3 unsignedLongLongValue];
    v5 = [v36 storageAvailable];
    v6 = v4 - [v5 unsignedLongLongValue];

    v35 = v6;
    v34 = 0x4181111111111111;
    v33 = v6 / 35791394.1;
    oslog = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v36 storageCapacity];
      sub_100077E48(buf, [v7 unsignedLongLongValue]);
      _os_log_impl(&_mh_execute_header, oslog, v31, "Storage Capacity: %lld", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v30 = _BYLoggingFacility();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v36 storageAvailable];
      sub_100077E48(v46, [v8 unsignedLongLongValue]);
      _os_log_impl(&_mh_execute_header, v30, v29, "Storage Available: %lld", v46, 0xCu);
    }

    objc_storeStrong(&v30, 0);
    v28 = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(v45, v35);
      _os_log_impl(&_mh_execute_header, v28, v27, "Estimated Data to Transfer: %lld", v45, 0xCu);
    }

    objc_storeStrong(&v28, 0);
    v26 = _BYLoggingFacility();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(v44, v34);
      _os_log_impl(&_mh_execute_header, v26, v25, "Estimated Transfer Rate: %Lf", v44, 0xCu);
    }

    objc_storeStrong(&v26, 0);
    v24 = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(v43, *&v33);
      _os_log_impl(&_mh_execute_header, v24, v23, "Estimated Duration: %lf", v43, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    if (floor(v33 / 300.0) <= 1.0)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = floor(v33 / 300.0);
    }

    v33 = v9 * 5.0;
    v22 = 10.0;
    if (v9 * 5.0 >= 60.0 - 10.0)
    {
      if (floor(v33 / 15.0) <= 4.0)
      {
        v13 = 4.0;
      }

      else
      {
        v13 = floor(v33 / 15.0);
      }

      v33 = v13 * 15.0;
      location = objc_alloc_init(NSDateComponentsFormatter);
      [location setUnitsStyle:1];
      [location setMaximumUnitCount:2];
      [location setAllowedUnits:96];
      [location setIncludesApproximationPhrase:1];
      v14 = [location stringFromTimeInterval:v33 * 60.0];
      [v37 setEstimatedMigrationDuration:v14];

      objc_storeStrong(&location, 0);
    }

    else
    {
      v21 = 0.0;
      if (v33 > 20.0)
      {
        v21 = v22;
      }

      else
      {
        v21 = 5.0;
      }

      v20 = v33 + v21;
      v10 = +[NSBundle mainBundle];
      v11 = [(NSBundle *)v10 localizedStringForKey:@"TRANSFER_TIME_ESTIMATE_RANGE" value:&stru_10032F900 table:@"Localizable"];
      v12 = [NSString localizedStringWithFormat:v11, *&v33, *&v20];
      [v37 setEstimatedMigrationDuration:v12];
    }

    v15 = [v36 hasMegaBackup];
    [v37 setHasMegaBackup:v15 != 0];

    v16 = [v36 deviceClass];
    [v37 setSourceDeviceClass:v16];

    [v37 setTransferFlowDelegate:v41];
    v42 = v40[0];
    v38 = 1;
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
  }

  else
  {
    v42 = v40[0];
    v38 = 1;
  }

  objc_storeStrong(v40, 0);
  v17 = v42;

  return v17;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:2];
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v68 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTransferDataFlow *)v68 proximitySetupController];
  v4 = ![(ProximitySetupController *)v3 hasConnection];

  v66 = (v4 & 1) == 0;
  if (+[BuddyMigrationCapability currentDeviceShouldOfferMigration])
  {
    v5 = [(BuddyTransferDataFlow *)v68 proximitySetupController];
    v6 = [(ProximitySetupController *)v5 information];
    v7 = [(BuddyTransferDataFlow *)v68 proximitySetupController];
    v8 = [(ProximitySetupController *)v7 productVersion];
    v9 = [(BuddyTransferDataFlow *)v68 proximitySetupController];
    v10 = [(ProximitySetupController *)v9 deviceClass];
    v11 = ![BuddyMigrationCapability sourceDeviceSupportsMigration:v6 productVersion:v8 deviceClass:v10 softwareUpdateRequired:0 reason:0];

    if (v11)
    {
      v66 = 0;
    }
  }

  else
  {
    v66 = 0;
  }

  v12 = [(BuddyTransferDataFlow *)v68 miscState];
  v65 = [(BuddyMiscState *)v12 migrationManager];

  if ([v65 didComplete])
  {
    v64 = _BYLoggingFacility();
    v63 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v64;
      v14 = v63;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v13, v14, "Migration completed already, skipping flow.", buf, 2u);
    }

    objc_storeStrong(&v64, 0);
    (*(location[0] + 2))(location[0], 0);
    v61 = 1;
  }

  else
  {
    if (!v66)
    {
      [v65 cancelWithCause:5];
    }

    if ([v65 hasVersionIncompatibility])
    {
      v60 = _BYLoggingFacility();
      v59 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v60;
        v16 = v59;
        sub_10006AA68(v58);
        _os_log_impl(&_mh_execute_header, v15, v16, "Source/target product versions are incompatible; migration requires update", v58, 2u);
      }

      objc_storeStrong(&v60, 0);
      [v65 setRequiresUpdateToMigrate:1];
      [v65 setWillMigrate:1];
    }

    v17 = [(BuddyTransferDataFlow *)v68 proximitySetupController];
    v18 = [(ProximitySetupController *)v17 information];
    v19 = [(SASProximityInformation *)v18 appleID];
    v20 = v19 != 0;

    v57 = v20;
    if (!v66 && !v57)
    {
      v21 = dispatch_get_global_queue(0, 0);
      block = _NSConcreteStackBlock;
      v52 = -1073741824;
      v53 = 0;
      v54 = sub_10015A078;
      v55 = &unk_10032B0D0;
      v56 = v68;
      dispatch_async(v21, &block);

      objc_storeStrong(&v56, 0);
    }

    if ([v65 userChoseMigration])
    {
      v66 = 0;
    }

    if (v66)
    {
      v50 = 0;
      v22 = [(BuddyTransferDataFlow *)v68 proximitySetupController];
      v23 = [(ProximitySetupController *)v22 information];
      v24 = [(SASProximityInformation *)v23 isBackupEnabled];

      if (v24)
      {
        v25 = [(BuddyTransferDataFlow *)v68 proximitySetupController];
        v26 = [(ProximitySetupController *)v25 information];
        v49 = [(SASProximityInformation *)v26 dateOfLastBackup];

        v48 = +[NSCalendar currentCalendar];
        v47 = objc_alloc_init(NSDateComponents);
        v46 = +[NSDate date];
        [v47 setMonth:-1];
        v27 = [v48 dateByAddingComponents:v47 toDate:v46 options:0];
        v50 = [v49 compare:v27] == 1;

        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v47, 0);
        objc_storeStrong(&v48, 0);
        objc_storeStrong(&v49, 0);
      }

      if (v50)
      {
        v70 = objc_opt_class();
        v28 = [NSArray arrayWithObjects:&v70 count:1];
      }

      else
      {
        v69 = objc_opt_class();
        v28 = [NSArray arrayWithObjects:&v69 count:1];
      }

      [(BuddyTransferDataFlow *)v68 setClassList:v28];

      if ([v65 requiresUpdateToMigrate])
      {
        v29 = [(BuddyTransferDataFlow *)v68 proximitySetupController];
        v45 = [(ProximitySetupController *)v29 backupMetadata];

        v30 = [v45 seedEnrollmentProgram];
        v42 = 0;
        v31 = 0;
        if (v30)
        {
          v43 = [v45 seedEnrollmentAssetAudience];
          v42 = 1;
          v31 = v43 != 0;
        }

        if (v42)
        {
        }

        v44 = v31;
        v32 = [(BuddyTransferDataFlow *)v68 softwareUpdateCache];
        v33 = _NSConcreteStackBlock;
        v34 = -1073741824;
        v35 = 0;
        v36 = sub_10015A0C8;
        v37 = &unk_10032DB50;
        v41 = v31;
        v38 = v65;
        v39 = v68;
        v40 = location[0];
        [(BYSoftwareUpdateCache *)v32 scanUsingCache:1 withCompletion:&v33];

        objc_storeStrong(&v40, 0);
        objc_storeStrong(&v39, 0);
        objc_storeStrong(&v38, 0);
        objc_storeStrong(&v45, 0);
      }

      else if (location[0])
      {
        (*(location[0] + 2))(location[0], 1);
      }

      v61 = 0;
    }

    else
    {
      (*(location[0] + 2))(location[0], v66);
      v61 = 1;
    }
  }

  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
}

+ (void)skippedByCloudConfigWithEnvironment:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] miscState];
  v4 = [v3 migrationManager];
  [v4 cancelWithCause:7];

  objc_storeStrong(location, 0);
}

- (void)prepareUserSignalToMigrate:(BOOL)a3
{
  v3 = [(BuddyTransferDataFlow *)self buddyPreferences];
  v4 = [NSNumber numberWithBool:a3];
  [(BYPreferencesController *)v3 setObject:v4 forKey:@"RestoreChoice"];

  v5 = [(BuddyTransferDataFlow *)self miscState];
  v6 = [(BuddyMiscState *)v5 migrationManager];
  [(BuddyTargetDeviceMigrationManager *)v6 setUserChoseMigration:a3];

  if (a3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BuddyTransferDataFlow *)self setupMethod];
  [(BuddySetupMethod *)v8 setDataTransferMethod:v7];
}

@end