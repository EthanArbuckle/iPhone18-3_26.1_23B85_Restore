@interface ProximitySetupController
+ (BOOL)_supportsDependentSetup:(id)setup;
- (BOOL)_allowedToPair;
- (BOOL)_isWaitingForReconnection;
- (BOOL)hasConnection;
- (BOOL)shouldEnableProximity;
- (BOOL)supportsIntent;
- (BOOL)validatePasscode:(id)passcode;
- (BYBackupMetadata)backupMetadata;
- (CUMessageSession)sharingMessageSession;
- (NSArray)preferredLanguages;
- (ProximitySetupController)initWithMiscState:(id)state buddyPreferences:(id)preferences buddyPreferencesExcludedFromBackup:(id)backup featureFlags:(id)flags analyticsManager:(id)manager setupMethod:(id)method;
- (ProximitySetupControllerDelegate)delegate;
- (id)createSignInTask;
- (id)createTargetDeviceMigrationManagerWithPrepareForMigrationRebootBlock:(id)block passcodeCacheManager:(id)manager analyticsManager:(id)analyticsManager lockdownModeProvider:(id)provider;
- (id)performHandshake;
- (void)_setConnected:(BOOL)connected;
- (void)_setSetupIntent;
- (void)_updatedMessageSession:(id)session;
- (void)addObserver:(id)observer;
- (void)applySettings;
- (void)beginAdvertisingProximitySetup;
- (void)beginDeviceToDeviceMigration;
- (void)cloudConfigDidChange:(id)change;
- (void)didApplySettings;
- (void)dismissProximityPinCode;
- (void)displayProximityPinCode:(id)code visual:(BOOL)visual;
- (void)endAdvertisingProximitySetup;
- (void)endDeviceToDeviceMigration;
- (void)endPairing;
- (void)languageChangeCompleted;
- (void)needsToResume:(id)resume;
- (void)notifyObserversConnectionTerminated;
- (void)pairingEndedByUser;
- (void)prepareForDependentSetup;
- (void)prepareForReboot;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)preparing;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)completed;
- (void)ready;
- (void)readyForInformation;
- (void)receivedBackupAction:(id)action;
- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings;
- (void)removeObserver:(id)observer;
- (void)resetInformation;
- (void)resumeSession;
- (void)setSourceProxCardVisibliityForSIMSetupExternalAuthentication:(BOOL)authentication;
- (void)setupFinished;
- (void)showMigrationInterfaceOnSource;
- (void)skippedApplySettings;
- (void)startOver;
- (void)startiCloudBackup;
- (void)suspendConnectionForSoftwareUpdate:(id)update;
- (void)updateInformation:(id)information;
- (void)waitForIntent:(id)intent;
- (void)waitForSessionReconnection:(id)reconnection;
- (void)willApplySettings:(id)settings;
@end

@implementation ProximitySetupController

- (ProximitySetupController)initWithMiscState:(id)state buddyPreferences:(id)preferences buddyPreferencesExcludedFromBackup:(id)backup featureFlags:(id)flags analyticsManager:(id)manager setupMethod:(id)method
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  v30 = 0;
  objc_storeStrong(&v30, preferences);
  v29 = 0;
  objc_storeStrong(&v29, backup);
  v28 = 0;
  objc_storeStrong(&v28, flags);
  v27 = 0;
  objc_storeStrong(&v27, manager);
  v26 = 0;
  objc_storeStrong(&v26, method);
  v13 = selfCopy;
  selfCopy = 0;
  v25.receiver = v13;
  v25.super_class = ProximitySetupController;
  v14 = [(ProximitySetupController *)&v25 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    [selfCopy setMiscState:location[0]];
    [selfCopy setBuddyPreferences:v30];
    [selfCopy setBuddyPreferencesExcludedFromBackup:v29];
    [selfCopy setFeatureFlags:v28];
    [selfCopy setSetupMethod:v26];
    v15 = [BuddyOverridesFactory proximityTargetClientWithDelegate:selfCopy];
    [selfCopy setClient:v15];

    [selfCopy setShouldApplySettings:1];
    client = [selfCopy client];
    v17 = [BuddyOverridesFactory proximitySessionWithOverrideClient:client];
    [selfCopy setSession:v17];

    v18 = selfCopy;
    session = [selfCopy session];
    [session setDelegate:v18];

    v20 = objc_alloc_init(NSMutableArray);
    [selfCopy setObservers:v20];

    v21 = dispatch_queue_create("Proximity Setup Termination Observer Queue", 0);
    [selfCopy setObserverQueue:v21];

    [selfCopy setAnalyticsManager:v27];
    v22 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v22 addObserver:selfCopy selector:"cloudConfigDidChange:" name:MCCloudConfigurationDidChangeNotification object:0];
  }

  v23 = selfCopy;
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v23;
}

