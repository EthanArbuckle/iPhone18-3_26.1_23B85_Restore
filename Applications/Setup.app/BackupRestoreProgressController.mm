@interface BackupRestoreProgressController
- (BFFFlowItemDelegate)delegate;
- (BOOL)hasAssertions;
- (BOOL)takeAssertions;
- (BackupRestoreProgressController)init;
- (id)_createRestoreOptions;
- (id)latestSnapshotForBackupUUID:(id)d backupCompletedDate:(id)date lastSnapshotDate:(id)snapshotDate error:(id *)error;
- (id)latestSnapshotForBackupUUID:(id)d lastSnapshotDate:(id)date error:(id *)error;
- (id)latestSnapshotForSourceDevice:(id *)device;
- (id)waitForBackupToComplete;
- (void)_attemptRestore;
- (void)_failedToStartRestoreForSnapshotID:(unint64_t)d error:(id)error;
- (void)_presentAlert:(id)alert;
- (void)_traceAnalyticsForGuideUserToBackup:(id)backup foundBackup:(BOOL)foundBackup polledForBackup:(BOOL)forBackup;
- (void)backupDeviceController:(id)controller backupCompletedWithError:(id)error;
- (void)backupProgress:(double)progress estimatedTimeRemaining:(unint64_t)remaining;
- (void)controllerWasPopped;
- (void)dealloc;
- (void)handleBackupFailed:(id)failed;
- (void)loadView;
- (void)manager:(id)manager didFailRestoreWithError:(id)error;
- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining;
- (void)managerDidFinishRestore:(id)restore;
- (void)managerDidLoseConnectionToService:(id)service;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)popBackFromProgress;
- (void)reattemptBackup;
- (void)releaseAssertions;
- (void)renewCredentialsThenStartRestore:(id)restore;
- (void)restoreFailedWithError:(id)error;
- (void)setAlert:(id)alert;
- (void)startRestore:(id)restore;
- (void)updateProgress;
- (void)updateProgressText;
- (void)viewDidAppear:(BOOL)appear;
- (void)willResignActive;
@end

@implementation BackupRestoreProgressController

- (BackupRestoreProgressController)init
{
  v12 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"RESTORING_FROM_BACKUP" value:&stru_10032F900 table:@"RestoreFromBackup"];
  location = 0;
  v11.receiver = self;
  v11.super_class = BackupRestoreProgressController;
  v5 = [(BackupRestoreProgressController *)&v11 initWithTitle:v4 detailText:0 icon:0];
  location = v5;
  objc_storeStrong(&location, v5);

  if (v5)
  {
    v6 = objc_alloc_init(MBManager);
    v7 = *(location + 13);
    *(location + 13) = v6;

    [*(location + 13) setDelegate:location];
    *(location + 15) = 0;
    *(location + 16) = 0;
    v8 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v8 addObserver:location selector:"willResignActive" name:UIApplicationWillResignActiveNotification object:0];
  }

  v9 = location;
  objc_storeStrong(&location, 0);
  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  [(BackupRestoreProgressController *)self releaseAssertions];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy name:UIApplicationWillResignActiveNotification object:0];

  v3.receiver = selfCopy;
  v3.super_class = BackupRestoreProgressController;
  [(BackupRestoreProgressController *)&v3 dealloc];
}

- (void)loadView
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BackupRestoreProgressController;
  [(BackupRestoreProgressController *)&v3 loadView];
  [(BackupRestoreProgressController *)selfCopy updateProgressText];
  navigationItem = [(BackupRestoreProgressController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];
}

- (void)willResignActive
{
  selfCopy = self;
  v11 = a2;
  if ([(BackupRestoreProgressController *)self restoreState]== 1)
  {
    theArray = CTCopyCurrentCalls();
    if (theArray)
    {
      v9 = CFArrayGetCount(theArray) > 0;
      CFRelease(theArray);
      if (v9)
      {
        oslog = _BYLoggingFacility();
        v7 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v2 = oslog;
          v3 = v7;
          sub_10006AA68(v6);
          _os_log_impl(&_mh_execute_header, v2, v3, "Canceling restore due to incoming call", v6, 2u);
        }

        objc_storeStrong(&oslog, 0);
        [(BackupRestoreProgressController *)selfCopy setRestoreState:3];
        [(MBManager *)selfCopy->_backupManager cancel];
        navigationController = [(BackupRestoreProgressController *)selfCopy navigationController];
        v5 = [navigationController popViewControllerAnimated:0];
      }
    }
  }
}

- (void)popBackFromProgress
{
  backupDeviceController = [(BackupRestoreProgressController *)self backupDeviceController];
  [(BFFBackupDeviceController *)backupDeviceController reset];

  navigationController = [(BackupRestoreProgressController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    delegate = [(BackupRestoreProgressController *)self delegate];
    v6 = [(BFFFlowItemDelegate *)delegate popToBuddyControllerWithClass:objc_opt_class() animated:1];

    if (!v6)
    {
      delegate2 = [(BackupRestoreProgressController *)self delegate];
      v8 = [(BFFFlowItemDelegate *)delegate2 popToBuddyControllerWithClass:objc_opt_class() animated:1];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = BackupRestoreProgressController;
  [(BackupRestoreProgressController *)&v6 viewDidAppear:appear];
  alert = [(BackupRestoreProgressController *)selfCopy alert];

  if (alert)
  {
    v4 = selfCopy;
    alert2 = [(BackupRestoreProgressController *)selfCopy alert];
    [(BackupRestoreProgressController *)v4 presentViewController:alert2 animated:1 completion:0];
  }
}

- (void)renewCredentialsThenStartRestore:(id)restore
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restore);
  v3 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];

  v4 = +[BFFAppleAccountInfo primaryAccountInfo];
  rawPassword = [v4 rawPassword];
  [aa_primaryAppleAccount _aa_setRawPassword:rawPassword];

  v6 = +[BYSecurityInterface sharedInterface];
  LOBYTE(v4) = [v6 isICDPEnabledForPrimaryAccount];

  if (v4)
  {
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v20;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v7, v8, "Renewing account credentials prior to restore...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v25 = kACRenewCredentialsShouldAvoidUIKey;
    v26 = &__kCFBooleanTrue;
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v9 = +[ACAccountStore defaultStore];
    v10 = aa_primaryAppleAccount;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10008CF88;
    v15 = &unk_10032B860;
    v16 = selfCopy;
    v17 = location[0];
    [v9 renewCredentialsForAccount:v10 options:v18 completion:&v11];

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    [(BackupRestoreProgressController *)selfCopy startRestore:location[0]];
  }

  objc_storeStrong(&aa_primaryAppleAccount, 0);
  objc_storeStrong(location, 0);
}

