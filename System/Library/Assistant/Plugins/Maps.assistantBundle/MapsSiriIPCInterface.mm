@interface MapsSiriIPCInterface
+ (id)sharedInterface;
- (void)_configureIncomingConnection:(id)connection;
- (void)_startMapsAppStateMonitor;
- (void)endNavigationWithCompletion:(id)completion;
- (void)establishConnection;
- (void)getGuidanceState:(id)state completion:(id)completion;
- (void)handleTrafficeReroute:(id)reroute completion:(id)completion;
- (void)repeatLastGuidanceInstructionWithCompletion:(id)completion;
- (void)repeatLastReroutePromptWithCompletion:(id)completion;
- (void)setNavigationMuted:(id)muted completion:(id)completion;
- (void)setNavigationVoiceVolume:(id)volume completion:(id)completion;
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

- (void)_configureIncomingConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setExportedObject:self];
  v5 = +[NSXPCInterface _maps_mapsSiriXPCClientInterface];
  [connectionCopy setExportedInterface:v5];

  v6 = +[NSXPCInterface _maps_mapsSiriXPCInterface];
  [connectionCopy setRemoteObjectInterface:v6];
}

- (void)handleTrafficeReroute:(id)reroute completion:(id)completion
{
  rerouteCopy = reroute;
  completionCopy = completion;
  messagingQueue = self->super.super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A738;
  block[3] = &unk_34C40;
  block[4] = self;
  v12 = rerouteCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = rerouteCopy;
  dispatch_async(messagingQueue, block);
}

- (void)endNavigationWithCompletion:(id)completion
{
  completionCopy = completion;
  messagingQueue = self->super.super._messagingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A840;
  v7[3] = &unk_34BA8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(messagingQueue, v7);
}

- (void)getGuidanceState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  messagingQueue = self->super.super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A974;
  block[3] = &unk_34C40;
  block[4] = self;
  v12 = stateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = stateCopy;
  dispatch_async(messagingQueue, block);
}

- (void)repeatLastReroutePromptWithCompletion:(id)completion
{
  completionCopy = completion;
  messagingQueue = self->super.super._messagingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_AA7C;
  v7[3] = &unk_34BA8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(messagingQueue, v7);
}

- (void)repeatLastGuidanceInstructionWithCompletion:(id)completion
{
  completionCopy = completion;
  messagingQueue = self->super.super._messagingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_AB84;
  v7[3] = &unk_34BA8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(messagingQueue, v7);
}

- (void)setNavigationMuted:(id)muted completion:(id)completion
{
  mutedCopy = muted;
  completionCopy = completion;
  messagingQueue = self->super.super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_ACB8;
  block[3] = &unk_34C40;
  block[4] = self;
  v12 = mutedCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = mutedCopy;
  dispatch_async(messagingQueue, block);
}

- (void)setNavigationVoiceVolume:(id)volume completion:(id)completion
{
  volumeCopy = volume;
  completionCopy = completion;
  messagingQueue = self->super.super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AE64;
  block[3] = &unk_34C40;
  block[4] = self;
  v12 = volumeCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = volumeCopy;
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