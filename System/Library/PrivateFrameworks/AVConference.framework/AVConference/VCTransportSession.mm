@interface VCTransportSession
+ (int)vtpPacketTypeForStreamType:(unsigned int)a3;
+ (unsigned)trafficClassForStreamType:(unsigned int)a3;
- (VCTransportSession)initWithNotificationQueue:(id)a3 reportingAgent:(opaqueRTCReporting *)a4 notificationHandler:(void *)a5 eventHandler:(void *)a6 handlerQueue:(id)a7 context:(void *)a8;
- (int)createTransportStream:(OpaqueVCTransportStream *)a3 withType:(unsigned int)a4 options:(id)a5;
- (int)deregisterNotificationForTransportStream:(OpaqueVCTransportStream *)a3;
- (int)flushBasebandQueueWithPayloads:(id)a3 flushCount:(unsigned int *)a4;
- (int)updateBasebandForConnection:(id)a3;
- (void)addNetworkAssertionWithInterfaceType:(int)a3;
- (void)callEventHandlerWithEvent:(unsigned int)a3 info:(id)a4;
- (void)cleanupBaseband;
- (void)dealloc;
- (void)destroyNWMonitor;
- (void)handleTransportStreamDeactivated:(OpaqueVCTransportStream *)a3;
- (void)removeNetworkAssertion;
- (void)setCallActive:(BOOL)a3;
- (void)setConnectionSelectionVersionWithLocalFrameworkVersion:(id)a3 remoteFrameworkVersion:(id)a4;
- (void)setupNWMonitor;
- (void)setupNWMonitorNotificationHandler;
- (void)setupNWMonitorPacketEventHandler;
- (void)stop;
@end

@implementation VCTransportSession

- (VCTransportSession)initWithNotificationQueue:(id)a3 reportingAgent:(opaqueRTCReporting *)a4 notificationHandler:(void *)a5 eventHandler:(void *)a6 handlerQueue:(id)a7 context:(void *)a8
{
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VCTransportSession;
  v14 = [(VCTransportSession *)&v19 init];
  if (v14)
  {
    +[VCVTPWrapper startVTP];
    v14->_isCallActive = 1;
    if (a4)
    {
      v15 = CFRetain(a4);
    }

    else
    {
      v15 = 0;
    }

    v14->_reportingAgent = v15;
    if (!v14->_basebandNotificationRegistrationToken)
    {
      do
      {
        v16 = hwrandom();
        v14->_basebandNotificationRegistrationToken = v16;
      }

      while (!v16);
    }

    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(58);
    v14->_stateQueue = dispatch_queue_create_with_target_V2("com.apple.VideoConference.VCTransportSession.stateQueue", 0, CustomRootQueue);
    if (a3)
    {
      dispatch_retain(a3);
    }

    else
    {
      a3 = dispatch_queue_create_with_target_V2("com.apple.VideoConference.VCTransportSession.notificationQueue", 0, CustomRootQueue);
    }

    v14->_notificationQueue = a3;
    v14->_streams = objc_alloc_init(MEMORY[0x1E695DF70]);
    pthread_mutex_init(&v14->_stateLock, 0);
    v14->_nwMonitorLock._os_unfair_lock_opaque = 0;
    v14->_notificationHandler = a5;
    v14->_packetEventHandler = a6;
    v14->_handlerContext = a8;
    if (a7)
    {
      v14->_handlerQueue = a7;
      dispatch_retain(a7);
    }
  }

  return v14;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  streams = self->_streams;
  v4 = [(NSMutableArray *)streams countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(streams);
        }

        [(VCTransportSession *)self deregisterNotificationForTransportStream:*(*(&v14 + 1) + 8 * i)];
      }

      v5 = [(NSMutableArray *)streams countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v5);
  }

  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  _Block_release(self->_eventHandler);
  notificationQueue = self->_notificationQueue;
  if (notificationQueue)
  {
    dispatch_release(notificationQueue);
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  [(VCTransportSession *)self destroyNWMonitor];
  handlerQueue = self->_handlerQueue;
  if (handlerQueue)
  {
    dispatch_release(handlerQueue);
  }

  pthread_mutex_destroy(&self->_stateLock);
  +[VCVTPWrapper stopVTP];
  v12.receiver = self;
  v12.super_class = VCTransportSession;
  [(VCTransportSession *)&v12 dealloc];
}