- (void)startRestore:(id)restore
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restore);
  v3 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10008D304;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_failedToStartRestoreForSnapshotID:(unint64_t)d error:(id)error
{
  selfCopy = self;
  v77 = a2;
  dCopy = d;
  location = 0;
  objc_storeStrong(&location, error);
  v74 = 0;
  domain = [location domain];
  v5 = 0;
  if ([domain isEqualToString:@"MBErrorDomain"])
  {
    v5 = [location code] == 204;
  }

  if (v5)
  {
    oslog = _BYLoggingFacility();
    v72 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = dCopy;
      backupItem = [selfCopy backupItem];
      backupUDID = [backupItem backupUDID];
      sub_10008E19C(buf, v6, backupUDID);
      _os_log_impl(&_mh_execute_header, oslog, v72, "Unable to find the snapshot ID %ld in backup UDID %@; searching for one that is the same...", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v71 = 0;
    backupItem2 = [selfCopy backupItem];
    backupUUID = [backupItem2 backupUUID];
    v11 = *(selfCopy + 13);
    obj = 0;
    v12 = [BuddyBackupUtilities backupForUUID:backupUUID withManager:v11 error:&obj];
    objc_storeStrong(&v71, obj);
    v70 = v12;

    if (!v71 && v70)
    {
      v62 = 0;
      memset(__b, 0, sizeof(__b));
      snapshots = [v70 snapshots];
      v15 = [snapshots countByEnumeratingWithState:__b objects:v81 count:16];
      if (v15)
      {
        v16 = *__b[2];
        do
        {
          for (i = 0; i < v15; ++i)
          {
            if (*__b[2] != v16)
            {
              objc_enumerationMutation(snapshots);
            }

            v61 = *(__b[1] + 8 * i);
            date = [v61 date];
            backupItem3 = [selfCopy backupItem];
            snapshot = [backupItem3 snapshot];
            date2 = [snapshot date];
            v22 = [date isEqualToDate:date2];

            if (v22)
            {
              objc_storeStrong(&v62, v61);
              v59 = 2;
              goto LABEL_29;
            }
          }

          v15 = [snapshots countByEnumeratingWithState:__b objects:v81 count:16];
        }

        while (v15);
      }

      v59 = 0;
LABEL_29:

      if (v62)
      {
        v55 = _BYLoggingFacility();
        v54 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          snapshotID = [v62 snapshotID];
          backupItem4 = [selfCopy backupItem];
          backupUDID2 = [backupItem4 backupUDID];
          sub_10008E19C(v80, snapshotID, backupUDID2);
          _os_log_impl(&_mh_execute_header, v55, v54, "Found snapshot ID %ld in backup UDID %@ that was the same!", v80, 0x16u);
        }

        objc_storeStrong(&v55, 0);
        backupItem5 = [selfCopy backupItem];
        backup = [backupItem5 backup];
        v30 = [RestorableBackupItem restorableBackupItemWithBackup:backup snapshot:v62];
        [selfCopy setBackupItem:v30];

        v53 = _BYLoggingFacility();
        v52 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          backupItem6 = [selfCopy backupItem];
          backupUDID3 = [backupItem6 backupUDID];
          sub_10007B2CC(v79, backupUDID3, [v62 snapshotID]);
          _os_log_impl(&_mh_execute_header, v53, v52, "Starting iCloud Restore for backup UDID %@ and snapshot %ld...", v79, 0x16u);
        }

        objc_storeStrong(&v53, 0);
        backupManager = [selfCopy backupManager];
        backupItem7 = [selfCopy backupItem];
        backupUDID4 = [backupItem7 backupUDID];
        snapshotID2 = [v62 snapshotID];
        _createRestoreOptions = [selfCopy _createRestoreOptions];
        v46 = _NSConcreteStackBlock;
        v47 = -1073741824;
        v48 = 0;
        v49 = sub_10008E1BC;
        v50 = &unk_10032B6F0;
        v51 = selfCopy;
        [backupManager startRestoreForBackupUDID:backupUDID4 snapshotID:snapshotID2 options:_createRestoreOptions completion:&v46];

        v74 = 1;
        objc_storeStrong(&v51, 0);
      }

      else
      {
        v58 = _BYLoggingFacility();
        v57 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v58;
          v24 = v57;
          sub_10006AA68(v56);
          _os_log_impl(&_mh_execute_header, v23, v24, "Failed to find a snapshot that was the same!", v56, 2u);
        }

        objc_storeStrong(&v58, 0);
      }

      objc_storeStrong(&v62, 0);
    }

    else
    {
      v68 = _BYLoggingFacility();
      v67 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v65 = 0;
        v63 = 0;
        if (_BYIsInternalInstall())
        {
          v13 = v71;
        }

        else if (v71)
        {
          domain2 = [v71 domain];
          v65 = 1;
          v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain2, [v71 code]);
          v64 = v13;
          v63 = 1;
        }

        else
        {
          v13 = 0;
        }

        sub_100071CBC(v82, v13);
        _os_log_impl(&_mh_execute_header, v68, v67, "Failed to get the list of backups: %{public}@", v82, 0xCu);
        if (v63)
        {
        }

        if (v65)
        {
        }
      }

      objc_storeStrong(&v68, 0);
    }

    objc_storeStrong(&v70, 0);
    objc_storeStrong(&v71, 0);
  }

  if ((v74 & 1) == 0)
  {
    v38 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v40 = -1073741824;
    v41 = 0;
    v42 = sub_10008E410;
    v43 = &unk_10032B838;
    v44 = selfCopy;
    v45 = location;
    dispatch_async(v38, &block);

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v44, 0);
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)hasAssertions
{
  processAssertion = [(BackupRestoreProgressController *)self processAssertion];
  v3 = 0;
  if (processAssertion)
  {
    v4 = processAssertion;
    deviceLockAssertion = [(BackupRestoreProgressController *)self deviceLockAssertion];
    processAssertion = v4;
    v3 = deviceLockAssertion != 0;
  }

  return v3;
}

