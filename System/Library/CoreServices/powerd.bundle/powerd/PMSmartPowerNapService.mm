@interface PMSmartPowerNapService
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PMSmartPowerNapService)init;
- (void)backlight:(id)backlight didChangeAlwaysOnEnabled:(BOOL)enabled;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)enterSmartPowerNap;
- (void)exitSmartPowerNap;
- (void)registerForBacklightUpdates;
- (void)registerForLockStateUpdates;
- (void)registerForPluginStateUpdates;
- (void)registerWithIdentifier:(id)identifier;
- (void)setSPNMotionAlarmStartThreshold:(unsigned int)threshold;
- (void)setSPNMotionAlarmThreshold:(unsigned int)threshold;
- (void)setSPNReentryCoolOffPeriod:(unsigned int)period;
- (void)setSPNReentryDelaySeconds:(unsigned int)seconds;
- (void)setSPNRequeryDelta:(unsigned int)delta;
- (void)setState:(unsigned __int8)state;
- (void)syncStateWithHandler:(id)handler;
- (void)unregisterWithIdentifier:(id)identifier;
- (void)updateAmbientState:(BOOL)state;
- (void)updateLockState:(unint64_t)state;
@end

@implementation PMSmartPowerNapService

+ (id)sharedInstance
{
  if (qword_1000AC9C0 != -1)
  {
    sub_1000626D4();
  }

  v3 = qword_1000AC9B8;

  return v3;
}

- (PMSmartPowerNapService)init
{
  v16.receiver = self;
  v16.super_class = PMSmartPowerNapService;
  v2 = [(PMSmartPowerNapService *)&v16 initWithMachServiceName:@"com.apple.powerd.smartpowernap"];
  if (v2 && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v3 = objc_claimAutoreleasedReturnValue(), v4 = dispatch_queue_create("com.apple.powerd.smartpowernap.queue", v3), mainQueue = v2->_mainQueue, v2->_mainQueue = v4, mainQueue, v3, v2->_mainQueue))
  {
    [(PMSmartPowerNapService *)v2 setDelegate:v2];
    v6 = os_log_create("com.apple.powerd", "smartPowerNap");
    v7 = qword_1000AB7D0;
    qword_1000AB7D0 = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    clients = v2->_clients;
    v2->_clients = v8;

    v2->_current_state = 0;
    v10 = [[PMSmartPowerNapPredictor alloc] initWithQueue:v2->_mainQueue];
    predictor = v2->_predictor;
    v2->_predictor = v10;

    v12 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SPN: Listening to xpc connections", v15, 2u);
    }

    [(PMSmartPowerNapService *)v2 resume];
    [(PMSmartPowerNapService *)v2 registerForLockStateUpdates];
    [(PMSmartPowerNapService *)v2 registerForBacklightUpdates];
    [(PMSmartPowerNapService *)v2 registerForPluginStateUpdates];
    v13 = v2;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateAmbientState:(BOOL)state
{
  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C704;
  v6[3] = &unk_1000991C0;
  v6[4] = self;
  stateCopy = state;
  dispatch_async(mainQueue, v6);
}

- (void)registerForLockStateUpdates
{
  selfCopy = self;
  out_token = 0;
  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016BF0;
  v5[3] = &unk_1000991E8;
  v5[4] = selfCopy;
  LODWORD(selfCopy) = notify_register_dispatch("com.apple.springboard.lockstate", &out_token, mainQueue, v5);

  if (selfCopy)
  {
    v4 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_1000626E8(v4);
    }
  }
}

- (void)updateLockState:(unint64_t)state
{
  predictor = [(PMSmartPowerNapService *)self predictor];
  [predictor updateLockState:state];
}

- (void)registerForPluginStateUpdates
{
  selfCopy = self;
  out_token = 0;
  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C944;
  v5[3] = &unk_1000991E8;
  v5[4] = selfCopy;
  LODWORD(selfCopy) = notify_register_dispatch("com.apple.system.powersources.source", &out_token, mainQueue, v5);

  if (selfCopy)
  {
    v4 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_10006272C(v4);
    }
  }
}

