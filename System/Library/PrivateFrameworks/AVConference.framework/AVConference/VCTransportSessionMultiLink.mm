@interface VCTransportSessionMultiLink
- (BOOL)initializeIsIPv6;
- (BOOL)initializeNetworkMTU;
- (VCTransportSessionMultiLink)initWithLocalEndpoint:(id)endpoint clientAuditToken:(id)token handlerQueue:(id)queue context:(void *)context eventHandler:(void *)handler options:(id)options error:(id *)error;
- (id)connectionInfoWithRemoteAddress:(id)address;
- (int)addRemoteEndpoint:(id)endpoint error:(id *)error;
- (int)canAddConnectionWithRemoteEndpoint:(id)endpoint;
- (int)canRemoveConnectionWithRemoteEndpoint:(id)endpoint;
- (int)createAndStartNWListener:(id)listener useBackingSocket:(BOOL)socket error:(id *)error;
- (int)createNWConnectionWithConnectionInfo:(id)info remoteEndpoint:(id)endpoint;
- (int)createNWParametersAndListener:(BOOL)listener;
- (int)createVFD:(int *)d forStreamType:(unsigned int)type;
- (int)dispatchedAddRemoteEndpoint:(id)endpoint error:(id *)error;
- (int)dispatchedRemoveRemoteEndpoint:(id)endpoint error:(id *)error;
- (int)dispatchedSetRemoteEndpoints:(id)endpoints error:(id *)error;
- (int)dupRTPNWConnectionBackingSocketForNWConnection:(id)connection;
- (int)invalidateNWConnectionWithConnectionInfo:(id)info;
- (int)removeRemoteEndpoint:(id)endpoint error:(id *)error;
- (int)reserveLocalPortWithListener;
- (int)setRemoteEndpoints:(id)endpoints error:(id *)error;
- (int)setStateChangeHandlerForConnectionWithConnectionInfo:(id)info;
- (int)setupDatagramChannel;
- (int)setupNWConnectionWithConnectionInfo:(id)info;
- (int)startNWConnectionWithConnectionInfo:(id)info;
- (int)startNWConnections;
- (int)updateLocalEndpoint;
- (int)updateTransportStream:(OpaqueVCTransportStream *)stream;
- (int)updateTransportStreamRemoteSSRCList:(OpaqueVCTransportStream *)list shouldAddRemoteSSRC:(BOOL)c remoteEndpointSSRC:(int)rC;
- (int)updateTransportStreamsRemoteSSRCList:(unsigned int)list shouldAddRemoteSSRC:(BOOL)c;
- (tagVCNWConnectionMonitor)createNWMonitor;
- (void)addNetworkAssertion;
- (void)cleanupDatagramChannel;
- (void)createNWMonitor;
- (void)dealloc;
- (void)getTransportLargeBufferIndicationWithStreamProperty;
- (void)handleStateChanges:(int)changes error:(id)error connectionInfo:(id)info;
- (void)initializeInterfaceType;
- (void)initializeIsIPv6;
- (void)removeNetworkAssertion;
- (void)reserveLocalPortWithListener;
- (void)setReceiveBufferSize:(id)size;
- (void)setupDatagramChannel;
- (void)start;
- (void)stop;
- (void)updateLocalEndpoint;
@end

@implementation VCTransportSessionMultiLink

- (VCTransportSessionMultiLink)initWithLocalEndpoint:(id)endpoint clientAuditToken:(id)token handlerQueue:(id)queue context:(void *)context eventHandler:(void *)handler options:(id)options error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VCTransportSessionMultiLink;
  v12 = [(VCTransportSession *)&v17 initWithNotificationQueue:0 reportingAgent:0 notificationHandler:0 eventHandler:handler handlerQueue:queue context:context];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_6;
  }

  if (!endpoint)
  {
    [VCTransportSessionMultiLink initWithLocalEndpoint:v12 clientAuditToken:? handlerQueue:? context:? eventHandler:? options:? error:?];
    goto LABEL_6;
  }

  v12->_localPort = 0;
  v14 = [objc_msgSend(options objectForKeyedSubscript:{@"vcTransportSessionMultilinkOptionUseBackingSocket", "BOOLValue"}];
  v13->_receiveBufferSize = [objc_msgSend(options objectForKeyedSubscript:{@"vcTransportSessionMultiLinkOptionBackingSocketReceiveBufferSize", "intValue"}];
  v15 = [(VCTransportSessionMultiLink *)v13 createAndStartNWListener:endpoint useBackingSocket:v14 error:error];
  v13->_startWaitSemaphore = dispatch_semaphore_create(0);
  v13->_cancelWaitSemaphore = dispatch_semaphore_create(0);
  v13->_nwConnectionInfoList = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13->_clientAuditToken = token;
  if (v15 < 0)
  {
LABEL_6:
    [VCTransportSessionMultiLink initWithLocalEndpoint:v13 clientAuditToken:endpoint handlerQueue:error context:? eventHandler:? options:? error:?];
    return 0;
  }

  return v13;
}

- (int)dupRTPNWConnectionBackingSocketForNWConnection:(id)connection
{
  v25 = *MEMORY[0x1E69E9840];
  if (!connection)
  {
    [VCTransportSessionMultiLink dupRTPNWConnectionBackingSocketForNWConnection:?];
    return v13;
  }

  connected_socket = nw_connection_get_connected_socket();
  if (connected_socket == -1)
  {
    return -1;
  }

  v5 = connected_socket;
  v6 = dup(connected_socket);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6 == -1)
  {
    if (ErrorLogLevelForModule >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316162;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCTransportSessionMultiLink dupRTPNWConnectionBackingSocketForNWConnection:]";
        v17 = 1024;
        v18 = 98;
        v19 = 2048;
        connectionCopy2 = connection;
        v21 = 1024;
        v22 = v5;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nw_connection %p is backed by socket %d. Failed to dup", &v13, 0x2Cu);
      }
    }

    return -1;
  }

  if (ErrorLogLevelForModule >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136316418;
      v14 = v8;
      v15 = 2080;
      v16 = "[VCTransportSessionMultiLink dupRTPNWConnectionBackingSocketForNWConnection:]";
      v17 = 1024;
      v18 = 96;
      v19 = 2048;
      connectionCopy2 = connection;
      v21 = 1024;
      v22 = v5;
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nw_connection %p is backed by socket %d duped to %d", &v13, 0x32u);
    }
  }

  return v6;
}

- (void)getTransportLargeBufferIndicationWithStreamProperty
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

- (void)start
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__VCTransportSessionMultiLink_start__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

uint64_t __36__VCTransportSessionMultiLink_start__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 240) == 1)
  {
    v3 = -2144665596;
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_48;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      *v26 = 136315650;
      *&v26[4] = v10;
      v27 = 2080;
      v28 = "[VCTransportSessionMultiLink start]_block_invoke";
      v29 = 1024;
      v30 = 141;
      v12 = " [%s] %s:%d VCTransportSessionMultiLink already started";
      v13 = v11;
      v14 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_48;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v17 = *(a1 + 32);
      *v26 = 136316162;
      *&v26[4] = v15;
      v27 = 2080;
      v28 = "[VCTransportSessionMultiLink start]_block_invoke";
      v29 = 1024;
      v30 = 141;
      v31 = 2112;
      v32 = v6;
      v33 = 2048;
      v34 = v17;
      v12 = " [%s] %s:%d %@(%p) VCTransportSessionMultiLink already started";
      v13 = v16;
      v14 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v26, v14);
LABEL_48:
    *v26 = 0;
    [GKVoiceChatError getNSError:v26 code:32002 detailedCode:v3 filePath:0 description:@"Start VCTransportSessionMultiLink failed" reason:@"Failed to schedule receives for nw_connection"];
    [*(a1 + 32) callEventHandlerWithEvent:7 info:*v26];
    result = [*(a1 + 32) cleanupDatagramChannel];
    *(*(a1 + 32) + 240) = 0;
    return result;
  }

  *(v2 + 240) = 1;
  v3 = [*(a1 + 32) setupDatagramChannel];
  if (v3 < 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __36__VCTransportSessionMultiLink_start__block_invoke_cold_3();
        }
      }

      goto LABEL_48;
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_48;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v20 = *(a1 + 32);
    *v26 = 136316162;
    *&v26[4] = v18;
    v27 = 2080;
    v28 = "[VCTransportSessionMultiLink start]_block_invoke";
    v29 = 1024;
    v30 = 144;
    v31 = 2112;
    v32 = v7;
    v33 = 2048;
    v34 = v20;
    v21 = " [%s] %s:%d %@(%p) Failed to setup datagram channel";
    goto LABEL_50;
  }

  v3 = [*(a1 + 32) startNWConnections];
  if (v3 < 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __36__VCTransportSessionMultiLink_start__block_invoke_cold_2();
        }
      }

      goto LABEL_48;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_48;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v23 = *(a1 + 32);
    *v26 = 136316162;
    *&v26[4] = v22;
    v27 = 2080;
    v28 = "[VCTransportSessionMultiLink start]_block_invoke";
    v29 = 1024;
    v30 = 146;
    v31 = 2112;
    v32 = v8;
    v33 = 2048;
    v34 = v23;
    v21 = " [%s] %s:%d %@(%p) Failed to start NW connections";
    goto LABEL_50;
  }

  v3 = [*(*(a1 + 32) + 280) start];
  if (v3 < 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __36__VCTransportSessionMultiLink_start__block_invoke_cold_1();
        }
      }

      goto LABEL_48;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_48;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v25 = *(a1 + 32);
    *v26 = 136316162;
    *&v26[4] = v24;
    v27 = 2080;
    v28 = "[VCTransportSessionMultiLink start]_block_invoke";
    v29 = 1024;
    v30 = 148;
    v31 = 2112;
    v32 = v9;
    v33 = 2048;
    v34 = v25;
    v21 = " [%s] %s:%d %@(%p) Failed to start datagram channel MultiLink";
