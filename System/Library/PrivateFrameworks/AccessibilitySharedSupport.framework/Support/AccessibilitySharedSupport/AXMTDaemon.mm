@interface AXMTDaemon
+ (BOOL)_connectionIsAuthorized:(id)authorized;
- (BOOL)isTracking;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_enumerateRemoteProxyDelegatesTrackingOnly:(BOOL)only work:(id)work;
- (void)_handleConnectionClosedOnBackgroundThread:(id)thread;
- (void)_initializeSystemSettings;
- (void)_setXPCProperty:(id)property;
- (void)_startOrUpdateTrackerIfNeeded;
- (void)_stopTrackerIfNoLongerNeeded;
- (void)_stopTrackerIfRunning;
- (void)_updateState:(id)state;
- (void)dealloc;
- (void)hideDebugOverlay;
- (void)playVideoAtURL:(id)l onMotionTrackingVideoFileInput:(id)input completionHandler:(id)handler;
- (void)recalibrateFace;
- (void)setExpressionConfiguration:(id)configuration;
- (void)setInputConfiguration:(id)configuration;
- (void)setJoystickModeMovementThreshold:(double)threshold;
- (void)setLookAtPoint:(CGPoint)point;
- (void)setMotionTrackingMode:(unint64_t)mode;
- (void)setSensitivity:(double)sensitivity;
- (void)showDebugOverlay;
- (void)startDaemon;
- (void)startTracking;
- (void)stopTracking;
@end

@implementation AXMTDaemon

- (void)startDaemon
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTDaemon: startDaemon:", buf, 2u);
  }

  [(AXMTDaemon *)self _initializeSystemSettings];
  v4 = dispatch_queue_create([@"com.apple.accessibility.MotionTrackingAgent.queues.xpcConnections" UTF8String], 0);
  [(AXMTDaemon *)self set_xpcConnectionsQueue:v4];

  _xpcConnectionsQueue = [(AXMTDaemon *)self _xpcConnectionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000017B0;
  block[3] = &unk_1000488F8;
  block[4] = self;
  dispatch_sync(_xpcConnectionsQueue, block);

  v6 = [NSXPCListener alloc];
  v7 = [v6 initWithMachServiceName:AXSSMotionTrackingDaemonIdentifier];
  [(AXMTDaemon *)self set_xpcListener:v7];

  _xpcListener = [(AXMTDaemon *)self _xpcListener];
  [_xpcListener setDelegate:self];

  _xpcListener2 = [(AXMTDaemon *)self _xpcListener];
  [_xpcListener2 resume];

  v10 = AXSSLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "AXMTDaemon: runloop started", buf, 2u);
  }

  while (1)
  {
    v11 = +[NSRunLoop mainRunLoop];
    v12 = +[NSDate distantFuture];
    [v11 runMode:NSDefaultRunLoopMode beforeDate:v12];
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->__xpcListener invalidate];
  [(AXSSMotionTrackingInputManager *)self->__inputManager stopMonitoring];
  v3.receiver = self;
  v3.super_class = AXMTDaemon;
  [(AXMTDaemon *)&v3 dealloc];
}

+ (BOOL)_connectionIsAuthorized:(id)authorized
{
  if (!authorized)
  {
    return 0;
  }

  memset(&cf[1], 0, sizeof(audit_token_t));
  [authorized auditToken];
  cf[0] = cf[1];
  v3 = SecTaskCreateWithAuditToken(0, cf);
  if (v3)
  {
    v4 = v3;
    *cf[0].val = 0;
    v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.private.acccessibility.motionTrackingClient", cf);
    if (*cf[0].val)
    {
      v6 = AXSSLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000294A0();
      }

      CFRelease(*cf[0].val);
    }

    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v5);
        CFRelease(v5);
        CFRelease(v4);
        if (Value)
        {
          return 1;
        }

        goto LABEL_14;
      }

      CFRelease(v5);
    }

    CFRelease(v4);
  }

