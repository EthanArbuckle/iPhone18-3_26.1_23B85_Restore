@interface BKHIDSystem
+ (id)sharedInstance;
- (BKHIDSystem)init;
- (BKHIDSystemDelegate)delegate;
- (__IOHIDEvent)systemEventOfType:(unsigned int)a3 matchingEvent:(__IOHIDEvent *)a4 options:(unsigned int)a5;
- (id)IOHIDServicesMatching:(id)a3;
- (id)systemPropertyForKey:(id)a3;
- (void)_asyncScheduleWithHIDEventQuue:(id)a3;
- (void)buffer:(id)a3 drainEvent:(__IOHIDEvent *)a4 withContext:(id)a5 sender:(id)a6 sequence:(id)a7 toResolution:(id)a8;
- (void)dealloc;
- (void)injectGSEvent:(__GSEvent *)a3;
- (void)registerIOHIDServicesCallback:(void *)a3 matchingDictionary:(id)a4 target:(void *)a5 refCon:(void *)a6;
- (void)requestBufferReevaluationWithContext:(id)a3;
- (void)setSystemProperty:(id)a3 forKey:(id)a4;
- (void)startEventProcessor:(id)a3 mainDisplayObserver:(id)a4 deliveryManager:(id)a5 dispatcherProvider:(id)a6;
- (void)startEventRouting;
- (void)startHIDSystem;
- (void)unregisterIOHIDServicesCallback:(void *)a3 matchingDictionary:(id)a4 target:(void *)a5 refCon:(void *)a6;
@end

@implementation BKHIDSystem

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2935 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2935, &__block_literal_global_2936);
  }

  v3 = sharedInstance___singleton;

  return v3;
}

- (BKHIDSystemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)buffer:(id)a3 drainEvent:(__IOHIDEvent *)a4 withContext:(id)a5 sender:(id)a6 sequence:(id)a7 toResolution:(id)a8
{
  v22 = a4;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [(BKHIDSystem *)self dispatcherProvider];
  v20 = [v19 dispatcherForEvent:a4];
  v21 = [v15 processor];
  [v21 processEvent:&v22 withContext:v17 buffer:v18 sequence:v15 sender:v16 dispatcher:v20 resolution:v14];
}

- (void)requestBufferReevaluationWithContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__BKHIDSystem_requestBufferReevaluationWithContext___block_invoke;
  v6[3] = &unk_2784F7270;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BKHIDSystem *)self _asyncScheduleWithHIDEventQuue:v6];
}

- (void)unregisterIOHIDServicesCallback:(void *)a3 matchingDictionary:(id)a4 target:(void *)a5 refCon:(void *)a6
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_HIDEventSystem)
  {
    v6 = *MEMORY[0x277D85DE8];

    MEMORY[0x282121D80]();
  }

  else
  {
    v8 = BKLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_223CBE000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _HIDEventSystem not initialized", &v11, 0xCu);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)registerIOHIDServicesCallback:(void *)a3 matchingDictionary:(id)a4 target:(void *)a5 refCon:(void *)a6
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_HIDEventSystem)
  {
    v6 = *MEMORY[0x277D85DE8];

    MEMORY[0x282121D58]();
  }

  else
  {
    v8 = BKLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_223CBE000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _HIDEventSystem not initialized", &v11, 0xCu);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (id)IOHIDServicesMatching:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_HIDEventSystem)
  {
    v3 = IOHIDEventSystemCopyServices();
  }

  else
  {
    v5 = BKLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: _HIDEventSystem not initialized", &v9, 0xCu);
    }

    v3 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_asyncScheduleWithHIDEventQuue:(id)a3
{
  v3 = a3;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x277CBF058], v3);

  CFRunLoopWakeUp(Main);
}

