@interface MTRemoteFilterManager
- (BOOL)dpadButtonIsPressed;
- (BOOL)isSiriRemoteButtonService:(id)service;
- (BOOL)isSiriRemoteCircularTouchService:(id)service;
- (MTRemoteFilterManager)init;
- (id)createXpcServiceConnection;
- (id)filterButtonEvent:(id)event fromService:(id)service;
- (id)filterDigitizerEvent:(id)event fromService:(id)service;
- (id)filterEvent:(id)event fromService:(id)service;
- (id)getPathIDs:(id)ds;
- (void)dealloc;
- (void)registerService:(id)service;
- (void)setQueue:(id)queue;
- (void)unregisterService:(id)service;
- (void)updateDPadButtonStatesForEvent:(id)event fromService:(id)service;
- (void)updateTouchDisabledPreference;
@end

@implementation MTRemoteFilterManager

- (MTRemoteFilterManager)init
{
  v14.receiver = self;
  v14.super_class = MTRemoteFilterManager;
  v2 = [(MTSessionFilterManager *)&v14 init];
  if (v2)
  {
    v3 = MTLoggingRemoteFilterManager();
    [(MTRemoteFilterManager *)v2 setLogHandle:v3];

    circularTouchService = v2->_circularTouchService;
    v2->_circularTouchService = 0;

    buttonService = v2->_buttonService;
    v2->_buttonService = 0;

    v2->_upButton = 0;
    v2->_downButton = 0;
    v2->_leftButton = 0;
    v2->_rightButton = 0;
    v2->_touchDisabled = 0;
    v2->_xpcErrorRetry = 1;
    v6 = objc_opt_new();
    activePathIDs = v2->_activePathIDs;
    v2->_activePathIDs = v6;

    v8 = objc_opt_new();
    cancelPathIDs = v2->_cancelPathIDs;
    v2->_cancelPathIDs = v8;

    v10 = objc_opt_new();
    consumePathIDs = v2->_consumePathIDs;
    v2->_consumePathIDs = v10;

    xpcServiceConnection = v2->_xpcServiceConnection;
    v2->_xpcServiceConnection = 0;

    v2->_touchDisabledToken = -1;
  }

  return v2;
}

- (void)dealloc
{
  xpcServiceConnection = [(MTRemoteFilterManager *)self xpcServiceConnection];

  if (xpcServiceConnection)
  {
    xpcServiceConnection2 = [(MTRemoteFilterManager *)self xpcServiceConnection];
    [xpcServiceConnection2 suspend];

    xpcServiceConnection3 = [(MTRemoteFilterManager *)self xpcServiceConnection];
    [xpcServiceConnection3 invalidate];

    [(MTRemoteFilterManager *)self setXpcServiceConnection:0];
  }

  v6.receiver = self;
  v6.super_class = MTRemoteFilterManager;
  [(MTRemoteFilterManager *)&v6 dealloc];
}

- (BOOL)isSiriRemoteButtonService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy conformsToUsagePage:12 usage:1])
  {
    v4 = [serviceCopy propertyForKey:@"AppleBluetoothRemote"];
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isSiriRemoteCircularTouchService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy conformsToUsagePage:12 usage:5])
  {
    v5 = IORegistryEntryIDMatching([serviceCopy serviceID]);
    MatchingService = IOServiceGetMatchingService(0, v5);
    if (MatchingService)
    {
      v7 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"CircularSensor", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v9 = CFProperty;
        v10 = CFGetTypeID(CFProperty);
        if (v10 == CFBooleanGetTypeID())
        {
          logHandle = [(MTRemoteFilterManager *)self logHandle];
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            [(MTRemoteFilterManager *)v9 isSiriRemoteCircularTouchService:logHandle];
          }

          bOOLValue = [v9 BOOLValue];
          goto LABEL_11;
        }

        CFRelease(v9);
      }

      bOOLValue = 0;
LABEL_11:
      IOObjectRelease(v7);
      goto LABEL_12;
    }
  }

  bOOLValue = 0;
LABEL_12:

  return bOOLValue;
}

