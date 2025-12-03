@interface DeviceRestoreChoiceController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_useCompactMode;
- (BOOL)controllerNeedsToRun;
- (DeviceRestoreChoiceController)init;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_invalidatePendingProximityFinishSetupRequest;
- (void)_migrateFromiOSSelected;
- (void)_populateRestoreChoices;
- (void)connectionTerminated;
- (void)didSelectChoice:(id)choice;
- (void)flowItemDidAppear:(BOOL)appear;
- (void)proximitySetupCompleted:(id)completed;
- (void)selectChoiceForIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DeviceRestoreChoiceController

- (DeviceRestoreChoiceController)init
{
  selfCopy = self;
  location[1] = a2;
  location[0] = @"iphone.on.rectangle.portrait.dashed";
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    objc_storeStrong(location, @"apps.ipad.on.rectangle.portrait.dashed");
  }

  v4 = +[NSBundle mainBundle];
  v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_RESTORE_APPS_DATA"];
  v31 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];

  v6 = selfCopy;
  v7 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v7 localizedStringForKey:@"DEVICE_RESTORE_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  selfCopy = 0;
  v30.receiver = v6;
  v30.super_class = DeviceRestoreChoiceController;
  selfCopy = [(DeviceRestoreChoiceController *)&v30 initWithTitle:v31 detailText:v8 symbolName:location[0] adoptTableViewScrollView:1];
  objc_storeStrong(&selfCopy, selfCopy);

  if (selfCopy)
  {
    v9 = [BuddyTableChoiceManager alloc];
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_100111A70;
    v28 = &unk_10032D060;
    v29 = selfCopy;
    v10 = [(BuddyTableChoiceManager *)v9 initWithCellConstructor:&v24 allowManualRowHeight:1];
    v11 = *(selfCopy + 19);
    *(selfCopy + 19) = v10;

    [*(selfCopy + 19) setChooseableDelegate:?];
    v12 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v13 = *(selfCopy + 21);
    *(selfCopy + 21) = v12;

    tableViewDelegate = [*(selfCopy + 19) tableViewDelegate];
    [*(selfCopy + 21) setDelegate:tableViewDelegate];

    tableViewDataSource = [*(selfCopy + 19) tableViewDataSource];
    [*(selfCopy + 21) setDataSource:tableViewDataSource];

    [*(selfCopy + 21) setEstimatedRowHeight:0.0];
    v23 = sub_100111EBC();
    [*(selfCopy + 21) setDirectionalLayoutMargins:{v23, v16, v17, v18, *&v23, *&v16, *&v17, *&v18}];
    v19 = +[NSMutableDictionary dictionary];
    v20 = *(selfCopy + 22);
    *(selfCopy + 22) = v19;

    objc_storeStrong(&v29, 0);
  }

  v21 = selfCopy;
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v21;
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v23 = a2;
  suspendTask = [(DeviceRestoreChoiceController *)self suspendTask];
  [(BuddySuspendTask *)suspendTask preheat];

  buddyPreferencesExcludedFromBackup = [(DeviceRestoreChoiceController *)selfCopy buddyPreferencesExcludedFromBackup];
  runState = [(DeviceRestoreChoiceController *)selfCopy runState];
  v5 = [BuddyMigrationStateProvider validateAndResolveMigrationStateUsingPreferences:buddyPreferencesExcludedFromBackup didCompleteInitialRun:[(BYRunState *)runState hasCompletedInitialRun]& 1];
  LOBYTE(suspendTask) = v5 != 0;

  v22 = suspendTask & 1;
  if (suspendTask)
  {
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v20;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v6, v7, "DeviceRestoreChoiceController migration state found", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    return 1;
  }

  else
  {
    buddyPreferences = [(DeviceRestoreChoiceController *)selfCopy buddyPreferences];
    v9 = [(BYPreferencesController *)buddyPreferences BOOLForKey:@"RestoreChoice"];

    v18 = v9 & 1;
    v17 = BYSetupAssistantHasCompletedInitialRun() & 1;
    buddyPreferences2 = [(DeviceRestoreChoiceController *)selfCopy buddyPreferences];
    v11 = [(BYPreferencesController *)buddyPreferences2 BOOLForKey:BYBuddyDoneKey];

    v16 = v11 & 1;
    v12 = 0;
    if ((v18 & 1) == 0)
    {
      v12 = 0;
      if ((v17 & 1) == 0)
      {
        v12 = v16 ^ 1;
      }
    }

    v15 = v12 & 1;
    v14 = _BYLoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000A094C(v26, v15 & 1, v18 & 1, v17 & 1, v16 & 1);
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DeviceRestoreChoiceController needsToRun: %d. hasRestoreChoice: %d, hasCompletedInitialSetup: %d, setupDone: %d", v26, 0x1Au);
    }

    objc_storeStrong(&v14, 0);
    return v15 & 1;
  }
}