- (BOOL)takeAssertions
{
  selfCopy = self;
  location[1] = a2;
  processAssertion = [(BackupRestoreProgressController *)self processAssertion];
  [(RBSAssertion *)processAssertion invalidate];

  v3 = [RBSAssertion alloc];
  v4 = [RBSTarget targetWithPid:getpid()];
  v5 = [RBSDomainAttribute attributeWithDomain:@"com.apple.purplebuddy" name:@"Update"];
  v52 = v5;
  v6 = [NSArray arrayWithObjects:&v52 count:1];
  v7 = [v3 initWithExplanation:@"iCloud Restore" target:v4 attributes:v6];
  [(BackupRestoreProgressController *)selfCopy setProcessAssertion:v7];

  location[0] = 0;
  processAssertion2 = [(BackupRestoreProgressController *)selfCopy processAssertion];
  v43 = 0;
  LOBYTE(v7) = [(RBSAssertion *)processAssertion2 acquireWithError:&v43];
  objc_storeStrong(location, v43);

  if ((v7 ^ 1))
  {
    v42 = _BYLoggingFacility();
    v41 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v39 = 0;
      v37 = 0;
      if (_BYIsInternalInstall())
      {
        v9 = location[0];
      }

      else if (location[0])
      {
        domain = [location[0] domain];
        v39 = 1;
        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [location[0] code]);
        v38 = v9;
        v37 = 1;
      }

      else
      {
        v9 = 0;
      }

      sub_100071CBC(buf, v9);
      _os_log_error_impl(&_mh_execute_header, v42, v41, "Failed to take process assertion during migration: %{public}@", buf, 0xCu);
      if (v37)
      {
      }

      if (v39)
      {
      }
    }

    objc_storeStrong(&v42, 0);
    [(BackupRestoreProgressController *)selfCopy releaseAssertions];
    v46 = 0;
    v36 = 1;
  }

  else
  {
    v35 = _BYLoggingFacility();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v35;
      v11 = v34;
      sub_10006AA68(v33);
      _os_log_impl(&_mh_execute_header, v10, v11, "Process lock assertion successfully taken during restore", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    v32 = 0;
    if ([(BackupRestoreProgressController *)selfCopy softwareUpdateDidOccur])
    {
      v31 = objc_alloc_init(BYBuddyDaemonGeneralClient);
      [v31 cancelDataMigratorDeferredExit];
      [(BackupRestoreProgressController *)selfCopy setDeviceLockAssertion:MKBDeviceLockAssertionConsume()];
      if ([(BackupRestoreProgressController *)selfCopy deviceLockAssertion])
      {
        v30 = _BYLoggingFacility();
        v29 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v30;
          v13 = v29;
          sub_10006AA68(v28);
          _os_log_impl(&_mh_execute_header, v12, v13, "Device lock assertion successfully consumed during restore", v28, 2u);
        }

        objc_storeStrong(&v30, 0);
      }

      else
      {
        oslog = _BYLoggingFacility();
        v26 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v25 = 0;
          v24 = 0;
          if (_BYIsInternalInstall())
          {
            v14 = v32;
          }

          else
          {
            v14 = 0;
          }

          sub_100071CBC(v50, v14);
          _os_log_error_impl(&_mh_execute_header, oslog, v26, "Failed to consume device lock assertion during restore - %{public}@", v50, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v31, 0);
    }

    else
    {
      v48 = @"MKBAssertionKey";
      v49 = @"RestoreFromBackup";
      v23 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      [(BackupRestoreProgressController *)selfCopy setDeviceLockAssertion:MKBDeviceLockAssertion()];
      if ([(BackupRestoreProgressController *)selfCopy deviceLockAssertion])
      {
        v22 = _BYLoggingFacility();
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v22;
          v16 = v21;
          sub_10006AA68(v20);
          _os_log_impl(&_mh_execute_header, v15, v16, "Device lock assertion successfully taken during restore", v20, 2u);
        }

        objc_storeStrong(&v22, 0);
      }

      else
      {
        v19 = _BYLoggingFacility();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          if (_BYIsInternalInstall())
          {
            v17 = v32;
          }

          else
          {
            v17 = 0;
          }

          sub_100071CBC(v47, v17);
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to take device lock assertion during restore - %{public}@", v47, 0xCu);
        }

        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(&v23, 0);
    }

    if ([(BackupRestoreProgressController *)selfCopy deviceLockAssertion])
    {
      v46 = 1;
    }

    else
    {
      [(BackupRestoreProgressController *)selfCopy releaseAssertions];
      CFRelease(v32);
      v46 = 0;
    }

    v36 = 1;
  }

  objc_storeStrong(location, 0);
  return v46 & 1;
}

