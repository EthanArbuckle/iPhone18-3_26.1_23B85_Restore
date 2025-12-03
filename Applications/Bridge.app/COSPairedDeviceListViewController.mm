@interface COSPairedDeviceListViewController
- (BOOL)_activeWatchNeedsUpdate;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (COSPairedDeviceListViewController)init;
- (id)_specifierForActiveWatch;
- (id)findMigratingDeviceCell:(id)cell;
- (void)_configureBackButtonBehavior;
- (void)_doneButtonTapped;
- (void)_showBackButtonBehavior:(unint64_t)behavior animated:(BOOL)animated;
- (void)_switchToDeviceWithSpecifier:(id)specifier atIndex:(id)index successCompletion:(id)completion;
- (void)_tinkerConnectionFinished;
- (void)beginMigrationWithAltDevice:(id)device;
- (void)cancelTinkerConnectionTimeout;
- (void)cancelTinkerSwitchAttempt:(id)attempt;
- (void)dealloc;
- (void)deviceBecameActive:(id)active;
- (void)didBTConnectDevice:(id)device;
- (void)didIDSConnectDevice:(id)device;
- (void)didUpdateAsDisconnectedDevice:(id)device;
- (void)disableBackButton;
- (void)displaySoftwareUpdatePane:(id)pane;
- (void)handleTinkerMigrationFailureCase:(unint64_t)case forDevice:(id)device;
- (void)manager:(id)manager didFailDownload:(id)download withError:(id)error;
- (void)manager:(id)manager didFailInstallation:(id)installation withError:(id)error;
- (void)manager:(id)manager didFinishInstallation:(id)installation;
- (void)migrationProgressUpdate:(unint64_t)update percentageComplete:(double)complete migratingDevice:(id)device;
- (void)nanoRegistryStatusCodeChanged:(id)changed;
- (void)presentGenericMigrationFailureMessage:(id)message;
- (void)presentSoftwareUpdatePane;
- (void)presentTinkerConnectFailedAlert:(id)alert;
- (void)presentTinkerMigrationAvailabilityFailure:(id)failure title:(id)title detail:(id)detail;
- (void)presentUnpairInstructionsController;
- (void)pushActiveDeviceDetails;
- (void)pushCellDetailForRowWithIndexPath:(id)path animate:(BOOL)animate;
- (void)reloadSpecifiers;
- (void)selectDeviceWithSpecifier:(id)specifier successCompletion:(id)completion;
- (void)selectRowWithSpecifier:(id)specifier;
- (void)setShowTinkerSwitchCancelOption:(BOOL)option;
- (void)setSpecifierDataSource:(id)source;
- (void)showBlockSwitchDialog:(id)dialog;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDeviceStates;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation COSPairedDeviceListViewController

- (COSPairedDeviceListViewController)init
{
  v13.receiver = self;
  v13.super_class = COSPairedDeviceListViewController;
  v2 = [(COSPairedDeviceListViewController *)&v13 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"nanoRegistryStatusCodeChanged:" name:NRPairedDeviceRegistryStatusDidChange object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"deviceBecameActive:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"deviceBecameInactive:" name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];

    v6 = objc_alloc_init(HKHealthStore);
    v7 = [[HKNanoSyncControl alloc] initWithHealthStore:v6];
    [v7 forceLastChanceNanoSyncWithCompletion:&stru_10026B600];

    v2->_userInitiatedTinkerSwitch = 0;
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"familyCircleUpdated:" name:BPSTinkerSupportFamilyCircleUpdatedNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"profilePicturesUpdated:" name:BPSTinkerSupportProfilePicturesUpdatedNotification object:0];

    v10 = objc_alloc_init(COSMigrationManager);
    migrationManager = v2->_migrationManager;
    v2->_migrationManager = v10;

    [(COSMigrationManager *)v2->_migrationManager setDelegate:v2];
  }

  return v2;
}

- (void)setSpecifierDataSource:(id)source
{
  sourceCopy = source;
  [sourceCopy setMigrationManager:self->_migrationManager];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D8810;
  v6[3] = &unk_10026B628;
  objc_copyWeak(&v7, &location);
  [sourceCopy setDisplaySoftwareUpdate:v6];
  v5.receiver = self;
  v5.super_class = COSPairedDeviceListViewController;
  [(COSPairedDeviceListViewController *)&v5 setSpecifierDataSource:sourceCopy];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSPairedDeviceListViewController;
  [(COSPairedDeviceListViewController *)&v4 dealloc];
}

