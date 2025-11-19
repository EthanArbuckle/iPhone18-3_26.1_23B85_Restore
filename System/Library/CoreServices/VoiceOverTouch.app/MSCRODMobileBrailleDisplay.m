@interface MSCRODMobileBrailleDisplay
+ (id)_displayWithIOElement:(id)a3 driverIdentifier:(id)a4 modelIdentifier:(id)a5 mainSize:(id)a6 statusSize:(id)a7 inputMode:(id)a8 delegate:(id)a9 reconnectionEnabled:(BOOL)a10;
+ (id)displayWithIOElement:(id)a3 cachedInfo:(id)a4 delegate:(id)a5 reconnectionEnabled:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresPersistentConnection;
- (id)_initWithDriver:(id)a3 driverIdentifier:(id)a4 ioElement:(id)a5 delegate:(id)a6;
- (id)_initWithDriver:(id)a3 driverIdentifier:(id)a4 modelIdentifier:(id)a5 ioElement:(id)a6 mainSize:(int64_t)a7 statusSize:(int64_t)a8 inputMode:(int)a9 delegate:(id)a10 reconnectionEnabled:(BOOL)a11;
- (id)bluetoothAddress;
- (id)configuration;
- (id)description;
- (void)_delayedAddDeviceNotification:(id)a3;
- (void)_delayedDeviceUpdatedNotification:(id)a3;
- (void)_delayedDisplayLoad;
- (void)_delayedRemoveDeviceNotification:(id)a3;
- (void)_reconnectionEventHandler;
- (void)_reconnectionTriggeredHandler;
- (void)_reloadDriver;
- (void)_resetReconnectionTimer;
- (void)_runThread;
- (void)_setupDriverSupport;
- (void)_startWatchingForDevices;
- (void)_stopWatchingForDevices;
- (void)_unloadHandler;
- (void)addDeviceFailedNotification:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeDeviceNotification:(id)a3;
- (void)sleep;
- (void)unsleep;
@end

@implementation MSCRODMobileBrailleDisplay

+ (id)displayWithIOElement:(id)a3 cachedInfo:(id)a4 delegate:(id)a5 reconnectionEnabled:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  v12 = [v10 objectForKey:kSCROBrailleDisplayDriverIdentifier];
  if (objc_opt_isKindOfClass())
  {
    v13 = [v10 objectForKey:kSCROBrailleDisplayModelIdentifier];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v13 = 0;
    }

    objc_opt_class();
    v14 = [v10 objectForKey:kSCROBrailleDisplayMainSize];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v14 = 0;
    }

    v15 = [v10 objectForKey:kSCROBrailleDisplayStatusSize];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v15 = 0;
    }

    v16 = [v10 objectForKey:kSCROBrailleDisplayBrailleInputMode];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v16 = 0;
    }

    LOBYTE(v19) = a6;
    v17 = [MSCRODMobileBrailleDisplay _displayWithIOElement:v9 driverIdentifier:v12 modelIdentifier:v13 mainSize:v14 statusSize:v15 inputMode:v16 delegate:v11 reconnectionEnabled:v19];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_displayWithIOElement:(id)a3 driverIdentifier:(id)a4 modelIdentifier:(id)a5 mainSize:(id)a6 statusSize:(id)a7 inputMode:(id)a8 delegate:(id)a9 reconnectionEnabled:(BOOL)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = 0;
  if (v15 && v16)
  {
    if (![v15 conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol])
    {
      v22 = 0;
      goto LABEL_40;
    }

    v23 = [NSBundle brailleDriverBundleWithIdentifier:v16];
    v55 = v23;
    if (v23)
    {
      v24 = [v23 principalClass];
      if (([SCROBrailleDisplay brailleDriverClassIsValid:v24]& 1) != 0)
      {
        v53 = v17;
        v25 = [objc_allocWithZone(v24) init];
        v26 = v25;
        if (v25)
        {
          if ([v25 interfaceVersion]== 4)
          {
            v51 = objc_allocWithZone(objc_opt_class());
            v27 = [v18 integerValue];
            v28 = [v19 integerValue];
            LOBYTE(v49) = a10;
            LODWORD(v48) = [v20 integerValue];
            v22 = [v51 _initWithDriver:v26 driverIdentifier:v16 modelIdentifier:v53 ioElement:v15 mainSize:v27 statusSize:v28 inputMode:v48 delegate:v21 reconnectionEnabled:v49];
            v29 = AXLogBrailleHW();
            v30 = v26;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v57 = v22;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Making display: %@", buf, 0xCu);
            }

            if (v22)
            {
              [v22 performSelector:"_delayedDisplayLoad" withObject:0 afterDelay:0.0];
            }

            goto LABEL_30;
          }

          v44 = +[AXSubsystemBrailleHardware sharedInstance];
          v45 = [v44 ignoreLogging];

          if (v45)
          {
LABEL_29:
            v22 = 0;
            v30 = v26;
LABEL_30:
            v17 = v53;
LABEL_38:

            goto LABEL_39;
          }

          v46 = +[AXSubsystemBrailleHardware identifier];
          v42 = AXLoggerForFacility();

          v43 = AXOSLogLevelFromAXLogLevel();
          v30 = v26;
          v17 = v53;
          if (!os_log_type_enabled(v42, v43))
          {
            goto LABEL_36;
          }

          v50 = AXColorizeFormatLog();
          v52 = _AXStringForArgs();
          if (!os_log_type_enabled(v42, v43))
          {
            goto LABEL_35;
          }

          *buf = 138543362;
          v57 = v52;
        }

        else
        {
          v39 = +[AXSubsystemBrailleHardware sharedInstance];
          v40 = [v39 ignoreLogging];

          if (v40)
          {
            goto LABEL_29;
          }

          v41 = +[AXSubsystemBrailleHardware identifier];
          v42 = AXLoggerForFacility();

          v43 = AXOSLogLevelFromAXLogLevel();
          v30 = 0;
          v17 = v53;
          if (!os_log_type_enabled(v42, v43))
          {
            goto LABEL_36;
          }

          v50 = AXColorizeFormatLog();
          v52 = _AXStringForArgs();
          if (!os_log_type_enabled(v42, v43))
          {
LABEL_35:

LABEL_36:
            goto LABEL_37;
          }

          *buf = 138543362;
          v57 = v52;
        }

        _os_log_impl(&_mh_execute_header, v42, v43, "%{public}@", buf, 0xCu);
        goto LABEL_35;
      }

      v36 = +[AXSubsystemBrailleHardware sharedInstance];
      v37 = [v36 ignoreLogging];

      if (v37)
      {
LABEL_18:
        v22 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v38 = +[AXSubsystemBrailleHardware identifier];
      v30 = AXLoggerForFacility();

      v34 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v30, v34))
      {
        v35 = AXColorizeFormatLog();
        v54 = _AXStringForArgs();
        if (os_log_type_enabled(v30, v34))
        {
          *buf = 138543362;
          v57 = v54;
          goto LABEL_22;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v31 = +[AXSubsystemBrailleHardware sharedInstance];
      v32 = [v31 ignoreLogging];

      if (v32)
      {
        goto LABEL_18;
      }

      v33 = +[AXSubsystemBrailleHardware identifier];
      v30 = AXLoggerForFacility();

      v34 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v30, v34))
      {
        v35 = AXColorizeFormatLog();
        v54 = _AXStringForArgs();
        if (os_log_type_enabled(v30, v34))
        {
          *buf = 138543362;
          v57 = v54;
LABEL_22:
          _os_log_impl(&_mh_execute_header, v30, v34, "%{public}@", buf, 0xCu);
        }

LABEL_23:
      }
    }

