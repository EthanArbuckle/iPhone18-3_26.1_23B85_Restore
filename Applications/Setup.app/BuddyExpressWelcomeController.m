@interface BuddyExpressWelcomeController
+ (BOOL)_isSettingsFeature:(unint64_t)a3;
+ (id)_accessoryViewForFeature:(unint64_t)a3;
+ (id)_createFeatureCardForDataTransferMethod:(unint64_t)a3 deviceName:(id)a4 lastBackupDate:(id)a5;
+ (id)_determineIfFeatureIsInExpress:(unint64_t)a3 withDataSource:(id)a4;
+ (id)_localizedDescriptionForFeature:(unint64_t)a3;
+ (id)_localizedNameForFeature:(unint64_t)a3;
+ (id)_privacyIdentifiersForFeature:(unint64_t)a3;
+ (id)_privacyIdentifiersForFeatures:(id)a3;
+ (id)_stateStringForFeature:(unint64_t)a3 withDataSource:(id)a4 withFeatureState:(id)a5;
- (BOOL)controllerNeedsToRun;
- (BuddyExpressWelcomeController)init;
- (id)_createFeatureCardForApplePay:(id)a3;
- (id)_createFeatureCardForConnections:(id)a3;
- (id)_createFeatureCardForSettings:(id)a3 withDataSource:(id)a4;
- (id)_detailForDataSourceDeviceClass:(id)a3;
- (id)dateForChosenBackup;
- (id)deviceNameForChosenBackup;
- (unint64_t)dataTransferMethod;
- (void)_addFeatureCardsForFeatures:(id)a3;
- (void)_addLearnMoreButton;
- (void)_learnMoreTapped;
- (void)_populateDataSourcesForDataProvider:(id)a3 completion:(id)a4;
- (void)_recordAnalyticsEventForDataProvider:(id)a3 presented:(BOOL)a4 customized:(BOOL)a5;
- (void)continueTapped;
- (void)controllerWasPopped;
- (void)createBackupDataSource:(id)a3;
- (void)createCloudDataSource:(id)a3;
- (void)createDataProvider:(id)a3;
- (void)createDataProviderWithCustomization:(id)a3 completion:(id)a4;
- (void)createWalletProvisionalContextUsingDataProvider:(id)a3 completion:(id)a4;
- (void)customizeTapped;
- (void)finishFlowItemWithDidApplyExpressSettings:(BOOL)a3 didCustomize:(BOOL)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)prepareStateForExpressFeatures:(id)a3 withDataSource:(id)a4;
- (void)startOver;
- (void)viewDidAppear:(BOOL)a3;
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
  v21 = self;
  v20 = a2;
  v19.receiver = self;
  v19.super_class = BuddyExpressWelcomeController;
  [(BuddyExpressWelcomeController *)&v19 viewDidLoad];
  v2 = v21;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"continueTapped"];

  v5 = v21;
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"CUSTOMIZE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v5 addLinkButton:v7 action:"customizeTapped"];

  v8 = [(BuddyExpressWelcomeController *)v21 headerView];
  v9 = v21;
  v10 = [(BuddyExpressWelcomeController *)v21 expressSetupDataProvider];
  v11 = [(BYExpressSetupDataProvider *)v10 resolvedDataSource];
  v12 = [(BYExpressSetupDataSource *)v11 sourceDeviceClass];
  v13 = [(BuddyExpressWelcomeController *)v9 _detailForDataSourceDeviceClass:v12];
  [v8 setDetailText:v13];

  v14 = [(BuddyExpressWelcomeController *)v21 privacyIdentifiers];
  v15 = [(NSArray *)v14 count];

  if (v15)
  {
    [(BuddyExpressWelcomeController *)v21 _addLearnMoreButton];
  }

  v16 = v21;
  v17 = [(BuddyExpressWelcomeController *)v21 expressSetupDataProvider];
  v18 = [(BYExpressSetupDataProvider *)v17 expressSetupFeatures];
  [(BuddyExpressWelcomeController *)v16 _addFeatureCardsForFeatures:v18];
}

- (void)viewDidAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = BuddyExpressWelcomeController;
  [(BuddyExpressWelcomeController *)&v11 viewDidAppear:a3];
  v3 = [(BuddyExpressWelcomeController *)v14 miscState];
  [(BuddyMiscState *)v3 setUserChoseExpress:0];

  v4 = [(BuddyExpressWelcomeController *)v14 expressSettingsAndAnalyticsQueue];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000DC488;
  v9 = &unk_10032B0D0;
  v10 = v14;
  dispatch_async(v4, &v6);

  v5 = [(BuddyExpressWelcomeController *)v14 pendingRestoreState:v6];
  [(BuddyPendingRestoreState *)v5 setAttemptedBackupItem:0];

  objc_storeStrong(&v10, 0);
}

