@interface BuddyExpressWelcomeController
+ (BOOL)_isSettingsFeature:(unint64_t)feature;
+ (id)_accessoryViewForFeature:(unint64_t)feature;
+ (id)_createFeatureCardForDataTransferMethod:(unint64_t)method deviceName:(id)name lastBackupDate:(id)date;
+ (id)_determineIfFeatureIsInExpress:(unint64_t)express withDataSource:(id)source;
+ (id)_localizedDescriptionForFeature:(unint64_t)feature;
+ (id)_localizedNameForFeature:(unint64_t)feature;
+ (id)_privacyIdentifiersForFeature:(unint64_t)feature;
+ (id)_privacyIdentifiersForFeatures:(id)features;
+ (id)_stateStringForFeature:(unint64_t)feature withDataSource:(id)source withFeatureState:(id)state;
- (BOOL)controllerNeedsToRun;
- (BuddyExpressWelcomeController)init;
- (id)_createFeatureCardForApplePay:(id)pay;
- (id)_createFeatureCardForConnections:(id)connections;
- (id)_createFeatureCardForSettings:(id)settings withDataSource:(id)source;
- (id)_detailForDataSourceDeviceClass:(id)class;
- (id)dateForChosenBackup;
- (id)deviceNameForChosenBackup;
- (unint64_t)dataTransferMethod;
- (void)_addFeatureCardsForFeatures:(id)features;
- (void)_addLearnMoreButton;
- (void)_learnMoreTapped;
- (void)_populateDataSourcesForDataProvider:(id)provider completion:(id)completion;
- (void)_recordAnalyticsEventForDataProvider:(id)provider presented:(BOOL)presented customized:(BOOL)customized;
- (void)continueTapped;
- (void)controllerWasPopped;
- (void)createBackupDataSource:(id)source;
- (void)createCloudDataSource:(id)source;
- (void)createDataProvider:(id)provider;
- (void)createDataProviderWithCustomization:(id)customization completion:(id)completion;
- (void)createWalletProvisionalContextUsingDataProvider:(id)provider completion:(id)completion;
- (void)customizeTapped;
- (void)finishFlowItemWithDidApplyExpressSettings:(BOOL)settings didCustomize:(BOOL)customize;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)prepareStateForExpressFeatures:(id)features withDataSource:(id)source;
- (void)startOver;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation BuddyExpressWelcomeController

- (BuddyExpressWelcomeController)init
{
  location = self;
  v13[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_SETUP_TITLE"];
  v13[0] = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];

  v4 = +[NSBundle mainBundle];
  v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_SETUP_DETAIL"];
  v12 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];

  v6 = location;
  location = 0;
  v11.receiver = v6;
  v11.super_class = BuddyExpressWelcomeController;
  location = [(BuddyExpressWelcomeController *)&v11 initWithTitle:v13[0] detailText:v12 icon:0];
  objc_storeStrong(&location, location);
  if (location)
  {
    v7 = dispatch_queue_create("com.apple.purplebuddy.express", 0);
    v8 = *(location + 24);
    *(location + 24) = v7;
  }

  v9 = location;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&location, 0);
  return v9;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v20 = a2;
  v19.receiver = self;
  v19.super_class = BuddyExpressWelcomeController;
  [(BuddyExpressWelcomeController *)&v19 viewDidLoad];
  v2 = selfCopy;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"continueTapped"];

  v5 = selfCopy;
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"CUSTOMIZE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v5 addLinkButton:v7 action:"customizeTapped"];

  headerView = [(BuddyExpressWelcomeController *)selfCopy headerView];
  v9 = selfCopy;
  expressSetupDataProvider = [(BuddyExpressWelcomeController *)selfCopy expressSetupDataProvider];
  resolvedDataSource = [(BYExpressSetupDataProvider *)expressSetupDataProvider resolvedDataSource];
  sourceDeviceClass = [(BYExpressSetupDataSource *)resolvedDataSource sourceDeviceClass];
  v13 = [(BuddyExpressWelcomeController *)v9 _detailForDataSourceDeviceClass:sourceDeviceClass];
  [headerView setDetailText:v13];

  privacyIdentifiers = [(BuddyExpressWelcomeController *)selfCopy privacyIdentifiers];
  v15 = [(NSArray *)privacyIdentifiers count];

  if (v15)
  {
    [(BuddyExpressWelcomeController *)selfCopy _addLearnMoreButton];
  }

  v16 = selfCopy;
  expressSetupDataProvider2 = [(BuddyExpressWelcomeController *)selfCopy expressSetupDataProvider];
  expressSetupFeatures = [(BYExpressSetupDataProvider *)expressSetupDataProvider2 expressSetupFeatures];
  [(BuddyExpressWelcomeController *)v16 _addFeatureCardsForFeatures:expressSetupFeatures];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = BuddyExpressWelcomeController;
  [(BuddyExpressWelcomeController *)&v11 viewDidAppear:appear];
  miscState = [(BuddyExpressWelcomeController *)selfCopy miscState];
  [(BuddyMiscState *)miscState setUserChoseExpress:0];

  expressSettingsAndAnalyticsQueue = [(BuddyExpressWelcomeController *)selfCopy expressSettingsAndAnalyticsQueue];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000DC488;
  v9 = &unk_10032B0D0;
  v10 = selfCopy;
  dispatch_async(expressSettingsAndAnalyticsQueue, &v6);

  v5 = [(BuddyExpressWelcomeController *)selfCopy pendingRestoreState:v6];
  [(BuddyPendingRestoreState *)v5 setAttemptedBackupItem:0];

  objc_storeStrong(&v10, 0);
}

- (void)continueTapped
{
  selfCopy = self;
  v12[1] = a2;
  view = [(BuddyExpressWelcomeController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:selfCopy identifier:v5];

  expressSettingsAndAnalyticsQueue = [(BuddyExpressWelcomeController *)selfCopy expressSettingsAndAnalyticsQueue];
  block = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000DC654;
  v11 = &unk_10032B0D0;
  v12[0] = selfCopy;
  dispatch_async(expressSettingsAndAnalyticsQueue, &block);

  objc_storeStrong(v12, 0);
}

- (void)customizeTapped
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v17;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Customize express settings", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  view = [(BuddyExpressWelcomeController *)selfCopy view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  v6 = selfCopy;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v6 identifier:v8];

  expressSettingsAndAnalyticsQueue = [(BuddyExpressWelcomeController *)selfCopy expressSettingsAndAnalyticsQueue];
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000DC97C;
  v14 = &unk_10032B0D0;
  v15 = selfCopy;
  dispatch_async(expressSettingsAndAnalyticsQueue, &block);

  objc_storeStrong(&v15, 0);
}

- (void)finishFlowItemWithDidApplyExpressSettings:(BOOL)settings didCustomize:(BOOL)customize
{
  selfCopy = self;
  v15 = a2;
  settingsCopy = settings;
  customizeCopy = customize;
  expressSettingsAndAnalyticsQueue = [(BuddyExpressWelcomeController *)self expressSettingsAndAnalyticsQueue];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000DCACC;
  v9 = &unk_10032C7B8;
  v10 = selfCopy;
  v11 = customizeCopy;
  v12 = settingsCopy;
  dispatch_async(expressSettingsAndAnalyticsQueue, &v5);

  objc_storeStrong(&v10, 0);
}