LABEL_37:
    v22 = 0;
    goto LABEL_38;
  }

LABEL_40:

  return v22;
}

- (id)_initWithDriver:(id)a3 driverIdentifier:(id)a4 ioElement:(id)a5 delegate:(id)a6
{
  LOBYTE(v8) = 1;
  LODWORD(v7) = 0;
  return [(MSCRODMobileBrailleDisplay *)self _initWithDriver:a3 driverIdentifier:a4 modelIdentifier:0 ioElement:a5 mainSize:0 statusSize:0 inputMode:v7 delegate:a6 reconnectionEnabled:v8];
}

- (id)_initWithDriver:(id)a3 driverIdentifier:(id)a4 modelIdentifier:(id)a5 ioElement:(id)a6 mainSize:(int64_t)a7 statusSize:(int64_t)a8 inputMode:(int)a9 delegate:(id)a10 reconnectionEnabled:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v24.receiver = self;
  v24.super_class = MSCRODMobileBrailleDisplay;
  v20 = [(MSCRODMobileBrailleDisplay *)&v24 _initWithDriver:v17 driverIdentifier:v18 ioElement:a6 delegate:a10];
  v21 = AXLogBrailleHW();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    v29 = 2048;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "_initWithDriver call with driver: %@, driverIdentifier: %@, display: %p", buf, 0x20u);
  }

  if (v20)
  {
    v20[232] = a11;
    objc_storeStrong(&v20[OBJC_IVAR___SCROBrailleDisplay__driverModelIdentifier], a5);
    *&v20[OBJC_IVAR___SCROBrailleDisplay__mainSize] = a7;
    *&v20[OBJC_IVAR___SCROBrailleDisplay__statusSize] = a8;
    *&v20[OBJC_IVAR___SCROBrailleDisplay__brailleInputMode] = a9;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v20, sub_100008754, kAXSVoiceOverTouchBrailleReconnectionTriggeredNotification, 0, 1028);
  }

  return v20;
}

- (void)dealloc
{
  [(MSCRODMobileBrailleDisplay *)self _enableReconnectionTimer:0];
  v3.receiver = self;
  v3.super_class = MSCRODMobileBrailleDisplay;
  [(MSCRODMobileBrailleDisplay *)&v3 dealloc];
}

- (void)_delayedDisplayLoad
{
  if (!self->_startedThread)
  {
    [(MSCRODMobileBrailleDisplay *)self performSelectorOnMainThread:"_runThread" withObject:0 waitUntilDone:0];
    self->_startedThread = 1;
  }
}

- (void)sleep
{
  v3 = OBJC_IVAR___SCROBrailleDisplay__runLoop;
  v4 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__runLoop];
  if (v4)
  {
    CFRunLoopRemoveTimer(v4, *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__inputEventTimer], kCFRunLoopDefaultMode);
    CFRunLoopRemoveTimer(*&self->SCROBrailleDisplay_opaque[v3], *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__blinkerEventTimer], kCFRunLoopDefaultMode);
  }

  if (self->_isReconnectionEnabled)
  {

    [(MSCRODMobileBrailleDisplay *)self _enableReconnectionTimer:0];
  }
}

- (void)unsleep
{
  v3 = OBJC_IVAR___SCROBrailleDisplay__runLoop;
  v4 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__runLoop];
  if (v4)
  {
    v5 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__inputEventTimer];
    if (v5)
    {
      CFRunLoopAddTimer(v4, v5, kCFRunLoopDefaultMode);
    }

    v6 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__blinkerEventTimer];
    if (v6)
    {
      CFRunLoopAddTimer(*&self->SCROBrailleDisplay_opaque[v3], v6, kCFRunLoopDefaultMode);
    }
  }

  if (self->_isReconnectionEnabled)
  {

    [(MSCRODMobileBrailleDisplay *)self _enableReconnectionTimer:1];
  }
}