- (void)showBlockSwitchDialog:(id)dialog
{
  dialogCopy = dialog;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v19 = "[COSPairedDeviceListViewController showBlockSwitchDialog:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Displaying alert.", buf, 0xCu);
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"GUARDIAN_SIGNED_OUT_BLOCK_SWITCH_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"GUARDIAN_SIGNED_OUT_BLOCK_SWITCH_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  dialogCopy = [NSString stringWithFormat:v9, dialogCopy];

  v11 = [UIAlertController alertControllerWithTitle:v7 message:dialogCopy preferredStyle:1];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"OPEN_SETTINGS" value:&stru_10026E598 table:@"Localizable"];
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&stru_10026B648];
  [v11 addAction:v14];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Pairing"];
  v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:0];
  [v11 addAction:v17];

  [(COSPairedDeviceListViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = COSPairedDeviceListViewController;
  [(COSPairedDeviceListViewController *)&v9 viewDidLoad];
  specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
  tinkerOnly = [specifierDataSource tinkerOnly];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (tinkerOnly)
  {
    v7 = @"DEVICE_PICKER_FAMILY_WATCHES_ONLY_TITLE";
  }

  else
  {
    v7 = @"DEVICE_PICKER_TITLE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_10026E598 table:@"Pairing"];
  [(COSPairedDeviceListViewController *)self setTitle:v8];

  [(COSPairedDeviceListViewController *)self _showBackButtonBehavior:0 animated:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v25.receiver = self;
  v25.super_class = COSPairedDeviceListViewController;
  [(COSPairedDeviceListViewController *)&v25 viewWillAppear:appear];
  updateController = self->_updateController;
  self->_updateController = 0;

  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = 0;

  if ([(COSPairedDeviceListViewController *)self _activeWatchNeedsUpdate])
  {
    _specifierForActiveWatch = [(COSPairedDeviceListViewController *)self _specifierForActiveWatch];
    selectedDeviceSpecifierPriorToUpdate = self->_selectedDeviceSpecifierPriorToUpdate;
    self->_selectedDeviceSpecifierPriorToUpdate = _specifierForActiveWatch;

    if (!self->_subManager)
    {
      v8 = [[SUBManager alloc] initWithDelegate:self];
      subManager = self->_subManager;
      self->_subManager = v8;
    }

    objc_initWeak(location, self);
    v10 = self->_subManager;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000D8F84;
    v22 = &unk_10026B670;
    objc_copyWeak(&v24, location);
    selfCopy = self;
    [(SUBManager *)v10 managerState:&v19];
    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  [(COSPairedDeviceListViewController *)self _configureBackButtonBehavior:v19];
  if (self->_selectedDeviceSpecifierPriorToUpdate)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_selectedDeviceSpecifierPriorToUpdate;
      *location = 136315394;
      *&location[4] = "[COSPairedDeviceListViewController viewWillAppear:]";
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Found device to switch to: %@", location, 0x16u);
    }

    v13 = self->_selectedDeviceSpecifierPriorToUpdate;
    v14 = self->_selectedDeviceSpecifierPriorToUpdate;
    self->_selectedDeviceSpecifierPriorToUpdate = 0;

    v15 = [(PSSpecifier *)v13 propertyForKey:@"COSDeviceState"];
    integerValue = [v15 integerValue];

    if (integerValue == 6)
    {
      v17 = pbb_bridge_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315138;
        *&location[4] = "[COSPairedDeviceListViewController viewWillAppear:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Skipping switch due to watch needing update", location, 0xCu);
      }
    }

    else
    {
      [(COSPairedDeviceListViewController *)self selectDeviceWithSpecifier:v13 successCompletion:0];
    }
  }

  else
  {
    [(COSPairedDeviceListViewController *)self updateDeviceStates];
    specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
    [specifierDataSource reloadSpecifiers];

    [(COSPairedDeviceListViewController *)self is_addGestureRecognizer];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = COSPairedDeviceListViewController;
  [(COSPairedDeviceListViewController *)&v3 viewWillDisappear:disappear];
  [UIApp setDevicePickerPresented:0];
}

- (void)_configureBackButtonBehavior
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  status = [v3 status];

  if (status != 2)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 136315394;
      *&v11[4] = "[COSPairedDeviceListViewController _configureBackButtonBehavior]";
      *&v11[12] = 2048;
      *&v11[14] = status;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - Paired device registry not ready. State: %lu.", v11, 0x16u);
    }

    v8 = 1;
    goto LABEL_17;
  }

  v5 = sub_10000DB38();

  if (!v5)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 136315138;
      *&v11[4] = "[COSPairedDeviceListViewController _configureBackButtonBehavior]";
      v7 = "%s - No active paired device.";
      goto LABEL_11;
    }

LABEL_16:
    v8 = 2;
    goto LABEL_17;
  }

  if ([(COSPairedDeviceListViewController *)self _activeWatchNeedsUpdate])
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 136315138;
      *&v11[4] = "[COSPairedDeviceListViewController _configureBackButtonBehavior]";
      v7 = "%s - Active watch needs update";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v11, 0xCu);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if ([(COSMigrationManager *)self->_migrationManager currentState]== 2 || [(COSMigrationManager *)self->_migrationManager currentState]== 3)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v8 = 2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Block back button migration sync", v11, 2u);
LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v8 = 0;
LABEL_18:
  [(COSPairedDeviceListViewController *)self _showBackButtonBehavior:v8 animated:0, *v11];
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithUnsignedInteger:v8];
    *v11 = 136315394;
    *&v11[4] = "[COSPairedDeviceListViewController _configureBackButtonBehavior]";
    *&v11[12] = 2112;
    *&v11[14] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - %@", v11, 0x16u);
  }
}

