@interface AppDelegate
- (AppDelegate)init;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)warmUp;
@end

@implementation AppDelegate

- (AppDelegate)init
{
  v15.receiver = self;
  v15.super_class = AppDelegate;
  v2 = [(AppDelegate *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.iMessageAppsViewService.xpcQueue", v3);
    xpcQueue = v2->_xpcQueue;
    v2->_xpcQueue = v4;

    v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.iMessageAppsViewService.warmup-connection"];
    sourceListener = v2->_sourceListener;
    v2->_sourceListener = v6;

    [(NSXPCListener *)v2->_sourceListener _setQueue:v2->_xpcQueue];
    [(NSXPCListener *)v2->_sourceListener setDelegate:v2];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000054AC;
    v13[3] = &unk_100010750;
    v8 = v2;
    v14 = v8;
    v9 = objc_retainBlock(v13);
    v8->_lockToken = -1;
    v8 = (v8 + 24);
    notify_register_dispatch(kSBSLockStateNotifyKey, v8, &_dispatch_main_q, v9);
    (v9[2])(v9, LODWORD(v8->super.isa));
    v10 = sub_100007044();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Running but not yet listening", &v12, 2u);
    }
  }

  return v2;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = sub_100007044();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Application didFinishLaunching", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000055FC;
  v7[3] = &unk_1000105F0;
  v7[4] = self;
  [UIApp _performBlockAfterCATransactionCommits:v7];
  return 1;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_100007044();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Accepting new source connection from PID %d", &buf, 8u);
  }

  [connectionCopy _setQueue:self->_xpcQueue];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____UIKeyboardMediaService];
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:self];
  objc_initWeak(&buf, connectionCopy);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000058A4;
  v16[3] = &unk_100010778;
  objc_copyWeak(&v17, &buf);
  [connectionCopy setInterruptionHandler:v16];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100005964;
  v14 = &unk_100010778;
  objc_copyWeak(&v15, &buf);
  [connectionCopy setInvalidationHandler:&v11];
  [connectionCopy resume];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&buf);

  return 1;
}

- (void)warmUp
{
  v2 = sub_100007044();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = +[NSXPCConnection currentConnection];
    v4[0] = 67109120;
    v4[1] = [v3 processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Warmed up by PID %d", v4, 8u);
  }
}

@end