- (void)stop
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__VCTransportSession_stop__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

void __26__VCTransportSession_stop__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCTransportSession stop]_block_invoke";
      v11 = 1024;
      v12 = 169;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopping transport session", buf, 0x1Cu);
    }
  }

  [*(a1 + 32) cleanupBaseband];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__VCTransportSession_stop__block_invoke_72;
  block[3] = &unk_1E85F3778;
  block[4] = v4;
  dispatch_async(v5, block);
}

uint64_t __26__VCTransportSession_stop__block_invoke_72(uint64_t a1)
{
  result = [*(a1 + 32) eventHandler];
  if (result)
  {
    v3 = *([*(a1 + 32) eventHandler] + 16);

    return v3();
  }

  return result;
}

- (void)callEventHandlerWithEvent:(unsigned int)a3 info:(id)a4
{
  v7 = *MEMORY[0x1E69E9840];
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VCTransportSession_callEventHandlerWithEvent_info___block_invoke;
  v5[3] = &unk_1E85F3890;
  v6 = a3;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(notificationQueue, v5);
}

void __53__VCTransportSession_callEventHandlerWithEvent_info___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) eventHandler])
  {
    v2 = *([*(a1 + 32) eventHandler] + 16);

    v2();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCTransportSession callEventHandlerWithEvent:info:]_block_invoke";
      v10 = 1024;
      v11 = 187;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Could not dispatch transportSessionEvent %d as eventHandler is nil", &v6, 0x22u);
    }
  }
}

- (void)handleTransportStreamDeactivated:(OpaqueVCTransportStream *)a3
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  pthread_mutex_lock(&self->_stateLock);
  [(NSMutableArray *)self->_streams removeObject:a3];

  pthread_mutex_unlock(&self->_stateLock);
}

- (int)deregisterNotificationForTransportStream:(OpaqueVCTransportStream *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  CMNotificationCenterGetDefaultLocalCenter();
  v4 = CMNotificationCenterRemoveListener();
  if (v4)
  {
    [(VCTransportSession *)v4 deregisterNotificationForTransportStream:?];
    LODWORD(v6) = v15;
    return v6;
  }

  v6 = 3492950510;
  CMBaseObject = VCPacketFilterGetCMBaseObject(a3, v5);
  v8 = *(CMBaseObjectGetVTable() + 8);
  if (*v8 >= 2uLL)
  {
    v9 = v8[8];
    if (v9)
    {
      v10 = v9(CMBaseObject);
      if (v10 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = -v10;
      }

      if (!v10)
      {
        LODWORD(v6) = 0;
        return v6;
      }

      v6 = v11 | 0xD0320000;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCTransportSession *)v12 deregisterNotificationForTransportStream:v6, v13];
    }
  }

  return v6;
}

- (void)setCallActive:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__VCTransportSession_setCallActive___block_invoke;
  block[3] = &unk_1E85F37A0;
  v5 = a3;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

void __36__VCTransportSession_setCallActive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 8))
  {
    *(v2 + 8) = v1;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      v6 = VCConnectionManager_CopyConnectionForQuality(v5[9], 1);
      [*(a1 + 32) updateBasebandForConnection:v6];
      if (v6)
      {

        CFRelease(v6);
      }
    }

    else
    {

      [v5 cleanupBaseband];
    }
  }
}

- (void)setConnectionSelectionVersionWithLocalFrameworkVersion:(id)a3 remoteFrameworkVersion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];

  self->_localFrameworkVersion = [a3 copy];
  self->_remoteFrameworkVersion = [a4 copy];
  [(VCConnectionManager *)self->_connectionManager setConnectionSelectionVersionWithLocalFrameworkVersion:a3 remoteFrameworkVersion:a4];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      localFrameworkVersion = self->_localFrameworkVersion;
      remoteFrameworkVersion = self->_remoteFrameworkVersion;
      v11 = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "[VCTransportSession setConnectionSelectionVersionWithLocalFrameworkVersion:remoteFrameworkVersion:]";
      v15 = 1024;
      v16 = 289;
      v17 = 2112;
      v18 = localFrameworkVersion;
      v19 = 2112;
      v20 = remoteFrameworkVersion;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCTransportSession: Setting connection selection version: local='%@', remote='%@'", &v11, 0x30u);
    }
  }
}