- (void)invalidate
{
  v3 = AXLogBrailleHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating braille display [%{public}@]", &v15, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__eventDispatcher] invalidate];
  v6 = OBJC_IVAR___SCROBrailleDisplay__contentLock;
  [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__contentLock] lock];
  self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__isValid] = 0;
  [(MSCRODMobileBrailleDisplay *)self _stopWatchingForDevices];
  v7 = OBJC_IVAR___SCROBrailleDisplay__inputEventTimer;
  v8 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__inputEventTimer];
  if (v8)
  {
    CFRunLoopTimerInvalidate(v8);
    CFRelease(*&self->SCROBrailleDisplay_opaque[v7]);
    *&self->SCROBrailleDisplay_opaque[v7] = 0;
  }

  v9 = OBJC_IVAR___SCROBrailleDisplay__blinkerEventTimer;
  v10 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__blinkerEventTimer];
  if (v10)
  {
    CFRunLoopTimerInvalidate(v10);
    CFRelease(*&self->SCROBrailleDisplay_opaque[v9]);
    *&self->SCROBrailleDisplay_opaque[v9] = 0;
  }

  v11 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleLine];
  *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleLine] = 0;

  v12 = OBJC_IVAR___SCROBrailleDisplay__brailleDriver;
  [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleDriver] unloadDriver];
  v13 = *&self->SCROBrailleDisplay_opaque[v12];
  *&self->SCROBrailleDisplay_opaque[v12] = 0;

  v14 = AXLogBrailleHW();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_brailleDriver set to nil in invalidate for Display %p", &v15, 0xCu);
  }

  [*&self->SCROBrailleDisplay_opaque[v6] unlock];
}

- (void)_runThread
{
  v3 = OBJC_IVAR___SCROBrailleDisplay__brailleDriver;
  if (!*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleDriver])
  {
    v4 = AXLogBrailleHW();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v42 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_brailleDriver == nil in _runThread for %p", buf, 0xCu);
    }
  }

  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting thread for: %@", buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  [(MSCRODMobileBrailleDisplay *)self _startWatchingForDevices];
  objc_autoreleasePoolPop(v6);
  v7 = OBJC_IVAR___SCROBrailleDisplay__contentLock;
  [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__contentLock] lock];
  if (self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__isValid])
  {
    v8 = *&self->SCROBrailleDisplay_opaque[v3];
    v9 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__ioElement];
    [*&self->SCROBrailleDisplay_opaque[v7] unlock];
    v10 = !-[MSCRODMobileBrailleDisplay isBluetoothHID](self, "isBluetoothHID") && [v9 conformsToProtocol:&OBJC_PROTOCOL___SCROIOHIDElementProtocol] && objc_msgSend(v9, "hidDevice") != 0;
    v12 = AXLogBrailleHW();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithBool:v10];
      v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 transport]);
      *buf = 138412802;
      v42 = self;
      v43 = 2112;
      v44 = v13;
      v45 = 2112;
      v46 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting connection for %@ -> isHID: %@, transport: %@", buf, 0x20u);
    }

    self->_isDriverLoading = 1;
    v15 = [v9 bluetoothAddress];
    v16 = sub_100009178(v15);

    v17 = AXLogBrailleHW();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_isDriverLoading set to YES in _runThread - device: %@", buf, 0xCu);
    }

    if (!v16 || ([(MSCRODMobileBrailleDisplay *)v16 connected]& 1) != 0)
    {
      goto LABEL_30;
    }

    v31 = v10;
    v32 = v8;
    v18 = [(MSCRODMobileBrailleDisplay *)v16 address];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = +[BluetoothManager sharedInstance];
    v20 = [v19 connectingDevices];

    v21 = [v20 countByEnumeratingWithState:&v37 objects:buf count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v37 + 1) + 8 * i) address];
          v26 = [v18 isEqualToString:v25];

          if (v26)
          {

            v8 = v32;
            goto LABEL_30;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:buf count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v8 = v32;
    if (v31)
    {
LABEL_30:
      [(MSCRODMobileBrailleDisplay *)self _processInitialDeviceConnectionCallback:0 device:v16 brailleDriver:v8 ioElement:v9];
    }

    else
    {
      v27 = +[MSCRODBrailleConnectionHelper sharedHelper];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000092DC;
      v33[3] = &unk_100014900;
      v33[4] = self;
      v34 = v16;
      v35 = v32;
      v36 = v9;
      v28 = v9;
      v29 = v32;
      v30 = v16;
      [v27 queueDeviceConnection:v30 withCallback:v33];
    }
  }

  else
  {
    [*&self->SCROBrailleDisplay_opaque[v7] unlock];
    v11 = objc_autoreleasePoolPush();
    [(MSCRODMobileBrailleDisplay *)self _stopWatchingForDevices];
    objc_autoreleasePoolPop(v11);
  }
}

