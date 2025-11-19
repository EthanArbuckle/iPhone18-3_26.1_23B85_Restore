@interface ProximitySetupController
+ (BOOL)_supportsDependentSetup:(id)a3;
- (BOOL)_allowedToPair;
- (BOOL)_isWaitingForReconnection;
- (BOOL)hasConnection;
- (BOOL)shouldEnableProximity;
- (BOOL)supportsIntent;
- (BOOL)validatePasscode:(id)a3;
- (BYBackupMetadata)backupMetadata;
- (CUMessageSession)sharingMessageSession;
- (NSArray)preferredLanguages;
- (ProximitySetupController)initWithMiscState:(id)a3 buddyPreferences:(id)a4 buddyPreferencesExcludedFromBackup:(id)a5 featureFlags:(id)a6 analyticsManager:(id)a7 setupMethod:(id)a8;
- (ProximitySetupControllerDelegate)delegate;
- (id)createSignInTask;
- (id)createTargetDeviceMigrationManagerWithPrepareForMigrationRebootBlock:(id)a3 passcodeCacheManager:(id)a4 analyticsManager:(id)a5 lockdownModeProvider:(id)a6;
- (id)performHandshake;
- (void)_setConnected:(BOOL)a3;
- (void)_setSetupIntent;
- (void)_updatedMessageSession:(id)a3;
- (void)addObserver:(id)a3;
- (void)applySettings;
- (void)beginAdvertisingProximitySetup;
- (void)beginDeviceToDeviceMigration;
- (void)cloudConfigDidChange:(id)a3;
- (void)didApplySettings;
- (void)dismissProximityPinCode;
- (void)displayProximityPinCode:(id)a3 visual:(BOOL)a4;
- (void)endAdvertisingProximitySetup;
- (void)endDeviceToDeviceMigration;
- (void)endPairing;
- (void)languageChangeCompleted;
- (void)needsToResume:(id)a3;
- (void)notifyObserversConnectionTerminated;
- (void)pairingEndedByUser;
- (void)prepareForDependentSetup;
- (void)prepareForReboot;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)a3;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)a3;
- (void)ready;
- (void)readyForInformation;
- (void)receivedBackupAction:(id)a3;
- (void)receivedLanguages:(id)a3 locale:(id)a4 model:(id)a5 deviceClass:(id)a6 accessibilitySettings:(id)a7;
- (void)removeObserver:(id)a3;
- (void)resetInformation;
- (void)resumeSession;
- (void)setSourceProxCardVisibliityForSIMSetupExternalAuthentication:(BOOL)a3;
- (void)setupFinished;
- (void)showMigrationInterfaceOnSource;
- (void)skippedApplySettings;
- (void)startOver;
- (void)startiCloudBackup;
- (void)suspendConnectionForSoftwareUpdate:(id)a3;
- (void)updateInformation:(id)a3;
- (void)waitForIntent:(id)a3;
- (void)waitForSessionReconnection:(id)a3;
- (void)willApplySettings:(id)a3;
@end

@implementation ProximitySetupController

- (ProximitySetupController)initWithMiscState:(id)a3 buddyPreferences:(id)a4 buddyPreferencesExcludedFromBackup:(id)a5 featureFlags:(id)a6 analyticsManager:(id)a7 setupMethod:(id)a8
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = 0;
  objc_storeStrong(&v28, a6);
  v27 = 0;
  objc_storeStrong(&v27, a7);
  v26 = 0;
  objc_storeStrong(&v26, a8);
  v13 = v32;
  v32 = 0;
  v25.receiver = v13;
  v25.super_class = ProximitySetupController;
  v14 = [(ProximitySetupController *)&v25 init];
  v32 = v14;
  objc_storeStrong(&v32, v14);
  if (v14)
  {
    [v32 setMiscState:location[0]];
    [v32 setBuddyPreferences:v30];
    [v32 setBuddyPreferencesExcludedFromBackup:v29];
    [v32 setFeatureFlags:v28];
    [v32 setSetupMethod:v26];
    v15 = [BuddyOverridesFactory proximityTargetClientWithDelegate:v32];
    [v32 setClient:v15];

    [v32 setShouldApplySettings:1];
    v16 = [v32 client];
    v17 = [BuddyOverridesFactory proximitySessionWithOverrideClient:v16];
    [v32 setSession:v17];

    v18 = v32;
    v19 = [v32 session];
    [v19 setDelegate:v18];

    v20 = objc_alloc_init(NSMutableArray);
    [v32 setObservers:v20];

    v21 = dispatch_queue_create("Proximity Setup Termination Observer Queue", 0);
    [v32 setObserverQueue:v21];

    [v32 setAnalyticsManager:v27];
    v22 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v22 addObserver:v32 selector:"cloudConfigDidChange:" name:MCCloudConfigurationDidChangeNotification object:0];
  }

  v23 = v32;
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v32, 0);
  return v23;
}

