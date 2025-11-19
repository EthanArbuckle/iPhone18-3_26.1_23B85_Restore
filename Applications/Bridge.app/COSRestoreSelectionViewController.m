@interface COSRestoreSelectionViewController
+ (BOOL)controllerNeedsToRun;
+ (void)tellLinkUpgradeMonitorAboutBackupStepCompletion;
- (BOOL)controllerAllowsNavigatingBackFrom;
- (BOOL)holdBeforeDisplaying;
- (COSRestoreSelectionViewController)init;
- (id)localizedWaitScreenDescription;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_restoreCompletedWithSuccess;
- (void)_restoreFailedWithError:(id)a3;
- (void)_skipRestoreFromBackup;
- (void)_triggerRestoreFromBackupIndex:(int64_t)a3;
- (void)_triggerRestoreFromDeviceIndex:(int64_t)a3;
- (void)_triggerRestoreFromIndex:(int64_t)a3;
- (void)_triggerUpdate:(int64_t)a3;
- (void)backupsChanged:(unint64_t)a3;
- (void)dealloc;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)tappedContinueButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation COSRestoreSelectionViewController

- (COSRestoreSelectionViewController)init
{
  v13.receiver = self;
  v13.super_class = COSRestoreSelectionViewController;
  v2 = [(COSSetupPageViewController *)&v13 init];
  if (v2)
  {
    v3 = +[UIApplication sharedApplication];
    v4 = [v3 activeWatch];
    device = v2->_device;
    v2->_device = v4;

    v6 = +[COSBackupManager sharedBackupManager];
    v7 = [v6 backups];
    backups = v2->_backups;
    v2->_backups = v7;

    v9 = +[COSBackupManager sharedBackupManager];
    v10 = [v9 pairedDevices];
    pairedDevices = v2->_pairedDevices;
    v2->_pairedDevices = v10;
  }

  return v2;
}

- (void)dealloc
{
  device = self->_device;
  v6 = NRDevicePropertyLocalPairingDataStorePath;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [(NRDevice *)device removePropertyObserver:self forPropertyChanges:v4];

  v5.receiver = self;
  v5.super_class = COSRestoreSelectionViewController;
  [(COSRestoreSelectionViewController *)&v5 dealloc];
}