- (BOOL)_activeWatchNeedsUpdate
{
  _specifierForActiveWatch = [(COSPairedDeviceListViewController *)self _specifierForActiveWatch];
  v3 = _specifierForActiveWatch;
  if (_specifierForActiveWatch)
  {
    v4 = [_specifierForActiveWatch propertyForKey:@"COSDeviceState"];
    integerValue = [v4 integerValue];

    v6 = (integerValue & 0xFFFFFFFFFFFFFFFELL) == 6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_doneButtonTapped
{
  [UIApp setDevicePickerPresented:0];

  [(COSPairedDeviceListViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)presentTinkerConnectFailedAlert:(id)alert
{
  alertCopy = alert;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v18 = "[COSPairedDeviceListViewController presentTinkerConnectFailedAlert:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Displaying alert.", buf, 0xCu);
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"TINKER_SWITCH_TIMEOUT_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"TINKER_SWITCH_TIMEOUT_MESSAGE_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  alertCopy = [NSString stringWithFormat:v9, alertCopy];
  v11 = [UIAlertController alertControllerWithTitle:v7 message:alertCopy preferredStyle:1];

  objc_initWeak(buf, self);
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Pairing"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D98F0;
  v15[3] = &unk_10026A5D0;
  objc_copyWeak(&v16, buf);
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v15];
  [v11 addAction:v14];

  [(COSPairedDeviceListViewController *)self presentViewController:v11 animated:1 completion:0];
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (id)_specifierForActiveWatch
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = NRDevicePropertyIsActive;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 propertyForKey:{@"COSAssociatedDevice", v14}];
        v10 = [v9 valueForProperty:v6];
        bOOLValue = [v10 BOOLValue];

        if (bOOLValue)
        {
          v12 = v8;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)selectDeviceWithSpecifier:(id)specifier successCompletion:(id)completion
{
  specifierCopy = specifier;
  completionCopy = completion;
  if (self->_tinkerConnectionTimeout)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[COSPairedDeviceListViewController selectDeviceWithSpecifier:successCompletion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: We had a switch transaction going on. Cancel it.", buf, 0xCu);
    }

    dispatch_source_cancel(self->_tinkerConnectionTimeout);
    tinkerConnectionTimeout = self->_tinkerConnectionTimeout;
    self->_tinkerConnectionTimeout = 0;
  }

  connectionTracker = self->_connectionTracker;
  self->_connectionTracker = 0;

  v11 = [specifierCopy propertyForKey:@"COSAssociatedDevice"];
  v12 = [specifierCopy propertyForKey:@"COSDeviceState"];
  integerValue = [v12 integerValue];

  v14 = pbb_bridge_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    _bridgeConciseDebugDescription = [v11 _bridgeConciseDebugDescription];
    *buf = 136315650;
    v45 = "[COSPairedDeviceListViewController selectDeviceWithSpecifier:successCompletion:]";
    v46 = 2112;
    v47 = _bridgeConciseDebugDescription;
    v48 = 2048;
    v49 = specifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Select Device -> %@ (specifier=%p)", buf, 0x20u);
  }

  v16 = [v11 valueForProperty:NRDevicePropertyIsAltAccount];
  v17 = [v11 valueForProperty:NRDevicePropertyIsActive];
  bOOLValue = [v17 BOOLValue];

  if (!((integerValue != 6) | bOOLValue & 1))
  {
    _specifierForActiveWatch = [(COSPairedDeviceListViewController *)self _specifierForActiveWatch];
    selectedDeviceSpecifierPriorToUpdate = self->_selectedDeviceSpecifierPriorToUpdate;
    self->_selectedDeviceSpecifierPriorToUpdate = _specifierForActiveWatch;
  }

  bOOLValue2 = [v16 BOOLValue];
  v22 = self->_connectionTracker;
  if (bOOLValue2)
  {
    if (!v22)
    {
      v23 = [[BPSTinkerConnectionTracker alloc] initWithDevice:0];
      v24 = self->_connectionTracker;
      self->_connectionTracker = v23;

      [(BPSTinkerConnectionTracker *)self->_connectionTracker setDelegate:self];
    }

    self->_userInitiatedTinkerSwitch = 1;
    if (!self->_tinkerConnectionTimeout)
    {
      v25 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      v26 = dispatch_time(0, 0xA7A358000);
      dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000DA03C;
      handler[3] = &unk_100268358;
      handler[4] = self;
      v43 = v11;
      dispatch_source_set_event_handler(v25, handler);
      dispatch_resume(v25);
      v27 = completionCopy;
      v28 = self->_tinkerConnectionTimeout;
      self->_tinkerConnectionTimeout = v25;
      v29 = v25;

      completionCopy = v27;
    }

    [(BPSTinkerConnectionTracker *)self->_connectionTracker setSelectedDevice:v11];
    [(COSPairedDeviceListViewController *)self _showBackButtonBehavior:1 animated:0];
  }

  else
  {
    self->_connectionTracker = 0;
  }

  v30 = pbb_bridge_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v45 = "[COSPairedDeviceListViewController selectDeviceWithSpecifier:successCompletion:]";
    v46 = 2112;
    v47 = v11;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s: Connecting to device %@.", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v31 = +[UIApplication sharedApplication];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000DA248;
  v39[3] = &unk_10026A0A8;
  objc_copyWeak(&v41, buf);
  v32 = v11;
  v40 = v32;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000DA370;
  v35[3] = &unk_10026B698;
  objc_copyWeak(&v38, buf);
  v33 = v32;
  v36 = v33;
  v34 = completionCopy;
  v37 = v34;
  [v31 setActiveWatch:v33 startedBlock:v39 completionBlock:v35];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v41);
  objc_destroyWeak(buf);
}