- (void)_setupDriverSupport
{
  v3 = OBJC_IVAR___SCROBrailleDisplay__brailleDriver;
  v4 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleDriver];
  if (!v4)
  {
    v5 = AXLogBrailleHW();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134217984;
      v23 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_brailleDriver == nil in _setupDriverSupport for Display %p", &v22, 0xCu);
    }

    v4 = *&self->SCROBrailleDisplay_opaque[v3];
  }

  v6 = [v4 modelIdentifier];
  v7 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__driverModelIdentifier];
  *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__driverModelIdentifier] = v6;

  v8 = [*&self->SCROBrailleDisplay_opaque[v3] mainSize];
  v9 = OBJC_IVAR___SCROBrailleDisplay__mainSize;
  *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__mainSize] = v8 & ~(v8 >> 63);
  v10 = [*&self->SCROBrailleDisplay_opaque[v3] statusSize];
  v11 = OBJC_IVAR___SCROBrailleDisplay__statusSize;
  *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__statusSize] = v10 & ~(v10 >> 63);
  v12 = [*&self->SCROBrailleDisplay_opaque[v3] postsKeyboardEvents];
  self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__postsKeyboardEvents] = v12;
  v13 = [*&self->SCROBrailleDisplay_opaque[v3] brailleInputMode];
  *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleInputMode] = v13;
  v14 = [objc_allocWithZone(SCROBrailleLine) initWithDriver:*&self->SCROBrailleDisplay_opaque[v3] mainSize:*&self->SCROBrailleDisplay_opaque[v9] statusSize:*&self->SCROBrailleDisplay_opaque[v11]];
  v15 = OBJC_IVAR___SCROBrailleDisplay__brailleLine;
  v16 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleLine];
  *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleLine] = v14;

  [*&self->SCROBrailleDisplay_opaque[v15] setTranslationDelegate:self];
  v17 = [*&self->SCROBrailleDisplay_opaque[v3] isInputEnabled];
  v18 = OBJC_IVAR___SCROBrailleDisplay__inputEnabled;
  self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__inputEnabled] = v17;
  v19 = OBJC_IVAR___SCROBrailleDisplay__runLoop;
  if (*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__runLoop])
  {
    v20 = OBJC_IVAR___SCROBrailleDisplay__blinkerEventTimer;
    if (*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__blinkerEventTimer] && [*&self->SCROBrailleDisplay_opaque[v3] supportsBlinkingCursor])
    {
      CFRunLoopAddTimer(*&self->SCROBrailleDisplay_opaque[v19], *&self->SCROBrailleDisplay_opaque[v20], kCFRunLoopDefaultMode);
    }

    if (self->SCROBrailleDisplay_opaque[v18] == 1)
    {
      v21 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__inputEventTimer];
      if (v21)
      {
        CFRunLoopAddTimer(*&self->SCROBrailleDisplay_opaque[v19], v21, kCFRunLoopDefaultMode);
      }
    }
  }

  [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__eventDispatcher] start];
}

- (void)_unloadHandler
{
  WeakRetained = objc_loadWeakRetained(&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__delegate]);
  [WeakRetained brailleDriverDisconnected:self];

  v4 = OBJC_IVAR___SCROBrailleDisplay__contentLock;
  [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__contentLock] lock];
  if (self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__isValid])
  {
    [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleDriver] unloadDriver];
    self->_isDriverLoaded = 0;
    v5 = OBJC_IVAR___SCROBrailleDisplay__runLoop;
    v6 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__runLoop];
    if (v6)
    {
      v7 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__inputEventTimer];
      if (v7)
      {
        CFRunLoopRemoveTimer(v6, v7, kCFRunLoopDefaultMode);
      }

      v8 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__blinkerEventTimer];
      if (v8)
      {
        CFRunLoopRemoveTimer(*&self->SCROBrailleDisplay_opaque[v5], v8, kCFRunLoopDefaultMode);
      }
    }

    if (self->_isReconnectionEnabled)
    {
      [(MSCRODMobileBrailleDisplay *)self _enableReconnectionTimer:1];
    }

    v9 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleLine];
    *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleLine] = 0;
  }

  [*&self->SCROBrailleDisplay_opaque[v4] unlock];
}

- (void)_reconnectionTriggeredHandler
{
  if (self->_isDriverLoading)
  {
    v3 = AXLogBrailleHW();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning off _isDriverLoading and _isDriverLoaded for a triggered reconnection", v4, 2u);
    }
  }

  self->_isDriverLoading = 0;
  self->_isDriverLoaded = 0;
  [(MSCRODMobileBrailleDisplay *)self _reconnectionEventHandler];
}

- (void)_reconnectionEventHandler
{
  v3 = OBJC_IVAR___SCROBrailleDisplay__brailleDriver;
  if (!*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleDriver])
  {
    v4 = AXLogBrailleHW();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_brailleDriver == nil in _reconnectionEventHandler for Display %p", buf, 0xCu);
    }
  }

  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:self->_isDriverLoading];
    v7 = [NSNumber numberWithBool:self->_isDriverLoaded];
    *buf = 138412802;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling reconnection[%@:%@]: %@", buf, 0x20u);
  }

  if (!self->_isDriverLoading && !self->_isDriverLoaded)
  {
    v8 = OBJC_IVAR___SCROBrailleDisplay__contentLock;
    [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__contentLock] lock];
    v9 = self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__isValid];
    if (v9 == 1)
    {
      v10 = *&self->SCROBrailleDisplay_opaque[v3];
      v11 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__ioElement];
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    [*&self->SCROBrailleDisplay_opaque[v8] unlock];
    v12 = AXLogBrailleHW();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithBool:v9];
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Is device valid for reconnection: %@", buf, 0xCu);
    }

    if (v9)
    {
      self->_isDriverLoading = 1;
      v14 = AXLogBrailleHW();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_isDriverLoading set to YES in _reconnectionEventHandler", buf, 2u);
      }

      v15 = [v11 bluetoothAddress];
      v16 = sub_100009178(v15);

      v17 = +[MSCRODBrailleConnectionHelper sharedHelper];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000A418;
      v18[3] = &unk_100014928;
      v18[4] = self;
      v19 = v10;
      v20 = v11;
      [v17 queueDeviceConnection:v16 withCallback:v18];
    }
  }
}

