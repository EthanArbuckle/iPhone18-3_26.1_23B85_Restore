@interface DADeviceDecoratorWithSync
+ (id)decorateDevice:(id)a3;
- (BOOL)_isDeviceLocked;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToMessage:(id)a3;
- (DADeviceDecoratorWithSync)initWithDevice:(id)a3;
- (DADeviceDelegate)delegate;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_deviceStateDidChange:(id)a3;
- (void)_syncState:(id)a3;
- (void)end;
- (void)forwardInvocation:(id)a3;
- (void)idle;
- (void)receiveMessage:(id)a3 data:(id)a4 fromDestination:(id)a5 expectsResponse:(BOOL)a6 response:(id)a7;
- (void)resumeTests;
- (void)setDelegate:(id)a3;
- (void)start;
- (void)suspendTests;
@end

@implementation DADeviceDecoratorWithSync

+ (id)decorateDevice:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDevice:v4];

  return v5;
}

- (DADeviceDecoratorWithSync)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  pendingTasks = self->_pendingTasks;
  self->_pendingTasks = v5;

  original = self->_original;
  self->_original = v4;
  v8 = v4;

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = [(DADeviceDecoratorWithSync *)self original];
  v11 = [v10 state];
  [v9 addObserver:self selector:"_deviceStateDidChange:" name:@"com.apple.Diagnostics.deviceStateChangedNotification" object:v11];

  return self;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceDecoratorWithSync] Setting delegate: %@", buf, 0xCu);
  }

  objc_storeWeak(&v5->_delegate, v4);
  v7 = [(DADeviceDecoratorWithSync *)v5 pendingTasks];
  v8 = [v7 count] == 0;

  if (!v8)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(DADeviceDecoratorWithSync *)v5 pendingTasks];
      v11 = [v10 count];
      *buf = 134217984;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DADeviceDecoratorWithSync] Executing pending tasks, count: %lu", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [(DADeviceDecoratorWithSync *)v5 pendingTasks];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v17 + 1) + 8 * v15) + 16))();
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    v16 = [(DADeviceDecoratorWithSync *)v5 pendingTasks];
    [v16 removeAllObjects];
  }

  objc_sync_exit(v5);
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a3);
    v7 = [(DADeviceDecoratorWithSync *)self original];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fast forwarding %@ to %@", &v11, 0x16u);
  }

  v8 = [(DADeviceDecoratorWithSync *)self original];
  if (objc_opt_respondsToSelector())
  {
    self = v8;
  }

  v9 = self;

  return self;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector([v4 selector]);
    v7 = [(DADeviceDecoratorWithSync *)self original];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Slow forwarding %@ to %@", &v9, 0x16u);
  }

  v8 = [(DADeviceDecoratorWithSync *)self original];
  [v4 invokeWithTarget:v8];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(DADeviceDecoratorWithSync *)self original];
  v5 = [v4 methodSignatureForSelector:a3];

  return v5;
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v4 = [(DADeviceDecoratorWithSync *)self original];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)receiveMessage:(id)a3 data:(id)a4 fromDestination:(id)a5 expectsResponse:(BOOL)a6 response:(id)a7
{
  v8 = a6;
  v12 = a3;
  v38 = a4;
  v13 = a5;
  v14 = a7;
  v15 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[DADeviceDecoratorWithSync] Received %@ message", buf, 0xCu);
  }

  v16 = [(DADeviceDecoratorWithSync *)self destination];
  v17 = [v13 isEqual:v16];

  if (v17)
  {
    v37 = @"messageReceived";
    if ([v12 isEqualToString:@"wakeDevice"])
    {
      if ([(DADeviceDecoratorWithSync *)self _isDeviceLocked])
      {
        v18 = @"deviceIsLocked";

        goto LABEL_7;
      }

      v20 = [(DADeviceDecoratorWithSync *)self original];
      v21 = [v20 state];
      if ([v21 phase] == 1)
      {
      }

      else
      {
        v25 = [(DADeviceDecoratorWithSync *)self original];
        v26 = [v25 state];
        v27 = [v26 phase] == 0;

        if (!v27)
        {
          goto LABEL_32;
        }
      }

      [(DADeviceDecoratorWithSync *)self start];
    }

    else if ([v12 isEqualToString:@"endDevice"])
    {
      [(DADeviceDecoratorWithSync *)self end];
    }

    else if ([v12 isEqualToString:@"idleDevice"])
    {
      [(DADeviceDecoratorWithSync *)self idle];
    }

    else
    {
      if ([v12 isEqualToString:@"requestDeviceState"])
      {
        v22 = [(DADeviceDecoratorWithSync *)self original];
        v23 = [v22 state];
        v19 = [v23 copy];

        v24 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
        [v19 setTimestamp:v24];

        if (!v8)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      if (([v12 isEqualToString:@"requestAssessmentMode"] & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", @"requestSuiteFinish"))
      {
        v18 = @"unknownMessage";

LABEL_7:
        v19 = 0;
        v37 = v18;
        if (!v8)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v28 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(DADeviceDecoratorWithSync *)self delegate];
        *buf = 138412546;
        v45 = v12;
        v46 = 2112;
        v47 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[DADeviceDecoratorWithSync] Routing %@ message to %@", buf, 0x16u);
      }

      objc_initWeak(&location, self);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10002D184;
      v39[3] = &unk_1001BD678;
      v30 = v12;
      v40 = v30;
      objc_copyWeak(&v42, &location);
      v41 = self;
      v31 = objc_retainBlock(v39);
      v32 = self;
      objc_sync_enter(v32);
      v33 = [(DADeviceDecoratorWithSync *)v32 delegate];

      if (v33)
      {
        (v31[2])(v31);
      }

      else
      {
        v34 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v30;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[DADeviceDecoratorWithSync] Adding a pending task for the %@ message", buf, 0xCu);
        }

        v35 = [(DADeviceDecoratorWithSync *)v32 pendingTasks];
        v36 = objc_retainBlock(v31);
        [v35 addObject:v36];
      }

      objc_sync_exit(v32);

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
    }

LABEL_32:
    v19 = 0;
    if (!v8)
    {
LABEL_34:

      goto LABEL_35;
    }

LABEL_33:
    v14[2](v14, v37, v19);
    goto LABEL_34;
  }

  if (v8)
  {
    v14[2](v14, @"destinationMismatch", 0);
  }

LABEL_35:
}