- (void)selectRowWithSpecifier:(id)specifier
{
  v5 = [(COSPairedDeviceListViewController *)self indexPathForSpecifier:specifier];
  table = [(COSPairedDeviceListViewController *)self table];
  [(COSPairedDeviceListViewController *)self tableView:table didSelectRowAtIndexPath:v5];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(COSPairedDeviceListViewController *)self specifierAtIndex:[(COSPairedDeviceListViewController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"COSPairedDeviceListTableCellEnabled"];
  v6 = (v5 == 0) | [v5 BOOLValue];

  return v6 & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v30.receiver = self;
  v30.super_class = COSPairedDeviceListViewController;
  [(COSPairedDeviceListViewController *)&v30 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(COSPairedDeviceListViewController *)self specifierAtIndexPath:pathCopy];
  v8 = [v7 propertyForKey:@"COSAssociatedDevice"];
  v9 = [v8 valueForProperty:NRDevicePropertyIsArchived];
  v10 = [v8 valueForProperty:NRDevicePropertyIsAltAccount];
  v11 = [v8 valueForProperty:NRDevicePropertyName];
  specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
  v13 = [specifierDataSource _deviceRequiresUpdate:v8];

  identifier = [v7 identifier];
  v15 = [identifier isEqualToString:@"PairNewWatchSpecifier"];

  if (v15)
  {
    v16 = pbb_bridge_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Selected pair new watch button.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  identifier2 = [v7 identifier];
  v19 = [identifier2 isEqualToString:@"MagicSwitchSpecifier"];

  if (v19)
  {
    v16 = pbb_bridge_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Selected magic switch row.";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  identifier3 = [v7 identifier];
  v21 = [identifier3 isEqualToString:@"FinishPairing"];

  if (v21)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DA9C8;
    block[3] = &unk_100268358;
    block[4] = self;
    v29 = v7;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_9;
  }

  if (([v10 BOOLValue] & v13) == 1 && (objc_msgSend(v9, "BOOLValue") & 1) == 0)
  {
    v16 = pbb_bridge_log();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v17 = "Selected tinker watch that requires update";
    goto LABEL_7;
  }

  v22 = pbb_bridge_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = pathCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Select ip=%@", buf, 0xCu);
  }

  if ([v9 BOOLValue] && objc_msgSend(v10, "BOOLValue"))
  {
    v23 = +[NRMigrator sharedMigrator];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000DAA1C;
    v24[3] = &unk_10026B6C0;
    v25 = v8;
    selfCopy = self;
    v27 = v11;
    [v23 isPhoneReadyToMigrateDevice:v25 withCompletion:v24];
  }

  else
  {
    [(COSPairedDeviceListViewController *)self _switchToDeviceWithSpecifier:v7 atIndex:pathCopy successCompletion:0];
  }

LABEL_9:
}

- (void)_switchToDeviceWithSpecifier:(id)specifier atIndex:(id)index successCompletion:(id)completion
{
  specifierCopy = specifier;
  obj = index;
  indexCopy = index;
  completionCopy = completion;
  v9 = [specifierCopy propertyForKey:@"COSDeviceState"];
  integerValue = [v9 integerValue];

  v11 = [specifierCopy propertyForKey:@"COSAssociatedDevice"];
  v12 = [v11 valueForProperty:NRDevicePropertyIsActive];
  bOOLValue = [v12 BOOLValue];

  v14 = [v11 valueForProperty:NRDevicePropertyIsAltAccount];
  LODWORD(index) = [v14 BOOLValue];

  v15 = [v11 valueForProperty:_NRDevicePropertyPairingParentAltDSID];
  v16 = [v11 valueForProperty:_NRDevicePropertyPairingParentAccountIdentifier];
  if (!index)
  {
    v19 = 0;
    goto LABEL_16;
  }

  v17 = +[COSiCloudAuthController iCloudAccountInAccountStore];
  if (!v17)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v18 = [COSiCloudAuthController altDSIDForiCloudAccount:v17];
  if (!v18)
  {
    goto LABEL_9;
  }

  if (!v15)
  {
    if (sub_100009A74())
    {
      v30 = +[NRPairedDeviceRegistry sharedInstance];
      v21 = [COSiCloudAuthController usernameForiCloudAccount:v17];
      [v30 pairingClientSetPairingParentName:v21 pairingParentAltDSID:v18 forDevice:v11 completion:&stru_10026B6E0];
    }

    goto LABEL_14;
  }

  if (([v15 isEqualToString:v18] & 1) == 0)
  {
LABEL_9:
    v20 = pbb_bridge_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v35 = v15;
      *&v35[8] = 2112;
      *&v35[10] = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Blocking switch for alt account watch because %@ != %@", buf, 0x16u);
    }

    v19 = 1;
    goto LABEL_15;
  }

LABEL_14:
  v19 = 0;
LABEL_15:

LABEL_16:
  v22 = pbb_bridge_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v35 = bOOLValue;
    *&v35[4] = 2048;
    *&v35[6] = integerValue;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "watchIsAlreadyActive: %{BOOL}d deviceState %ld", buf, 0x12u);
  }

  v23 = [(COSPairedDeviceListViewController *)self specifierForID:@"ACTIVE_WATCH_ITEM"];
  v24 = v23;
  if (v19)
  {
    [(COSPairedDeviceListViewController *)self showBlockSwitchDialog:v16];
LABEL_27:
    v25 = indexCopy;
    goto LABEL_28;
  }

  if ((integerValue & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    if ((bOOLValue & 1) == 0 && ([v23 isEqualToSpecifier:specifierCopy] & 1) == 0)
    {
      objc_storeStrong(&self->_selectedIndexPath, obj);
      specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
      [specifierDataSource setLoadingDevice:v11];

      [(COSPairedDeviceListViewController *)self updateDeviceStates];
      selfCopy = self;
      v27 = completionCopy;
      [(COSPairedDeviceListViewController *)selfCopy selectDeviceWithSpecifier:specifierCopy successCompletion:completionCopy];
      v25 = indexCopy;
      goto LABEL_29;
    }

    v26 = pbb_bridge_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "skipping switch, criteria not met", buf, 2u);
    }

    goto LABEL_27;
  }

  v25 = indexCopy;
  [(COSPairedDeviceListViewController *)self pushCellDetailForRowWithIndexPath:indexCopy animate:1];