- (__IOHIDEvent)systemEventOfType:(unsigned int)a3 matchingEvent:(__IOHIDEvent *)a4 options:(unsigned int)a5
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_HIDEventSystem)
  {
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282121D20]();
  }

  else
  {
    v7 = BKLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      Name = IOHIDEventTypeGetName();
      v12 = 2114;
      v13 = a4;
      _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "HIDSystem is not fully initialized, dropping systemEventOfType request: %{public}@ %{public}@", &v10, 0x16u);
    }

    v8 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (void)injectGSEvent:(__GSEvent *)a3
{
  if (a3)
  {
    CFRetain(a3);
    gsEventQueue = self->_gsEventQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__BKHIDSystem_injectGSEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a3;
    dispatch_async(gsEventQueue, block);
  }
}

void __29__BKHIDSystem_injectGSEvent___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = BKLogEventDelivery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v15 = 67109120;
    Type = GSEventGetType();
    _os_log_error_impl(&dword_223CBE000, v3, OS_LOG_TYPE_ERROR, "Received a GSEvent of type %d, but GSEvents are no longer supported", &v15, 8u);
  }

  GSEventRecord = _GSEventGetGSEventRecord();
  if (!GSEventShouldRouteToFrontMost())
  {
    v10 = BKLogEventDelivery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = GSEventGetType();
      v15 = 67109120;
      Type = v11;
      v12 = "Received a GSEvent that is not designated as being routed to frontmost (type %d), routing to system shell";
LABEL_12:
      _os_log_impl(&dword_223CBE000, v10, OS_LOG_TYPE_DEFAULT, v12, &v15, 8u);
    }

LABEL_13:

    BKSendGSEvent(GSEventRecord, 0, 1);
    goto LABEL_14;
  }

  GSEventRemoveShouldRouteToFrontMost();
  if (GSEventGetType() != 50)
  {
    v10 = BKLogEventDelivery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = GSEventGetType();
      v15 = 67109120;
      Type = v13;
      v12 = "Received a frontmost non-orientation GSEvent (type:%d), routing to system shell";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = GSEventDeviceOrientation();
  v6 = v5;
  v7 = BKLogEventDelivery();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109120;
    Type = v5;
    _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "Got an orientation event from a GSEvent: %d", &v15, 8u);
  }

  v8 = +[BKHIDSystem sharedInstance];
  v9 = [v8 delegate];
  [v9 hidSystem:v8 receivedUpdatedDeviceOrientation:v6];

LABEL_14:
  CFRelease(*(a1 + 32));
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setSystemProperty:(id)a3 forKey:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v7 = a4;
  if (!self->_HIDEventSystem)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"need HID system"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BKHIDSystem.m";
      v22 = 1024;
      v23 = 170;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CE6354);
  }

  IOHIDEventSystemSetProperty();

  v8 = *MEMORY[0x277D85DE8];
}

- (id)systemPropertyForKey:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!self->_HIDEventSystem)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"need HID system"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = @"BKHIDSystem.m";
      v21 = 1024;
      v22 = 162;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CE64DCLL);
  }

  v6 = IOHIDEventSystemGetProperty();

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)startEventProcessor:(id)a3 mainDisplayObserver:(id)a4 deliveryManager:(id)a5 dispatcherProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_storeStrong(&self->_eventProcessor, a3);
  objc_storeStrong(&self->_mainDisplayObserver, a4);
  objc_storeStrong(&self->_dispatcherProvider, a6);
  objc_storeStrong(&self->_deliveryManager, a5);
  objc_initWeak(&location, self);
  mainDisplayObserver = self->_mainDisplayObserver;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __90__BKHIDSystem_startEventProcessor_mainDisplayObserver_deliveryManager_dispatcherProvider___block_invoke;
  v20 = &unk_2784F6F90;
  objc_copyWeak(&v21, &location);
  [(BKHIDDisplayChangeObserving *)mainDisplayObserver setDisplayChangedHandler:&v17];
  v16 = [(BKHIDDisplayChangeObserving *)self->_mainDisplayObserver display:v17];
  [(BKHIDEventDeliveryManager *)self->_deliveryManager setMainDisplay:v16];
  [(BKHIDEventDeliveryManager *)self->_deliveryManager setBufferingDispatcher:self];
  [(BKHIDSystem *)self _beginHandlingEvents];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __90__BKHIDSystem_startEventProcessor_mainDisplayObserver_deliveryManager_dispatcherProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__BKHIDSystem_startEventProcessor_mainDisplayObserver_deliveryManager_dispatcherProvider___block_invoke_2;
  v6[3] = &unk_2784F7270;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  [WeakRetained _asyncScheduleWithHIDEventQuue:v6];
}