- (void)_populateRestoreChoices
{
  selfCopy = self;
  v108 = a2;
  flowItemDispositionProvider = [(DeviceRestoreChoiceController *)self flowItemDispositionProvider];
  v3 = ([(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider dispositions]>> 4) & 1;

  v107 = v3 & 1;
  v106 = +[NSMutableArray array];
  managedConfiguration = [(DeviceRestoreChoiceController *)selfCopy managedConfiguration];
  LOBYTE(v3) = [(MCProfileConnection *)managedConfiguration effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed]!= 2;

  v105 = v3 & 1;
  if (v3)
  {
    v5 = [BuddyChoice alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"RESTORE_FROM_OTA_BACKUP" value:&stru_10032F900 table:@"Localizable"];
    v8 = [(BuddyChoice *)v5 initWithTitle:v7 nextItemClass:0];
    [(DeviceRestoreChoiceController *)selfCopy setCloudRestoreChoice:v8];

    cloudRestoreChoice = [(DeviceRestoreChoiceController *)selfCopy cloudRestoreChoice];
    [(BuddyChoice *)cloudRestoreChoice setSymbolName:@"icloud"];

    cloudRestoreChoice2 = [(DeviceRestoreChoiceController *)selfCopy cloudRestoreChoice];
    choiceMap = [(DeviceRestoreChoiceController *)selfCopy choiceMap];
    [(NSMutableDictionary *)choiceMap setObject:cloudRestoreChoice2 forKeyedSubscript:@"restoreFromiCloudBackup"];

    networkProvider = [(DeviceRestoreChoiceController *)selfCopy networkProvider];
    v104 = [BuddyRestoreNetworkAlertController alertControllerForUnsupportedNetworkWithCellularRestoreSupport:[(BuddyNetworkProvider *)networkProvider deviceSupportsCellularRestore]];

    objc_initWeak(&location, selfCopy);
    v97 = _NSConcreteStackBlock;
    v98 = -1073741824;
    v99 = 0;
    v100 = sub_10011336C;
    v101 = &unk_10032AF58;
    objc_copyWeak(&v102, &location);
    [v104 setPresentWiFiSettings:&v97];
    cloudRestoreChoice3 = [(DeviceRestoreChoiceController *)selfCopy cloudRestoreChoice];
    v14 = v104;
    v91 = _NSConcreteStackBlock;
    v92 = -1073741824;
    v93 = 0;
    v94 = sub_100113410;
    v95 = &unk_10032B178;
    objc_copyWeak(&v96, &location);
    [(BuddyChoice *)cloudRestoreChoice3 setConfirmationAlert:v14 condition:&v91];

    v15 = v106;
    cloudRestoreChoice4 = [(DeviceRestoreChoiceController *)selfCopy cloudRestoreChoice];
    [v15 addObject:cloudRestoreChoice4];

    objc_destroyWeak(&v96);
    objc_destroyWeak(&v102);
    objc_destroyWeak(&location);
    objc_storeStrong(&v104, 0);
  }

  if (+[BuddyMigrationCapability currentDeviceShouldOfferMigration]&& (v107 & 1) == 0)
  {
    v17 = [BuddyChoice alloc];
    v18 = +[NSBundle mainBundle];
    v19 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"TRANSFER_DIRECTLY"];
    v20 = [(NSBundle *)v18 localizedStringForKey:v19 value:&stru_10032F900 table:@"Localizable"];
    v21 = [(BuddyChoice *)v17 initWithTitle:v20 nextItemClass:0];
    [(DeviceRestoreChoiceController *)selfCopy setMigrateFromiOSChoice:v21];

    v90 = @"apps.iphone";
    deviceProvider = [(DeviceRestoreChoiceController *)selfCopy deviceProvider];
    LOBYTE(v21) = [(BYDeviceProvider *)deviceProvider type]== 1;

    if (v21)
    {
      objc_storeStrong(&v90, @"apps.ipad");
    }

    v23 = v90;
    migrateFromiOSChoice = [(DeviceRestoreChoiceController *)selfCopy migrateFromiOSChoice];
    [(BuddyChoice *)migrateFromiOSChoice setSymbolName:v23];

    migrateFromiOSChoice2 = [(DeviceRestoreChoiceController *)selfCopy migrateFromiOSChoice];
    choiceMap2 = [(DeviceRestoreChoiceController *)selfCopy choiceMap];
    [(NSMutableDictionary *)choiceMap2 setObject:migrateFromiOSChoice2 forKeyedSubscript:@"migrateFromiOS"];

    v27 = v106;
    migrateFromiOSChoice3 = [(DeviceRestoreChoiceController *)selfCopy migrateFromiOSChoice];
    [v27 addObject:migrateFromiOSChoice3];

    objc_storeStrong(&v90, 0);
  }

  enrollmentCoordinator = [(DeviceRestoreChoiceController *)selfCopy enrollmentCoordinator];
  v30 = [(BuddyEnrollmentCoordinator *)enrollmentCoordinator mdmEnrollmentChannel]== 2;

  v89 = v30;
  v31 = 0;
  if (!v30)
  {
    v31 = v107 ^ 1;
  }

  v88 = v31 & 1;
  if (v31)
  {
    v32 = [BuddyChoice alloc];
    v33 = +[NSBundle mainBundle];
    v34 = [(NSBundle *)v33 localizedStringForKey:@"RESTORE_FROM_MAC_OR_PC" value:&stru_10032F900 table:@"Localizable"];
    v35 = [(BuddyChoice *)v32 initWithTitle:v34 nextItemClass:objc_opt_class()];
    [(DeviceRestoreChoiceController *)selfCopy setITunesRestoreChoice:v35];

    iTunesRestoreChoice = [(DeviceRestoreChoiceController *)selfCopy iTunesRestoreChoice];
    [(BuddyChoice *)iTunesRestoreChoice setSymbolName:@"macbook"];

    v37 = [UIImageSymbolConfiguration configurationWithPointSize:14.5];
    iTunesRestoreChoice2 = [(DeviceRestoreChoiceController *)selfCopy iTunesRestoreChoice];
    [(BuddyChoice *)iTunesRestoreChoice2 setSymbolConfiguration:v37];

    iTunesRestoreChoice3 = [(DeviceRestoreChoiceController *)selfCopy iTunesRestoreChoice];
    choiceMap3 = [(DeviceRestoreChoiceController *)selfCopy choiceMap];
    [(NSMutableDictionary *)choiceMap3 setObject:iTunesRestoreChoice3 forKeyedSubscript:@"restoreFromiTunesBackup"];

    v41 = +[NSBundle mainBundle];
    v42 = [(NSBundle *)v41 localizedStringForKey:@"RESTORE_FROM_ITUNES_VERSION_WARNING_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v43 = +[NSBundle mainBundle];
    v44 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"RESTORE_FROM_ITUNES_VERSION_WARNING_MESSAGE"];
    v45 = [(NSBundle *)v43 localizedStringForKey:v44 value:&stru_10032F900 table:@"Localizable"];
    v87 = [UIAlertController alertControllerWithTitle:v42 message:v45 preferredStyle:1];

    iTunesRestoreChoice4 = [(DeviceRestoreChoiceController *)selfCopy iTunesRestoreChoice];
    v47 = +[NSBundle mainBundle];
    v48 = [(NSBundle *)v47 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
    v49 = [(BuddyChoice *)iTunesRestoreChoice4 confirmationAcceptActionWithTitle:v48 style:0 action:0];
    [v87 addAction:v49];

    iTunesRestoreChoice5 = [(DeviceRestoreChoiceController *)selfCopy iTunesRestoreChoice];
    v51 = +[NSBundle mainBundle];
    v52 = [(NSBundle *)v51 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
    v53 = [(BuddyChoice *)iTunesRestoreChoice5 confirmationCancelActionWithTitle:v52 style:1 action:0];
    [v87 addAction:v53];

    proximitySetupController = [(DeviceRestoreChoiceController *)selfCopy proximitySetupController];
    iTunesRestoreChoice6 = [(DeviceRestoreChoiceController *)selfCopy iTunesRestoreChoice];
    v80 = _NSConcreteStackBlock;
    v81 = -1073741824;
    v82 = 0;
    v83 = sub_100113480;
    v84 = &unk_10032CEB0;
    v85 = proximitySetupController;
    [(BuddyChoice *)iTunesRestoreChoice6 setConfirmationAlert:v87 condition:&v80];

    v55 = v106;
    iTunesRestoreChoice7 = [(DeviceRestoreChoiceController *)selfCopy iTunesRestoreChoice];
    [v55 addObject:iTunesRestoreChoice7];

    objc_storeStrong(&v85, 0);
    objc_storeStrong(&proximitySetupController, 0);
    objc_storeStrong(&v87, 0);
  }

  if (+[BuddyMoveFromAndroidController showMoveFromAndroidRestoreChoice]&& !v89)
  {
    v57 = [BuddyChoice alloc];
    v58 = +[NSBundle mainBundle];
    v59 = [(NSBundle *)v58 localizedStringForKey:@"MIGRATE_FROM_ANDROID_DEVICE" value:&stru_10032F900 table:@"Localizable"];
    v60 = [(BuddyChoice *)v57 initWithTitle:v59 nextItemClass:objc_opt_class()];
    [(DeviceRestoreChoiceController *)selfCopy setMigrateFromAndroidChoice:v60];

    migrateFromAndroidChoice = [(DeviceRestoreChoiceController *)selfCopy migrateFromAndroidChoice];
    [(BuddyChoice *)migrateFromAndroidChoice setSymbolName:@"smartphone"];

    migrateFromAndroidChoice2 = [(DeviceRestoreChoiceController *)selfCopy migrateFromAndroidChoice];
    choiceMap4 = [(DeviceRestoreChoiceController *)selfCopy choiceMap];
    [(NSMutableDictionary *)choiceMap4 setObject:migrateFromAndroidChoice2 forKeyedSubscript:@"migrateFromAndroid"];

    v64 = v106;
    migrateFromAndroidChoice3 = [(DeviceRestoreChoiceController *)selfCopy migrateFromAndroidChoice];
    [v64 addObject:migrateFromAndroidChoice3];
  }

  v66 = [BuddyChoice alloc];
  v67 = +[NSBundle mainBundle];
  v68 = [(NSBundle *)v67 localizedStringForKey:@"DONT_TRANSFER_APPS_DATA" value:&stru_10032F900 table:@"Localizable"];
  v69 = [(BuddyChoice *)v66 initWithTitle:v68 nextItemClass:0];
  [(DeviceRestoreChoiceController *)selfCopy setSetUpAsNewChoice:v69];

  v79 = @"iphone.on.rectangle.portrait.dashed.slash";
  deviceProvider2 = [(DeviceRestoreChoiceController *)selfCopy deviceProvider];
  LOBYTE(v69) = [(BYDeviceProvider *)deviceProvider2 type]== 1;

  if (v69)
  {
    objc_storeStrong(&v79, @"ipad.on.rectangle.portrait.dashed.slash");
  }

  v71 = v79;
  setUpAsNewChoice = [(DeviceRestoreChoiceController *)selfCopy setUpAsNewChoice];
  [(BuddyChoice *)setUpAsNewChoice setSymbolName:v71];

  setUpAsNewChoice2 = [(DeviceRestoreChoiceController *)selfCopy setUpAsNewChoice];
  choiceMap5 = [(DeviceRestoreChoiceController *)selfCopy choiceMap];
  [(NSMutableDictionary *)choiceMap5 setObject:setUpAsNewChoice2 forKeyedSubscript:@"setUpAsNew"];

  choiceManager = [(DeviceRestoreChoiceController *)selfCopy choiceManager];
  v111[0] = v106;
  setUpAsNewChoice3 = [(DeviceRestoreChoiceController *)selfCopy setUpAsNewChoice];
  v110 = setUpAsNewChoice3;
  v77 = [NSArray arrayWithObjects:&v110 count:1];
  v111[1] = v77;
  v78 = [NSArray arrayWithObjects:v111 count:2];
  [(BuddyTableChoiceManager *)choiceManager setChoices:v78];

  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v106, 0);
}

- (void)didSelectChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v3 = location[0];
  migrateFromiOSChoice = [(DeviceRestoreChoiceController *)selfCopy migrateFromiOSChoice];

  if (v3 == migrateFromiOSChoice)
  {
    [(DeviceRestoreChoiceController *)selfCopy _migrateFromiOSSelected];
  }

  else
  {
    v5 = location[0];
    cloudRestoreChoice = [(DeviceRestoreChoiceController *)selfCopy cloudRestoreChoice];

    if (v5 == cloudRestoreChoice)
    {
      setupMethod = [(DeviceRestoreChoiceController *)selfCopy setupMethod];
      [(BuddySetupMethod *)setupMethod setIntendedDataTransferMethod:1];
    }

    else
    {
      v8 = location[0];
      setUpAsNewChoice = [(DeviceRestoreChoiceController *)selfCopy setUpAsNewChoice];

      if (v8 == setUpAsNewChoice)
      {
        setupMethod2 = [(DeviceRestoreChoiceController *)selfCopy setupMethod];
        [(BuddySetupMethod *)setupMethod2 setDataTransferMethod:0];
      }

      pendingRestoreState = [(DeviceRestoreChoiceController *)selfCopy pendingRestoreState];
      [(BuddyPendingRestoreState *)pendingRestoreState clearBackupItem];
    }

    buddyPreferences = [(DeviceRestoreChoiceController *)selfCopy buddyPreferences];
    [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"RestoreChoice"];

    delegate = [(DeviceRestoreChoiceController *)selfCopy delegate];
    -[BFFFlowItemDelegate flowItemDone:nextItemClass:](delegate, "flowItemDone:nextItemClass:", selfCopy, [location[0] nextControllerClass]);
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v5 viewWillAppear:appear];
  if ([(DeviceRestoreChoiceController *)selfCopy _useCompactMode])
  {
    choiceManager = [(DeviceRestoreChoiceController *)selfCopy choiceManager];
    [(BuddyTableChoiceManager *)choiceManager setFixedRowHeight:44.0];
  }

  else
  {
    choiceManager = [(DeviceRestoreChoiceController *)selfCopy choiceManager];
    [(BuddyTableChoiceManager *)choiceManager setFixedRowHeight:52.0];
  }

  choiceTable = [(DeviceRestoreChoiceController *)selfCopy choiceTable];
  [(UITableView *)choiceTable reloadData];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v3 viewDidAppear:appear];
  [(DeviceRestoreChoiceController *)selfCopy flowItemDidAppear:appearCopy];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v14 viewDidLoad];
  [(DeviceRestoreChoiceController *)selfCopy _populateRestoreChoices];
  choiceTable = [(DeviceRestoreChoiceController *)selfCopy choiceTable];
  [(UITableView *)choiceTable setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = selfCopy;
  choiceTable2 = [(DeviceRestoreChoiceController *)selfCopy choiceTable];
  [(DeviceRestoreChoiceController *)v3 setTableView:choiceTable2];

  choiceTable3 = [(DeviceRestoreChoiceController *)selfCopy choiceTable];
  [(UITableView *)choiceTable3 reloadData];

  choiceTable4 = [(DeviceRestoreChoiceController *)selfCopy choiceTable];
  [(UITableView *)choiceTable4 layoutIfNeeded];

  choiceTable5 = [(DeviceRestoreChoiceController *)selfCopy choiceTable];
  heightAnchor = [(UITableView *)choiceTable5 heightAnchor];
  choiceTable6 = [(DeviceRestoreChoiceController *)selfCopy choiceTable];
  [(UITableView *)choiceTable6 contentSize];
  v12 = [heightAnchor constraintEqualToConstant:{v11, v10, *&v11}];
  [(DeviceRestoreChoiceController *)selfCopy setTableHeightAnchor:v12];

  tableHeightAnchor = [(DeviceRestoreChoiceController *)selfCopy tableHeightAnchor];
  [(NSLayoutConstraint *)tableHeightAnchor setActive:1];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v12 = a2;
  tableView = [(DeviceRestoreChoiceController *)self tableView];
  [tableView reloadData];

  view = [(DeviceRestoreChoiceController *)selfCopy view];
  [view layoutIfNeeded];

  tableView2 = [(DeviceRestoreChoiceController *)selfCopy tableView];
  [tableView2 contentSize];
  v10 = v5;
  v11 = v6;
  v7 = v6;
  tableHeightAnchor = [(DeviceRestoreChoiceController *)selfCopy tableHeightAnchor];
  [(NSLayoutConstraint *)tableHeightAnchor setConstant:v7];

  v9.receiver = selfCopy;
  v9.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v9 viewDidLayoutSubviews];
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v8.receiver = selfCopy;
  v8.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v8 traitCollectionDidChange:location[0]];
  choiceTable = [(DeviceRestoreChoiceController *)selfCopy choiceTable];
  [(UITableView *)choiceTable layoutIfNeeded];

  choiceTable2 = [(DeviceRestoreChoiceController *)selfCopy choiceTable];
  [(UITableView *)choiceTable2 contentSize];
  v6 = v5;
  tableHeightAnchor = [(DeviceRestoreChoiceController *)selfCopy tableHeightAnchor];
  [(NSLayoutConstraint *)tableHeightAnchor setConstant:v6];

  objc_storeStrong(location, 0);
}

