@interface DADeviceDecoratorWithSync
+ (id)decorateDevice:(id)device;
- (BOOL)_isDeviceLocked;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToMessage:(id)message;
- (DADeviceDecoratorWithSync)initWithDevice:(id)device;
- (DADeviceDelegate)delegate;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_deviceStateDidChange:(id)change;
- (void)_syncState:(id)state;
- (void)end;
- (void)forwardInvocation:(id)invocation;
- (void)idle;
- (void)receiveMessage:(id)message data:(id)data fromDestination:(id)destination expectsResponse:(BOOL)response response:(id)a7;
- (void)resumeTests;
- (void)setDelegate:(id)delegate;
- (void)start;
- (void)suspendTests;
@end

@implementation DADeviceDecoratorWithSync

+ (id)decorateDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] initWithDevice:deviceCopy];

  return v5;
}

- (DADeviceDecoratorWithSync)initWithDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  pendingTasks = self->_pendingTasks;
  self->_pendingTasks = v5;

  original = self->_original;
  self->_original = deviceCopy;
  v8 = deviceCopy;

  v9 = +[NSNotificationCenter defaultCenter];
  original = [(DADeviceDecoratorWithSync *)self original];
  state = [original state];
  [v9 addObserver:self selector:"_deviceStateDidChange:" name:@"com.apple.Diagnostics.deviceStateChangedNotification" object:state];

  return self;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = delegateCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceDecoratorWithSync] Setting delegate: %@", buf, 0xCu);
  }

  objc_storeWeak(&selfCopy->_delegate, delegateCopy);
  pendingTasks = [(DADeviceDecoratorWithSync *)selfCopy pendingTasks];
  v8 = [pendingTasks count] == 0;

  if (!v8)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      pendingTasks2 = [(DADeviceDecoratorWithSync *)selfCopy pendingTasks];
      v11 = [pendingTasks2 count];
      *buf = 134217984;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DADeviceDecoratorWithSync] Executing pending tasks, count: %lu", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    pendingTasks3 = [(DADeviceDecoratorWithSync *)selfCopy pendingTasks];
    v13 = [pendingTasks3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(pendingTasks3);
          }

          (*(*(*(&v17 + 1) + 8 * v15) + 16))();
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [pendingTasks3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    pendingTasks4 = [(DADeviceDecoratorWithSync *)selfCopy pendingTasks];
    [pendingTasks4 removeAllObjects];
  }

  objc_sync_exit(selfCopy);
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(selector);
    original = [(DADeviceDecoratorWithSync *)self original];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = original;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fast forwarding %@ to %@", &v11, 0x16u);
  }

  original2 = [(DADeviceDecoratorWithSync *)self original];
  if (objc_opt_respondsToSelector())
  {
    self = original2;
  }

  selfCopy = self;

  return self;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector([invocationCopy selector]);
    original = [(DADeviceDecoratorWithSync *)self original];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = original;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Slow forwarding %@ to %@", &v9, 0x16u);
  }

  original2 = [(DADeviceDecoratorWithSync *)self original];
  [invocationCopy invokeWithTarget:original2];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  original = [(DADeviceDecoratorWithSync *)self original];
  v5 = [original methodSignatureForSelector:selector];

  return v5;
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    isKindOfClass = 1;
  }

  else
  {
    original = [(DADeviceDecoratorWithSync *)self original];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)receiveMessage:(id)message data:(id)data fromDestination:(id)destination expectsResponse:(BOOL)response response:(id)a7
{
  responseCopy = response;
  messageCopy = message;
  dataCopy = data;
  destinationCopy = destination;
  v14 = a7;
  v15 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = messageCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[DADeviceDecoratorWithSync] Received %@ message", buf, 0xCu);
  }

  destination = [(DADeviceDecoratorWithSync *)self destination];
  v17 = [destinationCopy isEqual:destination];

  if (v17)
  {
    v37 = @"messageReceived";
    if ([messageCopy isEqualToString:@"wakeDevice"])
    {
      if ([(DADeviceDecoratorWithSync *)self _isDeviceLocked])
      {
        v18 = @"deviceIsLocked";

        goto LABEL_7;
      }

      original = [(DADeviceDecoratorWithSync *)self original];
      state = [original state];
      if ([state phase] == 1)
      {
      }

      else
      {
        original2 = [(DADeviceDecoratorWithSync *)self original];
        state2 = [original2 state];
        v27 = [state2 phase] == 0;

        if (!v27)
        {
          goto LABEL_32;
        }
      }

      [(DADeviceDecoratorWithSync *)self start];
    }

    else if ([messageCopy isEqualToString:@"endDevice"])
    {
      [(DADeviceDecoratorWithSync *)self end];
    }

    else if ([messageCopy isEqualToString:@"idleDevice"])
    {
      [(DADeviceDecoratorWithSync *)self idle];
    }

    else
    {
      if ([messageCopy isEqualToString:@"requestDeviceState"])
      {
        original3 = [(DADeviceDecoratorWithSync *)self original];
        state3 = [original3 state];
        v19 = [state3 copy];

        v24 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
        [v19 setTimestamp:v24];

        if (!responseCopy)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      if (([messageCopy isEqualToString:@"requestAssessmentMode"] & 1) == 0 && !objc_msgSend(messageCopy, "isEqualToString:", @"requestSuiteFinish"))
      {
        v18 = @"unknownMessage";

LABEL_7:
        v19 = 0;
        v37 = v18;
        if (!responseCopy)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v28 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        delegate = [(DADeviceDecoratorWithSync *)self delegate];
        *buf = 138412546;
        v45 = messageCopy;
        v46 = 2112;
        v47 = delegate;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[DADeviceDecoratorWithSync] Routing %@ message to %@", buf, 0x16u);
      }

      objc_initWeak(&location, self);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10002D184;
      v39[3] = &unk_1001BD678;
      v30 = messageCopy;
      v40 = v30;
      objc_copyWeak(&v42, &location);
      selfCopy = self;
      v31 = objc_retainBlock(v39);
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      delegate2 = [(DADeviceDecoratorWithSync *)selfCopy2 delegate];

      if (delegate2)
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

        pendingTasks = [(DADeviceDecoratorWithSync *)selfCopy2 pendingTasks];
        v36 = objc_retainBlock(v31);
        [pendingTasks addObject:v36];
      }

      objc_sync_exit(selfCopy2);

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
    }

LABEL_32:
    v19 = 0;
    if (!responseCopy)
    {
LABEL_34:

      goto LABEL_35;
    }

LABEL_33:
    v14[2](v14, v37, v19);
    goto LABEL_34;
  }

  if (responseCopy)
  {
    v14[2](v14, @"destinationMismatch", 0);
  }