- (void)startEventRouting
{
  __HIDClientConnectionManager = [[BKHIDClientConnectionManager alloc] initWithHIDEventSystem:self->_HIDEventSystem];

  MEMORY[0x2821F96F8]();
}

- (void)startHIDSystem
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_HIDEventSystem)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"IOHIDEventSystem creation failed"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v21 = 138544642;
      v22 = v10;
      v23 = 2114;
      v24 = v12;
      v25 = 2048;
      v26 = self;
      v27 = 2114;
      v28 = @"BKHIDSystem.m";
      v29 = 1024;
      v30 = 108;
      v31 = 2114;
      v32 = v9;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v21, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CE6914);
  }

  if (!IOHIDEventSystemOpen())
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open HID system fullly"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v21 = 138544642;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      v25 = 2048;
      v26 = self;
      v27 = 2114;
      v28 = @"BKHIDSystem.m";
      v29 = 1024;
      v30 = 111;
      v31 = 2114;
      v32 = v13;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v21, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CE6A00);
  }

  v4 = IOHIDEventSystemClientCreate();
  self->_HIDEventSystemClient = v4;
  if (!v4)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"BKHID: Failed to create system client"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = 138544642;
      v22 = v18;
      v23 = 2114;
      v24 = v20;
      v25 = 2048;
      v26 = self;
      v27 = 2114;
      v28 = @"BKHIDSystem.m";
      v29 = 1024;
      v30 = 114;
      v31 = 2114;
      v32 = v17;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v21, 0x3Au);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CE6AECLL);
  }

  v5 = v4;
  Main = CFRunLoopGetMain();
  v7 = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CBF058];

  MEMORY[0x282121C68](v5, Main, v8);
}

- (void)dealloc
{
  HIDEventSystem = self->_HIDEventSystem;
  if (HIDEventSystem)
  {
    CFRelease(HIDEventSystem);
  }

  HIDEventSystemClient = self->_HIDEventSystemClient;
  if (HIDEventSystemClient)
  {
    CFRelease(HIDEventSystemClient);
  }

  v5.receiver = self;
  v5.super_class = BKHIDSystem;
  [(BKHIDSystem *)&v5 dealloc];
}

- (BKHIDSystem)init
{
  v10.receiver = self;
  v10.super_class = BKHIDSystem;
  v2 = [(BKHIDSystem *)&v10 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    gsEventQueue = v2->_gsEventQueue;
    v2->_gsEventQueue = Serial;

    v5 = [BKHIDEventSenderCache alloc];
    v6 = [(BKHIDEventSenderCache *)v5 initWithQueue:MEMORY[0x277D85CD0]];
    senderCache = v2->_senderCache;
    v2->_senderCache = v6;

    v8 = +[BKHIDAccessibilitySender accessibilityHIDServices];
    [(BKHIDEventSenderCache *)v2->_senderCache addSenderInfo:v8];
    v2->_HIDEventSystem = IOHIDEventSystemCreate();
  }

  return v2;
}

uint64_t __29__BKHIDSystem_sharedInstance__block_invoke()
{
  sharedInstance___singleton = objc_alloc_init(BKHIDSystem);

  return MEMORY[0x2821F96F8]();
}

@end