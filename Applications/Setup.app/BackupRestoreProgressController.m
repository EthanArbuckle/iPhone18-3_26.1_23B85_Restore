@interface BackupRestoreProgressController
- (BFFFlowItemDelegate)delegate;
- (BOOL)hasAssertions;
- (BOOL)takeAssertions;
- (BackupRestoreProgressController)init;
- (id)_createRestoreOptions;
- (id)latestSnapshotForBackupUUID:(id)a3 backupCompletedDate:(id)a4 lastSnapshotDate:(id)a5 error:(id *)a6;
- (id)latestSnapshotForBackupUUID:(id)a3 lastSnapshotDate:(id)a4 error:(id *)a5;
- (id)latestSnapshotForSourceDevice:(id *)a3;
- (id)waitForBackupToComplete;
- (void)_attemptRestore;
- (void)_failedToStartRestoreForSnapshotID:(unint64_t)a3 error:(id)a4;
- (void)_presentAlert:(id)a3;
- (void)_traceAnalyticsForGuideUserToBackup:(id)a3 foundBackup:(BOOL)a4 polledForBackup:(BOOL)a5;
- (void)backupDeviceController:(id)a3 backupCompletedWithError:(id)a4;
- (void)backupProgress:(double)a3 estimatedTimeRemaining:(unint64_t)a4;
- (void)controllerWasPopped;
- (void)dealloc;
- (void)handleBackupFailed:(id)a3;
- (void)loadView;
- (void)manager:(id)a3 didFailRestoreWithError:(id)a4;
- (void)manager:(id)a3 didUpdateProgress:(float)a4 estimatedTimeRemaining:(unint64_t)a5;
- (void)managerDidFinishRestore:(id)a3;
- (void)managerDidLoseConnectionToService:(id)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)popBackFromProgress;
- (void)reattemptBackup;
- (void)releaseAssertions;
- (void)renewCredentialsThenStartRestore:(id)a3;
- (void)restoreFailedWithError:(id)a3;
- (void)setAlert:(id)a3;
- (void)startRestore:(id)a3;
- (void)updateProgress;
- (void)updateProgressText;
- (void)viewDidAppear:(BOOL)a3;
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
  v5 = self;
  v4 = a2;
  [(BackupRestoreProgressController *)self releaseAssertions];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5 name:UIApplicationWillResignActiveNotification object:0];

  v3.receiver = v5;
  v3.super_class = BackupRestoreProgressController;
  [(BackupRestoreProgressController *)&v3 dealloc];
}

- (void)loadView
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BackupRestoreProgressController;
  [(BackupRestoreProgressController *)&v3 loadView];
  [(BackupRestoreProgressController *)v5 updateProgressText];
  v2 = [(BackupRestoreProgressController *)v5 navigationItem];
  [v2 setHidesBackButton:1];
}

- (void)willResignActive
{
  v12 = self;
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
        [(BackupRestoreProgressController *)v12 setRestoreState:3];
        [(MBManager *)v12->_backupManager cancel];
        v4 = [(BackupRestoreProgressController *)v12 navigationController];
        v5 = [v4 popViewControllerAnimated:0];
      }
    }
  }
}