- (BOOL)shouldEnableProximity
{
  v2 = +[BuddyCloudConfigManager sharedManager];
  v15 = 0;
  v13 = 0;
  v3 = 1;
  if (([v2 isMultiUser] & 1) == 0)
  {
    v16 = +[BuddyCloudConfigManager sharedManager];
    v15 = 1;
    v3 = 1;
    if (([v16 hasCloudConfiguration] & 1) == 0)
    {
      v14 = +[MCProfileConnection sharedConnection];
      v13 = 1;
      v3 = [v14 shouldShowCloudConfigurationUI];
    }
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  v17 = v3 & 1;
  v4 = +[BuddyDeviceManagementSupport sharedSupport];
  v5 = [v4 shouldDisallowProximityAdvertisement];

  if (v17 & 1) != 0 || (v5)
  {
    return 0;
  }

  v6 = [(ProximitySetupController *)self buddyPreferences];
  v7 = [BuddyRestoreState hasStateFromPreferences:v6];

  if (v7)
  {
    return 0;
  }

  v12 = BYSetupAssistantHasCompletedInitialRun() & 1;
  v8 = [(ProximitySetupController *)self userSkippedProximity];
  v9 = 1;
  if ((v8 & 1) == 0)
  {
    v10 = [(ProximitySetupController *)self hasAppliedSettings];
    v9 = 1;
    if ((v10 & 1) == 0)
    {
      v9 = v12;
    }
  }

  return (v9 ^ 1) & 1;
}

- (BOOL)hasConnection
{
  v2 = [(ProximitySetupController *)self session];
  v3 = [(SASProximitySession *)v2 isConnected];

  if (v3)
  {
    return ![(ProximitySetupController *)self isDisconnecting];
  }

  else
  {
    return 0;
  }
}

- (void)needsToResume:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    if ([(ProximitySetupController *)v13 hasConnection]|| [(ProximitySetupController *)v13 hasResumed])
    {
      (*(location[0] + 2))(location[0], 0);
    }

    else
    {
      v3 = [(ProximitySetupController *)v13 client];
      v4 = _NSConcreteStackBlock;
      v5 = -1073741824;
      v6 = 0;
      v7 = sub_1001D0B7C;
      v8 = &unk_10032B020;
      v9 = v13;
      v10 = location[0];
      [(BYDaemonProximityTargetClientProtocol *)v3 hasConnection:&v4];

      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v9, 0);
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)resumeSession
{
  v14 = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v12;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Resuming existing proximity setup session...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v4 = [(ProximitySetupController *)v14 client];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D0D08;
  v9 = &unk_10032EA88;
  v10 = v14;
  [(BYDaemonProximityTargetClientProtocol *)v4 resumeProximitySetup:&v5];

  objc_storeStrong(&v10, 0);
}

- (void)beginAdvertisingProximitySetup
{
  if (![(ProximitySetupController *)self hasConnection])
  {
    v2 = [(ProximitySetupController *)self client];
    [(BYDaemonProximityTargetClientProtocol *)v2 beginAdvertisingProximitySetup];
  }
}

- (void)endAdvertisingProximitySetup
{
  v8 = self;
  oslog[1] = a2;
  if (![(ProximitySetupController *)self hasConnection])
  {
    if ([(ProximitySetupController *)v8 reconnecting])
    {
      oslog[0] = _BYLoggingFacility();
      v6 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
      {
        v2 = oslog[0];
        v3 = v6;
        sub_10006AA68(v5);
        _os_log_impl(&_mh_execute_header, v2, v3, "Not ending advertising for proximity setup as we're waiting for reconnection...", v5, 2u);
      }

      objc_storeStrong(oslog, 0);
    }

    else
    {
      v4 = [(ProximitySetupController *)v8 client];
      [(BYDaemonProximityTargetClientProtocol *)v4 endAdvertisingProximitySetup];
    }
  }
}

- (void)endPairing
{
  [(ProximitySetupController *)self setResumeBlock:0, a2];
  v2 = [(ProximitySetupController *)self client];
  [(BYDaemonProximityTargetClientProtocol *)v2 endPairing];
}

- (void)resetInformation
{
  [(ProximitySetupController *)self setInformation:0, a2];
  [(ProximitySetupController *)self setBackupMetadataFromTerminatedConnection:0];
  [(ProximitySetupController *)self setReceivedLanguages:0];
  [(ProximitySetupController *)self setReceivedLocale:0];
  [(ProximitySetupController *)self setModel:0];
  [(ProximitySetupController *)self setDeviceClass:0];
  [(ProximitySetupController *)self setDeviceName:0];
  [(ProximitySetupController *)self setAccessibilitySettings:0];
}

- (void)updateInformation:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(ProximitySetupController *)v15 setInformation:location[0]];
  [(ProximitySetupController *)v15 setBackupMetadataFromTerminatedConnection:0];
  v3 = [(ProximitySetupController *)v15 information];
  v4 = [(SASProximityInformation *)v3 deviceName];
  [(ProximitySetupController *)v15 setDeviceName:v4];

  v5 = [(ProximitySetupController *)v15 information];
  v6 = [(SASProximityInformation *)v5 deviceModel];
  [(ProximitySetupController *)v15 setModel:v6];

  v7 = [(ProximitySetupController *)v15 information];
  v8 = [(SASProximityInformation *)v7 deviceClass];
  [(ProximitySetupController *)v15 setDeviceClass:v8];

  v9 = [(ProximitySetupController *)v15 information];
  v10 = [(SASProximityInformation *)v9 productVersion];
  [(ProximitySetupController *)v15 setProductVersion:v10];

  v11 = [BYExpressSetupProximityDataSource alloc];
  v12 = [(ProximitySetupController *)v15 information];
  v13 = [(BYExpressSetupProximityDataSource *)v11 initWithInformation:v12];
  [(ProximitySetupController *)v15 setExpressDataSource:v13];

  objc_storeStrong(location, 0);
}

- (void)setupFinished
{
  if ([(ProximitySetupController *)self hasConnection])
  {
    [(ProximitySetupController *)self setDisconnecting:1];
    v2 = [(ProximitySetupController *)self session];
    v3 = objc_alloc_init(SASProximityFinishedAction);
    v4 = [(SASProximitySession *)v2 sendAction:v3];

    [(ProximitySetupController *)self _setConnected:0];
    [(ProximitySetupController *)self notifyObserversConnectionTerminated];
  }

  [(ProximitySetupController *)self endAdvertisingProximitySetup];
  v5 = [(ProximitySetupController *)self miscState];
  v6 = [(BuddyMiscState *)v5 migrationManager];
  [(BuddyTargetDeviceMigrationManager *)v6 cancelWithCause:9];
}

