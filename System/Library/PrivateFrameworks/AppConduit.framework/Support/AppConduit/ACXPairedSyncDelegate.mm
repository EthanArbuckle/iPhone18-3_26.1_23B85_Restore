@interface ACXPairedSyncDelegate
+ (id)sharedSyncDelegate;
- (ACXPairedSyncDelegate)init;
- (BOOL)syncingIsRestrictedForPairingID:(id)a3;
- (void)_startSystemAppInstallerWithSyncSession:(id)a3 forConnection:(id)a4;
- (void)_syncDidCompleteForPairingIdentifier:(id)a3 withDescription:(id)a4;
- (void)installCompleteForSyncSession:(id)a3;
- (void)reportSystemAppInstallFailureForBundleID:(id)a3;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
@end

@implementation ACXPairedSyncDelegate

+ (id)sharedSyncDelegate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004DEC;
  block[3] = &unk_10008CBE8;
  block[4] = a1;
  if (qword_1000A4748 != -1)
  {
    dispatch_once(&qword_1000A4748, block);
  }

  v2 = qword_1000A4740;

  return v2;
}

- (ACXPairedSyncDelegate)init
{
  v8.receiver = self;
  v8.super_class = ACXPairedSyncDelegate;
  v2 = [(ACXPairedSyncDelegate *)&v8 init];
  if (v2)
  {
    v3 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.appconduitd"];
    coordinator = v2->_coordinator;
    v2->_coordinator = v3;

    [(PSYSyncCoordinator *)v2->_coordinator setDelegate:v2];
    v5 = [[PSYInitialSyncStateObserver alloc] initWithDelegate:v2];
    stateObserver = v2->_stateObserver;
    v2->_stateObserver = v5;
  }

  return v2;
}

- (void)_startSystemAppInstallerWithSyncSession:(id)a3 forConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ACXPairedSyncAppInstaller alloc] initWithSyncSession:v7 forConnection:v6 delegate:self];

  appInstaller = self->_appInstaller;
  self->_appInstaller = v8;

  v10 = self->_appInstaller;

  [(ACXPairedSyncAppInstaller *)v10 start];
}

- (BOOL)syncingIsRestrictedForPairingID:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(ACXPairedSyncDelegate *)self stateObserver];
  if (!v6)
  {
    __assert_rtn("[ACXPairedSyncDelegate syncingIsRestrictedForPairingID:]", "ACXPairedSyncDelegate.m", 66, "self.stateObserver");
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005114;
  v14[3] = &unk_10008CC10;
  v7 = v4;
  v15 = v7;
  v17 = &v18;
  v8 = v5;
  v16 = v8;
  v9 = objc_retainBlock(v14);
  v10 = [(ACXPairedSyncDelegate *)self stateObserver];
  [v10 requestInitialSyncStateForPairingIdentifier:v7 completion:v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (v19[3])
  {
    v11 = 1;
  }

  else
  {
    v12 = [(ACXPairedSyncDelegate *)self stateObserver];
    [v12 requestSyncStateForPairingIdentifier:v7 completion:v9];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v11 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

- (void)_syncDidCompleteForPairingIdentifier:(id)a3 withDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(21, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000052B8;
  v10[3] = &unk_10008CC38;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  sub_100005828(v7, v10);
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = v6;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [v6 syncSessionType];
    v15 = NSStringfromPSYSyncSessionType();
    MOLogWrite();
  }

  v8 = +[ACXDeviceManager sharedManager];
  v9 = [v7 pairedDevice];
  v10 = [v8 deviceForNRDevice:v9];

  v11 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  v12 = [v11 connectionForDevice:v10];

  v13 = [v7 syncSessionType];
  if (v13 && v13 != 2)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v14 = [v7 syncSessionType];
      [v7 syncSessionType];
      NSStringfromPSYSyncSessionType();
      v17 = v16 = v14;
      MOLogWrite();
    }

    [v7 syncDidComplete];
  }

  else
  {
    [(ACXPairedSyncDelegate *)self _startSystemAppInstallerWithSyncSession:v7 forConnection:v12];
  }
}

- (void)reportSystemAppInstallFailureForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(ACXPairedSyncDelegate *)self appInstaller];
  [v5 reportAppInstallFailureForBundleID:v4];
}

- (void)installCompleteForSyncSession:(id)a3
{
  appInstaller = self->_appInstaller;
  self->_appInstaller = 0;
  v4 = a3;

  [v4 syncDidComplete];
}

@end