LABEL_28:
  v27 = completionCopy;
LABEL_29:
}

- (void)handleTinkerMigrationFailureCase:(unint64_t)case forDevice:(id)device
{
  deviceCopy = device;
  if (case > 2)
  {
    if (case == 5)
    {
      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:@"ALREADY_MIGRATING_TITLE_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
      deviceCopy = [NSString stringWithFormat:v18, deviceCopy];

      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"ALREADY_MIGRATING_BODY";
      goto LABEL_11;
    }

    if (case == 3)
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"CANNOT_MIGRATE_YET_TITLE_%@_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
      v13 = +[UIDevice currentDevice];
      name = [v13 name];
      deviceCopy = [NSString stringWithFormat:v12, deviceCopy, name];

      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"CANNOT_MIGRATE_YET_BODY";
      goto LABEL_11;
    }

LABEL_8:
    v9 = +[NSBundle mainBundle];
    deviceCopy = [v9 localizedStringForKey:@"CANNOT_MIGRATE_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
    v15 = 0;
    goto LABEL_12;
  }

  if (case == 1)
  {
    v16 = +[NSBundle mainBundle];
    deviceCopy = [v16 localizedStringForKey:@"ENABLE_KEYCHAIN_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"ENABLE_KEYCHAIN_BODY";
    goto LABEL_11;
  }

  if (case != 2)
  {
    goto LABEL_8;
  }

  v6 = +[NSBundle mainBundle];
  deviceCopy = [v6 localizedStringForKey:@"ENABLE_BLUETOOTH_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];

  v8 = +[NSBundle mainBundle];
  v9 = v8;
  v10 = @"ENABLE_BLUETOOTH_BODY";
LABEL_11:
  v15 = [v8 localizedStringForKey:v10 value:&stru_10026E598 table:@"Localizable-tinker"];
LABEL_12:

  if (sub_100009A74())
  {
    v19 = sub_1000DB304(case);
    v20 = [NSString stringWithFormat:@"%@ - [Internal] availability code %lu : %@", v15, case, v19];

    v15 = v20;
  }

  [(COSPairedDeviceListViewController *)self presentTinkerMigrationAvailabilityFailure:deviceCopy title:deviceCopy detail:v15];
}

- (void)presentGenericMigrationFailureMessage:(id)message
{
  message = [NSString stringWithFormat:@"[Internal] error: %@", message];
  BPSPresentGizmoUnreachableOrLockedServiceAlertWithDismissalHandler();
}

- (void)presentTinkerMigrationAvailabilityFailure:(id)failure title:(id)title detail:(id)detail
{
  v9 = [UIAlertController alertControllerWithTitle:title message:detail preferredStyle:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:&stru_10026B720];

  [v9 addAction:v8];
  [(COSPairedDeviceListViewController *)self presentViewController:v9 animated:1 completion:&stru_10026B740];
}

- (void)presentUnpairInstructionsController
{
  unpairInstructionsController = self->_unpairInstructionsController;
  if (!unpairInstructionsController)
  {
    v4 = objc_alloc_init(COSWatchUnpairInstructionsController);
    v5 = self->_unpairInstructionsController;
    self->_unpairInstructionsController = v4;

    [(COSWatchUnpairInstructionsController *)self->_unpairInstructionsController setInstructionsContext:1];
    unpairInstructionsController = self->_unpairInstructionsController;
  }

  [(COSWatchUnpairInstructionsController *)unpairInstructionsController presentWithController:self];
}

- (void)pushCellDetailForRowWithIndexPath:(id)path animate:(BOOL)animate
{
  animateCopy = animate;
  v6 = [(COSPairedDeviceListViewController *)self indexForIndexPath:path];
  v7 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v6];
  v8 = objc_alloc_init(*&v7[OBJC_IVAR___PSSpecifier_detailControllerClass]);
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->BPSListController_opaque[OBJC_IVAR___PSViewController__rootController]);
    [v8 setRootController:WeakRetained];

    [v8 setParentController:self];
    [v8 setSpecifier:v7];
    v10 = [v7 propertyForKey:@"COSAssociatedDevice"];
    v11 = [v10 valueForProperty:NRDevicePropertyIsAltAccount];
    +[PBBridgeCAReporter recordAllWatchesDetailButtonVisit:](PBBridgeCAReporter, "recordAllWatchesDetailButtonVisit:", [v11 BOOLValue]);
    [(COSPairedDeviceListViewController *)self showController:v8 animate:animateCopy];
  }

  else
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *&v7[OBJC_IVAR___PSSpecifier_detailControllerClass];
      v14 = 136315394;
      v15 = "[COSPairedDeviceListViewController pushCellDetailForRowWithIndexPath:animate:]";
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Failed to create controller %@", &v14, 0x16u);
    }
  }
}

