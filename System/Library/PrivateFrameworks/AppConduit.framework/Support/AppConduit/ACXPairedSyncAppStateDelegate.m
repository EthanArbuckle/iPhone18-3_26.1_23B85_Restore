@interface ACXPairedSyncAppStateDelegate
+ (id)sharedAppStateSyncDelegate;
- (ACXPairedSyncAppStateDelegate)init;
- (void)_onQueue_triggerSyncSessionCompleteAndRemoveObserver;
- (void)resyncCompleted;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
@end

@implementation ACXPairedSyncAppStateDelegate

+ (id)sharedAppStateSyncDelegate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E510;
  block[3] = &unk_10008CBE8;
  block[4] = a1;
  if (qword_1000A4850 != -1)
  {
    dispatch_once(&qword_1000A4850, block);
  }

  v2 = qword_1000A4848;

  return v2;
}

- (ACXPairedSyncAppStateDelegate)init
{
  v8.receiver = self;
  v8.super_class = ACXPairedSyncAppStateDelegate;
  v2 = [(ACXPairedSyncAppStateDelegate *)&v8 init];
  if (v2)
  {
    v3 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.appconduitd.appstate"];
    coordinator = v2->_coordinator;
    v2->_coordinator = v3;

    [(PSYSyncCoordinator *)v2->_coordinator setDelegate:v2];
    v5 = dispatch_queue_create("com.apple.pairedsync.appstate.delegate", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [v5 syncSessionType];
    v18 = NSStringfromPSYSyncSessionType();
    MOLogWrite();
  }

  [(ACXPairedSyncAppStateDelegate *)self setSyncSession:v6, v18];
  v7 = +[ACXDeviceManager sharedManager];
  v8 = [v6 pairedDevice];
  v9 = [v7 deviceForNRDevice:v8];

  v10 = +[ACXGizmoStateManager sharedStateManager];
  v11 = [v10 stateForDevice:v9];

  v12 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  v13 = [v12 connectionForDevice:v9];

  v14 = [(ACXPairedSyncAppStateDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E7C4;
  block[3] = &unk_10008CC88;
  v20 = v6;
  v21 = v11;
  v22 = v13;
  v23 = self;
  v15 = v13;
  v16 = v11;
  v17 = v6;
  dispatch_async(v14, block);
}

- (void)_onQueue_triggerSyncSessionCompleteAndRemoveObserver
{
  v3 = [(ACXPairedSyncAppStateDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v4 = [(ACXPairedSyncAppStateDelegate *)self remoteAppList];

  if (v4)
  {
    v5 = [(ACXPairedSyncAppStateDelegate *)self remoteAppList];
    v6 = [(ACXPairedSyncAppStateDelegate *)self queue];
    [v5 removeObserver:self queue:v6];

    [(ACXPairedSyncAppStateDelegate *)self setRemoteAppList:0];
  }

  v7 = [(ACXPairedSyncAppStateDelegate *)self syncSession];
  [v7 syncDidComplete];

  [(ACXPairedSyncAppStateDelegate *)self setSyncSession:0];
}

- (void)resyncCompleted
{
  v3 = [(ACXPairedSyncAppStateDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  [(ACXPairedSyncAppStateDelegate *)self _onQueue_triggerSyncSessionCompleteAndRemoveObserver];
}

@end