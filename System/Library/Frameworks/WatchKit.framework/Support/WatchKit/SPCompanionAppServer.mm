@interface SPCompanionAppServer
- (BOOL)_checkUnlockedSinceBoot;
- (BOOL)_isApplicationViewControllerActivate:(id)activate;
- (BOOL)_unlockedSinceBoot;
- (BOOL)connection:(id)connection hasEntitlement:(id)entitlement;
- (BOOL)isExtensionDoingSnapshot:(id)snapshot;
- (BOOL)isPaired;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldKillExtensionOnError:(id)error;
- (BOOL)showUserNotificationWithTitle:(id)title message:(id)message;
- (SPCompanionAppServer)init;
- (id)_setupSignal:(int)signal handler:(id)handler;
- (id)_textSize;
- (id)_textSizeChanged;
- (id)appBundleIDFromPlist:(id)plist;
- (id)applicationIdentifierFromXPCConnection:(id)connection;
- (id)decodeInData:(id)data;
- (id)decodeOutData:(id)data;
- (id)decodeProtoData:(id)data;
- (id)logDictionary:(id)dictionary;
- (id)logStringArray:(id)array;
- (id)transactionDictForID:(id)d removeFromOutstanding:(BOOL)outstanding;
- (void)_applicationActivated:(id)activated;
- (void)_applicationDeactivated:(id)deactivated;
- (void)_cancelLaunchSockPuppetAppTimeout;
- (void)_saveReceiveTime;
- (void)_saveSendTimeAndSize:(unint64_t)size;
- (void)_sendTextSizeToApplication:(id)application onlyIfChanged:(BOOL)changed;
- (void)_setupSignalHandlers;
- (void)_sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:(id)identifier options:(id)options acxRetryGeneration:(unint64_t)generation completion:(id)completion;
- (void)activeComplicationsWithCompletion:(id)completion;
- (void)cancelGizmoApplicationsUpdateTimer;
- (void)clearLastResetDateForPluginIdentifier:(id)identifier;
- (void)extensionDidBeginSnapshot:(id)snapshot;
- (void)extensionDidEndSnapshot:(id)snapshot;
- (void)extensionWithIdentifier:(id)identifier gotUnknownInterfaceController:(id)controller;
- (void)fetchInstalledApplicationsWithCompletion:(id)completion;
- (void)fetchNotificationForNotificationID:(id)d completion:(id)completion;
- (void)getCompanionExtensionPIDForCompanionAppWithIdentifier:(id)identifier completion:(id)completion;
- (void)getSockPuppetAppRunningStatusForCompanionAppWithIdentifier:(id)identifier completion:(id)completion;
- (void)handleIncomingData:(id)data;
- (void)handleIncomingPlist:(id)plist;
- (void)handleIncomingProtoPlist:(id)plist;
- (void)hideUserNotification;
- (void)incomingData:(id)data;
- (void)incomingProtobuf:(id)protobuf;
- (void)killExtensionForAppIdentifier:(id)identifier;
- (void)launchSockPuppetAppForCompanionAppWithIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (void)logDataSent:(unint64_t)sent application:(id)application;
- (void)nanoRegistryChanged:(id)changed;
- (void)releaseProcessAssertion:(id)assertion;
- (void)releaseProcessAssertionForXcode;
- (void)releaseRemoteInterfaceAssertionsForPluginIdentifer:(id)identifer;
- (void)requestTimingData:(id)data timingMetaData:(id)metaData;
- (void)sendAndTrackTransactionDict:(id)dict withCompletion:(id)completion;
- (void)sendCacheRequest:(id)request identifier:(id)identifier;
- (void)sendData:(id)data identifier:(id)identifier clientIdentifiers:(id)identifiers;
- (void)sendData:(id)data identifier:(id)identifier clientIdentifiers:(id)identifiers reply:(id)reply;
- (void)sendData:(id)data toApplication:(id)application;
- (void)sendData:(id)data toCompanionApplication:(id)application fromIdentifier:(id)identifier;
- (void)sendFirstUnlockStatusToGizmo;
- (void)sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type;
- (void)sendProtoData:(id)data toCompanionApplication:(id)application fromIdentifier:(id)identifier;
- (void)sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type;
- (void)sendToRemoteInterface:(id)interface call:(id)call;
- (void)setApplicationIDForXcodeProcessAssertion:(id)assertion;
- (void)setLastExtensionKilledDateForPluginIdentifier:(id)identifier;
- (void)setup;
- (void)showUserNotification:(int64_t)notification applicationName:(id)name;
- (void)takeProcessAssertionForXcode:(id)xcode;
- (void)terminateSockPuppetAppForCompanionAppWithIdentifier:(id)identifier completion:(id)completion;
- (void)wakeExtensionForWatchApp:(id)app;
- (void)xcodeWillInstallSockPuppetAppWithCompanionAppIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SPCompanionAppServer

- (SPCompanionAppServer)init
{
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v54 = "[SPCompanionAppServer init]";
    v55 = 1024;
    v56 = 402;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ******* SPCompanionAppServer, init started", buf, 0x12u);
  }

  v50.receiver = self;
  v50.super_class = SPCompanionAppServer;
  v4 = [(SPCompanionAppServer *)&v50 init];
  [(SPCompanionAppServer *)v4 _setupSignalHandlers];
  v5 = objc_alloc_init(SPUsageTrack);
  [(SPCompanionAppServer *)v4 setUsageTrack:v5];

  v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.companionappd"];
  [(SPCompanionAppServer *)v4 setLocalListener:v6];

  localListener = [(SPCompanionAppServer *)v4 localListener];
  [localListener setDelegate:v4];

  v8 = +[NSMutableDictionary dictionary];
  [(SPCompanionAppServer *)v4 setLocalConnections:v8];

  v9 = +[SPTransport sharedInstance];
  [v9 setTransportDelegate:v4];

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100009064;
  handler[3] = &unk_100045458;
  v10 = v4;
  v49 = v10;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, &stru_100045498);

  v11 = dispatch_queue_create("com.apple.companionappd.queue", 0);
  queue = v10->_queue;
  v10->_queue = v11;

  v13 = dispatch_queue_create("com.apple.companionappd.queueRemote", 0);
  queueRemote = v10->_queueRemote;
  v10->_queueRemote = v13;

  v15 = dispatch_queue_create("com.apple.watchkit.timingTestQueue", 0);
  timingTest_queue = v10->_timingTest_queue;
  v10->_timingTest_queue = v15;

  v17 = dispatch_queue_create("com.apple.companionappd.transactionQueue", 0);
  transactionQueue = v10->_transactionQueue;
  v10->_transactionQueue = v17;

  v19 = dispatch_queue_create("com.apple.companionappd.processAssertionQueue", 0);
  processAssertionQueue = v10->_processAssertionQueue;
  v10->_processAssertionQueue = v19;

  v21 = dispatch_queue_create("com.apple.companionappd.processAssertionForXcodeQueue", 0);
  processAssertionForXcodeQueue = v10->_processAssertionForXcodeQueue;
  v10->_processAssertionForXcodeQueue = v21;

  v23 = dispatch_queue_create("com.apple.companionappd.remoteInterfaceProcessAssertionsQueue", 0);
  remoteInterfaceProcessAssertionsQueue = v10->_remoteInterfaceProcessAssertionsQueue;
  v10->_remoteInterfaceProcessAssertionsQueue = v23;

  v25 = +[NSMutableDictionary dictionary];
  remoteInterfaceProcessAssertions = v10->_remoteInterfaceProcessAssertions;
  v10->_remoteInterfaceProcessAssertions = v25;

  v27 = dispatch_queue_create("com.apple.companionappd.launchGizmoApp", 0);
  launchSockPuppetAppQueue = v10->_launchSockPuppetAppQueue;
  v10->_launchSockPuppetAppQueue = v27;

  v29 = +[NSMutableDictionary dictionary];
  extensionsDoingSnapshot = v10->_extensionsDoingSnapshot;
  v10->_extensionsDoingSnapshot = v29;

  v31 = dispatch_queue_create("com.apple.companionappd.extensionsDoingBackgroundGlanceUpdate", &_dispatch_queue_attr_concurrent);
  extensionsDoingSnapshotQueue = v10->_extensionsDoingSnapshotQueue;
  v10->_extensionsDoingSnapshotQueue = v31;

  v33 = +[NSMutableDictionary dictionary];
  lastExtensionKilledDates = v10->_lastExtensionKilledDates;
  v10->_lastExtensionKilledDates = v33;

  v35 = dispatch_queue_create("com.apple.gizmoappd.lastExtensionKilledDates", 0);
  lastExtensionKilledDatesQueue = v10->_lastExtensionKilledDatesQueue;
  v10->_lastExtensionKilledDatesQueue = v35;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, sub_100014970, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v38 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v38, v10, sub_100014970, @"com.apple.nano.watchlanguagechanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v39 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v39, v10, sub_100014970, @"com.apple.nano.watchlocalechanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v40 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v40, v10, sub_100009370, @"com.apple.sockpuppet.activeComplicationsPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v41 = +[NSNotificationCenter defaultCenter];
  [v41 addObserver:v10 selector:"nanoRegistryChanged:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

  v42 = +[NSNotificationCenter defaultCenter];
  [v42 addObserver:v10 selector:"nanoRegistryChanged:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v10->_paired = [(SPCompanionAppServer *)v10 isPaired];
  v51 = @"c";
  v52 = @"ds";
  v43 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  [(SPCompanionAppServer *)v10 sendPlist:v43 timeOut:1 securityType:IDSMaxMessageTimeout];

  v44 = +[SPCompanionNotificationHandler sharedInstance];
  [(SPCompanionAppServer *)v10 sendFirstUnlockStatusToGizmo];
  if (spUtils_isRunningInF5DemoMode())
  {
    v45 = wk_default_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_10002838C();
    }
  }

  v46 = wk_default_log();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v54 = "[SPCompanionAppServer init]";
    v55 = 1024;
    v56 = 522;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ******* SPCompanionAppServer, init completed", buf, 0x12u);
  }

  return v10;
}

