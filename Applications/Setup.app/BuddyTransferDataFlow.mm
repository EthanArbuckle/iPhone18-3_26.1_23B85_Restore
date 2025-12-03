@interface BuddyTransferDataFlow
+ (id)allowedFlowItems;
+ (void)skippedByCloudConfigWithEnvironment:(id)environment;
- (BuddyTransferDataFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (id)classList;
- (id)firstItem;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)prepareUserSignalToMigrate:(BOOL)migrate;
@end

@implementation BuddyTransferDataFlow

- (BuddyTransferDataFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, delegate);
  v14 = 0;
  objc_storeStrong(&v14, starter);
  v13 = 0;
  objc_storeStrong(&v13, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v12.receiver = v9;
  v12.super_class = BuddyTransferDataFlow;
  selfCopy = [(BuddyTransferDataFlow *)&v12 initWithNavigationController:location[0] flowDelegate:v15 flowStarter:v14 dependencyInjector:v13];
  v10 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  selfCopy = self;
  v40[1] = a2;
  v39.receiver = self;
  v39.super_class = BuddyTransferDataFlow;
  v40[0] = [(BuddyTransferDataFlow *)&v39 firstItem];
  if ([v40[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyTransferDataProtocol])
  {
    v37 = v40[0];
    proximitySetupController = [(BuddyTransferDataFlow *)selfCopy proximitySetupController];
    information = [(ProximitySetupController *)proximitySetupController information];

    storageCapacity = [information storageCapacity];
    unsignedLongLongValue = [storageCapacity unsignedLongLongValue];
    storageAvailable = [information storageAvailable];
    v6 = unsignedLongLongValue - [storageAvailable unsignedLongLongValue];

    v35 = v6;
    v34 = 0x4181111111111111;
    v33 = v6 / 35791394.1;
    oslog = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      storageCapacity2 = [information storageCapacity];
      sub_100077E48(buf, [storageCapacity2 unsignedLongLongValue]);
      _os_log_impl(&_mh_execute_header, oslog, v31, "Storage Capacity: %lld", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v30 = _BYLoggingFacility();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      storageAvailable2 = [information storageAvailable];
      sub_100077E48(v46, [storageAvailable2 unsignedLongLongValue]);
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

    hasMegaBackup = [information hasMegaBackup];
    [v37 setHasMegaBackup:hasMegaBackup != 0];

    deviceClass = [information deviceClass];
    [v37 setSourceDeviceClass:deviceClass];

    [v37 setTransferFlowDelegate:selfCopy];
    v42 = v40[0];
    v38 = 1;
    objc_storeStrong(&information, 0);
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

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  proximitySetupController = [(BuddyTransferDataFlow *)selfCopy proximitySetupController];
  v4 = ![(ProximitySetupController *)proximitySetupController hasConnection];

  v66 = (v4 & 1) == 0;
  if (+[BuddyMigrationCapability currentDeviceShouldOfferMigration])
  {
    proximitySetupController2 = [(BuddyTransferDataFlow *)selfCopy proximitySetupController];
    information = [(ProximitySetupController *)proximitySetupController2 information];
    proximitySetupController3 = [(BuddyTransferDataFlow *)selfCopy proximitySetupController];
    productVersion = [(ProximitySetupController *)proximitySetupController3 productVersion];
    proximitySetupController4 = [(BuddyTransferDataFlow *)selfCopy proximitySetupController];
    deviceClass = [(ProximitySetupController *)proximitySetupController4 deviceClass];
    v11 = ![BuddyMigrationCapability sourceDeviceSupportsMigration:information productVersion:productVersion deviceClass:deviceClass softwareUpdateRequired:0 reason:0];

    if (v11)
    {
      v66 = 0;
    }
  }

  else
  {
    v66 = 0;
  }

  miscState = [(BuddyTransferDataFlow *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];

  if ([migrationManager didComplete])
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
      [migrationManager cancelWithCause:5];
    }

    if ([migrationManager hasVersionIncompatibility])
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
      [migrationManager setRequiresUpdateToMigrate:1];
      [migrationManager setWillMigrate:1];
    }

    proximitySetupController5 = [(BuddyTransferDataFlow *)selfCopy proximitySetupController];
    information2 = [(ProximitySetupController *)proximitySetupController5 information];
    appleID = [(SASProximityInformation *)information2 appleID];
    v20 = appleID != 0;

    v57 = v20;
    if (!v66 && !v57)
    {
      v21 = dispatch_get_global_queue(0, 0);
      block = _NSConcreteStackBlock;
      v52 = -1073741824;
      v53 = 0;
      v54 = sub_10015A078;
      v55 = &unk_10032B0D0;
      v56 = selfCopy;
      dispatch_async(v21, &block);

      objc_storeStrong(&v56, 0);
    }

    if ([migrationManager userChoseMigration])
    {
      v66 = 0;
    }

    if (v66)
    {
      v50 = 0;
      proximitySetupController6 = [(BuddyTransferDataFlow *)selfCopy proximitySetupController];
      information3 = [(ProximitySetupController *)proximitySetupController6 information];
      isBackupEnabled = [(SASProximityInformation *)information3 isBackupEnabled];

      if (isBackupEnabled)
      {
        proximitySetupController7 = [(BuddyTransferDataFlow *)selfCopy proximitySetupController];
        information4 = [(ProximitySetupController *)proximitySetupController7 information];
        dateOfLastBackup = [(SASProximityInformation *)information4 dateOfLastBackup];

        v48 = +[NSCalendar currentCalendar];
        v47 = objc_alloc_init(NSDateComponents);
        v46 = +[NSDate date];
        [v47 setMonth:-1];
        v27 = [v48 dateByAddingComponents:v47 toDate:v46 options:0];
        v50 = [dateOfLastBackup compare:v27] == 1;

        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v47, 0);
        objc_storeStrong(&v48, 0);
        objc_storeStrong(&dateOfLastBackup, 0);
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

      [(BuddyTransferDataFlow *)selfCopy setClassList:v28];

      if ([migrationManager requiresUpdateToMigrate])
      {
        proximitySetupController8 = [(BuddyTransferDataFlow *)selfCopy proximitySetupController];
        backupMetadata = [(ProximitySetupController *)proximitySetupController8 backupMetadata];

        seedEnrollmentProgram = [backupMetadata seedEnrollmentProgram];
        v42 = 0;
        v31 = 0;
        if (seedEnrollmentProgram)
        {
          seedEnrollmentAssetAudience = [backupMetadata seedEnrollmentAssetAudience];
          v42 = 1;
          v31 = seedEnrollmentAssetAudience != 0;
        }

        if (v42)
        {
        }

        v44 = v31;
        softwareUpdateCache = [(BuddyTransferDataFlow *)selfCopy softwareUpdateCache];
        v33 = _NSConcreteStackBlock;
        v34 = -1073741824;
        v35 = 0;
        v36 = sub_10015A0C8;
        v37 = &unk_10032DB50;
        v41 = v31;
        v38 = migrationManager;
        v39 = selfCopy;
        v40 = location[0];
        [(BYSoftwareUpdateCache *)softwareUpdateCache scanUsingCache:1 withCompletion:&v33];

        objc_storeStrong(&v40, 0);
        objc_storeStrong(&v39, 0);
        objc_storeStrong(&v38, 0);
        objc_storeStrong(&backupMetadata, 0);
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

  objc_storeStrong(&migrationManager, 0);
  objc_storeStrong(location, 0);
}

+ (void)skippedByCloudConfigWithEnvironment:(id)environment
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  miscState = [location[0] miscState];
  migrationManager = [miscState migrationManager];
  [migrationManager cancelWithCause:7];

  objc_storeStrong(location, 0);
}

- (void)prepareUserSignalToMigrate:(BOOL)migrate
{
  buddyPreferences = [(BuddyTransferDataFlow *)self buddyPreferences];
  v4 = [NSNumber numberWithBool:migrate];
  [(BYPreferencesController *)buddyPreferences setObject:v4 forKey:@"RestoreChoice"];

  miscState = [(BuddyTransferDataFlow *)self miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  [(BuddyTargetDeviceMigrationManager *)migrationManager setUserChoseMigration:migrate];

  if (migrate)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  setupMethod = [(BuddyTransferDataFlow *)self setupMethod];
  [(BuddySetupMethod *)setupMethod setDataTransferMethod:v7];
}

@end