- (void)cloudConfigDidChange:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[BuddyCloudConfigManager sharedManager];
  v4 = [v3 cloudConfigurationDetails];

  if (v4)
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "Ending proximity setup advertising due to cloud configuration...", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(ProximitySetupController *)v11 endAdvertisingProximitySetup];
  }

  objc_storeStrong(location, 0);
}

- (BYBackupMetadata)backupMetadata
{
  v2 = [(ProximitySetupController *)self information:a2];
  v3 = [(SASProximityInformation *)v2 backupMetadata];
  v4 = BYMetadataFromDataArchive();

  return v4;
}

- (NSArray)preferredLanguages
{
  v2 = [(ProximitySetupController *)self information:a2];
  v3 = [(SASProximityInformation *)v2 localePreferences];
  v4 = [v3 objectForKeyedSubscript:@"AppleLanguages"];

  return v4;
}

- (void)languageChangeCompleted
{
  v10 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "Applying settings from proximity setup after a language reboot..", v7, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = [(ProximitySetupController *)v10 backupMetadata];
  v5 = [(BYBackupMetadata *)v4 hasUserInterfaceStyleMode];

  if (v5)
  {
    v6 = [(ProximitySetupController *)v10 buddyPreferences];
    [(BYPreferencesController *)v6 setObject:&__kCFBooleanTrue forKey:@"UserInterfaceStyleModePresented"];
  }
}

- (CUMessageSession)sharingMessageSession
{
  v2 = [(ProximitySetupController *)self session:a2];
  v3 = [(SASProximitySession *)v2 sharingMessageSession];

  return v3;
}

- (id)createTargetDeviceMigrationManagerWithPrepareForMigrationRebootBlock:(id)a3 passcodeCacheManager:(id)a4 analyticsManager:(id)a5 lockdownModeProvider:(id)a6
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v9 = [(ProximitySetupController *)v22 client];
  v17 = [(BYDaemonProximityTargetClientProtocol *)v9 fileTransferSessionTemplate];

  v10 = [BuddyTargetDeviceMigrationManager alloc];
  v11 = v22;
  v12 = location[0];
  v13 = v20;
  v14 = [(ProximitySetupController *)v22 buddyPreferencesExcludedFromBackup];
  v15 = [(BuddyTargetDeviceMigrationManager *)v10 initWithFileTranferSession:v17 proximitySetupController:v11 prepareForMigrationRebootBlock:v12 passcodeCacheManager:v13 buddyPreferencesExcludedFromBackup:v14 analyticsManager:v19 lockdownModeProvider:v18];

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v15;
}

- (void)beginDeviceToDeviceMigration
{
  v11 = self;
  v10[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D192C;
  v9 = &unk_10032B0D0;
  v10[0] = v11;
  dispatch_async(v2, &block);

  v3 = [(ProximitySetupController *)v11 miscState];
  v4 = [(BuddyMiscState *)v3 migrationManager];
  [(BuddyTargetDeviceMigrationManager *)v4 start];

  objc_storeStrong(v10, 0);
}

- (void)endDeviceToDeviceMigration
{
  v2 = [(ProximitySetupController *)self client:a2];
  [(BYDaemonProximityTargetClientProtocol *)v2 endDeviceToDeviceMigration];
}

- (void)showMigrationInterfaceOnSource
{
  v7 = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(SASProximityMigrationTransferPreparationAction);
  v8 = MGCopyAnswer();
  v2 = v8;
  [v6[0] setDeviceName:v2];

  v3 = [(ProximitySetupController *)v7 session];
  v4 = [(SASProximitySession *)v3 sendAction:v6[0]];

  v5 = [(ProximitySetupController *)v7 client];
  [(BYDaemonProximityTargetClientProtocol *)v5 showMigrationInterfaceOnSource];

  objc_storeStrong(v6, 0);
}

- (void)suspendConnectionForSoftwareUpdate:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(ProximitySetupController *)v5 client];
  [(BYDaemonProximityTargetClientProtocol *)v3 suspendConnectionForSoftwareUpdate:location[0]];

  objc_storeStrong(location, 0);
}

- (void)setSourceProxCardVisibliityForSIMSetupExternalAuthentication:(BOOL)a3
{
  if (a3)
  {
    v3 = [(ProximitySetupController *)self client];
    [(BYDaemonProximityTargetClientProtocol *)v3 endSIMSetupExternalAuthentication];
  }

  else
  {
    v3 = [(ProximitySetupController *)self client];
    [(BYDaemonProximityTargetClientProtocol *)v3 beginSIMSetupExternalAuthentication];
  }
}

- (void)waitForSessionReconnection:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = 0;
  v3 = 0;
  if ([(ProximitySetupController *)v7 hasConnection])
  {
    v5 = [(ProximitySetupController *)v7 information];
    v4 = 1;
    v3 = v5 != 0;
  }

  if (v4)
  {
  }

  if (v3)
  {
    (*(location[0] + 2))(location[0], 1);
    [(ProximitySetupController *)v7 setResumeBlock:0];
  }

  else
  {
    [(ProximitySetupController *)v7 setResumeBlock:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)prepareForDependentSetup
{
  v18 = self;
  oslog[1] = a2;
  v2 = objc_opt_class();
  v3 = [(ProximitySetupController *)v18 information];
  LOBYTE(v2) = [v2 _supportsDependentSetup:v3];

  if (v2)
  {
    oslog[0] = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v16;
      sub_10006AA68(v15);
      _os_log_impl(&_mh_execute_header, v4, v5, "Preparing for dependent setup...", v15, 2u);
    }

    objc_storeStrong(oslog, 0);
    v6 = [BuddyProximitySetupDependentController alloc];
    v7 = [(ProximitySetupController *)v18 sharingMessageSession];
    v8 = [(ProximitySetupController *)v18 featureFlags];
    v9 = [(BuddyProximitySetupDependentController *)v6 initWithMessageSession:v7 featureFlags:v8];
    [(ProximitySetupController *)v18 setDependentController:v9];

    v10 = [(ProximitySetupController *)v18 client];
    objc_opt_class();
    LOBYTE(v7) = objc_opt_isKindOfClass();

    if (v7)
    {
      v11 = [(ProximitySetupController *)v18 dependentController];
      v12 = [(ProximitySetupController *)v18 client];
      [(BuddyProximitySetupDependentController *)v11 setDelegateOnClient:v12];
    }

    v13 = v18;
    v14 = [(ProximitySetupController *)v18 dependentController];
    [(ProximitySetupController *)v13 addObserver:v14];
  }

  else
  {
    [(ProximitySetupController *)v18 setDependentController:0];
  }
}

