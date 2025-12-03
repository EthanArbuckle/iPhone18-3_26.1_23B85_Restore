@interface BFFBackupDeviceController
- (BFFBackupDeviceController)initWithProximitySetupController:(id)controller;
- (BFFBackupDeviceControllerDelegate)delegate;
- (void)connectionTerminated;
- (void)dealloc;
- (void)receivedBackupAction:(id)action;
- (void)reset;
- (void)retryBackup;
- (void)startBackupDevice:(id)device UUID:(id)d;
@end

@implementation BFFBackupDeviceController

- (BFFBackupDeviceController)initWithProximitySetupController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = BFFBackupDeviceController;
  v4 = [(BFFBackupDeviceController *)&v8 init];
  selfCopy = v4;
  objc_storeStrong(&selfCopy, v4);
  if (v4)
  {
    [selfCopy setProximitySetupController:location[0]];
    proximitySetupController = [selfCopy proximitySetupController];
    [proximitySetupController addObserver:selfCopy];
  }

  v6 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  proximitySetupController = [(BFFBackupDeviceController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController removeObserver:selfCopy];

  v3.receiver = selfCopy;
  v3.super_class = BFFBackupDeviceController;
  [(BFFBackupDeviceController *)&v3 dealloc];
}

- (void)startBackupDevice:(id)device UUID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v28 = 0;
  objc_storeStrong(&v28, d);
  if ([(BFFBackupDeviceController *)selfCopy isBackingUp])
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
    proximitySetupController = [(BFFBackupDeviceController *)selfCopy proximitySetupController];
    hasConnection = [(ProximitySetupController *)proximitySetupController hasConnection];

    if (hasConnection)
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
      [(BFFBackupDeviceController *)selfCopy setBackingUp:1];
      [(BFFBackupDeviceController *)selfCopy setBackupFinished:0];
      [(BFFBackupDeviceController *)selfCopy setError:0];
      [(BFFBackupDeviceController *)selfCopy setCompletionDate:0];
      [(BFFBackupDeviceController *)selfCopy setPercentComplete:0.0];
      [(BFFBackupDeviceController *)selfCopy setTimeRemaining:0.0];
      [(BFFBackupDeviceController *)selfCopy setBackingUpDeviceName:location[0]];
      [(BFFBackupDeviceController *)selfCopy setBackingUpDeviceUUID:v28];
      proximitySetupController2 = [(BFFBackupDeviceController *)selfCopy proximitySetupController];
      [(ProximitySetupController *)proximitySetupController2 startiCloudBackup];

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
      [(BFFBackupDeviceController *)selfCopy setError:v11];

      [(BFFBackupDeviceController *)selfCopy setBackupFinished:1];
      delegate = [(BFFBackupDeviceController *)selfCopy delegate];
      v13 = selfCopy;
      error = [(BFFBackupDeviceController *)selfCopy error];
      [(BFFBackupDeviceControllerDelegate *)delegate backupDeviceController:v13 backupCompletedWithError:error];

      v24 = 1;
    }
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)retryBackup
{
  selfCopy = self;
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
  v4 = selfCopy;
  backingUpDeviceName = [(BFFBackupDeviceController *)selfCopy backingUpDeviceName];
  backingUpDeviceUUID = [(BFFBackupDeviceController *)selfCopy backingUpDeviceUUID];
  [(BFFBackupDeviceController *)v4 startBackupDevice:backingUpDeviceName UUID:backingUpDeviceUUID];
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

- (void)receivedBackupAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  if ([location[0] finishedBackup])
  {
    [(BFFBackupDeviceController *)selfCopy setBackingUp:0];
    [(BFFBackupDeviceController *)selfCopy setBackupFinished:1];
    completionDate = [location[0] completionDate];
    [(BFFBackupDeviceController *)selfCopy setCompletionDate:completionDate];

    error = [location[0] error];
    [(BFFBackupDeviceController *)selfCopy setError:error];

    error2 = [(BFFBackupDeviceController *)selfCopy error];
    if (error2)
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
          error3 = [(BFFBackupDeviceController *)selfCopy error];
          v35 = error3;
          v34 = 1;
        }

        else
        {
          error4 = [(BFFBackupDeviceController *)selfCopy error];
          v32 = 1;
          if (error4)
          {
            error5 = [(BFFBackupDeviceController *)selfCopy error];
            v30 = 1;
            domain = [(NSError *)error5 domain];
            v28 = 1;
            error6 = [(BFFBackupDeviceController *)selfCopy error];
            v26 = 1;
            error3 = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", domain, [(NSError *)error6 code]];
            v25 = error3;
            v24 = 1;
          }

          else
          {
            error3 = 0;
          }
        }

        sub_100071CBC(v46, error3);
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
      proximitySetupController = [(BFFBackupDeviceController *)selfCopy proximitySetupController];
      information = [(ProximitySetupController *)proximitySetupController information];
      hasTransferrableTelephonyPlan = [(SASProximityInformation *)information hasTransferrableTelephonyPlan];
      bOOLValue = [hasTransferrableTelephonyPlan BOOLValue];

      v40 = bOOLValue & 1;
      if (bOOLValue)
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
        proximitySetupController2 = [(BFFBackupDeviceController *)selfCopy proximitySetupController];
        [(ProximitySetupController *)proximitySetupController2 setupFinished];
      }
    }

    delegate = [(BFFBackupDeviceController *)selfCopy delegate];
    v17 = selfCopy;
    error7 = [(BFFBackupDeviceController *)selfCopy error];
    [(BFFBackupDeviceControllerDelegate *)delegate backupDeviceController:v17 backupCompletedWithError:error7];
  }

  else
  {
    [location[0] percentComplete];
    [(BFFBackupDeviceController *)selfCopy setPercentComplete:?];
    timeRemaining = [location[0] timeRemaining];
    [(BFFBackupDeviceController *)selfCopy setTimeRemaining:timeRemaining];
    delegate2 = [(BFFBackupDeviceController *)selfCopy delegate];
    [(BFFBackupDeviceController *)selfCopy percentComplete];
    v22 = v21;
    [(BFFBackupDeviceController *)selfCopy timeRemaining];
    [(BFFBackupDeviceControllerDelegate *)delegate2 backupProgress:v23 estimatedTimeRemaining:v22];
  }

  objc_storeStrong(location, 0);
}

- (void)connectionTerminated
{
  selfCopy = self;
  v9[1] = a2;
  if ([(BFFBackupDeviceController *)self isBackingUp])
  {
    [(BFFBackupDeviceController *)selfCopy setBackingUp:0];
    [(BFFBackupDeviceController *)selfCopy setBackupFinished:1];
    [(BFFBackupDeviceController *)selfCopy setBackupStateUnknown:1];
    v2 = [NSError errorWithDomain:@"BFFBackupDeviceErrorDomain" code:-1 userInfo:0];
    [(BFFBackupDeviceController *)selfCopy setError:v2];

    v3 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_10021CC34;
    v8 = &unk_10032B0D0;
    v9[0] = selfCopy;
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