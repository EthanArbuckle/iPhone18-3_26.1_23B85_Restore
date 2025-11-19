@interface DeviceRestoreChoiceController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_useCompactMode;
- (BOOL)controllerNeedsToRun;
- (DeviceRestoreChoiceController)init;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_invalidatePendingProximityFinishSetupRequest;
- (void)_migrateFromiOSSelected;
- (void)_populateRestoreChoices;
- (void)connectionTerminated;
- (void)didSelectChoice:(id)a3;
- (void)flowItemDidAppear:(BOOL)a3;
- (void)proximitySetupCompleted:(id)a3;
- (void)selectChoiceForIdentifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DeviceRestoreChoiceController

- (DeviceRestoreChoiceController)init
{
  v33 = self;
  location[1] = a2;
  location[0] = @"iphone.on.rectangle.portrait.dashed";
  v2 = +[UIDevice currentDevice];
  v3 = [(UIDevice *)v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    objc_storeStrong(location, @"apps.ipad.on.rectangle.portrait.dashed");
  }

  v4 = +[NSBundle mainBundle];
  v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_RESTORE_APPS_DATA"];
  v31 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];

  v6 = v33;
  v7 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v7 localizedStringForKey:@"DEVICE_RESTORE_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  v33 = 0;
  v30.receiver = v6;
  v30.super_class = DeviceRestoreChoiceController;
  v33 = [(DeviceRestoreChoiceController *)&v30 initWithTitle:v31 detailText:v8 symbolName:location[0] adoptTableViewScrollView:1];
  objc_storeStrong(&v33, v33);

  if (v33)
  {
    v9 = [BuddyTableChoiceManager alloc];
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_100111A70;
    v28 = &unk_10032D060;
    v29 = v33;
    v10 = [(BuddyTableChoiceManager *)v9 initWithCellConstructor:&v24 allowManualRowHeight:1];
    v11 = *(v33 + 19);
    *(v33 + 19) = v10;

    [*(v33 + 19) setChooseableDelegate:?];
    v12 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v13 = *(v33 + 21);
    *(v33 + 21) = v12;

    v14 = [*(v33 + 19) tableViewDelegate];
    [*(v33 + 21) setDelegate:v14];

    v15 = [*(v33 + 19) tableViewDataSource];
    [*(v33 + 21) setDataSource:v15];

    [*(v33 + 21) setEstimatedRowHeight:0.0];
    v23 = sub_100111EBC();
    [*(v33 + 21) setDirectionalLayoutMargins:{v23, v16, v17, v18, *&v23, *&v16, *&v17, *&v18}];
    v19 = +[NSMutableDictionary dictionary];
    v20 = *(v33 + 22);
    *(v33 + 22) = v19;

    objc_storeStrong(&v29, 0);
  }

  v21 = v33;
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v33, 0);
  return v21;
}

