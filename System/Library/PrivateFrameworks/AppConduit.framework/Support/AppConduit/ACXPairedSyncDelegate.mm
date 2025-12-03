@interface ACXPairedSyncDelegate
+ (id)sharedSyncDelegate;
- (ACXPairedSyncDelegate)init;
- (BOOL)syncingIsRestrictedForPairingID:(id)d;
- (void)_startSystemAppInstallerWithSyncSession:(id)session forConnection:(id)connection;
- (void)_syncDidCompleteForPairingIdentifier:(id)identifier withDescription:(id)description;
- (void)installCompleteForSyncSession:(id)session;
- (void)reportSystemAppInstallFailureForBundleID:(id)d;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
@end

@implementation ACXPairedSyncDelegate

+ (id)sharedSyncDelegate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004DEC;
  block[3] = &unk_10008CBE8;
  block[4] = self;
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

- (void)_startSystemAppInstallerWithSyncSession:(id)session forConnection:(id)connection
{
  connectionCopy = connection;
  sessionCopy = session;
  v8 = [[ACXPairedSyncAppInstaller alloc] initWithSyncSession:sessionCopy forConnection:connectionCopy delegate:self];

  appInstaller = self->_appInstaller;
  self->_appInstaller = v8;

  v10 = self->_appInstaller;

  [(ACXPairedSyncAppInstaller *)v10 start];
}

- (BOOL)syncingIsRestrictedForPairingID:(id)d
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = dispatch_semaphore_create(0);
  stateObserver = [(ACXPairedSyncDelegate *)self stateObserver];
  if (!stateObserver)
  {
    __assert_rtn("[ACXPairedSyncDelegate syncingIsRestrictedForPairingID:]", "ACXPairedSyncDelegate.m", 66, "self.stateObserver");
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005114;
  v14[3] = &unk_10008CC10;
  v7 = dCopy;
  v15 = v7;
  v17 = &v18;
  v8 = v5;
  v16 = v8;
  v9 = objc_retainBlock(v14);
  stateObserver2 = [(ACXPairedSyncDelegate *)self stateObserver];
  [stateObserver2 requestInitialSyncStateForPairingIdentifier:v7 completion:v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (v19[3])
  {
    v11 = 1;
  }

  else
  {
    stateObserver3 = [(ACXPairedSyncDelegate *)self stateObserver];
    [stateObserver3 requestSyncStateForPairingIdentifier:v7 completion:v9];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v11 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

- (void)_syncDidCompleteForPairingIdentifier:(id)identifier withDescription:(id)description
{
  identifierCopy = identifier;
  descriptionCopy = description;
  v7 = dispatch_get_global_queue(21, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000052B8;
  v10[3] = &unk_10008CC38;
  v11 = descriptionCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = descriptionCopy;
  sub_100005828(v7, v10);
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v7 = sessionCopy;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [sessionCopy syncSessionType];
    v15 = NSStringfromPSYSyncSessionType();
    MOLogWrite();
  }

  v8 = +[ACXDeviceManager sharedManager];
  pairedDevice = [v7 pairedDevice];
  v10 = [v8 deviceForNRDevice:pairedDevice];

  v11 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  v12 = [v11 connectionForDevice:v10];

  syncSessionType = [v7 syncSessionType];
  if (syncSessionType && syncSessionType != 2)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      syncSessionType2 = [v7 syncSessionType];
      [v7 syncSessionType];
      NSStringfromPSYSyncSessionType();
      v17 = v16 = syncSessionType2;
      MOLogWrite();
    }

    [v7 syncDidComplete];
  }

  else
  {
    [(ACXPairedSyncDelegate *)self _startSystemAppInstallerWithSyncSession:v7 forConnection:v12];
  }
}

- (void)reportSystemAppInstallFailureForBundleID:(id)d
{
  dCopy = d;
  appInstaller = [(ACXPairedSyncDelegate *)self appInstaller];
  [appInstaller reportAppInstallFailureForBundleID:dCopy];
}

- (void)installCompleteForSyncSession:(id)session
{
  appInstaller = self->_appInstaller;
  self->_appInstaller = 0;
  sessionCopy = session;

  [sessionCopy syncDidComplete];
}

@end