- (void)registerForBacklightUpdates
{
  v3 = dispatch_time(0, 1000000000);
  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CA80;
  block[3] = &unk_100099210;
  block[4] = self;
  dispatch_after(v3, mainQueue, block);
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  changeRequest = [event changeRequest];
  sourceEvent = [changeRequest sourceEvent];
  if (state != 2)
  {
    if (state > 1)
    {
      goto LABEL_10;
    }

    v12 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Backlight turned off", buf, 2u);
    }

LABEL_9:
    v13 = state == 2;
    mainQueue = [(PMSmartPowerNapService *)self mainQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001CCB8;
    v15[3] = &unk_1000991C0;
    v15[4] = self;
    v16 = v13;
    dispatch_async(mainQueue, v15);

    goto LABEL_10;
  }

  v9 = sourceEvent;
  v10 = NSStringFromBLSBacklightChangeSourceEvent();
  v11 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Backlight turned on due to %@", buf, 0xCu);
  }

  if ((v9 - 2) <= 2)
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (void)backlight:(id)backlight didChangeAlwaysOnEnabled:(BOOL)enabled
{
  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CDA4;
  v7[3] = &unk_1000991C0;
  v7[4] = self;
  enabledCopy = enabled;
  dispatch_async(mainQueue, v7);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____PMSmartPowerNapProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v11[0] = 67109120;
    v11[1] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SPN: listener: accepted new connection from pid %d", v11, 8u);
  }

  [connectionCopy setExportedObject:self];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____PMSmartPowerNapCallbackProtocol];
  [connectionCopy setRemoteObjectInterface:v9];

  [connectionCopy resume];
  return 1;
}

- (void)registerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSXPCConnection currentConnection];
  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D00C;
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
  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D358;
  v7[3] = &unk_1000992A0;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(mainQueue, v7);
}

- (void)setState:(unsigned __int8)state
{
  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001D79C;
  v6[3] = &unk_1000991C0;
  stateCopy = state;
  v6[4] = self;
  dispatch_async(mainQueue, v6);
}

- (void)syncStateWithHandler:(id)handler
{
  handlerCopy = handler;
  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D950;
  v7[3] = &unk_1000992E8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(mainQueue, v7);
}

- (void)enterSmartPowerNap
{
  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: enterSmartPowerNap", v4, 2u);
  }

  [(PMSmartPowerNapService *)self updateState:1];
}

- (void)exitSmartPowerNap
{
  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: exitSmartPowerNap", v4, 2u);
  }

  [(PMSmartPowerNapService *)self updateState:0];
}

- (void)setSPNReentryCoolOffPeriod:(unsigned int)period
{
  v5 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SPN Re-entry cool off period", buf, 2u);
  }

  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DBF0;
  v7[3] = &unk_100099310;
  v7[4] = self;
  periodCopy = period;
  dispatch_async(mainQueue, v7);
}

- (void)setSPNReentryDelaySeconds:(unsigned int)seconds
{
  v5 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    secondsCopy = seconds;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SPN Re-entry delay to %u", buf, 8u);
  }

  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DD58;
  v7[3] = &unk_100099310;
  v7[4] = self;
  secondsCopy2 = seconds;
  dispatch_async(mainQueue, v7);
}

- (void)setSPNRequeryDelta:(unsigned int)delta
{
  v5 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    deltaCopy = delta;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SPN requery delta to %u", buf, 8u);
  }

  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DEC0;
  v7[3] = &unk_100099310;
  v7[4] = self;
  deltaCopy2 = delta;
  dispatch_async(mainQueue, v7);
}

- (void)setSPNMotionAlarmThreshold:(unsigned int)threshold
{
  v5 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    thresholdCopy = threshold;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SPN motion alarm threshold to %u", buf, 8u);
  }

  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E028;
  v7[3] = &unk_100099310;
  v7[4] = self;
  thresholdCopy2 = threshold;
  dispatch_async(mainQueue, v7);
}

- (void)setSPNMotionAlarmStartThreshold:(unsigned int)threshold
{
  v5 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    thresholdCopy = threshold;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SPN motion alarm start threshold to %u", buf, 8u);
  }

  mainQueue = [(PMSmartPowerNapService *)self mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E190;
  v7[3] = &unk_100099310;
  v7[4] = self;
  thresholdCopy2 = threshold;
  dispatch_async(mainQueue, v7);
}

@end