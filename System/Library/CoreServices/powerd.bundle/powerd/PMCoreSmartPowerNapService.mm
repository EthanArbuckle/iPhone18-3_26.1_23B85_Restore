@interface PMCoreSmartPowerNapService
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PMCoreSmartPowerNapService)init;
- (void)enterCoreSmartPowerNap;
- (void)exitCoreSmartPowerNap;
- (void)registerForLockStateUpdates;
- (void)registerWithIdentifier:(id)identifier;
- (void)setCSPNMotionAlarmStartThreshold:(unsigned int)threshold;
- (void)setCSPNMotionAlarmThreshold:(unsigned int)threshold;
- (void)setCSPNQueryDelta:(unsigned int)delta;
- (void)setCSPNRequeryDelta:(unsigned int)delta;
- (void)setState:(unsigned __int8)state;
- (void)syncStateWithHandler:(id)handler;
- (void)unregisterWithIdentifier:(id)identifier;
- (void)updateLockState:(unint64_t)state;
@end

@implementation PMCoreSmartPowerNapService

+ (id)sharedInstance
{
  if (qword_1000AD050 != -1)
  {
    sub_10006AA00();
  }

  v3 = qword_1000AD048;

  return v3;
}

- (PMCoreSmartPowerNapService)init
{
  v16.receiver = self;
  v16.super_class = PMCoreSmartPowerNapService;
  v2 = [(PMCoreSmartPowerNapService *)&v16 initWithMachServiceName:@"com.apple.powerd.coresmartpowernap"];
  if (v2 && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v3 = objc_claimAutoreleasedReturnValue(), v4 = dispatch_queue_create("com.apple.powerd.coresmartpowernap.queue", v3), mainQueue = v2->_mainQueue, v2->_mainQueue = v4, mainQueue, v3, v2->_mainQueue))
  {
    [(PMCoreSmartPowerNapService *)v2 setDelegate:v2];
    v6 = os_log_create("com.apple.powerd", "coreSmartPowerNap");
    v7 = qword_1000AB9A8;
    qword_1000AB9A8 = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    clients = v2->_clients;
    v2->_clients = v8;

    v2->_current_state = 0;
    v10 = [[PMCoreSmartPowerNapPredictor alloc] initWithQueue:v2->_mainQueue];
    predictor = v2->_predictor;
    v2->_predictor = v10;

    v2->_async_assertions = 1;
    v12 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CSPN: Listening to xpc connections", v15, 2u);
    }

    [(PMCoreSmartPowerNapService *)v2 resume];
    [(PMCoreSmartPowerNapService *)v2 registerForLockStateUpdates];
    v13 = v2;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)registerForLockStateUpdates
{
  selfCopy = self;
  out_token = 0;
  mainQueue = [(PMCoreSmartPowerNapService *)self mainQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016CB4;
  v5[3] = &unk_1000991E8;
  v5[4] = selfCopy;
  LODWORD(selfCopy) = notify_register_dispatch("com.apple.springboard.lockstate", &out_token, mainQueue, v5);

  if (selfCopy)
  {
    v4 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10006AA14(v4);
    }
  }
}

- (void)updateLockState:(unint64_t)state
{
  predictor = [(PMCoreSmartPowerNapService *)self predictor];
  [predictor updateInactiveState:state];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____PMCoreSmartPowerNapProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v11[0] = 67109120;
    v11[1] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CSPN: listener: accepted new connection from pid %d", v11, 8u);
  }

  [connectionCopy setExportedObject:self];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____PMCoreSmartPowerNapCallbackProtocol];
  [connectionCopy setRemoteObjectInterface:v9];

  [connectionCopy resume];
  return 1;
}

- (void)registerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSXPCConnection currentConnection];
  mainQueue = [(PMCoreSmartPowerNapService *)self mainQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048054;
  block[3] = &unk_100099278;
  v10 = identifierCopy;
  v11 = v5;
  selfCopy = self;
  v7 = v5;
  v8 = identifierCopy;
  dispatch_async(mainQueue, block);
}

