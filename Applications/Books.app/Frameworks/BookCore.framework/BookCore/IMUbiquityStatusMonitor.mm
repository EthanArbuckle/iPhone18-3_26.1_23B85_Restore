@interface IMUbiquityStatusMonitor
- (BCICloudIdentityToken)ubiquityIdentityToken;
- (BOOL)dq_isICloudDriveEnabled;
- (BOOL)isICloudDriveEnabled;
- (IMUbiquityStatusChangeObserving)coordinatingObserver;
- (IMUbiquityStatusMonitor)initWithContainerIdentifier:(id)a3;
- (NSURL)containerURL;
- (NSURL)documentsURL;
- (id)_stateForLog;
- (id)description;
- (id)makeOSStateHandler;
- (void)_notifyObserversForChangesWithCurrentToken:(id)a3 lastToken:(id)a4;
- (void)_notifyObserversForUnchangedWithCurrentToken:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)dq_archiveCurrentUbiquityIdentityToken;
- (void)dq_refreshUbiquityAvailabilityStatus;
- (void)p_ubiquityIdentityDidChange:(id)a3;
- (void)registerCoordinatingObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)restartObserving;
@end

@implementation IMUbiquityStatusMonitor

- (IMUbiquityStatusMonitor)initWithContainerIdentifier:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = IMUbiquityStatusMonitor;
  v6 = [(IMUbiquityStatusMonitor *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerIdentifier, a3);
    v8 = [NSHashTable hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v8;

    v10 = dispatch_queue_create("com.apple.iBooks.IMUbiquityStatusMonitor.containerQueue", 0);
    containerQueue = v7->_containerQueue;
    v7->_containerQueue = v10;

    v12 = dispatch_queue_create("com.apple.iBooks.IMUbiquityStatusMonitor.dispatchQueue", 0);
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v12;

    v14 = dispatch_queue_create("com.apple.iBooks.IMUbiquityStatusMonitor.notifyQueue", 0);
    notifyQueue = v7->_notifyQueue;
    v7->_notifyQueue = v14;

    v16 = +[NSUserDefaults standardUserDefaults];
    v17 = [v16 valueForKey:@"nonNilUbiquityIdentityToken"];
    v7->_lastArchivedNonNilUbiquityIdentityTokenWasNonNilAtColdLaunch = v17 != 0;

    v7->_archivedCloudDriveOptedIn = +[BCSyncUserDefaults archivedICloudDriveSyncOptedInBeforeInitialTCCSync];
    v18 = v7->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4C1EC;
    block[3] = &unk_2C7D40;
    v19 = v7;
    v23 = v19;
    dispatch_async(v18, block);
    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v19 selector:"p_ubiquityIdentityDidChange:" name:NSUbiquityIdentityDidChangeNotification object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = IMUbiquityStatusMonitor;
  [(IMUbiquityStatusMonitor *)&v4 dealloc];
}

- (BCICloudIdentityToken)ubiquityIdentityToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_4C374;
  v11 = sub_4C384;
  v12 = 0;
  v3 = [(IMUbiquityStatusMonitor *)self dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4C38C;
  v6[3] = &unk_2C7AE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)dq_isICloudDriveEnabled
{
  v2 = +[BCSyncUserDefaults isICloudDriveSyncOptedIn];
  if (v2)
  {
    v3 = +[BCSyncUserDefaults isGlobalICloudDriveSyncOptedIn];
    if (v3)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }
  }

  else
  {
    v3 = 0;
    v4 = @"NO";
  }

  v5 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"YES";
    if (v2)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    if (!v3)
    {
      v7 = @"NO";
    }

    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "BCUbiquityStatusMonitor: dq_isICloudDriveEnabled: isICloudDriveSyncOptedIn = %@, globalICloudDrive = %@, isICloudDriveEnabled = %@", &v9, 0x20u);
  }

  return v3;
}