- (void)selectChoiceForIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  choiceMap = [(DeviceRestoreChoiceController *)selfCopy choiceMap];
  v4 = [(NSMutableDictionary *)choiceMap objectForKey:location[0]];

  if (v4)
  {
    v5 = selfCopy;
    choiceMap2 = [(DeviceRestoreChoiceController *)selfCopy choiceMap];
    v7 = [(NSMutableDictionary *)choiceMap2 objectForKeyedSubscript:location[0]];
    [(DeviceRestoreChoiceController *)v5 didSelectChoice:v7];
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100078180(buf, selfCopy, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@ cannot finish with controller identifier choice %@", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_migrateFromiOSSelected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "User wants to migrate from another iOS device", buf, 2u);
  }

  objc_storeStrong(location, 0);
  view = [(DeviceRestoreChoiceController *)selfCopy view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:selfCopy identifier:@"com.apple.buddy.migrateFromiOSChoice.spinner"];
  v6 = +[BuddyAccountTools sharedBuddyAccountTools];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100113F38;
  v11 = &unk_10032BAE8;
  v12 = selfCopy;
  [v6 removeAccountsCreatedByProximityWithCompletion:&v7];

  objc_storeStrong(&v12, 0);
}

- (BOOL)_useCompactMode
{
  view = [(DeviceRestoreChoiceController *)self view];
  [view bounds];
  v4 = v3 < 760.0;

  return v4;
}

