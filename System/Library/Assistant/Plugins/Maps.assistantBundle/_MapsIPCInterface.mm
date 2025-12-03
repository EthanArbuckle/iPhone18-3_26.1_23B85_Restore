@interface _MapsIPCInterface
- (BOOL)_isMapsActive;
- (BOOL)_isMapsRunning;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCConnection)connection;
- (_MapsIPCInterface)initWithListenerEndpointIdentifier:(id)identifier;
- (void)dealloc;
- (void)initializeBrokerConnectionIfNeeded;
- (void)performWithMapsRunning:(id)running;
@end

@implementation _MapsIPCInterface

- (BOOL)_isMapsActive
{
  v2 = objc_alloc_init(BKSApplicationStateMonitor);
  v3 = [v2 applicationStateForApplication:@"com.apple.Maps"];

  return (v3 & 3) == 0 && v3 != 0;
}

- (void)initializeBrokerConnectionIfNeeded
{
  v3 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "MapsIPCInterface initializeBrokerConnectionIfNeeded", buf, 2u);
  }

  if (!self->_brokerConnection)
  {
    v4 = +[NSXPCConnection _maps_mapsConnectionBrokerEndpointRecorderConnection];
    brokerConnection = self->_brokerConnection;
    self->_brokerConnection = v4;

    [(NSXPCConnection *)self->_brokerConnection setExportedObject:self];
    v6 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointSourceInterface];
    [(NSXPCConnection *)self->_brokerConnection setExportedInterface:v6];

    v7 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointRecorderInterface];
    [(NSXPCConnection *)self->_brokerConnection setRemoteObjectInterface:v7];

    objc_initWeak(buf, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_13F88;
    v16[3] = &unk_4A9B8;
    objc_copyWeak(&v17, buf);
    [(NSXPCConnection *)self->_brokerConnection setInvalidationHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_14014;
    v14[3] = &unk_4A9B8;
    objc_copyWeak(&v15, buf);
    [(NSXPCConnection *)self->_brokerConnection setInterruptionHandler:v14];
    [(NSXPCConnection *)self->_brokerConnection resume];
    [(NSXPCListener *)self->_xpcListener invalidate];
    v8 = +[NSXPCListener anonymousListener];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v8;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener resume];
    v10 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "MapsIPCInterface Initializing broker connection.", v13, 2u);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_brokerConnection remoteObjectProxy];
    endpoint = [(NSXPCListener *)self->_xpcListener endpoint];
    [remoteObjectProxy listenerEndpointDidChange:endpoint forIdentifier:self->_endpointIdentifier];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

- (NSXPCConnection)connection
{
  dispatch_assert_queue_V2(self->_messagingQueue);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_144B0;
  v23 = sub_144C0;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_144B0;
  v17 = sub_144C0;
  v18 = 0;
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1B8C;
  block[3] = &unk_4AA28;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v13;
  dispatch_sync(connectionQueue, block);
  v4 = v14[5];
  if (v4)
  {
    v5 = dispatch_walltime(0, 20000000000);
    dispatch_group_wait(v4, v5);
    v6 = self->_connectionQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_14554;
    v11[3] = &unk_34D38;
    v11[4] = self;
    v11[5] = &v19;
    dispatch_sync(v6, v11);
  }

  else
  {
    v7 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "MapsIPCInterface Didn't get a dispatchGroup to wait on", v10, 2u);
    }
  }

  v8 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (_MapsIPCInterface)initWithListenerEndpointIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = _MapsIPCInterface;
  v5 = [(_MapsIPCInterface *)&v19 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    endpointIdentifier = v5->_endpointIdentifier;
    v5->_endpointIdentifier = v6;

    v8 = [NSString stringWithFormat:@"com.apple.Maps.IPCInterface.%@", objc_opt_class()];
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    messagingQueue = v5->_messagingQueue;
    v5->_messagingQueue = v11;

    v13 = [v8 stringByAppendingString:@".connection"];
    uTF8String2 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String2, v15);
    connectionQueue = v5->_connectionQueue;
    v5->_connectionQueue = v16;

    [(_MapsIPCInterface *)v5 initializeBrokerConnectionIfNeeded];
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_xpcListener invalidate];
  v3 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "MapsIPCInterface Tear down broker connection.", buf, 2u);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_brokerConnection remoteObjectProxy];
  [remoteObjectProxy listenerEndpointDidChange:0 forIdentifier:self->_endpointIdentifier];

  [(NSXPCConnection *)self->_brokerConnection invalidate];
  [(NSXPCConnection *)self->_connection invalidate];
  v5.receiver = self;
  v5.super_class = _MapsIPCInterface;
  [(_MapsIPCInterface *)&v5 dealloc];
}

- (BOOL)_isMapsRunning
{
  v2 = objc_alloc_init(BKSApplicationStateMonitor);
  v3 = [v2 applicationStateForApplication:@"com.apple.Maps"];

  return (v3 & 1) == 0 && v3 != 0;
}

- (void)performWithMapsRunning:(id)running
{
  runningCopy = running;
  v4 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  if (qword_5A7C0 != -1)
  {
    sub_1A908();
  }

  v5 = [FBSOpenApplicationOptions optionsWithDictionary:qword_5A7B8];
  v6 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "MapsIPCInterface performWithMapsRunning calling openApplication", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_143E4;
  v8[3] = &unk_4AA00;
  v9 = runningCopy;
  v7 = runningCopy;
  [v4 openApplication:@"com.apple.Maps" withOptions:v5 completion:v8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[_MapsIPCInterface listener:shouldAcceptNewConnection:]";
    v24 = 2112;
    v25 = listenerCopy;
    v26 = 2112;
    v27 = connectionCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MapsIPCInterface %s %@ %@", buf, 0x20u);
  }

  xpcListener = self->_xpcListener;
  if (xpcListener == listenerCopy)
  {
    [(_MapsIPCInterface *)self _configureIncomingConnection:connectionCopy];
    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_148BC;
    v18[3] = &unk_4AA78;
    objc_copyWeak(&v19, buf);
    objc_copyWeak(&v20, &location);
    [connectionCopy setInvalidationHandler:v18];
    [connectionCopy setInterruptionHandler:&stru_4AA98];
    connectionQueue = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_14B80;
    block[3] = &unk_4AA50;
    v11 = connectionCopy;
    v16 = v11;
    selfCopy = self;
    dispatch_sync(connectionQueue, block);
    [v11 resume];
    v12 = self->_connectionQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_14C34;
    v14[3] = &unk_34970;
    v14[4] = self;
    dispatch_async(v12, v14);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return xpcListener == listenerCopy;
}

@end