- (void)popBackFromProgress
{
  v2 = [(BackupRestoreProgressController *)self backupDeviceController];
  [(BFFBackupDeviceController *)v2 reset];

  v3 = [(BackupRestoreProgressController *)self navigationController];
  v4 = [v3 topViewController];

  if (v4 == self)
  {
    v5 = [(BackupRestoreProgressController *)self delegate];
    v6 = [(BFFFlowItemDelegate *)v5 popToBuddyControllerWithClass:objc_opt_class() animated:1];

    if (!v6)
    {
      v7 = [(BackupRestoreProgressController *)self delegate];
      v8 = [(BFFFlowItemDelegate *)v7 popToBuddyControllerWithClass:objc_opt_class() animated:1];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = BackupRestoreProgressController;
  [(BackupRestoreProgressController *)&v6 viewDidAppear:a3];
  v3 = [(BackupRestoreProgressController *)v9 alert];

  if (v3)
  {
    v4 = v9;
    v5 = [(BackupRestoreProgressController *)v9 alert];
    [(BackupRestoreProgressController *)v4 presentViewController:v5 animated:1 completion:0];
  }
}

- (void)renewCredentialsThenStartRestore:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[ACAccountStore defaultStore];
  v22 = [v3 aa_primaryAppleAccount];

  v4 = +[BFFAppleAccountInfo primaryAccountInfo];
  v5 = [v4 rawPassword];
  [v22 _aa_setRawPassword:v5];

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
    v10 = v22;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10008CF88;
    v15 = &unk_10032B860;
    v16 = v24;
    v17 = location[0];
    [v9 renewCredentialsForAccount:v10 options:v18 completion:&v11];

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    [(BackupRestoreProgressController *)v24 startRestore:location[0]];
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)startRestore:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10008D304;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_failedToStartRestoreForSnapshotID:(unint64_t)a3 error:(id)a4
{
  v78 = self;
  v77 = a2;
  v76 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v74 = 0;
  v4 = [location domain];
  v5 = 0;
  if ([v4 isEqualToString:@"MBErrorDomain"])
  {
    v5 = [location code] == 204;
  }

  if (v5)
  {
    oslog = _BYLoggingFacility();
    v72 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v76;
      v7 = [v78 backupItem];
      v8 = [v7 backupUDID];
      sub_10008E19C(buf, v6, v8);
      _os_log_impl(&_mh_execute_header, oslog, v72, "Unable to find the snapshot ID %ld in backup UDID %@; searching for one that is the same...", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v71 = 0;
    v9 = [v78 backupItem];
    v10 = [v9 backupUUID];
    v11 = *(v78 + 13);
    obj = 0;
    v12 = [BuddyBackupUtilities backupForUUID:v10 withManager:v11 error:&obj];
    objc_storeStrong(&v71, obj);
    v70 = v12;

    if (!v71 && v70)
    {
      v62 = 0;
      memset(__b, 0, sizeof(__b));
      v14 = [v70 snapshots];
      v15 = [v14 countByEnumeratingWithState:__b objects:v81 count:16];
      if (v15)
      {
        v16 = *__b[2];
        do
        {
          for (i = 0; i < v15; ++i)
          {
            if (*__b[2] != v16)
            {
              objc_enumerationMutation(v14);
            }

            v61 = *(__b[1] + 8 * i);
            v18 = [v61 date];
            v19 = [v78 backupItem];
            v20 = [v19 snapshot];
            v21 = [v20 date];
            v22 = [v18 isEqualToDate:v21];

            if (v22)
            {
              objc_storeStrong(&v62, v61);
              v59 = 2;
              goto LABEL_29;
            }
          }

          v15 = [v14 countByEnumeratingWithState:__b objects:v81 count:16];
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
          v25 = [v62 snapshotID];
          v26 = [v78 backupItem];
          v27 = [v26 backupUDID];
          sub_10008E19C(v80, v25, v27);
          _os_log_impl(&_mh_execute_header, v55, v54, "Found snapshot ID %ld in backup UDID %@ that was the same!", v80, 0x16u);
        }

        objc_storeStrong(&v55, 0);
        v28 = [v78 backupItem];
        v29 = [v28 backup];
        v30 = [RestorableBackupItem restorableBackupItemWithBackup:v29 snapshot:v62];
        [v78 setBackupItem:v30];

        v53 = _BYLoggingFacility();
        v52 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v78 backupItem];
          v32 = [v31 backupUDID];
          sub_10007B2CC(v79, v32, [v62 snapshotID]);
          _os_log_impl(&_mh_execute_header, v53, v52, "Starting iCloud Restore for backup UDID %@ and snapshot %ld...", v79, 0x16u);
        }

        objc_storeStrong(&v53, 0);
        v33 = [v78 backupManager];
        v34 = [v78 backupItem];
        v35 = [v34 backupUDID];
        v36 = [v62 snapshotID];
        v37 = [v78 _createRestoreOptions];
        v46 = _NSConcreteStackBlock;
        v47 = -1073741824;
        v48 = 0;
        v49 = sub_10008E1BC;
        v50 = &unk_10032B6F0;
        v51 = v78;
        [v33 startRestoreForBackupUDID:v35 snapshotID:v36 options:v37 completion:&v46];

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
          v66 = [v71 domain];
          v65 = 1;
          v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v66, [v71 code]);
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
    v44 = v78;
    v45 = location;
    dispatch_async(v38, &block);

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v44, 0);
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)hasAssertions
{
  v2 = [(BackupRestoreProgressController *)self processAssertion];
  v3 = 0;
  if (v2)
  {
    v4 = v2;
    v5 = [(BackupRestoreProgressController *)self deviceLockAssertion];
    v2 = v4;
    v3 = v5 != 0;
  }

  return v3;
}

- (BOOL)takeAssertions
{
  v45 = self;
  location[1] = a2;
  v2 = [(BackupRestoreProgressController *)self processAssertion];
  [(RBSAssertion *)v2 invalidate];

  v3 = [RBSAssertion alloc];
  v4 = [RBSTarget targetWithPid:getpid()];
  v5 = [RBSDomainAttribute attributeWithDomain:@"com.apple.purplebuddy" name:@"Update"];
  v52 = v5;
  v6 = [NSArray arrayWithObjects:&v52 count:1];
  v7 = [v3 initWithExplanation:@"iCloud Restore" target:v4 attributes:v6];
  [(BackupRestoreProgressController *)v45 setProcessAssertion:v7];

  location[0] = 0;
  v8 = [(BackupRestoreProgressController *)v45 processAssertion];
  v43 = 0;
  LOBYTE(v7) = [(RBSAssertion *)v8 acquireWithError:&v43];
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
        v40 = [location[0] domain];
        v39 = 1;
        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v40, [location[0] code]);
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
    [(BackupRestoreProgressController *)v45 releaseAssertions];
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
    if ([(BackupRestoreProgressController *)v45 softwareUpdateDidOccur])
    {
      v31 = objc_alloc_init(BYBuddyDaemonGeneralClient);
      [v31 cancelDataMigratorDeferredExit];
      [(BackupRestoreProgressController *)v45 setDeviceLockAssertion:MKBDeviceLockAssertionConsume()];
      if ([(BackupRestoreProgressController *)v45 deviceLockAssertion])
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
      [(BackupRestoreProgressController *)v45 setDeviceLockAssertion:MKBDeviceLockAssertion()];
      if ([(BackupRestoreProgressController *)v45 deviceLockAssertion])
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

    if ([(BackupRestoreProgressController *)v45 deviceLockAssertion])
    {
      v46 = 1;
    }

    else
    {
      [(BackupRestoreProgressController *)v45 releaseAssertions];
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
  v14 = self;
  oslog[1] = a2;
  v2 = [(BackupRestoreProgressController *)self processAssertion];

  if (v2)
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
    v5 = [(BackupRestoreProgressController *)v14 processAssertion];
    [(RBSAssertion *)v5 invalidate];

    [(BackupRestoreProgressController *)v14 setProcessAssertion:0];
  }

  if ([(BackupRestoreProgressController *)v14 deviceLockAssertion])
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
    CFRelease([(BackupRestoreProgressController *)v14 deviceLockAssertion]);
    [(BackupRestoreProgressController *)v14 setDeviceLockAssertion:0];
  }
}

