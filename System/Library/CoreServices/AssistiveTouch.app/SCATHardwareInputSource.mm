@interface SCATHardwareInputSource
- (id)_matchingCriteria;
- (unint64_t)numberOfDevicesConnected;
- (void)_addFakeKeyboardDevice;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5;
- (void)_didUpdateAvailability:(BOOL)a3 withDetail:(unint64_t)a4;
- (void)_removeFakeKeyboardDevice;
- (void)_startDetectingDevices;
- (void)_startHandlingEvents;
- (void)_stopDetectingDevices;
- (void)_stopHandlingEvents;
- (void)dealloc;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)a3 recipe:(id)a4;
@end

@implementation SCATHardwareInputSource

- (unint64_t)numberOfDevicesConnected
{
  if ([(SCATHardwareInputSource *)self _useOverrideDeviceCount])
  {

    return [(SCATHardwareInputSource *)self _overrideDeviceCount];
  }

  else
  {
    v4 = [(SCATHardwareInputSource *)self hidManager];
    if (v4 && (v5 = IOHIDManagerCopyDevices(v4)) != 0)
    {
      v6 = v5;
      Count = CFSetGetCount(v5);
      CFRelease(v6);
      return Count;
    }

    else
    {
      return 0;
    }
  }
}

- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5
{
  v8 = a3;
  v9 = [(SCATInputSource *)self delegate];
  v10 = [(SCATInputSource *)self queue];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100085350;
    v11[3] = &unk_1001D5B70;
    v12 = v9;
    v13 = self;
    v14 = v8;
    v15 = a4;
    v16 = a5;
    [v10 performAsynchronousWritingBlock:v11];
  }
}

- (void)_didUpdateAvailability:(BOOL)a3 withDetail:(unint64_t)a4
{
  v5 = a3;
  v7 = [(SCATHardwareInputSource *)self isAvailable];
  v8 = [(SCATHardwareInputSource *)self availabilityDetail];
  if (v7 != v5 || v8 != a4)
  {
    v9 = [(SCATInputSource *)self delegate];
    v10 = [(SCATInputSource *)self queue];
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_100085488;
        v14 = &unk_1001D5918;
        v15 = v9;
        v16 = self;
        v18 = v5;
        v17 = a4;
        [v10 performAsynchronousWritingBlock:&v11];
      }
    }

    [(SCATHardwareInputSource *)self setAvailable:v5, v11, v12, v13, v14];
    [(SCATHardwareInputSource *)self setAvailabilityDetail:a4];
  }
}

- (id)_matchingCriteria
{
  v3 = +[NSMutableArray array];
  if ([(SCATHardwareInputSource *)self isMFIInputSource])
  {
    [v3 addObject:&off_1001E57A0];
    [v3 addObject:&off_1001E57C8];
  }

  if ([(SCATHardwareInputSource *)self isKeyboardInputSource])
  {
    [v3 addObject:&off_1001E57F0];
  }

  if ([(SCATHardwareInputSource *)self isATVRemoteInputSource])
  {
    v4 = SCATATVRemoteDeviceMatchingDictionary();
    [v3 addObject:v4];
  }

  if ([(SCATHardwareInputSource *)self isGamepadInputSource])
  {
    [v3 addObject:&off_1001E5818];
  }

  if ([(SCATHardwareInputSource *)self isTadmorInputSource])
  {
    [v3 addObject:&off_1001E5840];
  }

  return v3;
}