- (BOOL)supportsIntent
{
  v2 = [(ProximitySetupController *)self dependentController:a2];
  v3 = v2 != 0;

  return v3;
}

- (void)waitForIntent:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(ProximitySetupController *)v12 supportsIntent])
  {
    v3 = [(ProximitySetupController *)v12 dependentController];
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1001D2080;
    v8 = &unk_10032EAB0;
    v9 = location[0];
    [(BuddyProximitySetupDependentController *)v3 waitForSelectedAccountType:&v4];

    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    (*(location[0] + 2))(location[0], 1);
    v10 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)startOver
{
  v11 = self;
  v10[1] = a2;
  [(ProximitySetupController *)self setHasAppliedSettings:0];
  [(ProximitySetupController *)v11 setHasValidatedPasscode:0];
  [(ProximitySetupController *)v11 setSignedIniCloudAccount:0];
  [(ProximitySetupController *)v11 setSkipExpressRestore:0];
  v2 = [(ProximitySetupController *)v11 miscState];
  v3 = [(BuddyMiscState *)v2 migrationManager];
  [(BuddyTargetDeviceMigrationManager *)v3 reset];

  v4 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D222C;
  v9 = &unk_10032B0D0;
  v10[0] = v11;
  dispatch_async(v4, &block);

  objc_storeStrong(v10, 0);
}

- (id)createSignInTask
{
  v11 = self;
  location[1] = a2;
  v2 = [BuddyProximityAppleIDSignInTask alloc];
  v3 = [(ProximitySetupController *)v11 session];
  v4 = [(ProximitySetupController *)v11 analyticsManager];
  v5 = [(ProximitySetupController *)v11 featureFlags];
  location[0] = [(BuddyProximityAppleIDSignInTask *)v2 initWithSession:v3 analyticsManager:v4 featureFlags:v5];

  v6 = [(ProximitySetupController *)v11 sharingMessageSession];
  [location[0] setMessageSession:v6];

  v7 = [(ProximitySetupController *)v11 information];
  [location[0] setMakeStoreServiceActive:{-[SASProximityInformation usesSameAccountForiTunes](v7, "usesSameAccountForiTunes") & 1}];

  v8 = location[0];
  objc_storeStrong(location, 0);
  return v8;
}

- (void)prepareForReboot
{
  v15 = self;
  v14 = a2;
  v12 = 0;
  v2 = 1;
  if ([(ProximitySetupController *)self hasAppliedSettings])
  {
    v13 = [(ProximitySetupController *)v15 information];
    v12 = 1;
    v2 = v13 == 0;
  }

  if (v12)
  {
  }

  if (!v2)
  {
    oslog = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v10;
      sub_10006AA68(v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "Saving proximity state for language/locale reboot...", v9, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v5 = [(ProximitySetupController *)v15 client];
    v6 = [(ProximitySetupController *)v15 information];
    [(BYDaemonProximityTargetClientProtocol *)v5 storeInformation:v6];

    v7 = [(ProximitySetupController *)v15 client];
    v8 = [(ProximitySetupController *)v15 handshake];
    [(BYDaemonProximityTargetClientProtocol *)v7 storeHandshake:v8];
  }
}

- (BOOL)validatePasscode:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = objc_alloc_init(SASProximityPasscodeValidationAction);
  [v6 setPasscode:location[0]];
  v3 = [(ProximitySetupController *)v8 session];
  v4 = [(SASProximitySession *)v3 sendAction:v6];

  LOBYTE(v3) = [v6 passcodeValid];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)willApplySettings:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(ProximitySetupController *)v5 delegate];
  [(ProximitySetupControllerDelegate *)v3 willApplyProximitySettingsWithCompletion:location[0]];

  objc_storeStrong(location, 0);
}

- (void)didApplySettings
{
  v9 = self;
  v8[1] = a2;
  v2 = [(ProximitySetupController *)self delegate];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001D270C;
  v7 = &unk_10032B2E0;
  v8[0] = v9;
  [(ProximitySetupControllerDelegate *)v2 didApplyProximitySettingsWithWillReboot:&v3];

  objc_storeStrong(v8, 0);
}

- (void)skippedApplySettings
{
  v2 = [(ProximitySetupController *)self delegate:a2];
  [(ProximitySetupControllerDelegate *)v2 skippedApplyProximitySettings];
}