LABEL_35:
}

- (BOOL)respondsToMessage:(id)message
{
  messageCopy = message;
  v4 = [NSSet setWithObjects:@"wakeDevice", @"endDevice", @"idleDevice", @"requestDeviceState", @"requestAssessmentMode", @"requestSuiteFinish", 0];
  v5 = [v4 containsObject:messageCopy];

  return v5;
}

- (void)start
{
  original = [(DADeviceDecoratorWithSync *)self original];
  [original start];
}

- (void)idle
{
  original = [(DADeviceDecoratorWithSync *)self original];
  [original idle];
}

- (void)suspendTests
{
  original = [(DADeviceDecoratorWithSync *)self original];
  [original suspendTests];
}

- (void)resumeTests
{
  original = [(DADeviceDecoratorWithSync *)self original];
  [original resumeTests];
}

- (void)end
{
  original = [(DADeviceDecoratorWithSync *)self original];
  [original end];
}

- (void)_syncState:(id)state
{
  stateCopy = state;
  if ([(DADeviceDecoratorWithSync *)self _isDeviceLocked])
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = stateCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is locked. Will not sync device state: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [stateCopy copy];
    v7 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    [v6 setTimestamp:v7];

    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002D680;
    v9[3] = &unk_1001BC5F8;
    v10 = v6;
    selfCopy = self;
    v5 = v6;
    dispatch_async(v8, v9);
  }
}

- (void)_deviceStateDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = changeCopy;
  if (userInfo)
  {
    userInfo2 = [changeCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:@"info"];

    v5 = changeCopy;
    if (v7)
    {
      userInfo3 = [changeCopy userInfo];
      v9 = [userInfo3 objectForKeyedSubscript:@"info"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        snapshot = [v9 snapshot];
        [(DADeviceDecoratorWithSync *)self _syncState:snapshot];
      }

      v5 = changeCopy;
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