- (BOOL)shouldEnableProximity
{
  v2 = +[BuddyCloudConfigManager sharedManager];
  v15 = 0;
  v13 = 0;
  shouldShowCloudConfigurationUI = 1;
  if (([v2 isMultiUser] & 1) == 0)
  {
    v16 = +[BuddyCloudConfigManager sharedManager];
    v15 = 1;
    shouldShowCloudConfigurationUI = 1;
    if (([v16 hasCloudConfiguration] & 1) == 0)
    {
      v14 = +[MCProfileConnection sharedConnection];
      v13 = 1;
      shouldShowCloudConfigurationUI = [v14 shouldShowCloudConfigurationUI];
    }
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  v17 = shouldShowCloudConfigurationUI & 1;
  v4 = +[BuddyDeviceManagementSupport sharedSupport];
  shouldDisallowProximityAdvertisement = [v4 shouldDisallowProximityAdvertisement];

  if (v17 & 1) != 0 || (shouldDisallowProximityAdvertisement)
  {
    return 0;
  }

  buddyPreferences = [(ProximitySetupController *)self buddyPreferences];
  v7 = [BuddyRestoreState hasStateFromPreferences:buddyPreferences];

  if (v7)
  {
    return 0;
  }

  v12 = BYSetupAssistantHasCompletedInitialRun() & 1;
  userSkippedProximity = [(ProximitySetupController *)self userSkippedProximity];
  v9 = 1;
  if ((userSkippedProximity & 1) == 0)
  {
    hasAppliedSettings = [(ProximitySetupController *)self hasAppliedSettings];
    v9 = 1;
    if ((hasAppliedSettings & 1) == 0)
    {
      v9 = v12;
    }
  }

  return (v9 ^ 1) & 1;
}

- (BOOL)hasConnection
{
  session = [(ProximitySetupController *)self session];
  isConnected = [(SASProximitySession *)session isConnected];

  if (isConnected)
  {
    return ![(ProximitySetupController *)self isDisconnecting];
  }

  else
  {
    return 0;
  }
}

- (void)needsToResume:(id)resume
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, resume);
  if (location[0])
  {
    if ([(ProximitySetupController *)selfCopy hasConnection]|| [(ProximitySetupController *)selfCopy hasResumed])
    {
      (*(location[0] + 2))(location[0], 0);
    }

    else
    {
      client = [(ProximitySetupController *)selfCopy client];
      v4 = _NSConcreteStackBlock;
      v5 = -1073741824;
      v6 = 0;
      v7 = sub_1001D0B7C;
      v8 = &unk_10032B020;
      v9 = selfCopy;
      v10 = location[0];
      [(BYDaemonProximityTargetClientProtocol *)client hasConnection:&v4];

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
  selfCopy = self;
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
  client = [(ProximitySetupController *)selfCopy client];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D0D08;
  v9 = &unk_10032EA88;
  v10 = selfCopy;
  [(BYDaemonProximityTargetClientProtocol *)client resumeProximitySetup:&v5];

  objc_storeStrong(&v10, 0);
}

- (void)beginAdvertisingProximitySetup
{
  if (![(ProximitySetupController *)self hasConnection])
  {
    client = [(ProximitySetupController *)self client];
    [(BYDaemonProximityTargetClientProtocol *)client beginAdvertisingProximitySetup];
  }
}

- (void)endAdvertisingProximitySetup
{
  selfCopy = self;
  oslog[1] = a2;
  if (![(ProximitySetupController *)self hasConnection])
  {
    if ([(ProximitySetupController *)selfCopy reconnecting])
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
      client = [(ProximitySetupController *)selfCopy client];
      [(BYDaemonProximityTargetClientProtocol *)client endAdvertisingProximitySetup];
    }
  }
}