- (void)_setupSignalHandlers
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000094E8;
  v4[3] = &unk_100044778;
  v4[4] = self;
  v2 = [(SPCompanionAppServer *)self _setupSignal:31 handler:v4];
  v3 = qword_100051CD8;
  qword_100051CD8 = v2;
}

- (id)_setupSignal:(int)signal handler:(id)handler
{
  handlerCopy = handler;
  v6 = dispatch_source_create(&_dispatch_source_type_signal, signal, 0, &_dispatch_main_q);
  if (v6)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100009A34;
    handler[3] = &unk_1000454E8;
    v10 = handlerCopy;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    signal(signal, 1);
    v7 = v10;
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100028410();
    }
  }

  return v6;
}

- (void)logDataSent:(unint64_t)sent application:(id)application
{
  applicationCopy = application;
  [(SPCompanionAppServer *)self _saveSendTimeAndSize:sent];
  usageTrack = [(SPCompanionAppServer *)self usageTrack];
  [usageTrack dataSentToGizmo:sent application:applicationCopy];
}

- (void)setup
{
  localListener = [(SPCompanionAppServer *)self localListener];
  [localListener resume];
}

- (void)cancelGizmoApplicationsUpdateTimer
{
  gizmoApplicationsUpdateTimer = self->_gizmoApplicationsUpdateTimer;
  if (gizmoApplicationsUpdateTimer)
  {
    dispatch_source_cancel(gizmoApplicationsUpdateTimer);
    v4 = self->_gizmoApplicationsUpdateTimer;
    self->_gizmoApplicationsUpdateTimer = 0;
  }
}

- (BOOL)_unlockedSinceBoot
{
  if (byte_100051CE0)
  {
    return 1;
  }

  result = [(SPCompanionAppServer *)self _checkUnlockedSinceBoot];
  byte_100051CE0 = result;
  return result;
}

- (BOOL)_checkUnlockedSinceBoot
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    return 1;
  }

  v3 = MKBGetDeviceLockState();
  return v3 == 3 || v3 == 0;
}

- (void)sendFirstUnlockStatusToGizmo
{
  _unlockedSinceBoot = [(SPCompanionAppServer *)self _unlockedSinceBoot];
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[SPCompanionAppServer sendFirstUnlockStatusToGizmo]";
    v11 = 1024;
    v12 = 628;
    v13 = 1024;
    v14 = _unlockedSinceBoot;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: unlocked=%d", buf, 0x18u);
  }

  v8[0] = @"pd";
  v5 = [NSNumber numberWithBool:_unlockedSinceBoot, @"c", @"pl"];
  v7[2] = @"bg";
  v8[1] = v5;
  v8[2] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  [(SPCompanionAppServer *)self sendPlist:v6 securityType:1];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(token, 0, 32);
  }

  v9 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, token);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  error = 0;
  v11 = SecTaskCopyValueForEntitlement(v9, @"com.apple.companionappd.connect.allow", &error);
  if (error)
  {
    _xpcConnection = [v8 _xpcConnection];
    v13 = sub_10000A0F0(_xpcConnection);

    v14 = wk_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v27 = error;
      processIdentifier = [v8 processIdentifier];
      *token = 136447234;
      *&token[4] = "[SPCompanionAppServer listener:shouldAcceptNewConnection:]";
      *&token[12] = 1024;
      *&token[14] = 649;
      *&token[18] = 2114;
      *&token[20] = v27;
      *&token[28] = 2114;
      *&token[30] = v13;
      v35 = 1024;
      v36 = processIdentifier;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%d: Got error %{public}@ while checking entitlement for process %{public}@ with pid %d", token, 0x2Cu);
    }

    CFRelease(error);
    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_13:
    CFRelease(v10);
    goto LABEL_14;
  }

  bOOLValue = [v11 BOOLValue];
  CFRelease(v10);
  if (bOOLValue)
  {

LABEL_12:
    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SPLocalApplicationProtocol];
    [v8 setRemoteObjectInterface:v16];

    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SPLocalServerProtocol];
    [v8 setExportedInterface:v17];

    [v8 setExportedObject:self];
    [v8 resume];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v8 processIdentifier]);
    localConnections = [(SPCompanionAppServer *)self localConnections];
    [localConnections setObject:v8 forKey:v18];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000A1EC;
    v31[3] = &unk_1000447A0;
    v31[4] = self;
    v20 = v18;
    v32 = v20;
    [v8 setInterruptionHandler:v31];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000A240;
    v29[3] = &unk_1000447A0;
    v29[4] = self;
    v30 = v20;
    v21 = v20;
    [v8 setInvalidationHandler:v29];

    v22 = 1;
    goto LABEL_17;
  }

LABEL_14:
  _xpcConnection2 = [v8 _xpcConnection];
  v24 = sub_10000A0F0(_xpcConnection2);

  v25 = wk_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10002849C(v24, v8);
  }

  v22 = 0;
LABEL_17:

  return v22;
}

- (void)sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type
{
  plistCopy = plist;
  v9 = [SPProtoSerializer spPlistWithDictionary:plistCopy];
  if (v9)
  {
    kdebug_trace();
    v10 = [plistCopy objectForKeyedSubscript:@"i"];
    v11 = [SPIDSProtobuf protobufWithSPPlist:v9 identifier:v10];
    [(SPCompanionAppServer *)self sendProtobuf:v11 sender:v10 timeOut:type securityType:out];
  }

  else
  {
    v12 = wk_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100028570();
    }
  }
}

- (void)sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type
{
  senderCopy = sender;
  protobufCopy = protobuf;
  v12 = +[SPTransport sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000A494;
  v14[3] = &unk_100045510;
  v15 = senderCopy;
  selfCopy = self;
  v13 = senderCopy;
  [v12 sendProtobuf:protobufCopy sender:v13 timeOut:type securityType:v14 withCompletion:out];
}

- (void)setLastExtensionKilledDateForPluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = +[NSDate date];
    lastExtensionKilledDatesQueue = self->_lastExtensionKilledDatesQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A808;
    block[3] = &unk_100045538;
    block[4] = self;
    v9 = identifierCopy;
    v10 = v5;
    v7 = v5;
    dispatch_async(lastExtensionKilledDatesQueue, block);
  }
}