- (void)applySettings
{
  v133 = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v131 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v131;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Applying settings from proximity setup...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v129 = _BYLoggingFacility();
  v128 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ProximitySetupController *)v133 information];
    v5 = [(SASProximityInformation *)v4 localePreferences];
    sub_10006AE18(v143, v5);
    _os_log_impl(&_mh_execute_header, v129, v128, "Setting the locale preferences to %@", v143, 0xCu);
  }

  objc_storeStrong(&v129, 0);
  v6 = [(ProximitySetupController *)v133 information];
  v7 = [(SASProximityInformation *)v6 localePreferences];

  if (v7)
  {
    v8 = [(ProximitySetupController *)v133 information];
    v9 = [(SASProximityInformation *)v8 localePreferences];
    [NSLocale setArchivedPreferences:v9];

    v127 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v126 = _BYLoggingFacility();
    v125 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v142, v127);
      _os_log_impl(&_mh_execute_header, v126, v125, "Setting the locale to %@", v142, 0xCu);
    }

    objc_storeStrong(&v126, 0);
    v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
    [v10 setValue:v127 forKey:3];

    v11 = [(ProximitySetupController *)v133 buddyPreferences];
    [(BYPreferencesController *)v11 setObject:v127 forKey:@"Locale"];

    objc_storeStrong(&v127, 0);
  }

  else
  {
    v124 = _BYLoggingFacility();
    v123 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v124;
      v13 = v123;
      sub_10006AA68(v122);
      _os_log_impl(&_mh_execute_header, v12, v13, "No data received for locale preferences. Proximity data source obsolete.", v122, 2u);
    }

    objc_storeStrong(&v124, 0);
  }

  v14 = [(ProximitySetupController *)v133 information];
  v15 = [(SASProximityInformation *)v14 keyboards];

  if (v15)
  {
    v121 = _BYLoggingFacility();
    v120 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(ProximitySetupController *)v133 information];
      v17 = [(SASProximityInformation *)v16 keyboards];
      sub_10006AE18(v141, v17);
      _os_log_impl(&_mh_execute_header, v121, v120, "Setting the keyboards to %@", v141, 0xCu);
    }

    objc_storeStrong(&v121, 0);
    v18 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v19 = [(ProximitySetupController *)v133 information];
    v20 = [(SASProximityInformation *)v19 keyboards];
    [v18 saveInputModes:v20];
  }

  else
  {
    v119 = _BYLoggingFacility();
    v118 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v119;
      v22 = v118;
      sub_10006AA68(v117);
      _os_log_impl(&_mh_execute_header, v21, v22, "No data received for keyboards...", v117, 2u);
    }

    objc_storeStrong(&v119, 0);
  }

  v23 = [(ProximitySetupController *)v133 information];
  v24 = [(SASProximityInformation *)v23 timeZone];

  if (v24)
  {
    v25 = [(ProximitySetupController *)v133 information];
    v26 = [(SASProximityInformation *)v25 timeZone];
    [v26 UTF8String];
    v27 = tzlink();

    v116 = v27;
    if (v27)
    {
      v111 = _BYLoggingFacility();
      v110 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(ProximitySetupController *)v133 information];
        v36 = [(SASProximityInformation *)v35 timeZone];
        v37 = strerror(v116);
        sub_1001D390C(v138, v36, v37);
        _os_log_impl(&_mh_execute_header, v111, v110, "Failed to change time zone to %@ - %s", v138, 0x16u);
      }

      objc_storeStrong(&v111, 0);
    }

    else
    {
      v115 = _BYLoggingFacility();
      v114 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(ProximitySetupController *)v133 information];
        if (([(SASProximityInformation *)v28 automaticTimeZoneEnabled]& 1) != 0)
        {
          v29 = @"enabled";
        }

        else
        {
          v29 = @"disabled";
        }

        sub_10006AE18(v140, v29);
        _os_log_impl(&_mh_execute_header, v115, v114, "Setting automatic time zone setting to %@", v140, 0xCu);
      }

      objc_storeStrong(&v115, 0);
      v30 = [(ProximitySetupController *)v133 information];
      [(SASProximityInformation *)v30 automaticTimeZoneEnabled];
      TMSetAutomaticTimeZoneEnabled();

      v113 = _BYLoggingFacility();
      v112 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(ProximitySetupController *)v133 information];
        v32 = [(SASProximityInformation *)v31 timeZone];
        sub_10006AE18(v139, v32);
        _os_log_impl(&_mh_execute_header, v113, v112, "Setting the time zone to %@...", v139, 0xCu);
      }

      objc_storeStrong(&v113, 0);
      v33 = [(ProximitySetupController *)v133 information];
      v34 = [(SASProximityInformation *)v33 timeZone];
      CFPreferencesSetAppValue(@"timezone", v34, @"com.apple.preferences.datetime");

      CFPreferencesSetAppValue(@"timezoneset", kCFBooleanTrue, @"com.apple.preferences.datetime");
      CFPreferencesAppSynchronize(@"com.apple.preferences.datetime");
      +[NSTimeZone resetSystemTimeZone];
    }
  }

  else
  {
    v109 = _BYLoggingFacility();
    v108 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v109;
      v39 = v108;
      sub_10006AA68(v107);
      _os_log_impl(&_mh_execute_header, v38, v39, "No data received for time zone...", v107, 2u);
    }

    objc_storeStrong(&v109, 0);
  }

  v40 = [(ProximitySetupController *)v133 backupMetadata];
  v41 = [(BYBackupMetadata *)v40 hasUserInterfaceStyleMode];

  if (v41)
  {
    v106 = _BYLoggingFacility();
    v105 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [(ProximitySetupController *)v133 backupMetadata];
      sub_100077E48(v137, [(BYBackupMetadata *)v42 userInterfaceStyleMode]);
      _os_log_impl(&_mh_execute_header, v106, v105, "Applying settings from proximity setup for appearance %lli ...", v137, 0xCu);
    }

    objc_storeStrong(&v106, 0);
    v43 = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
    v44 = [(ProximitySetupController *)v133 backupMetadata];
    [v43 setModeValue:{-[BYBackupMetadata userInterfaceStyleMode](v44, "userInterfaceStyleMode")}];

    v45 = [(ProximitySetupController *)v133 buddyPreferences];
    [(BYPreferencesController *)v45 setObject:&__kCFBooleanTrue forKey:@"UserInterfaceStyleModePresented"];
  }

  else
  {
    v104 = _BYLoggingFacility();
    v103 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v104;
      v47 = v103;
      sub_10006AA68(v102);
      _os_log_impl(&_mh_execute_header, v46, v47, "No data received for appearance settings...", v102, 2u);
    }

    objc_storeStrong(&v104, 0);
  }

  v48 = [(ProximitySetupController *)v133 information];
  v49 = [(SASProximityInformation *)v48 accessibilitySettings];

  if (v49)
  {
    v101 = _BYLoggingFacility();
    v100 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v101;
      v51 = v100;
      sub_10006AA68(v99);
      _os_log_impl(&_mh_execute_header, v50, v51, "Applying accessibility settings...", v99, 2u);
    }

    objc_storeStrong(&v101, 0);
    v52 = [(ProximitySetupController *)v133 information];
    v53 = [(SASProximityInformation *)v52 accessibilitySettings];
    _AXSRestoreSettingsFromDataBlobForBuddy();
  }

  else
  {
    v98 = _BYLoggingFacility();
    v97 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v98;
      v55 = v97;
      sub_10006AA68(v96);
      _os_log_impl(&_mh_execute_header, v54, v55, "No data received for accessibility settings...", v96, 2u);
    }

    objc_storeStrong(&v98, 0);
  }

  v56 = [(ProximitySetupController *)v133 information];
  v57 = [(SASProximityInformation *)v56 allowMoreOn5G];
  v58 = [v57 BOOLValue];

  if (v58)
  {
    v95 = _BYLoggingFacility();
    v94 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v59 = v95;
      v60 = v94;
      sub_10006AA68(v93);
      _os_log_impl(&_mh_execute_header, v59, v60, "Enabling Allow More on 5G...", v93, 2u);
    }

    objc_storeStrong(&v95, 0);
    v61 = [CoreTelephonyClient alloc];
    v62 = dispatch_get_global_queue(0, 0);
    v92 = [v61 initWithQueue:v62];

    v91 = 0;
    v89 = 0;
    v63 = [v92 getCurrentDataSubscriptionContextSync:&v89];
    objc_storeStrong(&v91, v89);
    v90 = v63;
    if (v91)
    {
      v88 = _BYLoggingFacility();
      v87 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v85 = 0;
        v83 = 0;
        if (_BYIsInternalInstall())
        {
          v64 = v91;
        }

        else if (v91)
        {
          v86 = [v91 domain];
          v85 = 1;
          v64 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v86, [v91 code]);
          v84 = v64;
          v83 = 1;
        }

        else
        {
          v64 = 0;
        }

        sub_100071CBC(v136, v64);
        _os_log_error_impl(&_mh_execute_header, v88, v87, "Failed to get data subscription context: %{public}@", v136, 0xCu);
        if (v83)
        {
        }

        if (v85)
        {
        }
      }

      objc_storeStrong(&v88, 0);
    }

    v82 = [CTServiceDescriptor descriptorWithSubscriptionContext:v90];
    v65 = [v92 setLowDataMode:v82 enable:0];
    v66 = v91;
    v91 = v65;

    if (v91)
    {
      oslog = _BYLoggingFacility();
      v80 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v78 = 0;
        v76 = 0;
        if (_BYIsInternalInstall())
        {
          v67 = v91;
        }

        else if (v91)
        {
          v79 = [v91 domain];
          v78 = 1;
          v67 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v79, [v91 code]);
          v77 = v67;
          v76 = 1;
        }

        else
        {
          v67 = 0;
        }

        sub_100071CBC(v135, v67);
        _os_log_error_impl(&_mh_execute_header, oslog, v80, "Failed to set low data mode: %{public}@", v135, 0xCu);
        if (v76)
        {
        }

        if (v78)
        {
        }
      }

      objc_storeStrong(&oslog, 0);
    }

    v68 = [v92 setInterfaceCost:v82 expensive:0];
    v69 = v91;
    v91 = v68;

    if (v91)
    {
      v75 = _BYLoggingFacility();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v73 = 0;
        v71 = 0;
        if (_BYIsInternalInstall())
        {
          v70 = v91;
        }

        else if (v91)
        {
          v74 = [v91 domain];
          v73 = 1;
          v70 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v74, [v91 code]);
          v72 = v70;
          v71 = 1;
        }

        else
        {
          v70 = 0;
        }

        sub_100071CBC(v134, v70);
        _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "Failed to set interface cost: %{public}@", v134, 0xCu);
        if (v71)
        {
        }

        if (v73)
        {
        }
      }

      objc_storeStrong(&v75, 0);
    }

    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v90, 0);
    objc_storeStrong(&v91, 0);
    objc_storeStrong(&v92, 0);
  }

  [(ProximitySetupController *)v133 setHasAppliedSettings:1];
  [(ProximitySetupController *)v133 didApplySettings];
}