- (void)endPairing
{
  [(ProximitySetupController *)self setResumeBlock:0, a2];
  client = [(ProximitySetupController *)self client];
  [(BYDaemonProximityTargetClientProtocol *)client endPairing];
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

- (void)updateInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  [(ProximitySetupController *)selfCopy setInformation:location[0]];
  [(ProximitySetupController *)selfCopy setBackupMetadataFromTerminatedConnection:0];
  information = [(ProximitySetupController *)selfCopy information];
  deviceName = [(SASProximityInformation *)information deviceName];
  [(ProximitySetupController *)selfCopy setDeviceName:deviceName];

  information2 = [(ProximitySetupController *)selfCopy information];
  deviceModel = [(SASProximityInformation *)information2 deviceModel];
  [(ProximitySetupController *)selfCopy setModel:deviceModel];

  information3 = [(ProximitySetupController *)selfCopy information];
  deviceClass = [(SASProximityInformation *)information3 deviceClass];
  [(ProximitySetupController *)selfCopy setDeviceClass:deviceClass];

  information4 = [(ProximitySetupController *)selfCopy information];
  productVersion = [(SASProximityInformation *)information4 productVersion];
  [(ProximitySetupController *)selfCopy setProductVersion:productVersion];

  v11 = [BYExpressSetupProximityDataSource alloc];
  information5 = [(ProximitySetupController *)selfCopy information];
  v13 = [(BYExpressSetupProximityDataSource *)v11 initWithInformation:information5];
  [(ProximitySetupController *)selfCopy setExpressDataSource:v13];

  objc_storeStrong(location, 0);
}

- (void)setupFinished
{
  if ([(ProximitySetupController *)self hasConnection])
  {
    [(ProximitySetupController *)self setDisconnecting:1];
    session = [(ProximitySetupController *)self session];
    v3 = objc_alloc_init(SASProximityFinishedAction);
    v4 = [(SASProximitySession *)session sendAction:v3];

    [(ProximitySetupController *)self _setConnected:0];
    [(ProximitySetupController *)self notifyObserversConnectionTerminated];
  }

  [(ProximitySetupController *)self endAdvertisingProximitySetup];
  miscState = [(ProximitySetupController *)self miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  [(BuddyTargetDeviceMigrationManager *)migrationManager cancelWithCause:9];
}

- (void)cloudConfigDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3 = +[BuddyCloudConfigManager sharedManager];
  cloudConfigurationDetails = [v3 cloudConfigurationDetails];

  if (cloudConfigurationDetails)
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
    [(ProximitySetupController *)selfCopy endAdvertisingProximitySetup];
  }

  objc_storeStrong(location, 0);
}

- (BYBackupMetadata)backupMetadata
{
  v2 = [(ProximitySetupController *)self information:a2];
  backupMetadata = [(SASProximityInformation *)v2 backupMetadata];
  v4 = BYMetadataFromDataArchive();

  return v4;
}

- (NSArray)preferredLanguages
{
  v2 = [(ProximitySetupController *)self information:a2];
  localePreferences = [(SASProximityInformation *)v2 localePreferences];
  v4 = [localePreferences objectForKeyedSubscript:@"AppleLanguages"];

  return v4;
}

- (void)languageChangeCompleted
{
  selfCopy = self;
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
  backupMetadata = [(ProximitySetupController *)selfCopy backupMetadata];
  hasUserInterfaceStyleMode = [(BYBackupMetadata *)backupMetadata hasUserInterfaceStyleMode];

  if (hasUserInterfaceStyleMode)
  {
    buddyPreferences = [(ProximitySetupController *)selfCopy buddyPreferences];
    [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"UserInterfaceStyleModePresented"];
  }
}

- (CUMessageSession)sharingMessageSession
{
  v2 = [(ProximitySetupController *)self session:a2];
  sharingMessageSession = [(SASProximitySession *)v2 sharingMessageSession];

  return sharingMessageSession;
}

- (id)createTargetDeviceMigrationManagerWithPrepareForMigrationRebootBlock:(id)block passcodeCacheManager:(id)manager analyticsManager:(id)analyticsManager lockdownModeProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v20 = 0;
  objc_storeStrong(&v20, manager);
  v19 = 0;
  objc_storeStrong(&v19, analyticsManager);
  v18 = 0;
  objc_storeStrong(&v18, provider);
  client = [(ProximitySetupController *)selfCopy client];
  fileTransferSessionTemplate = [(BYDaemonProximityTargetClientProtocol *)client fileTransferSessionTemplate];

  v10 = [BuddyTargetDeviceMigrationManager alloc];
  v11 = selfCopy;
  v12 = location[0];
  v13 = v20;
  buddyPreferencesExcludedFromBackup = [(ProximitySetupController *)selfCopy buddyPreferencesExcludedFromBackup];
  v15 = [(BuddyTargetDeviceMigrationManager *)v10 initWithFileTranferSession:fileTransferSessionTemplate proximitySetupController:v11 prepareForMigrationRebootBlock:v12 passcodeCacheManager:v13 buddyPreferencesExcludedFromBackup:buddyPreferencesExcludedFromBackup analyticsManager:v19 lockdownModeProvider:v18];

  objc_storeStrong(&fileTransferSessionTemplate, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v15;
}