- (void)clearLastResetDateForPluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    lastExtensionKilledDatesQueue = self->_lastExtensionKilledDatesQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000A90C;
    v7[3] = &unk_1000447A0;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_async(lastExtensionKilledDatesQueue, v7);
  }
}

- (BOOL)shouldKillExtensionOnError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    lastExtensionKilledDatesQueue = self->_lastExtensionKilledDatesQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AA40;
    block[3] = &unk_100045560;
    block[4] = self;
    v10 = errorCopy;
    v11 = &v12;
    dispatch_sync(lastExtensionKilledDatesQueue, block);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)sendToRemoteInterface:(id)interface call:(id)call
{
  interfaceCopy = interface;
  callCopy = call;
  queueRemote = [(SPCompanionAppServer *)self queueRemote];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ABB0;
  block[3] = &unk_100045600;
  v12 = interfaceCopy;
  selfCopy = self;
  v14 = callCopy;
  v9 = callCopy;
  v10 = interfaceCopy;
  dispatch_async(queueRemote, block);
}

- (void)sendData:(id)data toCompanionApplication:(id)application fromIdentifier:(id)identifier
{
  dataCopy = data;
  applicationCopy = application;
  identifierCopy = identifier;
  v11 = [dataCopy length];
  v12 = wk_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(SPCompanionAppServer *)self decodeOutData:dataCopy];
    *buf = 136447491;
    v20 = "[SPCompanionAppServer sendData:toCompanionApplication:fromIdentifier:]";
    v21 = 1024;
    v22 = 834;
    v23 = 2114;
    v24 = applicationCopy;
    v25 = 2114;
    v26 = identifierCopy;
    v27 = 2048;
    v28 = v11;
    v29 = 2113;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:->ComF application=%{public}@ remoteIdentifier=%{public}@ len=%lu data=%{private}@", buf, 0x3Au);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000B508;
  v16[3] = &unk_100045628;
  v17 = dataCopy;
  v18 = identifierCopy;
  v14 = identifierCopy;
  v15 = dataCopy;
  [(SPCompanionAppServer *)self sendToRemoteInterface:applicationCopy call:v16];
}

- (void)sendProtoData:(id)data toCompanionApplication:(id)application fromIdentifier:(id)identifier
{
  dataCopy = data;
  applicationCopy = application;
  identifierCopy = identifier;
  v11 = [dataCopy length];
  v12 = wk_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(SPCompanionAppServer *)self decodeProtoData:dataCopy];
    *buf = 136447490;
    v20 = "[SPCompanionAppServer sendProtoData:toCompanionApplication:fromIdentifier:]";
    v21 = 1024;
    v22 = 846;
    v23 = 2114;
    v24 = applicationCopy;
    v25 = 2114;
    v26 = identifierCopy;
    v27 = 2048;
    v28 = v11;
    v29 = 2114;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:->ComF application=%{public}@ remoteIdentifier=%{public}@ len=%lu data=%{public}@", buf, 0x3Au);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000B7B4;
  v16[3] = &unk_100045628;
  v17 = dataCopy;
  v18 = identifierCopy;
  v14 = identifierCopy;
  v15 = dataCopy;
  [(SPCompanionAppServer *)self sendToRemoteInterface:applicationCopy call:v16];
}

- (void)sendData:(id)data toApplication:(id)application
{
  dataCopy = data;
  applicationCopy = application;
  v8 = [(__CFString *)dataCopy length];
  v9 = wk_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v29 = "[SPCompanionAppServer sendData:toApplication:]";
    v10 = @"...";
    v30 = 1024;
    v31 = 858;
    if (v8 < 0x10)
    {
      v10 = dataCopy;
    }

    v32 = 2114;
    v33 = applicationCopy;
    v34 = 2048;
    v35 = v8;
    v36 = 2114;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:->ComF application=%{public}@ len=%lu data=%{public}@", buf, 0x30u);
  }

  localConnections = [(SPCompanionAppServer *)self localConnections];
  allKeys = [localConnections allKeys];
  v13 = [allKeys copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        localConnections2 = [(SPCompanionAppServer *)self localConnections];
        v21 = [localConnections2 objectForKeyedSubscript:v19];

        if (v21)
        {
          remoteObjectProxy = [v21 remoteObjectProxy];
          [remoteObjectProxy receiveData:dataCopy];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)killExtensionForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = +[SPApplicationManager sharedInstance];
  v4 = [v3 pluginIdentifierForProtocolIdentifier:identifierCopy];

  if (v4)
  {
    v5 = +[PKHost defaultHost];
    v6 = [v5 activePlugInForIdentifier:v4];

    if (v6)
    {
      pluginConnection = [v6 pluginConnection];
      processIdentifier = [pluginConnection processIdentifier];

      if (processIdentifier)
      {
        v9 = +[SPApplicationManager sharedInstance];
        [v9 setExtension:identifierCopy wasKilledDueToAppDeath:1];

        kill(processIdentifier, 9);
      }
    }
  }
}

- (void)fetchInstalledApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[SPApplicationManager sharedInstance];
  [v4 fetchInstalledApplicationsWithCompletion:completionCopy];
}

- (void)launchSockPuppetAppForCompanionAppWithIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  v11 = wk_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v22 = "[SPCompanionAppServer launchSockPuppetAppForCompanionAppWithIdentifier:options:completion:]";
    v23 = 1024;
    v24 = 895;
    v25 = 2114;
    v26 = identifierCopy;
    v27 = 2114;
    v28 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@, options is %{public}@", buf, 0x26u);
  }

  if (qword_100051CF0 != -1)
  {
    sub_100028A24();
  }

  v12 = dispatch_time(0, 500000000);
  launchSockPuppetAppQueue = [(SPCompanionAppServer *)self launchSockPuppetAppQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000BFAC;
  v17[3] = &unk_100045670;
  v17[4] = self;
  v18 = identifierCopy;
  v19 = optionsCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = optionsCopy;
  v16 = identifierCopy;
  dispatch_after(v12, launchSockPuppetAppQueue, v17);
}

- (void)_sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:(id)identifier options:(id)options acxRetryGeneration:(unint64_t)generation completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  v13 = wk_default_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (identifierCopy)
  {
    if (v14)
    {
      *buf = 136446722;
      v24 = "[SPCompanionAppServer _sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:options:acxRetryGeneration:completion:]";
      v25 = 1024;
      v26 = 953;
      v27 = 2114;
      v28 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@", buf, 0x1Cu);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000C540;
    v18[3] = &unk_100045760;
    v18[4] = self;
    generationCopy = generation;
    v21 = completionCopy;
    v15 = identifierCopy;
    v19 = v15;
    v20 = optionsCopy;
    v16 = objc_retainBlock(v18);
    v17 = +[ACXDeviceConnection sharedDeviceConnection];
    [v17 fetchApplicationWithContainingApplicationBundleID:v15 completion:v16];
  }

  else
  {
    if (v14)
    {
      *buf = 136446466;
      v24 = "[SPCompanionAppServer _sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:options:acxRetryGeneration:completion:]";
      v25 = 1024;
      v26 = 950;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier is nil, so got this call after canceling. Nothing to do.", buf, 0x12u);
    }
  }
}