- (void)createDataProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  [(BuddyExpressWelcomeController *)selfCopy createDataProviderWithCustomization:0 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)createDataProviderWithCustomization:(id)customization completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, customization);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v5 = [BYExpressSetupDataProvider alloc];
  chronicle = [(BuddyExpressWelcomeController *)selfCopy chronicle];
  displayZoomExecutor = [(BuddyExpressWelcomeController *)selfCopy displayZoomExecutor];
  capabilities = [(BuddyExpressWelcomeController *)selfCopy capabilities];
  settingsManager = [(BuddyExpressWelcomeController *)selfCopy settingsManager];
  buddyPreferences = [(BuddyExpressWelcomeController *)selfCopy buddyPreferences];
  buddyPreferencesExcludedFromBackup = [(BuddyExpressWelcomeController *)selfCopy buddyPreferencesExcludedFromBackup];
  managedConfiguration = [(BuddyExpressWelcomeController *)selfCopy managedConfiguration];
  deviceProvider = [(BuddyExpressWelcomeController *)selfCopy deviceProvider];
  expressSettingsCache = [(BuddyExpressWelcomeController *)selfCopy expressSettingsCache];
  iPadMultitaskingModeManager = [(BuddyExpressWelcomeController *)selfCopy iPadMultitaskingModeManager];
  flowItemDispositionProvider = [(BuddyExpressWelcomeController *)selfCopy flowItemDispositionProvider];
  v41 = [(BYExpressSetupDataProvider *)v5 initWithChronicle:chronicle displayZoomExecutor:displayZoomExecutor capabilities:capabilities settingsManager:settingsManager buddyPreferences:buddyPreferences buddyPreferencesExcludedFromBackup:buddyPreferencesExcludedFromBackup managedConfiguration:managedConfiguration deviceProvider:deviceProvider expressSettingsCache:expressSettingsCache iPadMultitaskingManager:iPadMultitaskingModeManager flowItemDispositionProvider:flowItemDispositionProvider];

  miscState = [(BuddyExpressWelcomeController *)selfCopy miscState];
  [v41 setMiscState:miscState];

  pendingRestoreState = [(BuddyExpressWelcomeController *)selfCopy pendingRestoreState];
  backupItem = [(BuddyPendingRestoreState *)pendingRestoreState backupItem];
  v39 = 0;
  v37 = 0;
  migrationInProgressOrCompleted = 1;
  if (!backupItem)
  {
    miscState2 = [(BuddyExpressWelcomeController *)selfCopy miscState];
    v39 = 1;
    migrationManager = [(BuddyMiscState *)miscState2 migrationManager];
    v37 = 1;
    migrationInProgressOrCompleted = [migrationManager migrationInProgressOrCompleted];
  }

  [v41 setWillRestoreOrMigrate:migrationInProgressOrCompleted & 1];
  if (v37)
  {
  }

  if (v39)
  {
  }

  pendingRestoreState2 = [(BuddyExpressWelcomeController *)selfCopy pendingRestoreState];
  backupItem2 = [(BuddyPendingRestoreState *)pendingRestoreState2 backupItem];
  v35 = 0;
  v33 = 0;
  willMigrate = 1;
  if (!backupItem2)
  {
    miscState3 = [(BuddyExpressWelcomeController *)selfCopy miscState];
    v35 = 1;
    migrationManager2 = [miscState3 migrationManager];
    v33 = 1;
    willMigrate = [migrationManager2 willMigrate];
  }

  [v41 setWillRestoreOrReallyMigrate:willMigrate & 1];
  if (v33)
  {
  }

  if (v35)
  {
  }

  if (location[0])
  {
    (*(location[0] + 2))(location[0], v41);
  }

  v22 = selfCopy;
  v25 = _NSConcreteStackBlock;
  v26 = -1073741824;
  v27 = 0;
  v28 = sub_1000DD1F4;
  v29 = &unk_10032BC78;
  v30 = v41;
  v31 = selfCopy;
  v32 = v42;
  [(BuddyExpressWelcomeController *)v22 _populateDataSourcesForDataProvider:v41 completion:&v25];
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

- (void)createBackupDataSource:(id)source
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  pendingRestoreState = [(BuddyExpressWelcomeController *)selfCopy pendingRestoreState];
  backupItem = [(BuddyPendingRestoreState *)pendingRestoreState backupItem];
  v5 = backupItem == 0;

  if (v5)
  {
    (*(location[0] + 2))(location[0], 0);
    v14 = 1;
  }

  else
  {
    v6 = dispatch_get_global_queue(25, 0);
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000DD4FC;
    v11 = &unk_10032AFD0;
    v12 = selfCopy;
    v13 = location[0];
    dispatch_async(v6, &v7);

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v14 = 0;
  }

  objc_storeStrong(location, 0);
}

- (unint64_t)dataTransferMethod
{
  setupMethod = [(BuddyExpressWelcomeController *)self setupMethod];
  dataTransferMethod = [(BuddySetupMethod *)setupMethod dataTransferMethod];

  if (!dataTransferMethod)
  {
    return 0;
  }

  if (dataTransferMethod == 1)
  {
    return 1;
  }

  if (dataTransferMethod == 2)
  {
    return 3;
  }

  if (dataTransferMethod == 3)
  {
    return 4;
  }

  return v5;
}

- (void)createWalletProvisionalContextUsingDataProvider:(id)provider completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  resolvedDataSource = [location[0] resolvedDataSource];
  walletMetadata = [resolvedDataSource walletMetadata];

  sharedInstance = [sub_1000DD810() sharedInstance];
  [sharedInstance setBackupMetadata:walletMetadata];

  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000DD924;
  v11 = &unk_10032C7E0;
  v12 = v14;
  [BuddyPaymentController setupAssistantExpressProvisioningContext:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&walletMetadata, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)createCloudDataSource:(id)source
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v9 = objc_alloc_init(SASExpressCloudSettings);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000DDAF0;
  v7 = &unk_10032C808;
  v8 = location[0];
  [v9 fetchSettingsWithCompletion:&v3];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)dateForChosenBackup
{
  pendingRestoreState = [(BuddyExpressWelcomeController *)self pendingRestoreState];
  backupItem = [(BuddyPendingRestoreState *)pendingRestoreState backupItem];
  v4 = backupItem == 0;

  if (v4)
  {
    completionDate2 = 0;
  }

  else
  {
    backupDeviceController = [(BuddyExpressWelcomeController *)self backupDeviceController];
    completionDate = [(BFFBackupDeviceController *)backupDeviceController completionDate];

    if (completionDate)
    {
      backupDeviceController2 = [(BuddyExpressWelcomeController *)self backupDeviceController];
      completionDate2 = [(BFFBackupDeviceController *)backupDeviceController2 completionDate];
    }

    else
    {
      backupDeviceController2 = [(BuddyExpressWelcomeController *)self pendingRestoreState];
      backupItem2 = [(BFFBackupDeviceController *)backupDeviceController2 backupItem];
      snapshot = [backupItem2 snapshot];
      completionDate2 = [snapshot date];
    }
  }

  return completionDate2;
}

- (id)deviceNameForChosenBackup
{
  pendingRestoreState = [(BuddyExpressWelcomeController *)self pendingRestoreState];
  backupItem = [(BuddyPendingRestoreState *)pendingRestoreState backupItem];
  v4 = backupItem == 0;

  if (v4)
  {
    deviceName = 0;
  }

  else
  {
    pendingRestoreState2 = [(BuddyExpressWelcomeController *)self pendingRestoreState];
    backupItem2 = [(BuddyPendingRestoreState *)pendingRestoreState2 backupItem];
    snapshot = [(RestorableBackupItem *)backupItem2 snapshot];
    deviceName = [(MBSnapshot *)snapshot deviceName];
  }

  return deviceName;
}