LABEL_50:
    _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v21, v26, 0x30u);
    goto LABEL_48;
  }

  [*(a1 + 32) initializeNetworkMTU];
  [*(a1 + 32) setupNWMonitor];
  [*(a1 + 32) setupNWMonitorNotificationHandler];
  [*(a1 + 32) setupNWMonitorPacketEventHandler];
  [*(a1 + 32) addNetworkAssertion];
  v4 = *(a1 + 32);

  return [v4 callEventHandlerWithEvent:1 info:0];
}

- (void)stop
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__VCTransportSessionMultiLink_stop__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(stateQueue, v3);
}

id __35__VCTransportSessionMultiLink_stop__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 240) = 0;
  [*(a1 + 32) destroyNWMonitor];
  [*(a1 + 32) removeNetworkAssertion];
  [*(a1 + 32) cleanupDatagramChannel];
  v3.receiver = *(a1 + 32);
  v3.super_class = VCTransportSessionMultiLink;
  return objc_msgSendSuper2(&v3, sel_stop);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  listener = self->_listener;
  if (listener)
  {
    nw_listener_cancel(listener);
    nw_release(self->_listener);
  }

  nw_release(self->_localEndpoint);
  nw_release(self->_localParameters);

  v4.receiver = self;
  v4.super_class = VCTransportSessionMultiLink;
  [(VCTransportSession *)&v4 dealloc];
}

- (int)setupDatagramChannel
{
  v48 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._stateQueue);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v3)
  {
    [VCTransportSessionMultiLink setupDatagramChannel];
LABEL_24:
    v20 = *buf;
    goto LABEL_25;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  nwConnectionInfoList = self->_nwConnectionInfoList;
  v5 = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(nwConnectionInfoList);
        }

        [v3 addObject:{objc_msgSend(*(*(&v44 + 1) + 8 * i), "connection")}];
      }

      v6 = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v6);
  }

  v25 = 0;
  v9 = [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager addDatagramChannelWithNWConnections:"addDatagramChannelWithNWConnections:eventHandler:error:" eventHandler:v3 error:0, &v25];
  self->_datagramChannel = v9;
  if (!v9)
  {
    [VCTransportSessionMultiLink setupDatagramChannel];
    goto LABEL_24;
  }

  v10 = [(NSMutableArray *)self->super._streams count];
  if (v10 < 1)
  {
LABEL_14:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = self->_nwConnectionInfoList;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (-[VCTransportSessionMultiLink updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:](self, "updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:", [*(*(&v27 + 1) + 8 * j) remoteSSRC], 1) < 0)
          {
            [VCTransportSessionMultiLink setupDatagramChannel];
            goto LABEL_24;
          }
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v26 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
  }

  else
  {
    v11 = 0;
    v12 = v10 & 0x7FFFFFFF;
    while (1)
    {
      v13 = [(NSMutableArray *)self->super._streams objectAtIndexedSubscript:v11];
      v14 = [(VCTransportSessionMultiLink *)self updateTransportStream:v13];
      if (v14 < 0)
      {
        break;
      }

      if (v12 == ++v11)
      {
        goto LABEL_14;
      }
    }

    v20 = v14;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink setupDatagramChannel];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
      }

      else
      {
        v22 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v32 = v23;
          v33 = 2080;
          v34 = "[VCTransportSessionMultiLink setupDatagramChannel]";
          v35 = 1024;
          v36 = 216;
          v37 = 2112;
          v38 = v22;
          v39 = 2048;
          selfCopy = self;
          v41 = 2112;
          v42 = v13;
          _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to update transport stream '%@'", buf, 0x3Au);
        }
      }
    }
  }

LABEL_25:

  return v20;
}

- (int)updateTransportStreamRemoteSSRCList:(OpaqueVCTransportStream *)list shouldAddRemoteSSRC:(BOOL)c remoteEndpointSSRC:(int)rC
{
  cCopy = c;
  v39 = *MEMORY[0x1E69E9840];
  v24 = 0;
  CMBaseObject = VCPacketFilterGetCMBaseObject(list, a2);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v11 = -12782;
LABEL_9:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136316162;
      v26 = v14;
      v27 = 2080;
      v28 = "[VCTransportSessionMultiLink updateTransportStreamRemoteSSRCList:shouldAddRemoteSSRC:remoteEndpointSSRC:]";
      v29 = 1024;
      v30 = 234;
      v31 = 2112;
      v32 = @"UnderlyingVFD";
      v33 = 2112;
      selfCopy2 = list;
      v16 = " [%s] %s:%d Could not get property '%@' for transport stream '%@'";
      v17 = v15;
      v18 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136316674;
      v26 = v19;
      v27 = 2080;
      v28 = "[VCTransportSessionMultiLink updateTransportStreamRemoteSSRCList:shouldAddRemoteSSRC:remoteEndpointSSRC:]";
      v29 = 1024;
      v30 = 234;
      v31 = 2112;
      v32 = v13;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2112;
      v36 = @"UnderlyingVFD";
      v37 = 2112;
      listCopy2 = list;
      v16 = " [%s] %s:%d %@(%p) Could not get property '%@' for transport stream '%@'";
      v17 = v20;
      v18 = 68;
    }

LABEL_20:
    _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_18;
  }

  v11 = v10(CMBaseObject, @"UnderlyingVFD", *MEMORY[0x1E695E480], &v24);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  if (!v24)
  {
    [VCTransportSessionMultiLink updateTransportStreamRemoteSSRCList:shouldAddRemoteSSRC:remoteEndpointSSRC:];
    v11 = *buf;
    goto LABEL_18;
  }

  if (!VTP_UpdateRemoteSSRCList([v24 intValue], rC, cCopy))
  {
    v11 = *__error() | 0xC02B0000;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink updateTransportStreamRemoteSSRCList:shouldAddRemoteSSRC:remoteEndpointSSRC:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v26 = v22;
          v27 = 2080;
          v28 = "[VCTransportSessionMultiLink updateTransportStreamRemoteSSRCList:shouldAddRemoteSSRC:remoteEndpointSSRC:]";
          v29 = 1024;
          v30 = 239;
          v31 = 2112;
          v32 = v12;
          v33 = 2048;
          selfCopy2 = self;
          v35 = 1024;
          LODWORD(v36) = v11;
          v16 = " [%s] %s:%d %@(%p) VTP_UpdateRemoteSSRCList failed %x";
          v17 = v23;
          v18 = 54;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_18:

  return v11;
}

- (int)updateTransportStream:(OpaqueVCTransportStream *)stream
{
  v38 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._stateQueue);
  v23 = 0;
  CMBaseObject = VCPacketFilterGetCMBaseObject(stream, v5);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v8 = -12782;
LABEL_7:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_16;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 136316162;
      v25 = v12;
      v26 = 2080;
      v27 = "[VCTransportSessionMultiLink updateTransportStream:]";
      v28 = 1024;
      v29 = 251;
      v30 = 2112;
      v31 = @"UnderlyingVFD";
      v32 = 2112;
      selfCopy2 = stream;
      v14 = " [%s] %s:%d Could not get property '%@' for transport stream '%@'";
      v15 = v13;
      v16 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_16;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 136316674;
      v25 = v17;
      v26 = 2080;
      v27 = "[VCTransportSessionMultiLink updateTransportStream:]";
      v28 = 1024;
      v29 = 251;
      v30 = 2112;
      v31 = v11;
      v32 = 2048;
      selfCopy2 = self;
      v34 = 2112;
      v35 = @"UnderlyingVFD";
      v36 = 2112;
      streamCopy2 = stream;
      v14 = " [%s] %s:%d %@(%p) Could not get property '%@' for transport stream '%@'";
      v15 = v18;
      v16 = 68;
    }

LABEL_18:
    _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_16;
  }

  v8 = v7(CMBaseObject, @"UnderlyingVFD", *MEMORY[0x1E695E480], &v23);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  if (!v23)
  {
    [VCTransportSessionMultiLink updateTransportStream:];
    v8 = *buf;
    goto LABEL_16;
  }

  intValue = [v23 intValue];
  v10 = VCDatagramChannelMultiLink_Token(self->_datagramChannel);
  if (VTP_SetSourceDestinationWithToken(intValue, v10) != -1)
  {
    [(VCTransportSessionMultiLink *)self getTransportLargeBufferIndicationWithStreamProperty];
    goto LABEL_16;
  }

  v8 = *__error() | 0xC02B0000;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportSessionMultiLink updateTransportStream:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v25 = v21;
        v26 = 2080;
        v27 = "[VCTransportSessionMultiLink updateTransportStream:]";
        v28 = 1024;
        v29 = 257;
        v30 = 2112;
        v31 = v20;
        v32 = 2048;
        selfCopy2 = self;
        v34 = 1024;
        LODWORD(v35) = v8;
        v14 = " [%s] %s:%d %@(%p) VTP_SetSourceDestinationWithToken failed %x";
        v15 = v22;
        v16 = 54;
        goto LABEL_18;
      }
    }
  }

LABEL_16:

  return v8;
}

- (void)cleanupDatagramChannel
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._stateQueue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  nwConnectionInfoList = self->_nwConnectionInfoList;
  v4 = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(nwConnectionInfoList);
        }

        nw_connection_cancel([*(*(&v9 + 1) + 8 * i) connection]);
      }

      v5 = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }

  [(VCDatagramChannelMultiLink *)self->_datagramChannel invalidate];
  [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager removeDatagramChannel:"removeDatagramChannel:", self->_datagramChannel];

  self->_datagramChannel = 0;
}