LABEL_14:
  v10 = AXSSLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100029518();
  }

  return 0;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = AXSSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AXMTDaemon: listener:shouldAcceptNewConnection:", buf, 2u);
  }

  v9 = [objc_opt_class() _connectionIsAuthorized:connectionCopy];
  if (v9)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AXSSMotionTrackingDaemonProtocol];
    [connectionCopy setExportedInterface:v10];
    [connectionCopy setExportedObject:self];
    objc_initWeak(buf, connectionCopy);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100001CE0;
    v22[3] = &unk_100048920;
    objc_copyWeak(&v23, buf);
    v22[4] = self;
    [connectionCopy setInvalidationHandler:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100001D4C;
    v20[3] = &unk_100048920;
    objc_copyWeak(&v21, buf);
    v20[4] = self;
    [connectionCopy setInterruptionHandler:v20];
    _xpcConnectionsQueue = [(AXMTDaemon *)self _xpcConnectionsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001DB8;
    block[3] = &unk_100048948;
    block[4] = self;
    v12 = connectionCopy;
    v19 = v12;
    dispatch_sync(_xpcConnectionsQueue, block);

    v13 = &OBJC_PROTOCOL___AXSSMotionTrackingDaemonDelegateProtocol;
    v14 = [NSXPCInterface interfaceWithProtocol:v13];
    [v12 setRemoteObjectInterface:v14];
    v15 = AXSSLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "AXMTDaemon: listener:shouldAcceptNewConnection: resuming connection", v17, 2u);
    }

    [v12 resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  return v9;
}

- (void)startTracking
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTDaemon: startTracking:", buf, 2u);
  }

  v4 = +[NSXPCConnection currentConnection];
  if (v4)
  {
    _xpcConnectionsQueue = [(AXMTDaemon *)self _xpcConnectionsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001F6C;
    block[3] = &unk_100048948;
    block[4] = self;
    v8 = v4;
    dispatch_sync(_xpcConnectionsQueue, block);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002000;
  v6[3] = &unk_1000488F8;
  v6[4] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)stopTracking
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AXMTDaemon stopTracking]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v4 = +[NSXPCConnection currentConnection];
  if (v4)
  {
    _xpcConnectionsQueue = [(AXMTDaemon *)self _xpcConnectionsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000021A8;
    block[3] = &unk_100048948;
    block[4] = self;
    v8 = v4;
    dispatch_sync(_xpcConnectionsQueue, block);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000223C;
  v6[3] = &unk_1000488F8;
  v6[4] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)recalibrateFace
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[AXMTDaemon recalibrateFace]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTDaemon: %s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000234C;
  block[3] = &unk_1000488F8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)isTracking
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000024CC;
  v12[3] = &unk_100048970;
  v12[4] = self;
  v2 = objc_retainBlock(v12);
  if (+[NSThread isMainThread])
  {
    v3 = (v2[2])(v2);
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002504;
    block[3] = &unk_100048998;
    v7 = &v8;
    v6 = v2;
    dispatch_sync(&_dispatch_main_q, block);
    v3 = *(v9 + 24);

    _Block_object_dispose(&v8, 8);
  }

  return v3 & 1;
}

- (void)showDebugOverlay
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTDaemon: showDebugOverlay:", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002608;
  block[3] = &unk_1000488F8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)hideDebugOverlay
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTDaemon: hideDebugOverlay:", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000274C;
  block[3] = &unk_1000488F8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setMotionTrackingMode:(unint64_t)mode
{
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon:setMotionTrackingMode: motionTrackingMode %lu", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000028D0;
  v6[3] = &unk_1000489C0;
  v6[4] = self;
  v6[5] = mode;
  [(AXMTDaemon *)self _setXPCProperty:v6];
}

- (void)setSensitivity:(double)sensitivity
{
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    sensitivityCopy = sensitivity;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon:setSensitivity: sensitivity %f", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002A5C;
  v6[3] = &unk_1000489C0;
  v6[4] = self;
  *&v6[5] = sensitivity;
  [(AXMTDaemon *)self _setXPCProperty:v6];
}

- (void)setInputConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon: setInputConfiguration: %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002BE8;
  v7[3] = &unk_100048948;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [(AXMTDaemon *)self _setXPCProperty:v7];
}

- (void)setExpressionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[AXMTDaemon setExpressionConfiguration:]";
    v11 = 2112;
    v12 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon: %s: %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002D7C;
  v7[3] = &unk_100048948;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [(AXMTDaemon *)self _setXPCProperty:v7];
}