- (BOOL)controllerNeedsToRun
{
  v24 = self;
  v23 = a2;
  v2 = [(DeviceRestoreChoiceController *)self suspendTask];
  [(BuddySuspendTask *)v2 preheat];

  v3 = [(DeviceRestoreChoiceController *)v24 buddyPreferencesExcludedFromBackup];
  v4 = [(DeviceRestoreChoiceController *)v24 runState];
  v5 = [BuddyMigrationStateProvider validateAndResolveMigrationStateUsingPreferences:v3 didCompleteInitialRun:[(BYRunState *)v4 hasCompletedInitialRun]& 1];
  LOBYTE(v2) = v5 != 0;

  v22 = v2 & 1;
  if (v2)
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
    v8 = [(DeviceRestoreChoiceController *)v24 buddyPreferences];
    v9 = [(BYPreferencesController *)v8 BOOLForKey:@"RestoreChoice"];

    v18 = v9 & 1;
    v17 = BYSetupAssistantHasCompletedInitialRun() & 1;
    v10 = [(DeviceRestoreChoiceController *)v24 buddyPreferences];
    v11 = [(BYPreferencesController *)v10 BOOLForKey:BYBuddyDoneKey];

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
  v109 = self;
  v108 = a2;
  v2 = [(DeviceRestoreChoiceController *)self flowItemDispositionProvider];
  v3 = ([(BuddyFlowItemDispositionProvider *)v2 dispositions]>> 4) & 1;

  v107 = v3 & 1;
  v106 = +[NSMutableArray array];
  v4 = [(DeviceRestoreChoiceController *)v109 managedConfiguration];
  LOBYTE(v3) = [(MCProfileConnection *)v4 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed]!= 2;

  v105 = v3 & 1;
  if (v3)
  {
    v5 = [BuddyChoice alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"RESTORE_FROM_OTA_BACKUP" value:&stru_10032F900 table:@"Localizable"];
    v8 = [(BuddyChoice *)v5 initWithTitle:v7 nextItemClass:0];
    [(DeviceRestoreChoiceController *)v109 setCloudRestoreChoice:v8];

    v9 = [(DeviceRestoreChoiceController *)v109 cloudRestoreChoice];
    [(BuddyChoice *)v9 setSymbolName:@"icloud"];

    v10 = [(DeviceRestoreChoiceController *)v109 cloudRestoreChoice];
    v11 = [(DeviceRestoreChoiceController *)v109 choiceMap];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:@"restoreFromiCloudBackup"];

    v12 = [(DeviceRestoreChoiceController *)v109 networkProvider];
    v104 = [BuddyRestoreNetworkAlertController alertControllerForUnsupportedNetworkWithCellularRestoreSupport:[(BuddyNetworkProvider *)v12 deviceSupportsCellularRestore]];

    objc_initWeak(&location, v109);
    v97 = _NSConcreteStackBlock;
    v98 = -1073741824;
    v99 = 0;
    v100 = sub_10011336C;
    v101 = &unk_10032AF58;
    objc_copyWeak(&v102, &location);
    [v104 setPresentWiFiSettings:&v97];
    v13 = [(DeviceRestoreChoiceController *)v109 cloudRestoreChoice];
    v14 = v104;
    v91 = _NSConcreteStackBlock;
    v92 = -1073741824;
    v93 = 0;
    v94 = sub_100113410;
    v95 = &unk_10032B178;
    objc_copyWeak(&v96, &location);
    [(BuddyChoice *)v13 setConfirmationAlert:v14 condition:&v91];

    v15 = v106;
    v16 = [(DeviceRestoreChoiceController *)v109 cloudRestoreChoice];
    [v15 addObject:v16];

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
    [(DeviceRestoreChoiceController *)v109 setMigrateFromiOSChoice:v21];

    v90 = @"apps.iphone";
    v22 = [(DeviceRestoreChoiceController *)v109 deviceProvider];
    LOBYTE(v21) = [(BYDeviceProvider *)v22 type]== 1;

    if (v21)
    {
      objc_storeStrong(&v90, @"apps.ipad");
    }

    v23 = v90;
    v24 = [(DeviceRestoreChoiceController *)v109 migrateFromiOSChoice];
    [(BuddyChoice *)v24 setSymbolName:v23];

    v25 = [(DeviceRestoreChoiceController *)v109 migrateFromiOSChoice];
    v26 = [(DeviceRestoreChoiceController *)v109 choiceMap];
    [(NSMutableDictionary *)v26 setObject:v25 forKeyedSubscript:@"migrateFromiOS"];

    v27 = v106;
    v28 = [(DeviceRestoreChoiceController *)v109 migrateFromiOSChoice];
    [v27 addObject:v28];

    objc_storeStrong(&v90, 0);
  }

  v29 = [(DeviceRestoreChoiceController *)v109 enrollmentCoordinator];
  v30 = [(BuddyEnrollmentCoordinator *)v29 mdmEnrollmentChannel]== 2;

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
    [(DeviceRestoreChoiceController *)v109 setITunesRestoreChoice:v35];

    v36 = [(DeviceRestoreChoiceController *)v109 iTunesRestoreChoice];
    [(BuddyChoice *)v36 setSymbolName:@"macbook"];

    v37 = [UIImageSymbolConfiguration configurationWithPointSize:14.5];
    v38 = [(DeviceRestoreChoiceController *)v109 iTunesRestoreChoice];
    [(BuddyChoice *)v38 setSymbolConfiguration:v37];

    v39 = [(DeviceRestoreChoiceController *)v109 iTunesRestoreChoice];
    v40 = [(DeviceRestoreChoiceController *)v109 choiceMap];
    [(NSMutableDictionary *)v40 setObject:v39 forKeyedSubscript:@"restoreFromiTunesBackup"];

    v41 = +[NSBundle mainBundle];
    v42 = [(NSBundle *)v41 localizedStringForKey:@"RESTORE_FROM_ITUNES_VERSION_WARNING_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v43 = +[NSBundle mainBundle];
    v44 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"RESTORE_FROM_ITUNES_VERSION_WARNING_MESSAGE"];
    v45 = [(NSBundle *)v43 localizedStringForKey:v44 value:&stru_10032F900 table:@"Localizable"];
    v87 = [UIAlertController alertControllerWithTitle:v42 message:v45 preferredStyle:1];

    v46 = [(DeviceRestoreChoiceController *)v109 iTunesRestoreChoice];
    v47 = +[NSBundle mainBundle];
    v48 = [(NSBundle *)v47 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
    v49 = [(BuddyChoice *)v46 confirmationAcceptActionWithTitle:v48 style:0 action:0];
    [v87 addAction:v49];

    v50 = [(DeviceRestoreChoiceController *)v109 iTunesRestoreChoice];
    v51 = +[NSBundle mainBundle];
    v52 = [(NSBundle *)v51 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
    v53 = [(BuddyChoice *)v50 confirmationCancelActionWithTitle:v52 style:1 action:0];
    [v87 addAction:v53];

    v86 = [(DeviceRestoreChoiceController *)v109 proximitySetupController];
    v54 = [(DeviceRestoreChoiceController *)v109 iTunesRestoreChoice];
    v80 = _NSConcreteStackBlock;
    v81 = -1073741824;
    v82 = 0;
    v83 = sub_100113480;
    v84 = &unk_10032CEB0;
    v85 = v86;
    [(BuddyChoice *)v54 setConfirmationAlert:v87 condition:&v80];

    v55 = v106;
    v56 = [(DeviceRestoreChoiceController *)v109 iTunesRestoreChoice];
    [v55 addObject:v56];

    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v87, 0);
  }

  if (+[BuddyMoveFromAndroidController showMoveFromAndroidRestoreChoice]&& !v89)
  {
    v57 = [BuddyChoice alloc];
    v58 = +[NSBundle mainBundle];
    v59 = [(NSBundle *)v58 localizedStringForKey:@"MIGRATE_FROM_ANDROID_DEVICE" value:&stru_10032F900 table:@"Localizable"];
    v60 = [(BuddyChoice *)v57 initWithTitle:v59 nextItemClass:objc_opt_class()];
    [(DeviceRestoreChoiceController *)v109 setMigrateFromAndroidChoice:v60];

    v61 = [(DeviceRestoreChoiceController *)v109 migrateFromAndroidChoice];
    [(BuddyChoice *)v61 setSymbolName:@"smartphone"];

    v62 = [(DeviceRestoreChoiceController *)v109 migrateFromAndroidChoice];
    v63 = [(DeviceRestoreChoiceController *)v109 choiceMap];
    [(NSMutableDictionary *)v63 setObject:v62 forKeyedSubscript:@"migrateFromAndroid"];

    v64 = v106;
    v65 = [(DeviceRestoreChoiceController *)v109 migrateFromAndroidChoice];
    [v64 addObject:v65];
  }

  v66 = [BuddyChoice alloc];
  v67 = +[NSBundle mainBundle];
  v68 = [(NSBundle *)v67 localizedStringForKey:@"DONT_TRANSFER_APPS_DATA" value:&stru_10032F900 table:@"Localizable"];
  v69 = [(BuddyChoice *)v66 initWithTitle:v68 nextItemClass:0];
  [(DeviceRestoreChoiceController *)v109 setSetUpAsNewChoice:v69];

  v79 = @"iphone.on.rectangle.portrait.dashed.slash";
  v70 = [(DeviceRestoreChoiceController *)v109 deviceProvider];
  LOBYTE(v69) = [(BYDeviceProvider *)v70 type]== 1;

  if (v69)
  {
    objc_storeStrong(&v79, @"ipad.on.rectangle.portrait.dashed.slash");
  }

  v71 = v79;
  v72 = [(DeviceRestoreChoiceController *)v109 setUpAsNewChoice];
  [(BuddyChoice *)v72 setSymbolName:v71];

  v73 = [(DeviceRestoreChoiceController *)v109 setUpAsNewChoice];
  v74 = [(DeviceRestoreChoiceController *)v109 choiceMap];
  [(NSMutableDictionary *)v74 setObject:v73 forKeyedSubscript:@"setUpAsNew"];

  v75 = [(DeviceRestoreChoiceController *)v109 choiceManager];
  v111[0] = v106;
  v76 = [(DeviceRestoreChoiceController *)v109 setUpAsNewChoice];
  v110 = v76;
  v77 = [NSArray arrayWithObjects:&v110 count:1];
  v111[1] = v77;
  v78 = [NSArray arrayWithObjects:v111 count:2];
  [(BuddyTableChoiceManager *)v75 setChoices:v78];

  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v106, 0);
}

