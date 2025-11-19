@interface AXMTDaemon
+ (BOOL)_connectionIsAuthorized:(id)a3;
- (BOOL)isTracking;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_enumerateRemoteProxyDelegatesTrackingOnly:(BOOL)a3 work:(id)a4;
- (void)_handleConnectionClosedOnBackgroundThread:(id)a3;
- (void)_initializeSystemSettings;
- (void)_setXPCProperty:(id)a3;
- (void)_startOrUpdateTrackerIfNeeded;
- (void)_stopTrackerIfNoLongerNeeded;
- (void)_stopTrackerIfRunning;
- (void)_updateState:(id)a3;
- (void)dealloc;
- (void)hideDebugOverlay;
- (void)playVideoAtURL:(id)a3 onMotionTrackingVideoFileInput:(id)a4 completionHandler:(id)a5;
- (void)recalibrateFace;
- (void)setExpressionConfiguration:(id)a3;
- (void)setInputConfiguration:(id)a3;
- (void)setJoystickModeMovementThreshold:(double)a3;
- (void)setLookAtPoint:(CGPoint)a3;
- (void)setMotionTrackingMode:(unint64_t)a3;
- (void)setSensitivity:(double)a3;
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

  v5 = [(AXMTDaemon *)self _xpcConnectionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000017B0;
  block[3] = &unk_1000488F8;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = [NSXPCListener alloc];
  v7 = [v6 initWithMachServiceName:AXSSMotionTrackingDaemonIdentifier];
  [(AXMTDaemon *)self set_xpcListener:v7];

  v8 = [(AXMTDaemon *)self _xpcListener];
  [v8 setDelegate:self];

  v9 = [(AXMTDaemon *)self _xpcListener];
  [v9 resume];

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

+ (BOOL)_connectionIsAuthorized:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  memset(&cf[1], 0, sizeof(audit_token_t));
  [a3 auditToken];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AXSSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AXMTDaemon: listener:shouldAcceptNewConnection:", buf, 2u);
  }

  v9 = [objc_opt_class() _connectionIsAuthorized:v7];
  if (v9)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AXSSMotionTrackingDaemonProtocol];
    [v7 setExportedInterface:v10];
    [v7 setExportedObject:self];
    objc_initWeak(buf, v7);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100001CE0;
    v22[3] = &unk_100048920;
    objc_copyWeak(&v23, buf);
    v22[4] = self;
    [v7 setInvalidationHandler:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100001D4C;
    v20[3] = &unk_100048920;
    objc_copyWeak(&v21, buf);
    v20[4] = self;
    [v7 setInterruptionHandler:v20];
    v11 = [(AXMTDaemon *)self _xpcConnectionsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001DB8;
    block[3] = &unk_100048948;
    block[4] = self;
    v12 = v7;
    v19 = v12;
    dispatch_sync(v11, block);

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
    v5 = [(AXMTDaemon *)self _xpcConnectionsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001F6C;
    block[3] = &unk_100048948;
    block[4] = self;
    v8 = v4;
    dispatch_sync(v5, block);
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
    v5 = [(AXMTDaemon *)self _xpcConnectionsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000021A8;
    block[3] = &unk_100048948;
    block[4] = self;
    v8 = v4;
    dispatch_sync(v5, block);
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

- (void)setMotionTrackingMode:(unint64_t)a3
{
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon:setMotionTrackingMode: motionTrackingMode %lu", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000028D0;
  v6[3] = &unk_1000489C0;
  v6[4] = self;
  v6[5] = a3;
  [(AXMTDaemon *)self _setXPCProperty:v6];
}

- (void)setSensitivity:(double)a3
{
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon:setSensitivity: sensitivity %f", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002A5C;
  v6[3] = &unk_1000489C0;
  v6[4] = self;
  *&v6[5] = a3;
  [(AXMTDaemon *)self _setXPCProperty:v6];
}

- (void)setInputConfiguration:(id)a3
{
  v4 = a3;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon: setInputConfiguration: %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002BE8;
  v7[3] = &unk_100048948;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(AXMTDaemon *)self _setXPCProperty:v7];
}

- (void)setExpressionConfiguration:(id)a3
{
  v4 = a3;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[AXMTDaemon setExpressionConfiguration:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon: %s: %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002D7C;
  v7[3] = &unk_100048948;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(AXMTDaemon *)self _setXPCProperty:v7];
}

- (void)setJoystickModeMovementThreshold:(double)a3
{
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon: setJoystickModeMovementThreshold: %f", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002EE4;
  v6[3] = &unk_1000489C0;
  v6[4] = self;
  *&v6[5] = a3;
  [(AXMTDaemon *)self _setXPCProperty:v6];
}

- (void)setLookAtPoint:(CGPoint)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002FC0;
  v3[3] = &unk_1000489E8;
  v3[4] = self;
  v4 = a3;
  [(AXMTDaemon *)self _setXPCProperty:v3];
}

- (void)playVideoAtURL:(id)a3 onMotionTrackingVideoFileInput:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_100048A28;
  }

  if (v7 && v8)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000032F4;
    v14[3] = &unk_100048A78;
    v15 = v7;
    v16 = v8;
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

- (void)_updateState:(id)a3
{
  v4 = a3;
  [(AXMTDaemon *)self set_state:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000346C;
  v6[3] = &unk_100048AA0;
  v7 = v4;
  v5 = v4;
  [(AXMTDaemon *)self _enumerateRemoteProxyDelegatesTrackingOnly:1 work:v6];
}

- (void)_enumerateRemoteProxyDelegatesTrackingOnly:(BOOL)a3 work:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000035FC;
  v18 = sub_10000360C;
  v19 = 0;
  v7 = [(AXMTDaemon *)self _xpcConnectionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003614;
  block[3] = &unk_100048AC8;
  v13 = a3;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(v7, block);

  v8 = v15[5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003698;
  v10[3] = &unk_100048B30;
  v9 = v6;
  v11 = v9;
  [v8 enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(&v14, 8);
}

- (void)_handleConnectionClosedOnBackgroundThread:(id)a3
{
  v4 = a3;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXMTDaemon: connection closed %@", buf, 0xCu);
  }

  if (v4)
  {
    [v4 invalidate];
    v6 = [(AXMTDaemon *)self _xpcConnectionsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000038F4;
    block[3] = &unk_100048948;
    block[4] = self;
    v9 = v4;
    dispatch_sync(v6, block);

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
  v4 = [(AXMTDaemon *)self _xpcConnectionsQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003AE4;
  v5[3] = &unk_100048B58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v4, v5);

  if (*(v7 + 24) == 1)
  {
    [(AXMTDaemon *)self _stopTrackerIfRunning];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)_startOrUpdateTrackerIfNeeded
{
  v3 = [(AXMTDaemon *)self _inputManager];

  if (!v3)
  {
    v4 = [AXSSMotionTrackingInputManager alloc];
    v5 = [(AXMTDaemon *)self _inputConfiguration];
    v6 = [v4 initWithConfiguration:v5];
    [(AXMTDaemon *)self set_inputManager:v6];

    v7 = [(AXMTDaemon *)self _inputManager];
    [v7 setDelegate:self];
  }

  v8 = [(AXMTDaemon *)self _inputManager];
  [v8 startMonitoring];

  [@"com.apple.accessibility.MotionTrackingAgent.queues.xpcConnections" UTF8String];
  v9 = os_transaction_create();
  [(AXMTDaemon *)self set_trackerTransaction:v9];

  v10 = [(AXMTDaemon *)self _inputManager];
  v11 = [v10 inputToUse];
  if (v11)
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

  v13 = [(AXMTDaemon *)self _inputManager];
  v14 = [v13 inputToUse];
  v15 = AXMTLookAtPointTrackerClass(v14);

  if (v15)
  {
    v16 = [(AXMTDaemon *)self _lookAtPointTracker];
    if (v16)
    {
      v17 = v16;
      v18 = [(AXMTDaemon *)self _lookAtPointTracker];
      v19 = objc_opt_class();

      if (v15 != v19)
      {
        v20 = AXSSLogForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [(AXMTDaemon *)self _lookAtPointTracker];
          *v67 = 138412290;
          *&v67[4] = objc_opt_class();
          v22 = *&v67[4];
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "AXMTDaemon:startTracking: Tearing down tracker %@", v67, 0xCu);
        }

        v23 = [(AXMTDaemon *)self _lookAtPointTracker];
        [v23 stopTracking];

        [(AXMTDaemon *)self set_lookAtPointTracker:0];
      }
    }

    v24 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];

    if (!v24)
    {
      v25 = objc_alloc_init(AXMTLookAtPointTrackerObserver);
      [(AXMTDaemon *)self set_lookAtPointTrackerObserver:v25];

      v26 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
      [v26 setDelegate:self];
    }

    v27 = [(AXMTDaemon *)self _lookAtPointTracker];

    if (!v27)
    {
      v28 = [(AXMTDaemon *)self _inputConfiguration];
      v29 = [v28 allowedTrackingTypes];
      v30 = [v29 allObjects];
      v31 = [v30 firstObject];
      v32 = [v31 unsignedIntegerValue];

      v33 = [(AXMTDaemon *)self _inputManager];
      v34 = [v33 inputToUse];
      v35 = AXMTCreateLookAtPointTracker(v34, v32);
      [(AXMTDaemon *)self set_lookAtPointTracker:v35];

      v36 = AXSSLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [(AXMTDaemon *)self _lookAtPointTracker];
        *v67 = 138412290;
        *&v67[4] = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "AXMTDaemon:startTracking: creating lookAtPointTracker %@", v67, 0xCu);
      }
    }

    v38 = [(AXMTDaemon *)self _lookAtPointTracker];

    if (v38)
    {
      v39 = AXSSLogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = [(AXMTDaemon *)self _lookAtPointTracker];
        *v67 = 138412290;
        *&v67[4] = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "AXMTDaemon:startTracking: updating lookAtPointTracker %@", v67, 0xCu);
      }

      v41 = [(AXMTDaemon *)self _inputManager];
      v42 = [v41 inputToUse];
      v43 = [(AXMTDaemon *)self _lookAtPointTracker];
      [v43 setInput:v42];

      [(AXMTDaemon *)self _sensitivity];
      v45 = v44;
      v46 = [(AXMTDaemon *)self _lookAtPointTracker];
      [v46 setSensitivity:v45];

      v47 = [(AXMTDaemon *)self _motionTrackingMode];
      v48 = [(AXMTDaemon *)self _lookAtPointTracker];
      [v48 setMotionTrackingMode:v47];

      [(AXMTDaemon *)self _joystickModeMovementThreshold];
      v50 = v49;
      v51 = [(AXMTDaemon *)self _lookAtPointTracker];
      [v51 setJoystickModeMovementThreshold:v50];

      v52 = [(AXMTDaemon *)self _expressionConfiguration];
      v53 = [(AXMTDaemon *)self _lookAtPointTracker];
      [v53 setExpressionConfiguration:v52];

      v54 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
      v55 = [(AXMTDaemon *)self _lookAtPointTracker];
      [v55 setDelegate:v54];

      v56 = [(AXMTDaemon *)self _lookAtPointTracker];
      [v56 startTracking];

      v57 = [(AXMTDaemon *)self _showDebugOverlay];
      v58 = [(AXMTDaemon *)self _lookAtPointTracker];
      [v58 setDebugOverlayEnabled:v57];
    }

    v59 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
    v60 = [v59 state];
    [(AXMTDaemon *)self _updateState:v60];

    goto LABEL_30;
  }

