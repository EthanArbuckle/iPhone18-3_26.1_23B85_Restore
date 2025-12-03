@interface HNDDeviceDetector
- (HNDDeviceDetector)init;
- (HNDDeviceDetectorDelegate)delegate;
- (id)_matchingDictionaries;
- (id)attachedKeyboards;
- (void)_disableUserInterfaceClient;
- (void)_showSimpleAlertWithText:(id)text;
- (void)_updateKeyboardMonitorStateIfNeeded;
- (void)deviceMonitorDidDetectDeviceEvent:(id)event;
- (void)setDetectDevices:(BOOL)devices;
- (void)setListenForMouseKeyToggle:(BOOL)toggle;
- (void)setMouseKeysEnabled:(BOOL)enabled;
@end

@implementation HNDDeviceDetector

- (HNDDeviceDetector)init
{
  v15.receiver = self;
  v15.super_class = HNDDeviceDetector;
  v2 = [(HNDDeviceDetector *)&v15 init];
  if (v2)
  {
    v3 = +[AXSettings sharedInstance];
    -[HNDDeviceDetector setListenForMouseKeyToggle:](v2, "setListenForMouseKeyToggle:", [v3 assistiveTouchMouseKeysOptionToggleEnabled]);

    v4 = +[AXSettings sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000EFC8;
    v13[3] = &unk_1001D3488;
    v5 = v2;
    v14 = v5;
    [v4 registerUpdateBlock:v13 forRetrieveSelector:"assistiveTouchMouseKeysOptionToggleEnabled" withListener:v5];

    v6 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    v7 = v5[4];
    v5[4] = v6;

    [v5[4] setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    objc_initWeak(&location, v5);
    v8 = +[AXSettings sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000F028;
    v10[3] = &unk_1001D3460;
    objc_copyWeak(&v11, &location);
    [v8 registerUpdateBlock:v10 forRetrieveSelector:"assistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled" withListener:v5];

    objc_destroyWeak(&v11);
    [v5 _updateKeyboardMonitorStateIfNeeded];
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)setListenForMouseKeyToggle:(BOOL)toggle
{
  if (toggle)
  {
    v4 = objc_opt_new();
    [v4 setWantsKeyboardEvents:1];
    v5 = +[AXEventTapManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F194;
    v9[3] = &unk_1001D3798;
    v9[4] = self;
    v6 = [v5 installEventTap:v9 identifier:@"HNDMouseKeyToggle" type:1 skipDeviceMatching:0 filterEvents:v4 matchingServiceHandler:0];

    v7 = +[AXEventTapManager sharedManager];
    [v7 setEventTapPriority:@"HNDMouseKeyToggle" priority:25];
  }

  else
  {
    v8 = +[AXEventTapManager sharedManager];
    [v8 removeEventTap:@"HNDMouseKeyToggle"];

    dword_100218980 = 0;
  }
}

- (void)setMouseKeysEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = +[NSMutableSet set];
  hidManager = self->_hidManager;
  if (hidManager)
  {
    v7 = IOHIDManagerCopyDevices(hidManager);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000F428;
    v10[3] = &unk_1001D37C0;
    v11 = v5;
    [(__CFSet *)v7 enumerateObjectsUsingBlock:v10];
  }

  if (enabledCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F49C;
    v9[3] = &unk_1001D37C0;
    v9[4] = self;
    [v5 enumerateObjectsUsingBlock:v9];
  }

  else
  {
    delegate = [(HNDDeviceDetector *)self delegate];
    [delegate deviceDetector:self unloadDevicesPassingTest:&stru_1001D3800];
  }
}

- (void)_updateKeyboardMonitorStateIfNeeded
{
  if (-[HNDDeviceDetector detectDevices](self, "detectDevices") && (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 assistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled], v3, (v4 & 1) != 0))
  {
    if (!self->_keyboardMonitor)
    {
      v6 = [AXDeviceMonitor alloc];
      v7 = +[NSRunLoop mainRunLoop];
      v8 = [v6 initWithMatchingDictionary:&off_1001E5700 callbackRunLoop:v7];
      keyboardMonitor = self->_keyboardMonitor;
      self->_keyboardMonitor = v8;

      [(AXDeviceMonitor *)self->_keyboardMonitor setDelegate:self];
      v10 = self->_keyboardMonitor;

      [(AXDeviceMonitor *)v10 begin];
    }
  }

  else
  {
    [(AXDeviceMonitor *)self->_keyboardMonitor invalidate];
    v5 = self->_keyboardMonitor;
    self->_keyboardMonitor = 0;
  }
}

- (id)attachedKeyboards
{
  copyDevices = [(AXDeviceMonitor *)self->_keyboardMonitor copyDevices];

  return copyDevices;
}

- (void)_showSimpleAlertWithText:(id)text
{
  textCopy = text;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_disableUserInterfaceClient" object:0];
  v5 = +[HNDHandManager sharedManager];
  currentDisplayManager = [v5 currentDisplayManager];

  [currentDisplayManager addUserInterfaceClientEnabler:@"AssistiveTouchDeviceDetector"];
  [currentDisplayManager showSimpleAlertWithText:textCopy];

  [(HNDDeviceDetector *)self performSelector:"_disableUserInterfaceClient" withObject:0 afterDelay:15.0];
}

- (void)_disableUserInterfaceClient
{
  v3 = +[HNDHandManager sharedManager];
  currentDisplayManager = [v3 currentDisplayManager];
  [currentDisplayManager removeUserInterfaceClientEnabler:@"AssistiveTouchDeviceDetector"];
}

- (void)deviceMonitorDidDetectDeviceEvent:(id)event
{
  v3 = +[HNDHandManager sharedManager];
  [v3 updateSoftwareKeyboardState];
}

- (id)_matchingDictionaries
{
  v2 = +[NSMutableArray array];
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:1];
  [v3 setObject:v4 forKey:@"PrimaryUsagePage"];

  v5 = [NSNumber numberWithInt:2];
  [v3 setObject:v5 forKey:@"PrimaryUsage"];

  [v2 addObject:v3];
  v6 = +[NSMutableDictionary dictionary];

  v7 = [NSNumber numberWithInt:1];
  [v6 setObject:v7 forKey:@"PrimaryUsagePage"];

  v8 = [NSNumber numberWithInt:4];
  [v6 setObject:v8 forKey:@"PrimaryUsage"];

  [v2 addObject:v6];
  v9 = +[NSMutableDictionary dictionary];

  v10 = [NSNumber numberWithInt:1];
  [v9 setObject:v10 forKey:@"PrimaryUsagePage"];

  v11 = [NSNumber numberWithInt:6];
  [v9 setObject:v11 forKey:@"PrimaryUsage"];

  [v2 addObject:v9];
  v12 = +[NSMutableDictionary dictionary];

  v13 = [NSNumber numberWithInt:1];
  [v12 setObject:v13 forKey:@"PrimaryUsagePage"];

  v14 = [NSNumber numberWithInt:7];
  [v12 setObject:v14 forKey:@"PrimaryUsage"];

  [v2 addObject:v12];
  v15 = +[NSMutableDictionary dictionary];

  v16 = [NSNumber numberWithInt:1];
  [v15 setObject:v16 forKey:@"PrimaryUsagePage"];

  v17 = [NSNumber numberWithInt:5];
  [v15 setObject:v17 forKey:@"PrimaryUsage"];

  [v2 addObject:v15];
  if (AXDeviceSupportsTadmor())
  {
    v18 = +[NSMutableDictionary dictionary];

    v19 = [NSNumber numberWithInt:96];
    [v18 setObject:v19 forKey:@"PrimaryUsagePage"];

    v20 = [NSNumber numberWithInt:1];
    [v18 setObject:v20 forKey:@"PrimaryUsage"];

    [v2 addObject:v18];
    v15 = v18;
  }

  return v2;
}

- (void)setDetectDevices:(BOOL)devices
{
  self->_detectDevices = devices;
  hidManager = self->_hidManager;
  if (devices)
  {
    if (!hidManager)
    {
      v5 = IOHIDManagerCreate(kCFAllocatorDefault, 0);
      self->_hidManager = v5;
      IOHIDManagerRegisterDeviceMatchingCallback(v5, sub_10000FCC8, self);
      IOHIDManagerRegisterDeviceRemovalCallback(self->_hidManager, sub_10000FDB4, self);
      v6 = self->_hidManager;
      _matchingDictionaries = [(HNDDeviceDetector *)self _matchingDictionaries];
      IOHIDManagerSetDeviceMatchingMultiple(v6, _matchingDictionaries);

      v8 = self->_hidManager;
      Current = CFRunLoopGetCurrent();
      IOHIDManagerScheduleWithRunLoop(v8, Current, kCFRunLoopDefaultMode);
      v10 = +[AXSettings sharedInstance];
      -[HNDDeviceDetector setMouseKeysEnabled:](self, "setMouseKeysEnabled:", [v10 assistiveTouchMouseKeysEnabled]);

      v11 = +[AXSettings sharedInstance];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000FEE8;
      v13[3] = &unk_1001D3488;
      v13[4] = self;
      [v11 registerUpdateBlock:v13 forRetrieveSelector:"assistiveTouchMouseKeysEnabled" withListener:self];
    }
  }

  else if (hidManager)
  {
    v12 = CFRunLoopGetCurrent();
    IOHIDManagerUnscheduleFromRunLoop(hidManager, v12, kCFRunLoopDefaultMode);
    CFRelease(self->_hidManager);
    self->_hidManager = 0;
  }

  [(HNDDeviceDetector *)self _updateKeyboardMonitorStateIfNeeded];
}

- (HNDDeviceDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end