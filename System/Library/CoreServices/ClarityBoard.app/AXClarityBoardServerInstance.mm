@interface AXClarityBoardServerInstance
- (AXClarityBoardServerInstance)init;
- (AXClarityBoardServerInstanceDelegate)delegate;
- (id)_activeInterfaceOrientation:(id)a3;
- (id)_goHome:(id)a3;
- (id)_isSystemSleeping:(id)a3;
- (id)_registerActionHandler:(id)a3;
- (id)_setOrientation:(id)a3;
- (id)_systemAppPID:(id)a3;
- (id)_unlockDevice:(id)a3;
- (id)_wakeUpDeviceIfNecessary:(id)a3;
- (void)_startSystemAppServerIfNeeded;
- (void)dealloc;
- (void)notifyActionOccurredWithType:(int64_t)a3 payload:(id)a4;
@end

@implementation AXClarityBoardServerInstance

- (AXClarityBoardServerInstance)init
{
  v18.receiver = self;
  v18.super_class = AXClarityBoardServerInstance;
  v2 = [(AXClarityBoardServerInstance *)&v18 init];
  v3 = v2;
  if (v2)
  {
    [(AXClarityBoardServerInstance *)v2 _startSystemAppServerIfNeeded];
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = kAXSAccessibilityEnabledNotification;
    v6 = +[NSOperationQueue mainQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100005190;
    v16[3] = &unk_1002FC1C8;
    v7 = v3;
    v17 = v7;
    v8 = [v4 addObserverForName:v5 object:0 queue:v6 usingBlock:v16];
    accessibilityEnabledNotificationObserverToken = v7->_accessibilityEnabledNotificationObserverToken;
    v7->_accessibilityEnabledNotificationObserverToken = v8;

    v10 = [AXServerInstanceActionHandlerHelper alloc];
    v11 = [v10 initWithRegistrationMessageKey:AXClarityBoardMessageKeyRegisterActionHandler actionResultMessageKey:AXClarityBoardMessageKeyActionResult];
    actionHandlerHelper = v7->_actionHandlerHelper;
    v7->_actionHandlerHelper = v11;

    v13 = objc_opt_new();
    processWatcher = v7->_processWatcher;
    v7->_processWatcher = v13;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_accessibilityEnabledNotificationObserverToken];

  v4.receiver = self;
  v4.super_class = AXClarityBoardServerInstance;
  [(AXClarityBoardServerInstance *)&v4 dealloc];
}

- (void)notifyActionOccurredWithType:(int64_t)a3 payload:(id)a4
{
  v6 = a4;
  v7 = [(AXClarityBoardServerInstance *)self actionHandlerHelper];
  [v7 notifyActionOccurredWithType:a3 payload:v6];
}

- (void)_startSystemAppServerIfNeeded
{
  if (![(AXClarityBoardServerInstance *)self isServerRunning]&& _AXSAccessibilityEnabled())
  {
    [(AXClarityBoardServerInstance *)self setIsServerRunning:1];
    v3 = [AXIPCServer alloc];
    v4 = [v3 initWithServiceName:AXClarityBoardServerServiceName perPidService:0];
    [(AXClarityBoardServerInstance *)self _addHandlerForServer:v4 selector:"_systemAppPID:" key:AXClarityBoardMessageKeyPID];
    [(AXClarityBoardServerInstance *)self _addHandlerForServer:v4 selector:"_activeInterfaceOrientation:" key:AXClarityBoardMessageKeyActiveInterfaceOrientation];
    [(AXClarityBoardServerInstance *)self _addHandlerForServer:v4 selector:"_registerActionHandler:" key:AXClarityBoardMessageKeyRegisterActionHandler];
    [(AXClarityBoardServerInstance *)self _addHandlerForServer:v4 selector:"_isSystemSleeping:" key:AXClarityBoardMessageKeyIsSystemSleeping];
    [(AXClarityBoardServerInstance *)self _addHandlerForServer:v4 selector:"_wakeUpDeviceIfNecessary:" key:AXClarityBoardMessageKeyWakeUpDeviceIfNecessary];
    [(AXClarityBoardServerInstance *)self _addHandlerForServer:v4 selector:"_setOrientation:" key:AXClarityBoardMessageKeySetOrientation];
    [(AXClarityBoardServerInstance *)self _addHandlerForServer:v4 selector:"_goHome:" key:AXClarityBoardMessageKeyGoHome];
    [(AXClarityBoardServerInstance *)self _addHandlerForServer:v4 selector:"_unlockDevice:" key:AXClarityBoardMessageKeyUnlockDevice];
    v11 = 0;
    [v4 startServerWithError:&v11];
    v5 = v11;
    if (v5)
    {
      v6 = +[CLFLog commonLog];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100283990(self, v5, v6);
      }
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000055AC;
      v10[3] = &unk_1002FC1F0;
      v10[4] = self;
      [v4 setClientInvalidationCallback:v10];
      v7 = +[CLFLog commonLog];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started system app server for %@.", buf, 0xCu);
      }

      [(AXClarityBoardServerInstance *)self setServer:v4];
    }
  }
}

- (id)_systemAppPID:(id)a3
{
  v3 = getpid();
  v4 = [AXIPCMessage alloc];
  v5 = AXClarityBoardMessageKeyPID;
  v10 = AXClarityBoardResultKey;
  v6 = [NSNumber numberWithInt:v3];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v4 initWithKey:v5 payload:v7];

  return v8;
}

- (id)_activeInterfaceOrientation:(id)a3
{
  v4 = [(AXClarityBoardServerInstance *)self delegate];
  v5 = [v4 activeInterfaceOrientationForServerInstance:self];

  v6 = [AXIPCMessage alloc];
  v7 = AXClarityBoardMessageKeyActiveInterfaceOrientation;
  v12 = AXClarityBoardResultKey;
  v8 = [NSNumber numberWithInteger:v5];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [v6 initWithKey:v7 payload:v9];

  return v10;
}

- (id)_registerActionHandler:(id)a3
{
  v4 = a3;
  v5 = [(AXClarityBoardServerInstance *)self actionHandlerHelper];
  v6 = [v5 handleActionHandlerRegistrationMessage:v4];

  return v6;
}

- (id)_isSystemSleeping:(id)a3
{
  v4 = [(AXClarityBoardServerInstance *)self delegate];
  v5 = [v4 isSystemSleepingForServerInstance:self];

  v6 = [AXIPCMessage alloc];
  v7 = AXClarityBoardMessageKeyIsSystemSleeping;
  v12 = AXClarityBoardResultKey;
  v8 = [NSNumber numberWithBool:v5];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [v6 initWithKey:v7 payload:v9];

  return v10;
}

- (id)_wakeUpDeviceIfNecessary:(id)a3
{
  v4 = [(AXClarityBoardServerInstance *)self delegate];
  [v4 wakeUpDeviceIfNecessaryForServerInstance:self];

  return 0;
}

- (id)_setOrientation:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKeyedSubscript:AXClarityBoardOrientationKey];
  v5 = [v4 integerValue];

  v6 = +[CLFLog commonLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set orientation via server to: %ld", &v8, 0xCu);
  }

  [AXUIDeviceUtilities setOrientation:v5];
  return 0;
}

- (id)_goHome:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:CLBGoHomeNotification object:0];

  return 0;
}

- (id)_unlockDevice:(id)a3
{
  v4 = [(AXClarityBoardServerInstance *)self delegate];
  [v4 unlockDeviceForServerInstance:self];

  return 0;
}

- (AXClarityBoardServerInstanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end