LABEL_23:
  v61 = AXSSLogForCategory();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    sub_100029680(self, v61);
  }

  v62 = [(AXMTDaemon *)self _lookAtPointTracker];

  if (v62)
  {
    v63 = [(AXMTDaemon *)self _lookAtPointTracker];
    [v63 stopTracking];

    [(AXMTDaemon *)self set_lookAtPointTracker:0];
  }

  v64 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];

  if (v64)
  {
    v65 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
    [v65 setDelegate:0];

    [(AXMTDaemon *)self set_lookAtPointTrackerObserver:0];
  }

  v59 = objc_alloc_init(AXSSMotionTrackingState);
  v66 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:13 userInfo:0];
  [v59 setError:v66];

  [(AXMTDaemon *)self _updateState:v59];
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
  v4 = [(AXMTDaemon *)self _lookAtPointTracker];

  if (v4)
  {
    v5 = [(AXMTDaemon *)self _lookAtPointTracker];
    [v5 setDelegate:0];

    v6 = [(AXMTDaemon *)self _lookAtPointTracker];
    [v6 stopTracking];

    [(AXMTDaemon *)self set_lookAtPointTracker:0];
  }

  v7 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];

  if (v7)
  {
    v8 = [(AXMTDaemon *)self _lookAtPointTrackerObserver];
    [v8 setDelegate:0];

    [(AXMTDaemon *)self set_lookAtPointTrackerObserver:0];
  }

  v9 = [(AXMTDaemon *)self _inputManager];

  if (v9)
  {
    v10 = [(AXMTDaemon *)self _inputManager];
    [v10 stopMonitoring];

    [(AXMTDaemon *)self set_inputManager:0];
  }
}

- (void)_setXPCProperty:(id)a3
{
  v3 = a3;
  if (+[NSThread isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000043EC;
    block[3] = &unk_100048B80;
    v5 = v3;
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