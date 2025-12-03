@interface HNDEventManager
+ (id)sharedManager;
- (BOOL)isVoiceControlRunning;
- (BOOL)orientationLocked;
- (BOOL)sideSwitchUsedForOrientation;
- (HNDEventManager)init;
- (HNDEventManagerDelegate)delegate;
- (double)volumeLevel;
- (void)_disableIOFilter;
- (void)_handleIOHIDEvent:(id)event;
- (void)_initializeASTNotificationCenter;
- (void)_initializeClarityBoardActionHandler;
- (void)_initializeSpringBoardItems;
- (void)_registerIOHIDUsage;
- (void)_startDistributedThread;
- (void)_startIOThread;
- (void)dealloc;
- (void)keyboardStatusChanged:(id)changed userInfo:(id)info;
- (void)manipulateDimTimer:(BOOL)timer;
- (void)notifyUserEventOccurred;
- (void)observer:(id)observer didObserveNotification:(int)notification notificationData:(void *)data;
- (void)openCreateCustomGestureForAST;
- (void)openCreateCustomGestureForSCAT;
- (void)ringerSwitchChanged;
- (void)rotationLockChanged;
- (void)setCaptureEvents:(BOOL)events;
- (void)setMenuVisible:(BOOL)visible;
- (void)setNubbitMoving:(BOOL)moving;
- (void)setOrientationLocked:(BOOL)locked;
- (void)substantialTransitionOccurred;
- (void)systemServerRestarted;
- (void)wakeDeviceFromSleepIfNecessary;
@end

@implementation HNDEventManager

+ (id)sharedManager
{
  v2 = +[HNDHandManager sharedManager];
  eventManager = [v2 eventManager];

  return eventManager;
}

- (HNDEventManager)init
{
  v10.receiver = self;
  v10.super_class = HNDEventManager;
  v2 = [(HNDEventManager *)&v10 init];
  v3 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  keyboardStatusCoalesce = v2->_keyboardStatusCoalesce;
  v2->_keyboardStatusCoalesce = v3;

  v5 = [[NSThread alloc] initWithTarget:v2 selector:"_startDistributedThread" object:0];
  distributedMessagingThread = v2->_distributedMessagingThread;
  v2->_distributedMessagingThread = v5;

  [(NSThread *)v2->_distributedMessagingThread setName:@"Distributed messaging thread"];
  [(NSThread *)v2->_distributedMessagingThread start];
  [(HNDEventManager *)v2 performSelector:"_initializeASTNotificationCenter" onThread:v2->_distributedMessagingThread withObject:0 waitUntilDone:0];
  v7 = dispatch_queue_create("HNDEventManager-DisableIdleTimer", 0);
  disableIdleTimerAssertionQueue = v2->_disableIdleTimerAssertionQueue;
  v2->_disableIdleTimerAssertionQueue = v7;

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_disableIdleTimerAssertion invalidate];
  v3.receiver = self;
  v3.super_class = HNDEventManager;
  [(HNDEventManager *)&v3 dealloc];
}

- (void)_startDistributedThread
{
  v2 = +[NSDate distantFuture];
  [v2 timeIntervalSinceReferenceDate];

  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    CFRunLoopGetCurrent();
    CFRunLoopRunSpecific();
    objc_autoreleasePoolPop(v3);
  }
}

- (void)systemServerRestarted
{
  [(HNDEventManager *)self _initializeSpringBoardItems];

  [(HNDEventManager *)self _initializeClarityBoardActionHandler];
}

- (void)substantialTransitionOccurred
{
  delegate = [(HNDEventManager *)self delegate];
  [delegate substantialTransitionOccurred];

  delegate2 = [(HNDEventManager *)self delegate];
  [delegate2 mediaControlsChanged:0];
}

- (void)ringerSwitchChanged
{
  delegate = [(HNDEventManager *)self delegate];
  [delegate ringerSwitchChanged];
}