- (int)setRemoteEndpoints:(id)endpoints error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCTransportSessionMultiLink_setRemoteEndpoints_error___block_invoke;
  block[3] = &unk_1E85F61F8;
  block[4] = self;
  block[5] = endpoints;
  block[6] = &v8;
  block[7] = error;
  dispatch_sync(stateQueue, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __56__VCTransportSessionMultiLink_setRemoteEndpoints_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedSetRemoteEndpoints:*(a1 + 40) error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)dispatchedSetRemoteEndpoints:(id)endpoints error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._stateQueue);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (endpoints)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = [endpoints countByEnumeratingWithState:&v50 objects:v49 count:16];
    if (v7)
    {
      v8 = v7;
      v33 = v6;
      v9 = 0;
      v35 = *v51;
      obj = endpoints;
      while (1)
      {
        v10 = 0;
        do
        {
          if (*v51 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v50 + 1) + 8 * v10);
          v12 = [(VCTransportSessionMultiLink *)self dispatchedAddRemoteEndpoint:v11 error:error];
          v13 = objc_opt_class();
          if ((v12 & 0x80000000) == 0)
          {
            if (v13 == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v26 = VRTraceErrorLogLevelToCSTR();
                v27 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v38 = v26;
                  v39 = 2080;
                  v40 = "[VCTransportSessionMultiLink dispatchedSetRemoteEndpoints:error:]";
                  v41 = 1024;
                  v42 = 298;
                  v43 = 2112;
                  v44 = v11;
                  v17 = v27;
                  v18 = " [%s] %s:%d Added connection with remote endpoint=%@";
                  v19 = 38;
LABEL_23:
                  _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
                }
              }
            }

            else
            {
              v14 = &stru_1F570E008;
              if (objc_opt_respondsToSelector())
              {
                v14 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
              }

              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v15 = VRTraceErrorLogLevelToCSTR();
                v16 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316418;
                  v38 = v15;
                  v39 = 2080;
                  v40 = "[VCTransportSessionMultiLink dispatchedSetRemoteEndpoints:error:]";
                  v41 = 1024;
                  v42 = 298;
                  v43 = 2112;
                  v44 = v14;
                  v45 = 2048;
                  selfCopy2 = self;
                  v47 = 2112;
                  v48 = v11;
                  v17 = v16;
                  v18 = " [%s] %s:%d %@(%p) Added connection with remote endpoint=%@";
                  v19 = 58;
                  goto LABEL_23;
                }
              }
            }

            ++v9;
            goto LABEL_25;
          }

          if (v13 == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v28 = VRTraceErrorLogLevelToCSTR();
              v29 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v38 = v28;
                v39 = 2080;
                v40 = "[VCTransportSessionMultiLink dispatchedSetRemoteEndpoints:error:]";
                v41 = 1024;
                v42 = 296;
                v43 = 2112;
                v44 = v11;
                v23 = v29;
                v24 = " [%s] %s:%d Failed to add connection with remote endpoint=%@";
                v25 = 38;
                goto LABEL_30;
              }
            }
          }

          else
          {
            v20 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v20 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v21 = VRTraceErrorLogLevelToCSTR();
              v22 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                v38 = v21;
                v39 = 2080;
                v40 = "[VCTransportSessionMultiLink dispatchedSetRemoteEndpoints:error:]";
                v41 = 1024;
                v42 = 296;
                v43 = 2112;
                v44 = v20;
                v45 = 2048;
                selfCopy2 = self;
                v47 = 2112;
                v48 = v11;
                v23 = v22;
                v24 = " [%s] %s:%d %@(%p) Failed to add connection with remote endpoint=%@";
                v25 = 58;
LABEL_30:
                _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v24, buf, v25);
              }
            }
          }

LABEL_25:
          ++v10;
        }

        while (v8 != v10);
        endpoints = obj;
        v30 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
        v8 = v30;
        if (!v30)
        {
          v31 = v12;
          v6 = v33;
          goto LABEL_34;
        }
      }
    }

    v31 = 0;
    v9 = 0;
LABEL_34:
    if ([endpoints count] != v9)
    {
      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32002, v31, 0, @"Failed to add remote endpoints", [MEMORY[0x1E696AEC0] stringWithFormat:@"Connections to add=%lu but connections added=%d", objc_msgSend(endpoints, "count"), v9]);
    }

    if (v9)
    {
      return 0;
    }
  }

  else
  {
    [VCTransportSessionMultiLink dispatchedSetRemoteEndpoints:error:];
  }

  return -2144665536;
}

- (int)addRemoteEndpoint:(id)endpoint error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCTransportSessionMultiLink_addRemoteEndpoint_error___block_invoke;
  block[3] = &unk_1E85F61F8;
  block[4] = self;
  block[5] = endpoint;
  block[6] = &v8;
  block[7] = error;
  dispatch_sync(stateQueue, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __55__VCTransportSessionMultiLink_addRemoteEndpoint_error___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  *(v2[1]->info + 24) = [*(a1 + 32) dispatchedAddRemoteEndpoint:*(a1 + 40) error:*(a1 + 56)];
  v3 = *(v2[1]->info + 24);
  v4 = objc_opt_class();
  v5 = *(v2 - 1);
  if (v3 < 0)
  {
    if (v4 == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __55__VCTransportSessionMultiLink_addRemoteEndpoint_error___block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v20 = *(a1 + 32);
          v21 = *(a1 + 40);
          v22 = 136316418;
          v23 = v18;
          v24 = 2080;
          v25 = "[VCTransportSessionMultiLink addRemoteEndpoint:error:]_block_invoke";
          v26 = 1024;
          v27 = 321;
          v28 = 2112;
          v29 = v7;
          v30 = 2048;
          v31 = v20;
          v32 = 2112;
          v33 = v21;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to add connection with remote endpoint=%@", &v22, 0x3Au);
        }
      }
    }
  }

  else if (v4 == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v2;
        v22 = 136315906;
        v23 = v8;
        v24 = 2080;
        v25 = "[VCTransportSessionMultiLink addRemoteEndpoint:error:]_block_invoke";
        v26 = 1024;
        v27 = 323;
        v28 = 2112;
        v29 = v10;
        v11 = " [%s] %s:%d Added connection with remote endpoint=%@";
        v12 = v9;
        v13 = 38;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v22, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v22 = 136316418;
        v23 = v14;
        v24 = 2080;
        v25 = "[VCTransportSessionMultiLink addRemoteEndpoint:error:]_block_invoke";
        v26 = 1024;
        v27 = 323;
        v28 = 2112;
        v29 = v6;
        v30 = 2048;
        v31 = v16;
        v32 = 2112;
        v33 = v17;
        v11 = " [%s] %s:%d %@(%p) Added connection with remote endpoint=%@";
        v12 = v15;
        v13 = 58;
        goto LABEL_15;
      }
    }
  }
}

- (int)updateTransportStreamsRemoteSSRCList:(unsigned int)list shouldAddRemoteSSRC:(BOOL)c
{
  cCopy = c;
  v40 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableArray *)self->super._streams count];
  if (v7 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = v7 & 0x7FFFFFFF;
  while (1)
  {
    v11 = [(NSMutableArray *)self->super._streams objectAtIndexedSubscript:v8];
    v25 = 0;
    CMBaseObject = VCPacketFilterGetCMBaseObject(v11, v12);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v14 || (v14(CMBaseObject, @"TransportStreamIndex", v9, &v25) & 0x80000000) != 0)
    {
      break;
    }

    if (!v25)
    {
      [VCTransportSessionMultiLink updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:];
      return 0;
    }

    v15 = -[VCTransportSessionMultiLink updateTransportStreamRemoteSSRCList:shouldAddRemoteSSRC:remoteEndpointSSRC:](self, "updateTransportStreamRemoteSSRCList:shouldAddRemoteSSRC:remoteEndpointSSRC:", v11, cCopy, [v25 intValue] + list);

    if (v15 < 0)
    {
      [VCTransportSessionMultiLink updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:];
      return 0;
    }

    if (v10 == ++v8)
    {
      return 0;
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136316162;
    v27 = v17;
    v28 = 2080;
    v29 = "[VCTransportSessionMultiLink updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:]";
    v30 = 1024;
    v31 = 337;
    v32 = 2112;
    v33 = @"TransportStreamIndex";
    v34 = 2112;
    selfCopy = v11;
    v19 = " [%s] %s:%d Could not get property '%@' for transport stream '%@'";
    v20 = v18;
    v21 = 48;
LABEL_20:
    _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
  }

  else
  {
    v16 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v27 = v22;
      v28 = 2080;
      v29 = "[VCTransportSessionMultiLink updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:]";
      v30 = 1024;
      v31 = 337;
      v32 = 2112;
      v33 = v16;
      v34 = 2048;
      selfCopy = self;
      v36 = 2112;
      v37 = @"TransportStreamIndex";
      v38 = 2112;
      v39 = v11;
      v19 = " [%s] %s:%d %@(%p) Could not get property '%@' for transport stream '%@'";
      v20 = v23;
      v21 = 68;
      goto LABEL_20;
    }
  }

  return 0;
}

- (int)dispatchedAddRemoteEndpoint:(id)endpoint error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._stateQueue);
  v7 = objc_alloc_init(VCNWConnectionInfo);
  v8 = -[VCTransportSessionMultiLink canAddConnectionWithRemoteEndpoint:](self, "canAddConnectionWithRemoteEndpoint:", [endpoint endpoint]);
  if (v8 < 0)
  {
    v10 = v8;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:];
        }
      }

      goto LABEL_34;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_34;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v32 = 136316418;
    *&v32[4] = v24;
    *&v32[12] = 2080;
    *&v32[14] = "[VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:]";
    *&v32[22] = 1024;
    LODWORD(v33) = 357;
    WORD2(v33) = 2112;
    *(&v33 + 6) = v21;
    HIWORD(v33) = 2048;
    selfCopy4 = self;
    LOWORD(v35) = 2048;
    *(&v35 + 2) = endpoint;
    v26 = " [%s] %s:%d %@(%p) Cannot add remote endpoint=%p";
    goto LABEL_52;
  }

  v9 = -[VCTransportSessionMultiLink createNWConnectionWithConnectionInfo:remoteEndpoint:](self, "createNWConnectionWithConnectionInfo:remoteEndpoint:", v7, [endpoint endpoint]);
  if (v9 < 0)
  {
    v10 = v9;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:];
        }
      }

      goto LABEL_34;
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_34;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v32 = 136316418;
    *&v32[4] = v27;
    *&v32[12] = 2080;
    *&v32[14] = "[VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:]";
    *&v32[22] = 1024;
    LODWORD(v33) = 360;
    WORD2(v33) = 2112;
    *(&v33 + 6) = v22;
    HIWORD(v33) = 2048;
    selfCopy4 = self;
    LOWORD(v35) = 2048;
    *(&v35 + 2) = endpoint;
    v26 = " [%s] %s:%d %@(%p) Failed to create NWConnection with remote endpoint=%p";
