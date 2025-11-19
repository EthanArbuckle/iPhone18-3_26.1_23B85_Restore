@interface BFFBackupDeviceController
- (BFFBackupDeviceController)initWithProximitySetupController:(id)a3;
- (BFFBackupDeviceControllerDelegate)delegate;
- (void)connectionTerminated;
- (void)dealloc;
- (void)receivedBackupAction:(id)a3;
- (void)reset;
- (void)retryBackup;
- (void)startBackupDevice:(id)a3 UUID:(id)a4;
@end

@implementation BFFBackupDeviceController

- (BFFBackupDeviceController)initWithProximitySetupController:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = BFFBackupDeviceController;
  v4 = [(BFFBackupDeviceController *)&v8 init];
  v10 = v4;
  objc_storeStrong(&v10, v4);
  if (v4)
  {
    [v10 setProximitySetupController:location[0]];
    v5 = [v10 proximitySetupController];
    [v5 addObserver:v10];
  }

  v6 = v10;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v6;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [(BFFBackupDeviceController *)self proximitySetupController];
  [(ProximitySetupController *)v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = BFFBackupDeviceController;
  [(BFFBackupDeviceController *)&v3 dealloc];
}

- (void)startBackupDevice:(id)a3 UUID:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  if ([(BFFBackupDeviceController *)v30 isBackingUp])
  {
    oslog = _BYLoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v26;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Remote device is already backing up; ignoring request to start...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v24 = 1;
  }

  else
  {
    v7 = [(BFFBackupDeviceController *)v30 proximitySetupController];
    v8 = [(ProximitySetupController *)v7 hasConnection];

    if (v8)
    {
      v20 = _BYLoggingFacility();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v20;
        v16 = v19;
        sub_10006AA68(v18);
        _os_log_impl(&_mh_execute_header, v15, v16, "Starting backup for remote device...", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      [(BFFBackupDeviceController *)v30 setBackingUp:1];
      [(BFFBackupDeviceController *)v30 setBackupFinished:0];
      [(BFFBackupDeviceController *)v30 setError:0];
      [(BFFBackupDeviceController *)v30 setCompletionDate:0];
      [(BFFBackupDeviceController *)v30 setPercentComplete:0.0];
      [(BFFBackupDeviceController *)v30 setTimeRemaining:0.0];
      [(BFFBackupDeviceController *)v30 setBackingUpDeviceName:location[0]];
      [(BFFBackupDeviceController *)v30 setBackingUpDeviceUUID:v28];
      v17 = [(BFFBackupDeviceController *)v30 proximitySetupController];
      [(ProximitySetupController *)v17 startiCloudBackup];

      v24 = 0;
    }

    else
    {
      v23 = _BYLoggingFacility();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v23;
        v10 = v22;
        sub_10006AA68(v21);
        _os_log_impl(&_mh_execute_header, v9, v10, "Unable to start backup on remote device; no proximity connection!", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      v11 = [NSError errorWithDomain:@"BFFBackupDeviceErrorDomain" code:-1 userInfo:0];
      [(BFFBackupDeviceController *)v30 setError:v11];

      [(BFFBackupDeviceController *)v30 setBackupFinished:1];
      v12 = [(BFFBackupDeviceController *)v30 delegate];
      v13 = v30;
      v14 = [(BFFBackupDeviceController *)v30 error];
      [(BFFBackupDeviceControllerDelegate *)v12 backupDeviceController:v13 backupCompletedWithError:v14];

      v24 = 1;
    }
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)retryBackup
{
  v10 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "Reattempting backup for remote device...", v7, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = v10;
  v5 = [(BFFBackupDeviceController *)v10 backingUpDeviceName];
  v6 = [(BFFBackupDeviceController *)v10 backingUpDeviceUUID];
  [(BFFBackupDeviceController *)v4 startBackupDevice:v5 UUID:v6];
}

- (void)reset
{
  [(BFFBackupDeviceController *)self setBackingUp:0, a2];
  [(BFFBackupDeviceController *)self setBackingUpDeviceName:0];
  [(BFFBackupDeviceController *)self setBackingUpDeviceUUID:0];
  [(BFFBackupDeviceController *)self setBackupFinished:0];
  [(BFFBackupDeviceController *)self setError:0];
  [(BFFBackupDeviceController *)self setCompletionDate:0];
  [(BFFBackupDeviceController *)self setPercentComplete:0.0];
  [(BFFBackupDeviceController *)self setTimeRemaining:0.0];
  [(BFFBackupDeviceController *)self setBackupStateUnknown:0];
}

- (void)receivedBackupAction:(id)a3
{
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] finishedBackup])
  {
    [(BFFBackupDeviceController *)v45 setBackingUp:0];
    [(BFFBackupDeviceController *)v45 setBackupFinished:1];
    v3 = [location[0] completionDate];
    [(BFFBackupDeviceController *)v45 setCompletionDate:v3];

    v4 = [location[0] error];
    [(BFFBackupDeviceController *)v45 setError:v4];

    v5 = [(BFFBackupDeviceController *)v45 error];
    if (v5)
    {
      v36 = _BYLoggingFacility();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 0;
        v32 = 0;
        v30 = 0;
        v28 = 0;
        v26 = 0;
        v24 = 0;
        if (_BYIsInternalInstall())
        {
          v15 = [(BFFBackupDeviceController *)v45 error];
          v35 = v15;
          v34 = 1;
        }

        else
        {
          v33 = [(BFFBackupDeviceController *)v45 error];
          v32 = 1;
          if (v33)
          {
            v31 = [(BFFBackupDeviceController *)v45 error];
            v30 = 1;
            v29 = [(NSError *)v31 domain];
            v28 = 1;
            v27 = [(BFFBackupDeviceController *)v45 error];
            v26 = 1;
            v15 = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", v29, [(NSError *)v27 code]];
            v25 = v15;
            v24 = 1;
          }

          else
          {
            v15 = 0;
          }
        }

        sub_100071CBC(v46, v15);
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Backup failed with error: %{public}@", v46, 0xCu);
        if (v24)
        {
        }

        if (v26)
        {
        }

        if (v28)
        {
        }

        if (v30)
        {
        }

        if (v32)
        {
        }

        if (v34)
        {
        }
      }

      objc_storeStrong(&v36, 0);
    }

    else
    {
      v43 = _BYLoggingFacility();
      v42 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v43;
        v7 = v42;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v6, v7, "Backup finished successfully!", buf, 2u);
      }

      objc_storeStrong(&v43, 0);
      v8 = [(BFFBackupDeviceController *)v45 proximitySetupController];
      v9 = [(ProximitySetupController *)v8 information];
      v10 = [(SASProximityInformation *)v9 hasTransferrableTelephonyPlan];
      v11 = [v10 BOOLValue];

      v40 = v11 & 1;
      if (v11)
      {
        oslog = _BYLoggingFacility();
        v38 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = oslog;
          v13 = v38;
          sub_10006AA68(v37);
          _os_log_impl(&_mh_execute_header, v12, v13, "Keep connection alive for eSIM transfer.", v37, 2u);
        }

        objc_storeStrong(&oslog, 0);
      }

      else
      {
        v14 = [(BFFBackupDeviceController *)v45 proximitySetupController];
        [(ProximitySetupController *)v14 setupFinished];
      }
    }

    v16 = [(BFFBackupDeviceController *)v45 delegate];
    v17 = v45;
    v18 = [(BFFBackupDeviceController *)v45 error];
    [(BFFBackupDeviceControllerDelegate *)v16 backupDeviceController:v17 backupCompletedWithError:v18];
  }

  else
  {
    [location[0] percentComplete];
    [(BFFBackupDeviceController *)v45 setPercentComplete:?];
    v19 = [location[0] timeRemaining];
    [(BFFBackupDeviceController *)v45 setTimeRemaining:v19];
    v20 = [(BFFBackupDeviceController *)v45 delegate];
    [(BFFBackupDeviceController *)v45 percentComplete];
    v22 = v21;
    [(BFFBackupDeviceController *)v45 timeRemaining];
    [(BFFBackupDeviceControllerDelegate *)v20 backupProgress:v23 estimatedTimeRemaining:v22];
  }

  objc_storeStrong(location, 0);
}

- (void)connectionTerminated
{
  v10 = self;
  v9[1] = a2;
  if ([(BFFBackupDeviceController *)self isBackingUp])
  {
    [(BFFBackupDeviceController *)v10 setBackingUp:0];
    [(BFFBackupDeviceController *)v10 setBackupFinished:1];
    [(BFFBackupDeviceController *)v10 setBackupStateUnknown:1];
    v2 = [NSError errorWithDomain:@"BFFBackupDeviceErrorDomain" code:-1 userInfo:0];
    [(BFFBackupDeviceController *)v10 setError:v2];

    v3 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_10021CC34;
    v8 = &unk_10032B0D0;
    v9[0] = v10;
    dispatch_async(v3, &block);

    objc_storeStrong(v9, 0);
  }
}

- (BFFBackupDeviceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end