- (void)rotationLockChanged
{
  delegate = [(HNDEventManager *)self delegate];
  [delegate rotationLockChanged];
}

- (void)_initializeSpringBoardItems
{
  if (+[AXSpringBoardServer isAvailable])
  {
    objc_initWeak(&location, self);
    v3 = +[AXSpringBoardServer server];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10003E7E0;
    v5[3] = &unk_1001D48A0;
    v5[4] = self;
    objc_copyWeak(&v6, &location);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10003EA9C;
    v4[3] = &unk_1001D3AB0;
    v4[4] = self;
    [v3 registerSpringBoardActionHandler:v5 withIdentifierCallback:v4];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_initializeClarityBoardActionHandler
{
  if (+[AXClarityBoardServer isAvailable])
  {
    v3 = +[AXClarityBoardServer server];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10003EC90;
    v5[3] = &unk_1001D48F0;
    v5[4] = self;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10003EDC0;
    v4[3] = &unk_1001D3AB0;
    v4[4] = self;
    [v3 registerActionHandler:v5 withIdentifierCallback:v4];
  }
}

- (void)keyboardStatusChanged:(id)changed userInfo:(id)info
{
  infoCopy = info;
  v6 = [infoCopy objectForKey:@"visible"];
  bOOLValue = [v6 BOOLValue];

  v8 = [infoCopy objectForKey:@"frame"];
  v9 = v8;
  if (v8)
  {
    v20 = CGRectFromString(v8);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v14 = ASTLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = infoCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "AST keyboard update: %{public}@", buf, 0xCu);
  }

  [(AXDispatchTimer *)self->_keyboardStatusCoalesce cancel];
  keyboardStatusCoalesce = self->_keyboardStatusCoalesce;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003F230;
  v16[3] = &unk_1001D4918;
  v16[4] = self;
  v17 = bOOLValue;
  *&v16[5] = x;
  *&v16[6] = y;
  *&v16[7] = width;
  *&v16[8] = height;
  [(AXDispatchTimer *)keyboardStatusCoalesce afterDelay:v16 processBlock:0.0];
}

- (void)_initializeASTNotificationCenter
{
  if (+[NSThread isMainThread])
  {
    sub_1001292D8(a2, self);
  }

  v4 = [CPDistributedMessagingCenter centerNamed:@"UIASTNotificationCenter"];
  [v4 runServerOnCurrentThread];
  [v4 registerForMessageName:@"UIAXASTKeyboardStatus" target:self selector:"keyboardStatusChanged:userInfo:"];
  [(HNDEventManager *)self setMessagingCenter:v4];
}

- (void)manipulateDimTimer:(BOOL)timer
{
  if (timer)
  {
    disableIdleTimerAssertionQueue = self->_disableIdleTimerAssertionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003F45C;
    block[3] = &unk_1001D3488;
    block[4] = self;
    dispatch_async(disableIdleTimerAssertionQueue, block);
    v5 = +[UIApplication sharedApplication];
    [v5 _setIdleTimerDisabled:1 forReason:@"AssistiveTouch"];
  }

  else
  {
    v6 = +[UIApplication sharedApplication];
    [v6 _setIdleTimerDisabled:0 forReason:@"AssistiveTouch"];

    v7 = self->_disableIdleTimerAssertionQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003F4F8;
    v8[3] = &unk_1001D3488;
    v8[4] = self;
    dispatch_async(v7, v8);
  }
}

- (void)setNubbitMoving:(BOOL)moving
{
  movingCopy = moving;
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = movingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting nubbit moving: %d", v10, 8u);
  }

  if (movingCopy)
  {
    [(HNDEventManager *)self manipulateDimTimer:1];
    if (+[AXAssertion isSupported])
    {
      disableSystemGesturesAssertion = [(HNDEventManager *)self disableSystemGesturesAssertion];

      if (!disableSystemGesturesAssertion)
      {
        v7 = [AXAssertion assertionWithType:AXAssertionTypeDisableSystemGestures identifier:@"AST Nubbit Moving"];
        [(HNDEventManager *)self setDisableSystemGesturesAssertion:v7];
      }

      disableDashBoardGesturesAssertion = [(HNDEventManager *)self disableDashBoardGesturesAssertion];

      if (!disableDashBoardGesturesAssertion)
      {
        v9 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"AST Nubbit Moving"];
        [(HNDEventManager *)self setDisableDashBoardGesturesAssertion:v9];
      }
    }
  }

  else
  {
    [(HNDEventManager *)self manipulateDimTimer:0];
    [(HNDEventManager *)self setDisableDashBoardGesturesAssertion:0];
    [(HNDEventManager *)self setDisableSystemGesturesAssertion:0];
  }

  self->_nubbitMoving = movingCopy;
}