- (void)_cancelLaunchSockPuppetAppTimeout
{
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    launchSockPuppetAppCompanionAppIdentifer = self->_launchSockPuppetAppCompanionAppIdentifer;
    v11 = 136446722;
    v12 = "[SPCompanionAppServer _cancelLaunchSockPuppetAppTimeout]";
    v13 = 1024;
    v14 = 1072;
    v15 = 2114;
    v16 = launchSockPuppetAppCompanionAppIdentifer;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@", &v11, 0x1Cu);
  }

  v5 = self->_launchSockPuppetAppCompanionAppIdentifer;
  self->_launchSockPuppetAppCompanionAppIdentifer = 0;

  launchSockPuppetAppOptions = self->_launchSockPuppetAppOptions;
  self->_launchSockPuppetAppOptions = 0;

  launchSockPuppetAppCompletion = self->_launchSockPuppetAppCompletion;
  self->_launchSockPuppetAppCompletion = 0;

  if (self->_launchSockPuppetCancelLaunchTimer)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.sockpuppet.applications.updated", 0);
    launchSockPuppetCancelLaunchTimer = self->_launchSockPuppetCancelLaunchTimer;
    self->_launchSockPuppetCancelLaunchTimer = 0;
    v10 = launchSockPuppetCancelLaunchTimer;

    dispatch_source_cancel(v10);
  }
}

- (void)terminateSockPuppetAppForCompanionAppWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = wk_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v21 = "[SPCompanionAppServer terminateSockPuppetAppForCompanionAppWithIdentifier:completion:]";
    v22 = 1024;
    v23 = 1087;
    v24 = 2114;
    v25 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@", buf, 0x1Cu);
  }

  processAssertionForXcodeQueue = [(SPCompanionAppServer *)self processAssertionForXcodeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D620;
  block[3] = &unk_100044778;
  block[4] = self;
  dispatch_async(processAssertionForXcodeQueue, block);

  launchSockPuppetAppQueue = [(SPCompanionAppServer *)self launchSockPuppetAppQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D628;
  v18[3] = &unk_100044778;
  v18[4] = self;
  dispatch_sync(launchSockPuppetAppQueue, v18);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D630;
  v15[3] = &unk_100045788;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  v13 = objc_retainBlock(v15);
  v14 = +[ACXDeviceConnection sharedDeviceConnection];
  [v14 fetchApplicationWithContainingApplicationBundleID:v12 completion:v13];
}

- (void)getSockPuppetAppRunningStatusForCompanionAppWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = wk_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[SPCompanionAppServer getSockPuppetAppRunningStatusForCompanionAppWithIdentifier:completion:]";
    v18 = 1024;
    v19 = 1134;
    v20 = 2114;
    v21 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@", buf, 0x1Cu);
  }

  v9 = +[SPApplicationManager sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000DCE0;
  v12[3] = &unk_1000457B0;
  v13 = identifierCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  [v9 fetchInstalledApplicationsWithCompletion:v12];
}

- (void)getCompanionExtensionPIDForCompanionAppWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = wk_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v15 = "[SPCompanionAppServer getCompanionExtensionPIDForCompanionAppWithIdentifier:completion:]";
    v16 = 1024;
    v17 = 1157;
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: companionAppIdentifier=%{public}@", buf, 0x1Cu);
  }

  v8 = +[SPApplicationManager sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E070;
  v11[3] = &unk_1000457D8;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  [v8 fetchInstalledApplicationsWithCompletion:v11];
}

- (void)xcodeWillInstallSockPuppetAppWithCompanionAppIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([identifierCopy length])
  {
    v6 = +[SPApplicationManager sharedInstance];
    [v6 xcodeWillInstallSockPuppetAppWithCompanionAppID:identifierCopy];

    v7 = 0;
  }

  else
  {
    v7 = [SPError errorWithCode:6];
  }

  completionCopy[2](completionCopy, v7);
}

- (void)showUserNotification:(int64_t)notification applicationName:(id)name
{
  v10[0] = @"ns";
  v9[0] = @"c";
  v9[1] = @"nt";
  nameCopy = name;
  v7 = [NSNumber numberWithInteger:notification];
  v9[2] = @"n";
  v10[1] = v7;
  v10[2] = nameCopy;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  [(SPCompanionAppServer *)self sendPlist:v8 securityType:1];
}

- (void)hideUserNotification
{
  v4 = @"c";
  v5 = @"nh";
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(SPCompanionAppServer *)self sendPlist:v3 securityType:1];
}

- (void)wakeExtensionForWatchApp:(id)app
{
  appCopy = app;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446978;
    v7 = "[SPCompanionAppServer wakeExtensionForWatchApp:]";
    v8 = 1024;
    v9 = 1202;
    v10 = 2114;
    v11 = appCopy;
    v12 = 2114;
    v13 = appCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: called for %{public}@. This should be done sparingly. If you're seeing this very often, please write a radar against the app that owns %{public}@", &v6, 0x26u);
  }

  [(SPCompanionAppServer *)self sendToRemoteInterface:appCopy call:&stru_100045818];
}

- (void)extensionWithIdentifier:(id)identifier gotUnknownInterfaceController:(id)controller
{
  v9[0] = @"c";
  v9[1] = @"i";
  v10[0] = @"uIC";
  v10[1] = identifier;
  v9[2] = @"IC";
  v10[2] = controller;
  controllerCopy = controller;
  identifierCopy = identifier;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  [(SPCompanionAppServer *)self sendPlist:v8 securityType:0];
}

- (void)sendData:(id)data identifier:(id)identifier clientIdentifiers:(id)identifiers
{
  dataCopy = data;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v11 = [dataCopy length];
  v12 = wk_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(SPCompanionAppServer *)self logStringArray:identifiersCopy];
    v14 = [(SPCompanionAppServer *)self decodeInData:dataCopy];
    v17 = 136447491;
    v18 = "[SPCompanionAppServer sendData:identifier:clientIdentifiers:]";
    v19 = 1024;
    v20 = 1224;
    v21 = 2114;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v11;
    v27 = 2113;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-ComF extension=%{public}@, clients: %{public}@, data len=%lu, data=%{private}@", &v17, 0x3Au);
  }

  v15 = [NSMutableDictionary dictionaryWithCapacity:0];
  v16 = v15;
  if (identifierCopy)
  {
    [v15 setObject:identifierCopy forKey:@"i"];
  }

  if (dataCopy)
  {
    [v16 setObject:dataCopy forKey:@"d"];
  }

  if (identifiersCopy)
  {
    [v16 setObject:identifiersCopy forKey:@"ci"];
  }

  [(SPCompanionAppServer *)self sendPlist:v16 securityType:0];
}

- (void)sendData:(id)data identifier:(id)identifier clientIdentifiers:(id)identifiers reply:(id)reply
{
  dataCopy = data;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  if (reply)
  {
    v14 = wk_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100028E18(a2);
    }
  }

  [(SPCompanionAppServer *)self sendData:dataCopy identifier:identifierCopy clientIdentifiers:identifiersCopy];
}

- (void)sendCacheRequest:(id)request identifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [SPIDSProtobuf cacheRequestWithProtoData:request identifier:identifierCopy];
  [(SPCompanionAppServer *)self sendProtobuf:v7 sender:identifierCopy timeOut:0 securityType:60.0];
}

- (void)requestTimingData:(id)data timingMetaData:(id)metaData
{
  dataCopy = data;
  v7 = [metaData mutableCopy];
  timingTest_queue = self->_timingTest_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EB7C;
  block[3] = &unk_1000447A0;
  v9 = v7;
  v14 = v9;
  selfCopy = self;
  dispatch_sync(timingTest_queue, block);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000EC6C;
  v11[3] = &unk_100045840;
  v12 = v9;
  v10 = v9;
  [(SPCompanionAppServer *)self sendToRemoteInterface:dataCopy call:v11];
}

- (void)fetchNotificationForNotificationID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100028EB8();
  }

  v6 = [SPError errorWithCode:28];
  (*(completionCopy + 2))(completionCopy, 0, 0, 0, v6);
}

- (void)incomingProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [SPProtoSockPuppetIDSObject alloc];
  data = [protobufCopy data];

  v12 = [(SPProtoSockPuppetIDSObject *)v5 initWithData:data];
  type = [(SPProtoSockPuppetIDSObject *)v12 type];
  if (type == 3)
  {
    [(SPCompanionAppServer *)self handleIncomingProtoPlist:v12];
    goto LABEL_6;
  }

  v8 = type == 2;
  v9 = v12;
  if (v8)
  {
    objectData = [(SPProtoSockPuppetIDSObject *)v12 objectData];
    receiver = [(SPProtoSockPuppetIDSObject *)v12 receiver];
    [(SPCompanionAppServer *)self sendProtoData:objectData toCompanionApplication:receiver fromIdentifier:0];

LABEL_6:
    v9 = v12;
  }
}