LABEL_52:
    v28 = v25;
    v29 = 58;
LABEL_57:
    _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, v26, v32, v29);
    goto LABEL_34;
  }

  -[VCNWConnectionInfo setRemoteSSRC:](v7, "setRemoteSSRC:", [endpoint rtpSSRC]);
  [(NSMutableArray *)self->_nwConnectionInfoList addObject:v7];
  if ([(VCTransportSessionMultiLink *)self setupNWConnectionWithConnectionInfo:v7]< 0)
  {
    [VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:];
LABEL_33:
    v10 = *v32;
    goto LABEL_34;
  }

  if (self->_isStarted)
  {
    if ([(VCTransportSessionMultiLink *)self startNWConnectionWithConnectionInfo:v7]< 0)
    {
      [VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:];
      goto LABEL_33;
    }

    [(VCTransportSessionMultiLink *)self initializeNetworkMTU];
  }

  if ([(VCDatagramChannelMultiLink *)self->_datagramChannel addConnection:[(VCNWConnectionInfo *)v7 connection] error:0]< 0)
  {
    [VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:];
    goto LABEL_33;
  }

  v10 = -[VCTransportSessionMultiLink updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:](self, "updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:", [endpoint rtpSSRC], 1);
  v11 = objc_opt_class();
  if (v10 < 0)
  {
    if (v11 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:];
        }
      }

      goto LABEL_34;
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v23 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *v32 = 136316162;
        *&v32[4] = v30;
        *&v32[12] = 2080;
        *&v32[14] = "[VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:]";
        *&v32[22] = 1024;
        LODWORD(v33) = 378;
        WORD2(v33) = 2112;
        *(&v33 + 6) = v23;
        HIWORD(v33) = 2048;
        selfCopy4 = self;
        v26 = " [%s] %s:%d %@(%p) Failed to update the transport streams with the remote endpoint info";
        v28 = v31;
        v29 = 48;
        goto LABEL_57;
      }
    }

LABEL_34:
    [GKVoiceChatError getNSError:error code:32002 detailedCode:v10 filePath:0 description:@"Add remote endpoint failed" reason:@"Failed to schedule receives for NWConnection", *v32, *&v32[16], v33, selfCopy4, v35];
    goto LABEL_20;
  }

  if (v11 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [endpoint endpoint];
        *v32 = 136315906;
        *&v32[4] = v13;
        *&v32[12] = 2080;
        *&v32[14] = "[VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:]";
        *&v32[22] = 1024;
        LODWORD(v33) = 380;
        WORD2(v33) = 2080;
        *(&v33 + 6) = nw_endpoint_get_description();
        v15 = " [%s] %s:%d Added remote NW endpoint=%s";
        v16 = v14;
        v17 = 38;
LABEL_19:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, v32, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [endpoint endpoint];
        *v32 = 136316418;
        *&v32[4] = v18;
        *&v32[12] = 2080;
        *&v32[14] = "[VCTransportSessionMultiLink dispatchedAddRemoteEndpoint:error:]";
        *&v32[22] = 1024;
        LODWORD(v33) = 380;
        WORD2(v33) = 2112;
        *(&v33 + 6) = v12;
        HIWORD(v33) = 2048;
        selfCopy4 = self;
        LOWORD(v35) = 2080;
        *(&v35 + 2) = nw_endpoint_get_description();
        v15 = " [%s] %s:%d %@(%p) Added remote NW endpoint=%s";
        v16 = v19;
        v17 = 58;
        goto LABEL_19;
      }
    }
  }

LABEL_20:

  return v10;
}

- (int)removeRemoteEndpoint:(id)endpoint error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCTransportSessionMultiLink_removeRemoteEndpoint_error___block_invoke;
  block[3] = &unk_1E85F61F8;
  block[4] = self;
  block[5] = endpoint;
  block[6] = &v8;
  block[7] = error;
  dispatch_sync(stateQueue, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __58__VCTransportSessionMultiLink_removeRemoteEndpoint_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedRemoveRemoteEndpoint:*(a1 + 40) error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)dispatchedRemoveRemoteEndpoint:(id)endpoint error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._stateQueue);
  if (!endpoint)
  {
    [VCTransportSessionMultiLink dispatchedRemoveRemoteEndpoint:error:];
LABEL_24:
    v10 = v24;
LABEL_25:
    [GKVoiceChatError getNSError:error code:32016 detailedCode:v10 filePath:0 description:@"Remove remote endpoint failed" reason:@"Invalid remote NWEndpoint"];
    return v10;
  }

  v7 = +[NetworkUtils networkAddressFromEndpoint:](NetworkUtils, "networkAddressFromEndpoint:", [endpoint endpoint]);
  if (!v7)
  {
    [VCTransportSessionMultiLink dispatchedRemoveRemoteEndpoint:error:];
    goto LABEL_24;
  }

  v8 = [(VCTransportSessionMultiLink *)self connectionInfoWithRemoteAddress:v7];
  if (!v8)
  {
    [VCTransportSessionMultiLink dispatchedRemoveRemoteEndpoint:error:];
    goto LABEL_24;
  }

  v9 = v8;
  if (-[VCDatagramChannelMultiLink removeConnection:error:](self->_datagramChannel, "removeConnection:error:", [v8 connection], 0) < 0)
  {
    [VCTransportSessionMultiLink dispatchedRemoveRemoteEndpoint:error:];
    goto LABEL_24;
  }

  [(NSMutableArray *)self->_nwConnectionInfoList removeObject:v9];
  if ([(VCTransportSessionMultiLink *)self invalidateNWConnectionWithConnectionInfo:v9]< 0)
  {
    [VCTransportSessionMultiLink dispatchedRemoveRemoteEndpoint:error:];
    goto LABEL_24;
  }

  v10 = -[VCTransportSessionMultiLink updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:](self, "updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:", [endpoint rtpSSRC], 0);
  v11 = objc_opt_class();
  if (v10 < 0)
  {
    if (v11 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink dispatchedRemoveRemoteEndpoint:error:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
      }

      else
      {
        v21 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v24 = 136316162;
          v25 = v22;
          v26 = 2080;
          v27 = "[VCTransportSessionMultiLink dispatchedRemoveRemoteEndpoint:error:]";
          v28 = 1024;
          v29 = 423;
          v30 = 2112;
          description = v21;
          v32 = 2048;
          selfCopy2 = self;
          _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to update the transport streams with the remote endpoint info", &v24, 0x30u);
        }
      }
    }

    goto LABEL_25;
  }

  if (v11 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [endpoint endpoint];
        v24 = 136315906;
        v25 = v13;
        v26 = 2080;
        v27 = "[VCTransportSessionMultiLink dispatchedRemoveRemoteEndpoint:error:]";
        v28 = 1024;
        v29 = 425;
        v30 = 2080;
        description = nw_endpoint_get_description();
        v15 = " [%s] %s:%d Removed remote NW endpoint=%s";
        v16 = v14;
        v17 = 38;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v24, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [endpoint endpoint];
        v24 = 136316418;
        v25 = v18;
        v26 = 2080;
        v27 = "[VCTransportSessionMultiLink dispatchedRemoveRemoteEndpoint:error:]";
        v28 = 1024;
        v29 = 425;
        v30 = 2112;
        description = v12;
        v32 = 2048;
        selfCopy2 = self;
        v34 = 2080;
        v35 = nw_endpoint_get_description();
        v15 = " [%s] %s:%d %@(%p) Removed remote NW endpoint=%s";
        v16 = v19;
        v17 = 58;
        goto LABEL_17;
      }
    }
  }

  return v10;
}

- (tagVCNWConnectionMonitor)createNWMonitor
{
  v10[6] = *MEMORY[0x1E69E9840];
  v3 = nw_endpoint_copy_interface();
  v4 = v3;
  if (v3)
  {
    name = nw_interface_get_name(v3);
    isIPv6 = self->_isIPv6;
    nwMonitorEventHandlerQueue = [(VCTransportSession *)self nwMonitorEventHandlerQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__VCTransportSessionMultiLink_createNWMonitor__block_invoke;
    v10[3] = &unk_1E85F3778;
    v10[4] = self;
    v8 = VCNWConnectionMonitor_CreateWithInterfaceName(name, 8, isIPv6, nwMonitorEventHandlerQueue, v10);
  }

  else
  {
    [VCTransportSessionMultiLink createNWMonitor];
    v8 = v10[5];
  }

  nw_release(v4);
  return v8;
}

- (int)createNWParametersAndListener:(BOOL)listener
{
  listenerCopy = listener;
  v57 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v5 = nw_endpoint_copy_interface();
  if (!v5)
  {
    *(v42 + 6) = -2144665596;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          description = nw_endpoint_get_description();
          [(VCTransportSessionMultiLink *)v20 createNWParametersAndListener:buf];
        }
      }

      goto LABEL_67;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v26 = nw_endpoint_get_description();
        *buf = 136316418;
        v46 = v24;
        v47 = 2080;
        v48 = "[VCTransportSessionMultiLink createNWParametersAndListener:]";
        v49 = 1024;
        v50 = 491;
        v51 = 2112;
        v52 = v14;
        v53 = 2048;
        selfCopy6 = self;
        v55 = 2080;
        v56 = v26;
        v27 = " [%s] %s:%d %@(%p) Failed to retrieve interface for NW Endpoint=%s";
        v28 = v25;
        v29 = 58;
LABEL_66:
        _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
        goto LABEL_67;
      }
    }

    goto LABEL_67;
  }

  if (!listenerCopy)
  {
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
    if (secure_udp)
    {
      v10 = 0;
      v8 = 0;
      goto LABEL_9;
    }

    *(v42 + 6) = -2144665596;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createNWParametersAndListener:];
        }
      }

      goto LABEL_67;
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v46 = v35;
        v47 = 2080;
        v48 = "[VCTransportSessionMultiLink createNWParametersAndListener:]";
        v49 = 1024;
        v50 = 508;
        v51 = 2112;
        v52 = v17;
        v53 = 2048;
        selfCopy6 = self;
        v27 = " [%s] %s:%d %@(%p) Failed to create NW Parameters";
        goto LABEL_65;
      }
    }