- (void)_populateDataSourcesForDataProvider:(id)provider completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v65 = 0;
  objc_storeStrong(&v65, completion);
  proximitySetupController = [(BuddyExpressWelcomeController *)selfCopy proximitySetupController];
  expressDataSource = [(ProximitySetupController *)proximitySetupController expressDataSource];
  [location[0] setProximitySetupDataSource:expressDataSource];

  v64 = dispatch_group_create();
  dispatch_group_enter(v64);
  v63 = 0uLL;
  v7 = _BYSignpostSubsystem();
  v8 = _BYSignpostCreate();
  *(&v62 + 1) = v9;
  *&v62 = v8;

  v61 = _BYSignpostSubsystem();
  v60 = 1;
  v59 = v62;
  if (v62 && v59 != -1 && os_signpost_enabled(v61))
  {
    v10 = v61;
    v11 = v60;
    v12 = v59;
    sub_10006AA68(&buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v12, "ExpressSetupBackupDataSource", "", &buf, 2u);
  }

  objc_storeStrong(&v61, 0);
  v57 = _BYSignpostSubsystem();
  v56 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v69, v62);
    _os_log_impl(&_mh_execute_header, v57, v56, "BEGIN [%lld]: ExpressSetupBackupDataSource ", v69, 0xCu);
  }

  objc_storeStrong(&v57, 0);
  v63 = v62;
  v13 = selfCopy;
  v48 = _NSConcreteStackBlock;
  v49 = -1073741824;
  v50 = 0;
  v51 = sub_1000DE48C;
  v52 = &unk_10032C830;
  v53 = location[0];
  v55 = v63;
  v54 = v64;
  [(BuddyExpressWelcomeController *)v13 createBackupDataSource:&v48];
  dispatch_group_enter(v64);
  v47 = 0;
  v46 = 0;
  v14 = _BYSignpostSubsystem();
  v15 = _BYSignpostCreate();
  v45 = v16;
  v44 = v15;

  log = _BYSignpostSubsystem();
  v42 = 1;
  v41 = v44;
  if (v44 && v41 != -1 && os_signpost_enabled(log))
  {
    v17 = log;
    v18 = v42;
    v19 = v41;
    sub_10006AA68(&v40);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v19, "ExpressSetupCloudDataSource", "", &v40, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v68, v44);
    _os_log_impl(&_mh_execute_header, oslog, v38, "BEGIN [%lld]: ExpressSetupCloudDataSource ", v68, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v46 = v44;
  v47 = v45;
  v20 = selfCopy;
  v31 = _NSConcreteStackBlock;
  v32 = -1073741824;
  v33 = 0;
  v34 = sub_1000DE644;
  v35 = &unk_10032C858;
  v36 = location[0];
  v37[1] = v46;
  v37[2] = v47;
  v37[0] = v64;
  [(BuddyExpressWelcomeController *)v20 createCloudDataSource:&v31];
  v21 = v64;
  v22 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v24 = -1073741824;
  v25 = 0;
  v26 = sub_1000DE7FC;
  v27 = &unk_10032BC78;
  v28 = selfCopy;
  v29 = location[0];
  v30 = v65;
  dispatch_group_notify(v21, v22, &block);

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(v37, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
}

- (id)_detailForDataSourceDeviceClass:(id)class
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v10 = MGCopyAnswer();
  if ([v10 isEqualToString:location[0]])
  {
    v3 = +[NSBundle mainBundle];
    v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_SETUP_DETAIL_OTHER"];
    v12 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  }

  else if ([location[0] isEqualToString:@"iPhone"])
  {
    v5 = +[NSBundle mainBundle];
    v12 = [(NSBundle *)v5 localizedStringForKey:@"EXPRESS_SETUP_DETAIL_IPHONE" value:&stru_10032F900 table:@"Localizable"];
  }

  else if ([location[0] isEqualToString:@"iPad"])
  {
    v6 = +[NSBundle mainBundle];
    v12 = [(NSBundle *)v6 localizedStringForKey:@"EXPRESS_SETUP_DETAIL_IPAD" value:&stru_10032F900 table:@"Localizable"];
  }

  else
  {
    if ([location[0] isEqualToString:@"iPod"])
    {
      v7 = +[NSBundle mainBundle];
      v12 = [(NSBundle *)v7 localizedStringForKey:@"EXPRESS_SETUP_DETAIL_IPOD" value:&stru_10032F900 table:@"Localizable"];
    }

    else
    {
      v7 = +[NSBundle mainBundle];
      v12 = [(NSBundle *)v7 localizedStringForKey:@"EXPRESS_SETUP_DETAIL_MAC" value:&stru_10032F900 table:@"Localizable"];
    }
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  v8 = v12;

  return v8;
}

- (void)_addLearnMoreButton
{
  selfCopy = self;
  location[1] = a2;
  location[0] = +[OBHeaderAccessoryButton accessoryButton];
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"LEARN_MORE_ELLIPSIS" value:&stru_10032F900 table:@"Localizable"];
  [location[0] setTitle:v3 forState:0];

  [location[0] addTarget:selfCopy action:"_learnMoreTapped" forControlEvents:0x2000];
  headerView = [(BuddyExpressWelcomeController *)selfCopy headerView];
  [headerView addAccessoryButton:location[0]];

  objc_storeStrong(location, 0);
}

+ (id)_privacyIdentifiersForFeatures:(id)features
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v12 = objc_alloc_init(NSMutableArray);
  memset(__b, 0, sizeof(__b));
  v3 = location[0];
  v4 = [v3 countByEnumeratingWithState:__b objects:v15 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(__b[1] + 8 * i);
        v9 = [selfCopy _privacyIdentifiersForFeature:{objc_msgSend(v11, "unsignedIntegerValue")}];
        if (v9)
        {
          [v12 addObjectsFromArray:v9];
        }

        objc_storeStrong(&v9, 0);
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v15 count:16];
    }

    while (v4);
  }

  v7 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (id)_privacyIdentifiersForFeature:(unint64_t)feature
{
  switch(feature)
  {
    case 1uLL:
      v11 = BYPrivacyLocationServicesIdentifier;
      v4 = [NSArray arrayWithObjects:&v11 count:1, 1, a2, self];
      goto LABEL_19;
    case 2uLL:
      v10 = BYPrivacyAnalyticsDeviceIdentifier;
      v4 = [NSArray arrayWithObjects:&v10 count:1, 2, a2, self];
      goto LABEL_19;
    case 3uLL:
      v9 = BYPrivacyAnalyticsAppIdentifier;
      v4 = [NSArray arrayWithObjects:&v9 count:1, 3, a2, self];
      goto LABEL_19;
    case 4uLL:
      v8[0] = BYPrivacyAnalyticsDeviceIdentifier;
      v8[1] = BYPrivacyAnalyticsAppIdentifier;
      v4 = [NSArray arrayWithObjects:v8 count:2, 4, a2, self];
      goto LABEL_19;
    case 5uLL:
      v7 = BYPrivacySiriIdentifier;
      v4 = [NSArray arrayWithObjects:&v7 count:1, 5, a2, self];
      goto LABEL_19;
    case 6uLL:
      v6 = BYPrivacyImproveSiriIdentifier;
      v4 = [NSArray arrayWithObjects:&v6 count:1, 6, a2, self];
      goto LABEL_19;
  }

  if (feature - 7 < 4)
  {
    goto LABEL_18;
  }

  if (feature == 11)
  {
    v5[0] = BYPrivacyAppleCard;
    v5[1] = BYPrivacyApplePay;
    v5[2] = BYPrivacyApplePayCash;
    v5[3] = BYPrivacyAppleWallet;
    v4 = [NSArray arrayWithObjects:v5 count:4, 11, a2, self];
    goto LABEL_19;
  }

  if (feature - 12 < 3)
  {
LABEL_18:
    v4 = 0;
  }

LABEL_19:

  return v4;
}