- (void)setAlert:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v4->_alert)
  {
    objc_storeStrong(&v4->_alert, location[0]);
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
    v6 = [(BackupRestoreProgressController *)self backupDeviceController];
    v7 = [(BFFBackupDeviceController *)v6 backingUpDeviceName];
    v8 = [NSString localizedStringWithFormat:v5, v7];
    [(BackupRestoreProgressController *)self setTitle:v8];
  }

  else
  {
    v2 = +[NSBundle mainBundle];
    v3 = [(NSBundle *)v2 localizedStringForKey:@"RESTORING_FROM_BACKUP" value:&stru_10032F900 table:@"RestoreFromBackup"];
    [(BackupRestoreProgressController *)self setTitle:v3];
  }
}

- (id)latestSnapshotForSourceDevice:(id *)a3
{
  v4 = [(BackupRestoreProgressController *)self backupDeviceController];
  v5 = [(BFFBackupDeviceController *)v4 backingUpDeviceUUID];
  v6 = [(BackupRestoreProgressController *)self backupDeviceController];
  v7 = [(BFFBackupDeviceController *)v6 completionDate];
  v8 = [(BackupRestoreProgressController *)self latestSnapshotForBackupUUID:v5 backupCompletedDate:v7 lastSnapshotDate:self->_lastSourceDeviceSnapshotDate error:a3];

  return v8;
}