- (void)_resetReconnectionTimer
{
  if (self->_reconnectionEventTimer)
  {
    if (self->_reconnectionInterval < 30.0)
    {
      if ([(NSMutableDictionary *)self->_bluetoothConnectedDevices count]< 4)
      {
        if (CFAbsoluteTimeGetCurrent() - self->_beganReconnectionInterval >= 180.0)
        {
          self->_reconnectionInterval = fmin(self->_reconnectionInterval, 30.0);
          self->_beganReconnectionInterval = CFAbsoluteTimeGetCurrent();
        }
      }

      else
      {
        self->_reconnectionInterval = 30.0;
      }
    }

    v3 = AXLogBrailleHW();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [NSNumber numberWithDouble:self->_reconnectionInterval];
      v5 = [(MSCRODMobileBrailleDisplay *)self bluetoothAddress];
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Change reconnection timer to %@ %@", &v6, 0x16u);
    }
  }
}

- (BOOL)requiresPersistentConnection
{
  if (self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__isValid] == 1)
  {
    v3 = [(MSCRODMobileBrailleDisplay *)self bluetoothAddress];
    if (v3)
    {
      v4 = v3;
      v5 = +[AXSettings sharedInstance];
      v6 = [v5 voiceOverBrailleDisconnectOnSleep];
      v7 = [v6 objectForKeyedSubscript:v4];

      if (v7)
      {
        v8 = [v7 BOOLValue] ^ 1;
      }

      else
      {
        v9 = OBJC_IVAR___SCROBrailleDisplay__ioElement;
        if (![*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__ioElement] conformsToProtocol:&OBJC_PROTOCOL___SCROIOHIDElementProtocol] || !objc_msgSend(*&self->SCROBrailleDisplay_opaque[v9], "hidDevice"))
        {
          LOBYTE(v8) = 0;
          goto LABEL_12;
        }

        LOBYTE(v8) = 1;
      }

LABEL_12:
      return v8;
    }

    LOBYTE(v8) = 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)_reloadDriver
{
  v3 = OBJC_IVAR___SCROBrailleDisplay__brailleDriver;
  if (!*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleDriver])
  {
    v4 = AXLogBrailleHW();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_brailleDriver == nil in _reloadDriver for Display %@", buf, 0xCu);
    }
  }

  if (self->_isDriverLoading || self->_isDriverLoaded)
  {
    v5 = AXLogBrailleHW();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithBool:self->_isDriverLoading];
      v7 = [NSNumber numberWithBool:self->_isDriverLoaded];
      *buf = 138412802;
      v37 = v6;
      v38 = 2112;
      v39 = v7;
      v40 = 2114;
      v41 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not reloading driver: %@/%@ [%{public}@]", buf, 0x20u);
    }
  }

  else
  {
    v8 = AXLogBrailleHW();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reloading braille driver for display [%{public}@]", buf, 0xCu);
    }

    v9 = OBJC_IVAR___SCROBrailleDisplay__contentLock;
    [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__contentLock] lock];
    if (self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__isValid] == 1)
    {
      v33 = OBJC_IVAR___SCROBrailleDisplay__isValid;
      obj = *&self->SCROBrailleDisplay_opaque[v3];
      v5 = obj;
      v10 = *&self->SCROBrailleDisplay_opaque[v3];
      *&self->SCROBrailleDisplay_opaque[v3] = 0;

      v11 = AXLogBrailleHW();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v37 = v5;
        v38 = 2048;
        v39 = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_brailleDriver set to nil (from %p) in _reloadDriver for Display %p", buf, 0x16u);
      }

      v35 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__ioElement];
      [*&self->SCROBrailleDisplay_opaque[v9] unlock];
      self->_isDriverLoading = 1;
      v12 = AXLogBrailleHW();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_isDriverLoading set to YES in _reloadDriver", buf, 2u);
      }

      context = objc_autoreleasePoolPush();
      v13 = [v35 bluetoothAddress];
      v14 = sub_100009178(v13);

      if ([(MSCRODMobileBrailleDisplay *)v14 connected])
      {
        if (([(MSCRODMobileBrailleDisplay *)v14 connectedServices]& 0x2000) != 0)
        {
          v18 = [v5 loadDriverWithIOElement:v35];
          v17 = AXLogBrailleHW();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            if (v5)
            {
              v21 = v18 == 0;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;
            v23 = [NSNumber numberWithInt:v22];
            *buf = 138412290;
            v37 = v23;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Braille driver load succeeded: %@ in _reloadDriver", buf, 0xCu);
          }
        }

        else
        {
          if (![v35 conformsToProtocol:&OBJC_PROTOCOL___SCROIOHIDElementProtocol] || !objc_msgSend(v35, "hidDevice"))
          {
            v15 = AXLogBrailleHW();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v37 = v14;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Disconnecting in reload from [%{public}@]", buf, 0xCu);
            }

            [(MSCRODMobileBrailleDisplay *)v14 disconnect];
          }

          v16 = AXLogBrailleHW();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v37 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Reconnecting braille services to device [%{public}@]", buf, 0xCu);
          }

          v17 = +[MSCRODBrailleConnectionHelper sharedHelper];
          [v17 queueDeviceConnection:v14 withCallback:0];
          v18 = 1;
        }
      }

      else
      {
        v18 = 1;
      }

      if (v5)
      {
        v24 = v18 == 0;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      objc_autoreleasePoolPop(context);
      self->_isDriverLoading = 0;
      self->_isDriverLoaded = v25;
      v26 = AXLogBrailleHW();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "_isDriverLoading set to NO in _reloadDriver", buf, 2u);
      }

      [*&self->SCROBrailleDisplay_opaque[v9] lock];
      objc_storeStrong(&self->SCROBrailleDisplay_opaque[v3], obj);
      v27 = AXLogBrailleHW();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = v5;
        v38 = 2048;
        v39 = self;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "_brailleDriver set to %@ in _reloadDriver for Display %p", buf, 0x16u);
      }

      if (self->SCROBrailleDisplay_opaque[v33])
      {
        v28 = 1;
        if (v5 && !v18)
        {
          [(MSCRODMobileBrailleDisplay *)self _setupDriverSupport];
        }
      }

      else
      {
        Current = CFRunLoopGetCurrent();
        CFRunLoopStop(Current);
        v28 = 0;
      }

      [*&self->SCROBrailleDisplay_opaque[v9] unlock];
      if ((v28 & v25) == 1)
      {
        v30 = +[MSCRODBrailleDisplayManager sharedManager];
        [v30 addToDisplays:self];

        WeakRetained = objc_loadWeakRetained(&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__delegate]);
        [WeakRetained brailleDisplay:self driverDidLoad:1];

        [(MSCRODMobileBrailleDisplay *)self _enableReconnectionTimer:0];
      }

      v20 = v35;
    }

    else
    {
      [*&self->SCROBrailleDisplay_opaque[v9] unlock];
      v19 = CFRunLoopGetCurrent();
      CFRunLoopStop(v19);
      v5 = 0;
      v20 = 0;
    }
  }
}

