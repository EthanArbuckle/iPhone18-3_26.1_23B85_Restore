@interface GCGamepadHIDServicePlugin
- (BOOL)isAnyHapticMotorEnabled;
- (BOOL)isIdle;
- (BOOL)isTwoAxisInputIdle:(GCGamepadHIDServicePlugin *)self prevInput:(SEL)a2 noiseBuffer:;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 client:(id)a5;
- (BOOL)updateHapticMotor:(id)a3;
- (HIDConnection)client;
- (HIDEventDispatcher)dispatcher;
- (id)eventMatching:(id)a3 forClient:(id)a4;
- (id)propertyForKey:(id)a3 client:(id)a4;
- (void)activate;
- (void)cancel;
- (void)clientNotification:(id)a3 added:(BOOL)a4;
- (void)connectToBatteryServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToIdleServiceWithClient:(id)a3 reply:(id)a4;
- (void)createVirtualHIDDeviceForBattery;
- (void)dealloc;
- (void)disconnect;
- (void)dispatchEvent:(id)a3 withInputDelay:(BOOL)a4;
- (void)dispatchGameControllerExtendedEventWithState:(id *)a3 timestamp:(unint64_t)a4;
- (void)dispatchGameControllerExtendedEventWithState:(id *)a3 timestamp:(unint64_t)a4 children:(id)a5;
- (void)dispatchHomeButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4;
- (void)dispatchIdleEvent:(id)a3 withInputDelay:(BOOL)a4;
- (void)dispatchMenuButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4;
- (void)dispatchMotionEventWithState:(id *)a3 timestamp:(unint64_t)a4;
- (void)dispatchOptionsButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4;
- (void)dispatchSearchButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4;
- (void)dispatchShareButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4;
- (void)enableHaptics;
- (void)enqueueTransient:(id)a3 hapticMotor:(unint64_t)a4;
- (void)fetchDeviceRegistryIDWithReply:(id)a3;
- (void)initGameControllerDaemonXPC;
- (void)readBatteryWithReply:(id)a3;
- (void)scheduleIdleTimer;
- (void)sendBatteryReport;
- (void)setCancelHandler:(id)a3;
- (void)setDispatchQueue:(id)a3;
- (void)setEventDispatcher:(id)a3;
- (void)setHapticMotor:(unint64_t)a3 frequency:(float)a4 amplitude:(float)a5;
- (void)setupRawReportHandling;
- (void)stopHaptics;
- (void)updateClientBattery;
- (void)updateIdleState;
@end

@implementation GCGamepadHIDServicePlugin

- (void)initGameControllerDaemonXPC
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_0, "Connect To Daemon", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.GameController.gamecontrollerd.driver" options:4096];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v4;

  objc_initWeak(&location, self->_daemonConnection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1620;
  v11[3] = &unk_18670;
  objc_copyWeak(&v12, &location);
  [(NSXPCConnection *)self->_daemonConnection setInvalidationHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_16B8;
  v9[3] = &unk_18670;
  objc_copyWeak(&v10, &location);
  [(NSXPCConnection *)self->_daemonConnection setInterruptionHandler:v9];
  v6 = sub_59D0();
  [(NSXPCConnection *)self->_daemonConnection setRemoteObjectInterface:v6];

  v7 = sub_56BC();
  [(NSXPCConnection *)self->_daemonConnection setExportedInterface:v7];

  [(NSXPCConnection *)self->_daemonConnection setExportedObject:self];
  [(NSXPCConnection *)self->_daemonConnection resume];
  v8 = [(NSXPCConnection *)self->_daemonConnection remoteObjectProxy];
  [v8 driverCheckIn];

  os_activity_scope_leave(&state);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = sub_1148();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    regID = self->_regID;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = regID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%#010llx] Dealloc", &buf, 0xCu);
  }

  free(self->_batteryReport);
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    v6 = dispatchQueue;
  }

  else
  {
    v6 = &_dispatch_main_q;
    v7 = &_dispatch_main_q;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = sub_1E4C;
  v17 = sub_1E5C;
  v18 = self->_device;
  device = self->_device;
  self->_device = 0;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E64;
  block[3] = &unk_18698;
  v9 = v6;
  v12 = v9;
  p_buf = &buf;
  dispatch_async(v9, block);
  IOObjectRelease(self->_service);

  _Block_object_dispose(&buf, 8);
  v10.receiver = self;
  v10.super_class = GCGamepadHIDServicePlugin;
  [(GCGamepadHIDServicePlugin *)&v10 dealloc];
}

