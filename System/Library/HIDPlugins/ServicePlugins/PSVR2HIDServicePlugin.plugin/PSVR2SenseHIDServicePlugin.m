@interface PSVR2SenseHIDServicePlugin
+ (BOOL)matchService:(unsigned int)a3 options:(id)a4 score:(int64_t *)a5;
- (BOOL)isTwoAxisInputIdle:(PSVR2SenseHIDServicePlugin *)self prevInput:(SEL)a2 noiseBuffer:;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 client:(id)a5;
- (PSVR2SenseHIDServicePlugin)initWithService:(unsigned int)a3;
- (id)propertyForKey:(id)a3 client:(id)a4;
- (void)activate;
- (void)cancel;
- (void)connectToBatteryServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToIdleServiceWithClient:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)dispatchHomeButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4;
- (void)dispatchMenuButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4;
- (void)enableHaptics;
- (void)fetchDeviceRegistryIDWithReply:(id)a3;
- (void)initGameControllerDaemonXPC;
- (void)ping;
- (void)setCancelHandler:(id)a3;
- (void)setDispatchQueue:(id)a3;
- (void)setHapticMotor:(unint64_t)a3 frequency:(float)a4 amplitude:(float)a5;
- (void)stopHaptics;
@end

@implementation PSVR2SenseHIDServicePlugin

+ (BOOL)matchService:(unsigned int)a3 options:(id)a4 score:(int64_t *)a5
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, @"ProductID", kCFAllocatorDefault, 0);
  v8 = IORegistryEntryCreateCFProperty(a3, @"VendorID", kCFAllocatorDefault, 0);
  if ([v8 intValue] == 1356 && (objc_msgSend(CFProperty, "intValue") == 3653 || objc_msgSend(CFProperty, "intValue") == 3654))
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    *a5 = 0;
  }

  return v9;
}

- (PSVR2SenseHIDServicePlugin)initWithService:(unsigned int)a3
{
  v29.receiver = self;
  v29.super_class = PSVR2SenseHIDServicePlugin;
  v4 = [(PSVR2SenseHIDServicePlugin *)&v29 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_initially_inactive(0);
    v6 = dispatch_queue_create("PSVR2SenseHIDServicePlugin", v5);
    v7 = *(v4 + 1);
    *(v4 + 1) = v6;

    v8 = IONotificationPortCreate(kIOMainPortDefault);
    *(v4 + 2) = v8;
    IONotificationPortSetDispatchQueue(v8, *(v4 + 1));
    *(v4 + 6) = a3;
    IOObjectRetain(a3);
    RegistryEntryID = IORegistryEntryGetRegistryEntryID(*(v4 + 6), v4 + 4);
    v10 = sub_1120();
    v11 = v10;
    if (RegistryEntryID)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_A96C();
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v4 + 4);
        *buf = 134217984;
        *&buf[4] = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[%#010llx] Init", buf, 0xCu);
      }

      if (IOServiceOpen(*(v4 + 6), mach_task_self_, 2u, v4 + 10))
      {
        v11 = sub_1120();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_A9DC();
        }
      }

      else
      {
        v13 = IOGCFastPathClientCreate();
        *(v4 + 6) = v13;
        if (v13)
        {
          if (IOGCFastPathClientOpen())
          {
            v11 = sub_1120();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_AA4C();
            }
          }

          else
          {
            v14 = *(v4 + 6);
            v15 = IOGCFastPathInputQueueCreateWithDuration();
            *(v4 + 7) = v15;
            if (v15)
            {
              v16 = IOGCFastPathReaderCreate();
              *(v4 + 8) = v16;
              if (v16)
              {
                v17 = *(v4 + 6);
                v18 = IOGCFastPathControlQueueCreate();
                *(v4 + 9) = v18;
                if (v18)
                {
                  if (IOGCFastPathControlQueueResetPosition())
                  {
                    v11 = sub_1120();
                    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                    {
                      sub_AA88();
                    }
                  }

                  else
                  {
                    v19 = *(v4 + 6);
                    v11 = IOGCFastPathClientGetProperty();
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v20 = [v11 unsignedIntValue];
                      v21 = v20;
                      v4[104] = v20;
                    }

                    else
                    {
                      v21 = v4[104];
                    }

                    if ((v21 - 3) > 0xFFFFFFFD)
                    {

                      v28 = &off_15108;
                      v23 = sub_A450(v4, &v28);
                      if (v23)
                      {
                        sub_AAC4(v23, &v28, buf);
                        v24 = *buf;
                      }

                      else
                      {
                        v24 = v28;
                        v25 = [v28 objectForKeyedSubscript:@"Power.Disconnect.OnBattery.NotHeldAfterTime"];
                        v26 = [v25 isEqual:&off_150D0];

                        if ((v26 & 1) == 0)
                        {
                          sub_AB84(v24);
                        }
                      }

                      v22 = v4;
                      goto LABEL_21;
                    }

                    sub_AC44(v4 + 104);
                  }
                }

                else
                {
                  v11 = sub_1120();
                  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                  {
                    sub_ACEC();
                  }
                }
              }

              else
              {
                v11 = sub_1120();
                if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                {
                  sub_AD28();
                }
              }
            }

            else
            {
              v11 = sub_1120();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                sub_AD64();
              }
            }
          }
        }

        else
        {
          v11 = sub_1120();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_ADA0();
          }
        }
      }
    }

    dispatch_activate(*(v4 + 1));
    v22 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v22 = 0;