- (void)startiCloudBackup
{
  v5 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(SASProximityBackupAction);
  [location[0] setShouldStartBackup:1];
  v2 = [(ProximitySetupController *)v5 session];
  v3 = [(SASProximitySession *)v2 sendAction:location[0]];

  objc_storeStrong(location, 0);
}

- (void)addObserver:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(ProximitySetupController *)v12 observerQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D3AC4;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(ProximitySetupController *)v12 observerQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D3C28;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)notifyObserversConnectionTerminated
{
  v9 = self;
  v8[1] = a2;
  v2 = [(ProximitySetupController *)self observerQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001D3D48;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (BOOL)_allowedToPair
{
  v5 = self;
  v4[1] = a2;
  if ([(ProximitySetupController *)self intentToMigrate])
  {
    v4[0] = MGCopyAnswer();
    v2 = [(ProximitySetupController *)v5 deviceClass];
    v6 = [BuddyMigrationCapability isMigrationSupportedFromDeviceClass:v2 toDeviceClass:v4[0] reason:0];

    objc_storeStrong(v4, 0);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (void)_updatedMessageSession:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(ProximitySetupController *)v7 session];
  [(SASProximitySession *)v4 setSharingMessageSession:v3];

  v5 = [(ProximitySetupController *)v7 session];
  [(SASProximitySession *)v5 activate];

  objc_storeStrong(location, 0);
}

- (void)_setConnected:(BOOL)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, v15);
    _os_log_impl(&_mh_execute_header, oslog, v13, "Proximity connection updating to: %d", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  [(ProximitySetupController *)v17 setDisconnecting:0];
  v3 = v15;
  v4 = [(ProximitySetupController *)v17 session];
  [(SASProximitySession *)v4 setConnected:v3];

  if (!v15)
  {
    v5 = [(ProximitySetupController *)v17 session];
    v6 = [(SASProximitySession *)v5 sharingMessageSession];

    if (v6)
    {
      v12 = _BYLoggingFacility();
      v11 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v12;
        v8 = v11;
        sub_10006AA68(v10);
        _os_log_impl(&_mh_execute_header, v7, v8, "Proximity session clearing sharingMessageSession...", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
    }

    v9 = [(ProximitySetupController *)v17 session];
    [(SASProximitySession *)v9 setSharingMessageSession:0];
  }
}

+ (BOOL)_supportsDependentSetup:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] productVersion];
  v4 = [v3 compare:@"16" options:64];
  v7 = 0;
  v5 = 0;
  if (v4 != -1)
  {
    v8 = [location[0] appleID];
    v7 = 1;
    v5 = v8 != 0;
  }

  v10 = v5;
  if (v7)
  {
  }

  objc_storeStrong(location, 0);
  return v10;
}

