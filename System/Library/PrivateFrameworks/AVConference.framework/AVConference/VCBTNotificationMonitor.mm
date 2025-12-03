@interface VCBTNotificationMonitor
+ (id)sharedInstance;
- (VCBTNotificationMonitor)init;
- (unsigned)registerBTNotificationHandler:(id)handler;
- (void)dealloc;
- (void)processBTNotification:(id *)notification;
- (void)registerDarwinNotification:(id)notification;
- (void)registerForBluetoothImmediateNotifications;
- (void)setupBTEventHandler;
- (void)unregisterBTNotificationHandler:(unsigned int *)handler;
- (void)unregisterBluetoothImmediateNotifications;
- (void)unregisterDarwinNotification:(id)notification;
@end

@implementation VCBTNotificationMonitor

- (VCBTNotificationMonitor)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCBTNotificationMonitor;
  v2 = [(VCBTNotificationMonitor *)&v4 init];
  if (v2)
  {
    v2->_handlers = objc_alloc_init(MEMORY[0x1E695DF90]);
    *&v2->_btNotificationHandlerLock._os_unfair_lock_opaque = 0;
    [(VCBTNotificationMonitor *)v2 setupBTEventHandler];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[VCBTNotificationMonitor sharedInstance];
  }

  return sharedInstance_sharedInstance;
}

VCBTNotificationMonitor *__41__VCBTNotificationMonitor_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCBTNotificationMonitor);
  sharedInstance_sharedInstance = result;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCBTNotificationMonitor *)self unregisterBluetoothImmediateNotifications];

  v3.receiver = self;
  v3.super_class = VCBTNotificationMonitor;
  [(VCBTNotificationMonitor *)&v3 dealloc];
}

- (unsigned)registerBTNotificationHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_clientTokenCounter == -1)
  {
    [VCBTNotificationMonitor registerBTNotificationHandler:?];
LABEL_12:
    LODWORD(v5) = v10;
    return v5;
  }

  if (!handler)
  {
    [VCBTNotificationMonitor registerBTNotificationHandler:?];
    goto LABEL_12;
  }

  os_unfair_lock_lock(&self->_btNotificationHandlerLock);
  if (![(NSMutableDictionary *)self->_handlers count])
  {
    [(VCBTNotificationMonitor *)self registerForBluetoothImmediateNotifications];
  }

  v5 = self->_clientTokenCounter + 1;
  self->_clientTokenCounter = v5;
  v6 = _Block_copy(handler);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_handlers, "setObject:forKeyedSubscript:", v6, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5]);
  _Block_release(v6);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316162;
      v11 = v7;
      v12 = 2080;
      v13 = "[VCBTNotificationMonitor registerBTNotificationHandler:]";
      v14 = 1024;
      v15 = 79;
      v16 = 2048;
      handlerCopy = handler;
      v18 = 1024;
      v19 = v5;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Registered handler[%p] with clientToken=%u", &v10, 0x2Cu);
    }
  }

  os_unfair_lock_unlock(&self->_btNotificationHandlerLock);
  return v5;
}

- (void)unregisterBTNotificationHandler:(unsigned int *)handler
{
  v16 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    if (*handler)
    {
      os_unfair_lock_lock(&self->_btNotificationHandlerLock);
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_handlers, "setObject:forKeyedSubscript:", 0, [MEMORY[0x1E696AD98] numberWithUnsignedInt:*handler]);
      *handler = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = *handler;
          v8 = 136315906;
          v9 = v5;
          v10 = 2080;
          v11 = "[VCBTNotificationMonitor unregisterBTNotificationHandler:]";
          v12 = 1024;
          v13 = 95;
          v14 = 1024;
          v15 = v7;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unregistered handler with clientToken=%u", &v8, 0x22u);
        }
      }

      if (![(NSMutableDictionary *)self->_handlers count])
      {
        [(VCBTNotificationMonitor *)self unregisterBluetoothImmediateNotifications];
      }

      os_unfair_lock_unlock(&self->_btNotificationHandlerLock);
    }

    else
    {
      [VCBTNotificationMonitor unregisterBTNotificationHandler:];
    }
  }

  else
  {
    [VCBTNotificationMonitor unregisterBTNotificationHandler:];
  }
}

- (void)setupBTEventHandler
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__VCBTNotificationMonitor_setupBTEventHandler__block_invoke;
  v3[3] = &unk_1E85F77C8;
  v3[4] = v2;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x1E69E96A0], v3);
}