- (void)beginMigrationWithAltDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NRMigrator sharedMigrator];
  objc_initWeak(&location, v5);
  objc_initWeak(&from, self);
  [(COSMigrationManager *)self->_migrationManager tinkerMigrationStarted:deviceCopy];
  specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
  [specifierDataSource setLoadingDevice:deviceCopy];

  [(COSPairedDeviceListViewController *)self _showBackButtonBehavior:1 animated:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB9F8;
  block[3] = &unk_100268458;
  objc_copyWeak(&v16, &from);
  v7 = deviceCopy;
  v15 = v7;
  dispatch_async(&_dispatch_main_q, block);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DBA9C;
  v9[3] = &unk_10026B768;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  v8 = v7;
  v10 = v8;
  selfCopy = self;
  [v5 setMigrationConsented:1 forDevice:v8 withBlock:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)cancelTinkerSwitchAttempt:(id)attempt
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[COSPairedDeviceListViewController cancelTinkerSwitchAttempt:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  tinkerConnectionTimeout = self->_tinkerConnectionTimeout;
  if (tinkerConnectionTimeout)
  {
    dispatch_source_cancel(tinkerConnectionTimeout);
    v6 = self->_tinkerConnectionTimeout;
    self->_tinkerConnectionTimeout = 0;
  }

  v7 = +[UIApplication sharedApplication];
  [v7 cancelTinkerSwitch:self];

  [(COSPairedDeviceListViewController *)self setShowTinkerSwitchCancelOption:0];
  self->_userInitiatedTinkerSwitch = 0;
}

- (void)setShowTinkerSwitchCancelOption:(BOOL)option
{
  showTinkerSwitchCancelOption = self->_showTinkerSwitchCancelOption;
  self->_showTinkerSwitchCancelOption = option;
  if (showTinkerSwitchCancelOption != option)
  {
    [(COSPairedDeviceListViewController *)self _showBackButtonBehavior:self->_currentBackButtonBehavior animated:0];
  }
}

- (void)_showBackButtonBehavior:(unint64_t)behavior animated:(BOOL)animated
{
  animatedCopy = animated;
  if (!+[NSThread isMainThread])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DC1E8;
    block[3] = &unk_100269EC0;
    block[4] = self;
    block[5] = behavior;
    v28 = animatedCopy;
    dispatch_async(&_dispatch_main_q, block);
    return;
  }

  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    behaviorCopy = behavior;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting back button to %{public}lu", buf, 0xCu);
  }

  self->_currentBackButtonBehavior = behavior;
  specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
  loadingDevice = [specifierDataSource loadingDevice];

  if (behavior != 1)
  {
    if (!loadingDevice)
    {
      goto LABEL_18;
    }

LABEL_19:
    v16 = pbb_bridge_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Paired device list wants to clear spinner but a loading device was still specified, clearing.", buf, 2u);
    }

    lastObject = 0;
    v14 = 0;
    goto LABEL_22;
  }

  v10 = sub_100009A24();
  if ((v10 & 1) == 0 && !loadingDevice)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Paired device list wants to show spinner but no loading device was specified, using active device.", buf, 2u);
    }

    v12 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    if (v12)
    {
      lastObject = v12;
      v14 = 1;
      loadingDevice = v12;
LABEL_23:
      specifierDataSource2 = [(COSPairedDeviceListViewController *)self specifierDataSource];
      [specifierDataSource2 setLoadingDevice:lastObject];

LABEL_24:
      [(COSPairedDeviceListViewController *)self updateDeviceStates];
      goto LABEL_25;
    }

    v24 = sub_100009350();
    v16 = [v24 sortedArrayUsingComparator:&stru_10026B788];

    lastObject = [v16 lastObject];
    v25 = pbb_bridge_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [lastObject valueForProperty:NRDevicePropertyName];
      *buf = 138412290;
      behaviorCopy = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No active device, using last active standard paired device as loading device: %@", buf, 0xCu);
    }

    v14 = 1;
    loadingDevice = lastObject;
LABEL_22:

    goto LABEL_23;
  }

  v15 = v10 ^ 1;
  if (!loadingDevice)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((v10 & 1) == 0)
  {
    v14 = 1;
    goto LABEL_24;
  }

