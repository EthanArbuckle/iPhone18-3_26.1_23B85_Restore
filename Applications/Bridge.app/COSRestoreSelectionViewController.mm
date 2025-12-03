@interface COSRestoreSelectionViewController
+ (BOOL)controllerNeedsToRun;
+ (void)tellLinkUpgradeMonitorAboutBackupStepCompletion;
- (BOOL)controllerAllowsNavigatingBackFrom;
- (BOOL)holdBeforeDisplaying;
- (COSRestoreSelectionViewController)init;
- (id)localizedWaitScreenDescription;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_restoreCompletedWithSuccess;
- (void)_restoreFailedWithError:(id)error;
- (void)_skipRestoreFromBackup;
- (void)_triggerRestoreFromBackupIndex:(int64_t)index;
- (void)_triggerRestoreFromDeviceIndex:(int64_t)index;
- (void)_triggerRestoreFromIndex:(int64_t)index;
- (void)_triggerUpdate:(int64_t)update;
- (void)backupsChanged:(unint64_t)changed;
- (void)dealloc;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)tappedContinueButton:(id)button;
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
    activeWatch = [v3 activeWatch];
    device = v2->_device;
    v2->_device = activeWatch;

    v6 = +[COSBackupManager sharedBackupManager];
    backups = [v6 backups];
    backups = v2->_backups;
    v2->_backups = backups;

    v9 = +[COSBackupManager sharedBackupManager];
    pairedDevices = [v9 pairedDevices];
    pairedDevices = v2->_pairedDevices;
    v2->_pairedDevices = pairedDevices;
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
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  return isTinkerPairing ^ 1;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = COSRestoreSelectionViewController;
  [(COSRestoreSelectionViewController *)&v27 viewDidLoad];
  headerView = [(COSRestoreSelectionViewController *)self headerView];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"RESTORE_TITLE" value:&stru_10026E598 table:@"Localizable"];
  [headerView setTitle:v5];

  headerView2 = [(COSRestoreSelectionViewController *)self headerView];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"RESTORE_INSTRUCTION" value:&stru_10026E598 table:@"Localizable"];
  [headerView2 setDetailText:v8];

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

  buttonTray = [(COSRestoreSelectionViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

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
  buttonTray2 = [(COSRestoreSelectionViewController *)self buttonTray];
  [buttonTray2 addButton:self->_setupAsNewButton];

  v25 = [[COSContentSizedTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  backupsTableView = self->_backupsTableView;
  self->_backupsTableView = &v25->super;

  [(UITableView *)self->_backupsTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_backupsTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"COSRestoreTableViewCellID"];
  [(UITableView *)self->_backupsTableView setDelegate:self];
  [(UITableView *)self->_backupsTableView setDataSource:self];
  [(COSRestoreSelectionViewController *)self setTableView:self->_backupsTableView];
}

- (void)tappedContinueButton:(id)button
{
  indexPathForSelectedRow = [(UITableView *)self->_backupsTableView indexPathForSelectedRow];
  v5 = indexPathForSelectedRow;
  if (indexPathForSelectedRow)
  {
    v6 = [indexPathForSelectedRow row];
    v7 = [(UITableView *)self->_backupsTableView cellForRowAtIndexPath:v5];
    updateRequired = [v7 updateRequired];
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Continuing with backup at index: %li", &v10, 0xCu);
    }

    [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
    [(UITableView *)self->_backupsTableView setUserInteractionEnabled:0];
    if (updateRequired)
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

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([(NSIndexPath *)self->_selectedIndex isEqual:pathCopy]& 1) != 0)
  {
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
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
      v10 = [viewCopy cellForRowAtIndexPath:?];
      [v10 setSelected:0];
    }

    v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [v11 setSelected:1];

    objc_storeStrong(&self->_selectedIndex, path);
    [(OBLinkTrayButton *)self->_setupAsNewButton setEnabled:0];
    [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
    [(OBBoldTrayButton *)self->_continueButton setHidden:0];
  }

  return pathCopy;
}

- (void)_triggerRestoreFromIndex:(int64_t)index
{
  v5 = NRDevicePropertyLocalPairingDataStorePath;
  v6 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (v6)
  {
    if ([(NSArray *)self->_pairedDevices count]<= index)
    {
      [(COSRestoreSelectionViewController *)self _triggerRestoreFromBackupIndex:index - [(NSArray *)self->_pairedDevices count]];
    }

    else
    {
      [(COSRestoreSelectionViewController *)self _triggerRestoreFromDeviceIndex:index];
    }
  }

  else
  {
    self->_backupIndex = index;
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

- (void)_triggerUpdate:(int64_t)update
{
  setupController = [UIApp setupController];
  setupSoftwareUpdateManager = [setupController setupSoftwareUpdateManager];
  setupUpdateManager = self->_setupUpdateManager;
  self->_setupUpdateManager = setupSoftwareUpdateManager;

  objc_initWeak(&location, self);
  v8 = self->_setupUpdateManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004A8BC;
  v9[3] = &unk_100269250;
  objc_copyWeak(v10, &location);
  v10[1] = update;
  [(COSSetupSoftwareUpdateManager *)v8 startUpdateInSetupWithController:self forcedUpdateOrUpdateInBackup:1 completion:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_triggerRestoreFromBackupIndex:(int64_t)index
{
  v4 = [(NSArray *)self->_backups objectAtIndex:index];
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

- (void)_triggerRestoreFromDeviceIndex:(int64_t)index
{
  v4 = [(NSArray *)self->_pairedDevices objectAtIndex:index];
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _bridgeConciseDebugDescription = [v4 _bridgeConciseDebugDescription];
    *buf = 138412290;
    v13 = _bridgeConciseDebugDescription;
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

- (void)_restoreFailedWithError:(id)error
{
  backupsTableView = self->_backupsTableView;
  errorCopy = error;
  [(UITableView *)backupsTableView setUserInteractionEnabled:1];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RESTORE_FAILED" value:&stru_10026E598 table:@"Localizable"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"PAIRING_FAILED_ERR_%@" value:&stru_10026E598 table:@"Localizable"];
  errorCopy = [NSString stringWithFormat:v8, errorCopy];

  v10 = [UIAlertController alertControllerWithTitle:v6 message:errorCopy preferredStyle:1];

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

  delegate = [(COSSetupPageViewController *)self delegate];
  [delegate buddyControllerDone:self];
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

  setupController = [UIApp setupController];
  wristChoicesDetected = [setupController wristChoicesDetected];

  delegate = [(COSSetupPageViewController *)self delegate];
  v8 = delegate;
  if (wristChoicesDetected)
  {
    [delegate buddyControllerDone:self];
  }

  else
  {
    [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
  }
}

+ (void)tellLinkUpgradeMonitorAboutBackupStepCompletion
{
  setupController = [UIApp setupController];
  linkUpgradeMonitor = [setupController linkUpgradeMonitor];
  [linkUpgradeMonitor indicateBackupRestoreStepCompleted];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(NSArray *)self->_backups count:view];
  v6 = +[COSBackupManager sharedBackupManager];
  recordedPairingTimeBackupsCount = [v6 recordedPairingTimeBackupsCount];

  if ((recordedPairingTimeBackupsCount & 1) == 0)
  {
    [PBBridgeCAReporter recordPairingTimeBackupsCount:v5];
    v8 = +[COSBackupManager sharedBackupManager];
    [v8 setRecordedPairingTimeBackupsCount:1];
  }

  return [(NSArray *)self->_pairedDevices count]+ v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"COSRestoreTableViewCellID"];
  v8 = [pathCopy row];

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
  newTinkerAccountCreated = [UIApp newTinkerAccountCreated];
  if (newTinkerAccountCreated)
  {
    [objc_opt_class() tellLinkUpgradeMonitorAboutBackupStepCompletion];
  }

  return newTinkerAccountCreated ^ 1;
}

- (BOOL)holdBeforeDisplaying
{
  v3 = +[COSBackupManager sharedBackupManager];
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  if (isTinkerPairing)
  {
    [v3 reloadBackups];
  }

  shouldOfferToRestore = [v3 shouldOfferToRestore];
  if (shouldOfferToRestore)
  {
    v7 = +[COSBackupManager sharedBackupManager];
    backups = [v7 backups];
    backups = self->_backups;
    self->_backups = backups;
  }

  else
  {
    [v3 setDelegate:self];
  }

  return shouldOfferToRestore == 0;
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_BACKUP_LOAD_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (void)backupsChanged:(unint64_t)changed
{
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    changedCopy = changed;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "backups changed with status: %lu", buf, 0xCu);
  }

  v6 = +[COSBackupManager sharedBackupManager];
  backups = [v6 backups];
  backups = self->_backups;
  self->_backups = backups;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004BB24;
  v9[3] = &unk_100268220;
  v9[4] = self;
  v9[5] = changed;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  deviceCopy = device;
  v8 = NRDevicePropertyLocalPairingDataStorePath;
  if ([change isEqualToString:NRDevicePropertyLocalPairingDataStorePath])
  {
    v9 = [deviceCopy valueForProperty:v8];

    if (v9)
    {
      v11 = v8;
      v10 = [NSArray arrayWithObjects:&v11 count:1];
      [deviceCopy removePropertyObserver:self forPropertyChanges:v10];

      [(COSRestoreSelectionViewController *)self _triggerRestoreFromIndex:self->_backupIndex];
    }
  }
}

@end