- (void)setJoystickModeMovementThreshold:(double)threshold
{
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    thresholdCopy = threshold;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon: setJoystickModeMovementThreshold: %f", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002EE4;
  v6[3] = &unk_1000489C0;
  v6[4] = self;
  *&v6[5] = threshold;
  [(AXMTDaemon *)self _setXPCProperty:v6];
}

- (void)setLookAtPoint:(CGPoint)point
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002FC0;
  v3[3] = &unk_1000489E8;
  v3[4] = self;
  pointCopy = point;
  [(AXMTDaemon *)self _setXPCProperty:v3];
}

- (void)playVideoAtURL:(id)l onMotionTrackingVideoFileInput:(id)input completionHandler:(id)handler
{
  lCopy = l;
  inputCopy = input;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = handlerCopy;
  }

  else
  {
    v10 = &stru_100048A28;
  }

  if (lCopy && inputCopy)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000032F4;
    v14[3] = &unk_100048A78;
    v15 = lCopy;
    v16 = inputCopy;
    v17 = v10;
    dispatch_async(&_dispatch_main_q, v14);

    v11 = v15;
  }

  else
  {
    v12 = AXSSMotionTrackingErrorDomain;
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Invalid fileURL!";
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:v12 code:0 userInfo:v11];
    v10->invoke(v10, 0, v13);
  }
}