- (void)handleIncomingProtoPlist:(id)plist
{
  plistCopy = plist;
  [(SPCompanionAppServer *)self _saveReceiveTime];
  v5 = [SPProtoSockPuppetPlist alloc];
  objectData = [plistCopy objectData];
  v7 = [(SPProtoSockPuppetPlist *)v5 initWithData:objectData];

  if (v7)
  {
    v8 = [SPProtoSerializer dictionaryWithSPPlist:v7];
    if (v8)
    {
      v9 = [(SPCompanionAppServer *)self appBundleIDFromPlist:v8];
      usageTrack = [(SPCompanionAppServer *)self usageTrack];
      objectData2 = [plistCopy objectData];
      [usageTrack dataReceiedFromGizmo:objc_msgSend(objectData2 application:{"length"), v9}];

      v16[0] = @"action";
      v16[1] = @"application";
      v17[0] = @"incomingData";
      v17[1] = v9;
      v16[2] = @"length";
      objectData3 = [plistCopy objectData];
      v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [objectData3 length]);
      v17[2] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

      v15 = +[SPPowerLog sharedInstance];
      [v15 logEvent:v14 withName:@"SP-transport"];

      [(SPCompanionAppServer *)self handleIncomingPlist:v8];
    }

    else
    {
      v9 = wk_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100028F3C();
      }
    }
  }

  else
  {
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100028FC0();
    }
  }
}

- (void)_saveSendTimeAndSize:(unint64_t)size
{
  +[NSDate timeIntervalSinceReferenceDate];
  timingTest_queue = self->_timingTest_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F0C8;
  block[3] = &unk_100045868;
  block[4] = self;
  block[5] = v6;
  block[6] = size;
  dispatch_async(timingTest_queue, block);
}

- (void)_saveReceiveTime
{
  +[NSDate timeIntervalSinceReferenceDate];
  timingTest_queue = self->_timingTest_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F1B4;
  v5[3] = &unk_100045890;
  v5[4] = self;
  v5[5] = v4;
  dispatch_async(timingTest_queue, v5);
}

- (void)incomingData:(id)data
{
  dataCopy = data;
  kdebug_trace();
  [(SPCompanionAppServer *)self _saveReceiveTime];
  [(SPCompanionAppServer *)self handleIncomingData:dataCopy];
}

- (void)handleIncomingData:(id)data
{
  dataCopy = data;
  v14 = 0;
  v5 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:0 error:&v14];
  v6 = v14;
  v7 = wk_default_log();
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100029044(self, v5, v8);
    }

    v8 = [(SPCompanionAppServer *)self appBundleIDFromPlist:v5];
    usageTrack = [(SPCompanionAppServer *)self usageTrack];
    [usageTrack dataReceiedFromGizmo:objc_msgSend(dataCopy application:{"length"), v8}];

    v15[0] = @"action";
    v15[1] = @"application";
    v16[0] = @"incomingData";
    v16[1] = v8;
    v15[2] = @"length";
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy length]);
    v16[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

    v13 = +[SPPowerLog sharedInstance];
    [v13 logEvent:v12 withName:@"SP-transport"];

    [(SPCompanionAppServer *)self handleIncomingPlist:v5];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000290FC();
  }
}

- (id)appBundleIDFromPlist:(id)plist
{
  v3 = [plist objectForKeyedSubscript:@"i"];
  if (!v3)
  {
    v3 = @"com.apple.companionappd";
  }

  return v3;
}

- (void)handleIncomingPlist:(id)plist
{
  plistCopy = plist;
  v5 = [plistCopy objectForKeyedSubscript:@"i"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"companionappd";
  }

  v7 = [plistCopy objectForKeyedSubscript:@"c"];
  v8 = [plistCopy objectForKeyedSubscript:@"ci"];
  if (![v7 length])
  {
    v12 = [plistCopy objectForKeyedSubscript:@"p"];

    if (v12)
    {
      v13 = [plistCopy objectForKeyedSubscript:@"p"];
      [(SPCompanionAppServer *)self sendProtoData:v13 toCompanionApplication:v6 fromIdentifier:v8];
    }

    else
    {
      v13 = [plistCopy objectForKeyedSubscript:@"d"];
      [(SPCompanionAppServer *)self sendData:v13 toCompanionApplication:v6 fromIdentifier:v8];
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100010A3C;
    v32[3] = &unk_100045538;
    v32[4] = self;
    v33 = plistCopy;
    v34 = v6;
    dispatch_async(&_dispatch_main_q, v32);

    v11 = v33;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"at"])
  {
    processAssertionQueue = [(SPCompanionAppServer *)self processAssertionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000101A0;
    block[3] = &unk_1000447A0;
    block[4] = self;
    v10 = v6;
    v58 = v10;
    dispatch_async(processAssertionQueue, block);

    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000101AC;
    v55[3] = &unk_100045840;
    v56 = v8;
    [(SPCompanionAppServer *)self sendToRemoteInterface:v10 call:v55];

    v11 = v58;
LABEL_17:

    goto LABEL_18;
  }

  if ([v7 isEqualToString:@"ak"])
  {
    v14 = wk_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v60 = "[SPCompanionAppServer handleIncomingPlist:]";
      v61 = 1024;
      v62 = 1412;
      v63 = 2114;
      v64 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: App %{public}@ was killed on the gizmo. Killing extension.", buf, 0x1Cu);
    }

    [(SPCompanionAppServer *)self killExtensionForAppIdentifier:v6];
    goto LABEL_18;
  }

  if ([v7 isEqualToString:@"r"])
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100010288;
    v53[3] = &unk_100045840;
    v54 = v8;
    [(SPCompanionAppServer *)self sendToRemoteInterface:v6 call:v53];
    v11 = v54;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"l"])
  {
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100010364;
    v51[3] = &unk_100045840;
    v52 = v8;
    [(SPCompanionAppServer *)self sendToRemoteInterface:v6 call:v51];
    v11 = v52;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"a"])
  {
    [(SPCompanionAppServer *)self _applicationActivated:v6];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100010440;
    v49[3] = &unk_100045840;
    v50 = v8;
    [(SPCompanionAppServer *)self sendToRemoteInterface:v6 call:v49];
    [(SPCompanionAppServer *)self _sendTextSizeToApplication:v6 onlyIfChanged:0];
    v11 = v50;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"d"])
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10001051C;
    v45[3] = &unk_1000458B8;
    v46 = v8;
    selfCopy = self;
    v48 = v6;
    [(SPCompanionAppServer *)self sendToRemoteInterface:v48 call:v45];

    v11 = v46;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"FS"])
  {
    v15 = wk_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v60 = "[SPCompanionAppServer handleIncomingPlist:]";
      v61 = 1024;
      v62 = 1438;
      v63 = 2114;
      v64 = v6;
      v16 = "%{public}s:%d: Application %{public}@ did enter foreground suspended";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x1Cu);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if ([v7 isEqualToString:@"fS"])
  {
    v15 = wk_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v60 = "[SPCompanionAppServer handleIncomingPlist:]";
      v61 = 1024;
      v62 = 1440;
      v63 = 2114;
      v64 = v6;
      v16 = "%{public}s:%d: Application %{public}@ did fully suspend";
      goto LABEL_31;
    }