- (void)registerService:(id)service
{
  serviceCopy = service;
  if ([(MTRemoteFilterManager *)self isSiriRemoteCircularTouchService:serviceCopy])
  {
    logHandle = [(MTRemoteFilterManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = serviceCopy;
      _os_log_impl(&dword_0, logHandle, OS_LOG_TYPE_DEFAULT, "Added circular touch service %@", &v7, 0xCu);
    }

    [(MTRemoteFilterManager *)self setCircularTouchService:serviceCopy];
  }

  else if ([(MTRemoteFilterManager *)self isSiriRemoteButtonService:serviceCopy])
  {
    logHandle2 = [(MTRemoteFilterManager *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = serviceCopy;
      _os_log_impl(&dword_0, logHandle2, OS_LOG_TYPE_DEFAULT, "Added button service %@", &v7, 0xCu);
    }

    [(MTRemoteFilterManager *)self setButtonService:serviceCopy];
  }
}

- (void)unregisterService:(id)service
{
  serviceCopy = service;
  circularTouchService = [(MTRemoteFilterManager *)self circularTouchService];

  if (circularTouchService == serviceCopy)
  {
    logHandle = [(MTRemoteFilterManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, logHandle, OS_LOG_TYPE_DEFAULT, "Removed circular touch service", buf, 2u);
    }

    [(MTRemoteFilterManager *)self setCircularTouchService:0];
  }

  else
  {
    buttonService = [(MTRemoteFilterManager *)self buttonService];

    if (buttonService == serviceCopy)
    {
      logHandle2 = [(MTRemoteFilterManager *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, logHandle2, OS_LOG_TYPE_DEFAULT, "Removed button service", v9, 2u);
      }

      [(MTRemoteFilterManager *)self setButtonService:0];
    }
  }
}

- (id)createXpcServiceConnection
{
  v3 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.SessionFilterPreferenceProvider"];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SessionFilterPreferenceProviderProtocol];
  [v3 setRemoteObjectInterface:v4];

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __51__MTRemoteFilterManager_createXpcServiceConnection__block_invoke;
  v6[3] = &unk_82C0;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v3;
}

void __51__MTRemoteFilterManager_createXpcServiceConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __51__MTRemoteFilterManager_createXpcServiceConnection__block_invoke_cold_1();
    }

    [*(a1 + 32) setXpcServiceConnection:0];
  }
}

- (void)updateTouchDisabledPreference
{
  xpcServiceConnection = self->_xpcServiceConnection;
  if (!xpcServiceConnection)
  {
    createXpcServiceConnection = [(MTRemoteFilterManager *)self createXpcServiceConnection];
    v5 = self->_xpcServiceConnection;
    self->_xpcServiceConnection = createXpcServiceConnection;

    [(NSXPCConnection *)self->_xpcServiceConnection resume];
    xpcServiceConnection = self->_xpcServiceConnection;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __54__MTRemoteFilterManager_updateTouchDisabledPreference__block_invoke;
  v8[3] = &unk_82E8;
  v8[4] = self;
  v6 = [(NSXPCConnection *)xpcServiceConnection remoteObjectProxyWithErrorHandler:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __54__MTRemoteFilterManager_updateTouchDisabledPreference__block_invoke_22;
  v7[3] = &unk_8338;
  v7[4] = self;
  [v6 siriRemoteTouchDisabledWithReply:v7];
}

void __54__MTRemoteFilterManager_updateTouchDisabledPreference__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__MTRemoteFilterManager_updateTouchDisabledPreference__block_invoke_cold_1(v3, v4);
  }

  if ([*(a1 + 32) xpcErrorRetry])
  {
    [*(a1 + 32) setXpcErrorRetry:0];
    [*(a1 + 32) updateTouchDisabledPreference];
  }
}

void __54__MTRemoteFilterManager_updateTouchDisabledPreference__block_invoke_22(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];

  if (v4)
  {
    v5 = [*(a1 + 32) queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __54__MTRemoteFilterManager_updateTouchDisabledPreference__block_invoke_2;
    v6[3] = &unk_8310;
    v6[4] = *(a1 + 32);
    v7 = a2;
    dispatch_async(v5, v6);
  }
}