- (void)continueTapped
{
  v13 = self;
  v12[1] = a2;
  v2 = [(BuddyExpressWelcomeController *)self view];
  v3 = [v2 window];
  [v3 setUserInteractionEnabled:0];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v13 identifier:v5];

  v6 = [(BuddyExpressWelcomeController *)v13 expressSettingsAndAnalyticsQueue];
  block = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000DC654;
  v11 = &unk_10032B0D0;
  v12[0] = v13;
  dispatch_async(v6, &block);

  objc_storeStrong(v12, 0);
}

- (void)customizeTapped
{
  v19 = self;
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
  v4 = [(BuddyExpressWelcomeController *)v19 view];
  v5 = [v4 window];
  [v5 setUserInteractionEnabled:0];

  v6 = v19;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v6 identifier:v8];

  v9 = [(BuddyExpressWelcomeController *)v19 expressSettingsAndAnalyticsQueue];
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000DC97C;
  v14 = &unk_10032B0D0;
  v15 = v19;
  dispatch_async(v9, &block);

  objc_storeStrong(&v15, 0);
}

- (void)finishFlowItemWithDidApplyExpressSettings:(BOOL)a3 didCustomize:(BOOL)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v4 = [(BuddyExpressWelcomeController *)self expressSettingsAndAnalyticsQueue];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000DCACC;
  v9 = &unk_10032C7B8;
  v10 = v16;
  v11 = v13;
  v12 = v14;
  dispatch_async(v4, &v5);

  objc_storeStrong(&v10, 0);
}

- (void)createDataProvider:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyExpressWelcomeController *)v4 createDataProviderWithCustomization:0 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)createDataProviderWithCustomization:(id)a3 completion:(id)a4
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v5 = [BYExpressSetupDataProvider alloc];
  v23 = [(BuddyExpressWelcomeController *)v44 chronicle];
  v6 = [(BuddyExpressWelcomeController *)v44 displayZoomExecutor];
  v7 = [(BuddyExpressWelcomeController *)v44 capabilities];
  v8 = [(BuddyExpressWelcomeController *)v44 settingsManager];
  v9 = [(BuddyExpressWelcomeController *)v44 buddyPreferences];
  v24 = [(BuddyExpressWelcomeController *)v44 buddyPreferencesExcludedFromBackup];
  v10 = [(BuddyExpressWelcomeController *)v44 managedConfiguration];
  v11 = [(BuddyExpressWelcomeController *)v44 deviceProvider];
  v12 = [(BuddyExpressWelcomeController *)v44 expressSettingsCache];
  v13 = [(BuddyExpressWelcomeController *)v44 iPadMultitaskingModeManager];
  v14 = [(BuddyExpressWelcomeController *)v44 flowItemDispositionProvider];
  v41 = [(BYExpressSetupDataProvider *)v5 initWithChronicle:v23 displayZoomExecutor:v6 capabilities:v7 settingsManager:v8 buddyPreferences:v9 buddyPreferencesExcludedFromBackup:v24 managedConfiguration:v10 deviceProvider:v11 expressSettingsCache:v12 iPadMultitaskingManager:v13 flowItemDispositionProvider:v14];

  v15 = [(BuddyExpressWelcomeController *)v44 miscState];
  [v41 setMiscState:v15];

  v16 = [(BuddyExpressWelcomeController *)v44 pendingRestoreState];
  v17 = [(BuddyPendingRestoreState *)v16 backupItem];
  v39 = 0;
  v37 = 0;
  v18 = 1;
  if (!v17)
  {
    v40 = [(BuddyExpressWelcomeController *)v44 miscState];
    v39 = 1;
    v38 = [(BuddyMiscState *)v40 migrationManager];
    v37 = 1;
    v18 = [v38 migrationInProgressOrCompleted];
  }

  [v41 setWillRestoreOrMigrate:v18 & 1];
  if (v37)
  {
  }

  if (v39)
  {
  }

  v19 = [(BuddyExpressWelcomeController *)v44 pendingRestoreState];
  v20 = [(BuddyPendingRestoreState *)v19 backupItem];
  v35 = 0;
  v33 = 0;
  v21 = 1;
  if (!v20)
  {
    v36 = [(BuddyExpressWelcomeController *)v44 miscState];
    v35 = 1;
    v34 = [v36 migrationManager];
    v33 = 1;
    v21 = [v34 willMigrate];
  }

  [v41 setWillRestoreOrReallyMigrate:v21 & 1];
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

  v22 = v44;
  v25 = _NSConcreteStackBlock;
  v26 = -1073741824;
  v27 = 0;
  v28 = sub_1000DD1F4;
  v29 = &unk_10032BC78;
  v30 = v41;
  v31 = v44;
  v32 = v42;
  [(BuddyExpressWelcomeController *)v22 _populateDataSourcesForDataProvider:v41 completion:&v25];
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