- (void)_addFeatureCardsForFeatures:(id)features
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v44 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 setAxis:1];
  [v44 setSpacing:10.0];
  if ([location[0] containsObject:&off_10033D100])
  {
    v3 = selfCopy;
    expressSetupDataProvider = [(BuddyExpressWelcomeController *)selfCopy expressSetupDataProvider];
    walletProvisioningContext = [(BYExpressSetupDataProvider *)expressSetupDataProvider walletProvisioningContext];
    v43 = [(BuddyExpressWelcomeController *)v3 _createFeatureCardForApplePay:walletProvisioningContext];

    [v44 addArrangedSubview:v43];
    objc_storeStrong(&v43, 0);
  }

  if ([location[0] containsObject:&off_10033D118])
  {
    v6 = selfCopy;
    expressSetupDataProvider2 = [(BuddyExpressWelcomeController *)selfCopy expressSetupDataProvider];
    pairedWatches = [(BYExpressSetupDataProvider *)expressSetupDataProvider2 pairedWatches];
    v42 = [(BuddyExpressWelcomeController *)v6 _createFeatureCardForConnections:pairedWatches];

    [v44 addArrangedSubview:v42];
    objc_storeStrong(&v42, 0);
  }

  v41 = [location[0] mutableCopy];
  [v41 removeObject:&off_10033D118];
  if ([v41 count])
  {
    v9 = selfCopy;
    expressSetupDataProvider3 = [(BuddyExpressWelcomeController *)selfCopy expressSetupDataProvider];
    resolvedDataSource = [(BYExpressSetupDataProvider *)expressSetupDataProvider3 resolvedDataSource];
    v40 = [(BuddyExpressWelcomeController *)v9 _createFeatureCardForSettings:v41 withDataSource:resolvedDataSource];

    [v44 insertArrangedSubview:v40 atIndex:0];
    objc_storeStrong(&v40, 0);
  }

  v12 = objc_opt_class();
  dataTransferMethod = [(BuddyExpressWelcomeController *)selfCopy dataTransferMethod];
  deviceNameForChosenBackup = [(BuddyExpressWelcomeController *)selfCopy deviceNameForChosenBackup];
  dateForChosenBackup = [(BuddyExpressWelcomeController *)selfCopy dateForChosenBackup];
  v39 = [v12 _createFeatureCardForDataTransferMethod:dataTransferMethod deviceName:deviceNameForChosenBackup lastBackupDate:dateForChosenBackup];

  if (v39)
  {
    [v44 insertArrangedSubview:v39 atIndex:0];
  }

  contentView = [(BuddyExpressWelcomeController *)selfCopy contentView];
  [contentView addSubview:v44];

  arrangedSubviews = [v44 arrangedSubviews];
  v18 = [arrangedSubviews count];

  if (v18 == 1)
  {
    arrangedSubviews2 = [v44 arrangedSubviews];
    firstObject = [arrangedSubviews2 firstObject];

    [firstObject setExpanded:1];
    objc_storeStrong(&firstObject, 0);
  }

  contentView2 = [(BuddyExpressWelcomeController *)selfCopy contentView];
  contentView3 = [(BuddyExpressWelcomeController *)selfCopy contentView];
  topAnchor = [contentView3 topAnchor];
  topAnchor2 = [v44 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:?];
  v47[0] = v34;
  contentView4 = [(BuddyExpressWelcomeController *)selfCopy contentView];
  leadingAnchor = [contentView4 leadingAnchor];
  leadingAnchor2 = [v44 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:?];
  v47[1] = v30;
  contentView5 = [(BuddyExpressWelcomeController *)selfCopy contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  trailingAnchor2 = [v44 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[2] = v24;
  contentView6 = [(BuddyExpressWelcomeController *)selfCopy contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [v44 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[3] = v28;
  v29 = [NSArray arrayWithObjects:v47 count:4];
  [contentView2 addConstraints:v29];

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

- (id)_createFeatureCardForConnections:(id)connections
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connections);
  v39 = [UIImage systemImageNamed:@"applewatch.watchface"];
  v38 = objc_alloc_init(NSMutableArray);
  memset(__b, 0, sizeof(__b));
  v3 = location[0];
  v4 = [v3 countByEnumeratingWithState:__b objects:v42 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v37 = *(__b[1] + 8 * i);
        v35 = [v37 valueForProperty:NRDevicePropertyName];
        if (v35)
        {
          v7 = v38;
          v8 = +[NSBundle mainBundle];
          v9 = [(NSBundle *)v8 localizedStringForKey:@"EXPRESS_FEATURE_CONNECTION_NAME" value:&stru_10032F900 table:@"Localizable"];
          v10 = [NSString localizedStringWithFormat:v9, v35];
          [v7 addObject:v10];
        }

        objc_storeStrong(&v35, 0);
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v42 count:16];
    }

    while (v4);
  }

  v34 = [NSListFormatter localizedStringByJoiningStrings:v38];
  v11 = [BuddyExpressSetupFeatureCardView alloc];
  v12 = +[NSBundle mainBundle];
  v13 = [(NSBundle *)v12 localizedStringForKey:@"EXPRESS_FEATURE_CONNECTIONS" value:&stru_10032F900 table:@"Localizable"];
  v33 = [(BuddyExpressSetupFeatureCardView *)v11 initWithTitle:v13 subtitle:v34 icon:v39];

  memset(v31, 0, sizeof(v31));
  v14 = location[0];
  v15 = [v14 countByEnumeratingWithState:v31 objects:v41 count:16];
  if (v15)
  {
    v16 = *v31[2];
    do
    {
      for (j = 0; j < v15; ++j)
      {
        if (*v31[2] != v16)
        {
          objc_enumerationMutation(v14);
        }

        v32 = *(v31[1] + 8 * j);
        v18 = +[NSBundle mainBundle];
        v19 = [(NSBundle *)v18 localizedStringForKey:@"EXPRESS_FEATURE_CONNECTION_NAME" value:&stru_10032F900 table:@"Localizable"];
        v20 = [v32 valueForProperty:NRDevicePropertyName];
        v30 = [NSString localizedStringWithFormat:v19, v20];

        v29 = [v32 valueForProperty:NRDevicePropertyMarketingProductName];
        v28 = [objc_opt_class() _accessoryViewForFeature:10];
        if (!v29)
        {
          v21 = +[NSBundle mainBundle];
          v22 = [(NSBundle *)v21 localizedStringForKey:@"EXPRESS_FEATURE_APPLE_WATCH" value:&stru_10032F900 table:@"Localizable"];
          v23 = v29;
          v29 = v22;
        }

        v24 = [BuddyExpressSetupFeatureCardCell alloc];
        v27 = [(BuddyExpressSetupFeatureCardCell *)v24 initWithTitle:v29 subtitle:v30 state:0 accessoryView:v28];
        [v33 addCardCell:v27];
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
      }

      v15 = [v14 countByEnumeratingWithState:v31 objects:v41 count:16];
    }

    while (v15);
  }

  v25 = v33;
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  return v25;
}