- (void)_updateState:(id)state
{
  stateCopy = state;
  [(AXMTDaemon *)self set_state:stateCopy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000346C;
  v6[3] = &unk_100048AA0;
  v7 = stateCopy;
  v5 = stateCopy;
  [(AXMTDaemon *)self _enumerateRemoteProxyDelegatesTrackingOnly:1 work:v6];
}

- (void)_enumerateRemoteProxyDelegatesTrackingOnly:(BOOL)only work:(id)work
{
  workCopy = work;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000035FC;
  v18 = sub_10000360C;
  v19 = 0;
  _xpcConnectionsQueue = [(AXMTDaemon *)self _xpcConnectionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003614;
  block[3] = &unk_100048AC8;
  onlyCopy = only;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(_xpcConnectionsQueue, block);

  v8 = v15[5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003698;
  v10[3] = &unk_100048B30;
  v9 = workCopy;
  v11 = v9;
  [v8 enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(&v14, 8);
}

- (void)_handleConnectionClosedOnBackgroundThread:(id)thread
{
  threadCopy = thread;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = threadCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon: connection closed %@", buf, 0xCu);
  }

  if (threadCopy)
  {
    [threadCopy invalidate];
    _xpcConnectionsQueue = [(AXMTDaemon *)self _xpcConnectionsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000038F4;
    block[3] = &unk_100048948;
    block[4] = self;
    v9 = threadCopy;
    dispatch_sync(_xpcConnectionsQueue, block);

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000039C8;
    v7[3] = &unk_1000488F8;
    v7[4] = self;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)_stopTrackerIfNoLongerNeeded
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100029640();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _xpcConnectionsQueue = [(AXMTDaemon *)self _xpcConnectionsQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003AE4;
  v5[3] = &unk_100048B58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(_xpcConnectionsQueue, v5);

  if (*(v7 + 24) == 1)
  {
    [(AXMTDaemon *)self _stopTrackerIfRunning];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)_startOrUpdateTrackerIfNeeded
{
  _inputManager = [(AXMTDaemon *)self _inputManager];

  if (!_inputManager)
  {
    v4 = [AXSSMotionTrackingInputManager alloc];
    _inputConfiguration = [(AXMTDaemon *)self _inputConfiguration];
    v6 = [v4 initWithConfiguration:_inputConfiguration];
    [(AXMTDaemon *)self set_inputManager:v6];

    _inputManager2 = [(AXMTDaemon *)self _inputManager];
    [_inputManager2 setDelegate:self];
  }

  _inputManager3 = [(AXMTDaemon *)self _inputManager];
  [_inputManager3 startMonitoring];

  [@"com.apple.accessibility.MotionTrackingAgent.queues.xpcConnections" UTF8String];
  v9 = os_transaction_create();
  [(AXMTDaemon *)self set_trackerTransaction:v9];

  _inputManager4 = [(AXMTDaemon *)self _inputManager];
  inputToUse = [_inputManager4 inputToUse];
  if (inputToUse)
  {
  }

  else
  {
    v12 = _AXSMossdeepEnabled();

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  _inputManager5 = [(AXMTDaemon *)self _inputManager];
  inputToUse2 = [_inputManager5 inputToUse];
  v15 = AXMTLookAtPointTrackerClass(inputToUse2);

  if (v15)
  {
    _lookAtPointTracker = [(AXMTDaemon *)self _lookAtPointTracker];
    if (_lookAtPointTracker)
    {
      v17 = _lookAtPointTracker;
      _lookAtPointTracker2 = [(AXMTDaemon *)self _lookAtPointTracker];
      v19 = objc_opt_class();

      if (v15 != v19)
      {
        v20 = AXSSLogForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          _lookAtPointTracker3 = [(AXMTDaemon *)self _lookAtPointTracker];
          *v67 = 138412290;
          *&v67[4] = objc_opt_class();
          v22 = *&v67[4];
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "AXMTDaemon:startTracking: Tearing down tracker %@", v67, 0xCu);
        }

        _lookAtPointTracker4 = [(AXMTDaemon *)self _lookAtPointTracker];
        [_lookAtPointTracker4 stopTracking];

        [(AXMTDaemon *)self set_lookAtPointTracker:0];
      }
    }

    _lookAtPointTrackerObserver = [(AXMTDaemon *)self _lookAtPointTrackerObserver];

    if (!_lookAtPointTrackerObserver)
    {
      v25 = objc_alloc_init(AXMTLookAtPointTrackerObserver);
      [(AXMTDaemon *)self set_lookAtPointTrackerObserver:v25];

      _lookAtPointTrackerObserver2 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
      [_lookAtPointTrackerObserver2 setDelegate:self];
    }

    _lookAtPointTracker5 = [(AXMTDaemon *)self _lookAtPointTracker];

    if (!_lookAtPointTracker5)
    {
      _inputConfiguration2 = [(AXMTDaemon *)self _inputConfiguration];
      allowedTrackingTypes = [_inputConfiguration2 allowedTrackingTypes];
      allObjects = [allowedTrackingTypes allObjects];
      firstObject = [allObjects firstObject];
      unsignedIntegerValue = [firstObject unsignedIntegerValue];

      _inputManager6 = [(AXMTDaemon *)self _inputManager];
      inputToUse3 = [_inputManager6 inputToUse];
      v35 = AXMTCreateLookAtPointTracker(inputToUse3, unsignedIntegerValue);
      [(AXMTDaemon *)self set_lookAtPointTracker:v35];

      v36 = AXSSLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        _lookAtPointTracker6 = [(AXMTDaemon *)self _lookAtPointTracker];
        *v67 = 138412290;
        *&v67[4] = _lookAtPointTracker6;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "AXMTDaemon:startTracking: creating lookAtPointTracker %@", v67, 0xCu);
      }
    }

    _lookAtPointTracker7 = [(AXMTDaemon *)self _lookAtPointTracker];

    if (_lookAtPointTracker7)
    {
      v39 = AXSSLogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        _lookAtPointTracker8 = [(AXMTDaemon *)self _lookAtPointTracker];
        *v67 = 138412290;
        *&v67[4] = _lookAtPointTracker8;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "AXMTDaemon:startTracking: updating lookAtPointTracker %@", v67, 0xCu);
      }

      _inputManager7 = [(AXMTDaemon *)self _inputManager];
      inputToUse4 = [_inputManager7 inputToUse];
      _lookAtPointTracker9 = [(AXMTDaemon *)self _lookAtPointTracker];
      [_lookAtPointTracker9 setInput:inputToUse4];

      [(AXMTDaemon *)self _sensitivity];
      v45 = v44;
      _lookAtPointTracker10 = [(AXMTDaemon *)self _lookAtPointTracker];
      [_lookAtPointTracker10 setSensitivity:v45];

      _motionTrackingMode = [(AXMTDaemon *)self _motionTrackingMode];
      _lookAtPointTracker11 = [(AXMTDaemon *)self _lookAtPointTracker];
      [_lookAtPointTracker11 setMotionTrackingMode:_motionTrackingMode];

      [(AXMTDaemon *)self _joystickModeMovementThreshold];
      v50 = v49;
      _lookAtPointTracker12 = [(AXMTDaemon *)self _lookAtPointTracker];
      [_lookAtPointTracker12 setJoystickModeMovementThreshold:v50];

      _expressionConfiguration = [(AXMTDaemon *)self _expressionConfiguration];
      _lookAtPointTracker13 = [(AXMTDaemon *)self _lookAtPointTracker];
      [_lookAtPointTracker13 setExpressionConfiguration:_expressionConfiguration];

      _lookAtPointTrackerObserver3 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
      _lookAtPointTracker14 = [(AXMTDaemon *)self _lookAtPointTracker];
      [_lookAtPointTracker14 setDelegate:_lookAtPointTrackerObserver3];

      _lookAtPointTracker15 = [(AXMTDaemon *)self _lookAtPointTracker];
      [_lookAtPointTracker15 startTracking];

      _showDebugOverlay = [(AXMTDaemon *)self _showDebugOverlay];
      _lookAtPointTracker16 = [(AXMTDaemon *)self _lookAtPointTracker];
      [_lookAtPointTracker16 setDebugOverlayEnabled:_showDebugOverlay];
    }

    _lookAtPointTrackerObserver4 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
    state = [_lookAtPointTrackerObserver4 state];
    [(AXMTDaemon *)self _updateState:state];

    goto LABEL_30;
  }

LABEL_23:
  v61 = AXSSLogForCategory();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    sub_100029680(self, v61);
  }

  _lookAtPointTracker17 = [(AXMTDaemon *)self _lookAtPointTracker];

  if (_lookAtPointTracker17)
  {
    _lookAtPointTracker18 = [(AXMTDaemon *)self _lookAtPointTracker];
    [_lookAtPointTracker18 stopTracking];

    [(AXMTDaemon *)self set_lookAtPointTracker:0];
  }

  _lookAtPointTrackerObserver5 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];

  if (_lookAtPointTrackerObserver5)
  {
    _lookAtPointTrackerObserver6 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
    [_lookAtPointTrackerObserver6 setDelegate:0];

    [(AXMTDaemon *)self set_lookAtPointTrackerObserver:0];
  }

  _lookAtPointTrackerObserver4 = objc_alloc_init(AXSSMotionTrackingState);
  v66 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:13 userInfo:0];
  [_lookAtPointTrackerObserver4 setError:v66];

  [(AXMTDaemon *)self _updateState:_lookAtPointTrackerObserver4];