LABEL_18:
  v14 = 0;
LABEL_25:
  v18 = pbb_bridge_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    behaviorCopy = loadingDevice;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device picker loading device: %@", buf, 0xCu);
  }

  if (behavior == 2)
  {
    v19 = 1;
  }

  else
  {
    v19 = v14;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonTapped"];
  }

  navigationController = [(COSPairedDeviceListViewController *)self navigationController];
  [navigationController setModalInPresentation:v19];

  if (self->_showTinkerSwitchCancelOption)
  {
    v22 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelTinkerSwitchAttempt:"];

    v20 = v22;
  }

  navigationItem = [(COSPairedDeviceListViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v20 animated:animatedCopy];
}

- (void)nanoRegistryStatusCodeChanged:(id)changed
{
  changedCopy = changed;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[COSPairedDeviceListViewController nanoRegistryStatusCodeChanged:]";
    v15 = 2112;
    v16 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - %@", &v13, 0x16u);
  }

  userInfo = [(__CFString *)changedCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryStatusKey];
  integerValue = [v7 integerValue];

  v9 = sub_10000DB38();

  v10 = pbb_bridge_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (integerValue == 2)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = 136446722;
    v14 = "[COSPairedDeviceListViewController nanoRegistryStatusCodeChanged:]";
    v15 = 2114;
    v16 = v12;
    if (v9)
    {
      v11 = @"YES";
    }

    v17 = 2114;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - isReady %{public}@; hasActiveDevice %{public}@;", &v13, 0x20u);
  }

  if (!self->_connectionTracker)
  {
    [(COSPairedDeviceListViewController *)self _configureBackButtonBehavior];
  }
}

- (void)updateDeviceStates
{
  specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
  [specifierDataSource updateSelectedWatch];

  [(COSPairedDeviceListViewController *)self reloadSpecifiers];
}

- (void)deviceBecameActive:(id)active
{
  specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
  [specifierDataSource deviceBecameActive];

  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deviceBecameActive , configure backbutton", v6, 2u);
  }

  [(COSPairedDeviceListViewController *)self _configureBackButtonBehavior];
}

- (void)pushActiveDeviceDetails
{
  v3 = [(COSPairedDeviceListViewController *)self specifierForID:@"ACTIVE_WATCH_ITEM"];
  if (v3)
  {
    v5 = v3;
    v4 = [NSIndexPath indexPathForRow:[(COSPairedDeviceListViewController *)self indexOfSpecifier:v3]- 1 inSection:0];
    [(COSPairedDeviceListViewController *)self pushCellDetailForRowWithIndexPath:v4 animate:0];

    v3 = v5;
  }
}

- (void)disableBackButton
{
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[COSPairedDeviceListViewController disableBackButton]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }

  [(COSPairedDeviceListViewController *)self _showBackButtonBehavior:2 animated:0];
}

- (void)cancelTinkerConnectionTimeout
{
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[COSPairedDeviceListViewController cancelTinkerConnectionTimeout]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v6, 0xCu);
  }

  tinkerConnectionTimeout = self->_tinkerConnectionTimeout;
  if (tinkerConnectionTimeout)
  {
    dispatch_source_cancel(tinkerConnectionTimeout);
    v5 = self->_tinkerConnectionTimeout;
    self->_tinkerConnectionTimeout = 0;
  }
}

- (void)_tinkerConnectionFinished
{
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[COSPairedDeviceListViewController _tinkerConnectionFinished]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  self->_userInitiatedTinkerSwitch = 0;
  specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
  [specifierDataSource setLoadingDevice:0];

  [(COSPairedDeviceListViewController *)self updateDeviceStates];
  [(COSPairedDeviceListViewController *)self _showBackButtonBehavior:0 animated:1];
}

- (void)didIDSConnectDevice:(id)device
{
  deviceCopy = device;
  connectionTracker = self->_connectionTracker;
  self->_connectionTracker = 0;

  [(COSPairedDeviceListViewController *)self setShowTinkerSwitchCancelOption:0];
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [deviceCopy pairingID];
    v8 = 136315394;
    v9 = "[COSPairedDeviceListViewController didIDSConnectDevice:]";
    v10 = 2112;
    v11 = pairingID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - %@", &v8, 0x16u);
  }

  [(COSPairedDeviceListViewController *)self cancelTinkerConnectionTimeout];
  [(COSPairedDeviceListViewController *)self _tinkerConnectionFinished];
}

- (void)didBTConnectDevice:(id)device
{
  deviceCopy = device;
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [deviceCopy pairingID];
    v6 = 136315394;
    v7 = "[COSPairedDeviceListViewController didBTConnectDevice:]";
    v8 = 2112;
    v9 = pairingID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - %@", &v6, 0x16u);
  }
}

- (void)didUpdateAsDisconnectedDevice:(id)device
{
  deviceCopy = device;
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [deviceCopy pairingID];
    v6 = 136315394;
    v7 = "[COSPairedDeviceListViewController didUpdateAsDisconnectedDevice:]";
    v8 = 2112;
    v9 = pairingID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - %@", &v6, 0x16u);
  }
}