LABEL_67:
    v10 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
  secure_udp = legacy_tcp_socket;
  if (!legacy_tcp_socket)
  {
    *(v42 + 6) = -2144665596;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createNWParametersAndListener:];
        }
      }

      goto LABEL_67;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v46 = v33;
        v47 = 2080;
        v48 = "[VCTransportSessionMultiLink createNWParametersAndListener:]";
        v49 = 1024;
        v50 = 496;
        v51 = 2112;
        v52 = v16;
        v53 = 2048;
        selfCopy6 = self;
        v27 = " [%s] %s:%d %@(%p) Failed to create NW Parameters";
LABEL_65:
        v28 = v34;
        v29 = 48;
        goto LABEL_66;
      }
    }

    goto LABEL_67;
  }

  v8 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
  if (!v8)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createNWParametersAndListener:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v46 = v36;
          v47 = 2080;
          v48 = "[VCTransportSessionMultiLink createNWParametersAndListener:]";
          v49 = 1024;
          v50 = 499;
          v51 = 2112;
          v52 = v18;
          v53 = 2048;
          selfCopy6 = self;
          _os_log_error_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create protocol stack", buf, 0x30u);
        }
      }
    }

    v10 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E128C6A0]();
  v10 = v9;
  if (!v9)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createNWParametersAndListener:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v46 = v38;
          v47 = 2080;
          v48 = "[VCTransportSessionMultiLink createNWParametersAndListener:]";
          v49 = 1024;
          v50 = 502;
          v51 = 2112;
          v52 = v19;
          v53 = 2048;
          selfCopy6 = self;
          _os_log_error_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create protocol options", buf, 0x30u);
        }
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

  MEMORY[0x1E128C6C0](v9, 1);
  nw_protocol_stack_set_transport_protocol(v8, v10);
LABEL_9:
  nw_parameters_require_interface(secure_udp, v5);
  nw_parameters_set_reuse_local_address(secure_udp, 1);
  nw_parameters_set_disable_listener_datapath();
  +[VCVTPWrapper connectionContext];
  nw_parameters_set_context();
  v11 = nw_listener_create(secure_udp);
  if (v11)
  {
    nw_listener_set_queue(v11, +[VCVTPWrapper targetQueue]);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __61__VCTransportSessionMultiLink_createNWParametersAndListener___block_invoke;
    v40[3] = &unk_1E85FA150;
    v40[4] = self;
    v40[5] = &v41;
    nw_listener_set_new_connection_handler(v11, v40);
    self->_listener = v11;
    self->_localParameters = secure_udp;
LABEL_11:
    secure_udp = 0;
    goto LABEL_12;
  }

  *(v42 + 6) = -2144665596;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v23 = nw_endpoint_get_description();
        [(VCTransportSessionMultiLink *)v22 createNWParametersAndListener:v23, buf];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v32 = nw_endpoint_get_description();
        *buf = 136316418;
        v46 = v30;
        v47 = 2080;
        v48 = "[VCTransportSessionMultiLink createNWParametersAndListener:]";
        v49 = 1024;
        v50 = 517;
        v51 = 2112;
        v52 = v15;
        v53 = 2048;
        selfCopy6 = self;
        v55 = 2080;
        v56 = v32;
        _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the NW Listener for NW Endpoint=%s", buf, 0x3Au);
      }
    }
  }

LABEL_12:
  nw_release(v10);
  nw_release(v8);
  nw_release(v5);
  nw_release(secure_udp);
  nw_release(0);
  v12 = *(v42 + 6);
  _Block_object_dispose(&v41, 8);
  return v12;
}

void __61__VCTransportSessionMultiLink_createNWParametersAndListener___block_invoke(uint64_t a1, NSObject *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = -2144665596;
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __61__VCTransportSessionMultiLink_createNWParametersAndListener___block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = 136316162;
        v9 = v5;
        v10 = 2080;
        v11 = "[VCTransportSessionMultiLink createNWParametersAndListener:]_block_invoke";
        v12 = 1024;
        v13 = 522;
        v14 = 2112;
        v15 = v4;
        v16 = 2048;
        v17 = v7;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected connection callback on NW Listener", &v8, 0x30u);
      }
    }
  }

  nw_connection_cancel(a2);
}

- (int)updateLocalEndpoint
{
  v35 = *MEMORY[0x1E69E9840];
  address = nw_endpoint_get_address(self->_localEndpoint);
  if (!address)
  {
    if (objc_opt_class() == self)
    {
      v9 = -2144665599;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink updateLocalEndpoint];
        }
      }

      goto LABEL_31;
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    v9 = -2144665599;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_31;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v23 = 136316418;
    v24 = v14;
    v25 = 2080;
    v26 = "[VCTransportSessionMultiLink updateLocalEndpoint]";
    v27 = 1024;
    v28 = 546;
    v29 = 2112;
    v30 = v11;
    v31 = 2048;
    selfCopy3 = self;
    v33 = 2080;
    description = nw_endpoint_get_description();
    v16 = " [%s] %s:%d %@(%p) Endpoint=%s is not of type of nw_endpoint_type_address";
    v17 = v15;
    v18 = 58;
    goto LABEL_37;
  }

  v4 = address;
  v5 = nw_endpoint_copy_interface();
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      v9 = -2144665596;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink updateLocalEndpoint];
        }
      }

      goto LABEL_31;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    v9 = -2144665596;
    if (VRTraceGetErrorLogLevelForModule() < 3 || (v19 = VRTraceErrorLogLevelToCSTR(), v20 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_31:
      v6 = 0;
      goto LABEL_5;
    }

    v23 = 136316162;
    v24 = v19;
    v25 = 2080;
    v26 = "[VCTransportSessionMultiLink updateLocalEndpoint]";
    v27 = 1024;
    v28 = 548;
    v29 = 2112;
    v30 = v12;
    v31 = 2048;
    selfCopy3 = self;
    v16 = " [%s] %s:%d %@(%p) Failed to retrieve interface";
    v17 = v20;
    v18 = 48;
LABEL_37:
    _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v16, &v23, v18);
    goto LABEL_31;
  }

  v6 = v5;
  *v4->sa_data = bswap32(self->_localPort) >> 16;
  v7 = nw_endpoint_create_address(v4);
  if (v7)
  {
    v8 = v7;
    nw_endpoint_set_interface();
    nw_parameters_set_local_endpoint(self->_localParameters, v8);
    nw_release(self->_localEndpoint);
    v9 = 0;
    self->_localEndpoint = v8;
  }

  else if (objc_opt_class() == self)
  {
    v9 = -2144665596;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportSessionMultiLink updateLocalEndpoint];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    v9 = -2144665596;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v23 = 136316162;
        v24 = v21;
        v25 = 2080;
        v26 = "[VCTransportSessionMultiLink updateLocalEndpoint]";
        v27 = 1024;
        v28 = 559;
        v29 = 2112;
        v30 = v13;
        v31 = 2048;
        selfCopy3 = self;
        _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Could not create updated local endpoint", &v23, 0x30u);
      }
    }
  }

LABEL_5:
  nw_release(v6);
  nw_release(0);
  return v9;
}

- (int)createAndStartNWListener:(id)listener useBackingSocket:(BOOL)socket error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  if (!listener)
  {
    if (objc_opt_class() == self)
    {
      v16 = -2144665599;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:];
        }
      }

      goto LABEL_61;
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    v16 = -2144665599;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_61;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    *buf = 136316162;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = "[VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:]";
    *&buf[22] = 1024;
    LODWORD(v40) = 584;
    WORD2(v40) = 2112;
    *(&v40 + 6) = v18;
    HIWORD(v40) = 2048;
    selfCopy7 = self;
    v27 = " [%s] %s:%d %@(%p) Local NW Endpoint is nil";
LABEL_84:
    v30 = v26;
    v31 = 48;
    goto LABEL_85;
  }

  socketCopy = socket;
  address = nw_endpoint_get_address(listener);
  if (!address)
  {
    if (objc_opt_class() == self)
    {
      v16 = -2144665599;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:];
        }
      }

      goto LABEL_61;
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    v16 = -2144665599;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_61;
    }

    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    *buf = 136316418;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = "[VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:]";
    *&buf[22] = 1024;
    LODWORD(v40) = 588;
    WORD2(v40) = 2112;
    *(&v40 + 6) = v19;
    HIWORD(v40) = 2048;
    selfCopy7 = self;
    LOWORD(v42) = 2080;
    *(&v42 + 2) = nw_endpoint_get_description();
    v27 = " [%s] %s:%d %@(%p) Client-provided endpoint=%s is not of type of nw_endpoint_type_address";
    v30 = v29;
    v31 = 58;