- (void)didSelectChoice:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(DeviceRestoreChoiceController *)v15 migrateFromiOSChoice];

  if (v3 == v4)
  {
    [(DeviceRestoreChoiceController *)v15 _migrateFromiOSSelected];
  }

  else
  {
    v5 = location[0];
    v6 = [(DeviceRestoreChoiceController *)v15 cloudRestoreChoice];

    if (v5 == v6)
    {
      v7 = [(DeviceRestoreChoiceController *)v15 setupMethod];
      [(BuddySetupMethod *)v7 setIntendedDataTransferMethod:1];
    }

    else
    {
      v8 = location[0];
      v9 = [(DeviceRestoreChoiceController *)v15 setUpAsNewChoice];

      if (v8 == v9)
      {
        v10 = [(DeviceRestoreChoiceController *)v15 setupMethod];
        [(BuddySetupMethod *)v10 setDataTransferMethod:0];
      }

      v11 = [(DeviceRestoreChoiceController *)v15 pendingRestoreState];
      [(BuddyPendingRestoreState *)v11 clearBackupItem];
    }

    v12 = [(DeviceRestoreChoiceController *)v15 buddyPreferences];
    [(BYPreferencesController *)v12 setObject:&__kCFBooleanTrue forKey:@"RestoreChoice"];

    v13 = [(DeviceRestoreChoiceController *)v15 delegate];
    -[BFFFlowItemDelegate flowItemDone:nextItemClass:](v13, "flowItemDone:nextItemClass:", v15, [location[0] nextControllerClass]);
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v5 viewWillAppear:a3];
  if ([(DeviceRestoreChoiceController *)v8 _useCompactMode])
  {
    v3 = [(DeviceRestoreChoiceController *)v8 choiceManager];
    [(BuddyTableChoiceManager *)v3 setFixedRowHeight:44.0];
  }

  else
  {
    v3 = [(DeviceRestoreChoiceController *)v8 choiceManager];
    [(BuddyTableChoiceManager *)v3 setFixedRowHeight:52.0];
  }

  v4 = [(DeviceRestoreChoiceController *)v8 choiceTable];
  [(UITableView *)v4 reloadData];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v3 viewDidAppear:a3];
  [(DeviceRestoreChoiceController *)v6 flowItemDidAppear:v4];
}