LABEL_22:

  return v22;
}

- (void)dealloc
{
  v3 = sub_1120();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    registryID = self->_registryID;
    *buf = 134217984;
    v13 = registryID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%#010llx] Dealloc", buf, 0xCu);
  }

  rumbleQueue = self->_rumbleQueue;
  if (rumbleQueue)
  {
    CFRelease(rumbleQueue);
    self->_rumbleQueue = 0;
  }

  inputQueueReader = self->_inputQueueReader;
  if (inputQueueReader)
  {
    CFRelease(inputQueueReader);
    self->_inputQueueReader = 0;
  }

  inputQueue = self->_inputQueue;
  if (inputQueue)
  {
    CFRelease(inputQueue);
    self->_inputQueue = 0;
  }

  client = self->_client;
  if (client)
  {
    CFRelease(client);
    self->_client = 0;
  }

  connection = self->_connection;
  if (connection)
  {
    IOServiceClose(connection);
    self->_connection = 0;
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
  }

  v11.receiver = self;
  v11.super_class = PSVR2SenseHIDServicePlugin;
  [(PSVR2SenseHIDServicePlugin *)&v11 dealloc];
}

- (void)setDispatchQueue:(id)a3
{
  objc_storeStrong(&self->_dispatchQueue, a3);
  v5 = a3;
  dispatch_set_target_queue(self->_internalQueue, self->_dispatchQueue);
}

- (void)setCancelHandler:(id)a3
{
  v4 = [a3 copy];
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;
}

- (void)activate
{
  v3 = _os_activity_create(&dword_0, "Activate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = sub_1120();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    registryID = self->_registryID;
    *buf = 134217984;
    v15 = registryID;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] Activate", buf, 0xCu);
  }

  dispatch_activate(self->_internalQueue);
  if (IOServiceAddInterestNotification(self->_notificationPort, self->_service, "IOGeneralInterest", sub_6788, self, &self->_interest) || !self->_interest)
  {
    v12 = sub_1120();
    sub_ADDC(v12);
  }

  inputQueue = self->_inputQueue;
  dispatchQueue = self->_dispatchQueue;
  IOGCFastPathInputQueueSetDispatchQueue();
  v8 = self->_inputQueue;
  IOGCFastPathInputQueueRegisterDataAvailableCallback();
  v9 = self->_inputQueue;
  IOGCFastPathInputQueueSetCancelHandler();
  v10 = self->_inputQueue;
  if (IOGCFastPathInputQueueActivate())
  {
    v11 = sub_1120();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_AE7C();
    }
  }

  [(PSVR2SenseHIDServicePlugin *)self initGameControllerDaemonXPC];
  os_activity_scope_leave(&state);
}

- (void)cancel
{
  v3 = _os_activity_create(&dword_0, "Cancel", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v3, &v8);
  v4 = sub_1120();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    registryID = self->_registryID;
    *buf = 134217984;
    v10 = registryID;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] Cancel", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_daemonConnection invalidate];
  inputQueue = self->_inputQueue;
  IOGCFastPathInputQueueCancel();
  interest = self->_interest;
  if (interest)
  {
    IOObjectRelease(interest);
    self->_interest = 0;
  }

  os_activity_scope_leave(&v8);
}

- (id)propertyForKey:(id)a3 client:(id)a4
{
  v5 = a3;
  if (sub_E60())
  {
    sub_B024();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ([v5 isEqualToString:@"ServicePluginDebug"])
  {
    v6 = objc_opt_new();
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 setObject:v8 forKeyedSubscript:@"PluginName"];

    if (self->_dispatchQueue)
    {
      v9 = &__kCFBooleanTrue;
    }

    else
    {
      v9 = &__kCFBooleanFalse;
    }

    [v6 setObject:v9 forKeyedSubscript:@"dispatchQueue"];
    v10 = [v6 copy];
  }

  else
  {
    v16 = 0;
    v19 = v5;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    v13 = sub_A620(self, v12, &v16);

    if (v13)
    {
      v14 = sub_1120();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v18 = v13;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "getProperties failed: %{mach.errno}d", buf, 8u);
      }
    }

    v6 = v16;
    v10 = [v16 objectForKeyedSubscript:v5];
  }

  v11 = v10;