- (void)_setSetupIntent
{
  v2 = [(ProximitySetupController *)self setupMethod:a2];
  [(BuddySetupMethod *)v2 setIntent:1];
}

- (void)proximitySetupCompleted:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v17 = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v12 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v15 = [location[0] domain];
        v14 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v15, [location[0] code]);
        v13 = v3;
        v12 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_impl(&_mh_execute_header, v17, v16, "Proximity setup failed with error: %{public}@", buf, 0xCu);
      if (v12)
      {
      }

      if (v14)
      {
      }
    }

    objc_storeStrong(&v17, 0);
  }

  v4 = [(ProximitySetupController *)v19 observerQueue];
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D453C;
  v9 = &unk_10032B838;
  v10 = v19;
  v11 = location[0];
  dispatch_async(v4, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)displayProximityPinCode:(id)a3 visual:(BOOL)a4
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = a4;
  if ([(ProximitySetupController *)v35 _isWaitingForReconnection])
  {
    v32 = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v32;
      v6 = v31;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "DisplayProximityPinCode called while reconnecting session. Abort proximity setup...", buf, 2u);
    }

    objc_storeStrong(&v32, 0);
    v7 = [(ProximitySetupController *)v35 resumeBlock];
    v7[2](v7, 0);

    [(ProximitySetupController *)v35 endPairing];
    v29 = 1;
  }

  else if ([(ProximitySetupController *)v35 _allowedToPair])
  {
    oslog = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = oslog;
      v10 = v21;
      sub_10006AA68(v20);
      _os_log_impl(&_mh_execute_header, v9, v10, "Displaying pairing code to user...", v20, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v11 = &_dispatch_main_q;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1001D4A0C;
    v16 = &unk_10032BAC0;
    v17 = v35;
    v18 = location[0];
    v19 = v33;
    dispatch_async(v11, &v12);

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v29 = 0;
  }

  else
  {
    v8 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v24 = -1073741824;
    v25 = 0;
    v26 = sub_1001D4998;
    v27 = &unk_10032B0D0;
    v28 = v35;
    dispatch_async(v8, &block);

    [(ProximitySetupController *)v35 endPairing];
    v29 = 1;
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)dismissProximityPinCode
{
  v14 = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v12;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Dismissing pairing code...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  [(ProximitySetupController *)v14 resetInformation];
  [(ProximitySetupController *)v14 _setConnected:0];
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D4D24;
  v9 = &unk_10032B0D0;
  v10 = v14;
  dispatch_async(v4, &block);

  objc_storeStrong(&v10, 0);
}

- (void)proximityConnectionPreparing:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Proximity connection preparing message session...", v5, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(ProximitySetupController *)v9 _updatedMessageSession:location[0]];
  objc_storeStrong(location, 0);
}

- (void)proximityConnectionInitiated
{
  v7 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "Proximity connection initiated...", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(ProximitySetupController *)v7 _setConnected:1];
}

- (id)performHandshake
{
  v22 = self;
  v21[1] = a2;
  v21[0] = 0;
  oslog = _BYLoggingFacility();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog;
    v3 = v19;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Handshaking with source device...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  location = objc_alloc_init(SASProximityHandshakeAction);
  v4 = [(ProximitySetupController *)v22 session];
  v5 = [(SASProximitySession *)v4 sendAction:location];
  v6 = v21[0];
  v21[0] = v5;

  if (v21[0])
  {
    v16 = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v23, v21[0]);
      _os_log_impl(&_mh_execute_header, v16, v15, "Failed to handshake - %@", v23, 0xCu);
    }

    objc_storeStrong(&v16, 0);
  }

  else
  {
    v7 = [location handshake];
    [(ProximitySetupController *)v22 setHandshake:v7];

    v14 = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v14;
      v9 = v13;
      sub_10006AA68(v12);
      _os_log_impl(&_mh_execute_header, v8, v9, "Handshake complete!", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
  }

  v10 = v21[0];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v21, 0);
  return v10;
}