- (id)latestSnapshotForBackupUUID:(id)a3 lastSnapshotDate:(id)a4 error:(id *)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v7 = [(BackupRestoreProgressController *)v11 latestSnapshotForBackupUUID:location[0] backupCompletedDate:0 lastSnapshotDate:v9 error:a5];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)latestSnapshotForBackupUUID:(id)a3 backupCompletedDate:(id)a4 lastSnapshotDate:(id)a5 error:(id *)a6
{
  v73 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v71 = 0;
  objc_storeStrong(&v71, a4);
  v70 = 0;
  objc_storeStrong(&v70, a5);
  v69 = a6;
  v68 = 0;
  backupManager = v73->_backupManager;
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
        v63 = [v68 domain];
        v62 = 1;
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v63, [v68 code]);
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
    if (v69)
    {
      v12 = v68;
      *v69 = v12;
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
  v13 = [v67 snapshots];
  v14 = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:0];
  v81 = v14;
  v15 = [NSArray arrayWithObjects:&v81 count:1];
  v56 = [v13 sortedArrayUsingDescriptors:v15];

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
            v20 = [v55 date];
            v21 = [v20 compare:v71];

            v53 = v21;
            if (v71 && v53 <= 1)
            {
              v52 = _BYLoggingFacility();
              v51 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v52;
                v23 = v51;
                v24 = [v55 snapshotID];
                v25 = [v55 date];
                sub_10008FCD8(v79, v24, v25, v71);
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
                v50 = [v55 date];
                v49 = 1;
                v26 = [v50 compare:v70] == 1;
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
                  v29 = [v55 snapshotID];
                  v30 = [v55 date];
                  sub_10008FCD8(v78, v29, v30, v70);
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
                  v33 = [v55 snapshotID];
                  v34 = [v55 date];
                  sub_10008FD00(v77, v33, v34, v70, v71);
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
    if (v69)
    {
      v36 = [NSError errorWithDomain:@"BackupRestoreProgressErrorDomain" code:-1 userInfo:0];
      *v69 = v36;
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
  v17 = self;
  v16[1] = a2;
  if ([(BackupRestoreProgressController *)self takeAssertions])
  {
    v17->_backupThenRestore = 1;
    v17->_backupPercentComplete = 0.0;
    [(BackupRestoreProgressController *)v17 updateProgress];
    [(BackupRestoreProgressController *)v17 updateProgressText];
    [(BackupRestoreProgressController *)v17 setTimeRemainingEstimate:1.79769313e308];
    v2 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10008FF58;
    v15 = &unk_10032B0D0;
    v16[0] = v17;
    dispatch_async(v2, &block);

    objc_storeStrong(v16, 0);
  }

  else
  {
    objc_initWeak(&location, v17);
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100090114;
    v7 = &unk_10032AF58;
    objc_copyWeak(&v8, &location);
    v9 = [BuddyRestoreHelpers alertForBackupError:0 forBackup:1 okButtonAction:&v3];
    [(BackupRestoreProgressController *)v17 _presentAlert:v9];
    objc_storeStrong(&v9, 0);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)handleBackupFailed:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BackupRestoreProgressController *)v12 releaseAssertions];
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100090270;
  v8 = &unk_10032B838;
  v9 = location[0];
  v10 = v12;
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_traceAnalyticsForGuideUserToBackup:(id)a3 foundBackup:(BOOL)a4 polledForBackup:(BOOL)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v15 = a5;
  v19[0] = @"success";
  v7 = [NSNumber numberWithInt:location[0] == 0];
  v20[0] = v7;
  v19[1] = @"foundBackup";
  v8 = [NSNumber numberWithBool:a4];
  v20[1] = v8;
  v19[2] = @"polledForBackup";
  v9 = [NSNumber numberWithBool:v15];
  v20[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v14 = [NSMutableDictionary dictionaryWithDictionary:v10];

  if (location[0])
  {
    v11 = [location[0] domain];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%ld)", v11, [location[0] code]);
    [v14 setObject:v12 forKeyedSubscript:@"error"];
  }

  v13 = [(BackupRestoreProgressController *)v18 analyticsManager];
  [(BYAnalyticsManager *)v13 addEvent:@"com.apple.setupassistant.ios.guideUserToBackup" withPayload:v14 persist:1];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentAlert:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100091690;
  v16 = &unk_10032B838;
  v17 = v21;
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
  v53 = self;
  location[1] = a2;
  if ([(BackupRestoreProgressController *)self hasAssertions])
  {
    v14 = [(BackupRestoreProgressController *)v53 backupDeviceController];
    [(BFFBackupDeviceController *)v14 setDelegate:v53];

    v15 = [(BackupRestoreProgressController *)v53 backupDeviceController];
    v16 = [(BFFBackupDeviceController *)v15 isBackingUp];
    v32 = 0;
    v17 = 1;
    if ((v16 & 1) == 0)
    {
      v33 = [(BackupRestoreProgressController *)v53 backupDeviceController];
      v32 = 1;
      v17 = [v33 backupStateUnknown];
    }

    v53->_backupThenRestore = v17 & 1;
    if (v32)
    {
    }

    if (v53->_backupThenRestore)
    {
      v18 = [(BackupRestoreProgressController *)v53 backupItem];
      v19 = [(RestorableBackupItem *)v18 snapshot];
      v20 = [(MBSnapshot *)v19 date];
      lastSourceDeviceSnapshotDate = v53->_lastSourceDeviceSnapshotDate;
      v53->_lastSourceDeviceSnapshotDate = v20;
    }

    v22 = [(BackupRestoreProgressController *)v53 passcodeCacheManager];
    [(BYPasscodeCacheManager *)v22 persistPasscodeStash];

    objc_initWeak(&v31, v53);
    v23 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_100091F3C;
    v28 = &unk_10032B8B0;
    v29 = v53;
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
    objc_initWeak(&from, v53);
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

    [(BackupRestoreProgressController *)v53 _presentAlert:v48];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v47);
    objc_storeStrong(&v48, 0);
    objc_destroyWeak(&from);
  }
}

