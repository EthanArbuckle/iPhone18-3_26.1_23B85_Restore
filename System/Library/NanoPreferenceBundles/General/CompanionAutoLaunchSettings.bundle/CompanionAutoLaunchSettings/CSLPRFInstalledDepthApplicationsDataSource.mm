@interface CSLPRFInstalledDepthApplicationsDataSource
- (CSLPRFInstalledDepthApplicationsDataSource)initWithStingModel:(id)model;
- (CSLPRFInstalledDepthApplicationsDataSourceDelegate)delegate;
- (void)_setApplications:(id)applications;
- (void)_update;
- (void)_withLock:(id)lock;
- (void)invalidate;
- (void)start;
@end

@implementation CSLPRFInstalledDepthApplicationsDataSource

- (CSLPRFInstalledDepthApplicationsDataSource)initWithStingModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = CSLPRFInstalledDepthApplicationsDataSource;
  v6 = [(CSLPRFInstalledDepthApplicationsDataSource *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    mutableApps = v6->_mutableApps;
    v6->_mutableApps = v7;

    objc_storeStrong(&v6->_stingSettingsModel, model);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)start
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_applicationDatabaseDidChange:" name:ACXRemoteApplicationsInstalledDistributedNotification object:0];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_applicationDatabaseDidChange:" name:ACXRemoteApplicationsUpdatedDistributedNotification object:0];

  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_applicationDatabaseDidChange:" name:ACXRemoteApplicationsUninstalledDistributedNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_stingSettingsModelDidChange:" name:CSLPRFStingSettingsModelDidChangeNotification object:0];

  [(CSLPRFInstalledDepthApplicationsDataSource *)self _update];
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
  v4[2] = sub_1E34;
  v4[3] = &unk_35478;
  selfCopy = self;
  applicationsCopy = applications;
  v3 = applicationsCopy;
  [(CSLPRFInstalledDepthApplicationsDataSource *)selfCopy _withLock:v4];
}

- (void)_update
{
  v3 = _os_activity_create(&dword_0, "Update Apps", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = +[PDRRegistry sharedInstance];
  getActivePairedDevice = [v4 getActivePairedDevice];

  LOBYTE(v4) = [getActivePairedDevice supportsCapability:364860829];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = dispatch_group_create();
  stingSettingsModel = [(CSLPRFInstalledDepthApplicationsDataSource *)self stingSettingsModel];
  v9 = [stingSettingsModel bundleIDsForActionType:20];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_2200;
  v31[3] = &unk_354A0;
  v10 = v3;
  v32 = v10;
  v11 = v7;
  v33 = v11;
  v37 = v4;
  v12 = v9;
  v34 = v12;
  selfCopy = self;
  v13 = v6;
  v36 = v13;
  v14 = objc_retainBlock(v31);
  dispatch_group_enter(v11);
  v15 = +[ACXDeviceConnection sharedDeviceConnection];
  pairingID = [getActivePairedDevice pairingID];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_24A4;
  v29[3] = &unk_354C8;
  v17 = v14;
  v30 = v17;
  [v15 enumerateInstalledApplicationsOnDeviceWithPairingID:pairingID withBlock:v29];

  dispatch_group_enter(v11);
  v18 = +[ACXDeviceConnection sharedDeviceConnection];
  pairingID2 = [getActivePairedDevice pairingID];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_24BC;
  v27[3] = &unk_354F0;
  v20 = v17;
  v28 = v20;
  [v18 enumerateLocallyAvailableApplicationsForDeviceWithPairingID:pairingID2 options:1 withBlock:v27];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_24D4;
  v23[3] = &unk_35540;
  v24 = v10;
  v25 = v13;
  selfCopy2 = self;
  v21 = v13;
  v22 = v10;
  dispatch_group_notify(v11, &_dispatch_main_q, v23);

  os_activity_scope_leave(&state);
}

- (CSLPRFInstalledDepthApplicationsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end