- (id)bluetoothAddress
{
  v3 = [(MSCRODMobileBrailleDisplay *)self ioElement];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MSCRODMobileBrailleDisplay *)self ioElement];
    v6 = [v5 bluetoothAddress];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_startWatchingForDevices
{
  [(MSCRODMobileBrailleDisplay *)self _stopWatchingForDevices];
  if (!self->_bluetoothConnectedDevices)
  {
    v3 = [objc_allocWithZone(NSMutableDictionary) init];
    bluetoothConnectedDevices = self->_bluetoothConnectedDevices;
    self->_bluetoothConnectedDevices = v3;
  }

  v5 = +[BluetoothManager sharedInstance];
  v6 = [v5 pairedDevices];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138412290;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 connected])
        {
          v14 = [(MSCRODMobileBrailleDisplay *)self bluetoothAddress];
          v15 = [v13 address];
          v16 = [v14 isEqualToString:v15];

          if (v16)
          {
            v17 = AXLogBrailleHW();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v21;
              v27 = v13;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Monitoring paired device: %@", buf, 0xCu);
            }

            v18 = self->_bluetoothConnectedDevices;
            v19 = [v13 address];
            [(NSMutableDictionary *)v18 setObject:v13 forKey:v19];
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v20 = +[NSNotificationCenter defaultCenter];
  [v20 addObserver:self selector:"addDeviceNotification:" name:BluetoothDeviceConnectSuccessNotification object:0];
  [v20 addObserver:self selector:"addDeviceFailedNotification:" name:BluetoothDeviceConnectFailedNotification object:0];
  [v20 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
  [v20 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
  [v20 addObserver:self selector:"deviceUpdatedNotification:" name:BluetoothDeviceUpdatedNotification object:0];
  [v20 addObserver:self selector:"connectionStatusChanged:" name:BluetoothConnectionStatusChangedNotification object:0];
}

- (void)_stopWatchingForDevices
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:BluetoothDeviceConnectSuccessNotification object:0];
  [v4 removeObserver:self name:BluetoothDeviceConnectFailedNotification object:0];
  [v4 removeObserver:self name:BluetoothDeviceDisconnectSuccessNotification object:0];
  [v4 removeObserver:self name:BluetoothDeviceDisconnectFailedNotification object:0];
  [v4 removeObserver:self name:BluetoothDeviceUpdatedNotification object:0];
  [v4 removeObserver:self name:BluetoothConnectionStatusChangedNotification object:0];
  bluetoothConnectedDevices = self->_bluetoothConnectedDevices;
  self->_bluetoothConnectedDevices = 0;
}

- (void)addDeviceFailedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 address];
  v7 = v6;
  if (v5 && v6 && ![v5 connected])
  {
    v10 = +[MSCRODBrailleConnectionHelper sharedHelper];
    [v10 handleBluetoothConnectionEventForQueue:v5 forceProcess:0];

    v11 = [(MSCRODMobileBrailleDisplay *)self bluetoothAddress];
    v12 = [v11 isEqualToString:v7];

    if (v12)
    {
      v13 = AXLogBrailleHW();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [NSNumber numberWithBool:self->_isReconnectionEnabled];
        v15 = 138412802;
        v16 = v4;
        v17 = 2114;
        v18 = self;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FAILED: Add device failed: Reset reconnect %@ [%{public}@] - %{public}@", &v15, 0x20u);
      }

      [(MSCRODMobileBrailleDisplay *)self _enableReconnectionTimer:self->_isReconnectionEnabled];
    }
  }

  else
  {
    v8 = AXLogBrailleHW();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 connected]);
      v15 = 138412802;
      v16 = v5;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delayed device remove not processing: %@/%@/%@", &v15, 0x20u);
    }
  }
}