- (void)beginDeviceToDeviceMigration
{
  selfCopy = self;
  v10[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D192C;
  v9 = &unk_10032B0D0;
  v10[0] = selfCopy;
  dispatch_async(v2, &block);

  miscState = [(ProximitySetupController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  [(BuddyTargetDeviceMigrationManager *)migrationManager start];

  objc_storeStrong(v10, 0);
}

- (void)endDeviceToDeviceMigration
{
  v2 = [(ProximitySetupController *)self client:a2];
  [(BYDaemonProximityTargetClientProtocol *)v2 endDeviceToDeviceMigration];
}

- (void)showMigrationInterfaceOnSource
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(SASProximityMigrationTransferPreparationAction);
  v8 = MGCopyAnswer();
  v2 = v8;
  [v6[0] setDeviceName:v2];

  session = [(ProximitySetupController *)selfCopy session];
  v4 = [(SASProximitySession *)session sendAction:v6[0]];

  client = [(ProximitySetupController *)selfCopy client];
  [(BYDaemonProximityTargetClientProtocol *)client showMigrationInterfaceOnSource];

  objc_storeStrong(v6, 0);
}

- (void)suspendConnectionForSoftwareUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  client = [(ProximitySetupController *)selfCopy client];
  [(BYDaemonProximityTargetClientProtocol *)client suspendConnectionForSoftwareUpdate:location[0]];

  objc_storeStrong(location, 0);
}

- (void)setSourceProxCardVisibliityForSIMSetupExternalAuthentication:(BOOL)authentication
{
  if (authentication)
  {
    client = [(ProximitySetupController *)self client];
    [(BYDaemonProximityTargetClientProtocol *)client endSIMSetupExternalAuthentication];
  }

  else
  {
    client = [(ProximitySetupController *)self client];
    [(BYDaemonProximityTargetClientProtocol *)client beginSIMSetupExternalAuthentication];
  }
}

- (void)waitForSessionReconnection:(id)reconnection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reconnection);
  v4 = 0;
  v3 = 0;
  if ([(ProximitySetupController *)selfCopy hasConnection])
  {
    information = [(ProximitySetupController *)selfCopy information];
    v4 = 1;
    v3 = information != 0;
  }

  if (v4)
  {
  }

  if (v3)
  {
    (*(location[0] + 2))(location[0], 1);
    [(ProximitySetupController *)selfCopy setResumeBlock:0];
  }

  else
  {
    [(ProximitySetupController *)selfCopy setResumeBlock:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)prepareForDependentSetup
{
  selfCopy = self;
  oslog[1] = a2;
  v2 = objc_opt_class();
  information = [(ProximitySetupController *)selfCopy information];
  LOBYTE(v2) = [v2 _supportsDependentSetup:information];

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
    sharingMessageSession = [(ProximitySetupController *)selfCopy sharingMessageSession];
    featureFlags = [(ProximitySetupController *)selfCopy featureFlags];
    v9 = [(BuddyProximitySetupDependentController *)v6 initWithMessageSession:sharingMessageSession featureFlags:featureFlags];
    [(ProximitySetupController *)selfCopy setDependentController:v9];

    client = [(ProximitySetupController *)selfCopy client];
    objc_opt_class();
    LOBYTE(sharingMessageSession) = objc_opt_isKindOfClass();

    if (sharingMessageSession)
    {
      dependentController = [(ProximitySetupController *)selfCopy dependentController];
      client2 = [(ProximitySetupController *)selfCopy client];
      [(BuddyProximitySetupDependentController *)dependentController setDelegateOnClient:client2];
    }

    v13 = selfCopy;
    dependentController2 = [(ProximitySetupController *)selfCopy dependentController];
    [(ProximitySetupController *)v13 addObserver:dependentController2];
  }

  else
  {
    [(ProximitySetupController *)selfCopy setDependentController:0];
  }
}

- (BOOL)supportsIntent
{
  v2 = [(ProximitySetupController *)self dependentController:a2];
  v3 = v2 != 0;

  return v3;
}