LABEL_85:
    _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, v27, buf, v31);
    goto LABEL_61;
  }

  v10 = address;
  port = nw_endpoint_get_port(listener);
  v12 = nw_endpoint_copy_interface();
  if (!v12)
  {
    if (objc_opt_class() == self)
    {
      v16 = -2144665596;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:];
        }
      }

      goto LABEL_61;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    v16 = -2144665596;
    if (VRTraceGetErrorLogLevelForModule() < 3 || (v32 = VRTraceErrorLogLevelToCSTR(), v26 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_61:
      v13 = 0;
      goto LABEL_62;
    }

    *buf = 136316162;
    *&buf[4] = v32;
    *&buf[12] = 2080;
    *&buf[14] = "[VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:]";
    *&buf[22] = 1024;
    LODWORD(v40) = 593;
    WORD2(v40) = 2112;
    *(&v40 + 6) = v20;
    HIWORD(v40) = 2048;
    selfCopy7 = self;
    v27 = " [%s] %s:%d %@(%p) Failed to retrieve client-provided interface";
    goto LABEL_84;
  }

  v13 = v12;
  v14 = nw_endpoint_create_address(v10);
  self->_localEndpoint = v14;
  if (!v14)
  {
    if (objc_opt_class() == self)
    {
      v16 = -2144665599;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:];
        }
      }

      goto LABEL_62;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    v16 = -2144665599;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_62;
    }

    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *buf = 136316162;
    *&buf[4] = v33;
    *&buf[12] = 2080;
    *&buf[14] = "[VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:]";
    *&buf[22] = 1024;
    LODWORD(v40) = 596;
    WORD2(v40) = 2112;
    *(&v40 + 6) = v21;
    HIWORD(v40) = 2048;
    selfCopy7 = self;
    v35 = " [%s] %s:%d %@(%p) Could not create local endpoint";
    goto LABEL_82;
  }

  nw_endpoint_set_interface();
  if ([(VCTransportSessionMultiLink *)self createNWParametersAndListener:socketCopy]< 0)
  {
    v16 = -2144665596;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:];
        }
      }

      goto LABEL_62;
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_62;
    }

    v36 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *buf = 136316162;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = "[VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:]";
    *&buf[22] = 1024;
    LODWORD(v40) = 600;
    WORD2(v40) = 2112;
    *(&v40 + 6) = v22;
    HIWORD(v40) = 2048;
    selfCopy7 = self;
    v35 = " [%s] %s:%d %@(%p) Failed to create the NW Parameters and Listener";
    goto LABEL_82;
  }

  reserveLocalPortWithListener = [(VCTransportSessionMultiLink *)self reserveLocalPortWithListener];
  if (reserveLocalPortWithListener < 0)
  {
    v16 = -2144665596;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:];
        }
      }

      goto LABEL_62;
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v23 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_62;
    }

    v37 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *buf = 136316162;
    *&buf[4] = v37;
    *&buf[12] = 2080;
    *&buf[14] = "[VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:]";
    *&buf[22] = 1024;
    LODWORD(v40) = 603;
    WORD2(v40) = 2112;
    *(&v40 + 6) = v23;
    HIWORD(v40) = 2048;
    selfCopy7 = self;
    v35 = " [%s] %s:%d %@(%p) Failed to resolve the local port";
LABEL_82:
    _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, v35, buf, 0x30u);
    goto LABEL_62;
  }

  if (port != self->_localPort)
  {
    reserveLocalPortWithListener = [(VCTransportSessionMultiLink *)self updateLocalEndpoint];
    if (reserveLocalPortWithListener < 0)
    {
      v16 = -2144665596;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:];
          }
        }

        goto LABEL_62;
      }

      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = v38;
          *&buf[12] = 2080;
          *&buf[14] = "[VCTransportSessionMultiLink createAndStartNWListener:useBackingSocket:error:]";
          *&buf[22] = 1024;
          LODWORD(v40) = 610;
          WORD2(v40) = 2112;
          *(&v40 + 6) = v24;
          HIWORD(v40) = 2048;
          selfCopy7 = self;
          v35 = " [%s] %s:%d %@(%p) Failed to update local endpoint";
          goto LABEL_82;
        }
      }

LABEL_62:
      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32016, 120, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionMultiLink.m", 624, *buf, *&buf[16], v40, selfCopy7, v42], @"Internal error", @"Internal error while creating NW Listener and reserving local port");
      goto LABEL_10;
    }
  }

  v16 = reserveLocalPortWithListener;
  nw_endpoint_set_interface();
  [(VCTransportSessionMultiLink *)self initializeIsIPv6];
  [(VCTransportSessionMultiLink *)self initializeInterfaceType];
LABEL_10:
  nw_release(v13);
  return v16;
}

- (int)reserveLocalPortWithListener
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -2144665596;
  v3 = dispatch_semaphore_create(0);
  listener = self->_listener;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__VCTransportSessionMultiLink_reserveLocalPortWithListener__block_invoke;
  v11[3] = &unk_1E85FA178;
  v11[4] = self;
  v11[5] = v3;
  v11[6] = &v12;
  MEMORY[0x1E128C4B0](listener, v11);
  nw_listener_start(self->_listener);
  v5 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v3, v5) || (v13[3] & 0x80000000) != 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionMultiLink reserveLocalPortWithListener];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v17 = v9;
          v18 = 2080;
          v19 = "[VCTransportSessionMultiLink reserveLocalPortWithListener]";
          v20 = 1024;
          v21 = 653;
          v22 = 2112;
          v23 = v8;
          v24 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Timeout ocurred waiting for NW Listener to reserve a local port", buf, 0x30u);
        }
      }
    }
  }

  else
  {
    self->_localPort = nw_listener_get_port(self->_listener);
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

void __59__VCTransportSessionMultiLink_reserveLocalPortWithListener__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 == 3 || a3)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __59__VCTransportSessionMultiLink_reserveLocalPortWithListener__block_invoke_cold_2();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 32);
          v14 = 136316418;
          v15 = v8;
          v16 = 2080;
          v17 = "[VCTransportSessionMultiLink reserveLocalPortWithListener]_block_invoke";
          v18 = 1024;
          v19 = 639;
          v20 = 2112;
          v21 = v6;
          v22 = 2048;
          v23 = v12;
          v24 = 2112;
          v25 = a3;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Listener failed to reserve a local port, error=%@", &v14, 0x3Au);
        }
      }
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }

  else if (a2 == 4)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __59__VCTransportSessionMultiLink_reserveLocalPortWithListener__block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 32);
          v14 = 136316162;
          v15 = v10;
          v16 = 2080;
          v17 = "[VCTransportSessionMultiLink reserveLocalPortWithListener]_block_invoke";
          v18 = 1024;
          v19 = 645;
          v20 = 2112;
          v21 = v7;
          v22 = 2048;
          v23 = v13;
          _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Listener was cancelled", &v14, 0x30u);
        }
      }
    }

    dispatch_semaphore_signal(*(a1 + 40));
    dispatch_release(*(a1 + 40));
  }

  else if (a2 == 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v5 = *(a1 + 40);

    dispatch_semaphore_signal(v5);
  }
}

- (void)addNetworkAssertion
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__VCTransportSessionMultiLink_addNetworkAssertion__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

id __50__VCTransportSessionMultiLink_addNetworkAssertion__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3.receiver = v1;
  v3.super_class = VCTransportSessionMultiLink;
  return objc_msgSendSuper2(&v3, sel_addNetworkAssertionWithInterfaceType_, [v1 networkInterfaceType]);
}

- (void)removeNetworkAssertion
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__VCTransportSessionMultiLink_removeNetworkAssertion__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

id __53__VCTransportSessionMultiLink_removeNetworkAssertion__block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = *(a1 + 32);
  v2.super_class = VCTransportSessionMultiLink;
  return objc_msgSendSuper2(&v2, sel_removeNetworkAssertion);
}

- (int)createNWConnectionWithConnectionInfo:(id)info remoteEndpoint:(id)endpoint
{
  v28 = *MEMORY[0x1E69E9840];
  nw_parameters_allow_sharing_port_with_listener();
  if (!self->_clientAuditToken)
  {
    goto LABEL_17;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_13;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *v23 = 136316162;
    *&v23[4] = v13;
    *&v23[12] = 2080;
    *&v23[14] = "[VCTransportSessionMultiLink createNWConnectionWithConnectionInfo:remoteEndpoint:]";
    *&v23[22] = 1024;
    *&v23[24] = 681;
    *&v23[28] = 2112;
    *&v23[30] = v7;
    v24 = 2048;
    selfCopy2 = self;
    v10 = " [%s] %s:%d %@(%p) Setting clientAuditToken on nw_connection";
    v11 = v14;
    v12 = 48;
    goto LABEL_12;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 136315650;
      *&v23[4] = v8;
      *&v23[12] = 2080;
      *&v23[14] = "[VCTransportSessionMultiLink createNWConnectionWithConnectionInfo:remoteEndpoint:]";
      *&v23[22] = 1024;
      *&v23[24] = 681;
      v10 = " [%s] %s:%d Setting clientAuditToken on nw_connection";
      v11 = v9;
      v12 = 28;
LABEL_12:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v23, v12);
    }
  }

LABEL_13:
  clientAuditToken = self->_clientAuditToken;
  if (clientAuditToken)
  {
    [(AVCAuditToken *)clientAuditToken token];
  }

  else
  {
    memset(v23, 0, 32);
  }

  nw_parameters_set_source_application();
LABEL_17:
  v16 = nw_connection_create(endpoint, self->_localParameters);
  if (v16)
  {
    v17 = v16;
    [info setConnection:v16];
    nw_release(v17);
    if ([info remoteAddress])
    {
      if ([info parameters])
      {
        return 0;
      }

      [VCTransportSessionMultiLink createNWConnectionWithConnectionInfo:remoteEndpoint:];
    }

    else
    {
      [VCTransportSessionMultiLink createNWConnectionWithConnectionInfo:remoteEndpoint:];
    }

    return *v23;
  }

  v18 = -2144665596;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportSessionMultiLink createNWConnectionWithConnectionInfo:remoteEndpoint:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *v23 = 136316418;
        *&v23[4] = v21;
        *&v23[12] = 2080;
        *&v23[14] = "[VCTransportSessionMultiLink createNWConnectionWithConnectionInfo:remoteEndpoint:]";
        *&v23[22] = 1024;
        *&v23[24] = 686;
        *&v23[28] = 2112;
        *&v23[30] = v20;
        v24 = 2048;
        selfCopy2 = self;
        v26 = 2048;
        endpointCopy = endpoint;
        _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create NWConnection for remoteEndpoint with remoteEndpoint=%p", v23, 0x3Au);
      }
    }
  }

  return v18;
}

- (int)setupNWConnectionWithConnectionInfo:(id)info
{
  [info setIsStarted:0];
  nw_connection_set_queue([info connection], +[VCVTPWrapper targetQueue](VCVTPWrapper, "targetQueue"));
  v5 = [(VCTransportSessionMultiLink *)self setStateChangeHandlerForConnectionWithConnectionInfo:info];
  if (v5 < 0)
  {
    [VCTransportSessionMultiLink setupNWConnectionWithConnectionInfo:];
  }

  return v5;
}