- (void)restoreFailedWithError:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BackupRestoreProgressController *)v13 setRestoreState:2];
  objc_initWeak(&from, v13);
  v3 = location[0];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100092FB0;
  v8 = &unk_10032AF58;
  objc_copyWeak(&v9, &from);
  v10 = [BuddyRestoreHelpers alertForBackupError:v3 okButtonAction:&v4];
  [(BackupRestoreProgressController *)v13 _presentAlert:v10];
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (id)waitForBackupToComplete
{
  v31 = self;
  v30[1] = a2;
  v30[0] = 0;
  location = 0;
  v2 = [(BackupRestoreProgressController *)self backupDeviceController];
  [(BFFBackupDeviceController *)v2 timeRemaining];
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
    v6 = [(BackupRestoreProgressController *)v31 latestSnapshotForSourceDevice:&obj, i];
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
          v19 = [location domain];
          v18 = 1;
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v19, [location code]);
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
  v8 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(MBStartRestoreOptions);
  v2 = [(BackupRestoreProgressController *)v8 pendingRestoreState];
  v3 = [(BuddyPendingRestoreState *)v2 allowCellularNetwork];

  if (v3)
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

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BackupRestoreProgressController *)v4 takeAssertions];
  [(BackupRestoreProgressController *)v4 _attemptRestore];
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(location, 0);
}