- (void)viewDidLoad
{
  v16 = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v14 viewDidLoad];
  [(DeviceRestoreChoiceController *)v16 _populateRestoreChoices];
  v2 = [(DeviceRestoreChoiceController *)v16 choiceTable];
  [(UITableView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = v16;
  v4 = [(DeviceRestoreChoiceController *)v16 choiceTable];
  [(DeviceRestoreChoiceController *)v3 setTableView:v4];

  v5 = [(DeviceRestoreChoiceController *)v16 choiceTable];
  [(UITableView *)v5 reloadData];

  v6 = [(DeviceRestoreChoiceController *)v16 choiceTable];
  [(UITableView *)v6 layoutIfNeeded];

  v7 = [(DeviceRestoreChoiceController *)v16 choiceTable];
  v8 = [(UITableView *)v7 heightAnchor];
  v9 = [(DeviceRestoreChoiceController *)v16 choiceTable];
  [(UITableView *)v9 contentSize];
  v12 = [v8 constraintEqualToConstant:{v11, v10, *&v11}];
  [(DeviceRestoreChoiceController *)v16 setTableHeightAnchor:v12];

  v13 = [(DeviceRestoreChoiceController *)v16 tableHeightAnchor];
  [(NSLayoutConstraint *)v13 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  v13 = self;
  v12 = a2;
  v2 = [(DeviceRestoreChoiceController *)self tableView];
  [v2 reloadData];

  v3 = [(DeviceRestoreChoiceController *)v13 view];
  [v3 layoutIfNeeded];

  v4 = [(DeviceRestoreChoiceController *)v13 tableView];
  [v4 contentSize];
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = [(DeviceRestoreChoiceController *)v13 tableHeightAnchor];
  [(NSLayoutConstraint *)v8 setConstant:v7];

  v9.receiver = v13;
  v9.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v9 viewDidLayoutSubviews];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8.receiver = v10;
  v8.super_class = DeviceRestoreChoiceController;
  [(DeviceRestoreChoiceController *)&v8 traitCollectionDidChange:location[0]];
  v3 = [(DeviceRestoreChoiceController *)v10 choiceTable];
  [(UITableView *)v3 layoutIfNeeded];

  v4 = [(DeviceRestoreChoiceController *)v10 choiceTable];
  [(UITableView *)v4 contentSize];
  v6 = v5;
  v7 = [(DeviceRestoreChoiceController *)v10 tableHeightAnchor];
  [(NSLayoutConstraint *)v7 setConstant:v6];

  objc_storeStrong(location, 0);
}

- (void)selectChoiceForIdentifier:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(DeviceRestoreChoiceController *)v10 choiceMap];
  v4 = [(NSMutableDictionary *)v3 objectForKey:location[0]];

  if (v4)
  {
    v5 = v10;
    v6 = [(DeviceRestoreChoiceController *)v10 choiceMap];
    v7 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:location[0]];
    [(DeviceRestoreChoiceController *)v5 didSelectChoice:v7];
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100078180(buf, v10, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@ cannot finish with controller identifier choice %@", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_migrateFromiOSSelected
{
  v16 = self;
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
  v4 = [(DeviceRestoreChoiceController *)v16 view];
  v5 = [v4 window];
  [v5 setUserInteractionEnabled:0];

  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v16 identifier:@"com.apple.buddy.migrateFromiOSChoice.spinner"];
  v6 = +[BuddyAccountTools sharedBuddyAccountTools];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100113F38;
  v11 = &unk_10032BAE8;
  v12 = v16;
  [v6 removeAccountsCreatedByProximityWithCompletion:&v7];

  objc_storeStrong(&v12, 0);
}