- (int)setStateChangeHandlerForConnectionWithConnectionInfo:(id)info
{
  v10 = *MEMORY[0x1E69E9840];
  if (info)
  {
    v5 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    connection = [info connection];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __84__VCTransportSessionMultiLink_setStateChangeHandlerForConnectionWithConnectionInfo___block_invoke;
    handler[3] = &unk_1E85FA1A0;
    handler[4] = self;
    handler[5] = v5;
    handler[6] = info;
    nw_connection_set_state_changed_handler(connection, handler);
    return 0;
  }

  else
  {
    [VCTransportSessionMultiLink setStateChangeHandlerForConnectionWithConnectionInfo:];
    return v9;
  }
}

void __84__VCTransportSessionMultiLink_setStateChangeHandlerForConnectionWithConnectionInfo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v17 = 136315906;
    *&v17[4] = v7;
    *&v17[12] = 2080;
    *&v17[14] = "[VCTransportSessionMultiLink setStateChangeHandlerForConnectionWithConnectionInfo:]_block_invoke";
    *&v17[22] = 1024;
    LODWORD(v18) = 710;
    WORD2(v18) = 1024;
    *(&v18 + 6) = a2;
    v9 = " [%s] %s:%d Get NWConnection state %d";
    v10 = v8;
    v11 = 34;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v6 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *v17 = 136316418;
      *&v17[4] = v12;
      *&v17[12] = 2080;
      *&v17[14] = "[VCTransportSessionMultiLink setStateChangeHandlerForConnectionWithConnectionInfo:]_block_invoke";
      *&v17[22] = 1024;
      LODWORD(v18) = 710;
      WORD2(v18) = 2112;
      *(&v18 + 6) = v6;
      HIWORD(v18) = 2048;
      v19 = v14;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = a2;
      v9 = " [%s] %s:%d %@(%p) Get NWConnection state %d";
      v10 = v13;
      v11 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v17, v11);
    }
  }

LABEL_12:
  v15 = MEMORY[0x1E1289F20]([*(a1 + 40) weak]);
  if (v15)
  {
    v16 = v15;
    [v15 handleStateChanges:a2 error:a3 connectionInfo:*(a1 + 48)];
    CFRelease(v16);
  }
}

- (void)handleStateChanges:(int)changes error:(id)error connectionInfo:(id)info
{
  v32 = *MEMORY[0x1E69E9840];
  if (!error)
  {
    goto LABEL_11;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_11;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v18 = 136316162;
    v19 = v10;
    v20 = 2080;
    v21 = "[VCTransportSessionMultiLink handleStateChanges:error:connectionInfo:]";
    v22 = 1024;
    v23 = 724;
    v24 = 2112;
    errorCopy = error;
    v26 = 1024;
    LODWORD(selfCopy) = changes;
    v12 = " [%s] %s:%d Get error %@ from NWConnection with state: %d!";
    v13 = v11;
    v14 = 44;
LABEL_20:
    _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, v12, &v18, v14);
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [(VCTransportSessionMultiLink *)self performSelector:sel_logPrefix];
  }

  else
  {
    v9 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v18 = 136316674;
      v19 = v15;
      v20 = 2080;
      v21 = "[VCTransportSessionMultiLink handleStateChanges:error:connectionInfo:]";
      v22 = 1024;
      v23 = 724;
      v24 = 2112;
      errorCopy = v9;
      v26 = 2048;
      selfCopy = self;
      v28 = 2112;
      errorCopy2 = error;
      v30 = 1024;
      changesCopy = changes;
      v12 = " [%s] %s:%d %@(%p) Get error %@ from NWConnection with state: %d!";
      v13 = v16;
      v14 = 64;
      goto LABEL_20;
    }
  }

LABEL_11:
  if (changes == 5)
  {
    v17 = &OBJC_IVAR___VCTransportSessionMultiLink__cancelWaitSemaphore;
  }

  else
  {
    if (changes != 4)
    {
      if (changes != 3)
      {
        return;
      }

      [info setIsStarted:1];
    }

    v17 = &OBJC_IVAR___VCTransportSessionMultiLink__startWaitSemaphore;
  }

  dispatch_semaphore_signal(*(&self->super.super.isa + *v17));
}

- (int)startNWConnections
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  nwConnectionInfoList = self->_nwConnectionInfoList;
  v4 = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(nwConnectionInfoList);
      }

      v9 = [(VCTransportSessionMultiLink *)self startNWConnectionWithConnectionInfo:*(*(&v12 + 1) + 8 * i)];
      if (v9 < 0)
      {
        v6 = v9;
      }
    }

    v5 = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v12 objects:v11 count:16];
  }

  while (v5);
  return v6;
}

- (int)startNWConnectionWithConnectionInfo:(id)info
{
  nw_connection_start([info connection]);
  startWaitSemaphore = self->_startWaitSemaphore;
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(startWaitSemaphore, v6))
  {
    [VCTransportSessionMultiLink startNWConnectionWithConnectionInfo:];
    return v8;
  }

  if (([info isStarted] & 1) == 0)
  {
    [VCTransportSessionMultiLink startNWConnectionWithConnectionInfo:];
    return v8;
  }

  [(VCTransportSessionMultiLink *)self setReceiveBufferSize:info];
  return 0;
}

- (void)initializeInterfaceType
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [self performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (BOOL)initializeNetworkMTU
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._stateQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  nwConnectionInfoList = self->_nwConnectionInfoList;
  v4 = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0x7FFFFFFF;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(nwConnectionInfoList);
        }

        v9 = nw_connection_copy_current_path([*(*(&v14 + 1) + 8 * i) connection]);
        if (v9)
        {
          v10 = v9;
          mtu = nw_path_get_mtu();
          if (mtu < v7)
          {
            v7 = mtu;
          }

          nw_release(v10);
        }
      }

      v5 = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v5);
    if (v7 == 0x7FFFFFFF)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      self->_networkMTU = v7;
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (BOOL)initializeIsIPv6
{
  localEndpoint = self->_localEndpoint;
  if (localEndpoint)
  {
    address = nw_endpoint_get_address(localEndpoint);
    if (address)
    {
      self->_isIPv6 = address->sa_family == 30;
      return 1;
    }

    else
    {
      [VCTransportSessionMultiLink initializeIsIPv6];
      return v6;
    }
  }

  else
  {
    [VCTransportSessionMultiLink initializeIsIPv6];
    return v7;
  }
}

- (int)canAddConnectionWithRemoteEndpoint:(id)endpoint
{
  if (endpoint)
  {
    v4 = [NetworkUtils networkAddressFromEndpoint:?];
    if (v4)
    {
      v5 = [(VCTransportSessionMultiLink *)self connectionInfoWithRemoteAddress:v4];
      if (!v5)
      {
        return v5;
      }

      [VCTransportSessionMultiLink canAddConnectionWithRemoteEndpoint:];
    }

    else
    {
      [VCTransportSessionMultiLink canAddConnectionWithRemoteEndpoint:];
    }
  }

  else
  {
    [VCTransportSessionMultiLink canAddConnectionWithRemoteEndpoint:];
  }

  LODWORD(v5) = v7;
  return v5;
}

- (int)canRemoveConnectionWithRemoteEndpoint:(id)endpoint
{
  if (!endpoint)
  {
    [VCTransportSessionMultiLink canRemoveConnectionWithRemoteEndpoint:];
    return v6;
  }

  v4 = [NetworkUtils networkAddressFromEndpoint:?];
  if (!v4)
  {
    [VCTransportSessionMultiLink canRemoveConnectionWithRemoteEndpoint:];
    return v6;
  }

  if (![(VCTransportSessionMultiLink *)self connectionInfoWithRemoteAddress:v4])
  {
    [VCTransportSessionMultiLink canRemoveConnectionWithRemoteEndpoint:];
    return v6;
  }

  return 0;
}

- (id)connectionInfoWithRemoteAddress:(id)address
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  nwConnectionInfoList = self->_nwConnectionInfoList;
  result = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(nwConnectionInfoList);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 isSameRemoteAddress:address])
        {
          return v9;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSMutableArray *)nwConnectionInfoList countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)setReceiveBufferSize:(id)size
{
  v29 = *MEMORY[0x1E69E9840];
  if (![size isStarted] || !self->_requiresLargeReceiveBuffer)
  {
    v5 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v5 = -[VCTransportSessionMultiLink dupRTPNWConnectionBackingSocketForNWConnection:](self, "dupRTPNWConnectionBackingSocketForNWConnection:", [size connection]);
  if (v5 != -1)
  {
    v6 = nw_connection_copy_description([size connection]);
    v7 = setsockopt(v5, 0xFFFF, 4098, &self->_receiveBufferSize, 4u);
    v8 = objc_opt_class();
    if (v7)
    {
      if (v8 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_25;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31())
        {
          goto LABEL_25;
        }

        v27 = 136316162;
        v28 = v9;
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_46_5();
        OUTLINED_FUNCTION_17_0();
        v15 = 44;
      }

      else
      {
        if (OUTLINED_FUNCTION_41_3())
        {
          OUTLINED_FUNCTION_34_2();
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_25;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_25;
        }

        v27 = 136316674;
        v28 = v16;
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_28_10();
        v10 = &dword_1DB56E000;
        v13 = " [%s] %s:%d %@(%p) Error setting socket receive buffer size=%d on connection=%s";
        v14 = &v27;
        v11 = v17;
        v12 = OS_LOG_TYPE_ERROR;
        v15 = 64;
      }

      _os_log_error_impl(v10, v11, v12, v13, v14, v15);
    }

    else
    {
      if (v8 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_25;
        }

        v18 = VRTraceErrorLogLevelToCSTR();
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v27 = 136316162;
        v28 = v18;
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_46_5();
        OUTLINED_FUNCTION_42_4();
        v24 = 44;
      }

      else
      {
        if (OUTLINED_FUNCTION_41_3())
        {
          OUTLINED_FUNCTION_34_2();
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_25;
        }

        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v27 = 136316674;
        v28 = v25;
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_28_10();
        v19 = &dword_1DB56E000;
        v22 = " [%s] %s:%d %@(%p) Set socket receive buffer size=%d on connection=%s";
        v23 = &v27;
        v20 = v26;
        v21 = OS_LOG_TYPE_DEFAULT;
        v24 = 64;
      }

      _os_log_impl(v19, v20, v21, v22, v23, v24);
    }

LABEL_25:
    free(v6);
  }