- (void)releaseAssertions
{
  selfCopy = self;
  oslog[1] = a2;
  processAssertion = [(BackupRestoreProgressController *)self processAssertion];

  if (processAssertion)
  {
    oslog[0] = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v12;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Releasing process assertion", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    processAssertion2 = [(BackupRestoreProgressController *)selfCopy processAssertion];
    [(RBSAssertion *)processAssertion2 invalidate];

    [(BackupRestoreProgressController *)selfCopy setProcessAssertion:0];
  }

  if ([(BackupRestoreProgressController *)selfCopy deviceLockAssertion])
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v10;
      v7 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v6, v7, "Releasing device lock assertion taken during restore", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    CFRelease([(BackupRestoreProgressController *)selfCopy deviceLockAssertion]);
    [(BackupRestoreProgressController *)selfCopy setDeviceLockAssertion:0];
  }
}

- (void)setAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  if (!selfCopy->_alert)
  {
    objc_storeStrong(&selfCopy->_alert, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)updateProgress
{
  if (self->_backupThenRestore)
  {
    backupPercentComplete = self->_backupPercentComplete;
    [(BackupRestoreProgressController *)self restorePercentComplete];
    [(BackupRestoreProgressController *)self setProgress:(backupPercentComplete + v3) / 2.0];
  }

  else
  {
    [(BackupRestoreProgressController *)self restorePercentComplete];
    [(BackupRestoreProgressController *)self setProgress:v4];
  }
}

- (void)updateProgressText
{
  if (![(BackupRestoreProgressController *)self restoreState]&& self->_backupThenRestore)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [(NSBundle *)v4 localizedStringForKey:@"WAITING_FOR_BACKUP" value:&stru_10032F900 table:@"RestoreFromBackup"];
    backupDeviceController = [(BackupRestoreProgressController *)self backupDeviceController];
    backingUpDeviceName = [(BFFBackupDeviceController *)backupDeviceController backingUpDeviceName];
    v8 = [NSString localizedStringWithFormat:v5, backingUpDeviceName];
    [(BackupRestoreProgressController *)self setTitle:v8];
  }

  else
  {
    v2 = +[NSBundle mainBundle];
    v3 = [(NSBundle *)v2 localizedStringForKey:@"RESTORING_FROM_BACKUP" value:&stru_10032F900 table:@"RestoreFromBackup"];
    [(BackupRestoreProgressController *)self setTitle:v3];
  }
}

- (id)latestSnapshotForSourceDevice:(id *)device
{
  backupDeviceController = [(BackupRestoreProgressController *)self backupDeviceController];
  backingUpDeviceUUID = [(BFFBackupDeviceController *)backupDeviceController backingUpDeviceUUID];
  backupDeviceController2 = [(BackupRestoreProgressController *)self backupDeviceController];
  completionDate = [(BFFBackupDeviceController *)backupDeviceController2 completionDate];
  v8 = [(BackupRestoreProgressController *)self latestSnapshotForBackupUUID:backingUpDeviceUUID backupCompletedDate:completionDate lastSnapshotDate:self->_lastSourceDeviceSnapshotDate error:device];

  return v8;
}

- (id)latestSnapshotForBackupUUID:(id)d lastSnapshotDate:(id)date error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v9 = 0;
  objc_storeStrong(&v9, date);
  v7 = [(BackupRestoreProgressController *)selfCopy latestSnapshotForBackupUUID:location[0] backupCompletedDate:0 lastSnapshotDate:v9 error:error];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)latestSnapshotForBackupUUID:(id)d backupCompletedDate:(id)date lastSnapshotDate:(id)snapshotDate error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v71 = 0;
  objc_storeStrong(&v71, date);
  v70 = 0;
  objc_storeStrong(&v70, snapshotDate);
  errorCopy = error;
  v68 = 0;
  backupManager = selfCopy->_backupManager;
  obj = 0;
  v10 = [BuddyBackupUtilities backupForUUID:location[0] withManager:backupManager error:&obj];
  objc_storeStrong(&v68, obj);
  v67 = v10;
  if (v68 || !v67)
  {
    oslog = _BYLoggingFacility();
    v64 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v62 = 0;
      v60 = 0;
      if (_BYIsInternalInstall())
      {
        v11 = v68;
      }

      else if (v68)
      {
        domain = [v68 domain];
        v62 = 1;
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v68 code]);
        v61 = v11;
        v60 = 1;
      }

      else
      {
        v11 = 0;
      }

      sub_100071CBC(buf, v11);
      _os_log_impl(&_mh_execute_header, oslog, v64, "Failed to get the list of backups: %{public}@", buf, 0xCu);
      if (v60)
      {
      }

      if (v62)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    if (errorCopy)
    {
      v12 = v68;
      *errorCopy = v12;
    }