- (id)propertyForKey:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"BatteryCapacity"])
  {
    v8 = [[NSNumber alloc] initWithInt:self->_batteryReport->var0];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"IsPowerSupplyConnected"])
  {
    v8 = [[NSNumber alloc] initWithBool:self->_batteryReport->var2 != 0];
    goto LABEL_5;
  }

  if ([v6 isEqualToString:@"ServicePluginDebug"])
  {
    v9 = objc_opt_new();
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v9 setObject:v12 forKeyedSubscript:@"PluginName"];

    if (self->_cancelHandler)
    {
      v13 = &__kCFBooleanTrue;
    }

    else
    {
      v13 = &__kCFBooleanFalse;
    }

    [v9 setObject:v13 forKeyedSubscript:@"cancelHandler"];
    if (self->_dispatchQueue)
    {
      v14 = &__kCFBooleanTrue;
    }

    else
    {
      v14 = &__kCFBooleanFalse;
    }

    [v9 setObject:v14 forKeyedSubscript:@"dispatchQueue"];
    v15 = [NSNumber numberWithBool:self->_activated];
    [v9 setObject:v15 forKeyedSubscript:@"activated"];

    v16 = [NSNumber numberWithBool:self->_clientAdded];
    [v9 setObject:v16 forKeyedSubscript:@"clientAdded"];

    v17 = [(GCGamepadHIDServicePlugin *)self propertyForKey:@"BatteryCapacity" client:v7];
    [v9 setObject:v17 forKeyedSubscript:@"BatteryCapacity"];

    v18 = [(GCGamepadHIDServicePlugin *)self propertyForKey:@"IsPowerSupplyConnected" client:v7];
    [v9 setObject:v18 forKeyedSubscript:@"IsPowerSupplyConnected"];

    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"GameControllerPointer"])
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    goto LABEL_5;
  }

  if ([v6 isEqualToString:@"InputDelay"])
  {
    v8 = [NSNumber numberWithDouble:self->_inputEventDelay];
    goto LABEL_5;
  }

  v19 = [v6 isEqualToString:@"DeviceUsagePairs"];
  v9 = [(HIDDevice *)self->_device propertyForKey:v6];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [NSPredicate predicateWithBlock:&stru_186D8];
      v21 = [v9 filteredArrayUsingPredicate:v20];

      v9 = v21;
    }
  }

LABEL_6:

  return v9;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4 client:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (sub_E88())
  {
    sub_CFAC(self, v7, v8);
  }

  if (![v8 isEqualToString:@"InputDelay"])
  {
    if (([v8 isEqualToString:@"IOHIDDeviceSuspend"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"ReportBufferEntrySize") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"MaxReportBufferCount") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"IOHIDDeviceForceInterfaceRematch") & 1) == 0)
    {
      v12 = [(GCGamepadHIDServicePlugin *)self device];
      v10 = [v12 setProperty:v7 forKey:v8];

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  [v7 doubleValue];
  self->_inputEventDelay = v9;
  v10 = 1;
LABEL_11:

  return v10;
}

- (id)eventMatching:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = sub_1148();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      regID = self->_regID;
      v14 = 134218498;
      v15 = regID;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[%#010llx] eventMatching: %@ client: %@", &v14, 0x20u);
    }

    v9 = [v6 objectForKeyedSubscript:@"EventType"];
    v10 = v9;
    if (v9)
    {
      if ([v9 unsignedIntValue] == 3)
      {
        v9 = [[HIDEvent alloc] initWithType:3 timestamp:1234 senderID:5678];
      }

      else
      {
        v9 = 0;
      }
    }

    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setEventDispatcher:(id)a3
{
  v4 = a3;
  v5 = sub_1148();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    regID = self->_regID;
    v7 = 134217984;
    v8 = regID;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%#010llx] SetEventDispatcher", &v7, 0xCu);
  }

  objc_storeWeak(&self->_dispatcher, v4);
}