- (void)waitForIntent:(id)intent
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, intent);
  if ([(ProximitySetupController *)selfCopy supportsIntent])
  {
    dependentController = [(ProximitySetupController *)selfCopy dependentController];
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1001D2080;
    v8 = &unk_10032EAB0;
    v9 = location[0];
    [(BuddyProximitySetupDependentController *)dependentController waitForSelectedAccountType:&v4];

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
  selfCopy = self;
  v10[1] = a2;
  [(ProximitySetupController *)self setHasAppliedSettings:0];
  [(ProximitySetupController *)selfCopy setHasValidatedPasscode:0];
  [(ProximitySetupController *)selfCopy setSignedIniCloudAccount:0];
  [(ProximitySetupController *)selfCopy setSkipExpressRestore:0];
  miscState = [(ProximitySetupController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  [(BuddyTargetDeviceMigrationManager *)migrationManager reset];

  v4 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D222C;
  v9 = &unk_10032B0D0;
  v10[0] = selfCopy;
  dispatch_async(v4, &block);

  objc_storeStrong(v10, 0);
}

- (id)createSignInTask
{
  selfCopy = self;
  location[1] = a2;
  v2 = [BuddyProximityAppleIDSignInTask alloc];
  session = [(ProximitySetupController *)selfCopy session];
  analyticsManager = [(ProximitySetupController *)selfCopy analyticsManager];
  featureFlags = [(ProximitySetupController *)selfCopy featureFlags];
  location[0] = [(BuddyProximityAppleIDSignInTask *)v2 initWithSession:session analyticsManager:analyticsManager featureFlags:featureFlags];

  sharingMessageSession = [(ProximitySetupController *)selfCopy sharingMessageSession];
  [location[0] setMessageSession:sharingMessageSession];

  information = [(ProximitySetupController *)selfCopy information];
  [location[0] setMakeStoreServiceActive:{-[SASProximityInformation usesSameAccountForiTunes](information, "usesSameAccountForiTunes") & 1}];

  v8 = location[0];
  objc_storeStrong(location, 0);
  return v8;
}

- (void)prepareForReboot
{
  selfCopy = self;
  v14 = a2;
  v12 = 0;
  v2 = 1;
  if ([(ProximitySetupController *)self hasAppliedSettings])
  {
    information = [(ProximitySetupController *)selfCopy information];
    v12 = 1;
    v2 = information == 0;
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
    client = [(ProximitySetupController *)selfCopy client];
    information2 = [(ProximitySetupController *)selfCopy information];
    [(BYDaemonProximityTargetClientProtocol *)client storeInformation:information2];

    client2 = [(ProximitySetupController *)selfCopy client];
    handshake = [(ProximitySetupController *)selfCopy handshake];
    [(BYDaemonProximityTargetClientProtocol *)client2 storeHandshake:handshake];
  }
}

- (BOOL)validatePasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
  v6 = objc_alloc_init(SASProximityPasscodeValidationAction);
  [v6 setPasscode:location[0]];
  session = [(ProximitySetupController *)selfCopy session];
  v4 = [(SASProximitySession *)session sendAction:v6];

  LOBYTE(session) = [v6 passcodeValid];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return session & 1;
}

- (void)willApplySettings:(id)settings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, settings);
  delegate = [(ProximitySetupController *)selfCopy delegate];
  [(ProximitySetupControllerDelegate *)delegate willApplyProximitySettingsWithCompletion:location[0]];

  objc_storeStrong(location, 0);
}

- (void)didApplySettings
{
  selfCopy = self;
  v8[1] = a2;
  delegate = [(ProximitySetupController *)self delegate];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001D270C;
  v7 = &unk_10032B2E0;
  v8[0] = selfCopy;
  [(ProximitySetupControllerDelegate *)delegate didApplyProximitySettingsWithWillReboot:&v3];

  objc_storeStrong(v8, 0);
}

- (void)skippedApplySettings
{
  v2 = [(ProximitySetupController *)self delegate:a2];
  [(ProximitySetupControllerDelegate *)v2 skippedApplyProximitySettings];
}