LABEL_61:
    v74 = 0;
    v44 = 1;
    goto LABEL_62;
  }

  v59 = _BYLoggingFacility();
  v58 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    sub_100078180(v82, v71, v70);
    _os_log_impl(&_mh_execute_header, v59, v58, "Looking for a snapshot that is same or newer than %@ or newer than %@", v82, 0x16u);
  }

  objc_storeStrong(&v59, 0);
  v57 = 0;
  snapshots = [v67 snapshots];
  v14 = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:0];
  v81 = v14;
  v15 = [NSArray arrayWithObjects:&v81 count:1];
  v56 = [snapshots sortedArrayUsingDescriptors:v15];

  if ([v56 count])
  {
    memset(__b, 0, sizeof(__b));
    v16 = v56;
    v17 = [v16 countByEnumeratingWithState:__b objects:v80 count:16];
    if (v17)
    {
      v18 = *__b[2];
      do
      {
        for (i = 0; i < v17; ++i)
        {
          if (*__b[2] != v18)
          {
            objc_enumerationMutation(v16);
          }

          v55 = *(__b[1] + 8 * i);
          if ([v55 state] == 3 && +[BuddyBackupUtilities snapshotIsCompatibleWithCurrentSystemVersion:](BuddyBackupUtilities, "snapshotIsCompatibleWithCurrentSystemVersion:", v55))
          {
            date = [v55 date];
            v21 = [date compare:v71];

            v53 = v21;
            if (v71 && v53 <= 1)
            {
              v52 = _BYLoggingFacility();
              v51 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v52;
                v23 = v51;
                snapshotID = [v55 snapshotID];
                date2 = [v55 date];
                sub_10008FCD8(v79, snapshotID, date2, v71);
                _os_log_impl(&_mh_execute_header, v22, v23, "Choosing snapshot ID %ld (%@) as it is the same or newer than the backup the source device just made (%@)", v79, 0x20u);
              }

              objc_storeStrong(&v52, 0);
              objc_storeStrong(&v57, v55);
            }

            else
            {
              v49 = 0;
              v26 = 0;
              if (v70)
              {
                date3 = [v55 date];
                v49 = 1;
                v26 = [date3 compare:v70] == 1;
              }

              if (v49)
              {
              }

              if (v26)
              {
                v48 = _BYLoggingFacility();
                v47 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = v48;
                  v28 = v47;
                  snapshotID2 = [v55 snapshotID];
                  date4 = [v55 date];
                  sub_10008FCD8(v78, snapshotID2, date4, v70);
                  _os_log_impl(&_mh_execute_header, v27, v28, "Choosing snapshot ID %ld (%@) as it is newer than the reported newest backup (%@)", v78, 0x20u);
                }

                objc_storeStrong(&v48, 0);
                objc_storeStrong(&v57, v55);
              }

              else
              {
                v46 = _BYLoggingFacility();
                v45 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = v46;
                  v32 = v45;
                  snapshotID3 = [v55 snapshotID];
                  date5 = [v55 date];
                  sub_10008FD00(v77, snapshotID3, date5, v70, v71);
                  _os_log_impl(&_mh_execute_header, v31, v32, "Not picking snapshot ID %ld (%@) as it is older than both the existing backup (%@) and the new backup (%@)", v77, 0x2Au);
                }

                objc_storeStrong(&v46, 0);
              }
            }

            if (v57)
            {
              v44 = 2;
              goto LABEL_51;
            }
          }

          else
          {
            v43 = _BYLoggingFacility();
            v42 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v43;
              sub_100077E48(v76, [v55 snapshotID]);
              _os_log_impl(&_mh_execute_header, v35, v42, "Skipping snapshot ID %ld as it's not committed and/or not compatible", v76, 0xCu);
            }

            objc_storeStrong(&v43, 0);
          }
        }

        v17 = [v16 countByEnumeratingWithState:__b objects:v80 count:16];
      }

      while (v17);
    }

    v44 = 0;
LABEL_51:
  }

  else
  {
    v41 = _BYLoggingFacility();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v75, location[0]);
      _os_log_impl(&_mh_execute_header, v41, v40, "No snapshots found for device backup UUID %@", v75, 0xCu);
    }

    objc_storeStrong(&v41, 0);
  }

  if (v57)
  {
    v39 = [RestorableBackupItem restorableBackupItemWithBackup:v67 snapshot:v57];
    v74 = v39;
    v44 = 1;
    objc_storeStrong(&v39, 0);
  }

  else
  {
    if (errorCopy)
    {
      v36 = [NSError errorWithDomain:@"BackupRestoreProgressErrorDomain" code:-1 userInfo:0];
      *errorCopy = v36;
    }

    v44 = 0;
  }

  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
  if (!v44)
  {
    goto LABEL_61;
  }

LABEL_62:
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, 0);
  v37 = v74;

  return v37;
}