- (void)setCancelHandler:(id)a3
{
  v4 = a3;
  v5 = sub_1148();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    regID = self->_regID;
    *buf = 134217984;
    v13 = regID;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%#010llx] SetCancelHandler", buf, 0xCu);
  }

  v7 = objc_retainBlock(v4);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v7;

  objc_initWeak(buf, self);
  device = self->_device;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2830;
  v10[3] = &unk_18670;
  objc_copyWeak(&v11, buf);
  [(HIDDevice *)device setCancelHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)activate
{
  v3 = sub_1148();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    regID = self->_regID;
    v5 = 134217984;
    v6 = regID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Activate", &v5, 0xCu);
  }

  [(HIDDevice *)self->_device activate];
  [(GCGamepadHIDServicePlugin *)self initGameControllerDaemonXPC];
  [(GCGamepadHIDServicePlugin *)self scheduleIdleTimer];
  self->_activated = 1;
}

- (void)cancel
{
  v3 = sub_1148();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    regID = self->_regID;
    *buf = 134217984;
    v8 = regID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Cancel", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_daemonConnection invalidate];
  [(HIDDevice *)self->_device cancel];
  [(HIDDevice *)self->_device close];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AA4;
  block[3] = &unk_18700;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  v5 = sub_1148();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    regID = self->_regID;
    v9 = 134217984;
    v10 = regID;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%#010llx] SetDispatchQueue", &v9, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  self->_dispatchQueue = v4;
  v8 = v4;

  [(HIDDevice *)self->_device setDispatchQueue:self->_dispatchQueue];
}

- (void)clientNotification:(id)a3 added:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_1148();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    regID = self->_regID;
    v10 = 134218498;
    v11 = regID;
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[%#010llx] clientNotification %@ added: %d", &v10, 0x1Cu);
  }

  if (v4)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  self->_clientAdded = v4;
  objc_storeWeak(&self->_client, v9);
}

- (void)setupRawReportHandling
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"GCGamepadHIDServicePlugin.m" lineNumber:515 description:@"Subclasses must override this method."];
}

- (void)disconnect
{
  if ([(GCGamepadHIDServicePlugin *)self isBluetoothClassic])
  {
    v3 = IORegistryEntrySearchCFProperty(self->_service, "IOService", @"SerialNumber", kCFAllocatorDefault, 3u);
    [(GCIdleServiceClientInterface *)self->_idleClient requestIdleDisconnect:v3];
  }
}

- (void)createVirtualHIDDeviceForBattery
{
  if ([(GCGamepadHIDServicePlugin *)self shouldCreateBatteryDevice])
  {
    v3 = sub_1148();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      regID = self->_regID;
      v17 = 134217984;
      v18 = regID;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] creating battery device", &v17, 0xCu);
    }

    v5 = +[NSMutableDictionary dictionary];
    v6 = sub_CD7C();
    [v5 setObject:v6 forKeyedSubscript:@"ReportDescriptor"];
    v7 = [NSNumber numberWithUnsignedLongLong:self->_regID];
    [v5 setObject:v7 forKeyedSubscript:@"PhysicalDeviceUniqueID"];

    v8 = [NSNumber numberWithUnsignedLongLong:self->_regID];
    [v5 setObject:v8 forKeyedSubscript:@"SerialNumber"];

    CFProperty = IORegistryEntryCreateCFProperty(self->_service, @"Transport", kCFAllocatorDefault, 0);
    [v5 setObject:CFProperty forKeyedSubscript:@"Transport"];

    v10 = IORegistryEntryCreateCFProperty(self->_service, @"ProductID", kCFAllocatorDefault, 0);
    [v5 setObject:v10 forKeyedSubscript:@"ProductID"];

    v11 = IORegistryEntryCreateCFProperty(self->_service, @"VendorID", kCFAllocatorDefault, 0);
    [v5 setObject:v11 forKeyedSubscript:@"VendorID"];

    v12 = IORegistryEntryCreateCFProperty(self->_service, @"Product", kCFAllocatorDefault, 0);
    [v5 setObject:v12 forKeyedSubscript:@"Product"];

    [v5 setObject:&off_19AC0 forKeyedSubscript:@"GameControllerType"];
    v13 = [[HIDUserDevice alloc] initWithProperties:v5];
    batteryUserDevice = self->_batteryUserDevice;
    self->_batteryUserDevice = v13;

    v15 = sub_1148();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_batteryUserDevice;
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "created battery device %@ with properties %@", &v17, 0x16u);
    }
  }
}

