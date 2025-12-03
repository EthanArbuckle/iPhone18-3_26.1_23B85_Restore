@interface MISManager
+ (id)sharedManager;
- (MISManager)init;
- (void)attachMIS;
- (void)authenticate;
- (void)detachMIS;
- (void)getState:(int *)state andReason:(int *)reason;
- (void)init;
- (void)readMISState:(int *)state andReason:(int *)reason;
- (void)sendStateUpdate;
- (void)setState:(int)state;
- (void)stopService;
@end

@implementation MISManager

+ (id)sharedManager
{
  v3 = sharedInstance;
  if (!sharedInstance)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedInstance;
    sharedInstance = v4;

    v3 = sharedInstance;
  }

  return v3;
}

- (MISManager)init
{
  v14.receiver = self;
  v14.super_class = MISManager;
  v2 = [(MISManager *)&v14 init];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = WMSLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(MISManager *)v3 init];
    }
  }

  v2->_netClient = 0;
  *&v2->_state = 1020;
  v2->_needStateUpdate = 1;
  v13.version = 0;
  memset(&v13.retain, 0, 24);
  v4 = v2;
  v13.info = v4;
  v5 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  radioPrefs = v4->_radioPrefs;
  v4->_radioPrefs = v5;

  v7 = SCDynamicStoreCreate(0, @"com.apple.wirelessmodemsettings.MISManager", __SCDynamicStoreCallback, &v13);
  v4->_scDynamicStore = v7;
  if (v7)
  {
    v8 = WMSLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MISManager *)v8 init];
    }

    SCDynamicStoreAddWatchedKey();
    v4->_scRunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v4->_scDynamicStore, 0);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v4->_scRunLoopSource, *MEMORY[0x277CBF048]);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v4 selector:sel_applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v4 selector:sel_applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];

  CTTelephonyCenterGetDefault();
  CTTelephonyCenterAddObserver();
  [(MISManager *)v4 attachMIS];
  return v4;
}

- (void)attachMIS
{
  if (!self->_netClient)
  {
    v9 = v2;
    v10 = v3;
    v5 = WMSLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MISManager attachMIS];
    }

    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__MISManager_attachMIS__block_invoke_22;
    v7[3] = &unk_278BB5388;
    v7[4] = self;
    v8 = &__block_literal_global_2;
    dispatch_async(v6, v7);
  }
}

uint64_t __23__MISManager_attachMIS__block_invoke(int a1, int a2, xpc_object_t xdict)
{
  if (a2 == 1001 && xpc_dictionary_get_uint64(xdict, *MEMORY[0x277D2C988]) == 5002)
  {
    v3 = WMSLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __23__MISManager_attachMIS__block_invoke_cold_1();
    }

    v4 = +[MISManager sharedManager];
    [v4 stopService];
  }

  return 0;
}

void __23__MISManager_attachMIS__block_invoke_22(uint64_t a1)
{
  *(*(a1 + 32) + 24) = _NETRBClientCreate();
  v2 = *(*(a1 + 32) + 24);
  v3 = WMSLogComponent();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v4)
    {
      __23__MISManager_attachMIS__block_invoke_22_cold_1();
    }
  }

  else if (v4)
  {
    __23__MISManager_attachMIS__block_invoke_22_cold_2();
  }
}

- (void)detachMIS
{
  if (self->_netClient)
  {
    v3 = WMSLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [MISManager detachMIS];
    }

    _NETRBClientDestroy();
    self->_netClient = 0;
  }
}

- (void)stopService
{
  if (self->_netClient)
  {
    v2 = WMSLogComponent();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [MISManager stopService];
    }

    _NETRBClientStopService();
  }
}

- (void)authenticate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_23C15F000, log, OS_LOG_TYPE_ERROR, "Skipping authentication check (state: %u, reason: %u)", v5, 0xEu);
}

- (void)setState:(int)state
{
  if ((state & 0xFFFFFFFE) != 0x3FE)
  {
    [(MISManager *)a2 setState:?];
  }

  if (self->_netClient)
  {
    v5 = WMSLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MISManager *)state == 1023 setState:v5];
    }

    _NETRBClientSetGlobalServiceState();
  }
}

- (void)getState:(int *)state andReason:(int *)reason
{
  if (self->_needStateUpdate)
  {
    [(MISManager *)self readMISState:&self->_state andReason:&self->_reason];
    self->_needStateUpdate = 0;
  }

  if (state)
  {
    *state = self->_state;
  }

  if (reason)
  {
    *reason = self->_reason;
  }
}

- (void)readMISState:(int *)state andReason:(int *)reason
{
  state = self->_state;
  reason = self->_reason;
  v8 = SCDynamicStoreCopyValue(self->_scDynamicStore, @"com.apple.MobileInternetSharing");
  v11 = v8;
  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"State"];
    state = [v9 intValue];

    v10 = [v11 objectForKeyedSubscript:@"Reason"];
    reason = [v10 intValue];
  }

  if (state)
  {
    *state = state;
  }

  if (reason)
  {
    *reason = reason;
  }
}

- (void)sendStateUpdate
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = 0;
  [(MISManager *)self readMISState:&v13 + 4 andReason:&v13];
  state = self->_state;
  if (HIDWORD(v13) != state)
  {
    reason = self->_reason;
    v4 = v13;
    goto LABEL_5;
  }

  v4 = v13;
  reason = self->_reason;
  if (v13 != reason)
  {
LABEL_5:
    NSLog(&cfstr_MisStateChange.isa, state, HIDWORD(v13), reason, v4);
    v14[0] = @"State";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v13)];
    v15[0] = v6;
    v14[1] = @"Reason";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
    v15[1] = v7;
    v14[2] = @"PreviousState";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
    v15[2] = v8;
    v14[3] = @"PreviousReason";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_reason];
    v15[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

    v11 = v13;
    self->_state = HIDWORD(v13);
    self->_reason = v11;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MISManagerStateChangedNotification" object:0 userInfo:v10];
  }
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "com.apple.MobileInternetSharing";
  _os_log_error_impl(&dword_23C15F000, log, OS_LOG_TYPE_ERROR, "Now watching dynamic store key %s", &v1, 0xCu);
}

- (void)setState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MISManager.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"(state == NETRB_SVC_STATE_ON) || (state == NETRB_SVC_STATE_OFF)"}];
}

- (void)setState:(char)a1 .cold.2(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = "OFF";
  if (a1)
  {
    v2 = "ON";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_23C15F000, a2, OS_LOG_TYPE_ERROR, "Setting tethering state %s", &v3, 0xCu);
}

@end