- (void)_delayedAddDeviceNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 address];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [(MSCRODMobileBrailleDisplay *)self bluetoothAddress];
      v9 = [v8 isEqualToString:v7];

      if (v9)
      {
        v10 = AXLogBrailleHW();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [NSNumber numberWithBool:self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__isValid]];
          *buf = 138543874;
          v31 = self;
          v32 = 2114;
          v33 = v4;
          v34 = 2112;
          v35 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SUCCESS: Connection success for display [%{public}@] - %{public}@ valid: %@", buf, 0x20u);
        }

        v12 = +[MSCRODBrailleConnectionHelper sharedHelper];
        [v12 handleBluetoothConnectionEventForQueue:v5];

        if (self->_isDriverLoading)
        {
          v13 = AXLogBrailleHW();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Turning off _isDriverLoading", buf, 2u);
          }
        }

        self->_isDriverLoading = 0;
        v14 = OBJC_IVAR___SCROBrailleDisplay__contentLock;
        [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__contentLock] lock];
        if (self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__isValid])
        {
          v15 = [(NSMutableDictionary *)self->_bluetoothConnectedDevices objectForKey:v7];
          v16 = v15 == 0;

          if (!v16)
          {
            [(NSMutableDictionary *)self->_bluetoothConnectedDevices setObject:v5 forKey:v7];
          }

          v17 = OBJC_IVAR___SCROBrailleDisplay__ioElement;
          if ([*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__ioElement] conformsToProtocol:&OBJC_PROTOCOL___SCROIOHIDElementProtocol])
          {
            v18 = 1048736;
          }

          else
          {
            v18 = 1056896;
          }

          v19 = [v5 connectedServices];
          v20 = [*&self->SCROBrailleDisplay_opaque[v17] bluetoothAddress];
          v21 = [v7 isEqualToString:v20];
          v22 = v19 & v18;
          if ((v19 & v18) != 0)
          {
            v23 = v21;
          }

          else
          {
            v23 = 0;
          }

          v24 = AXLogBrailleHW();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [NSNumber numberWithBool:v23];
            v25 = [NSNumber numberWithUnsignedInteger:v18];
            v26 = [NSNumber numberWithBool:v22 != 0];
            v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 connectedServices]);
            *buf = 138413314;
            v31 = v29;
            v32 = 2112;
            v33 = v25;
            v34 = 2112;
            v35 = v26;
            v36 = 2112;
            v37 = v27;
            v38 = 2048;
            v39 = self;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Should reload: %@ required service: %@ service connected: %@, connected services: %@, device: %p", buf, 0x34u);
          }
        }

        else
        {
          Current = CFRunLoopGetCurrent();
          CFRunLoopStop(Current);
          LODWORD(v23) = 0;
        }

        [*&self->SCROBrailleDisplay_opaque[v14] unlock];
        if (v23)
        {
          [(MSCRODMobileBrailleDisplay *)self _reloadDriver];
        }
      }
    }
  }
}

- (void)removeDeviceNotification:(id)a3
{
  v4 = a3;
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device remove: %@", &v6, 0xCu);
  }

  [(MSCRODMobileBrailleDisplay *)self performSelectorOnMainThread:"_delayedRemoveDeviceNotification:" withObject:v4 waitUntilDone:0];
}

- (void)_delayedRemoveDeviceNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 address];
  v6 = v5;
  if (v4 && v5 && ![v4 connected])
  {
    v12 = OBJC_IVAR___SCROBrailleDisplay__contentLock;
    [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__contentLock] lock];
    self->_isDriverLoaded = 0;
    self->_isDriverLoading = 0;
    v13 = AXLogBrailleHW();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_isDriverLoading set to YES in _delayedRemoveDeviceNotification", &v23, 2u);
    }

    v14 = [(NSMutableDictionary *)self->_bluetoothConnectedDevices objectForKey:v6];

    if (v14)
    {
      [(NSMutableDictionary *)self->_bluetoothConnectedDevices removeObjectForKey:v6];
    }

    v7 = [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__ioElement] bluetoothAddress];
    v15 = AXLogBrailleHW();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handling device removal: %@", &v23, 0xCu);
    }

    [*&self->SCROBrailleDisplay_opaque[v12] unlock];
    if (!v7 || ![v6 isEqualToString:v7] || (+[BluetoothManager sharedInstance](BluetoothManager, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "available"), v16, !v17))
    {
      v8 = AXLogBrailleHW();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [NSNumber numberWithInt:v7 == 0];
        v20 = +[BluetoothManager sharedInstance];
        v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 available]);
        v23 = 138413058;
        v24 = v19;
        v25 = 2112;
        v26 = v6;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_delayedRemoveDeviceNotification: bluetoothAddress == nil (%@) or address (%@) != bluetoothAddress (%@) or BluetoothManager.sharedInstance not available (%@)", &v23, 0x2Au);
      }

      goto LABEL_22;
    }

    if ([v4 paired])
    {
      v18 = AXLogBrailleHW();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device still paired after disconnect, commencing reconnect strategy: %@", &v23, 0xCu);
      }

      [(MSCRODMobileBrailleDisplay *)self _enableReconnectionTimer:self->_isReconnectionEnabled];
      v8 = +[MSCRODBrailleConnectionHelper sharedHelper];
      [v8 handleBluetoothConnectionEventForQueue:v4];
      goto LABEL_22;
    }

    v22 = +[MSCRODBrailleDisplayManager sharedManager];
    [v22 removeBluetoothDriverWithAddress:v6];

    v8 = AXLogBrailleHW();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_22:

      goto LABEL_23;
    }

    v23 = 138412290;
    v24 = v7;
    v9 = "Removing address from preferences: %@";
    v10 = v8;
    v11 = 12;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v23, v11);
    goto LABEL_22;
  }

  v7 = AXLogBrailleHW();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithBool:[v4 connected]];
    v23 = 138412802;
    v24 = v4;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v8;
    v9 = "Delayed device remove not processing: %@/%@/%@";
    v10 = v7;
    v11 = 32;
    goto LABEL_6;
  }