- (void)updateClientBattery
{
  if (self->_batteryReport)
  {
    v3 = sub_1148();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      regID = self->_regID;
      var0 = self->_batteryReport->var0;
      v6 = 134218240;
      v7 = regID;
      v8 = 1024;
      v9 = var0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] updateClientBattery reporting battery level %d%%", &v6, 0x12u);
    }

    [(GCBatteryServiceClientInterface *)self->_batteryClient updateBattery:self->_batteryReport->var0 isCharging:self->_batteryReport->var2 != 0];
  }
}

- (void)sendBatteryReport
{
  [(GCGamepadHIDServicePlugin *)self updateClientBattery];
  if (self->_batteryUserDevice)
  {
    v3 = sub_1148();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      regID = self->_regID;
      var0 = self->_batteryReport->var0;
      v7 = 134218240;
      v8 = regID;
      v9 = 1024;
      v10 = var0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] updateBatteryStats reporting battery level %d%%", &v7, 0x12u);
    }

    v6 = [NSData dataWithBytesNoCopy:self->_batteryReport length:3 freeWhenDone:0];
    [(HIDUserDevice *)self->_batteryUserDevice handleReport:v6 error:0];
  }
}

- (void)scheduleIdleTimer
{
  v3 = sub_1148();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    regID = self->_regID;
    *buf = 134217984;
    v8 = regID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] scheduleIdleTimer", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_33D4;
  block[3] = &unk_18700;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)updateIdleState
{
  if ([(GCGamepadHIDServicePlugin *)self isIdle]&& [(GCGamepadHIDServicePlugin *)self shouldDisconnectWhenIdle])
  {
    v3 = sub_1148();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      regID = self->_regID;
      v5 = 134217984;
      v6 = regID;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] disconnectIfIdle disconnecting...", &v5, 0xCu);
    }

    [(GCGamepadHIDServicePlugin *)self disconnect];
  }
}

- (BOOL)isIdle
{
  v3 = [(GCGamepadHIDServicePlugin *)self lastEventTime];
  v4 = mach_absolute_time() - v3;
  if (qword_1F010 != -1)
  {
    sub_D07C();
  }

  v5 = (v4 * dword_1F018 / *algn_1F01C) / 1000000000.0;
  idleTimeoutDuration = self->_idleTimeoutDuration;
  v7 = sub_1148();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    regID = self->_regID;
    v11 = 134218498;
    v12 = regID;
    if (v5 <= idleTimeoutDuration)
    {
      v9 = &stru_191D8;
    }

    else
    {
      v9 = @" - will disconnect if permitted";
    }

    v13 = 2048;
    v14 = v5;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[%#010llx] isIdle for %.2f seconds%@", &v11, 0x20u);
  }

  return v5 > idleTimeoutDuration;
}

- (void)dispatchEvent:(id)a3 withInputDelay:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && self->_inputEventDelay > 0.0)
  {
    sub_D090(self, v6);
  }

  else
  {
    [(GCGamepadHIDServicePlugin *)self dispatchEvent:v6];
  }
}

- (void)dispatchIdleEvent:(id)a3 withInputDelay:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && self->_inputEventDelay > 0.0)
  {
    sub_D140(self, v6);
  }

  else
  {
    [(GCGamepadHIDServicePlugin *)self dispatchIdleEvent:v6];
  }
}

- (BOOL)isTwoAxisInputIdle:(GCGamepadHIDServicePlugin *)self prevInput:(SEL)a2 noiseBuffer:
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