- (void)unregisterWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mainQueue = [(PMCoreSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000483A0;
  v7[3] = &unk_1000992A0;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(mainQueue, v7);
}

- (void)setState:(unsigned __int8)state
{
  mainQueue = [(PMCoreSmartPowerNapService *)self mainQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000487E4;
  v6[3] = &unk_1000991C0;
  stateCopy = state;
  v6[4] = self;
  dispatch_async(mainQueue, v6);
}

- (void)syncStateWithHandler:(id)handler
{
  handlerCopy = handler;
  mainQueue = [(PMCoreSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000489E8;
  v7[3] = &unk_1000992E8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(mainQueue, v7);
}

- (void)enterCoreSmartPowerNap
{
  v3 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: enterCoreSmartPowerNap", buf, 2u);
  }

  [(PMCoreSmartPowerNapService *)self updateState:1];
  if (!sub_100004D48())
  {
    v4 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: changing idle timer and disabling async assertions", v10, 2u);
    }

    if (!notify_register_check("com.apple.powerd.assertionoffloadtimer", &dword_1000AD058))
    {
      notify_set_state(dword_1000AD058, 1uLL);
      notify_post("com.apple.powerd.assertionoffloadtimer");
    }

    [(PMCoreSmartPowerNapService *)self setAsync_assertions:0];
    v5 = sub_10001B168();
    if (v5)
    {
      v6 = v5;
      v7 = [NSNumber numberWithInt:1];
      CFProperty = IORegistryEntryCreateCFProperty(v6, @"System Idle Seconds", kCFAllocatorDefault, 0);
      TypeID = CFNumberGetTypeID();
      if (CFProperty)
      {
        if (CFGetTypeID(CFProperty) == TypeID)
        {
          [(PMCoreSmartPowerNapService *)self setCached_idle_timer:CFProperty];
          IORegistryEntrySetCFProperty(v6, @"System Idle Seconds", v7);
        }
      }
    }
  }
}

- (void)exitCoreSmartPowerNap
{
  v3 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: exitCoreSmartPowerNap", buf, 2u);
  }

  [(PMCoreSmartPowerNapService *)self updateState:0];
  v4 = sub_10001B168();
  if (v4)
  {
    v5 = v4;
    cached_idle_timer = [(PMCoreSmartPowerNapService *)self cached_idle_timer];

    if (cached_idle_timer)
    {
      v7 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: changing back idle timer", v11, 2u);
      }

      cached_idle_timer2 = [(PMCoreSmartPowerNapService *)self cached_idle_timer];
      IORegistryEntrySetCFProperty(v5, @"System Idle Seconds", cached_idle_timer2);
    }
  }

  if (![(PMCoreSmartPowerNapService *)self async_assertions])
  {
    v9 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: enabling async assertions", v10, 2u);
    }

    notify_set_state(dword_1000AD058, 0);
    notify_post("com.apple.powerd.assertionoffloadtimer");
  }
}

- (void)setCSPNQueryDelta:(unsigned int)delta
{
  v5 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    deltaCopy = delta;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating CSPN Query delta to %u", buf, 8u);
  }

  mainQueue = [(PMCoreSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100048ED0;
  v7[3] = &unk_100099310;
  v7[4] = self;
  deltaCopy2 = delta;
  dispatch_async(mainQueue, v7);
}

- (void)setCSPNRequeryDelta:(unsigned int)delta
{
  v5 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    deltaCopy = delta;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating CSPN requery delta to %u", buf, 8u);
  }

  mainQueue = [(PMCoreSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100049038;
  v7[3] = &unk_100099310;
  v7[4] = self;
  deltaCopy2 = delta;
  dispatch_async(mainQueue, v7);
}

- (void)setCSPNMotionAlarmThreshold:(unsigned int)threshold
{
  v5 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    thresholdCopy = threshold;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating CSPN motion alarm threshold to %u", buf, 8u);
  }

  mainQueue = [(PMCoreSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000491A4;
  v7[3] = &unk_100099310;
  v7[4] = self;
  thresholdCopy2 = threshold;
  dispatch_async(mainQueue, v7);
}

- (void)setCSPNMotionAlarmStartThreshold:(unsigned int)threshold
{
  v5 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    thresholdCopy = threshold;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating CSPN motion alarm start threshold to %u", buf, 8u);
  }

  mainQueue = [(PMCoreSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004930C;
  v7[3] = &unk_100099310;
  v7[4] = self;
  thresholdCopy2 = threshold;
  dispatch_async(mainQueue, v7);
}

@end