LABEL_32:

    goto LABEL_18;
  }

  if ([v7 isEqualToString:@"ac"])
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100010600;
    v43[3] = &unk_100045840;
    v44 = v8;
    [(SPCompanionAppServer *)self sendToRemoteInterface:v6 call:v43];
    v11 = v44;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"dc"])
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000106DC;
    v41[3] = &unk_100045840;
    v42 = v8;
    [(SPCompanionAppServer *)self sendToRemoteInterface:v6 call:v41];
    v11 = v42;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"lg"])
  {
    v17 = [plistCopy objectForKeyedSubscript:@"tid"];
    v15 = [(SPCompanionAppServer *)self transactionDictForID:v17 removeFromOutstanding:1];

    v18 = [v15 objectForKeyedSubscript:@"completion"];
    if (!v18)
    {
LABEL_44:

      goto LABEL_32;
    }

    v19 = [plistCopy objectForKeyedSubscript:@"d"];
    if ([v19 code])
    {
      domain = [v19 domain];
      v21 = [domain isEqualToString:@"com.apple.watchkit.errors"];

      if (v21)
      {
        v22 = +[SPError errorWithCode:](SPError, "errorWithCode:", [v19 code]);

        v19 = v22;
      }
    }

    (*(v18 + 16))(v18, [v19 code] == 0, v19);
LABEL_43:

    goto LABEL_44;
  }

  if ([v7 isEqualToString:@"kg"])
  {
    v23 = [plistCopy objectForKeyedSubscript:@"tid"];
    v15 = [(SPCompanionAppServer *)self transactionDictForID:v23 removeFromOutstanding:1];

    v18 = [v15 objectForKeyedSubscript:@"completion"];
    if (!v18)
    {
      goto LABEL_44;
    }

    v24 = [plistCopy objectForKeyedSubscript:@"d"];
    bOOLValue = [v24 BOOLValue];

    if (bOOLValue)
    {
      (*(v18 + 16))(v18, 0);
      goto LABEL_44;
    }

    v19 = [SPError errorWithCode:9];
    (*(v18 + 16))(v18, v19);
    goto LABEL_43;
  }

  if ([v7 isEqualToString:@"gs"])
  {
    v26 = [plistCopy objectForKeyedSubscript:@"tid"];
    v15 = [(SPCompanionAppServer *)self transactionDictForID:v26 removeFromOutstanding:1];

    v18 = [v15 objectForKeyedSubscript:@"completion"];
    if (v18)
    {
      v27 = [plistCopy objectForKeyedSubscript:@"d"];
      bOOLValue2 = [v27 BOOLValue];

      (*(v18 + 16))(v18, 0, bOOLValue2);
    }

    goto LABEL_44;
  }

  if ([v7 isEqualToString:@"cds"])
  {
    v15 = +[SPApplicationManager sharedInstance];
    [v15 updateCoreDuetSession:plistCopy];
    goto LABEL_32;
  }

  if ([v7 isEqualToString:@"pr"])
  {
    [(SPCompanionAppServer *)self sendFirstUnlockStatusToGizmo];
    goto LABEL_18;
  }

  if ([v7 isEqualToString:@"slk"])
  {
    v15 = [plistCopy objectForKeyedSubscript:@"slm"];
    v18 = wk_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100029180();
    }

    goto LABEL_44;
  }

  if ([v7 isEqualToString:@"P"])
  {
    [(SPCompanionAppServer *)self sendToRemoteInterface:v6 call:&stru_1000458D8];
    goto LABEL_18;
  }

  if ([v7 isEqualToString:@"sac"])
  {
    v15 = wk_default_log();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v18 = [plistCopy objectForKeyedSubscript:@"activeComplications"];
    *buf = 136446978;
    v60 = "[SPCompanionAppServer handleIncomingPlist:]";
    v61 = 1024;
    v62 = 1492;
    v63 = 2114;
    v64 = @"NativeComplications";
    v65 = 2114;
    v66 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}@ received sockpuppet message that active complications changed with bundleIDs%{public}@", buf, 0x26u);
    goto LABEL_44;
  }

  if ([v7 isEqualToString:@"Ht"])
  {
    v29 = +[SPApplicationManager sharedInstance];
    v30 = [v29 pluginIdentifierForProtocolIdentifier:v6];

    [(SPCompanionAppServer *)self extensionDidBeginSnapshot:v30];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100010884;
    v35[3] = &unk_100045900;
    v36 = plistCopy;
    v37 = v6;
    v38 = v8;
    selfCopy2 = self;
    v40 = v30;
    v31 = v30;
    [(SPCompanionAppServer *)self sendToRemoteInterface:v37 call:v35];
  }

LABEL_18:
}

- (void)_applicationActivated:(id)activated
{
  activatedCopy = activated;
  v5 = [[NSString alloc] initWithString:activatedCopy];

  activeApplication = self->_activeApplication;
  self->_activeApplication = v5;
}

- (void)_applicationDeactivated:(id)deactivated
{
  deactivatedCopy = deactivated;
  activeApplication = self->_activeApplication;
  self->_activeApplication = 0;

  processAssertionQueue = [(SPCompanionAppServer *)self processAssertionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010CAC;
  block[3] = &unk_1000447A0;
  block[4] = self;
  v7 = deactivatedCopy;
  v14 = v7;
  dispatch_async(processAssertionQueue, block);

  v8 = +[SPApplicationManager sharedInstance];
  v9 = [v8 pluginIdentifierForProtocolIdentifier:v7];

  if (![(SPCompanionAppServer *)self isExtensionDoingSnapshot:v9])
  {
    v10 = dispatch_time(0, 500000000);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100010CB8;
    v11[3] = &unk_1000447A0;
    v11[4] = self;
    v12 = v9;
    dispatch_after(v10, &_dispatch_main_q, v11);
  }
}

- (void)releaseProcessAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [(BKSProcessAssertion *)self->_processAssertion name];
    *buf = 136446978;
    v18 = "[SPCompanionAppServer releaseProcessAssertion:]";
    v19 = 1024;
    v20 = 1547;
    v21 = 2114;
    v22 = assertionCopy;
    v23 = 2114;
    v24 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: releaseProcessAssertion for application %{public}@, current assertion:%{public}@", buf, 0x26u);
  }

  name2 = [(BKSProcessAssertion *)self->_processAssertion name];
  v8 = [name2 isEqualToString:assertionCopy];

  if (v8 && !self->_activeApplication)
  {
    v9 = +[SPApplicationManager sharedInstance];
    v10 = [v9 pluginIdentifierForProtocolIdentifier:assertionCopy];

    v11 = self->_processAssertion;
    v12 = +[SPApplicationManager sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100010EB4;
    v15[3] = &unk_100044778;
    v16 = v11;
    v13 = v11;
    [v12 notifyInactiveForPluginWithIdentifier:v10 completion:v15];

    processAssertion = self->_processAssertion;
    self->_processAssertion = 0;
  }
}

- (void)setApplicationIDForXcodeProcessAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v16 = "[SPCompanionAppServer setApplicationIDForXcodeProcessAssertion:]";
    v17 = 1024;
    v18 = 1565;
    v19 = 2114;
    v20 = assertionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: application %{public}@", buf, 0x1Cu);
  }

  v6 = +[SPApplicationManager sharedInstance];
  v7 = [v6 pluginIdentifierForProtocolIdentifier:assertionCopy];

  v8 = +[SPApplicationManager sharedInstance];
  [v8 setCurrentXcodeControlledPlugin:v7];

  objc_initWeak(buf, self);
  v9 = +[SPApplicationManager sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000110B8;
  v11[3] = &unk_100045950;
  v10 = v7;
  v12 = v10;
  selfCopy = self;
  objc_copyWeak(&v14, buf);
  [v9 waitForPreviousPluginToFinishEnding:v10 toComplete:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)takeProcessAssertionForXcode:(id)xcode
{
  xcodeCopy = xcode;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [(BKSProcessAssertion *)self->_processAssertionForXcode name];
    *buf = 136446978;
    v17 = "[SPCompanionAppServer takeProcessAssertionForXcode:]";
    v18 = 1024;
    v19 = 1589;
    v20 = 2114;
    v21 = xcodeCopy;
    v22 = 2114;
    v23 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: pluginIdentifier %{public}@, current assertion:%{public}@", buf, 0x26u);
  }

  name2 = [(BKSProcessAssertion *)self->_processAssertionForXcode name];
  v8 = [name2 isEqualToString:xcodeCopy];

  if ((v8 & 1) == 0)
  {
    [(BKSProcessAssertion *)self->_processAssertionForXcode invalidate];
    processAssertionForXcode = self->_processAssertionForXcode;
    self->_processAssertionForXcode = 0;

    if (xcodeCopy)
    {
      objc_initWeak(buf, self);
      v10 = +[SPApplicationManager sharedInstance];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100011514;
      v12[3] = &unk_100045950;
      v13 = xcodeCopy;
      selfCopy = self;
      objc_copyWeak(&v15, buf);
      [v10 waitForPreviousPluginToFinishEnding:v13 toComplete:v12];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }

    else
    {
      v11 = wk_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100029204();
      }
    }
  }
}