- (void)reattemptBackup
{
  selfCopy = self;
  v16[1] = a2;
  if ([(BackupRestoreProgressController *)self takeAssertions])
  {
    selfCopy->_backupThenRestore = 1;
    selfCopy->_backupPercentComplete = 0.0;
    [(BackupRestoreProgressController *)selfCopy updateProgress];
    [(BackupRestoreProgressController *)selfCopy updateProgressText];
    [(BackupRestoreProgressController *)selfCopy setTimeRemainingEstimate:1.79769313e308];
    v2 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10008FF58;
    v15 = &unk_10032B0D0;
    v16[0] = selfCopy;
    dispatch_async(v2, &block);

    objc_storeStrong(v16, 0);
  }

  else
  {
    objc_initWeak(&location, selfCopy);
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100090114;
    v7 = &unk_10032AF58;
    objc_copyWeak(&v8, &location);
    v9 = [BuddyRestoreHelpers alertForBackupError:0 forBackup:1 okButtonAction:&v3];
    [(BackupRestoreProgressController *)selfCopy _presentAlert:v9];
    objc_storeStrong(&v9, 0);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)handleBackupFailed:(id)failed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, failed);
  [(BackupRestoreProgressController *)selfCopy releaseAssertions];
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100090270;
  v8 = &unk_10032B838;
  v9 = location[0];
  v10 = selfCopy;
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_traceAnalyticsForGuideUserToBackup:(id)backup foundBackup:(BOOL)foundBackup polledForBackup:(BOOL)forBackup
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, backup);
  foundBackupCopy = foundBackup;
  forBackupCopy = forBackup;
  v19[0] = @"success";
  v7 = [NSNumber numberWithInt:location[0] == 0];
  v20[0] = v7;
  v19[1] = @"foundBackup";
  v8 = [NSNumber numberWithBool:foundBackup];
  v20[1] = v8;
  v19[2] = @"polledForBackup";
  v9 = [NSNumber numberWithBool:forBackupCopy];
  v20[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v14 = [NSMutableDictionary dictionaryWithDictionary:v10];

  if (location[0])
  {
    domain = [location[0] domain];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%ld)", domain, [location[0] code]);
    [v14 setObject:v12 forKeyedSubscript:@"error"];
  }

  analyticsManager = [(BackupRestoreProgressController *)selfCopy analyticsManager];
  [(BYAnalyticsManager *)analyticsManager addEvent:@"com.apple.setupassistant.ios.guideUserToBackup" withPayload:v14 persist:1];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100091690;
  v16 = &unk_10032B838;
  v17 = selfCopy;
  v18 = location[0];
  v19 = objc_retainBlock(&v12);
  v3 = +[NSThread currentThread];
  v4 = +[NSThread mainThread];

  if (v3 == v4)
  {
    (*(v19 + 2))();
  }

  else
  {
    v5 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100091808;
    v10 = &unk_10032B120;
    v11 = v19;
    dispatch_async(v5, &block);

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_attemptRestore
{
  selfCopy = self;
  location[1] = a2;
  if ([(BackupRestoreProgressController *)self hasAssertions])
  {
    backupDeviceController = [(BackupRestoreProgressController *)selfCopy backupDeviceController];
    [(BFFBackupDeviceController *)backupDeviceController setDelegate:selfCopy];

    backupDeviceController2 = [(BackupRestoreProgressController *)selfCopy backupDeviceController];
    isBackingUp = [(BFFBackupDeviceController *)backupDeviceController2 isBackingUp];
    v32 = 0;
    backupStateUnknown = 1;
    if ((isBackingUp & 1) == 0)
    {
      backupDeviceController3 = [(BackupRestoreProgressController *)selfCopy backupDeviceController];
      v32 = 1;
      backupStateUnknown = [backupDeviceController3 backupStateUnknown];
    }

    selfCopy->_backupThenRestore = backupStateUnknown & 1;
    if (v32)
    {
    }

    if (selfCopy->_backupThenRestore)
    {
      backupItem = [(BackupRestoreProgressController *)selfCopy backupItem];
      snapshot = [(RestorableBackupItem *)backupItem snapshot];
      date = [(MBSnapshot *)snapshot date];
      lastSourceDeviceSnapshotDate = selfCopy->_lastSourceDeviceSnapshotDate;
      selfCopy->_lastSourceDeviceSnapshotDate = date;
    }

    passcodeCacheManager = [(BackupRestoreProgressController *)selfCopy passcodeCacheManager];
    [(BYPasscodeCacheManager *)passcodeCacheManager persistPasscodeStash];

    objc_initWeak(&v31, selfCopy);
    v23 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_100091F3C;
    v28 = &unk_10032B8B0;
    v29 = selfCopy;
    objc_copyWeak(&v30, &v31);
    dispatch_async(v23, &block);

    objc_destroyWeak(&v30);
    objc_storeStrong(&v29, 0);
    objc_destroyWeak(&v31);
  }

  else
  {
    location[0] = _BYLoggingFacility();
    v51 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = location[0];
      v3 = v51;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "attempted restore without assertions bailing early...", buf, 2u);
    }

    objc_storeStrong(location, 0);
    objc_initWeak(&from, selfCopy);
    v4 = +[NSBundle mainBundle];
    v5 = [(NSBundle *)v4 localizedStringForKey:@"BACKUP_FAILED_ALERT_TITLE" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v48 = [UIAlertController alertControllerWithTitle:v5 message:&stru_10032F900 preferredStyle:1];

    v6 = v48;
    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"CHOOSE_A_DIFFERENT_BACKUP" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v42 = _NSConcreteStackBlock;
    v43 = -1073741824;
    v44 = 0;
    v45 = sub_100091E64;
    v46 = &unk_10032B928;
    objc_copyWeak(&v47, &from);
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:&v42];
    [v6 addAction:v9];
    v41 = 0;

    v10 = v48;
    v11 = +[NSBundle mainBundle];
    v12 = [(NSBundle *)v11 localizedStringForKey:@"TRY_AGAIN_ALERT" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v35 = _NSConcreteStackBlock;
    v36 = -1073741824;
    v37 = 0;
    v38 = sub_100091ECC;
    v39 = &unk_10032B928;
    objc_copyWeak(&v40, &from);
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v35];
    [v10 addAction:v13];
    v34 = 0;

    [(BackupRestoreProgressController *)selfCopy _presentAlert:v48];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v47);
    objc_storeStrong(&v48, 0);
    objc_destroyWeak(&from);
  }
}

- (void)restoreFailedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  [(BackupRestoreProgressController *)selfCopy setRestoreState:2];
  objc_initWeak(&from, selfCopy);
  v3 = location[0];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100092FB0;
  v8 = &unk_10032AF58;
  objc_copyWeak(&v9, &from);
  v10 = [BuddyRestoreHelpers alertForBackupError:v3 okButtonAction:&v4];
  [(BackupRestoreProgressController *)selfCopy _presentAlert:v10];
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (id)waitForBackupToComplete
{
  selfCopy = self;
  v30[1] = a2;
  v30[0] = 0;
  location = 0;
  backupDeviceController = [(BackupRestoreProgressController *)self backupDeviceController];
  [(BFFBackupDeviceController *)backupDeviceController timeRemaining];
  v4 = v3;

  v28 = v4;
  if (v4 * 60.0 * 1.2 >= 900.0)
  {
    v5 = 900.0;
  }

  else
  {
    v5 = v28 * 60.0 * 1.2;
  }

  *&v27 = v5;
  v26 = 10.0;
  oslog = _BYLoggingFacility();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, v27);
    _os_log_impl(&_mh_execute_header, oslog, v24, "Polling backup to determine when the source devices finishes backing up for %f seconds...", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  for (i = 0.0; i < *&v27; i = i + v26)
  {
    obj = location;
    v6 = [(BackupRestoreProgressController *)selfCopy latestSnapshotForSourceDevice:&obj, i];
    objc_storeStrong(&location, obj);
    v7 = v30[0];
    v30[0] = v6;

    if (v30[0])
    {
      break;
    }

    if (location)
    {
      v21 = _BYLoggingFacility();
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v21;
        v9 = v20;
        v10 = _BYIsInternalInstall();
        v18 = 0;
        v16 = 0;
        if (v10)
        {
          v11 = location;
        }

        else if (location)
        {
          domain = [location domain];
          v18 = 1;
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [location code]);
          v17 = v11;
          v16 = 1;
        }

        else
        {
          v11 = 0;
        }

        sub_100071CBC(v33, v11);
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed to determine latest backup: %{public}@", v33, 0xCu);
        if (v16)
        {
        }

        if (v18)
        {
        }
      }

      objc_storeStrong(&v21, 0);
    }

    v15 = _BYLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v15;
      sub_100077E48(v32, *&v26);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No latest backup found; sleeping for %f seconds...", v32, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    sleep(v26);
  }

  v13 = v30[0];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v30, 0);
  return v13;
}