- (void)dispatchMotionEventWithState:(id *)a3 timestamp:(unint64_t)a4
{
  if (a3->var0 || a3->var4 || a3->var8)
  {
    v14 = [(GCGamepadHIDServicePlugin *)self createEvent:1 timestamp:a4];
    [v14 setIntegerValue:65280 forField:0x10000];
    [v14 setIntegerValue:59 forField:65537];
    [v14 setIntegerValue:1 forField:65538];
    if (a3->var0)
    {
      v7 = [(GCGamepadHIDServicePlugin *)self createEvent:20 timestamp:a4];
      IOHIDEventSetEventFlags();
      [v7 setDoubleValue:1310720 forField:a3->var1];
      [v7 setDoubleValue:1310721 forField:a3->var2];
      [v7 setDoubleValue:1310722 forField:a3->var3];
      [v7 setIntegerValue:self->_motionSequenceNumber forField:1310725];
      IOHIDEventAppendEvent();
    }

    if (a3->var4)
    {
      v8 = [(GCGamepadHIDServicePlugin *)self createEvent:13 timestamp:a4];
      IOHIDEventSetEventFlags();
      [v8 setDoubleValue:851968 forField:a3->var5];
      [v8 setDoubleValue:851969 forField:a3->var6];
      [v8 setDoubleValue:851970 forField:a3->var7];
      [v8 setIntegerValue:self->_motionSequenceNumber forField:851973];
      IOHIDEventAppendEvent();
    }

    if (a3->var8)
    {
      mach_absolute_time();
      var9 = a3->var9;
      var10 = a3->var10;
      var11 = a3->var11;
      var12 = a3->var12;
      QuaternionOrientationEvent = IOHIDEventCreateQuaternionOrientationEvent();
      IOHIDEventAppendEvent();
    }

    ++self->_motionSequenceNumber;
    [(GCGamepadHIDServicePlugin *)self dispatchIdleEvent:v14 withInputDelay:1];
  }
}