- (id)findMigratingDeviceCell:(id)cell
{
  cellCopy = cell;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v18 = 0;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 propertyForKey:@"COSAssociatedDevice"];
        pairingID = [v9 pairingID];
        pairingID2 = [cellCopy pairingID];
        v12 = [pairingID isEqual:pairingID2];

        if (v12)
        {
          v13 = [(COSPairedDeviceListViewController *)self indexPathForSpecifier:v8];
          table = [(COSPairedDeviceListViewController *)self table];
          v15 = [(COSPairedDeviceListViewController *)self tableView:table cellForRowAtIndexPath:v13];

          v18 = v15;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)migrationProgressUpdate:(unint64_t)update percentageComplete:(double)complete migratingDevice:(id)device
{
  deviceCopy = device;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [deviceCopy pairingID];
    *buf = 134218498;
    completeCopy = complete;
    v27 = 2048;
    updateCopy = update;
    v29 = 2112;
    v30 = pairingID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migration progress update(COSPairedDeviceListViewController) %f %lu %@", buf, 0x20u);
  }

  if (update != 4)
  {
    [(COSPairedDeviceListViewController *)self _configureBackButtonBehavior];
    specifierDataSource = [(COSPairedDeviceListViewController *)self specifierDataSource];
    pairNew = [specifierDataSource pairNew];

    currentState = [(COSMigrationManager *)self->_migrationManager currentState];
    v14 = PSEnabledKey;
    v15 = [pairNew propertyForKey:PSEnabledKey];
    bOOLValue = [v15 BOOLValue];

    if (currentState)
    {
      if (bOOLValue)
      {
        [pairNew setProperty:&__kCFBooleanFalse forKey:v14];
        v17 = v23;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v18 = sub_1000DD0A8;
LABEL_10:
        v17[2] = v18;
        v17[3] = &unk_100268358;
        v17[4] = self;
        v17[5] = pairNew;
        dispatch_async(&_dispatch_main_q, v17);
      }
    }

    else if ((bOOLValue & 1) == 0)
    {
      [pairNew setProperty:&__kCFBooleanTrue forKey:v14];
      v17 = v22;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v18 = sub_1000DD0B4;
      goto LABEL_10;
    }

    objc_initWeak(buf, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000DD0C0;
    v19[3] = &unk_10026B7B0;
    objc_copyWeak(v21, buf);
    v20 = deviceCopy;
    v21[1] = update;
    v21[2] = *&complete;
    dispatch_async(&_dispatch_main_q, v19);

    objc_destroyWeak(v21);
    objc_destroyWeak(buf);

    goto LABEL_12;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD008;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
LABEL_12:
}

- (void)reloadSpecifiers
{
  migratingDeviceCell = self->_migratingDeviceCell;
  self->_migratingDeviceCell = 0;

  v4.receiver = self;
  v4.super_class = COSPairedDeviceListViewController;
  [(COSPairedDeviceListViewController *)&v4 reloadSpecifiers];
}

- (void)displaySoftwareUpdatePane:(id)pane
{
  paneCopy = pane;
  v5 = [paneCopy propertyForKey:@"COSAssociatedDevice"];
  v6 = [v5 valueForProperty:NRDevicePropertyIsActive];
  bOOLValue = [v6 BOOLValue];

  v8 = [v5 valueForProperty:NRDevicePropertyIsAltAccount];
  [v8 BOOLValue];

  if (bOOLValue)
  {
    [(COSPairedDeviceListViewController *)self presentSoftwareUpdatePane];
  }

  else
  {
    v9 = [(COSPairedDeviceListViewController *)self indexPathForSpecifier:paneCopy];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DD33C;
    v10[3] = &unk_1002682F0;
    v10[4] = self;
    [(COSPairedDeviceListViewController *)self _switchToDeviceWithSpecifier:paneCopy atIndex:v9 successCompletion:v10];
  }
}

- (void)presentSoftwareUpdatePane
{
  updateController = [(COSPairedDeviceListViewController *)self updateController];

  if (!updateController)
  {
    v4 = objc_opt_new();
    [(COSPairedDeviceListViewController *)self setUpdateController:v4];
  }

  objc_initWeak(&location, self);
  updateController2 = [(COSPairedDeviceListViewController *)self updateController];
  v6 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  navigationController = [(COSPairedDeviceListViewController *)self navigationController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DD4FC;
  v8[3] = &unk_1002686A0;
  objc_copyWeak(&v9, &location);
  [updateController2 presentModalForDevice:v6 userForcedUpdate:0 withController:navigationController unpairOnExit:0 animated:1 completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)manager:(id)manager didFailInstallation:(id)installation withError:(id)error
{
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[COSPairedDeviceListViewController manager:didFailInstallation:withError:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD668;
  block[3] = &unk_100268430;
  objc_copyWeak(&v8, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)manager:(id)manager didFinishInstallation:(id)installation
{
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[COSPairedDeviceListViewController manager:didFinishInstallation:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD7E8;
  block[3] = &unk_100268430;
  objc_copyWeak(&v7, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)manager:(id)manager didFailDownload:(id)download withError:(id)error
{
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[COSPairedDeviceListViewController manager:didFailDownload:withError:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD968;
  block[3] = &unk_100268430;
  objc_copyWeak(&v8, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

@end