- (int)updateBasebandForConnection:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = VCConnection_ConnectionID(a3);
  registeredConnection = self->_registeredConnection;
  if (registeredConnection && VCConnection_ConnectionID(registeredConnection) == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        basebandNotificationRegistrationToken = self->_basebandNotificationRegistrationToken;
        *buf = 136316418;
        v14 = v7;
        v15 = 2080;
        v16 = "[VCTransportSession updateBasebandForConnection:]";
        v17 = 1024;
        v18 = 296;
        v19 = 2048;
        v20 = self;
        v21 = 1024;
        v22 = v5;
        v23 = 1024;
        v24 = basebandNotificationRegistrationToken;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCTransportSession[%p]: Skip registering baseband notifications for the same connection with id %d, registrationToken %u", buf, 0x32u);
      }
    }
  }

  else
  {
    stateQueue = self->_stateQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__VCTransportSession_updateBasebandForConnection___block_invoke;
    v12[3] = &unk_1E85F37F0;
    v12[4] = self;
    v12[5] = a3;
    dispatch_async(stateQueue, v12);
  }

  return 0;
}

void __50__VCTransportSession_updateBasebandForConnection___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cleanupBaseband];
  if (*(*(a1 + 32) + 8) == 1 && VCConnection_IsLocalOnCellular(*(a1 + 40)))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v4 = *(a1 + 40);
        if (v4)
        {
          v6 = [objc_msgSend(v4 "description")];
        }

        else
        {
          v6 = "<nil>";
        }

        v7 = *(*(a1 + 32) + 12);
        v14 = 136316418;
        v15 = v2;
        v16 = 2080;
        v17 = "[VCTransportSession updateBasebandForConnection:]_block_invoke";
        v18 = 1024;
        v19 = 303;
        v20 = 2048;
        v21 = v5;
        v22 = 2080;
        v23 = v6;
        v24 = 1024;
        v25 = v7;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCTransportSession[%p]: Registering for baseband notifications for connection %s, registrationToken %u", &v14, 0x36u);
      }
    }

    v8 = [*(a1 + 32) registerBasebandNotificationsForConnection:*(a1 + 40)];
    if (v8 < 0)
    {
      v9 = v8;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 40);
          if (v12)
          {
            v13 = [objc_msgSend(v12 "description")];
          }

          else
          {
            v13 = "<nil>";
          }

          v14 = 136316162;
          v15 = v10;
          v16 = 2080;
          v17 = "[VCTransportSession updateBasebandForConnection:]_block_invoke";
          v18 = 1024;
          v19 = 309;
          v20 = 2080;
          v21 = v13;
          v22 = 1024;
          LODWORD(v23) = v9;
          _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Baseband notification registration for connection %s failed %x", &v14, 0x2Cu);
        }
      }
    }

    else
    {
      [*(a1 + 32) setRegisteredConnection:*(a1 + 40)];
    }
  }
}

- (void)cleanupBaseband
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_registeredConnection)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = VCConnection_ConnectionID(self->_registeredConnection);
        basebandNotificationRegistrationToken = self->_basebandNotificationRegistrationToken;
        v7 = 136316418;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCTransportSession cleanupBaseband]";
        v11 = 1024;
        v12 = 319;
        v13 = 2048;
        v14 = self;
        v15 = 1024;
        v16 = v5;
        v17 = 1024;
        v18 = basebandNotificationRegistrationToken;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCTransportSession[%p]: Deregistering baseband notifications for connectionId %d, registrationToken %u", &v7, 0x32u);
      }
    }

    [(VCTransportSession *)self deregisterBasebandNotifications];
    [(VCTransportSession *)self setRegisteredConnection:0];
  }
}