- (BOOL)_useCompactMode
{
  v2 = [(DeviceRestoreChoiceController *)self view];
  [v2 bounds];
  v4 = v3 < 760.0;

  return v4;
}

- (void)flowItemDidAppear:(BOOL)a3
{
  v3 = [(DeviceRestoreChoiceController *)self buddyPreferences];
  [(BYPreferencesController *)v3 setObject:&__kCFBooleanFalse forKey:@"RestoreChoice"];
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v5 = [(DeviceRestoreChoiceController *)v12 choiceManager];
  v6 = [(BuddyTableChoiceManager *)v5 tableViewDelegate];
  [v6 tableView:location[0] estimatedHeightForRowAtIndexPath:v10];
  v8 = v7;

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v5 = [(DeviceRestoreChoiceController *)v12 choiceManager];
  v6 = [(BuddyTableChoiceManager *)v5 tableViewDelegate];
  [v6 tableView:location[0] heightForRowAtIndexPath:v10];
  v8 = v7;

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = [(DeviceRestoreChoiceController *)v9 choiceManager];
  v6 = [(BuddyTableChoiceManager *)v5 tableViewDelegate];
  [v6 tableView:location[0] didSelectRowAtIndexPath:v7];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(DeviceRestoreChoiceController *)v6 _useCompactMode])
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(DeviceRestoreChoiceController *)v6 _useCompactMode])
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

- (void)proximitySetupCompleted:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v11 = v16;
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
  v2 = [(DeviceRestoreChoiceController *)self proximitySetupController];
  [(ProximitySetupController *)v2 removeObserver:self];
}

@end