- (void)createBackupDataSource:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyExpressWelcomeController *)v16 pendingRestoreState];
  v4 = [(BuddyPendingRestoreState *)v3 backupItem];
  v5 = v4 == 0;

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
    v12 = v16;
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
  v2 = [(BuddyExpressWelcomeController *)self setupMethod];
  v3 = [(BuddySetupMethod *)v2 dataTransferMethod];

  if (!v3)
  {
    return 0;
  }

  if (v3 == 1)
  {
    return 1;
  }

  if (v3 == 2)
  {
    return 3;
  }

  if (v3 == 3)
  {
    return 4;
  }

  return v5;
}

- (void)createWalletProvisionalContextUsingDataProvider:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = [location[0] resolvedDataSource];
  v13 = [v5 walletMetadata];

  v6 = [sub_1000DD810() sharedInstance];
  [v6 setBackupMetadata:v13];

  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000DD924;
  v11 = &unk_10032C7E0;
  v12 = v14;
  [BuddyPaymentController setupAssistantExpressProvisioningContext:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)createCloudDataSource:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v2 = [(BuddyExpressWelcomeController *)self pendingRestoreState];
  v3 = [(BuddyPendingRestoreState *)v2 backupItem];
  v4 = v3 == 0;

  if (v4)
  {
    v12 = 0;
  }

  else
  {
    v5 = [(BuddyExpressWelcomeController *)self backupDeviceController];
    v6 = [(BFFBackupDeviceController *)v5 completionDate];

    if (v6)
    {
      v7 = [(BuddyExpressWelcomeController *)self backupDeviceController];
      v12 = [(BFFBackupDeviceController *)v7 completionDate];
    }

    else
    {
      v7 = [(BuddyExpressWelcomeController *)self pendingRestoreState];
      v8 = [(BFFBackupDeviceController *)v7 backupItem];
      v9 = [v8 snapshot];
      v12 = [v9 date];
    }
  }

  return v12;
}

- (id)deviceNameForChosenBackup
{
  v2 = [(BuddyExpressWelcomeController *)self pendingRestoreState];
  v3 = [(BuddyPendingRestoreState *)v2 backupItem];
  v4 = v3 == 0;

  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v5 = [(BuddyExpressWelcomeController *)self pendingRestoreState];
    v6 = [(BuddyPendingRestoreState *)v5 backupItem];
    v7 = [(RestorableBackupItem *)v6 snapshot];
    v10 = [(MBSnapshot *)v7 deviceName];
  }

  return v10;
}

- (void)_populateDataSourcesForDataProvider:(id)a3 completion:(id)a4
{
  v67 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v65 = 0;
  objc_storeStrong(&v65, a4);
  v5 = [(BuddyExpressWelcomeController *)v67 proximitySetupController];
  v6 = [(ProximitySetupController *)v5 expressDataSource];
  [location[0] setProximitySetupDataSource:v6];

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
  v13 = v67;
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
  v20 = v67;
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
  v28 = v67;
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

- (id)_detailForDataSourceDeviceClass:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v6 = self;
  location[1] = a2;
  location[0] = +[OBHeaderAccessoryButton accessoryButton];
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"LEARN_MORE_ELLIPSIS" value:&stru_10032F900 table:@"Localizable"];
  [location[0] setTitle:v3 forState:0];

  [location[0] addTarget:v6 action:"_learnMoreTapped" forControlEvents:0x2000];
  v4 = [(BuddyExpressWelcomeController *)v6 headerView];
  [v4 addAccessoryButton:location[0]];

  objc_storeStrong(location, 0);
}