- (BOOL)controllerAllowsNavigatingBackFrom
{
  v2 = [UIApp bridgeController];
  v3 = [v2 isTinkerPairing];

  return v3 ^ 1;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = COSRestoreSelectionViewController;
  [(COSRestoreSelectionViewController *)&v27 viewDidLoad];
  v3 = [(COSRestoreSelectionViewController *)self headerView];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"RESTORE_TITLE" value:&stru_10026E598 table:@"Localizable"];
  [v3 setTitle:v5];

  v6 = [(COSRestoreSelectionViewController *)self headerView];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"RESTORE_INSTRUCTION" value:&stru_10026E598 table:@"Localizable"];
  [v6 setDetailText:v8];

  v9 = +[OBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v9;

  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:"tappedContinueButton:" forControlEvents:64];
  v11 = self->_continueButton;
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"CONTINUE_SETUP" value:&stru_10026E598 table:@"Localizable"];
  [(OBBoldTrayButton *)v11 setTitle:v13 forState:0];

  v14 = self->_continueButton;
  v15 = BPSPillSelectedColor();
  [(OBBoldTrayButton *)v14 setTintColor:v15];

  v16 = [(COSRestoreSelectionViewController *)self buttonTray];
  [v16 addButton:self->_continueButton];

  [(OBBoldTrayButton *)self->_continueButton setHidden:1];
  v17 = +[OBLinkTrayButton linkButton];
  setupAsNewButton = self->_setupAsNewButton;
  self->_setupAsNewButton = v17;

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"SETUP_NEW_%@" value:&stru_10026E598 table:@"Localizable"];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"APPLE_WATCH_ALL_STRING" value:&stru_10026E598 table:@"Localizable"];
  v23 = [NSString stringWithFormat:v20, v22];

  [(OBLinkTrayButton *)self->_setupAsNewButton setTitle:v23 forState:0];
  [(OBLinkTrayButton *)self->_setupAsNewButton addTarget:self action:"tappedNewButton:" forControlEvents:64];
  v24 = [(COSRestoreSelectionViewController *)self buttonTray];
  [v24 addButton:self->_setupAsNewButton];

  v25 = [[COSContentSizedTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  backupsTableView = self->_backupsTableView;
  self->_backupsTableView = &v25->super;

  [(UITableView *)self->_backupsTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_backupsTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"COSRestoreTableViewCellID"];
  [(UITableView *)self->_backupsTableView setDelegate:self];
  [(UITableView *)self->_backupsTableView setDataSource:self];
  [(COSRestoreSelectionViewController *)self setTableView:self->_backupsTableView];
}

- (void)tappedContinueButton:(id)a3
{
  v4 = [(UITableView *)self->_backupsTableView indexPathForSelectedRow];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 row];
    v7 = [(UITableView *)self->_backupsTableView cellForRowAtIndexPath:v5];
    v8 = [v7 updateRequired];
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Continuing with backup at index: %li", &v10, 0xCu);
    }

    [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
    [(UITableView *)self->_backupsTableView setUserInteractionEnabled:0];
    if (v8)
    {
      [(COSRestoreSelectionViewController *)self _triggerUpdate:v6];
    }

    else
    {
      [(COSRestoreSelectionViewController *)self _triggerRestoreFromIndex:v6];
    }
  }

  else
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100187520();
    }
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(NSIndexPath *)self->_selectedIndex isEqual:v7]& 1) != 0)
  {
    v8 = [v6 cellForRowAtIndexPath:v7];
    [v8 setSelected:0];

    [(OBLinkTrayButton *)self->_setupAsNewButton setEnabled:1];
    [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
    selectedIndex = self->_selectedIndex;
    self->_selectedIndex = 0;
  }

  else
  {
    if (self->_selectedIndex)
    {
      v10 = [v6 cellForRowAtIndexPath:?];
      [v10 setSelected:0];
    }

    v11 = [v6 cellForRowAtIndexPath:v7];
    [v11 setSelected:1];

    objc_storeStrong(&self->_selectedIndex, a4);
    [(OBLinkTrayButton *)self->_setupAsNewButton setEnabled:0];
    [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
    [(OBBoldTrayButton *)self->_continueButton setHidden:0];
  }

  return v7;
}

- (void)_triggerRestoreFromIndex:(int64_t)a3
{
  v5 = NRDevicePropertyLocalPairingDataStorePath;
  v6 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (v6)
  {
    if ([(NSArray *)self->_pairedDevices count]<= a3)
    {
      [(COSRestoreSelectionViewController *)self _triggerRestoreFromBackupIndex:a3 - [(NSArray *)self->_pairedDevices count]];
    }

    else
    {
      [(COSRestoreSelectionViewController *)self _triggerRestoreFromDeviceIndex:a3];
    }
  }

  else
  {
    self->_backupIndex = a3;
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100187560();
    }

    device = self->_device;
    v10 = v5;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [(NRDevice *)device addPropertyObserver:self forPropertyChanges:v9];
  }
}

- (void)_triggerUpdate:(int64_t)a3
{
  v5 = [UIApp setupController];
  v6 = [v5 setupSoftwareUpdateManager];
  setupUpdateManager = self->_setupUpdateManager;
  self->_setupUpdateManager = v6;

  objc_initWeak(&location, self);
  v8 = self->_setupUpdateManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004A8BC;
  v9[3] = &unk_100269250;
  objc_copyWeak(v10, &location);
  v10[1] = a3;
  [(COSSetupSoftwareUpdateManager *)v8 startUpdateInSetupWithController:self forcedUpdateOrUpdateInBackup:1 completion:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_triggerRestoreFromBackupIndex:(int64_t)a3
{
  v4 = [(NSArray *)self->_backups objectAtIndex:a3];
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Begin Restore from Backup (%@)", buf, 0xCu);
  }

  v6 = +[COSBackupManager sharedBackupManager];
  device = self->_device;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004ACD0;
  v9[3] = &unk_100269278;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v6 restoreFromBackup:v8 toDevice:device completionHandler:v9];
}

- (void)_triggerRestoreFromDeviceIndex:(int64_t)a3
{
  v4 = [(NSArray *)self->_pairedDevices objectAtIndex:a3];
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 _bridgeConciseDebugDescription];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Begin Restore from Other Paired Device (%@)", buf, 0xCu);
  }

  v7 = +[COSBackupManager sharedBackupManager];
  device = self->_device;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004AFFC;
  v10[3] = &unk_100269278;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v7 restoreFromDevice:v9 toDevice:device completionHandler:v10];
}