- (void)backupDeviceController:(id)a3 backupCompletedWithError:(id)a4
{
  v76 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v74 = 0;
  objc_storeStrong(&v74, a4);
  if (v74)
  {
    v5 = [v74 domain];
    v6 = 0;
    if (v5 == @"BFFBackupDeviceErrorDomain")
    {
      v7 = v5;
      v8 = [v74 code];
      v5 = v7;
      v6 = v8 == -1;
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
      v70 = [(BackupRestoreProgressController *)v76 waitForBackupToComplete];
      [(BackupRestoreProgressController *)v76 _traceAnalyticsForGuideUserToBackup:0 foundBackup:v70 != 0 polledForBackup:1];
      if (v70)
      {
        [(BackupRestoreProgressController *)v76 renewCredentialsThenStartRestore:v70];
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
        [(BackupRestoreProgressController *)v76 handleBackupFailed:v74];
      }

      objc_storeStrong(&v70, 0);
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
          v64 = [v74 domain];
          v63 = 1;
          v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v64, [v74 code]);
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
      [(BackupRestoreProgressController *)v76 _traceAnalyticsForGuideUserToBackup:v74 foundBackup:0 polledForBackup:0];
      [(BackupRestoreProgressController *)v76 handleBackupFailed:v74];
    }
  }

  else
  {
    v14 = [(BackupRestoreProgressController *)v76 proximitySetupController];
    [(ProximitySetupController *)v14 setupFinished];

    v76->_backupPercentComplete = 1.0;
    v15 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v56 = -1073741824;
    v57 = 0;
    v58 = sub_100093DD8;
    v59 = &unk_10032B0D0;
    v60 = v76;
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
      v20 = [(BackupRestoreProgressController *)v76 latestSnapshotForSourceDevice:&obj];
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
          v42 = [v48 domain];
          v41 = 1;
          v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v42, [v48 code]);
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
    [(BackupRestoreProgressController *)v76 _traceAnalyticsForGuideUserToBackup:0 foundBackup:v47 != 0 polledForBackup:0];
    if (v47)
    {
      [(BackupRestoreProgressController *)v76 renewCredentialsThenStartRestore:v47];
    }

    else
    {
      v28 = &_dispatch_main_q;
      v29 = _NSConcreteStackBlock;
      v30 = -1073741824;
      v31 = 0;
      v32 = sub_100093E04;
      v33 = &unk_10032B838;
      v34 = v76;
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

- (void)backupProgress:(double)a3 estimatedTimeRemaining:(unint64_t)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100094054;
  v9 = &unk_10032B950;
  v10[1] = v11;
  v10[0] = v14;
  v10[2] = *&v12;
  dispatch_async(v4, &block);

  objc_storeStrong(v10, 0);
}

- (void)manager:(id)a3 didUpdateProgress:(float)a4 estimatedTimeRemaining:(unint64_t)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v15 = a5;
  v7 = &_dispatch_main_q;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000941D8;
  v12 = &unk_10032B978;
  v13[1] = v15;
  v13[0] = v18;
  v14 = a4;
  dispatch_async(v7, &v8);

  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
}

- (void)managerDidFinishRestore:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  [(BackupRestoreProgressController *)v29 setRestoreState:4];
  v5 = [(BackupRestoreProgressController *)v29 prepareForCloudRestoreRebootBlock];
  v5[2](v5);

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
  [(BackupRestoreProgressController *)v29 deviceLockAssertion];
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
  v16 = v29;
  v17 = location[0];
  dispatch_async(v10, &v11);

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 didFailRestoreWithError:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  if ([(BackupRestoreProgressController *)v24 restoreState]!= 3)
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
        v19 = [v22 domain];
        v18 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v19, [v22 code]);
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
    v6 = [v22 domain];
    backupThenRestore = 0;
    if ([v6 isEqualToString:@"MBErrorDomain"])
    {
      if ([v22 code] == 204 || (backupThenRestore = 0, objc_msgSend(v22, "code") == 205))
      {
        backupThenRestore = v24->_backupThenRestore;
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
      v14 = v24;
      v15 = v22;
      dispatch_async(v8, &block);

      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v14, 0);
    }

    else if ([v22 code] != 202)
    {
      [(BackupRestoreProgressController *)v24 restoreFailedWithError:v22];
    }
  }

  [(BackupRestoreProgressController *)v24 releaseAssertions];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)managerDidLoseConnectionToService:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(BackupRestoreProgressController *)v14 restoreState]== 1)
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
    [(BackupRestoreProgressController *)v14 manager:location[0] didFailRestoreWithError:0];
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