- (void)dispatchGameControllerExtendedEventWithState:(id *)a3 timestamp:(unint64_t)a4 children:(id)a5
{
  v8 = a5;
  v9 = vcvtq_f64_f32(*&a3->var1[2]);
  v53 = vcvtq_f64_f32(*a3->var1);
  v54 = v9;
  v10 = vcvtq_f64_f32(*&a3->var1[6]);
  v55 = vcvtq_f64_f32(*&a3->var1[4]);
  v56 = v10;
  v11 = vcvtq_f64_f32(*&a3->var1[18]);
  v57 = vcvtq_f64_f32(*&a3->var1[8]);
  v58 = v11;
  v12.i32[0] = LODWORD(a3->var1[10]);
  v12.i32[1] = LODWORD(a3->var1[13]);
  v13 = vsub_f32(v12, *&a3->var1[11]);
  *v11.f64 = a3->var1[14];
  HIDWORD(v11.f64[0]) = LODWORD(a3->var1[17]);
  v14 = *&a3->var1[15];
  v60 = 0;
  v15 = COERCE_DOUBLE(vrev64_s32(v13));
  *&v11.f64[0] = vrev64_s32(vsub_f32(*&v11.f64[0], v14));
  *&v59 = v15;
  *(&v59 + 1) = *&v11.f64[0];
  *v11.f64 = a3->var1[21];
  LOBYTE(v60) = a3->var1[20] != 0.0;
  BYTE1(v60) = *v11.f64 != 0.0;
  *&v15 = self->_leftThumbstickDeadzoneRadius;
  *v11.f64 = self->_leftThumbstickAxisSnapRadius;
  [(GCGamepadHIDServicePlugin *)self applyDeadzone:&v59 axisSnapRadius:v15 input:v11.f64[0]];
  *&v16 = self->_rightThumbstickDeadzoneRadius;
  *&v17 = self->_rightThumbstickAxisSnapRadius;
  [(GCGamepadHIDServicePlugin *)self applyDeadzone:&v59 + 8 axisSnapRadius:v16 input:v17];
  *&v18 = self->_leftThumbstickNoiseBuffer;
  v19 = [(GCGamepadHIDServicePlugin *)self isTwoAxisInputIdle:&v59 prevInput:self->_anon_90 noiseBuffer:v18];
  *&v20 = self->_rightThumbstickNoiseBuffer;
  v21 = [(GCGamepadHIDServicePlugin *)self isTwoAxisInputIdle:&v59 + 8 prevInput:&self->_anon_90[8] noiseBuffer:v20];
  if ((v19 & 1) == 0)
  {
    a3->var0 |= 0x3C00uLL;
  }

  if ((v21 & 1) == 0)
  {
    a3->var0 |= 0x3C000uLL;
  }

  v22 = 0;
  v23 = -10;
  do
  {
    if (v23 >= 8 && a3->var1[v22] != self->_gameControllerExtendedState.buttons[v22])
    {
      a3->var0 |= 1 << v22;
    }

    ++v22;
    ++v23;
  }

  while (v22 != 47);
  if (a3->var0)
  {
    v24 = [(GCGamepadHIDServicePlugin *)self createEvent:35 timestamp:a4];
    [v24 setDoubleValue:2293761 forField:v53.f64[0]];
    [v24 setDoubleValue:2293762 forField:v53.f64[1]];
    [v24 setDoubleValue:2293763 forField:v54.f64[0]];
    [v24 setDoubleValue:2293764 forField:v54.f64[1]];
    [v24 setDoubleValue:2293767 forField:v56.f64[0]];
    [v24 setDoubleValue:2293768 forField:v56.f64[1]];
    [v24 setDoubleValue:2293765 forField:v55.f64[0]];
    [v24 setDoubleValue:2293766 forField:v55.f64[1]];
    [v24 setDoubleValue:2293769 forField:v57.f64[0]];
    [v24 setDoubleValue:2293771 forField:v58.f64[0]];
    [v24 setIntegerValue:v60 forField:2293777];
    [v24 setDoubleValue:2293770 forField:v57.f64[1]];
    [v24 setDoubleValue:2293772 forField:v58.f64[1]];
    [v24 setIntegerValue:BYTE1(v60) forField:2293778];
    [v24 setDoubleValue:2293773 forField:*&v59];
    [v24 setDoubleValue:2293774 forField:*(&v59 + 1)];
    [v24 setDoubleValue:2293775 forField:*(&v59 + 2)];
    [v24 setDoubleValue:2293776 forField:*(&v59 + 3)];
    [v24 setIntegerValue:HIDWORD(v60) forField:2293760];
    v26 = *(&v59 + 8);
    v25 = v59;
    a3->var1[10] = fmaxf(*(&v59 + 1), 0.0);
    v27 = vrev64_s32(v26);
    *v28.f32 = vrev64_s32(v25);
    v25.i32[1] = v26.i32[1];
    v29.i64[0] = vnegq_f32(v28).u64[0];
    *&v28.u32[2] = v25;
    v30.i32[0] = vmovn_s32(vcltzq_f32(v28)).u32[0];
    v30.i32[1] = vmovn_s32(vcgtzq_f32(v28)).i32[1];
    v29.u64[1] = v25;
    *&a3->var1[11] = vandq_s8(v29, vmovl_s16(v30));
    *&a3->var1[15] = vand_s8(vneg_f32(v27), vcltz_f32(v27));
    a3->var1[17] = fmaxf(*v26.i32, 0.0);
    mach_absolute_time();
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventAppendEvent();
    if (VendorDefinedEvent)
    {
      CFRelease(VendorDefinedEvent);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v32 = v8;
    v33 = [v32 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v50;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v50 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [v24 appendEvent:{*(*(&v49 + 1) + 8 * i), v49}];
        }

        v34 = [v32 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v34);
    }

    [(GCGamepadHIDServicePlugin *)self dispatchEvent:v24 withInputDelay:1];
    v37 = v54;
    *&self->_gameControllerState.directionPadUp = v53;
    *&self->_gameControllerState.directionPadLeft = v37;
    v38 = v56;
    *&self->_gameControllerState.buttonA = v55;
    *&self->_gameControllerState.buttonX = v38;
    *&self->_anon_90[16] = v60;
    v39 = v59;
    *&self->_gameControllerState.buttonL2 = v58;
    *self->_anon_90 = v39;
    *&self->_gameControllerState.buttonL1 = v57;
    *&self->_gameControllerExtendedState.mask = *&a3->var0;
    v40 = *&a3->var1[2];
    v41 = *&a3->var1[6];
    v42 = *&a3->var1[10];
    *&self->_gameControllerExtendedState.buttons[14] = *&a3->var1[14];
    *&self->_gameControllerExtendedState.buttons[10] = v42;
    *&self->_gameControllerExtendedState.buttons[6] = v41;
    *&self->_gameControllerExtendedState.buttons[2] = v40;
    v43 = *&a3->var1[18];
    v44 = *&a3->var1[22];
    v45 = *&a3->var1[30];
    *&self->_gameControllerExtendedState.buttons[26] = *&a3->var1[26];
    *&self->_gameControllerExtendedState.buttons[30] = v45;
    *&self->_gameControllerExtendedState.buttons[22] = v44;
    *&self->_gameControllerExtendedState.buttons[18] = v43;
    v46 = *&a3->var1[34];
    v47 = *&a3->var1[38];
    v48 = *&a3->var1[42];
    *&self->_gameControllerExtendedState.buttons[46] = *&a3->var1[46];
    *&self->_gameControllerExtendedState.buttons[38] = v47;
    *&self->_gameControllerExtendedState.buttons[42] = v48;
    *&self->_gameControllerExtendedState.buttons[34] = v46;
  }

  else
  {
    sub_D1F0(self);
  }
}