- (id)_createRestoreOptions
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(MBStartRestoreOptions);
  pendingRestoreState = [(BackupRestoreProgressController *)selfCopy pendingRestoreState];
  allowCellularNetwork = [(BuddyPendingRestoreState *)pendingRestoreState allowCellularNetwork];

  if (allowCellularNetwork)
  {
    v4 = +[MBCellularAccess inexpensiveCellularAccess];
    [location[0] setCellularAccess:v4];
  }

  v5 = location[0];
  objc_storeStrong(location, 0);
  return v5;
}

- (void)controllerWasPopped
{
  if ([(BackupRestoreProgressController *)self restoreState]== 1)
  {
    [(BackupRestoreProgressController *)self setRestoreState:3];
    [(MBManager *)self->_backupManager cancel];
  }
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(BackupRestoreProgressController *)selfCopy takeAssertions];
  [(BackupRestoreProgressController *)selfCopy _attemptRestore];
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(location, 0);
}

- (void)backupDeviceController:(id)controller backupCompletedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v74 = 0;
  objc_storeStrong(&v74, error);
  if (v74)
  {
    domain = [v74 domain];
    v6 = 0;
    if (domain == @"BFFBackupDeviceErrorDomain")
    {
      v7 = domain;
      code = [v74 code];
      domain = v7;
      v6 = code == -1;
    }

    if (v6)
    {
      v73 = _BYLoggingFacility();
      v72 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v73;
        v10 = v72;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v9, v10, "Source device disconnected while waiting for backup to complete", buf, 2u);
      }

      objc_storeStrong(&v73, 0);
      waitForBackupToComplete = [(BackupRestoreProgressController *)selfCopy waitForBackupToComplete];
      [(BackupRestoreProgressController *)selfCopy _traceAnalyticsForGuideUserToBackup:0 foundBackup:waitForBackupToComplete != 0 polledForBackup:1];
      if (waitForBackupToComplete)
      {
        [(BackupRestoreProgressController *)selfCopy renewCredentialsThenStartRestore:waitForBackupToComplete];
      }

      else
      {
        v69 = _BYLoggingFacility();
        v68 = 16;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v11 = v69;
          v12 = v68;
          sub_10006AA68(v67);
          _os_log_error_impl(&_mh_execute_header, v11, v12, "No latest backup found; giving up!", v67, 2u);
        }

        objc_storeStrong(&v69, 0);
        [(BackupRestoreProgressController *)selfCopy handleBackupFailed:v74];
      }

      objc_storeStrong(&waitForBackupToComplete, 0);
    }

    else
    {
      v66 = _BYLoggingFacility();
      v65 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v63 = 0;
        v61 = 0;
        if (_BYIsInternalInstall())
        {
          v13 = v74;
        }

        else if (v74)
        {
          domain2 = [v74 domain];
          v63 = 1;
          v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain2, [v74 code]);
          v62 = v13;
          v61 = 1;
        }

        else
        {
          v13 = 0;
        }

        sub_100071CBC(v78, v13);
        _os_log_error_impl(&_mh_execute_header, v66, v65, "Backup failed with error: %{public}@", v78, 0xCu);
        if (v61)
        {
        }

        if (v63)
        {
        }
      }

      objc_storeStrong(&v66, 0);
      [(BackupRestoreProgressController *)selfCopy _traceAnalyticsForGuideUserToBackup:v74 foundBackup:0 polledForBackup:0];
      [(BackupRestoreProgressController *)selfCopy handleBackupFailed:v74];
    }
  }

  else
  {
    proximitySetupController = [(BackupRestoreProgressController *)selfCopy proximitySetupController];
    [(ProximitySetupController *)proximitySetupController setupFinished];

    selfCopy->_backupPercentComplete = 1.0;
    v15 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v56 = -1073741824;
    v57 = 0;
    v58 = sub_100093DD8;
    v59 = &unk_10032B0D0;
    v60 = selfCopy;
    dispatch_async(v15, &block);

    oslog = _BYLoggingFacility();
    v53 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = oslog;
      v17 = v53;
      sub_10006AA68(v52);
      _os_log_impl(&_mh_execute_header, v16, v17, "Waiting 30 seconds for iCloud servers to ingest the new backup...", v52, 2u);
    }

    objc_storeStrong(&oslog, 0);
    sleep(0x1Eu);
    v51 = _BYLoggingFacility();
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v51;
      v19 = v50;
      sub_10006AA68(v49);
      _os_log_impl(&_mh_execute_header, v18, v19, "Searching for latest snapshot for source device...", v49, 2u);
    }

    objc_storeStrong(&v51, 0);
    v48 = 0;
    v47 = 0;
    v46 = 0;
    do
    {
      obj = v48;
      v20 = [(BackupRestoreProgressController *)selfCopy latestSnapshotForSourceDevice:&obj];
      objc_storeStrong(&v48, obj);
      v21 = v47;
      v47 = v20;

      if (v47)
      {
        break;
      }

      v44 = _BYLoggingFacility();
      v43 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v44;
        v23 = v43;
        v24 = _BYIsInternalInstall();
        v41 = 0;
        v39 = 0;
        if (v24)
        {
          v25 = v48;
        }

        else if (v48)
        {
          domain3 = [v48 domain];
          v41 = 1;
          v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain3, [v48 code]);
          v40 = v25;
          v39 = 1;
        }

        else
        {
          v25 = 0;
        }

        sub_100071CBC(v77, v25);
        _os_log_impl(&_mh_execute_header, v22, v23, "Unable to retrieve latest backup: %{public}@", v77, 0xCu);
        if (v39)
        {
        }

        if (v41)
        {
        }
      }

      objc_storeStrong(&v44, 0);
      v38 = _BYLoggingFacility();
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v38;
        v27 = v37;
        sub_10006AA68(v36);
        _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to retry to get latest backup due to error...", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      ++v46;
      sleep(5u);
    }

    while (v46 < 3);
    [(BackupRestoreProgressController *)selfCopy _traceAnalyticsForGuideUserToBackup:0 foundBackup:v47 != 0 polledForBackup:0];
    if (v47)
    {
      [(BackupRestoreProgressController *)selfCopy renewCredentialsThenStartRestore:v47];
    }

    else
    {
      v28 = &_dispatch_main_q;
      v29 = _NSConcreteStackBlock;
      v30 = -1073741824;
      v31 = 0;
      v32 = sub_100093E04;
      v33 = &unk_10032B838;
      v34 = selfCopy;
      v35 = v48;
      dispatch_async(v28, &v29);

      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v60, 0);
  }

  objc_storeStrong(&v74, 0);
  objc_storeStrong(location, 0);
}