- (void)_restoreFailedWithError:(id)a3
{
  backupsTableView = self->_backupsTableView;
  v4 = a3;
  [(UITableView *)backupsTableView setUserInteractionEnabled:1];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RESTORE_FAILED" value:&stru_10026E598 table:@"Localizable"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"PAIRING_FAILED_ERR_%@" value:&stru_10026E598 table:@"Localizable"];
  v9 = [NSString stringWithFormat:v8, v4];

  v10 = [UIAlertController alertControllerWithTitle:v6 message:v9 preferredStyle:1];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:0];
  [v10 addAction:v13];

  v14 = pbb_setupflow_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Presenting 'restore failed' alert", buf, 2u);
  }

  [(COSRestoreSelectionViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_restoreCompletedWithSuccess
{
  [(UITableView *)self->_backupsTableView setUserInteractionEnabled:1];
  if (PBLogPerformanceMetrics())
  {
    v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v3 beginMacroActivity:@"COSPostWristChoiceUserWaitPhase" beginTime:CFAbsoluteTimeGetCurrent()];
  }

  [objc_opt_class() tellLinkUpgradeMonitorAboutBackupStepCompletion];
  v4 = +[COSBackupManager sharedBackupManager];
  [v4 setDelegate:0];

  v5 = [(COSSetupPageViewController *)self delegate];
  [v5 buddyControllerDone:self];
}

- (void)_skipRestoreFromBackup
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User chose to setup as new", v9, 2u);
  }

  [objc_opt_class() tellLinkUpgradeMonitorAboutBackupStepCompletion];
  v4 = +[COSBackupManager sharedBackupManager];
  [v4 setDelegate:0];

  v5 = [UIApp setupController];
  v6 = [v5 wristChoicesDetected];

  v7 = [(COSSetupPageViewController *)self delegate];
  v8 = v7;
  if (v6)
  {
    [v7 buddyControllerDone:self];
  }

  else
  {
    [v7 buddyControllerDone:self nextControllerClass:objc_opt_class()];
  }
}

+ (void)tellLinkUpgradeMonitorAboutBackupStepCompletion
{
  v3 = [UIApp setupController];
  v2 = [v3 linkUpgradeMonitor];
  [v2 indicateBackupRestoreStepCompleted];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(NSArray *)self->_backups count:a3];
  v6 = +[COSBackupManager sharedBackupManager];
  v7 = [v6 recordedPairingTimeBackupsCount];

  if ((v7 & 1) == 0)
  {
    [PBBridgeCAReporter recordPairingTimeBackupsCount:v5];
    v8 = +[COSBackupManager sharedBackupManager];
    [v8 setRecordedPairingTimeBackupsCount:1];
  }

  return [(NSArray *)self->_pairedDevices count]+ v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"COSRestoreTableViewCellID"];
  v8 = [v6 row];

  v9 = [(NSArray *)self->_pairedDevices count];
  pairedDevices = self->_pairedDevices;
  if (v8 >= v9)
  {
    v11 = [(NSArray *)self->_backups objectAtIndex:v8 - [(NSArray *)pairedDevices count]];
    [v7 setRestoreDetailsFromBackup:v11];
  }

  else
  {
    v11 = [(NSArray *)pairedDevices objectAtIndex:v8];
    [v7 setRestoreDetailsFromDevice:v11];
  }

  return v7;
}

+ (BOOL)controllerNeedsToRun
{
  v2 = [UIApp newTinkerAccountCreated];
  if (v2)
  {
    [objc_opt_class() tellLinkUpgradeMonitorAboutBackupStepCompletion];
  }

  return v2 ^ 1;
}

- (BOOL)holdBeforeDisplaying
{
  v3 = +[COSBackupManager sharedBackupManager];
  v4 = [UIApp bridgeController];
  v5 = [v4 isTinkerPairing];

  if (v5)
  {
    [v3 reloadBackups];
  }

  v6 = [v3 shouldOfferToRestore];
  if (v6)
  {
    v7 = +[COSBackupManager sharedBackupManager];
    v8 = [v7 backups];
    backups = self->_backups;
    self->_backups = v8;
  }

  else
  {
    [v3 setDelegate:self];
  }

  return v6 == 0;
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_BACKUP_LOAD_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (void)backupsChanged:(unint64_t)a3
{
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "backups changed with status: %lu", buf, 0xCu);
  }

  v6 = +[COSBackupManager sharedBackupManager];
  v7 = [v6 backups];
  backups = self->_backups;
  self->_backups = v7;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004BB24;
  v9[3] = &unk_100268220;
  v9[4] = self;
  v9[5] = a3;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v7 = a3;
  v8 = NRDevicePropertyLocalPairingDataStorePath;
  if ([a4 isEqualToString:NRDevicePropertyLocalPairingDataStorePath])
  {
    v9 = [v7 valueForProperty:v8];

    if (v9)
    {
      v11 = v8;
      v10 = [NSArray arrayWithObjects:&v11 count:1];
      [v7 removePropertyObserver:self forPropertyChanges:v10];

      [(COSRestoreSelectionViewController *)self _triggerRestoreFromIndex:self->_backupIndex];
    }
  }
}

@end