- (double)volumeLevel
{
  v2 = +[AXSpringBoardServer server];
  [v2 volumeLevel];
  v4 = v3;

  return v4;
}

- (BOOL)isVoiceControlRunning
{
  v2 = +[AXSpringBoardServer server];
  isVoiceControlRunning = [v2 isVoiceControlRunning];

  return isVoiceControlRunning;
}

- (void)setMenuVisible:(BOOL)visible
{
  visibleCopy = visible;
  v4 = +[AXSpringBoardServer server];
  [v4 setCancelGestureActivation:4 cancelEnabled:visibleCopy];
}

- (void)wakeDeviceFromSleepIfNecessary
{
  v2 = +[AXSystemAppServer server];
  [v2 wakeUpDeviceIfNecessary];
}

- (void)_handleIOHIDEvent:(id)event
{
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  v6 = +[HNDHandManager sharedManager];
  currentDisplayManager = [v6 currentDisplayManager];
  [currentDisplayManager portraitUpScreenBounds];
  v9 = v8;
  v11 = v10;

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003FA2C;
  v13[3] = &unk_1001D4938;
  v13[4] = v9;
  v13[5] = v11;
  [eventCopy modifyPoints:v13];
  delegate = [(HNDEventManager *)self delegate];
  [delegate handleRealEvent:eventCopy];

  objc_autoreleasePoolPop(v5);
}

- (void)_startIOThread
{
  v2 = +[NSDate distantFuture];
  [v2 timeIntervalSinceReferenceDate];

  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    CFRunLoopGetCurrent();
    CFRunLoopRunSpecific();
    objc_autoreleasePoolPop(v3);
  }
}

- (void)_registerIOHIDUsage
{
  if (self->_ioSystemFilterClient)
  {
    AXSetThreadPriority();
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientScheduleWithRunLoop();
    v20[0] = @"DeviceUsagePage";
    v20[1] = @"DeviceUsage";
    v21[0] = &off_1001E5160;
    v21[1] = &off_1001E5178;
    v2 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v18[0] = @"DeviceUsagePage";
    v18[1] = @"DeviceUsage";
    v19[0] = &off_1001E5160;
    v19[1] = &off_1001E5190;
    v3 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v16[0] = @"PrimaryUsagePage";
    v16[1] = @"PrimaryUsage";
    v17[0] = &off_1001E51A8;
    v17[1] = &off_1001E51C0;
    v4 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    v14 = @"PrimaryUsagePage";
    v15 = &off_1001E51D8;
    v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12[0] = @"PrimaryUsagePage";
    v12[1] = @"PrimaryUsage";
    v13[0] = &off_1001E51A8;
    v13[1] = &off_1001E51F0;
    v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10[0] = @"PrimaryUsagePage";
    v10[1] = @"PrimaryUsage";
    v11[0] = &off_1001E5208;
    v11[1] = &off_1001E51A8;
    v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    if (_AXSAssistiveTouchScannerEnabled())
    {
      v9[0] = v2;
      v9[1] = v3;
      v9[2] = v4;
      v9[3] = v5;
      v9[4] = v6;
      v9[5] = v7;
      v8 = [NSArray arrayWithObjects:v9 count:6];
    }

    else
    {
      v8 = +[NSMutableArray array];
      [v8 addObject:v2];
      [v8 addObject:v3];
    }

    IOHIDEventSystemClientSetMatchingMultiple();

    IOHIDEventSystemClientRegisterEventFilterCallbackWithPriority();
  }
}