LABEL_16:

  return v11;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4 client:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (!sub_E60())
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = +[NSNull null];
    if (!v8)
    {
      goto LABEL_4;
    }

LABEL_8:
    v16 = v8;
    v17 = v7;
    v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = sub_A450(self, &v15);
    if (v11)
    {
      v12 = v11;
      if (!sub_E60())
      {
        v9 = 0;
LABEL_18:

        goto LABEL_5;
      }

      v13 = sub_1120();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "setProperties failed: %{mach.errno}d", buf, 8u);
      }

      goto LABEL_16;
    }

    v13 = [v15 objectForKeyedSubscript:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![v13 unsignedIntValue])
      {
        v9 = 1;
        goto LABEL_17;
      }

      if (sub_E60())
      {
        sub_B184(v13, buf);
        v14 = *buf;
LABEL_24:
      }
    }

    else if (sub_E60())
    {
      v14 = sub_1120();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "setProperty failed", buf, 2u);
      }

      goto LABEL_24;
    }

LABEL_16:
    v9 = 0;
LABEL_17:

    goto LABEL_18;
  }

  sub_B0C8();
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = 0;
LABEL_5:

  return v9;
}

- (void)dispatchHomeButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4
{
  if (self->_buttonHome != a3)
  {
    v5 = a3;
    v7 = [(PSVR2SenseHIDServicePlugin *)self createEvent:3 timestamp:a4];
    IOHIDEventSetEventFlags();
    [v7 setIntegerValue:12 forField:196608];
    [v7 setIntegerValue:547 forField:196609];
    [v7 setIntegerValue:v5 forField:196610];
    [v7 setIntegerValue:1 forField:196612];
    [(PSVR2SenseHIDServicePlugin *)self dispatchEvent:v7];
    self->_buttonHome = v5;
  }
}

- (void)dispatchMenuButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4
{
  if (self->_buttonMenu != a3)
  {
    v5 = a3;
    v7 = [(PSVR2SenseHIDServicePlugin *)self createEvent:3 timestamp:a4];
    IOHIDEventSetEventFlags();
    [v7 setIntegerValue:12 forField:196608];
    [v7 setIntegerValue:516 forField:196609];
    [v7 setIntegerValue:v5 forField:196610];
    [v7 setIntegerValue:1 forField:196612];
    [(PSVR2SenseHIDServicePlugin *)self dispatchEvent:v7];
    self->_buttonMenu = v5;
  }
}

- (BOOL)isTwoAxisInputIdle:(PSVR2SenseHIDServicePlugin *)self prevInput:(SEL)a2 noiseBuffer:
{
  v5 = *v2;
  v6 = COERCE_FLOAT(HIDWORD(*v3)) == 0.0;
  if (COERCE_FLOAT(*v3) != 0.0)
  {
    v6 = 0;
  }

  if (COERCE_FLOAT(HIDWORD(*v2)) != 0.0)
  {
    v6 = 1;
  }

  v7 = v5.f32[0] != 0.0 || v6;
  v8 = vsub_f32(v5, *v3);
  return (sqrtf(vaddv_f32(vmul_f32(v8, v8))) < v4) & v7;
}