- (int)flushBasebandQueueWithPayloads:(id)a3 flushCount:(unsigned int *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x2020000000;
  v17 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VCTransportSession_flushBasebandQueueWithPayloads_flushCount___block_invoke;
  block[3] = &unk_1E85F8150;
  block[4] = self;
  block[5] = a3;
  block[6] = &v15;
  block[7] = &v11;
  dispatch_sync(stateQueue, block);
  if (a4)
  {
    *a4 = *(v12 + 6);
  }

  if ((*(v16[0] + 24) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCTransportSession *)v6 flushBasebandQueueWithPayloads:v16 flushCount:v7];
    }
  }

  v8 = *(v16[0] + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void __64__VCTransportSession_flushBasebandQueueWithPayloads_flushCount___block_invoke(uint64_t a1)
{
  v2 = VCConnectionManager_CopyConnectionForQuality(*(*(a1 + 32) + 72), 1);
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) flushBasebandQueueForConnection:v2 payloadInfoList:*(a1 + 40)];
  if ((*(*(*(a1 + 48) + 8) + 24) & 0x80000000) == 0)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v3 = VCConnectionManager_CopyConnectionForQuality(*(*(a1 + 32) + 72), 0);
  if ((VCConnection_Equal(v3, v2) & 1) == 0)
  {
    v4 = [*(a1 + 32) flushBasebandQueueForConnection:v3 payloadInfoList:*(a1 + 40)];
    if ((v4 & 0x80000000) == 0)
    {
      ++*(*(*(a1 + 56) + 8) + 24);
    }

    v5 = *(*(a1 + 48) + 8);
    if ((*(v5 + 24) & 0x80000000) != 0)
    {
      *(v5 + 24) = v4;
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

+ (unsigned)trafficClassForStreamType:(unsigned int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 - 1 < 6)
  {
    return dword_1DBD49E70[a3 - 1];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = 136315906;
    v8 = v5;
    v9 = 2080;
    v10 = "+[VCTransportSession trafficClassForStreamType:]";
    v11 = 1024;
    v12 = 438;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid stream type %d", &v7, 0x22u);
  }

  return 0;
}

+ (int)vtpPacketTypeForStreamType:(unsigned int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 - 1 < 6)
  {
    return dword_1DBD49E88[a3 - 1];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = 136315906;
    v8 = v5;
    v9 = 2080;
    v10 = "+[VCTransportSession vtpPacketTypeForStreamType:]";
    v11 = 1024;
    v12 = 458;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid stream type %d", &v7, 0x22u);
  }

  return 0;
}

- (void)setupNWMonitor
{
  if (self->_shouldSetupNWMonitor)
  {
    os_unfair_lock_lock(&self->_nwMonitorLock);
    if (!self->_monitor)
    {
      self->_monitor = [(VCTransportSession *)self createNWMonitor];
    }

    os_unfair_lock_unlock(&self->_nwMonitorLock);
  }
}

- (void)destroyNWMonitor
{
  os_unfair_lock_lock(&self->_nwMonitorLock);
  monitor = self->_monitor;
  if (monitor)
  {
    VCNWConnectionMonitor_Destroy(monitor);
    self->_monitor = 0;
  }

  os_unfair_lock_unlock(&self->_nwMonitorLock);
}

- (void)setupNWMonitorNotificationHandler
{
  os_unfair_lock_lock(&self->_nwMonitorLock);
  VCNWConnectionMonitor_SetNotificationHandler(self->_monitor, self->_handlerQueue, self->_handlerContext, self->_notificationHandler);

  os_unfair_lock_unlock(&self->_nwMonitorLock);
}

- (void)setupNWMonitorPacketEventHandler
{
  os_unfair_lock_lock(&self->_nwMonitorLock);
  VCNWConnectionMonitor_SetPacketEventHandler(self->_monitor, self->_handlerQueue, self->_handlerContext, self->_packetEventHandler);

  os_unfair_lock_unlock(&self->_nwMonitorLock);
}