- (void)setQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = MTRemoteFilterManager;
  [(MTSessionFilterManager *)&v8 setQueue:?];
  if (queue)
  {
    [(MTRemoteFilterManager *)self setXpcErrorRetry:1];
    [(MTRemoteFilterManager *)self updateTouchDisabledPreference];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __34__MTRemoteFilterManager_setQueue___block_invoke;
    v7[3] = &unk_8360;
    v7[4] = self;
    v5 = objc_retainBlock(v7);
    queue = [(MTSessionFilterManager *)self queue];
    notify_register_dispatch("com.apple.TVPeripheralAgent.RemoteClickpadModeDidChange", &self->_touchDisabledToken, queue, v5);
  }

  else
  {
    notify_cancel([(MTRemoteFilterManager *)self touchDisabledToken]);
    [(MTRemoteFilterManager *)self setTouchDisabledToken:0xFFFFFFFFLL];
  }
}

id __34__MTRemoteFilterManager_setQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__MTRemoteFilterManager_setQueue___block_invoke_cold_1();
  }

  [*(a1 + 32) setXpcErrorRetry:1];
  return [*(a1 + 32) updateTouchDisabledPreference];
}

- (id)filterEvent:(id)event fromService:(id)service
{
  eventCopy = event;
  serviceCopy = service;
  type = [eventCopy type];
  if (type == 11)
  {
    v9 = [(MTRemoteFilterManager *)self filterDigitizerEvent:eventCopy fromService:serviceCopy];
  }

  else if (type == 3)
  {
    v9 = [(MTRemoteFilterManager *)self filterButtonEvent:eventCopy fromService:serviceCopy];
  }

  else
  {
    v9 = eventCopy;
  }

  v10 = v9;

  return v10;
}

- (id)getPathIDs:(id)ds
{
  dsCopy = ds;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [dsCopy children];
  v6 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(children);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == 11)
        {
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValueForField:720901]);
          [v4 addObject:v11];
        }
      }

      v7 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)filterDigitizerEvent:(id)event fromService:(id)service
{
  eventCopy = event;
  serviceCopy = service;
  circularTouchService = [(MTRemoteFilterManager *)self circularTouchService];
  if (!circularTouchService || (v8 = circularTouchService, [(MTRemoteFilterManager *)self circularTouchService], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 != serviceCopy))
  {
    v10 = eventCopy;
    goto LABEL_57;
  }

  v57 = serviceCopy;
  v58 = objc_alloc_init(NSMutableArray);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [eventCopy children];
  v11 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
  if (!v11)
  {
    v60 = 0;
    v13 = 0;
    goto LABEL_35;
  }

  v12 = v11;
  v60 = 0;
  v13 = 0;
  v14 = *v69;
  v59 = *v69;
  do
  {
    v15 = 0;
    v62 = v12;
    do
    {
      if (*v69 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v68 + 1) + 8 * v15);
      if ([v16 type] == 11)
      {
        v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 integerValueForField:720901]);
        v18 = [v16 integerValueForField:720903];
        v19 = [v16 integerValueForField:720905];
        cancelPathIDs = [(MTRemoteFilterManager *)self cancelPathIDs];
        if ([cancelPathIDs count])
        {
          v21 = 1;
        }

        else
        {
          v21 = [(NSMutableSet *)self->_consumePathIDs count]!= 0;
        }

        cancelPathIDs2 = [(MTRemoteFilterManager *)self cancelPathIDs];
        v23 = [cancelPathIDs2 containsObject:v17];

        consumePathIDs = [(MTRemoteFilterManager *)self consumePathIDs];
        if ([consumePathIDs containsObject:v17])
        {

          if (!v23)
          {
LABEL_24:
            consumePathIDs2 = [(MTRemoteFilterManager *)self consumePathIDs];
            [consumePathIDs2 addObject:v17];

            activePathIDs = [(MTRemoteFilterManager *)self activePathIDs];
            [activePathIDs removeObject:v17];

            [v58 addObject:v16];
            goto LABEL_25;
          }

LABEL_20:
          consumePathIDs3 = [(MTRemoteFilterManager *)self consumePathIDs];
          [consumePathIDs3 addObject:v17];

          activePathIDs2 = [(MTRemoteFilterManager *)self activePathIDs];
          [activePathIDs2 removeObject:v17];

          cancelPathIDs3 = [(MTRemoteFilterManager *)self cancelPathIDs];
          [cancelPathIDs3 removeObject:v17];

          [v16 setIntegerValue:0 forField:720905];
          [v16 setIntegerValue:0 forField:720904];
          [v16 setIntegerValue:v18 | 0x83 forField:720903];
          logHandle = [(MTRemoteFilterManager *)self logHandle];
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            [v16 doubleValueForField:720896];
            v38 = v37;
            [v16 doubleValueForField:720897];
            *buf = 138412802;
            v74 = v17;
            v75 = 2048;
            v76 = v38;
            v77 = 2048;
            v78 = v39;
            _os_log_debug_impl(&dword_0, logHandle, OS_LOG_TYPE_DEBUG, "Cancel path ID %@ at (%f, %f)", buf, 0x20u);
          }

          ++v60;
        }

        else
        {
          touchDisabled = [(MTRemoteFilterManager *)self dpadButtonIsPressed]|| v21;
          if ((touchDisabled & 1) == 0 && (v18 & 2) != 0)
          {
            touchDisabled = [(MTRemoteFilterManager *)self touchDisabled];
          }

          if (v23)
          {
            goto LABEL_20;
          }

          if (touchDisabled)
          {
            goto LABEL_24;
          }
        }