- (BOOL)isICloudDriveEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(IMUbiquityStatusMonitor *)self dispatchQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4C5D8;
  v5[3] = &unk_2C7AE0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)addObserver:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v12 = [(IMUbiquityStatusMonitor *)self dispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_4C6CC;
    v13[3] = &unk_2C7BE8;
    v13[4] = self;
    v14 = v11;
    dispatch_async(v12, v13);
  }

  else
  {
    sub_1E5FA0(0, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)removeObserver:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v12 = [(IMUbiquityStatusMonitor *)self dispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_4C81C;
    v13[3] = &unk_2C7BE8;
    v13[4] = self;
    v14 = v11;
    dispatch_async(v12, v13);
  }

  else
  {
    sub_1E6024(0, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)registerCoordinatingObserver:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v12 = [(IMUbiquityStatusMonitor *)self dispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_4C970;
    v13[3] = &unk_2C7BE8;
    v13[4] = self;
    v14 = v11;
    dispatch_async(v12, v13);
  }

  else
  {
    sub_1E605C(0, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)restartObserving
{
  v3 = [(IMUbiquityStatusMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4CA4C;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dq_archiveCurrentUbiquityIdentityToken
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(IMUbiquityStatusMonitor *)self currentUbiquityIdentityToken];
  v5 = [v4 token];
  [v3 setObject:v5 forKey:@"ubiquityIdentityToken"];

  v6 = [(IMUbiquityStatusMonitor *)self currentUbiquityIdentityToken];

  if (v6)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [(IMUbiquityStatusMonitor *)self currentUbiquityIdentityToken];
    v9 = [v8 token];
    [v7 setObject:v9 forKey:@"nonNilUbiquityIdentityToken"];
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 synchronize];
}

- (void)p_ubiquityIdentityDidChange:(id)a3
{
  v4 = [(IMUbiquityStatusMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4CEF4;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_notifyObserversForChangesWithCurrentToken:(id)a3 lastToken:(id)a4
{
  v16 = a3;
  v6 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(IMUbiquityStatusMonitor *)self observers];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [(IMUbiquityStatusMonitor *)self notifyQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_4D324;
          block[3] = &unk_2C89F8;
          v22 = v16;
          v23 = v6;
          v24 = v12;
          dispatch_async(v13, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v14 = [(IMUbiquityStatusMonitor *)self coordinatingObserver];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [(IMUbiquityStatusMonitor *)self notifyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_4D3E4;
    v17[3] = &unk_2C89F8;
    v18 = v16;
    v19 = v6;
    v20 = v14;
    dispatch_async(v15, v17);
  }
}

- (void)_notifyObserversForUnchangedWithCurrentToken:(id)a3
{
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(IMUbiquityStatusMonitor *)self observers];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(IMUbiquityStatusMonitor *)self notifyQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_4D6F8;
          block[3] = &unk_2C7BE8;
          v18 = v4;
          v19 = v10;
          dispatch_async(v11, block);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v12 = [(IMUbiquityStatusMonitor *)self coordinatingObserver];
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [(IMUbiquityStatusMonitor *)self notifyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_4D7A8;
    v14[3] = &unk_2C7BE8;
    v15 = v4;
    v16 = v12;
    dispatch_async(v13, v14);
  }
}

- (void)dq_refreshUbiquityAvailabilityStatus
{
  +[BCSyncUserDefaults syncDefaultsWithTCC];
  v3 = +[BCICloudIdentityToken tokenForCurrentIdentityIfICloudDriveEnabled];
  currentUbiquityIdentityToken = self->_currentUbiquityIdentityToken;
  self->_currentUbiquityIdentityToken = v3;

  v5 = [BCICloudIdentityToken alloc];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 valueForKey:@"ubiquityIdentityToken"];
  v8 = [(BCICloudIdentityToken *)v5 initFromArchive:v7];
  lastArchivedUbiquityIdentityToken = self->_lastArchivedUbiquityIdentityToken;
  self->_lastArchivedUbiquityIdentityToken = v8;

  v10 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(IMUbiquityStatusMonitor *)self containerIdentifier];
    v17 = self->_currentUbiquityIdentityToken;
    v18 = self->_lastArchivedUbiquityIdentityToken;
    *buf = 138412802;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "BCUbiquityStatusMonitor: dq_refreshUbiquityAvailabilityStatus container:%@ current::%@ oldToken:%@", buf, 0x20u);
  }

  v11 = self->_currentUbiquityIdentityToken;
  v12 = [(IMUbiquityStatusMonitor *)self containerQueue];
  v13 = v12;
  if (v11)
  {
    v14 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v15 = sub_4DA5C;
  }

  else
  {
    v14 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v15 = sub_4E0DC;
  }

  v14[2] = v15;
  v14[3] = &unk_2C7D40;
  v14[4] = self;
  dispatch_async(v12, v14);
}

- (NSURL)containerURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_4C374;
  v11 = sub_4C384;
  v12 = 0;
  v3 = [(IMUbiquityStatusMonitor *)self containerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4E284;
  v6[3] = &unk_2C7AE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSURL)documentsURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_4C374;
  v11 = sub_4C384;
  v12 = 0;
  v3 = [(IMUbiquityStatusMonitor *)self containerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4E3B4;
  v6[3] = &unk_2C7AE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([(IMUbiquityStatusMonitor *)self isICloudDriveEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(IMUbiquityStatusMonitor *)self containerURL];
  v7 = [(IMUbiquityStatusMonitor *)self documentsURL];
  v8 = [NSString stringWithFormat:@"<%@(%p) iCloudDrive=%@ containerURL='%@' documentsURL='%@'", v4, self, v5, v6, v7];

  return v8;
}

- (id)makeOSStateHandler
{
  objc_initWeak(&location, self);
  v2 = [BUOSStateHandler alloc];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4E58C;
  v5[3] = &unk_2C9988;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithTitle:@"BCUbiquityStatusMonitor" block:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (id)_stateForLog
{
  v8 = @"ubiquityIdentityToken";
  v2 = [(IMUbiquityStatusMonitor *)self ubiquityIdentityToken];
  v3 = [v2 token];
  v4 = v3;
  v5 = &stru_2D2930;
  if (v3)
  {
    v5 = v3;
  }

  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  return v6;
}

- (IMUbiquityStatusChangeObserving)coordinatingObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinatingObserver);

  return WeakRetained;
}

@end