+ (id)_privacyIdentifiersForFeatures:(id)a3
{
  v14 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
        v9 = [v14 _privacyIdentifiersForFeature:{objc_msgSend(v11, "unsignedIntegerValue")}];
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

+ (id)_privacyIdentifiersForFeature:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v11 = BYPrivacyLocationServicesIdentifier;
      v4 = [NSArray arrayWithObjects:&v11 count:1, 1, a2, a1];
      goto LABEL_19;
    case 2uLL:
      v10 = BYPrivacyAnalyticsDeviceIdentifier;
      v4 = [NSArray arrayWithObjects:&v10 count:1, 2, a2, a1];
      goto LABEL_19;
    case 3uLL:
      v9 = BYPrivacyAnalyticsAppIdentifier;
      v4 = [NSArray arrayWithObjects:&v9 count:1, 3, a2, a1];
      goto LABEL_19;
    case 4uLL:
      v8[0] = BYPrivacyAnalyticsDeviceIdentifier;
      v8[1] = BYPrivacyAnalyticsAppIdentifier;
      v4 = [NSArray arrayWithObjects:v8 count:2, 4, a2, a1];
      goto LABEL_19;
    case 5uLL:
      v7 = BYPrivacySiriIdentifier;
      v4 = [NSArray arrayWithObjects:&v7 count:1, 5, a2, a1];
      goto LABEL_19;
    case 6uLL:
      v6 = BYPrivacyImproveSiriIdentifier;
      v4 = [NSArray arrayWithObjects:&v6 count:1, 6, a2, a1];
      goto LABEL_19;
  }

  if (a3 - 7 < 4)
  {
    goto LABEL_18;
  }

  if (a3 == 11)
  {
    v5[0] = BYPrivacyAppleCard;
    v5[1] = BYPrivacyApplePay;
    v5[2] = BYPrivacyApplePayCash;
    v5[3] = BYPrivacyAppleWallet;
    v4 = [NSArray arrayWithObjects:v5 count:4, 11, a2, a1];
    goto LABEL_19;
  }

  if (a3 - 12 < 3)
  {
LABEL_18:
    v4 = 0;
  }

LABEL_19:

  return v4;
}