- (void)applySettings
{
  selfCopy = self;
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
    information = [(ProximitySetupController *)selfCopy information];
    localePreferences = [(SASProximityInformation *)information localePreferences];
    sub_10006AE18(v143, localePreferences);
    _os_log_impl(&_mh_execute_header, v129, v128, "Setting the locale preferences to %@", v143, 0xCu);
  }

  objc_storeStrong(&v129, 0);
  information2 = [(ProximitySetupController *)selfCopy information];
  localePreferences2 = [(SASProximityInformation *)information2 localePreferences];

  if (localePreferences2)
  {
    information3 = [(ProximitySetupController *)selfCopy information];
    localePreferences3 = [(SASProximityInformation *)information3 localePreferences];
    [NSLocale setArchivedPreferences:localePreferences3];

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

    buddyPreferences = [(ProximitySetupController *)selfCopy buddyPreferences];
    [(BYPreferencesController *)buddyPreferences setObject:v127 forKey:@"Locale"];

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

  information4 = [(ProximitySetupController *)selfCopy information];
  keyboards = [(SASProximityInformation *)information4 keyboards];

  if (keyboards)
  {
    v121 = _BYLoggingFacility();
    v120 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      information5 = [(ProximitySetupController *)selfCopy information];
      keyboards2 = [(SASProximityInformation *)information5 keyboards];
      sub_10006AE18(v141, keyboards2);
      _os_log_impl(&_mh_execute_header, v121, v120, "Setting the keyboards to %@", v141, 0xCu);
    }

    objc_storeStrong(&v121, 0);
    v18 = +[UIKeyboardPreferencesController sharedPreferencesController];
    information6 = [(ProximitySetupController *)selfCopy information];
    keyboards3 = [(SASProximityInformation *)information6 keyboards];
    [v18 saveInputModes:keyboards3];
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

  information7 = [(ProximitySetupController *)selfCopy information];
  timeZone = [(SASProximityInformation *)information7 timeZone];

  if (timeZone)
  {
    information8 = [(ProximitySetupController *)selfCopy information];
    timeZone2 = [(SASProximityInformation *)information8 timeZone];
    [timeZone2 UTF8String];
    v27 = tzlink();

    v116 = v27;
    if (v27)
    {
      v111 = _BYLoggingFacility();
      v110 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        information9 = [(ProximitySetupController *)selfCopy information];
        timeZone3 = [(SASProximityInformation *)information9 timeZone];
        v37 = strerror(v116);
        sub_1001D390C(v138, timeZone3, v37);
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
        information10 = [(ProximitySetupController *)selfCopy information];
        if (([(SASProximityInformation *)information10 automaticTimeZoneEnabled]& 1) != 0)
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
      information11 = [(ProximitySetupController *)selfCopy information];
      [(SASProximityInformation *)information11 automaticTimeZoneEnabled];
      TMSetAutomaticTimeZoneEnabled();

      v113 = _BYLoggingFacility();
      v112 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        information12 = [(ProximitySetupController *)selfCopy information];
        timeZone4 = [(SASProximityInformation *)information12 timeZone];
        sub_10006AE18(v139, timeZone4);
        _os_log_impl(&_mh_execute_header, v113, v112, "Setting the time zone to %@...", v139, 0xCu);
      }

      objc_storeStrong(&v113, 0);
      information13 = [(ProximitySetupController *)selfCopy information];
      timeZone5 = [(SASProximityInformation *)information13 timeZone];
      CFPreferencesSetAppValue(@"timezone", timeZone5, @"com.apple.preferences.datetime");

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

  backupMetadata = [(ProximitySetupController *)selfCopy backupMetadata];
  hasUserInterfaceStyleMode = [(BYBackupMetadata *)backupMetadata hasUserInterfaceStyleMode];

  if (hasUserInterfaceStyleMode)
  {
    v106 = _BYLoggingFacility();
    v105 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      backupMetadata2 = [(ProximitySetupController *)selfCopy backupMetadata];
      sub_100077E48(v137, [(BYBackupMetadata *)backupMetadata2 userInterfaceStyleMode]);
      _os_log_impl(&_mh_execute_header, v106, v105, "Applying settings from proximity setup for appearance %lli ...", v137, 0xCu);
    }

    objc_storeStrong(&v106, 0);
    v43 = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
    backupMetadata3 = [(ProximitySetupController *)selfCopy backupMetadata];
    [v43 setModeValue:{-[BYBackupMetadata userInterfaceStyleMode](backupMetadata3, "userInterfaceStyleMode")}];

    buddyPreferences2 = [(ProximitySetupController *)selfCopy buddyPreferences];
    [(BYPreferencesController *)buddyPreferences2 setObject:&__kCFBooleanTrue forKey:@"UserInterfaceStyleModePresented"];
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

  information14 = [(ProximitySetupController *)selfCopy information];
  accessibilitySettings = [(SASProximityInformation *)information14 accessibilitySettings];

  if (accessibilitySettings)
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
    information15 = [(ProximitySetupController *)selfCopy information];
    accessibilitySettings2 = [(SASProximityInformation *)information15 accessibilitySettings];
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

  information16 = [(ProximitySetupController *)selfCopy information];
  allowMoreOn5G = [(SASProximityInformation *)information16 allowMoreOn5G];
  bOOLValue = [allowMoreOn5G BOOLValue];

  if (bOOLValue)
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
          domain = [v91 domain];
          v85 = 1;
          v64 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v91 code]);
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
          domain2 = [v91 domain];
          v78 = 1;
          v67 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain2, [v91 code]);
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
          domain3 = [v91 domain];
          v73 = 1;
          v70 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain3, [v91 code]);
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

  [(ProximitySetupController *)selfCopy setHasAppliedSettings:1];
  [(ProximitySetupController *)selfCopy didApplySettings];
}

