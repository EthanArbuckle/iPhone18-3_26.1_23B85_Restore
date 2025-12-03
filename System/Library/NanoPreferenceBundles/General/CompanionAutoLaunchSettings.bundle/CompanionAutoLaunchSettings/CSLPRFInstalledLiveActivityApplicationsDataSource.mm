@interface CSLPRFInstalledLiveActivityApplicationsDataSource
- (CSLPRFInstalledLiveActivityApplicationsDataSource)init;
- (CSLPRFInstalledLiveActivityApplicationsDataSourceDelegate)delegate;
- (id)backgroundModesForBundleId:(id)id;
- (void)_setApplications:(id)applications;
- (void)_update;
- (void)_withLock:(id)lock;
- (void)invalidate;
- (void)start;
@end

@implementation CSLPRFInstalledLiveActivityApplicationsDataSource

- (CSLPRFInstalledLiveActivityApplicationsDataSource)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFInstalledLiveActivityApplicationsDataSource;
  v2 = [(CSLPRFInstalledLiveActivityApplicationsDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    mutableApps = v2->_mutableApps;
    v2->_mutableApps = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)start
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_applicationDatabaseDidChange:" name:ACXRemoteApplicationsInstalledDistributedNotification object:0];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_applicationDatabaseDidChange:" name:ACXRemoteApplicationsUpdatedDistributedNotification object:0];

  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_applicationDatabaseDidChange:" name:ACXRemoteApplicationsUninstalledDistributedNotification object:0];

  [(CSLPRFInstalledLiveActivityApplicationsDataSource *)self _update];
}

- (void)invalidate
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setApplications:(id)applications
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_30B0;
  v4[3] = &unk_35478;
  selfCopy = self;
  applicationsCopy = applications;
  v3 = applicationsCopy;
  [(CSLPRFInstalledLiveActivityApplicationsDataSource *)selfCopy _withLock:v4];
}

- (void)_update
{
  v3 = _os_activity_create(&dword_0, "Update Apps", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v4 getActivePairedDevice];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = dispatch_group_create();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_33F8;
  v26[3] = &unk_35588;
  v8 = v3;
  v27 = v8;
  v9 = v7;
  v28 = v9;
  selfCopy = self;
  v10 = v6;
  v30 = v10;
  v11 = objc_retainBlock(v26);
  dispatch_group_enter(v9);
  v12 = +[ACXDeviceConnection sharedDeviceConnection];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_3638;
  v24[3] = &unk_354C8;
  v13 = v11;
  v25 = v13;
  [v12 enumerateInstalledApplicationsOnPairedDevice:getActivePairedDevice withBlock:v24];

  dispatch_group_enter(v9);
  v14 = +[ACXDeviceConnection sharedDeviceConnection];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_3650;
  v22[3] = &unk_354F0;
  v15 = v13;
  v23 = v15;
  [v14 enumerateLocallyAvailableApplicationsForPairedDevice:getActivePairedDevice options:1 withBlock:v22];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3668;
  block[3] = &unk_35540;
  v19 = v8;
  v20 = v10;
  selfCopy2 = self;
  v16 = v10;
  v17 = v8;
  dispatch_group_notify(v9, &_dispatch_main_q, block);

  os_activity_scope_leave(&state);
}

- (id)backgroundModesForBundleId:(id)id
{
  idCopy = id;
  v5 = NSSelectorFromString(@"uiBackgroundModes");
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_apps;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v12 = [bundleIdentifier isEqualToString:idCopy];

        if (v12)
        {
          backgroundModes = [v10 backgroundModes];
          v7 = [NSMutableArray arrayWithArray:backgroundModes];

          if (objc_opt_respondsToSelector())
          {
            [v7 addObjectsFromArray:{objc_msgSend(v10, "performSelector:", v5)}];
          }

          goto LABEL_12;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (CSLPRFInstalledLiveActivityApplicationsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end