- (id)_createFeatureCardForApplePay:(id)pay
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pay);
  v41 = [UIImage _systemImageNamed:@"wallet"];
  v40 = objc_alloc_init(NSMutableArray);
  setupAssistantCredentials = [location[0] setupAssistantCredentials];
  selectedIndices = [location[0] selectedIndices];
  v39 = [setupAssistantCredentials objectsAtIndexes:selectedIndices];

  memset(__b, 0, sizeof(__b));
  v5 = v39;
  v6 = [v5 countByEnumeratingWithState:__b objects:v44 count:16];
  if (v6)
  {
    v7 = *__b[2];
    do
    {
      for (i = 0; i < v6; ++i)
      {
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(v5);
        }

        v38 = *(__b[1] + 8 * i);
        title = [v38 title];
        if (title)
        {
          v9 = v40;
          v10 = +[NSBundle mainBundle];
          v11 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APPLE_WALLET_NAME" value:&stru_10032F900 table:@"Localizable"];
          v12 = [NSString localizedStringWithFormat:v11, title];
          [v9 addObject:v12];
        }

        objc_storeStrong(&title, 0);
      }

      v6 = [v5 countByEnumeratingWithState:__b objects:v44 count:16];
    }

    while (v6);
  }

  v13 = +[NSBundle mainBundle];
  v14 = [(NSBundle *)v13 localizedStringForKey:@"WALLET_ITEMS" value:&stru_10032F900 table:@"Localizable"];
  v35 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v14, [v39 count]);

  v15 = [BuddyExpressWalletFeatureCardView alloc];
  v16 = +[NSBundle mainBundle];
  v17 = [(NSBundle *)v16 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APPLE_WALLET" value:&stru_10032F900 table:@"Localizable"];
  v34 = [(BuddyExpressWalletFeatureCardView *)v15 initWithTitle:v17 subtitle:v35 icon:v41];

  [location[0] setDelegate:v34];
  memset(v32, 0, sizeof(v32));
  v18 = v39;
  v19 = [v18 countByEnumeratingWithState:v32 objects:v43 count:16];
  if (v19)
  {
    v20 = *v32[2];
    do
    {
      for (j = 0; j < v19; ++j)
      {
        if (*v32[2] != v20)
        {
          objc_enumerationMutation(v18);
        }

        v33 = *(v32[1] + 8 * j);
        v22 = [UIImageView alloc];
        v23 = [location[0] passSnapshotForCredential:v33];
        v31 = [v22 initWithImage:v23];

        [v31 setContentMode:1];
        [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
        v24 = [BuddyExpressWalletFeatureCardCell alloc];
        title2 = [v33 title];
        subtitle = [v33 subtitle];
        v30 = [(BuddyExpressSetupFeatureCardCell *)v24 initWithTitle:title2 subtitle:subtitle state:0 accessoryView:v31];

        uniqueIdentifier = [v33 uniqueIdentifier];
        [v30 setUniqueIdentifier:uniqueIdentifier];

        [v34 addCardCell:v30];
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
      }

      v19 = [v18 countByEnumeratingWithState:v32 objects:v43 count:16];
    }

    while (v19);
  }

  v28 = v34;
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  return v28;
}

- (id)_createFeatureCardForSettings:(id)settings withDataSource:(id)source
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, settings);
  v56 = 0;
  objc_storeStrong(&v56, source);
  v5 = location[0];
  v49 = _NSConcreteStackBlock;
  v50 = -1073741824;
  v51 = 0;
  v52 = sub_1000E0BC8;
  v53 = &unk_10032C8A8;
  v54 = selfCopy;
  v6 = [NSPredicate predicateWithBlock:&v49];
  v55 = [v5 filteredArrayUsingPredicate:v6];

  v7 = v55;
  v43 = _NSConcreteStackBlock;
  v44 = -1073741824;
  v45 = 0;
  v46 = sub_1000E0C58;
  v47 = &unk_10032C8D0;
  v48 = selfCopy;
  v8 = [v7 sortedArrayUsingComparator:&v43];
  v9 = v55;
  v55 = v8;

  v42 = objc_alloc_init(NSMutableArray);
  memset(__b, 0, sizeof(__b));
  v10 = v55;
  v11 = [v10 countByEnumeratingWithState:__b objects:v60 count:16];
  if (v11)
  {
    v12 = *__b[2];
    do
    {
      for (i = 0; i < v11; ++i)
      {
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(v10);
        }

        v41 = *(__b[1] + 8 * i);
        v14 = v42;
        v15 = [objc_opt_class() _localizedNameForFeature:{objc_msgSend(v41, "unsignedIntegerValue")}];
        [v14 addObject:v15];
      }

      v11 = [v10 countByEnumeratingWithState:__b objects:v60 count:16];
    }

    while (v11);
  }

  v39 = [UIImage systemImageNamed:@"gear"];
  v16 = [v42 copy];
  v38 = [BuddyExpressSetupFeatureCardView formattedSubtitleStringForComponents:v16];

  v17 = [BuddyExpressSetupFeatureCardView alloc];
  v18 = +[NSBundle mainBundle];
  v19 = [(NSBundle *)v18 localizedStringForKey:@"EXPRESS_FEATURE_SETTINGS" value:&stru_10032F900 table:@"Localizable"];
  v37 = [(BuddyExpressSetupFeatureCardView *)v17 initWithTitle:v19 subtitle:v38 icon:v39];

  memset(v35, 0, sizeof(v35));
  v20 = v55;
  v21 = [v20 countByEnumeratingWithState:v35 objects:v59 count:16];
  if (v21)
  {
    v22 = *v35[2];
    do
    {
      for (j = 0; j < v21; ++j)
      {
        if (*v35[2] != v22)
        {
          objc_enumerationMutation(v20);
        }

        v36 = *(v35[1] + 8 * j);
        unsignedIntegerValue = [v36 unsignedIntegerValue];
        v33 = [objc_opt_class() _localizedNameForFeature:unsignedIntegerValue];
        v32 = [objc_opt_class() _localizedDescriptionForFeature:unsignedIntegerValue];
        expressSettingsStateCacheInDataSource = [selfCopy expressSettingsStateCacheInDataSource];
        v31 = [expressSettingsStateCacheInDataSource objectForKeyedSubscript:v36];

        v30 = [objc_opt_class() _stateStringForFeature:unsignedIntegerValue withDataSource:v56 withFeatureState:v31];
        v29 = [objc_opt_class() _accessoryViewForFeature:unsignedIntegerValue];
        v25 = [BuddyExpressSetupFeatureCardCell alloc];
        v28 = [(BuddyExpressSetupFeatureCardCell *)v25 initWithTitle:v33 subtitle:v32 state:v30 accessoryView:v29];
        [v37 addCardCell:v28];
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v33, 0);
      }

      v21 = [v20 countByEnumeratingWithState:v35 objects:v59 count:16];
    }

    while (v21);
  }

  v26 = v37;
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
  return v26;
}

+ (id)_createFeatureCardForDataTransferMethod:(unint64_t)method deviceName:(id)name lastBackupDate:(id)date
{
  selfCopy = self;
  v41 = a2;
  methodCopy = method;
  location = 0;
  objc_storeStrong(&location, name);
  v38 = 0;
  objc_storeStrong(&v38, date);
  v37 = [UIImage _systemImageNamed:@"app.3.stack.3d"];
  v6 = +[NSBundle mainBundle];
  v36 = [(NSBundle *)v6 localizedStringForKey:@"APPS_AND_DATA" value:&stru_10032F900 table:@"Localizable"];

  v35 = 0;
  v34 = 0;
  if (methodCopy)
  {
    if (methodCopy - 1 < 2)
    {
      v10 = +[NSBundle mainBundle];
      v11 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_RESTORE_METHOD_CLOUD" value:&stru_10032F900 table:@"Localizable"];
      v12 = v35;
      v35 = v11;

      v33 = 0;
      if (methodCopy == 2)
      {
        v13 = +[NSBundle mainBundle];
        v14 = [(NSBundle *)v13 localizedStringForKey:@"EXPRESS_RESTORE_METHOD_CELL_DESCRIPTION_CLOUD_WITH_BACKUP" value:&stru_10032F900 table:@"Localizable"];
        v15 = v33;
        v33 = v14;
      }

      else
      {
        v32 = objc_alloc_init(NSDateFormatter);
        [v32 setDateStyle:3];
        [v32 setTimeStyle:1];
        [v32 setDoesRelativeDateFormatting:1];
        v16 = [v32 stringFromDate:v38];
        v17 = v33;
        v33 = v16;

        objc_storeStrong(&v32, 0);
      }

      v18 = [BuddyExpressSetupFeatureCardCell alloc];
      v19 = [(BuddyExpressSetupFeatureCardCell *)v18 initWithTitle:location subtitle:v33 state:0 accessoryView:0];
      v20 = v34;
      v34 = v19;

      objc_storeStrong(&v33, 0);
    }

    else if (methodCopy == 3)
    {
      v21 = +[NSBundle mainBundle];
      v22 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"TRANSFER_DIRECTLY"];
      v23 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_10032F900 table:@"Localizable"];
      v24 = v35;
      v35 = v23;
    }

    else if (methodCopy == 4)
    {
      v25 = +[NSBundle mainBundle];
      v26 = [(NSBundle *)v25 localizedStringForKey:@"MIGRATE_FROM_ANDROID_DEVICE" value:&stru_10032F900 table:@"Localizable"];
      v27 = v35;
      v35 = v26;
    }
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"DONT_TRANSFER_APPS_DATA" value:&stru_10032F900 table:@"Localizable"];
    v9 = v35;
    v35 = v8;
  }

  v28 = [BuddyExpressSetupFeatureCardView alloc];
  v31 = [(BuddyExpressSetupFeatureCardView *)v28 initWithTitle:v36 subtitle:v35 icon:v37];
  [v31 setNumberOfLinesForSubtitle:0];
  if (v34)
  {
    [v31 addCardCell:v34];
  }

  v29 = v31;
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&location, 0);
  return v29;
}