- (void)dispatchGameControllerExtendedEventWithState:(id *)a3 timestamp:(unint64_t)a4
{
  v4 = *&a3->var1[42];
  v10[10] = *&a3->var1[38];
  v10[11] = v4;
  v11 = *&a3->var1[46];
  v5 = *&a3->var1[26];
  v10[6] = *&a3->var1[22];
  v10[7] = v5;
  v6 = *&a3->var1[34];
  v10[8] = *&a3->var1[30];
  v10[9] = v6;
  v7 = *&a3->var1[10];
  v10[2] = *&a3->var1[6];
  v10[3] = v7;
  v8 = *&a3->var1[18];
  v10[4] = *&a3->var1[14];
  v10[5] = v8;
  v9 = *&a3->var1[2];
  v10[0] = *&a3->var0;
  v10[1] = v9;
  [(GCGamepadHIDServicePlugin *)self dispatchGameControllerExtendedEventWithState:v10 timestamp:a4 children:0];
}

- (void)dispatchHomeButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4
{
  if (self->_buttonHome != a3)
  {
    v5 = a3;
    v7 = [(GCGamepadHIDServicePlugin *)self createEvent:3 timestamp:a4];
    IOHIDEventSetEventFlags();
    [v7 setIntegerValue:12 forField:196608];
    [v7 setIntegerValue:547 forField:196609];
    [v7 setIntegerValue:v5 forField:196610];
    [v7 setIntegerValue:1 forField:196612];
    [(GCGamepadHIDServicePlugin *)self dispatchEvent:v7 withInputDelay:1];
    self->_buttonHome = v5;
  }
}

- (void)dispatchMenuButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4
{
  if (self->_buttonMenu != a3)
  {
    v5 = a3;
    v7 = [(GCGamepadHIDServicePlugin *)self createEvent:3 timestamp:a4];
    IOHIDEventSetEventFlags();
    [v7 setIntegerValue:12 forField:196608];
    [v7 setIntegerValue:516 forField:196609];
    [v7 setIntegerValue:v5 forField:196610];
    [v7 setIntegerValue:1 forField:196612];
    [(GCGamepadHIDServicePlugin *)self dispatchEvent:v7 withInputDelay:1];
    self->_buttonMenu = v5;
  }
}

- (void)dispatchOptionsButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4
{
  if (self->_buttonOptions != a3)
  {
    v5 = a3;
    v7 = [(GCGamepadHIDServicePlugin *)self createEvent:3 timestamp:a4];
    IOHIDEventSetEventFlags();
    [v7 setIntegerValue:12 forField:196608];
    [v7 setIntegerValue:521 forField:196609];
    [v7 setIntegerValue:v5 forField:196610];
    [v7 setIntegerValue:1 forField:196612];
    [(GCGamepadHIDServicePlugin *)self dispatchEvent:v7 withInputDelay:1];
    self->_buttonOptions = v5;
  }
}

- (void)dispatchSearchButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4
{
  if (self->_buttonSearch != a3)
  {
    v5 = a3;
    v7 = [(GCGamepadHIDServicePlugin *)self createEvent:3 timestamp:a4];
    IOHIDEventSetEventFlags();
    [v7 setIntegerValue:12 forField:196608];
    [v7 setIntegerValue:545 forField:196609];
    [v7 setIntegerValue:v5 forField:196610];
    [v7 setIntegerValue:1 forField:196612];
    [(GCGamepadHIDServicePlugin *)self dispatchEvent:v7 withInputDelay:1];
    self->_buttonSearch = v5;
  }
}

- (void)dispatchShareButtonEventWithValue:(BOOL)a3 timestamp:(unint64_t)a4
{
  if (self->_buttonShare != a3)
  {
    v5 = a3;
    v7 = [(GCGamepadHIDServicePlugin *)self createEvent:3 timestamp:a4];
    IOHIDEventSetEventFlags();
    [v7 setIntegerValue:12 forField:196608];
    [v7 setIntegerValue:178 forField:196609];
    [v7 setIntegerValue:v5 forField:196610];
    [v7 setIntegerValue:1 forField:196612];
    [(GCGamepadHIDServicePlugin *)self dispatchEvent:v7 withInputDelay:1];
    self->_buttonShare = v5;
  }
}

