@interface MapsSiriIPCInterface
+ (id)sharedInterface;
- (void)_configureIncomingConnection:(id)a3;
- (void)_startMapsAppStateMonitor;
- (void)endNavigationWithCompletion:(id)a3;
- (void)establishConnection;
- (void)getGuidanceState:(id)a3 completion:(id)a4;
- (void)handleTrafficeReroute:(id)a3 completion:(id)a4;
- (void)repeatLastGuidanceInstructionWithCompletion:(id)a3;
- (void)repeatLastReroutePromptWithCompletion:(id)a3;
- (void)setNavigationMuted:(id)a3 completion:(id)a4;
- (void)setNavigationVoiceVolume:(id)a3 completion:(id)a4;
@end

@implementation MapsSiriIPCInterface

+ (id)sharedInterface
{
  if (qword_5A750 != -1)
  {
    sub_1900();
  }

  v3 = qword_5A748;

  return v3;
}

- (void)_configureIncomingConnection:(id)a3
{
  v4 = a3;
  [v4 setExportedObject:self];
  v5 = +[NSXPCInterface _maps_mapsSiriXPCClientInterface];
  [v4 setExportedInterface:v5];

  v6 = +[NSXPCInterface _maps_mapsSiriXPCInterface];
  [v4 setRemoteObjectInterface:v6];
}

- (void)handleTrafficeReroute:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  messagingQueue = self->super.super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A738;
  block[3] = &unk_34C40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(messagingQueue, block);
}

- (void)endNavigationWithCompletion:(id)a3
{
  v4 = a3;
  messagingQueue = self->super.super._messagingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A840;
  v7[3] = &unk_34BA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(messagingQueue, v7);
}

- (void)getGuidanceState:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  messagingQueue = self->super.super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A974;
  block[3] = &unk_34C40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(messagingQueue, block);
}

- (void)repeatLastReroutePromptWithCompletion:(id)a3
{
  v4 = a3;
  messagingQueue = self->super.super._messagingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_AA7C;
  v7[3] = &unk_34BA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(messagingQueue, v7);
}

- (void)repeatLastGuidanceInstructionWithCompletion:(id)a3
{
  v4 = a3;
  messagingQueue = self->super.super._messagingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_AB84;
  v7[3] = &unk_34BA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(messagingQueue, v7);
}

- (void)setNavigationMuted:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  messagingQueue = self->super.super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_ACB8;
  block[3] = &unk_34C40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(messagingQueue, block);
}

- (void)setNavigationVoiceVolume:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  messagingQueue = self->super.super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AE64;
  block[3] = &unk_34C40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(messagingQueue, block);
}

- (void)_startMapsAppStateMonitor
{
  v3 = [BKSApplicationStateMonitor alloc];
  v7 = MapsAppBundleId;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 initWithBundleIDs:v4 states:BKSApplicationStateAll];
  applicationStateMonitor = self->_applicationStateMonitor;
  self->_applicationStateMonitor = v5;
}

- (void)establishConnection
{
  v2 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Received establish connection message.", v3, 2u);
  }
}

@end