- (void)_addFeatureCardsForFeatures:(id)a3
{
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 setAxis:1];
  [v44 setSpacing:10.0];
  if ([location[0] containsObject:&off_10033D100])
  {
    v3 = v46;
    v4 = [(BuddyExpressWelcomeController *)v46 expressSetupDataProvider];
    v5 = [(BYExpressSetupDataProvider *)v4 walletProvisioningContext];
    v43 = [(BuddyExpressWelcomeController *)v3 _createFeatureCardForApplePay:v5];

    [v44 addArrangedSubview:v43];
    objc_storeStrong(&v43, 0);
  }

  if ([location[0] containsObject:&off_10033D118])
  {
    v6 = v46;
    v7 = [(BuddyExpressWelcomeController *)v46 expressSetupDataProvider];
    v8 = [(BYExpressSetupDataProvider *)v7 pairedWatches];
    v42 = [(BuddyExpressWelcomeController *)v6 _createFeatureCardForConnections:v8];

    [v44 addArrangedSubview:v42];
    objc_storeStrong(&v42, 0);
  }

  v41 = [location[0] mutableCopy];
  [v41 removeObject:&off_10033D118];
  if ([v41 count])
  {
    v9 = v46;
    v10 = [(BuddyExpressWelcomeController *)v46 expressSetupDataProvider];
    v11 = [(BYExpressSetupDataProvider *)v10 resolvedDataSource];
    v40 = [(BuddyExpressWelcomeController *)v9 _createFeatureCardForSettings:v41 withDataSource:v11];

    [v44 insertArrangedSubview:v40 atIndex:0];
    objc_storeStrong(&v40, 0);
  }

  v12 = objc_opt_class();
  v13 = [(BuddyExpressWelcomeController *)v46 dataTransferMethod];
  v14 = [(BuddyExpressWelcomeController *)v46 deviceNameForChosenBackup];
  v15 = [(BuddyExpressWelcomeController *)v46 dateForChosenBackup];
  v39 = [v12 _createFeatureCardForDataTransferMethod:v13 deviceName:v14 lastBackupDate:v15];

  if (v39)
  {
    [v44 insertArrangedSubview:v39 atIndex:0];
  }

  v16 = [(BuddyExpressWelcomeController *)v46 contentView];
  [v16 addSubview:v44];

  v17 = [v44 arrangedSubviews];
  v18 = [v17 count];

  if (v18 == 1)
  {
    v19 = [v44 arrangedSubviews];
    v38 = [v19 firstObject];

    [v38 setExpanded:1];
    objc_storeStrong(&v38, 0);
  }

  v20 = [(BuddyExpressWelcomeController *)v46 contentView];
  v37 = [(BuddyExpressWelcomeController *)v46 contentView];
  v36 = [v37 topAnchor];
  v35 = [v44 topAnchor];
  v34 = [v36 constraintEqualToAnchor:?];
  v47[0] = v34;
  v33 = [(BuddyExpressWelcomeController *)v46 contentView];
  v32 = [v33 leadingAnchor];
  v31 = [v44 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:?];
  v47[1] = v30;
  v21 = [(BuddyExpressWelcomeController *)v46 contentView];
  v22 = [v21 trailingAnchor];
  v23 = [v44 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v47[2] = v24;
  v25 = [(BuddyExpressWelcomeController *)v46 contentView];
  v26 = [v25 bottomAnchor];
  v27 = [v44 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v47[3] = v28;
  v29 = [NSArray arrayWithObjects:v47 count:4];
  [v20 addConstraints:v29];

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

- (id)_createFeatureCardForConnections:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (id)_createFeatureCardForApplePay:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = [UIImage _systemImageNamed:@"wallet"];
  v40 = objc_alloc_init(NSMutableArray);
  v3 = [location[0] setupAssistantCredentials];
  v4 = [location[0] selectedIndices];
  v39 = [v3 objectsAtIndexes:v4];

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
        v36 = [v38 title];
        if (v36)
        {
          v9 = v40;
          v10 = +[NSBundle mainBundle];
          v11 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APPLE_WALLET_NAME" value:&stru_10032F900 table:@"Localizable"];
          v12 = [NSString localizedStringWithFormat:v11, v36];
          [v9 addObject:v12];
        }

        objc_storeStrong(&v36, 0);
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
        v25 = [v33 title];
        v26 = [v33 subtitle];
        v30 = [(BuddyExpressSetupFeatureCardCell *)v24 initWithTitle:v25 subtitle:v26 state:0 accessoryView:v31];

        v27 = [v33 uniqueIdentifier];
        [v30 setUniqueIdentifier:v27];

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

- (id)_createFeatureCardForSettings:(id)a3 withDataSource:(id)a4
{
  v58 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v56 = 0;
  objc_storeStrong(&v56, a4);
  v5 = location[0];
  v49 = _NSConcreteStackBlock;
  v50 = -1073741824;
  v51 = 0;
  v52 = sub_1000E0BC8;
  v53 = &unk_10032C8A8;
  v54 = v58;
  v6 = [NSPredicate predicateWithBlock:&v49];
  v55 = [v5 filteredArrayUsingPredicate:v6];

  v7 = v55;
  v43 = _NSConcreteStackBlock;
  v44 = -1073741824;
  v45 = 0;
  v46 = sub_1000E0C58;
  v47 = &unk_10032C8D0;
  v48 = v58;
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
        v34 = [v36 unsignedIntegerValue];
        v33 = [objc_opt_class() _localizedNameForFeature:v34];
        v32 = [objc_opt_class() _localizedDescriptionForFeature:v34];
        v24 = [v58 expressSettingsStateCacheInDataSource];
        v31 = [v24 objectForKeyedSubscript:v36];

        v30 = [objc_opt_class() _stateStringForFeature:v34 withDataSource:v56 withFeatureState:v31];
        v29 = [objc_opt_class() _accessoryViewForFeature:v34];
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

+ (id)_createFeatureCardForDataTransferMethod:(unint64_t)a3 deviceName:(id)a4 lastBackupDate:(id)a5
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v38 = 0;
  objc_storeStrong(&v38, a5);
  v37 = [UIImage _systemImageNamed:@"app.3.stack.3d"];
  v6 = +[NSBundle mainBundle];
  v36 = [(NSBundle *)v6 localizedStringForKey:@"APPS_AND_DATA" value:&stru_10032F900 table:@"Localizable"];

  v35 = 0;
  v34 = 0;
  if (v40)
  {
    if (v40 - 1 < 2)
    {
      v10 = +[NSBundle mainBundle];
      v11 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_RESTORE_METHOD_CLOUD" value:&stru_10032F900 table:@"Localizable"];
      v12 = v35;
      v35 = v11;

      v33 = 0;
      if (v40 == 2)
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

    else if (v40 == 3)
    {
      v21 = +[NSBundle mainBundle];
      v22 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"TRANSFER_DIRECTLY"];
      v23 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_10032F900 table:@"Localizable"];
      v24 = v35;
      v35 = v23;
    }

    else if (v40 == 4)
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

+ (BOOL)_isSettingsFeature:(unint64_t)a3
{
  if (a3 - 1 < 5)
  {
    goto LABEL_8;
  }

  switch(a3)
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

  if (a3 - 10 < 2)
  {
    goto LABEL_9;
  }

  if (a3 - 12 <= 2)
  {
    goto LABEL_8;
  }

  return v4 & 1;
}

+ (id)_localizedNameForFeature:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v3 = [NSBundle mainBundle:a3];
      v17 = [(NSBundle *)v3 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_LOCATION_SERVICES" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 2uLL:
      v4 = [NSBundle mainBundle:a3];
      v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_TITLE_DEVICE_ANALYTICS"];
      v17 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 3uLL:
      v6 = [NSBundle mainBundle:a3];
      v17 = [(NSBundle *)v6 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APP_ANALYTICS" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 4uLL:
      v7 = [NSBundle mainBundle:a3];
      v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_TITLE_DEVICE_AND_APP_ANALYTICS"];
      v17 = [(NSBundle *)v7 localizedStringForKey:v8 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 5uLL:
      v9 = [NSBundle mainBundle:a3];
      v17 = [(NSBundle *)v9 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_SIRI" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 6uLL:
    case 8uLL:
    case 0xAuLL:
      v17 = 0;
      break;
    case 7uLL:
      v10 = [NSBundle mainBundle:a3];
      v17 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_SCREEN_TIME" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 9uLL:
      v11 = [NSBundle mainBundle:a3];
      v17 = [(NSBundle *)v11 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APPEARANCE" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xBuLL:
      v12 = [NSBundle mainBundle:a3];
      v17 = [(NSBundle *)v12 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APPLE_WALLET" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xCuLL:
      v13 = [NSBundle mainBundle:a3];
      v17 = [(NSBundle *)v13 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_APPLE_ACTION_BUTTON" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xDuLL:
      v14 = [NSBundle mainBundle:a3];
      v17 = [(NSBundle *)v14 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_STOLEN_DEVICE_PROTECTION" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xEuLL:
      v15 = [NSBundle mainBundle:a3];
      v17 = [(NSBundle *)v15 localizedStringForKey:@"EXPRESS_FEATURE_TITLE_IPAD_MULTITASKING" value:&stru_10032F900 table:@"Localizable"];

      break;
    default:
      break;
  }

  return v17;
}

+ (id)_localizedDescriptionForFeature:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v3 = [NSBundle mainBundle:a3];
      v18 = [(NSBundle *)v3 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_LOCATION_SERVICES" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 2uLL:
      v4 = [NSBundle mainBundle:a3];
      v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_DESCRIPTION_DEVICE_ANALYTICS"];
      v18 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 3uLL:
      v6 = [NSBundle mainBundle:a3];
      v18 = [(NSBundle *)v6 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_APP_ANALYTICS" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 4uLL:
      v7 = [NSBundle mainBundle:a3];
      v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_DESCRIPTION_DEVICE_AND_APP_ANALYTICS"];
      v18 = [(NSBundle *)v7 localizedStringForKey:v8 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 5uLL:
      v9 = [NSBundle mainBundle:a3];
      v18 = [(NSBundle *)v9 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_SIRI" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 6uLL:
    case 8uLL:
    case 0xAuLL:
      v18 = 0;
      break;
    case 7uLL:
      v10 = [NSBundle mainBundle:a3];
      v18 = [(NSBundle *)v10 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_SCREEN_TIME" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 9uLL:
      v11 = [NSBundle mainBundle:a3];
      v12 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_DESCRIPTION_APPEARANCE"];
      v18 = [(NSBundle *)v11 localizedStringForKey:v12 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xBuLL:
      v18 = 0;
      break;
    case 0xCuLL:
      v13 = [NSBundle mainBundle:a3];
      v14 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"EXPRESS_FEATURE_DESCRIPTION_ACTION_BUTTON"];
      v18 = [(NSBundle *)v13 localizedStringForKey:v14 value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xDuLL:
      v15 = [NSBundle mainBundle:a3];
      v18 = [(NSBundle *)v15 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_STOLEN_DEVICE_PROTECTION" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 0xEuLL:
      v16 = [NSBundle mainBundle:a3];
      v18 = [(NSBundle *)v16 localizedStringForKey:@"EXPRESS_FEATURE_DESCRIPTION_IPAD_MULTITASKING" value:&stru_10032F900 table:@"Localizable"];

      break;
    default:
      break;
  }

  return v18;
}

+ (id)_accessoryViewForFeature:(unint64_t)a3
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = 0;
  location = 0;
  v42 = 0;
  v41 = +[UIColor systemBlueColor];
  if (v45 == 1)
  {
    objc_storeStrong(&location, @"location.fill");
  }

  else if (v45 - 2 < 3)
  {
    objc_storeStrong(&location, @"chart.bar.xaxis");
  }

  else if (v45 == 5)
  {
    v3 = [UIImage imageNamed:@"Siri"];
    v4 = v44;
    v44 = v3;
  }

  else
  {
    if (v45 == 6)
    {
      goto LABEL_22;
    }

    if (v45 != 7)
    {
      if (v45 != 8)
      {
        if (v45 == 9)
        {
          objc_storeStrong(&location, @"textformat.size");
        }

        else if (v45 == 10)
        {
          objc_storeStrong(&location, @"applewatch.side.right");
          v7 = +[UIColor systemGray4Color];
          v8 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
          v9 = [(UIColor *)v7 resolvedColorWithTraitCollection:v8];
          v10 = v41;
          v41 = v9;
        }

        else if (v45 != 11)
        {
          switch(v45)
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

    v36 = [v37 CGImage];
    v17 = [[UIImage alloc] initWithCGImage:v36];
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
    v25 = [v35 centerXAnchor];
    v26 = [v34 centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v49[0] = v27;
    v28 = [v35 centerYAnchor];
    v29 = [v34 centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
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

+ (id)_determineIfFeatureIsInExpress:(unint64_t)a3 withDataSource:(id)a4
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v28 = 0;
  switch(v30)
  {
    case 1uLL:
      v4 = [location locationServicesOptIn];
      v5 = v28;
      v28 = v4;

      break;
    case 2uLL:
      goto LABEL_23;
    case 3uLL:
      v11 = [location appAnalyticsOptIn];
      v12 = v28;
      v28 = v11;

      break;
    case 4uLL:
LABEL_23:
      v9 = [location deviceAnalyticsOptIn];
      v10 = v28;
      v28 = v9;

      break;
    case 5uLL:
      v13 = [location siriOptIn];
      v14 = v28;
      v28 = v13;

      break;
    case 6uLL:
      goto LABEL_21;
    case 7uLL:
      v6 = [location screenTimeEnabled];
      v7 = v28;
      v28 = v6;

      break;
    case 8uLL:
      v15 = [location softwareUpdateAutoDownloadEnabled];
      v16 = [v15 BOOLValue];
      v26 = 0;
      v17 = 0;
      if (v16)
      {
        v27 = [location softwareUpdateAutoUpdateEnabled];
        v26 = 1;
        v17 = [v27 BOOLValue];
      }

      v18 = [NSNumber numberWithInt:v17 & 1];
      v19 = v28;
      v28 = v18;

      if (v26)
      {
      }

      break;
    case 9uLL:
      v8 = [location userInterfaceStyleModeValue];
      if (!v8)
      {
        goto LABEL_21;
      }

      if ((v8 - 1) < 2 || v8 == 100 || v8 == 102)
      {
        objc_storeStrong(&v28, &__kCFBooleanTrue);
      }

      break;
    default:
      if (v30 - 10 >= 3)
      {
        if (v30 == 13)
        {
          v20 = [location stolenDeviceProtectionEnabled];
          v21 = v28;
          v28 = v20;
        }

        else if (v30 == 14)
        {
          v22 = [location iPadMultitaskingMode];
          v23 = v28;
          v28 = v22;
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

+ (id)_stateStringForFeature:(unint64_t)a3 withDataSource:(id)a4 withFeatureState:(id)a5
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  if (v18 - 1 < 5)
  {
    goto LABEL_19;
  }

  if (v18 == 6)
  {
    goto LABEL_31;
  }

  if (v18 - 7 < 2)
  {
    goto LABEL_19;
  }

  if (v18 == 9)
  {
    v6 = [location userInterfaceStyleModeValue];
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = +[NSBundle mainBundle];
        v21 = [(NSBundle *)v7 localizedStringForKey:@"EXPRESS_FEATURE_STATE_LIGHT" value:&stru_10032F900 table:@"Localizable"];

        goto LABEL_32;
      }

      if (v6 == 2)
      {
        v8 = +[NSBundle mainBundle];
        v21 = [(NSBundle *)v8 localizedStringForKey:@"EXPRESS_FEATURE_STATE_DARK" value:&stru_10032F900 table:@"Localizable"];

        goto LABEL_32;
      }

      if (v6 == 100 || v6 == 102)
      {
        v9 = +[NSBundle mainBundle];
        v21 = [(NSBundle *)v9 localizedStringForKey:@"EXPRESS_FEATURE_STATE_AUTO" value:&stru_10032F900 table:@"Localizable"];

        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  if (v18 - 10 >= 2)
  {
    if (v18 - 12 >= 2)
    {
      if (v18 == 14 && v16)
      {
        v11 = [v16 unsignedIntValue];
        if (!v11)
        {
          v12 = +[NSBundle mainBundle];
          v21 = [(NSBundle *)v12 localizedStringForKey:@"EXPRESS_FEATURE_IPAD_MULTITASKING_FULLSCREEN" value:&stru_10032F900 table:@"Localizable"];

          goto LABEL_32;
        }

        if (v11 == 1)
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
  v4 = self;
  location[1] = a2;
  v2 = [(BuddyExpressWelcomeController *)self privacyIdentifiers];
  location[0] = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithIdentifiers:v2];

  [location[0] setPresentingViewController:v4];
  [location[0] present];
  objc_storeStrong(location, 0);
}

- (void)_recordAnalyticsEventForDataProvider:(id)a3 presented:(BOOL)a4 customized:(BOOL)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  v19 = a5;
  v7 = [(BuddyExpressWelcomeController *)v22 expressSettingsAndAnalyticsQueue];
  dispatch_assert_queue_V2(v7);

  v8 = location[0];
  v9 = [location[0] resolvedDataSource];
  v18 = [v8 stringForDataSourceFeatures:v9];

  v10 = location[0];
  v11 = [location[0] underlyingDataSource];
  v17 = [v10 stringForDataSourceFeatures:v11];

  v16 = +[BYExpressSetupDataProvider stringForDataSourceType:](BYExpressSetupDataProvider, "stringForDataSourceType:", [location[0] dataSourceType]);
  v12 = [(BuddyExpressWelcomeController *)v22 analyticsManager];
  v23[0] = @"presented";
  v13 = [NSNumber numberWithBool:v20];
  v24[0] = v13;
  v23[1] = @"customizedSettings";
  v14 = [NSNumber numberWithBool:v19];
  v24[1] = v14;
  v23[2] = @"resolvedFeatures";
  v24[2] = v18;
  v23[3] = @"originalFeatures";
  v24[3] = v17;
  v23[4] = @"dataSource";
  v24[4] = v16;
  v15 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];
  [(BYAnalyticsManager *)v12 addEvent:@"com.apple.setupassistant.ios.expressSetup" withPayload:v15 persist:1];

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)prepareStateForExpressFeatures:(id)a3 withDataSource:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
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
        v11 = [v13 unsignedIntegerValue];
        v10 = [objc_opt_class() _determineIfFeatureIsInExpress:v11 withDataSource:v15];
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
  [(BuddyExpressWelcomeController *)v17 setExpressSettingsStateCacheInDataSource:v9];

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
  v19 = self;
  v18[1] = a2;
  v2 = [(BuddyExpressWelcomeController *)self miscState];
  v3 = [(BuddyMiscState *)v2 userChoseExpress];

  if (v3)
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
      v6 = [(BuddyExpressWelcomeController *)v19 pendingRestoreState];
      v7 = [(BuddyPendingRestoreState *)v6 backupItem];
      v8 = [(BuddyExpressWelcomeController *)v19 pendingRestoreState];
      v9 = [(BuddyPendingRestoreState *)v8 attemptedBackupItem];
      v13 = [(RestorableBackupItem *)v7 isEqual:v9];

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

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v3 = v40;
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
  v5 = [(BuddyExpressWelcomeController *)v40 expressSettingsAndAnalyticsQueue];
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000E3774;
  v10 = &unk_10032C998;
  v12[1] = v33;
  v11 = v40;
  v12[0] = location[0];
  v12[2] = v27;
  dispatch_group_notify(v4, v5, &block);

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
  v2 = [(BuddyExpressWelcomeController *)self miscState];
  [(BuddyMiscState *)v2 setUserChoseExpress:0];

  v3 = [(BuddyExpressWelcomeController *)self miscState];
  [(BuddyMiscState *)v3 setWalletProvisioningContext:0];

  v4 = [(BuddyExpressWelcomeController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v4 setExpressDataSource:0 features:0];
}

@end