- (void)startiCloudBackup
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(SASProximityBackupAction);
  [location[0] setShouldStartBackup:1];
  session = [(ProximitySetupController *)selfCopy session];
  v3 = [(SASProximitySession *)session sendAction:location[0]];

  objc_storeStrong(location, 0);
}

- (void)addObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  observerQueue = [(ProximitySetupController *)selfCopy observerQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D3AC4;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(observerQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  observerQueue = [(ProximitySetupController *)selfCopy observerQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D3C28;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(observerQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)notifyObserversConnectionTerminated
{
  selfCopy = self;
  v8[1] = a2;
  observerQueue = [(ProximitySetupController *)self observerQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001D3D48;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(observerQueue, &block);

  objc_storeStrong(v8, 0);
}

- (BOOL)_allowedToPair
{
  selfCopy = self;
  v4[1] = a2;
  if ([(ProximitySetupController *)self intentToMigrate])
  {
    v4[0] = MGCopyAnswer();
    deviceClass = [(ProximitySetupController *)selfCopy deviceClass];
    v6 = [BuddyMigrationCapability isMigrationSupportedFromDeviceClass:deviceClass toDeviceClass:v4[0] reason:0];

    objc_storeStrong(v4, 0);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (void)_updatedMessageSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v3 = location[0];
  session = [(ProximitySetupController *)selfCopy session];
  [(SASProximitySession *)session setSharingMessageSession:v3];

  session2 = [(ProximitySetupController *)selfCopy session];
  [(SASProximitySession *)session2 activate];

  objc_storeStrong(location, 0);
}

- (void)_setConnected:(BOOL)connected
{
  selfCopy = self;
  v16 = a2;
  connectedCopy = connected;
  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, connectedCopy);
    _os_log_impl(&_mh_execute_header, oslog, v13, "Proximity connection updating to: %d", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  [(ProximitySetupController *)selfCopy setDisconnecting:0];
  v3 = connectedCopy;
  session = [(ProximitySetupController *)selfCopy session];
  [(SASProximitySession *)session setConnected:v3];

  if (!connectedCopy)
  {
    session2 = [(ProximitySetupController *)selfCopy session];
    sharingMessageSession = [(SASProximitySession *)session2 sharingMessageSession];

    if (sharingMessageSession)
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

    session3 = [(ProximitySetupController *)selfCopy session];
    [(SASProximitySession *)session3 setSharingMessageSession:0];
  }
}

+ (BOOL)_supportsDependentSetup:(id)setup
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, setup);
  productVersion = [location[0] productVersion];
  v4 = [productVersion compare:@"16" options:64];
  v7 = 0;
  v5 = 0;
  if (v4 != -1)
  {
    appleID = [location[0] appleID];
    v7 = 1;
    v5 = appleID != 0;
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

- (void)proximitySetupCompleted:(id)completed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completed);
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
        domain = [location[0] domain];
        v14 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [location[0] code]);
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

  observerQueue = [(ProximitySetupController *)selfCopy observerQueue];
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D453C;
  v9 = &unk_10032B838;
  v10 = selfCopy;
  v11 = location[0];
  dispatch_async(observerQueue, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)displayProximityPinCode:(id)code visual:(BOOL)visual
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  visualCopy = visual;
  if ([(ProximitySetupController *)selfCopy _isWaitingForReconnection])
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
    resumeBlock = [(ProximitySetupController *)selfCopy resumeBlock];
    resumeBlock[2](resumeBlock, 0);

    [(ProximitySetupController *)selfCopy endPairing];
    v29 = 1;
  }

  else if ([(ProximitySetupController *)selfCopy _allowedToPair])
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
    v17 = selfCopy;
    v18 = location[0];
    v19 = visualCopy;
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
    v28 = selfCopy;
    dispatch_async(v8, &block);

    [(ProximitySetupController *)selfCopy endPairing];
    v29 = 1;
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)dismissProximityPinCode
{
  selfCopy = self;
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
  [(ProximitySetupController *)selfCopy resetInformation];
  [(ProximitySetupController *)selfCopy _setConnected:0];
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001D4D24;
  v9 = &unk_10032B0D0;
  v10 = selfCopy;
  dispatch_async(v4, &block);

  objc_storeStrong(&v10, 0);
}

- (void)proximityConnectionPreparing:(id)preparing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preparing);
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
  [(ProximitySetupController *)selfCopy _updatedMessageSession:location[0]];
  objc_storeStrong(location, 0);
}

- (void)proximityConnectionInitiated
{
  selfCopy = self;
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
  [(ProximitySetupController *)selfCopy _setConnected:1];
}