- (void)releaseProcessAssertionForXcode
{
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(BKSProcessAssertion *)self->_processAssertionForXcode name];
    *buf = 136446722;
    v9 = "[SPCompanionAppServer releaseProcessAssertionForXcode]";
    v10 = 1024;
    v11 = 1654;
    v12 = 2114;
    v13 = name;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: current assertion:%{public}@", buf, 0x1Cu);
  }

  [(SPCompanionAppServer *)self setPlugInIdentifierForXcodeProcessAssertion:0];
  v5 = +[SPApplicationManager sharedInstance];
  [v5 setCurrentXcodeControlledPlugin:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011DF0;
  block[3] = &unk_100044778;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  [(BKSProcessAssertion *)self->_processAssertionForXcode invalidate];
  processAssertionForXcode = self->_processAssertionForXcode;
  self->_processAssertionForXcode = 0;
}

- (void)releaseRemoteInterfaceAssertionsForPluginIdentifer:(id)identifer
{
  identiferCopy = identifer;
  remoteInterfaceProcessAssertionsQueue = [(SPCompanionAppServer *)self remoteInterfaceProcessAssertionsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011FC8;
  v7[3] = &unk_1000447A0;
  v8 = identiferCopy;
  selfCopy = self;
  v6 = identiferCopy;
  dispatch_sync(remoteInterfaceProcessAssertionsQueue, v7);
}

- (BOOL)showUserNotificationWithTitle:(id)title message:(id)message
{
  v13[0] = kCFUserNotificationAlertHeaderKey;
  v13[1] = kCFUserNotificationAlertMessageKey;
  v14[0] = title;
  v14[1] = message;
  v13[2] = kCFUserNotificationAlertTopMostKey;
  messageCopy = message;
  titleCopy = title;
  v7 = [NSNumber numberWithBool:1];
  v13[3] = kCFUserNotificationAlternateButtonTitleKey;
  v14[2] = v7;
  v14[3] = @"Cancel";
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  v9 = CFUserNotificationCreate(kCFAllocatorDefault, 30.0, 0, 0, v8);
  v10 = v9;
  if (v9)
  {
    v12 = 0;
    CFUserNotificationReceiveResponse(v9, 0.0, &v12);
    CFRelease(v10);
    LOBYTE(v10) = (v12 & 3) == 0;
  }

  return v10;
}

- (void)nanoRegistryChanged:(id)changed
{
  [(SPCompanionAppServer *)self setPaired:[(SPCompanionAppServer *)self isPaired]];
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[SPCompanionAppServer nanoRegistryChanged:]";
    v7 = 1024;
    v8 = 1720;
    v9 = 1024;
    paired = [(SPCompanionAppServer *)self paired];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: nanoRegistryChanged, paired: %d", &v5, 0x18u);
  }
}

- (BOOL)isPaired
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  isPaired = [v2 isPaired];

  return isPaired;
}

- (void)sendAndTrackTransactionDict:(id)dict withCompletion:(id)completion
{
  dictCopy = dict;
  completionCopy = completion;
  transactionQueue = [(SPCompanionAppServer *)self transactionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012544;
  block[3] = &unk_100045538;
  v12 = dictCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dictCopy;
  dispatch_async(transactionQueue, block);
}

- (id)transactionDictForID:(id)d removeFromOutstanding:(BOOL)outstanding
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10001299C;
  v19 = sub_1000129AC;
  v20 = 0;
  transactionQueue = [(SPCompanionAppServer *)self transactionQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000129B4;
  v11[3] = &unk_100045A18;
  v12 = dCopy;
  v13 = &v15;
  v11[4] = self;
  outstandingCopy = outstanding;
  v8 = dCopy;
  dispatch_sync(transactionQueue, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)decodeProtoData:(id)data
{
  dataCopy = data;
  v4 = wk_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = [SPProtoSerializer objectWithData:dataCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"image cache message, %ld ", [v6 messageType]);
    }

    else
    {
      v8 = wk_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000294CC();
      }

      v7 = @"can't decode data";
    }
  }

  else
  {
    v7 = &stru_1000498D8;
  }

  return v7;
}

- (id)decodeOutData:(id)data
{
  dataCopy = data;
  v4 = wk_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (!v5)
  {
    v13 = &stru_1000498D8;
    goto LABEL_41;
  }

  v6 = [[SPProtoSockPuppetPlist alloc] initWithData:dataCopy];
  if (v6)
  {
    v7 = [SPProtoSerializer dictionaryWithSPPlist:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"V"];
      if (v9)
      {
        v10 = [v8 objectForKeyedSubscript:@"!"];
        v11 = v10;
        if (v10)
        {
          if ([v10 isEqualToString:@"C"])
          {
            v12 = [v8 objectForKeyedSubscript:@"K"];
            [NSString stringWithFormat:@"create vc: %@, %@", v12, v9];
            v13 = LABEL_27:;

LABEL_35:
LABEL_39:

            goto LABEL_40;
          }

          if ([v11 isEqualToString:@"R"])
          {
            [NSString stringWithFormat:@"release vc: %@", v9];
            v13 = LABEL_34:;
            goto LABEL_35;
          }

          if ([v11 isEqualToString:@"A"])
          {
            [NSString stringWithFormat:@"activate vc: %@", v9];
            goto LABEL_34;
          }

          if ([v11 isEqualToString:@"D"])
          {
            [NSString stringWithFormat:@"deactivate vc: %@", v9];
            goto LABEL_34;
          }

          if ([v11 isEqualToString:@"N"])
          {
            [NSString stringWithFormat:@"nav reply vc: %@", v9];
            goto LABEL_34;
          }

          if ([v11 isEqualToString:@"an"])
          {
            v12 = [v8 objectForKeyedSubscript:@"ni"];
            [NSString stringWithFormat:@"notificationid: %@, vc: %@", v12, v9];
            goto LABEL_27;
          }

          if ([v11 isEqualToString:@"aua"])
          {
            [NSString stringWithFormat:@"continuity vc: %@", v9];
            goto LABEL_34;
          }
        }

        else
        {
          v17 = [v8 objectForKeyedSubscript:@"a"];
          if (v17)
          {
            v12 = v17;
            [NSString stringWithFormat:@"action: %@, vc: %@", v17, v9];
            goto LABEL_27;
          }

          v19 = [v8 objectForKeyedSubscript:@"k"];
          if (v19)
          {
            v12 = v19;
            [NSString stringWithFormat:@"set value vc: %@", v9, v28];
            goto LABEL_27;
          }
        }

LABEL_51:
        v13 = @"can't decode data";
        goto LABEL_39;
      }

      v15 = [v8 objectForKeyedSubscript:@"tI"];

      if (v15)
      {
        v16 = @"text input";
      }

      else
      {
        v18 = [v8 objectForKeyedSubscript:@"mpcd"];

        if (v18)
        {
          v16 = @"media player";
        }

        else
        {
          v20 = [v8 objectForKeyedSubscript:@"arcd"];

          if (v20)
          {
            v16 = @"audio recorder";
          }

          else
          {
            v21 = [v8 objectForKeyedSubscript:@"lm"];

            if (v21)
            {
              v16 = @"log message";
            }

            else
            {
              v23 = [v8 objectForKeyedSubscript:@"T"];

              if (v23)
              {
                v24 = [v8 objectForKeyedSubscript:@"atu"];
                v13 = [NSString stringWithFormat:@"tapped alert action: %@", v24];

                goto LABEL_39;
              }

              v25 = [v8 objectForKeyedSubscript:@"pkf"];

              if (!v25)
              {
                v26 = [v8 objectForKeyedSubscript:@"cc"];

                if (v26 || ([v8 objectForKeyedSubscript:@"cd"], v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
                {
                  v11 = [v8 objectForKeyedSubscript:@"cc"];
                  [NSString stringWithFormat:@"complication reply for: %@", v11];
                  goto LABEL_34;
                }

                goto LABEL_51;
              }

              v16 = @"add passes finished";
            }
          }
        }
      }

      v13 = [NSString stringWithFormat:v16];
      goto LABEL_39;
    }

    v14 = wk_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100029550();
    }
  }

  else
  {
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000295D4();
    }
  }

  v13 = @"can't decode data";