- (void)flowItemDidAppear:(BOOL)appear
{
  buddyPreferences = [(DeviceRestoreChoiceController *)self buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanFalse forKey:@"RestoreChoice"];
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v10 = 0;
  objc_storeStrong(&v10, path);
  choiceManager = [(DeviceRestoreChoiceController *)selfCopy choiceManager];
  tableViewDelegate = [(BuddyTableChoiceManager *)choiceManager tableViewDelegate];
  [tableViewDelegate tableView:location[0] estimatedHeightForRowAtIndexPath:v10];
  v8 = v7;

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v10 = 0;
  objc_storeStrong(&v10, path);
  choiceManager = [(DeviceRestoreChoiceController *)selfCopy choiceManager];
  tableViewDelegate = [(BuddyTableChoiceManager *)choiceManager tableViewDelegate];
  [tableViewDelegate tableView:location[0] heightForRowAtIndexPath:v10];
  v8 = v7;

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = 0;
  objc_storeStrong(&v7, path);
  choiceManager = [(DeviceRestoreChoiceController *)selfCopy choiceManager];
  tableViewDelegate = [(BuddyTableChoiceManager *)choiceManager tableViewDelegate];
  [tableViewDelegate tableView:location[0] didSelectRowAtIndexPath:v7];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if ([(DeviceRestoreChoiceController *)selfCopy _useCompactMode])
  {
    v7 = 10.0;
  }

  else
  {
    v7 = UITableViewAutomaticDimension;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if ([(DeviceRestoreChoiceController *)selfCopy _useCompactMode])
  {
    v7 = 0.0;
  }

  else
  {
    v7 = UITableViewAutomaticDimension;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)proximitySetupCompleted:(id)completed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completed);
  v14 = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v14;
    v4 = v13;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Proximity connection terminated successfully. Popping to QuickStart!", buf, 2u);
  }

  objc_storeStrong(&v14, 0);
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10011577C;
  v10 = &unk_10032B0D0;
  v11 = selfCopy;
  dispatch_async(v5, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)connectionTerminated
{
  oslog[2] = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "DeviceRestoreChoiceController connection terminated", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
}

- (void)_invalidatePendingProximityFinishSetupRequest
{
  proximitySetupController = [(DeviceRestoreChoiceController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController removeObserver:self];
}

@end