LABEL_30:
}

- (void)_stopTrackerIfRunning
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100029754();
  }

  [(AXMTDaemon *)self set_trackerTransaction:0];
  _lookAtPointTracker = [(AXMTDaemon *)self _lookAtPointTracker];

  if (_lookAtPointTracker)
  {
    _lookAtPointTracker2 = [(AXMTDaemon *)self _lookAtPointTracker];
    [_lookAtPointTracker2 setDelegate:0];

    _lookAtPointTracker3 = [(AXMTDaemon *)self _lookAtPointTracker];
    [_lookAtPointTracker3 stopTracking];

    [(AXMTDaemon *)self set_lookAtPointTracker:0];
  }

  _lookAtPointTrackerObserver = [(AXMTDaemon *)self _lookAtPointTrackerObserver];

  if (_lookAtPointTrackerObserver)
  {
    _lookAtPointTrackerObserver2 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
    [_lookAtPointTrackerObserver2 setDelegate:0];

    [(AXMTDaemon *)self set_lookAtPointTrackerObserver:0];
  }

  _inputManager = [(AXMTDaemon *)self _inputManager];

  if (_inputManager)
  {
    _inputManager2 = [(AXMTDaemon *)self _inputManager];
    [_inputManager2 stopMonitoring];

    [(AXMTDaemon *)self set_inputManager:0];
  }
}

- (void)_setXPCProperty:(id)property
{
  propertyCopy = property;
  if (+[NSThread isMainThread])
  {
    propertyCopy[2](propertyCopy);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000043EC;
    block[3] = &unk_100048B80;
    v5 = propertyCopy;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

- (void)_initializeSystemSettings
{
  objc_opt_class();
  UIApplicationInstantiateSingleton();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = off_100054498;
  v8 = off_100054498;
  if (!off_100054498)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000046A0;
    v4[3] = &unk_100048BA8;
    v4[4] = &v5;
    sub_1000046A0(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v2();
}

@end