void __46__VCBTNotificationMonitor_setupBTEventHandler__block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v32 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(xdict, "XPCEventName");
  v19[0] = string;
  uint64 = xpc_dictionary_get_uint64(xdict, "_State");
  v19[1] = uint64;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v21 = v6;
      v22 = 2080;
      v23 = "[VCBTNotificationMonitor setupBTEventHandler]_block_invoke";
      v24 = 1024;
      v25 = 118;
      v26 = 2080;
      v27 = string;
      v28 = 2048;
      v29 = uint64;
      v30 = 1024;
      v31 = HIWORD(uint64) & 1;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received notifyd.matching event %s state %llu isPairing %d", buf, 0x36u);
    }
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  if ([v8 isEqualToString:@"com.apple.bluetooth.pairing"])
  {
    v9 = (uint64 & 0x1000000000000) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 || (([v8 isEqualToString:@"com.apple.bluetooth.outgoing-classic-connection-state"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"com.apple.bluetooth.settings.app-state")) && uint64 < 2 || objc_msgSend(v8, "isEqualToString:", @"com.apple.bluetooth.outgoing-le-fast-scan-level"))
  {
    v18 = 0;
    v17 = 0;
    v10 = [VCWiFiUtils getInfraChannelNumber:&v18 is5Ghz:&v17];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v10)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          if (v17)
          {
            v14 = @"5GHz WLAN";
          }

          else
          {
            v14 = @"2.4GHz WLAN";
          }

          v21 = v12;
          v22 = 2080;
          v23 = "[VCBTNotificationMonitor setupBTEventHandler]_block_invoke";
          v24 = 1024;
          v25 = 129;
          v26 = 2112;
          v27 = v14;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d BT event received while device is on band=%@", buf, 0x26u);
        }
      }

      if ((v17 & 1) == 0)
      {
        v15 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
        [v15 processBTNotification:v19];
        if (v15)
        {
          CFRelease(v15);
        }
      }
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __46__VCBTNotificationMonitor_setupBTEventHandler__block_invoke_cold_1(v16);
      }
    }
  }
}

- (void)processBTNotification:(id *)notification
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_btNotificationHandlerLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_handlers allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_btNotificationHandlerLock);
}

- (void)registerDarwinNotification:(id)notification
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [notification cStringUsingEncoding:4];
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "Notification", v4);
  xpc_set_event();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCBTNotificationMonitor registerDarwinNotification:]";
      v12 = 1024;
      v13 = 152;
      v14 = 2112;
      notificationCopy = notification;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Register for Darwin %@", &v8, 0x26u);
    }
  }

  xpc_release(v5);
}

- (void)unregisterDarwinNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  [notification cStringUsingEncoding:4];
  xpc_set_event();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCBTNotificationMonitor unregisterDarwinNotification:]";
      v10 = 1024;
      v11 = 159;
      v12 = 2112;
      notificationCopy = notification;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unregister for Darwin %@", &v6, 0x26u);
    }
  }
}

- (void)registerForBluetoothImmediateNotifications
{
  [(VCBTNotificationMonitor *)self registerDarwinNotification:@"com.apple.bluetooth.pairing"];
  [(VCBTNotificationMonitor *)self registerDarwinNotification:@"com.apple.bluetooth.outgoing-classic-connection-state"];
  [(VCBTNotificationMonitor *)self registerDarwinNotification:@"com.apple.bluetooth.settings.app-state"];

  [(VCBTNotificationMonitor *)self registerDarwinNotification:@"com.apple.bluetooth.outgoing-le-fast-scan-level"];
}

- (void)unregisterBluetoothImmediateNotifications
{
  [(VCBTNotificationMonitor *)self unregisterDarwinNotification:@"com.apple.bluetooth.pairing"];
  [(VCBTNotificationMonitor *)self unregisterDarwinNotification:@"com.apple.bluetooth.outgoing-classic-connection-state"];
  [(VCBTNotificationMonitor *)self unregisterDarwinNotification:@"com.apple.bluetooth.settings.app-state"];

  [(VCBTNotificationMonitor *)self unregisterDarwinNotification:@"com.apple.bluetooth.outgoing-le-fast-scan-level"];
}

- (void)registerBTNotificationHandler:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 66;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d Nil handler passed by client", &v5);
    }
  }

  *a1 = 0;
}

- (void)registerBTNotificationHandler:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 65;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d No client token available", &v5);
    }
  }

  *a1 = 0;
}

- (void)unregisterBTNotificationHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      OUTLINED_FUNCTION_0();
      v5 = 89;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid client token", &v3);
    }
  }
}

- (void)unregisterBTNotificationHandler:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      OUTLINED_FUNCTION_0();
      v5 = 88;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid client token pointer", &v3);
    }
  }
}

void __46__VCBTNotificationMonitor_setupBTEventHandler__block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 126;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d VCWiFiUtils getInfraChannelNumber() failed!", &v3);
}

@end