- (void)readyForInformation
{
  v46 = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v44 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v44;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Requesting information from source device...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v4 = [(ProximitySetupController *)v46 session];
  v5 = [(SASProximitySession *)v4 isConnected]& 1;

  if (!v5)
  {
    v42 = _BYLoggingFacility();
    v41 = 16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v6 = v42;
      v7 = v41;
      sub_10006AA68(v40);
      _os_log_error_impl(&_mh_execute_header, v6, v7, "ProximitySetupController should have valid connection since we are ready for information.", v40, 2u);
    }

    objc_storeStrong(&v42, 0);
  }

  [(ProximitySetupController *)v46 _setSetupIntent];
  v39 = objc_alloc_init(SASProximityInformationAction);
  v8 = [(ProximitySetupController *)v46 session];
  v9 = [(SASProximitySession *)v8 sendAction:v39];

  if (!-[ProximitySetupController intentToMigrate](v46, "intentToMigrate") || (v10 = [v39 information], v11 = -[ProximitySetupController productVersion](v46, "productVersion"), v12 = -[ProximitySetupController deviceClass](v46, "deviceClass"), v13 = +[BuddyMigrationCapability sourceDeviceSupportsMigration:productVersion:deviceClass:softwareUpdateRequired:reason:](BuddyMigrationCapability, "sourceDeviceSupportsMigration:productVersion:deviceClass:softwareUpdateRequired:reason:", v10, v11, v12, 0, 0), v12, v11, v10, v38 = v13 & 1, (v13 & 1) != 0))
  {
    v15 = v46;
    v16 = [v39 information];
    [(ProximitySetupController *)v15 updateInformation:v16];

    v17 = [(ProximitySetupController *)v46 resumeBlock];
    if (v17)
    {
      v18 = [(ProximitySetupController *)v46 resumeBlock];
      v18[2](v18, 1);

      [(ProximitySetupController *)v46 setResumeBlock:0];
    }

    oslog = _BYLoggingFacility();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = oslog;
      v20 = v29;
      sub_10006AA68(v28);
      _os_log_impl(&_mh_execute_header, v19, v20, "Received information from source device!", v28, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if ([(ProximitySetupController *)v46 shouldApplySettings])
    {
      v21 = v46;
      v22 = _NSConcreteStackBlock;
      v23 = -1073741824;
      v24 = 0;
      v25 = sub_1001D55E0;
      v26 = &unk_10032B0D0;
      v27 = v46;
      [(ProximitySetupController *)v21 willApplySettings:&v22];
      objc_storeStrong(&v27, 0);
    }

    else
    {
      [(ProximitySetupController *)v46 skippedApplySettings];
    }

    v31 = 0;
  }

  else
  {
    [(ProximitySetupController *)v46 setupFinished];
    v14 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v33 = -1073741824;
    v34 = 0;
    v35 = sub_1001D5590;
    v36 = &unk_10032B0D0;
    v37 = v46;
    dispatch_async(v14, &block);

    v31 = 1;
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v39, 0);
}

- (void)proximityConnectionTerminated
{
  v8 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Proximity connection has disconnected", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(ProximitySetupController *)v8 _setConnected:0];
  [(ProximitySetupController *)v8 notifyObserversConnectionTerminated];
  location = [(ProximitySetupController *)v8 backupMetadata];
  [(ProximitySetupController *)v8 resetInformation];
  [(ProximitySetupController *)v8 setBackupMetadataFromTerminatedConnection:location];
  [(ProximitySetupController *)v8 endAdvertisingProximitySetup];
  objc_storeStrong(&location, 0);
}

- (void)proximityConnectionReconnected
{
  v7 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "Proximity connection has reconnected", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(ProximitySetupController *)v7 setShouldApplySettings:0];
  [(ProximitySetupController *)v7 stopReconnecting];
  [(ProximitySetupController *)v7 _setConnected:1];
}

- (void)receivedLanguages:(id)a3 locale:(id)a4 model:(id)a5 deviceClass:(id)a6 accessibilitySettings:(id)a7
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = 0;
  objc_storeStrong(&v15, a6);
  v14 = 0;
  objc_storeStrong(&v14, a7);
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100078180(buf, location[0], v17);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Received language and locale: %@ and %@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v11 = _BYLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_100078180(v20, v16, v15);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Source device is %@ (%@)", v20, 0x16u);
  }

  objc_storeStrong(&v11, 0);
  [(ProximitySetupController *)v19 setReceivedLanguages:location[0]];
  [(ProximitySetupController *)v19 setReceivedLocale:v17];
  [(ProximitySetupController *)v19 setModel:v16];
  [(ProximitySetupController *)v19 setDeviceClass:v15];
  [(ProximitySetupController *)v19 setAccessibilitySettings:v14];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isWaitingForReconnection
{
  v2 = [(ProximitySetupController *)self resumeBlock:a2];
  v3 = v2 != 0;

  return v3;
}

- (void)ready
{
  v14 = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v12;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Proximity connection ready...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v4 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D5B44;
  v9 = &unk_10032B0D0;
  v10 = v14;
  dispatch_async(v4, &block);

  objc_storeStrong(&v10, 0);
}

- (void)receivedBackupAction:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(ProximitySetupController *)v12 observerQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D5CFC;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_sync(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)pairingEndedByUser
{
  v7 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "Proximity connection end pairing...", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(ProximitySetupController *)v7 endPairing];
}

- (ProximitySetupControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end