- (void)setHapticMotor:(unint64_t)a3 frequency:(float)a4 amplitude:(float)a5
{
  v25 = 0u;
  v26 = 0u;
  if (!a3 && self->_hapticsActive)
  {
    hapticSequence = self->_hapticSequence;
    self->_hapticSequence = hapticSequence + 1;
    v8 = sub_1120();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v28 = hapticSequence;
      v29 = 2048;
      v30 = a4;
      _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "Set haptic motor sequence=%llu, freq=%f", buf, 0x16u);
    }

    for (i = 1; ; i = 0)
    {
      rumbleQueue = self->_rumbleQueue;
      Sample = IOGCFastPathControlQueueGetSample();
      if (Sample)
      {
        v17 = Sample;
        log = sub_1120();
        if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        *buf = 67109120;
        LODWORD(v28) = v17;
        v18 = log;
        v19 = "IOGCFastPathControlQueueGetSample failed: %{mach.errno}d";
        goto LABEL_24;
      }

      v12 = IOGCFastPathSampleSetInteger();
      if (v12)
      {
        break;
      }

      v13 = IOGCFastPathSampleSetInteger();
      if (v13)
      {
        v17 = v13;
        log = sub_1120();
        if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      v14 = IOGCFastPathSampleSetDouble();
      if (v14)
      {
        v17 = v14;
        log = sub_1120();
        if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        *buf = 67109120;
        LODWORD(v28) = v17;
        v18 = log;
        v19 = "IOGCFastPathSampleSetDouble failed: %{mach.errno}d";
        goto LABEL_24;
      }

      mach_absolute_time();
      v15 = IOGCFastPathSampleSetTimestamp();
      if (v15)
      {
        v17 = v15;
        log = sub_1120();
        if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        *buf = 67109120;
        LODWORD(v28) = v17;
        v18 = log;
        v19 = "IOGCFastPathSampleSetTimestamp failed: %{mach.errno}d";
        goto LABEL_24;
      }

      v16 = IOGCFastPathSampleCommit();
      if (!v16)
      {
        IOGCFastPathSampleDestory();
        return;
      }

      v17 = v16;
      log = sub_1120();
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v28) = v17;
        v18 = log;
        v19 = "IOGCFastPathSampleCommit failed: %{mach.errno}d";
LABEL_24:
        _os_log_debug_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, v19, buf, 8u);
      }

LABEL_25:

      IOGCFastPathSampleDestory();
      if (v17 != -536870168 || (i & 1) == 0)
      {
        return;
      }

      v20 = self->_rumbleQueue;
      IOGCFastPathControlQueueResetPosition();
      v21 = sub_1120();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_B238(&v23, v24);
      }
    }

    v17 = v12;
    log = sub_1120();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }

LABEL_17:
    *buf = 67109120;
    LODWORD(v28) = v17;
    v18 = log;
    v19 = "IOGCFastPathSampleSetInteger failed: %{mach.errno}d";
    goto LABEL_24;
  }
}

- (void)enableHaptics
{
  if (!self->_hapticsActive)
  {
    self->_hapticsActive = 1;
    self->_hapticSequence = 0;
    v3 = sub_1120();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_B264();
    }

    rumbleQueue = self->_rumbleQueue;
    if (IOGCFastPathControlQueueResetPosition())
    {
      sub_B2A0();
    }
  }
}

- (void)stopHaptics
{
  if (self->_hapticsActive)
  {
    v3 = sub_1120();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_B344();
    }

    [(PSVR2SenseHIDServicePlugin *)self setHapticMotor:0 frequency:0.0 amplitude:0.0];
    self->_hapticsActive = 0;
  }
}

- (void)ping
{
  v2 = sub_1120();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "ping", v3, 2u);
  }
}

- (void)fetchDeviceRegistryIDWithReply:(id)a3
{
  registryID = self->_registryID;
  v5 = a3;
  v6 = [NSNumber numberWithUnsignedLongLong:registryID];
  (*(a3 + 2))(v5, v6, 0);
}

- (void)connectToIdleServiceWithClient:(id)a3 reply:(id)a4
{
  objc_storeStrong(&self->_idleClient, a3);
  v6 = a4;
  v6[2](v6, self, 0);
}

- (void)connectToBatteryServiceWithClient:(id)a3 reply:(id)a4
{
  objc_storeStrong(&self->_batteryClient, a3);
  v6 = a4;
  v6[2](v6, self, 0);
}

- (void)initGameControllerDaemonXPC
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_0, "Connect To Daemon", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  v4 = self->_dispatchQueue;
  v5 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.GameController.gamecontrollerd.driver" options:4096];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v5;

  objc_initWeak(&location, self->_daemonConnection);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_97DC;
  v17[3] = &unk_14678;
  objc_copyWeak(&v18, &location);
  [(NSXPCConnection *)self->_daemonConnection setInvalidationHandler:v17];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_9874;
  v14 = &unk_14798;
  objc_copyWeak(&v16, &location);
  v7 = v4;
  v15 = v7;
  [(NSXPCConnection *)self->_daemonConnection setInterruptionHandler:&v11];
  v8 = sub_9EE0();
  [(NSXPCConnection *)self->_daemonConnection setRemoteObjectInterface:v8, v11, v12, v13, v14];

  v9 = sub_9BCC();
  [(NSXPCConnection *)self->_daemonConnection setExportedInterface:v9];

  [(NSXPCConnection *)self->_daemonConnection setExportedObject:self];
  [(NSXPCConnection *)self->_daemonConnection _setQueue:self->_dispatchQueue];
  [(NSXPCConnection *)self->_daemonConnection resume];
  v10 = [(NSXPCConnection *)self->_daemonConnection remoteObjectProxy];
  [v10 driverCheckIn];

  os_activity_scope_leave(&state);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

@end