- (void)_disableIOFilter
{
  if (self->_ioSystemFilterClient)
  {
    IOHIDEventSystemClientUnregisterEventFilterCallback();
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    ioSystemFilterClient = self->_ioSystemFilterClient;
    if (ioSystemFilterClient)
    {
      CFRelease(ioSystemFilterClient);
      self->_ioSystemFilterClient = 0;
    }
  }
}

- (void)setCaptureEvents:(BOOL)events
{
  self->_isCapturingEvents = events;
  if (events)
  {
    if (!self->_ioSystemFilterClient)
    {
      v4 = IOHIDEventSystemClientCreate();
      self->_ioSystemFilterClient = v4;
      if (!v4)
      {
        _AXLogWithFacility();
        return;
      }
    }

    ioFilterThread = self->_ioFilterThread;
    if (!ioFilterThread)
    {
      v6 = [[NSThread alloc] initWithTarget:self selector:"_startIOThread" object:0];
      v7 = self->_ioFilterThread;
      self->_ioFilterThread = v6;

      [(NSThread *)self->_ioFilterThread start];
      ioFilterThread = self->_ioFilterThread;
    }

    v8 = "_registerIOHIDUsage";
  }

  else
  {
    ioFilterThread = self->_ioFilterThread;
    if (!ioFilterThread)
    {
      return;
    }

    v8 = "_disableIOFilter";
  }

  [(HNDEventManager *)self performSelector:v8 onThread:ioFilterThread withObject:0 waitUntilDone:0];
}

- (BOOL)sideSwitchUsedForOrientation
{
  v2 = +[AXSpringBoardServer server];
  isSideSwitchUsedForOrientation = [v2 isSideSwitchUsedForOrientation];

  return isSideSwitchUsedForOrientation;
}

- (BOOL)orientationLocked
{
  v2 = +[AXSpringBoardServer server];
  isOrientationLocked = [v2 isOrientationLocked];

  return isOrientationLocked;
}

- (void)setOrientationLocked:(BOOL)locked
{
  lockedCopy = locked;
  v4 = +[AXSpringBoardServer server];
  [v4 setOrientationLocked:lockedCopy];
}

- (void)openCreateCustomGestureForAST
{
  v2 = +[AXSpringBoardServer server];
  [v2 openAssistiveTouchCustomGestureCreation];
}

- (void)openCreateCustomGestureForSCAT
{
  v2 = +[AXSpringBoardServer server];
  [v2 openSCATCustomGestureCreation];
}

- (void)notifyUserEventOccurred
{
  if (CFAbsoluteTimeGetCurrent() - *&qword_100218A20 > 3.0)
  {
    v2 = +[AXUserEventTimer sharedInstance];
    [v2 userEventOccurred];

    qword_100218A20 = CFAbsoluteTimeGetCurrent();
  }
}

- (void)observer:(id)observer didObserveNotification:(int)notification notificationData:(void *)data
{
  if (notification == 1028)
  {
    additionalFlags = [AXEventRepresentation representationWithData:data];
    v8 = additionalFlags;
    if (additionalFlags)
    {
      v10 = additionalFlags;
      additionalFlags = [additionalFlags additionalFlags];
      v8 = v10;
      if ((additionalFlags & 0x4000000) != 0)
      {
        delegate = [(HNDEventManager *)self delegate];
        [delegate handleRealEvent:v10];

        v8 = v10;
      }
    }

    _objc_release_x1(additionalFlags, v8);
  }
}

- (HNDEventManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end