LABEL_23:
}

- (void)_delayedDeviceUpdatedNotification:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__delegate]);
  [WeakRetained configurationChangedForBrailleDisplay:self];
}

- (id)configuration
{
  v3 = OBJC_IVAR___SCROBrailleDisplay__contentLock;
  [*&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__contentLock] lock];
  v4 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__driverIdentifier];
  if (v4)
  {
    Copy = CFStringCreateCopy(0, v4);
  }

  else
  {
    Copy = 0;
  }

  v6 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__driverModelIdentifier];
  if (v6)
  {
    v7 = CFStringCreateCopy(0, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__mainSize];
  v9 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__statusSize];
  v10 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__brailleInputMode];
  v11 = *&self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__ioElement];
  [*&self->SCROBrailleDisplay_opaque[v3] unlock];
  v12 = [NSMutableDictionary dictionaryWithCapacity:10];
  v13 = v12;
  if (Copy)
  {
    [v12 setObject:Copy forKey:kSCROBrailleDisplayDriverIdentifier];
  }

  if (v7)
  {
    [v13 setObject:v7 forKey:kSCROBrailleDisplayModelIdentifier];
    v14 = [NSNumber numberWithInteger:v8];
    [v13 setObject:v14 forKey:kSCROBrailleDisplayMainSize];

    v15 = [NSNumber numberWithInteger:v9];
    [v13 setObject:v15 forKey:kSCROBrailleDisplayStatusSize];
  }

  if (!v11)
  {
    v30 = [NSNumber numberWithUnsignedInteger:0];
    [v13 setObject:v30 forKey:kSCROBrailleDisplayTransport];
    goto LABEL_28;
  }

  v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 identifier]);
  [v13 setObject:v16 forKey:kSCROBrailleDisplayToken];

  v17 = [v11 transport];
  v18 = [NSNumber numberWithUnsignedInteger:v17];
  [v13 setObject:v18 forKey:kSCROBrailleDisplayTransport];

  v19 = v17 > 0x20 || ((1 << v17) & 0x100000104) == 0;
  if (!v19 && (([v11 conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol] & 1) != 0 || objc_msgSend(v11, "conformsToProtocol:", &OBJC_PROTOCOL___SCROIOBTLESerialElementProtocol)))
  {
    v20 = [v11 bluetoothAddress];
    if (v20)
    {
      [v13 setObject:v20 forKey:kSCROBrailleDisplayBluetoothAddress];
    }

    v21 = sub_100009178(v20);
    v22 = v21;
    if (v21)
    {
      v23 = v7;
      v24 = Copy;
      v25 = [v21 name];
    }

    else
    {
      if (![v11 conformsToProtocol:&OBJC_PROTOCOL___SCROIOHIDElementProtocol])
      {
        goto LABEL_24;
      }

      v23 = v7;
      v24 = Copy;
      v25 = [v11 productName];
      if (!v25)
      {
LABEL_23:

        Copy = v24;
        v7 = v23;
LABEL_24:

        goto LABEL_25;
      }
    }

    [v13 setObject:v25 forKey:kSCROBrailleDisplayBluetoothName];
    goto LABEL_23;
  }

LABEL_25:
  if (![v11 conformsToProtocol:&OBJC_PROTOCOL___SCROIOHIDElementProtocol])
  {
    goto LABEL_29;
  }

  v26 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 vendorId]);
  v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 productId]);
  v28 = [NSString stringWithFormat:@"%@, %@", v26, v27];
  [v13 setObject:v28 forKeyedSubscript:kSCROBrailleDisplayBrailleVendorProductId];

  v29 = [v11 productName];
  [v13 setObject:v29 forKeyedSubscript:kSCROBrailleDisplayBrailleProductName];

  v30 = [v11 manufacturerName];
  [v13 setObject:v30 forKeyedSubscript:kSCROBrailleDisplayBrailleManufacturerName];
LABEL_28:

LABEL_29:
  v31 = [NSNumber numberWithBool:self->SCROBrailleDisplay_opaque[OBJC_IVAR___SCROBrailleDisplay__postsKeyboardEvents]];
  [v13 setObject:v31 forKey:kSCROBrailleDisplayPostsKeyboardEvents];

  v32 = [NSNumber numberWithInteger:v10];
  [v13 setObject:v32 forKey:kSCROBrailleDisplayBrailleInputMode];

  return v13;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MSCRODMobileBrailleDisplay *)self configuration];
  v5 = [v4 objectForKeyedSubscript:kSCROBrailleDisplayBluetoothAddress];
  v6 = [(MSCRODMobileBrailleDisplay *)self configuration];
  v7 = [v6 objectForKeyedSubscript:kSCROBrailleDisplayModelIdentifier];
  v8 = [(MSCRODMobileBrailleDisplay *)self configuration];
  v9 = [v8 objectForKeyedSubscript:kSCROBrailleDisplayTransport];
  v10 = [NSString stringWithFormat:@"%@[%p]\n\tBT Address: %@\n\tDriver Model: %@\n\tTransport: %@", v3, self, v5, v7, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [(MSCRODMobileBrailleDisplay *)self configuration];
  v7 = [v5 configuration];

  LOBYTE(v5) = [v6 isEqual:v7];
  if (v5)
  {
    v8 = 1;
  }

  else
  {
LABEL_4:
    v8 = 0;
  }

  return v8;
}

@end