LABEL_40:

LABEL_41:

  return v13;
}

- (id)decodeInData:(id)data
{
  dataCopy = data;
  v4 = wk_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = [[SPProtoSockPuppetPlist alloc] initWithData:dataCopy];
    if (v6)
    {
      v7 = [SPProtoSerializer dictionaryWithSPPlist:v6];
      v8 = v7;
      if (v7)
      {
        allKeys = [v7 allKeys];
        v10 = [NSMutableString stringWithString:@"keys:"];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = allKeys;
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [(__CFString *)v10 appendFormat:@" %@, ", *(*(&v17 + 1) + 8 * i)];
            }

            v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v13);
        }
      }

      else
      {
        v10 = @"can't decode data";
      }
    }

    else
    {
      v10 = @"can't decode data";
    }
  }

  else
  {
    v10 = &stru_1000498D8;
  }

  return v10;
}

- (id)logDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = wk_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    allKeys = [dictionaryCopy allKeys];
    v7 = [NSMutableString stringWithString:@"keys:"];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = allKeys;
    v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;
    v10 = *v22;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 isEqualToString:@"d"])
        {
          v13 = [dictionaryCopy objectForKeyedSubscript:v12];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 length];
            v15 = [(SPCompanionAppServer *)self decodeOutData:v13];
            [(__CFString *)v7 appendFormat:@" data, len: %lu, %@", v14, v15];
LABEL_10:

            goto LABEL_17;
          }
        }

        else
        {
          if ([v12 isEqualToString:@"p"])
          {
            v13 = [dictionaryCopy objectForKeyedSubscript:v12];
            -[__CFString appendFormat:](v7, "appendFormat:", @"proto data, len: %lu", [v13 length], v18);
            goto LABEL_17;
          }

          v16 = [v12 isEqualToString:@"ci"];
          v13 = [dictionaryCopy objectForKeyedSubscript:v12];
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [(SPCompanionAppServer *)self logStringArray:v13];
              [(__CFString *)v7 appendFormat:@" %@: %@, ", v12, v15];
              goto LABEL_10;
            }
          }
        }

        [(__CFString *)v7 appendFormat:@" %@: %@, ", v12, v13];
LABEL_17:
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v9)
      {
LABEL_19:

        goto LABEL_21;
      }
    }
  }

  v7 = &stru_1000498D8;
LABEL_21:

  return v7;
}

- (id)logStringArray:(id)array
{
  arrayCopy = array;
  v4 = wk_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = [arrayCopy componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = &stru_1000498D8;
  }

  return v6;
}

- (void)extensionDidBeginSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = snapshotCopy;
  if (snapshotCopy)
  {
    extensionsDoingSnapshotQueue = self->_extensionsDoingSnapshotQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013890;
    block[3] = &unk_1000447A0;
    block[4] = self;
    v7 = snapshotCopy;
    v13 = v7;
    dispatch_barrier_sync(extensionsDoingSnapshotQueue, block);
    v8 = dispatch_time(0, 25000000000);
    v9 = self->_extensionsDoingSnapshotQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000139B4;
    v10[3] = &unk_1000447A0;
    v10[4] = self;
    v11 = v7;
    dispatch_after(v8, v9, v10);
  }
}

- (void)extensionDidEndSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = snapshotCopy;
  if (snapshotCopy)
  {
    extensionsDoingSnapshotQueue = self->_extensionsDoingSnapshotQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100013B84;
    v7[3] = &unk_1000447A0;
    v7[4] = self;
    v8 = snapshotCopy;
    dispatch_barrier_sync(extensionsDoingSnapshotQueue, v7);
  }
}

- (BOOL)isExtensionDoingSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = snapshotCopy;
  if (snapshotCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    extensionsDoingSnapshotQueue = self->_extensionsDoingSnapshotQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013DC0;
    block[3] = &unk_100045A40;
    v11 = &v12;
    block[4] = self;
    v10 = snapshotCopy;
    dispatch_sync(extensionsDoingSnapshotQueue, block);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)_textSizeChanged
{
  _textSize = [(SPCompanionAppServer *)self _textSize];
  v3 = _textSize;
  if (qword_100051CF8 && ![_textSize compare:?])
  {
    v4 = 0;
  }

  else
  {
    objc_storeStrong(&qword_100051CF8, v3);
    v4 = qword_100051CF8;
  }

  return v4;
}

- (id)_textSize
{
  if (qword_100051D08 != -1)
  {
    sub_10002977C();
  }

  synchronize = [qword_100051D00 synchronize];
  v3 = [qword_100051D00 objectForKey:@"UIPreferredContentSizeCategoryName"];
  if (!v3)
  {
    v3 = UIContentSizeCategorySmall;
  }

  return v3;
}

- (void)_sendTextSizeToApplication:(id)application onlyIfChanged:(BOOL)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014010;
  block[3] = &unk_100045A88;
  changedCopy = changed;
  block[4] = self;
  applicationCopy = application;
  v4 = applicationCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)_isApplicationViewControllerActivate:(id)activate
{
  activateCopy = activate;
  v4 = [[SPProtoSockPuppetPlist alloc] initWithData:activateCopy];

  if (!v4)
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100029814();
    }

    goto LABEL_12;
  }

  v5 = [SPProtoSerializer dictionaryWithSPPlist:v4];
  v6 = v5;
  if (!v5)
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100029790();
    }

LABEL_11:

LABEL_12:
    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

  v7 = [v5 objectForKeyedSubscript:@"V"];

  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"!"];
    v7 = v8;
    if (v8 && ([v8 isEqualToString:@"A"]& 1) != 0)
    {

      LOBYTE(v7) = 1;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:

  return v7;
}

- (void)activeComplicationsWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.sockpuppet.activeComplications"];
    synchronize = [v4 synchronize];
    v6 = [v4 arrayForKey:@"activeComplications"];
    v7 = [v6 copy];

    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136447234;
      v10 = "[SPCompanionAppServer activeComplicationsWithCompletion:]";
      v11 = 1024;
      v12 = 2097;
      v13 = 2114;
      v14 = @"NativeComplications";
      v15 = 2114;
      v16 = @"com.apple.sockpuppet.activeComplications";
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}@ fetching domain %{public}@ returned bundleIDs %{public}@", &v9, 0x30u);
    }

    completionCopy[2](completionCopy, v7);
  }
}

- (id)applicationIdentifierFromXPCConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&cf, 0, sizeof(cf));
  }

  v5 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &cf);
  if (v5)
  {
    v6 = v5;
    *cf.val = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, @"application-identifier", &cf);
    if (*cf.val)
    {
      CFRelease(*cf.val);
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)connection:(id)connection hasEntitlement:(id)entitlement
{
  connectionCopy = connection;
  entitlementCopy = entitlement;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&cf, 0, sizeof(cf));
  }

  v7 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &cf);
  if (v7)
  {
    v8 = v7;
    *cf.val = 0;
    v9 = SecTaskCopyValueForEntitlement(v7, entitlementCopy, &cf);
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    if (*cf.val)
    {
      CFRelease(*cf.val);
    }

    CFRelease(v8);
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end