- (id)performHandshake
{
  selfCopy = self;
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
  session = [(ProximitySetupController *)selfCopy session];
  v5 = [(SASProximitySession *)session sendAction:location];
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
    handshake = [location handshake];
    [(ProximitySetupController *)selfCopy setHandshake:handshake];

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
  selfCopy = self;
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
  session = [(ProximitySetupController *)selfCopy session];
  v5 = [(SASProximitySession *)session isConnected]& 1;

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

  [(ProximitySetupController *)selfCopy _setSetupIntent];
  v39 = objc_alloc_init(SASProximityInformationAction);
  session2 = [(ProximitySetupController *)selfCopy session];
  v9 = [(SASProximitySession *)session2 sendAction:v39];

  if (!-[ProximitySetupController intentToMigrate](selfCopy, "intentToMigrate") || (v10 = [v39 information], v11 = -[ProximitySetupController productVersion](selfCopy, "productVersion"), v12 = -[ProximitySetupController deviceClass](selfCopy, "deviceClass"), v13 = +[BuddyMigrationCapability sourceDeviceSupportsMigration:productVersion:deviceClass:softwareUpdateRequired:reason:](BuddyMigrationCapability, "sourceDeviceSupportsMigration:productVersion:deviceClass:softwareUpdateRequired:reason:", v10, v11, v12, 0, 0), v12, v11, v10, v38 = v13 & 1, (v13 & 1) != 0))
  {
    v15 = selfCopy;
    information = [v39 information];
    [(ProximitySetupController *)v15 updateInformation:information];

    resumeBlock = [(ProximitySetupController *)selfCopy resumeBlock];
    if (resumeBlock)
    {
      resumeBlock2 = [(ProximitySetupController *)selfCopy resumeBlock];
      resumeBlock2[2](resumeBlock2, 1);

      [(ProximitySetupController *)selfCopy setResumeBlock:0];
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
    if ([(ProximitySetupController *)selfCopy shouldApplySettings])
    {
      v21 = selfCopy;
      v22 = _NSConcreteStackBlock;
      v23 = -1073741824;
      v24 = 0;
      v25 = sub_1001D55E0;
      v26 = &unk_10032B0D0;
      v27 = selfCopy;
      [(ProximitySetupController *)v21 willApplySettings:&v22];
      objc_storeStrong(&v27, 0);
    }

    else
    {
      [(ProximitySetupController *)selfCopy skippedApplySettings];
    }

    v31 = 0;
  }

  else
  {
    [(ProximitySetupController *)selfCopy setupFinished];
    v14 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v33 = -1073741824;
    v34 = 0;
    v35 = sub_1001D5590;
    v36 = &unk_10032B0D0;
    v37 = selfCopy;
    dispatch_async(v14, &block);

    v31 = 1;
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v39, 0);
}

- (void)proximityConnectionTerminated
{
  selfCopy = self;
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
  [(ProximitySetupController *)selfCopy _setConnected:0];
  [(ProximitySetupController *)selfCopy notifyObserversConnectionTerminated];
  location = [(ProximitySetupController *)selfCopy backupMetadata];
  [(ProximitySetupController *)selfCopy resetInformation];
  [(ProximitySetupController *)selfCopy setBackupMetadataFromTerminatedConnection:location];
  [(ProximitySetupController *)selfCopy endAdvertisingProximitySetup];
  objc_storeStrong(&location, 0);
}

- (void)proximityConnectionReconnected
{
  selfCopy = self;
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
  [(ProximitySetupController *)selfCopy setShouldApplySettings:0];
  [(ProximitySetupController *)selfCopy stopReconnecting];
  [(ProximitySetupController *)selfCopy _setConnected:1];
}

- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, languages);
  v17 = 0;
  objc_storeStrong(&v17, locale);
  v16 = 0;
  objc_storeStrong(&v16, model);
  v15 = 0;
  objc_storeStrong(&v15, class);
  v14 = 0;
  objc_storeStrong(&v14, settings);
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
  [(ProximitySetupController *)selfCopy setReceivedLanguages:location[0]];
  [(ProximitySetupController *)selfCopy setReceivedLocale:v17];
  [(ProximitySetupController *)selfCopy setModel:v16];
  [(ProximitySetupController *)selfCopy setDeviceClass:v15];
  [(ProximitySetupController *)selfCopy setAccessibilitySettings:v14];
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
  selfCopy = self;
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
  v10 = selfCopy;
  dispatch_async(v4, &block);

  objc_storeStrong(&v10, 0);
}

- (void)receivedBackupAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  observerQueue = [(ProximitySetupController *)selfCopy observerQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D5CFC;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_sync(observerQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)pairingEndedByUser
{
  selfCopy = self;
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
  [(ProximitySetupController *)selfCopy endPairing];
}

- (ProximitySetupControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end