+ (BOOL)_isSettingsFeature:(unint64_t)feature
{
  if (feature - 1 < 5)
  {
    goto LABEL_8;
  }

  switch(feature)
  {
    case 6uLL:
      goto LABEL_9;
    case 7uLL:
LABEL_8:
      v4 = 1;
      return v4 & 1;
    case 8uLL:
LABEL_9:
      v4 = 0;
      return v4 & 1;
    case 9uLL:
      goto LABEL_8;
  }

  if (feature - 10 < 2)
  {
    goto LABEL_9;
  }

  if (feature - 12 <= 2)
  {
    goto LABEL_8;
  }

  return v4 & 1;
}

+ (id)_localizedNameForFeature:(unint64_t)feature
{
  switch(feature)
  {
    case 1uLL:
      v3 = [NSBundle mainBundle:feature];
      v17 = [(NSBundle *)v3 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_LOCATION_SERVICES" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 2uLL:
      v4 = [NSBundle mainBundle:feature];
      v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_TITLE_DEVICE_ANALYTICS"];
      v17 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 3uLL:
      v6 = [NSBundle mainBundle:feature];
      v17 = [(NSBundle *)v6 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APP_ANALYTICS" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 4uLL:
      v7 = [NSBundle mainBundle:feature];
      v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_TITLE_DEVICE_AND_APP_ANALYTICS"];
      v17 = [(NSBundle *)v7 localizedStringForKey:v8 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 5uLL:
      v9 = [NSBundle mainBundle:feature];
      v17 = [(NSBundle *)v9 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_SIRI" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 6uLL:
    case 8uLL:
    case 0xAuLL:
      v17 = 0;
      break;
    case 7uLL:
      v10 = [NSBundle mainBundle:feature];
      v17 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_SCREEN_TIME" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 9uLL:
      v11 = [NSBundle mainBundle:feature];
      v17 = [(NSBundle *)v11 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APPEARANCE" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xBuLL:
      v12 = [NSBundle mainBundle:feature];
      v17 = [(NSBundle *)v12 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APPLE_WALLET" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xCuLL:
      v13 = [NSBundle mainBundle:feature];
      v17 = [(NSBundle *)v13 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APPLE_ACTION_BUTTON" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xDuLL:
      v14 = [NSBundle mainBundle:feature];
      v17 = [(NSBundle *)v14 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_STOLEN_DEVICE_PROTECTION" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xEuLL:
      v15 = [NSBundle mainBundle:feature];
      v17 = [(NSBundle *)v15 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_IPAD_MULTITASKING" value:&stru_10032F900 table:@"Localizable"];

      break;
    default:
      break;
  }

  return v17;
}

+ (id)_localizedDescriptionForFeature:(unint64_t)feature
{
  switch(feature)
  {
    case 1uLL:
      v3 = [NSBundle mainBundle:feature];
      v18 = [(NSBundle *)v3 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_LOCATION_SERVICES" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 2uLL:
      v4 = [NSBundle mainBundle:feature];
      v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_DESCRIPTION_DEVICE_ANALYTICS"];
      v18 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 3uLL:
      v6 = [NSBundle mainBundle:feature];
      v18 = [(NSBundle *)v6 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_APP_ANALYTICS" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 4uLL:
      v7 = [NSBundle mainBundle:feature];
      v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_DESCRIPTION_DEVICE_AND_APP_ANALYTICS"];
      v18 = [(NSBundle *)v7 localizedStringForKey:v8 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 5uLL:
      v9 = [NSBundle mainBundle:feature];
      v18 = [(NSBundle *)v9 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_SIRI" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 6uLL:
    case 8uLL:
    case 0xAuLL:
      v18 = 0;
      break;
    case 7uLL:
      v10 = [NSBundle mainBundle:feature];
      v18 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_SCREEN_TIME" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 9uLL:
      v11 = [NSBundle mainBundle:feature];
      v12 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_DESCRIPTION_APPEARANCE"];
      v18 = [(NSBundle *)v11 localizedStringForKey:v12 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xBuLL:
      v18 = 0;
      break;
    case 0xCuLL:
      v13 = [NSBundle mainBundle:feature];
      v14 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_DESCRIPTION_ACTION_BUTTON"];
      v18 = [(NSBundle *)v13 localizedStringForKey:v14 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xDuLL:
      v15 = [NSBundle mainBundle:feature];
      v18 = [(NSBundle *)v15 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_STOLEN_DEVICE_PROTECTION" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xEuLL:
      v16 = [NSBundle mainBundle:feature];
      v18 = [(NSBundle *)v16 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_IPAD_MULTITASKING" value:&stru_10032F900 table:@"Localizable"];

      break;
    default:
      break;
  }

  return v18;
}

+ (id)_accessoryViewForFeature:(unint64_t)feature
{
  selfCopy = self;
  v46 = a2;
  featureCopy = feature;
  v44 = 0;
  location = 0;
  v42 = 0;
  v41 = +[UIColor systemBlueColor];
  if (featureCopy == 1)
  {
    objc_storeStrong(&location, @"location.fill");
  }

  else if (featureCopy - 2 < 3)
  {
    objc_storeStrong(&location, @"chart.bar.xaxis");
  }

  else if (featureCopy == 5)
  {
    v3 = [UIImage imageNamed:@"Siri"];
    v4 = v44;
    v44 = v3;
  }

  else
  {
    if (featureCopy == 6)
    {
      goto LABEL_22;
    }

    if (featureCopy != 7)
    {
      if (featureCopy != 8)
      {
        if (featureCopy == 9)
        {
          objc_storeStrong(&location, @"textformat.size");
        }

        else if (featureCopy == 10)
        {
          objc_storeStrong(&location, @"applewatch.side.right");
          v7 = +[UIColor systemGray4Color];
          v8 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
          v9 = [(UIColor *)v7 resolvedColorWithTraitCollection:v8];
          v10 = v41;
          v41 = v9;
        }

        else if (featureCopy != 11)
        {
          switch(featureCopy)
          {
            case 0xCuLL:
              objc_storeStrong(&location, @"button.vertical.left.press");
              break;
            case 0xDuLL:
              objc_storeStrong(&v42, @"com.apple.graphic-icon.stolen-device-protection");
              break;
            case 0xEuLL:
              objc_storeStrong(&v42, @"com.apple.graphic-icon.stage-manager");
              break;
          }
        }

        goto LABEL_25;
      }

LABEL_22:
      v48 = 0;
      v40 = 1;
      goto LABEL_34;
    }

    objc_storeStrong(&location, @"hourglass");
    v5 = +[UIColor systemIndigoColor];
    v6 = v41;
    v41 = v5;
  }

LABEL_25:
  if (v42)
  {
    v39 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
    v11 = +[UIScreen mainScreen];
    [(UIScreen *)v11 scale];
    [v39 setScale:?];

    [v39 setDrawBorder:1];
    if (v41)
    {
      v12 = [[IFColor alloc] initWithCGColor:{objc_msgSend(v41, "CGColor")}];
      [v39 setTintColor:v12];
    }

    v13 = [ISIcon alloc];
    v38 = [v13 initWithType:v42];
    v37 = [v38 imageForDescriptor:v39];
    if ([v37 placeholder])
    {
      v14 = [v38 prepareImageForDescriptor:v39];
      v15 = [v38 imageForDescriptor:v39];
      v16 = v37;
      v37 = v15;
    }

    cGImage = [v37 CGImage];
    v17 = [[UIImage alloc] initWithCGImage:cGImage];
    v18 = v44;
    v44 = v17;

    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  if (v44)
  {
    v19 = [UIImageView alloc];
    v48 = [v19 initWithImage:v44];
    v40 = 1;
  }

  else
  {
    v20 = [UIImage systemImageNamed:location];
    v21 = v44;
    v44 = v20;

    v22 = [UIImageView alloc];
    v35 = [v22 initWithImage:v44];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v35 setContentMode:4];
    v23 = [UIImageSymbolConfiguration configurationWithPointSize:17.0];
    [v35 setPreferredSymbolConfiguration:v23];

    v24 = +[UIColor whiteColor];
    [v35 setTintColor:v24];

    v34 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v34 setBackgroundColor:v41];
    [v34 _setContinuousCornerRadius:8.0];
    [v34 addSubview:v35];
    centerXAnchor = [v35 centerXAnchor];
    centerXAnchor2 = [v34 centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v49[0] = v27;
    centerYAnchor = [v35 centerYAnchor];
    centerYAnchor2 = [v34 centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v49[1] = v30;
    v31 = [NSArray arrayWithObjects:v49 count:2];
    [NSLayoutConstraint activateConstraints:v31];

    v48 = v34;
    v40 = 1;
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

LABEL_34:
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v44, 0);
  v32 = v48;

  return v32;
}

+ (id)_determineIfFeatureIsInExpress:(unint64_t)express withDataSource:(id)source
{
  selfCopy = self;
  v31 = a2;
  expressCopy = express;
  location = 0;
  objc_storeStrong(&location, source);
  v28 = 0;
  switch(expressCopy)
  {
    case 1uLL:
      locationServicesOptIn = [location locationServicesOptIn];
      v5 = v28;
      v28 = locationServicesOptIn;

      break;
    case 2uLL:
      goto LABEL_23;
    case 3uLL:
      appAnalyticsOptIn = [location appAnalyticsOptIn];
      v12 = v28;
      v28 = appAnalyticsOptIn;

      break;
    case 4uLL:
LABEL_23:
      deviceAnalyticsOptIn = [location deviceAnalyticsOptIn];
      v10 = v28;
      v28 = deviceAnalyticsOptIn;

      break;
    case 5uLL:
      siriOptIn = [location siriOptIn];
      v14 = v28;
      v28 = siriOptIn;

      break;
    case 6uLL:
      goto LABEL_21;
    case 7uLL:
      screenTimeEnabled = [location screenTimeEnabled];
      v7 = v28;
      v28 = screenTimeEnabled;

      break;
    case 8uLL:
      softwareUpdateAutoDownloadEnabled = [location softwareUpdateAutoDownloadEnabled];
      bOOLValue = [softwareUpdateAutoDownloadEnabled BOOLValue];
      v26 = 0;
      bOOLValue2 = 0;
      if (bOOLValue)
      {
        softwareUpdateAutoUpdateEnabled = [location softwareUpdateAutoUpdateEnabled];
        v26 = 1;
        bOOLValue2 = [softwareUpdateAutoUpdateEnabled BOOLValue];
      }

      v18 = [NSNumber numberWithInt:bOOLValue2 & 1];
      v19 = v28;
      v28 = v18;

      if (v26)
      {
      }

      break;
    case 9uLL:
      userInterfaceStyleModeValue = [location userInterfaceStyleModeValue];
      if (!userInterfaceStyleModeValue)
      {
        goto LABEL_21;
      }

      if ((userInterfaceStyleModeValue - 1) < 2 || userInterfaceStyleModeValue == 100 || userInterfaceStyleModeValue == 102)
      {
        objc_storeStrong(&v28, &__kCFBooleanTrue);
      }

      break;
    default:
      if (expressCopy - 10 >= 3)
      {
        if (expressCopy == 13)
        {
          stolenDeviceProtectionEnabled = [location stolenDeviceProtectionEnabled];
          v21 = v28;
          v28 = stolenDeviceProtectionEnabled;
        }

        else if (expressCopy == 14)
        {
          iPadMultitaskingMode = [location iPadMultitaskingMode];
          v23 = v28;
          v28 = iPadMultitaskingMode;
        }

        break;
      }

LABEL_21:
      objc_storeStrong(&v28, 0);
      break;
  }

  v24 = v28;
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
  return v24;
}

+ (id)_stateStringForFeature:(unint64_t)feature withDataSource:(id)source withFeatureState:(id)state
{
  selfCopy = self;
  v19 = a2;
  featureCopy = feature;
  location = 0;
  objc_storeStrong(&location, source);
  v16 = 0;
  objc_storeStrong(&v16, state);
  if (featureCopy - 1 < 5)
  {
    goto LABEL_19;
  }

  if (featureCopy == 6)
  {
    goto LABEL_31;
  }

  if (featureCopy - 7 < 2)
  {
    goto LABEL_19;
  }

  if (featureCopy == 9)
  {
    userInterfaceStyleModeValue = [location userInterfaceStyleModeValue];
    if (userInterfaceStyleModeValue)
    {
      if (userInterfaceStyleModeValue == 1)
      {
        v7 = +[NSBundle mainBundle];
        v21 = [(NSBundle *)v7 localizedStringForKey:@"EXPRESS_FEATURE_STATE_LIGHT" value:&stru_10032F900 table:@"Localizable"];

        goto LABEL_32;
      }

      if (userInterfaceStyleModeValue == 2)
      {
        v8 = +[NSBundle mainBundle];
        v21 = [(NSBundle *)v8 localizedStringForKey:@"EXPRESS_FEATURE_STATE_DARK" value:&stru_10032F900 table:@"Localizable"];

        goto LABEL_32;
      }

      if (userInterfaceStyleModeValue == 100 || userInterfaceStyleModeValue == 102)
      {
        v9 = +[NSBundle mainBundle];
        v21 = [(NSBundle *)v9 localizedStringForKey:@"EXPRESS_FEATURE_STATE_AUTO" value:&stru_10032F900 table:@"Localizable"];

        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  if (featureCopy - 10 >= 2)
  {
    if (featureCopy - 12 >= 2)
    {
      if (featureCopy == 14 && v16)
      {
        unsignedIntValue = [v16 unsignedIntValue];
        if (!unsignedIntValue)
        {
          v12 = +[NSBundle mainBundle];
          v21 = [(NSBundle *)v12 localizedStringForKey:@"EXPRESS_FEATURE_IPAD_MULTITASKING_FULLSCREEN" value:&stru_10032F900 table:@"Localizable"];

          goto LABEL_32;
        }

        if (unsignedIntValue == 1)
        {
          v13 = +[NSBundle mainBundle];
          v21 = [(NSBundle *)v13 localizedStringForKey:@"EXPRESS_FEATURE_IPAD_MULTITASKING_WINDOWED_APPS" value:&stru_10032F900 table:@"Localizable"];

          goto LABEL_32;
        }
      }

      goto LABEL_31;
    }

LABEL_19:
    if (v16)
    {
      if ([v16 BOOLValue])
      {
        v10 = +[NSBundle mainBundle];
        v21 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_FEATURE_STATE_ON" value:&stru_10032F900 table:@"Localizable"];
      }

      else
      {
        v10 = +[NSBundle mainBundle];
        v21 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_FEATURE_STATE_OFF" value:&stru_10032F900 table:@"Localizable"];
      }

      goto LABEL_32;
    }
  }

LABEL_31:
  v21 = 0;
LABEL_32:
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
  v14 = v21;

  return v14;
}

- (void)_learnMoreTapped
{
  selfCopy = self;
  location[1] = a2;
  privacyIdentifiers = [(BuddyExpressWelcomeController *)self privacyIdentifiers];
  location[0] = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithIdentifiers:privacyIdentifiers];

  [location[0] setPresentingViewController:selfCopy];
  [location[0] present];
  objc_storeStrong(location, 0);
}

- (void)_recordAnalyticsEventForDataProvider:(id)provider presented:(BOOL)presented customized:(BOOL)customized
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  presentedCopy = presented;
  customizedCopy = customized;
  expressSettingsAndAnalyticsQueue = [(BuddyExpressWelcomeController *)selfCopy expressSettingsAndAnalyticsQueue];
  dispatch_assert_queue_V2(expressSettingsAndAnalyticsQueue);

  v8 = location[0];
  resolvedDataSource = [location[0] resolvedDataSource];
  v18 = [v8 stringForDataSourceFeatures:resolvedDataSource];

  v10 = location[0];
  underlyingDataSource = [location[0] underlyingDataSource];
  v17 = [v10 stringForDataSourceFeatures:underlyingDataSource];

  v16 = +[BYExpressSetupDataProvider stringForDataSourceType:](BYExpressSetupDataProvider, "stringForDataSourceType:", [location[0] dataSourceType]);
  analyticsManager = [(BuddyExpressWelcomeController *)selfCopy analyticsManager];
  v23[0] = @"presented";
  v13 = [NSNumber numberWithBool:presentedCopy];
  v24[0] = v13;
  v23[1] = @"customizedSettings";
  v14 = [NSNumber numberWithBool:customizedCopy];
  v24[1] = v14;
  v23[2] = @"resolvedFeatures";
  v24[2] = v18;
  v23[3] = @"originalFeatures";
  v24[3] = v17;
  v23[4] = @"dataSource";
  v24[4] = v16;
  v15 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];
  [(BYAnalyticsManager *)analyticsManager addEvent:@"com.apple.setupassistant.ios.expressSetup" withPayload:v15 persist:1];

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)prepareStateForExpressFeatures:(id)features withDataSource:(id)source
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v15 = 0;
  objc_storeStrong(&v15, source);
  v14 = objc_alloc_init(NSMutableDictionary);
  memset(__b, 0, sizeof(__b));
  v5 = location[0];
  v6 = [v5 countByEnumeratingWithState:__b objects:v18 count:16];
  if (v6)
  {
    v7 = *__b[2];
    do
    {
      for (i = 0; i < v6; ++i)
      {
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(__b[1] + 8 * i);
        unsignedIntegerValue = [v13 unsignedIntegerValue];
        v10 = [objc_opt_class() _determineIfFeatureIsInExpress:unsignedIntegerValue withDataSource:v15];
        if (v10)
        {
          [v14 setObject:v10 forKeyedSubscript:v13];
        }

        objc_storeStrong(&v10, 0);
      }

      v6 = [v5 countByEnumeratingWithState:__b objects:v18 count:16];
    }

    while (v6);
  }

  v9 = [v14 copy];
  [(BuddyExpressWelcomeController *)selfCopy setExpressSettingsStateCacheInDataSource:v9];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyExpressWelcomeController *)self expressSettingsCache:a2];
  [(BYExpressSettingsSetupCache *)v2 resetCache];
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v18[1] = a2;
  miscState = [(BuddyExpressWelcomeController *)self miscState];
  userChoseExpress = [(BuddyMiscState *)miscState userChoseExpress];

  if (userChoseExpress)
  {
    v20 = 0;
  }

  else
  {
    v18[0] = +[AKAccountManager sharedInstance];
    location = [v18[0] primaryAuthKitAccount];
    if (location && ([v18[0] isBeneficiaryForAccount:location] & 1) != 0)
    {
      oslog = _BYLoggingFacility();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = oslog;
        v5 = v15;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v4, v5, "Skipping express as the current account is a beneficiary", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v20 = 0;
    }

    else
    {
      pendingRestoreState = [(BuddyExpressWelcomeController *)selfCopy pendingRestoreState];
      backupItem = [(BuddyPendingRestoreState *)pendingRestoreState backupItem];
      pendingRestoreState2 = [(BuddyExpressWelcomeController *)selfCopy pendingRestoreState];
      attemptedBackupItem = [(BuddyPendingRestoreState *)pendingRestoreState2 attemptedBackupItem];
      v13 = [(RestorableBackupItem *)backupItem isEqual:attemptedBackupItem];

      HasCompletedInitialRun = BYSetupAssistantHasCompletedInitialRun();
      v11 = 0;
      if ((HasCompletedInitialRun & 1) == 0)
      {
        v11 = v13 ^ 1;
      }

      v20 = v11 & 1;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(v18, 0);
  }

  return v20 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v33[0] = 0;
  v33[1] = v33;
  v34 = 838860800;
  v35 = 48;
  v36 = sub_1000E34AC;
  v37 = sub_1000E34F0;
  v38 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v28 = 838860800;
  v29 = 48;
  v30 = sub_1000E34AC;
  v31 = sub_1000E34F0;
  v32 = 0;
  group = dispatch_group_create();
  dispatch_group_enter(group);
  v3 = selfCopy;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_1000E34FC;
  v24 = &unk_10032C8F8;
  v25[1] = v33;
  v25[0] = group;
  [(BuddyExpressWelcomeController *)v3 createDataProvider:&v20];
  v19 = objc_alloc_init(AAUIProfilePictureStore);
  if (v19)
  {
    dispatch_group_enter(group);
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1000E35F0;
    v17 = &unk_10032C948;
    v18[1] = v27;
    v18[0] = group;
    [v19 fetchProfilePictureForAccountOwner:&v13];
    objc_storeStrong(v18, 0);
  }

  v4 = group;
  expressSettingsAndAnalyticsQueue = [(BuddyExpressWelcomeController *)selfCopy expressSettingsAndAnalyticsQueue];
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000E3774;
  v10 = &unk_10032C998;
  v12[1] = v33;
  v11 = selfCopy;
  v12[0] = location[0];
  v12[2] = v27;
  dispatch_group_notify(v4, expressSettingsAndAnalyticsQueue, &block);

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v25, 0);
  objc_storeStrong(&group, 0);
  _Block_object_dispose(v27, 8);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)startOver
{
  miscState = [(BuddyExpressWelcomeController *)self miscState];
  [(BuddyMiscState *)miscState setUserChoseExpress:0];

  miscState2 = [(BuddyExpressWelcomeController *)self miscState];
  [(BuddyMiscState *)miscState2 setWalletProvisioningContext:0];

  paneFeatureAnalyticsManager = [(BuddyExpressWelcomeController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager setExpressDataSource:0 features:0];
}

@end