- (void)backupProgress:(double)progress estimatedTimeRemaining:(unint64_t)remaining
{
  selfCopy = self;
  v13 = a2;
  progressCopy = progress;
  remainingCopy = remaining;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100094054;
  v9 = &unk_10032B950;
  v10[1] = remainingCopy;
  v10[0] = selfCopy;
  v10[2] = *&progressCopy;
  dispatch_async(v4, &block);

  objc_storeStrong(v10, 0);
}

- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  progressCopy = progress;
  remainingCopy = remaining;
  v7 = &_dispatch_main_q;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000941D8;
  v12 = &unk_10032B978;
  v13[1] = remainingCopy;
  v13[0] = selfCopy;
  progressCopy2 = progress;
  dispatch_async(v7, &v8);

  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
}

- (void)managerDidFinishRestore:(id)restore
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restore);
  v27 = _BYLoggingFacility();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v27;
    v4 = v26;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully finished restore", buf, 2u);
  }

  objc_storeStrong(&v27, 0);
  [(BackupRestoreProgressController *)selfCopy setRestoreState:4];
  prepareForCloudRestoreRebootBlock = [(BackupRestoreProgressController *)selfCopy prepareForCloudRestoreRebootBlock];
  prepareForCloudRestoreRebootBlock[2](prepareForCloudRestoreRebootBlock);

  oslog = _BYLoggingFacility();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = oslog;
    v7 = v23;
    sub_10006AA68(v22);
    _os_log_impl(&_mh_execute_header, v6, v7, "Promoting device lock assertion...", v22, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BackupRestoreProgressController *)selfCopy deviceLockAssertion];
  if (MKBDeviceLockAssertionPromote())
  {
    v20 = _BYLoggingFacility();
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v8 = v20;
      v9 = v19;
      sub_10006AA68(v18);
      _os_log_error_impl(&_mh_execute_header, v8, v9, "Failed to promote device lock assertion", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
  }

  v10 = &_dispatch_main_q;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000944DC;
  v15 = &unk_10032B838;
  v16 = selfCopy;
  v17 = location[0];
  dispatch_async(v10, &v11);

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager didFailRestoreWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v22 = 0;
  objc_storeStrong(&v22, error);
  if ([(BackupRestoreProgressController *)selfCopy restoreState]!= 3)
  {
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v16 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v22;
      }

      else if (v22)
      {
        domain = [v22 domain];
        v18 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v22 code]);
        v17 = v5;
        v16 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, oslog, v20, "Restore failed: %{public}@", buf, 0xCu);
      if (v16)
      {
      }

      if (v18)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    domain2 = [v22 domain];
    backupThenRestore = 0;
    if ([domain2 isEqualToString:@"MBErrorDomain"])
    {
      if ([v22 code] == 204 || (backupThenRestore = 0, objc_msgSend(v22, "code") == 205))
      {
        backupThenRestore = selfCopy->_backupThenRestore;
      }
    }

    if (backupThenRestore)
    {
      v8 = dispatch_get_global_queue(0, 0);
      block = _NSConcreteStackBlock;
      v10 = -1073741824;
      v11 = 0;
      v12 = sub_100094C34;
      v13 = &unk_10032B838;
      v14 = selfCopy;
      v15 = v22;
      dispatch_async(v8, &block);

      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v14, 0);
    }

    else if ([v22 code] != 202)
    {
      [(BackupRestoreProgressController *)selfCopy restoreFailedWithError:v22];
    }
  }

  [(BackupRestoreProgressController *)selfCopy releaseAssertions];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)managerDidLoseConnectionToService:(id)service
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, service);
  if ([(BackupRestoreProgressController *)selfCopy restoreState]== 1)
  {
    oslog = _BYLoggingFacility();
    v11 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v3 = oslog;
      v4 = v11;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "Lost connection to backup while restoring!", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(BackupRestoreProgressController *)selfCopy manager:location[0] didFailRestoreWithError:0];
  }

  else
  {
    v9 = _BYLoggingFacility();
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v5 = v9;
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "Lost connection to backup!", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end