- (BOOL)isAnyHapticMotorEnabled
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(GCGamepadHIDServicePlugin *)self hapticMotors];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v15 + 1) + 8 * v6);
      [v7 frequency];
      if (v8 <= 0.0)
      {
        v9 = 1;
      }

      else if ([v7 features])
      {
        [v7 amplitude];
        v9 = v10 <= 0.0;
      }

      else
      {
        v9 = 0;
      }

      v11 = [v7 queuedTransients];
      v12 = [v11 count];

      v13 = 1;
      if (!v9 || v12)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v13 = 0;
  }

  return v13;
}

- (void)stopHaptics
{
  if (self->_hapticsActive)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(GCGamepadHIDServicePlugin *)self hapticMotors];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          [v8 setFrequency:0.0];
          [v8 setAmplitude:0.0];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    if (!self->_pendingHapticZeroReports)
    {
      self->_pendingHapticZeroReports = [(GCGamepadHIDServicePlugin *)self numberOfTimesToSendZeroHapticReport];
    }

    [(GCGamepadHIDServicePlugin *)self dispatchHapticEvent];
    v9 = self->_pendingHapticZeroReports - 1;
    self->_pendingHapticZeroReports = v9;
    if (!v9)
    {
      self->_hapticsActive = 0;
      dispatch_source_cancel(self->_hapticDispatchSource);
      hapticDispatchSource = self->_hapticDispatchSource;
      self->_hapticDispatchSource = 0;
    }
  }
}

- (BOOL)updateHapticMotor:(id)a3
{
  v4 = a3;
  if (([v4 index] & 0x80000000) == 0)
  {
    v5 = [v4 index];
    v6 = [(GCGamepadHIDServicePlugin *)self hapticMotors];
    v7 = [v6 count];

    if (v7 > v5)
    {
      v8 = [(GCGamepadHIDServicePlugin *)self hapticMotors];
      v9 = [v8 objectAtIndex:{objc_msgSend(v4, "index")}];

      [v9 applyValuesFrom:v4];
    }
  }

  return 1;
}

- (void)enableHaptics
{
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4930;
  v4[3] = &unk_18670;
  objc_copyWeak(&v5, &location);
  dispatch_async(internalQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setHapticMotor:(unint64_t)a3 frequency:(float)a4 amplitude:(float)a5
{
  v9 = [GCHapticMotor alloc];
  *&v10 = a4;
  *&v11 = a5;
  v12 = [(GCHapticMotor *)v9 initWithIndex:a3 name:0 features:1 frequency:v10 amplitude:v11];
  [(GCGamepadHIDServicePlugin *)self updateHapticMotor:v12];
}

- (void)enqueueTransient:(id)a3 hapticMotor:(unint64_t)a4
{
  v10 = a3;
  v6 = [(GCGamepadHIDServicePlugin *)self hapticMotors];
  v7 = [v6 count];

  if (v7 > a4)
  {
    v8 = [(GCGamepadHIDServicePlugin *)self hapticMotors];
    v9 = [v8 objectAtIndex:a4];

    [v9 enqueueHapticTransientEvent:v10];
  }
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

- (void)readBatteryWithReply:(id)a3
{
  v7 = a3;
  if ([(GCGamepadHIDServicePlugin *)self batteryReport]&& *[(GCGamepadHIDServicePlugin *)self batteryReport])
  {
    v4 = *[(GCGamepadHIDServicePlugin *)self batteryReport];
    v5 = *([(GCGamepadHIDServicePlugin *)self batteryReport]+ 2) != 0;
    v6 = v7[2];
  }

  else
  {
    v6 = v7[2];
  }

  v6();
}

- (HIDConnection)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (HIDEventDispatcher)dispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatcher);

  return WeakRetained;
}

- (void)fetchDeviceRegistryIDWithReply:(id)a3
{
  if (self)
  {
    regID = self->_regID;
  }

  else
  {
    regID = 0;
  }

  v5 = a3;
  v6 = [NSNumber numberWithUnsignedLongLong:regID];
  (*(a3 + 2))(v5, v6, 0);
}

@end