LABEL_26:
  VCCloseSocketIfValid(v5);
}

- (int)createVFD:(int *)d forStreamType:(unsigned int)type
{
  OUTLINED_FUNCTION_40_0();
  v41 = v4;
  v42 = v8;
  v9 = v5;
  v40 = *MEMORY[0x1E69E9840];
  if (!v6)
  {
    if (objc_opt_class() != v5)
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [v9 performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_8;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_8;
      }

LABEL_49:
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      *(&v38 + 6) = v18;
      OUTLINED_FUNCTION_19_0();
      v39 = v9;
      OUTLINED_FUNCTION_8_4();
      goto LABEL_50;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_8;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    LODWORD(v38) = 445;
LABEL_32:
    OUTLINED_FUNCTION_11_1();
LABEL_50:
    _os_log_error_impl(v19, v20, v21, v22, v23, v24);
    goto LABEL_8;
  }

  v10 = v7;
  v11 = v6;
  v12 = VCDatagramChannelMultiLink_Token(v5[35]);
  v13 = VTP_SocketWithMultiNWConnection(v12);
  if (v13 == -1)
  {
    __error();
    if (OUTLINED_FUNCTION_29_11() != v9)
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [v9 performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_8;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_8;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    LODWORD(v38) = 448;
    goto LABEL_32;
  }

  v14 = v13;
  if (VTP_SetSocketMode(v13, 2) == -1)
  {
    __error();
    if (OUTLINED_FUNCTION_29_11() != v9)
    {
      if (OUTLINED_FUNCTION_41_3())
      {
        OUTLINED_FUNCTION_34_2();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_9;
      }

      VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!OUTLINED_FUNCTION_31_3())
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_13_1();
      v37 = v33;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_18_14();
      v26 = &dword_1DB56E000;
      v29 = " [%s] %s:%d %@(%p) VTP_SetSocketMode failed %x";
LABEL_60:
      v30 = &v36;
      v27 = v32;
      v28 = OS_LOG_TYPE_ERROR;
      v31 = 54;
      goto LABEL_61;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

LABEL_41:
    OUTLINED_FUNCTION_10();
    v37 = v25;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    *(&v38 + 6) = v10;
    OUTLINED_FUNCTION_24();
    v31 = 34;
LABEL_61:
    _os_log_error_impl(v26, v27, v28, v29, v30, v31);
    goto LABEL_9;
  }

  v15 = [VCTransportSession vtpPacketTypeForStreamType:v10];
  if (!v15)
  {
    goto LABEL_9;
  }

  if (VTP_SetPktType(v14, v15) == -1)
  {
    __error();
    if (OUTLINED_FUNCTION_29_11() != v9)
    {
      if (OUTLINED_FUNCTION_41_3())
      {
        OUTLINED_FUNCTION_34_2();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_9;
      }

      VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!OUTLINED_FUNCTION_31_3())
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_13_1();
      v37 = v34;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_18_14();
      v26 = &dword_1DB56E000;
      v29 = " [%s] %s:%d %@(%p) VTP_SetPktType failed %x";
      goto LABEL_60;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

  v16 = VCDatagramChannelMultiLink_Token(v9[35]);
  if (VTP_SetSourceDestinationWithToken(v14, v16) != -1)
  {
    *v11 = v14;
LABEL_8:
    v14 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  __error();
  if (OUTLINED_FUNCTION_29_11() == v9)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      v37 = v35;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_18_14();
      v26 = &dword_1DB56E000;
      v29 = " [%s] %s:%d %@(%p) VTP_SetSourceDestinationWithToken failed %x";
      goto LABEL_60;
    }
  }

LABEL_9:
  VCCloseVFDIfValid(v14);
  OUTLINED_FUNCTION_39_0();
  return result;
}

- (int)invalidateNWConnectionWithConnectionInfo:(id)info
{
  OUTLINED_FUNCTION_40_0();
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    if ([v4 connection])
    {
      nw_connection_cancel([v5 connection]);
      v7 = v6[37];
      v8 = dispatch_time(0, 500000000);
      if (!dispatch_semaphore_wait(v7, v8))
      {
        nw_connection_set_state_changed_handler([v5 connection], 0);
        goto LABEL_5;
      }

      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_28())
          {
            OUTLINED_FUNCTION_1_0();
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_11_1();
LABEL_15:
            _os_log_error_impl(v10, v11, v12, v13, v14, v15);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [v6 performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_31())
          {
            OUTLINED_FUNCTION_8();
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_5_4();
            OUTLINED_FUNCTION_8_4();
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_39_0();
  return result;
}

- (void)initWithLocalEndpoint:(void *)a1 clientAuditToken:handlerQueue:context:eventHandler:options:error:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (BOOL)initWithLocalEndpoint:(uint64_t)a3 clientAuditToken:handlerQueue:context:eventHandler:options:error:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionMultiLink.m", 80];
  if (a2)
  {
    v6 = @"Internal Error";
  }

  else
  {
    v6 = @"Invalid Parameter";
  }

  if (a2)
  {
    v7 = @"Failed to initialize transport session";
  }

  else
  {
    v7 = @"local endpoint should not be nil";
  }

  return [GKVoiceChatError getNSError:a3 code:32016 detailedCode:105 filePath:v5 description:v6 reason:v7];
}

- (void)dupRTPNWConnectionBackingSocketForNWConnection:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = -1;
}

void __36__VCTransportSessionMultiLink_start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __36__VCTransportSessionMultiLink_start__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __36__VCTransportSessionMultiLink_start__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupDatagramChannel
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)updateTransportStreamRemoteSSRCList:shouldAddRemoteSSRC:remoteEndpointSSRC:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)updateTransportStreamRemoteSSRCList:shouldAddRemoteSSRC:remoteEndpointSSRC:.cold.2()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  *v0 = v1;
}

- (void)updateTransportStream:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)updateTransportStream:.cold.2()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  *v0 = v1;
}

- (void)dispatchedSetRemoteEndpoints:error:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:

  OUTLINED_FUNCTION_39_0();
}

void __55__VCTransportSessionMultiLink_addRemoteEndpoint_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_2();
    v6 = 38;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_17_0();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

- (void)updateTransportStreamsRemoteSSRCList:shouldAddRemoteSSRC:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)dispatchedAddRemoteEndpoint:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedAddRemoteEndpoint:error:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedAddRemoteEndpoint:error:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedAddRemoteEndpoint:error:.cold.4()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedAddRemoteEndpoint:error:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)dispatchedAddRemoteEndpoint:error:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)dispatchedRemoveRemoteEndpoint:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedRemoveRemoteEndpoint:error:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedRemoveRemoteEndpoint:error:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedRemoveRemoteEndpoint:error:.cold.4()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedRemoveRemoteEndpoint:error:.cold.5()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedRemoveRemoteEndpoint:error:.cold.6()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)createNWMonitor
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)createNWParametersAndListener:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createNWParametersAndListener:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48_2(a1, 4.8153e-34, a2, a3);
  *(v3 + 14) = "[VCTransportSessionMultiLink createNWParametersAndListener:]";
  *(v3 + 22) = 1024;
  *(v3 + 24) = 517;
  *(v3 + 28) = v4;
  *(v3 + 30) = v5;
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v6, v7, v8, v9, v10, v11);
}

- (void)createNWParametersAndListener:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createNWParametersAndListener:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createNWParametersAndListener:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createNWParametersAndListener:(uint64_t)a3 .cold.6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48_2(a1, 4.8153e-34, a2, a3);
  *(v3 + 14) = "[VCTransportSessionMultiLink createNWParametersAndListener:]";
  *(v3 + 22) = 1024;
  *(v3 + 24) = 491;
  *(v3 + 28) = v4;
  *(v3 + 30) = v5;
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v6, v7, v8, v9, v10, v11);
}

void __61__VCTransportSessionMultiLink_createNWParametersAndListener___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)updateLocalEndpoint
{
  nw_endpoint_get_description();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAndStartNWListener:useBackingSocket:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAndStartNWListener:useBackingSocket:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAndStartNWListener:useBackingSocket:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAndStartNWListener:useBackingSocket:error:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAndStartNWListener:useBackingSocket:error:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAndStartNWListener:useBackingSocket:error:.cold.6()
{
  nw_endpoint_get_description();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAndStartNWListener:useBackingSocket:error:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)reserveLocalPortWithListener
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __59__VCTransportSessionMultiLink_reserveLocalPortWithListener__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __59__VCTransportSessionMultiLink_reserveLocalPortWithListener__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)createNWConnectionWithConnectionInfo:remoteEndpoint:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)createNWConnectionWithConnectionInfo:remoteEndpoint:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)createNWConnectionWithConnectionInfo:remoteEndpoint:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupNWConnectionWithConnectionInfo:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    [v0 connection];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_2();
    v7 = 38;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      [v0 connection];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_17_0();
      v7 = 58;
      goto LABEL_11;
    }
  }
}

- (void)setStateChangeHandlerForConnectionWithConnectionInfo:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)startNWConnectionWithConnectionInfo:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)startNWConnectionWithConnectionInfo:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)initializeIsIPv6
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v2, v3, v4, v5, v6, v7);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_42_4();
        v7 = 48;
        goto LABEL_10;
      }
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)canAddConnectionWithRemoteEndpoint:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)canAddConnectionWithRemoteEndpoint:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)canAddConnectionWithRemoteEndpoint:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)canRemoveConnectionWithRemoteEndpoint:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)canRemoveConnectionWithRemoteEndpoint:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)canRemoveConnectionWithRemoteEndpoint:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_25_12() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

@end