@interface GKInterfaceListener
- (BOOL)startChangeListener;
- (BOOL)startRoutingChangeListener;
- (BOOL)stopChangeListener;
- (GKInterfaceListener)init;
- (void)dealloc;
- (void)hasConnectionWithWifi:(BOOL *)a3 cell:(BOOL *)a4;
- (void)startChangeListener;
- (void)startRoutingChangeListener;
- (void)stopRoutingChangeListener;
@end

@implementation GKInterfaceListener

- (GKInterfaceListener)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = GKInterfaceListener;
  v2 = [(GKInterfaceListener *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_notificationMutex, 0);
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(GKInterfaceListener *)self stopChangeListener];
  pthread_mutex_destroy(&self->_notificationMutex);
  objc_storeWeak(&self->_interfaceListenerDelegate, 0);
  v3.receiver = self;
  v3.super_class = GKInterfaceListener;
  [(GKInterfaceListener *)&v3 dealloc];
}

- (void)hasConnectionWithWifi:(BOOL *)a3 cell:(BOOL *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 | a4)
  {
    LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
    if (LocalInterfaceListWithOptions >= 1)
    {
      v7 = 0;
      v8 = LocalInterfaceListWithOptions;
      v9 = 4;
      v10 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v10;
          v13 = *v10;
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v17 = v11;
              v18 = 2080;
              v19 = "[GKInterfaceListener hasConnectionWithWifi:cell:]";
              v20 = 1024;
              v21 = 160;
              v22 = 1024;
              v23 = v7;
              v24 = 2080;
              v25 = v9;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKInterfaceListener network %d %s", buf, 0x2Cu);
            }
          }

          else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316162;
            v17 = v11;
            v18 = 2080;
            v19 = "[GKInterfaceListener hasConnectionWithWifi:cell:]";
            v20 = 1024;
            v21 = 160;
            v22 = 1024;
            v23 = v7;
            v24 = 2080;
            v25 = v9;
            _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d GKInterfaceListener network %d %s", buf, 0x2Cu);
          }
        }

        if (strncasecmp(v9, "lo", 2uLL))
        {
          if ((*(v9 - 4) & 4) != 0)
          {
            if (a4)
            {
              *a4 = 1;
              if (!a3 || *a3)
              {
                goto LABEL_27;
              }
            }
          }

          else if (a3)
          {
            *a3 = 1;
            if (!a4 || *a4)
            {
              goto LABEL_27;
            }
          }
        }

        ++v7;
        v9 += 40;
      }

      while (v8 != v7);
    }

    if ((!a3 || !*a3) && (!a4 || !*a4) && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v14;
        v18 = 2080;
        v19 = "[GKInterfaceListener hasConnectionWithWifi:cell:]";
        v20 = 1024;
        v21 = 180;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKInterfaceListener no active interface found.", buf, 0x1Cu);
      }
    }

LABEL_27:
    FreeLocalInterfaceList();
  }
}

- (BOOL)startChangeListener
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_notificationMutex);
  if (self->_dynamicStore)
  {
    goto LABEL_2;
  }

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"GKInterfaceListener%d", getpid()];
  context.version = 0;
  context.info = self;
  context.retain = MEMORY[0x1E695D7C8];
  context.release = MEMORY[0x1E695D7C0];
  context.copyDescription = 0;
  self->_dynamicStore = SCDynamicStoreCreate(*MEMORY[0x1E695E480], v5, DynamicStoreCallbackForWifiChanges, &context);

  dynamicStore = self->_dynamicStore;
  if (!dynamicStore)
  {
    v3 = 0;
    goto LABEL_3;
  }

  if (SCDynamicStoreSetNotificationKeys(dynamicStore, 0, &unk_1F579C9A8))
  {
    v7 = self->_dynamicStore;
    global_queue = dispatch_get_global_queue(0, 0);
    SCDynamicStoreSetDispatchQueue(v7, global_queue);
LABEL_2:
    v3 = 1;
    goto LABEL_3;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [GKInterfaceListener startChangeListener];
    }
  }

  CFRelease(self->_dynamicStore);
  v3 = 0;
  self->_dynamicStore = 0;
LABEL_3:
  [(GKInterfaceListener *)self hasConnectionWithWifi:&self->_isWifiUp cell:&self->_isCellUp];
  pthread_mutex_unlock(&self->_notificationMutex);
  return v3;
}

- (BOOL)stopChangeListener
{
  pthread_mutex_lock(&self->_notificationMutex);
  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    SCDynamicStoreSetDispatchQueue(dynamicStore, 0);
    CFRelease(self->_dynamicStore);
    self->_dynamicStore = 0;
  }

  pthread_mutex_unlock(&self->_notificationMutex);
  return 1;
}

- (BOOL)startRoutingChangeListener
{
  v8[5] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_notificationMutex);
  if (self->_monitoringAvailable)
  {
    pthread_mutex_unlock(&self->_notificationMutex);
    return 1;
  }

  else
  {
    notify_key = nwi_state_get_notify_key();
    global_queue = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__GKInterfaceListener_startRoutingChangeListener__block_invoke;
    v8[3] = &unk_1E85F4A20;
    v8[4] = self;
    v6 = notify_register_dispatch(notify_key, &self->_notifyToken, global_queue, v8);
    if (v6)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [GKInterfaceListener startRoutingChangeListener];
        }
      }
    }

    self->_monitoringAvailable = v6 == 0;
    pthread_mutex_unlock(&self->_notificationMutex);
    return self->_monitoringAvailable;
  }
}

uint64_t __49__GKInterfaceListener_startRoutingChangeListener__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKInterfaceListener startRoutingChangeListener]_block_invoke";
      v9 = 1024;
      v10 = 248;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKInterfaceListener: network information changed.", &v5, 0x1Cu);
    }
  }

  return [objc_msgSend(*(a1 + 32) "interfaceListenerDelegate")];
}

- (void)stopRoutingChangeListener
{
  pthread_mutex_lock(&self->_notificationMutex);
  if (self->_monitoringAvailable)
  {
    notify_cancel(self->_notifyToken);
    self->_monitoringAvailable = 0;
  }

  pthread_mutex_unlock(&self->_notificationMutex);
}

- (void)startChangeListener
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d GKInterfaceListener SCDynamicStoreSetNotificationKeys failed", v2, v3, v4, v5, v6);
}

- (void)startRoutingChangeListener
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d GKInterfaceListener: not setting up correctly", v2, v3, v4, v5, v6);
}

@end