- (int)createTransportStream:(OpaqueVCTransportStream *)a3 withType:(unsigned int)a4 options:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = -1;
  cf = 0;
  if (!a3)
  {
    v14 = -2144665599;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v26 = v17;
        v27 = 2080;
        v28 = "[VCTransportSession createTransportStream:withType:options:]";
        v29 = 1024;
        v30 = 209;
        _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d NULL transportStream", buf, 0x1Cu);
      }
    }

    goto LABEL_17;
  }

  v6 = *&a4;
  v9 = [(VCTransportSession *)self createVFD:&v24 forStreamType:?];
  if (v9 < 0)
  {
    v14 = v9;
LABEL_17:
    v13 = 0;
    goto LABEL_10;
  }

  v10 = [VCTransportSession trafficClassForStreamType:v6];
  if (v10)
  {
    v11 = v10;
    if (a5)
    {
      v12 = [a5 mutableCopy];
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;
    -[__CFDictionary setObject:forKeyedSubscript:](v12, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v11, cf}], @"TrafficClass");
    v14 = VCTransportStreamVTPCreate(*MEMORY[0x1E695E480], v24, v13, &cf);
    if ((v14 & 0x80000000) == 0)
    {
      v24 = -1;
      CMNotificationCenterGetDefaultLocalCenter();
      v15 = CMNotificationCenterAddListener();
      if (v15)
      {
        v19 = v15;
        if (v15 >= 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = -v15;
        }

        v14 = v20 | 0xD02B0000;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v26 = v21;
            v27 = 2080;
            v28 = "[VCTransportSession createTransportStream:withType:options:]";
            v29 = 1024;
            v30 = 226;
            v31 = 1024;
            v32 = v19;
            _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to add notification listener %d", buf, 0x22u);
          }
        }
      }

      else
      {
        pthread_mutex_lock(&self->_stateLock);
        [(NSMutableArray *)self->_streams addObject:cf];
        pthread_mutex_unlock(&self->_stateLock);
        *a3 = cf;
        cf = 0;
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = -2144665599;
  }

LABEL_10:

  VCCloseVFDIfValid(v24);
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

- (void)addNetworkAssertionWithInterfaceType:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (self->_didAddNetworkAssertion)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v13;
        OUTLINED_FUNCTION_0();
        v17 = 520;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unexpected: Adding assertion multiple times", &v15, 0x1Cu);
      }
    }
  }

  else
  {
    v5 = VCFeatureFlagManager_SkipNonInfraWiFiAssertion();
    if (a3 == 3 && v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          HIDWORD(v16) = HIDWORD(v6);
          OUTLINED_FUNCTION_0();
          v17 = 525;
          OUTLINED_FUNCTION_1(&dword_1DB56E000, v7, v8, " [%s] %s:%d NetworkAgent assertion added", v9, v10, v11, v12, 2u);
        }
      }

      [+[VCNetworkAgent sharedInstance](VCNetworkAgent addAssertion];
      self->_didAddNetworkAssertion = 1;
    }
  }
}

- (void)removeNetworkAssertion
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (self->_didAddNetworkAssertion)
  {
    [+[VCNetworkAgent sharedInstance](VCNetworkAgent removeAssertion];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1(&dword_1DB56E000, v3, v4, " [%s] %s:%d NetworkAgent assertion removed", v5, v6, v7, v8, 2u);
      }
    }

    self->_didAddNetworkAssertion = 0;
  }
}

- (void)deregisterNotificationForTransportStream:(int)a1 .cold.1(int a1, unsigned int *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  v5 = v4 | 0xD02B0000;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCTransportSession deregisterNotificationForTransportStream:]";
      v12 = 1024;
      v13 = 250;
      v14 = 1024;
      v15 = a1;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Remove listener failed %d", &v8, 0x22u);
    }
  }

  *a2 = v5;
}

- (void)deregisterNotificationForTransportStream:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315906;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "[VCTransportSession deregisterNotificationForTransportStream:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, a2, a3, " [%s] %s:%d VCTransportStreamNotificationBarrier failed %x", *v3, *&v3[8], "[VCTransportSession deregisterNotificationForTransportStream:]" >> 16, 253);
}

- (void)flushBasebandQueueWithPayloads:(NSObject *)a3 flushCount:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315906;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "[VCTransportSession flushBasebandQueueWithPayloads:flushCount:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, a2, a3, " [%s] %s:%d Baseband flush failed (%x)", *v3, *&v3[8], "[VCTransportSession flushBasebandQueueWithPayloads:flushCount:]" >> 16, 364);
}

@end