LABEL_25:
        if (v19 == &dword_0 + 1)
        {
          consumePathIDs4 = [(MTRemoteFilterManager *)self consumePathIDs];
          v33 = [consumePathIDs4 containsObject:v17];

          if ((v33 & 1) == 0)
          {
            activePathIDs3 = [(MTRemoteFilterManager *)self activePathIDs];
            [activePathIDs3 addObject:v17];
            goto LABEL_29;
          }
        }

        else
        {
          activePathIDs4 = [(MTRemoteFilterManager *)self activePathIDs];
          [activePathIDs4 removeObject:v17];

          cancelPathIDs4 = [(MTRemoteFilterManager *)self cancelPathIDs];
          [cancelPathIDs4 removeObject:v17];

          activePathIDs3 = [(MTRemoteFilterManager *)self consumePathIDs];
          [activePathIDs3 removeObject:v17];
LABEL_29:
        }

        ++v13;

        v14 = v59;
        v12 = v62;
      }

      v15 = v15 + 1;
    }

    while (v12 != v15);
    v12 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
  }

  while (v12);
LABEL_35:

  v40 = v58;
  if ([v58 count] == v13)
  {
    logHandle2 = [(MTRemoteFilterManager *)self logHandle];
    serviceCopy = v57;
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      [MTRemoteFilterManager filterDigitizerEvent:fromService:];
    }

    logHandle4 = eventCopy;
    eventCopy = 0;
    goto LABEL_52;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v43 = v58;
  v44 = [v43 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v65;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v64 + 1) + 8 * i);
        logHandle3 = [(MTRemoteFilterManager *)self logHandle];
        if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEBUG))
        {
          v50 = [v48 integerValueForField:720901];
          [v48 doubleValueForField:720896];
          v52 = v51;
          [v48 doubleValueForField:720897];
          *buf = 134218496;
          v74 = v50;
          v75 = 2048;
          v76 = v52;
          v77 = 2048;
          v78 = v53;
          _os_log_debug_impl(&dword_0, logHandle3, OS_LOG_TYPE_DEBUG, "Remove path ID %ld at (%f, %f)", buf, 0x20u);
        }

        [eventCopy removeEvent:v48];
      }

      v45 = [v43 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v45);
  }

  if (v60 == v13 - [v43 count])
  {
    v54 = [eventCopy integerValueForField:720903];
    [eventCopy setIntegerValue:0 forField:720905];
    [eventCopy setIntegerValue:0 forField:720904];
    [eventCopy setIntegerValue:v54 | 0x83 forField:720903];
    logHandle4 = [(MTRemoteFilterManager *)self logHandle];
    serviceCopy = v57;
    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEBUG))
    {
      [MTRemoteFilterManager filterDigitizerEvent:fromService:];
    }

    v40 = v58;
LABEL_52:
  }

  else
  {
    serviceCopy = v57;
    v40 = v58;
  }

  logHandle5 = [(MTRemoteFilterManager *)self logHandle];
  if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEBUG))
  {
    [MTRemoteFilterManager filterDigitizerEvent:? fromService:?];
  }

  v10 = eventCopy;
LABEL_57:

  return v10;
}