- (void)_startDetectingDevices
{
  if ([(SCATHardwareInputSource *)self isMIDIInputSource])
  {
    _AXAssert();
  }

  if (![(SCATHardwareInputSource *)self isMIDIInputSource]&& ![(SCATHardwareInputSource *)self hidManager])
  {
    v3 = IOHIDManagerCreate(kCFAllocatorDefault, 0);
    v4 = [(SCATHardwareInputSource *)self _matchingCriteria];
    IOHIDManagerSetDeviceMatchingMultiple(v3, v4);

    IOHIDManagerRegisterDeviceMatchingCallback(v3, sub_100085834, self);
    IOHIDManagerRegisterDeviceRemovalCallback(v3, sub_100085840, self);
    Current = CFRunLoopGetCurrent();
    IOHIDManagerScheduleWithRunLoop(v3, Current, kCFRunLoopDefaultMode);
    if (IOHIDManagerOpen(v3, 0))
    {
      _AXLogWithFacility();
    }

    else
    {
      [(SCATHardwareInputSource *)self setHidManager:v3];
      if (v3 && (v6 = IOHIDManagerCopyDevices(v3)) != 0 && (v7 = v6, Count = CFSetGetCount(v6), CFRelease(v7), Count > 0))
      {
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = IOHIDManagerCopyDevices(v3);
        v10 = [(__CFSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              sub_1000858F4(*(*(&v14 + 1) + 8 * i), self);
            }

            v11 = [(__CFSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v11);
        }
      }

      else
      {

        [(SCATHardwareInputSource *)self _didUpdateAvailability:0 withDetail:1];
      }
    }
  }
}

- (void)_stopDetectingDevices
{
  if ([(SCATHardwareInputSource *)self isMIDIInputSource])
  {
    _AXAssert();
  }

  if (![(SCATHardwareInputSource *)self isMIDIInputSource])
  {
    v3 = [(SCATHardwareInputSource *)self hidManager];
    if (v3)
    {
      CFRelease(v3);

      [(SCATHardwareInputSource *)self setHidManager:0];
    }
  }
}

- (void)_startHandlingEvents
{
  if ([(SCATHardwareInputSource *)self isMIDIInputSource])
  {
    _AXAssert();
  }

  if (![(SCATHardwareInputSource *)self isMIDIInputSource])
  {
    v3 = +[HNDHandManager sharedManager];
    [v3 addEventHandler:self];
  }
}

- (void)_stopHandlingEvents
{
  if ([(SCATHardwareInputSource *)self isMIDIInputSource])
  {
    _AXAssert();
  }

  if (![(SCATHardwareInputSource *)self isMIDIInputSource])
  {
    v3 = +[HNDHandManager sharedManager];
    [v3 removeEventHandler:self];
  }
}

- (void)dealloc
{
  [(SCATHardwareInputSource *)self stopRunning];
  v3.receiver = self;
  v3.super_class = SCATHardwareInputSource;
  [(SCATHardwareInputSource *)&v3 dealloc];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v4.receiver = self;
  v4.super_class = SCATHardwareInputSource;
  [(SCATInputSource *)&v4 setDelegate:a3 queue:a4];
}

- (void)startRunning
{
  if (![(SCATInputSource *)self isRunning])
  {
    [(SCATHardwareInputSource *)self setAvailable:0];
    [(SCATHardwareInputSource *)self setAvailabilityDetail:0];
    if (![(SCATHardwareInputSource *)self isMIDIInputSource])
    {
      [(SCATHardwareInputSource *)self _startHandlingEvents];
      [(SCATHardwareInputSource *)self _startDetectingDevices];
    }

    [(SCATInputSource *)self setRunning:1];
  }
}

- (void)stopRunning
{
  if ([(SCATInputSource *)self isRunning])
  {
    if (![(SCATHardwareInputSource *)self isMIDIInputSource])
    {
      [(SCATHardwareInputSource *)self _stopHandlingEvents];
      [(SCATHardwareInputSource *)self _stopDetectingDevices];
    }

    [(SCATInputSource *)self setRunning:0];
  }
}

- (void)updateWithSwitches:(id)a3 recipe:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = SCATHardwareInputSource;
  v7 = a3;
  [(SCATInputSource *)&v19 updateWithSwitches:v7 recipe:v6];
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = +[NSMutableDictionary dictionary];
  +[NSMutableDictionary dictionary];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000864BC;
  v14[3] = &unk_1001D5D80;
  v14[4] = self;
  v15 = v8;
  v16 = v6;
  v18 = v17 = v9;
  v10 = v18;
  v11 = v9;
  v12 = v6;
  v13 = v8;
  [v7 enumerateObjectsUsingBlock:v14];

  [(SCATInputSource *)self setActions:v13];
  [(SCATHardwareInputSource *)self setPersistentSwitchIdentifiers:v11];
  [(SCATHardwareInputSource *)self setSwitchDisplayNames:v10];
}

- (void)_addFakeKeyboardDevice
{
  v3 = [(SCATHardwareInputSource *)self _overrideDeviceCount]+ 1;

  [(SCATHardwareInputSource *)self set_overrideDeviceCount:v3];
}

- (void)_removeFakeKeyboardDevice
{
  v3 = fmax(([(SCATHardwareInputSource *)self _overrideDeviceCount]- 1), 0.0);

  [(SCATHardwareInputSource *)self set_overrideDeviceCount:v3];
}

@end