- (BOOL)respondsToMessage:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithObjects:@"wakeDevice", @"endDevice", @"idleDevice", @"requestDeviceState", @"requestAssessmentMode", @"requestSuiteFinish", 0];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)start
{
  v2 = [(DADeviceDecoratorWithSync *)self original];
  [v2 start];
}

- (void)idle
{
  v2 = [(DADeviceDecoratorWithSync *)self original];
  [v2 idle];
}

- (void)suspendTests
{
  v2 = [(DADeviceDecoratorWithSync *)self original];
  [v2 suspendTests];
}

- (void)resumeTests
{
  v2 = [(DADeviceDecoratorWithSync *)self original];
  [v2 resumeTests];
}

- (void)end
{
  v2 = [(DADeviceDecoratorWithSync *)self original];
  [v2 end];
}

- (void)_syncState:(id)a3
{
  v4 = a3;
  if ([(DADeviceDecoratorWithSync *)self _isDeviceLocked])
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is locked. Will not sync device state: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [v4 copy];
    v7 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    [v6 setTimestamp:v7];

    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002D680;
    v9[3] = &unk_1001BC5F8;
    v10 = v6;
    v11 = self;
    v5 = v6;
    dispatch_async(v8, v9);
  }
}

- (void)_deviceStateDidChange:(id)a3
{
  v11 = a3;
  v4 = [v11 userInfo];
  v5 = v11;
  if (v4)
  {
    v6 = [v11 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"info"];

    v5 = v11;
    if (v7)
    {
      v8 = [v11 userInfo];
      v9 = [v8 objectForKeyedSubscript:@"info"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 snapshot];
        [(DADeviceDecoratorWithSync *)self _syncState:v10];
      }

      v5 = v11;
    }
  }
}

- (BOOL)_isDeviceLocked
{
  v2 = MKBGetDeviceLockState();
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Current device lock state: %i", v6, 8u);
  }

  return v2 == -1 || (v2 - 1) < 2;
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end