- (id)filterButtonEvent:(id)event fromService:(id)service
{
  eventCopy = event;
  serviceCopy = service;
  buttonService = [(MTRemoteFilterManager *)self buttonService];

  if (buttonService == serviceCopy)
  {
    dpadButtonIsPressed = [(MTRemoteFilterManager *)self dpadButtonIsPressed];
    [(MTRemoteFilterManager *)self updateDPadButtonStatesForEvent:eventCopy fromService:serviceCopy];
    dpadButtonIsPressed2 = [(MTRemoteFilterManager *)self dpadButtonIsPressed];
    v11 = dpadButtonIsPressed2;
    if ((dpadButtonIsPressed & 1) == 0 && dpadButtonIsPressed2)
    {
      cancelPathIDs = [(MTRemoteFilterManager *)self cancelPathIDs];
      activePathIDs = [(MTRemoteFilterManager *)self activePathIDs];
      [cancelPathIDs unionSet:activePathIDs];

      activePathIDs2 = [(MTRemoteFilterManager *)self activePathIDs];
      [activePathIDs2 removeAllObjects];

      logHandle = [(MTRemoteFilterManager *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        [MTRemoteFilterManager filterDigitizerEvent:? fromService:?];
      }
    }

    if (v11 && [eventCopy integerValueForField:196608] == &dword_C && objc_msgSend(eventCopy, "integerValueForField:", 196609) == &stru_68.segname[8])
    {
      logHandle2 = [(MTRemoteFilterManager *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
      {
        [MTRemoteFilterManager filterButtonEvent:? fromService:?];
      }

      eventCopy = 0;
    }
  }

  v17 = eventCopy;

  return eventCopy;
}

- (void)updateDPadButtonStatesForEvent:(id)event fromService:(id)service
{
  eventCopy = event;
  if ([eventCopy integerValueForField:196608] == &dword_C)
  {
    v6 = [eventCopy integerValueForField:196610];
    v7 = [eventCopy integerValueForField:196609];
    if (v7 > 67)
    {
      if (v7 == &stru_20.vmsize + 4)
      {
        [(MTRemoteFilterManager *)self setLeftButton:v6 != 0];
      }

      else
      {
        if (v7 != &stru_20.vmsize + 5)
        {
          goto LABEL_14;
        }

        [(MTRemoteFilterManager *)self setRightButton:v6 != 0];
      }
    }

    else if (v7 == &stru_20.vmsize + 2)
    {
      [(MTRemoteFilterManager *)self setUpButton:v6 != 0];
    }

    else
    {
      if (v7 != &stru_20.vmsize + 3)
      {
        goto LABEL_14;
      }

      [(MTRemoteFilterManager *)self setDownButton:v6 != 0];
    }

    logHandle = [(MTRemoteFilterManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MTRemoteFilterManager updateDPadButtonStatesForEvent:? fromService:?];
    }
  }

LABEL_14:
}

- (BOOL)dpadButtonIsPressed
{
  if ([(MTRemoteFilterManager *)self upButton]|| [(MTRemoteFilterManager *)self downButton]|| [(MTRemoteFilterManager *)self leftButton])
  {
    return 1;
  }

  return [(MTRemoteFilterManager *)self rightButton];
}

- (void)isSiriRemoteCircularTouchService:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "CircularSensor %@", &v2, 0xCu);
}

void __54__MTRemoteFilterManager_updateTouchDisabledPreference__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "remoteObjectProxy error: %@", &v2, 0xCu);
}

- (void)filterDigitizerEvent:(id *)a1 fromService:.cold.3(id *a1)
{
  v2 = [a1[7] allObjects];
  v3 = [v2 componentsJoinedByString:@" "];
  v4 = [a1[8] allObjects];
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [a1[9] allObjects];
  v7 = [v6 componentsJoinedByString:@" "];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_0, v8, v9, "active path IDs [%@] cancel path IDs [%@] consume path IDs [%@]", v10, v11, v12, v13, v14);
}

- (void)filterButtonEvent:(void *)a1 fromService:.cold.2(void *a1)
{
  [a1 upButton];
  [a1 downButton];
  [a1 leftButton];
  [a1 rightButton];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_0, v2, v3, "Remove select button due to dpad button(s): up %d down %d left %d right %d", v4, v5, v6, v7, v8);
}

- (void)updateDPadButtonStatesForEvent:(void *)a1 fromService:.cold.1(void *a1)
{
  [a1 upButton];
  [a1 downButton];
  [a1 leftButton];
  [a1 rightButton];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_0, v2, v3, "buttons: up %d down %d left %d right %d", v4, v5, v6, v7, v8);
}

@end