@interface VCTransportSessionNW
- (BOOL)initializeIsIPv6;
- (BOOL)initializeNetworkMTU;
- (VCTransportSessionNW)initWithRTPNWConnectionID:(id)d RTCPNWConnectionID:(id)iD handlerQueue:(id)queue context:(void *)context notificationHandler:(void *)handler eventHandler:(void *)eventHandler isConnectionStartDelayed:(BOOL)delayed;
- (int)cancelConnections;
- (int)configureConnectionToReceiveHoplimit:(id)hoplimit;
- (int)createAndSetupConnection:(id)connection;
- (int)createConnections;
- (int)createNWConnection:(id)connection;
- (int)createVFD:(int *)d forStreamType:(unsigned int)type;
- (int)destroyNWConnection:(id *)connection;
- (int)dupRTCPNWConnectionBackingSocket;
- (int)dupRTPNWConnectionBackingSocket;
- (int)dupRTPNWConnectionBackingSocketForNWConnection:(id)connection;
- (int)recreateConnectionsWithRTPConnectionInfo:(id)info rtcpConnectionInfo:(id)connectionInfo;
- (int)setRTPNWConnectionID:(id)d rtcpNWConnectionID:(id)iD;
- (int)setRemoteAddress:(id)address remoteRTCPPort:(int)port;
- (int)setStateChangeHandlerForConnection:(id)connection result:(BOOL *)result;
- (int)setupNWConnection:(id)connection;
- (int)startNWConnection:(id)connection;
- (tagVCNWConnectionMonitor)createNWMonitor;
- (void)addNetworkAssertion;
- (void)createConnections;
- (void)dealloc;
- (void)handleStateChanges:(int)changes error:(id)error operationResult:(BOOL *)result;
- (void)initializeInterfaceType;
- (void)initializeIsIPv6;
- (void)initializeNetworkMTU;
- (void)removeNetworkAssertion;
- (void)start;
- (void)stop;
@end

@implementation VCTransportSessionNW

- (VCTransportSessionNW)initWithRTPNWConnectionID:(id)d RTCPNWConnectionID:(id)iD handlerQueue:(id)queue context:(void *)context notificationHandler:(void *)handler eventHandler:(void *)eventHandler isConnectionStartDelayed:(BOOL)delayed
{
  v17 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v15.receiver = self;
    v15.super_class = VCTransportSessionNW;
    v11 = [(VCTransportSession *)&v15 initWithNotificationQueue:0 reportingAgent:0 notificationHandler:handler eventHandler:eventHandler handlerQueue:queue context:context];
    if (v11)
    {
      v11->_cancelWaitSemaphore = dispatch_semaphore_create(0);
      v11->_isConnectionStartDelayed = delayed;
      v12 = objc_opt_new();
      v11->_rtpConnectionInfo = v12;
      [(VCNWConnectionInfo *)v12 setConnectionID:d];
      if (iD)
      {
        v13 = objc_opt_new();
        v11->_rtcpConnectionInfo = v13;
        [(VCNWConnectionInfo *)v13 setConnectionID:iD];
      }

      if ([(VCTransportSessionNW *)v11 createConnections]< 0)
      {

        return 0;
      }
    }
  }

  else
  {
    [VCTransportSessionNW initWithRTPNWConnectionID:? RTCPNWConnectionID:? handlerQueue:? context:? notificationHandler:? eventHandler:? isConnectionStartDelayed:?];
    return v16;
  }

  return v11;
}

- (int)createConnections
{
  self->_isSharedConnection = 1;
  v3 = [(VCTransportSessionNW *)self createAndSetupConnection:self->_rtpConnectionInfo];
  if (v3 < 0)
  {
    [VCTransportSessionNW createConnections];
    return v7;
  }

  if (!self->_rtcpConnectionInfo)
  {
    v5 = v3;
    goto LABEL_6;
  }

  v4 = [(VCTransportSessionNW *)self createAndSetupConnection:?];
  if (v4 < 0)
  {
    [VCTransportSessionNW createConnections];
    return v7;
  }

  v5 = v4;
  self->_isSharedConnection = 0;
LABEL_6:
  [(VCTransportSessionNW *)self initializeNetworkMTU];
  [(VCTransportSessionNW *)self initializeIsIPv6];
  [(VCTransportSessionNW *)self initializeInterfaceType];
  [(VCTransportSession *)self setShouldSetupNWMonitor:1];
  self->_didScheduleReceive = 0;
  return v5;
}

- (int)createAndSetupConnection:(id)connection
{
  if ([(VCTransportSessionNW *)self createNWConnection:?]< 0)
  {
    [VCTransportSessionNW createAndSetupConnection:];
    return v6;
  }

  result = -[VCTransportSessionNW setupNWConnection:](self, "setupNWConnection:", [connection connection]);
  if (result < 0)
  {
    [VCTransportSessionNW createAndSetupConnection:];
    return v6;
  }

  if (!self->_isConnectionStartDelayed)
  {
    result = -[VCTransportSessionNW startNWConnection:](self, "startNWConnection:", [connection connection]);
    if (result < 0)
    {
      [VCTransportSessionNW createAndSetupConnection:];
      return v6;
    }
  }

  return result;
}

- (int)configureConnectionToReceiveHoplimit:(id)hoplimit
{
  v13 = *MEMORY[0x1E69E9840];
  if (!hoplimit)
  {
    [(VCTransportSessionNW *)&v10 configureConnectionToReceiveHoplimit:&v12];
LABEL_11:
    v7 = v10;
    v5 = v11;
    v8 = v12;
    goto LABEL_6;
  }

  if (![hoplimit parameters])
  {
    [(VCTransportSessionNW *)&v10 configureConnectionToReceiveHoplimit:&v12];
    goto LABEL_11;
  }

  v4 = nw_parameters_copy_default_protocol_stack([hoplimit parameters]);
  if (!v4)
  {
    [(VCTransportSessionNW *)&v10 configureConnectionToReceiveHoplimit:&v12];
    goto LABEL_11;
  }

  v5 = v4;
  v6 = nw_protocol_stack_copy_internet_protocol(v4);
  if (!v6)
  {
    [VCTransportSessionNW configureConnectionToReceiveHoplimit:];
    goto LABEL_11;
  }

  v7 = v6;
  MEMORY[0x1E128C470](v6, 1);
  v8 = 0;
LABEL_6:
  nw_release(v7);
  nw_release(v5);
  return v8;
}

- (int)createNWConnection:(id)connection
{
  v21 = *MEMORY[0x1E69E9840];
  if (!connection)
  {
    [VCTransportSessionNW createNWConnection:];
    goto LABEL_19;
  }

  if (![connection connectionID])
  {
    if (![connection remoteAddress])
    {
      [VCTransportSessionNW createNWConnection:];
      goto LABEL_19;
    }

    if (![connection parameters])
    {
      [VCTransportSessionNW createNWConnection:];
      goto LABEL_19;
    }

    [objc_msgSend(objc_msgSend(connection "remoteAddress")];
    [objc_msgSend(connection "remoteAddress")];
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
    v7 = nw_connection_create(host_with_numeric_port, [connection parameters]);
    nw_release(host_with_numeric_port);
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(connection, "connectionID")}];
  if (!v5)
  {
    [VCTransportSessionNW createNWConnection:];
    goto LABEL_19;
  }

  v6 = v5;
  *buf = 0;
  *&buf[8] = 0;
  [v5 getUUIDBytes:buf];

  +[VCVTPWrapper connectionContext];
  v7 = nw_connection_create_with_client_id();
  if (!v7)
  {
LABEL_13:
    [VCTransportSessionNW createNWConnection:];
LABEL_19:
    v7 = *buf;
    v8 = v15;
    goto LABEL_9;
  }

LABEL_5:
  [connection setConnection:v7];
  v8 = [(VCTransportSessionNW *)self configureConnectionToReceiveHoplimit:connection];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v8 < 0)
  {
    [VCTransportSessionNW createNWConnection:];
    goto LABEL_19;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      remoteAddress = [connection remoteAddress];
      *buf = 136315906;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = "[VCTransportSessionNW createNWConnection:]";
      v17 = 1024;
      v18 = 144;
      v19 = 2112;
      v20 = remoteAddress;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully created NW Connection to endpoint with remoteAddress=%@", buf, 0x26u);
    }
  }

LABEL_9:
  nw_release(v7);
  return v8;
}

- (int)cancelConnections
{
  result = [(VCTransportSessionNW *)self destroyNWConnection:&self->_rtpConnectionInfo];
  if (self->_rtcpConnectionInfo)
  {

    return [(VCTransportSessionNW *)self destroyNWConnection:&self->_rtcpConnectionInfo];
  }

  return result;
}

- (int)setRTPNWConnectionID:(id)d rtcpNWConnectionID:(id)iD
{
  v33 = *MEMORY[0x1E69E9840];
  if (!d)
  {
    [(VCTransportSessionNW *)&v22 setRTPNWConnectionID:buf rtcpNWConnectionID:&v23, iD];
LABEL_19:
    v11 = v22;
    v7 = *buf;
    v12 = v23;
    goto LABEL_17;
  }

  if (-[NSString isEqualToString:](-[VCNWConnectionInfo connectionID](self->_rtpConnectionInfo, "connectionID"), "isEqualToString:", [d UUIDString]))
  {
    v7 = 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        connectionID = [(VCNWConnectionInfo *)self->_rtpConnectionInfo connectionID];
        *buf = 136316162;
        *&buf[4] = v8;
        v25 = 2080;
        v26 = "[VCTransportSessionNW setRTPNWConnectionID:rtcpNWConnectionID:]";
        v27 = 1024;
        v28 = 224;
        v29 = 2112;
        v30 = connectionID;
        v31 = 2112;
        selfCopy = d;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updating NW connections, oldRTPNWConnectionID=%@, newRTPNWConnectionID=%@", buf, 0x30u);
      }
    }

    v7 = objc_opt_new();
    [v7 setParameters:{-[VCNWConnectionInfo parameters](self->_rtpConnectionInfo, "parameters")}];
    [v7 setConnectionID:{objc_msgSend(d, "UUIDString")}];
  }

  if (self->_isSharedConnection || -[NSString isEqualToString:](-[VCNWConnectionInfo connectionID](self->_rtcpConnectionInfo, "connectionID"), "isEqualToString:", [iD UUIDString]))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (!iD)
  {
    [VCTransportSessionNW setRTPNWConnectionID:rtcpNWConnectionID:];
    goto LABEL_19;
  }

  v11 = objc_opt_new();
  [v11 setParameters:{-[VCNWConnectionInfo parameters](self->_rtcpConnectionInfo, "parameters")}];
  [v11 setConnectionID:{objc_msgSend(iD, "UUIDString")}];
LABEL_13:
  v12 = [(VCTransportSessionNW *)self recreateConnectionsWithRTPConnectionInfo:v7 rtcpConnectionInfo:v11];
  if (v12 < 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionNW setRTPNWConnectionID:v19 rtcpNWConnectionID:?];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [(VCTransportSessionNW *)self performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = v20;
          v25 = 2080;
          v26 = "[VCTransportSessionNW setRTPNWConnectionID:rtcpNWConnectionID:]";
          v27 = 1024;
          v28 = 241;
          v29 = 2112;
          v30 = v18;
          v31 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed recreating the NW connections", buf, 0x30u);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      connectionID2 = [(VCNWConnectionInfo *)self->_rtpConnectionInfo connectionID];
      connectionID3 = [(VCNWConnectionInfo *)self->_rtcpConnectionInfo connectionID];
      *buf = 136316162;
      *&buf[4] = v13;
      v25 = 2080;
      v26 = "[VCTransportSessionNW setRTPNWConnectionID:rtcpNWConnectionID:]";
      v27 = 1024;
      v28 = 243;
      v29 = 2112;
      v30 = connectionID2;
      v31 = 2112;
      selfCopy = connectionID3;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully updated NW connections rtpNWConnectionID=%@, rtcpNWConnectionID=%@", buf, 0x30u);
    }
  }

LABEL_17:

  return v12;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if ([(VCNWConnectionInfo *)self->_rtpConnectionInfo connection])
  {
    nw_connection_cancel([(VCNWConnectionInfo *)self->_rtpConnectionInfo connection]);
    nw_connection_set_state_changed_handler([(VCNWConnectionInfo *)self->_rtpConnectionInfo connection], 0);
  }

  if ([(VCNWConnectionInfo *)self->_rtcpConnectionInfo connection])
  {
    nw_connection_cancel([(VCNWConnectionInfo *)self->_rtcpConnectionInfo connection]);
    nw_connection_set_state_changed_handler([(VCNWConnectionInfo *)self->_rtcpConnectionInfo connection], 0);
  }

  v3.receiver = self;
  v3.super_class = VCTransportSessionNW;
  [(VCTransportSession *)&v3 dealloc];
}

- (void)handleStateChanges:(int)changes error:(id)error operationResult:(BOOL *)result
{
  v22 = *MEMORY[0x1E69E9840];
  if (error && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCTransportSessionNW handleStateChanges:error:operationResult:]";
      v16 = 1024;
      v17 = 269;
      v18 = 2112;
      errorCopy = error;
      v20 = 1024;
      changesCopy = changes;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Get error %@ from nw connection with state: %d!", &v12, 0x2Cu);
    }
  }

  if (changes == 5)
  {
    v11 = &OBJC_IVAR___VCTransportSessionNW__cancelWaitSemaphore;
  }

  else
  {
    if (changes != 4)
    {
      if (changes != 3)
      {
        return;
      }

      *result = 1;
    }

    v11 = &OBJC_IVAR___VCTransportSessionNW__startWaitSemaphore;
  }

  dispatch_semaphore_signal(*(&self->super.super.isa + *v11));
}

- (int)setStateChangeHandlerForConnection:(id)connection result:(BOOL *)result
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__VCTransportSessionNW_setStateChangeHandlerForConnection_result___block_invoke;
    v8[3] = &unk_1E85F4A48;
    v8[4] = v6;
    v8[5] = result;
    nw_connection_set_state_changed_handler(connection, v8);
    return 0;
  }

  else
  {
    [VCTransportSessionNW setStateChangeHandlerForConnection:result:];
    return v9;
  }
}

void __66__VCTransportSessionNW_setStateChangeHandlerForConnection_result___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = "[VCTransportSessionNW setStateChangeHandlerForConnection:result:]_block_invoke";
      v14 = 1024;
      v15 = 290;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Get nw connection state %d", &v10, 0x22u);
    }
  }

  v8 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
  if (v8)
  {
    v9 = v8;
    [v8 handleStateChanges:a2 error:a3 operationResult:*(a1 + 40)];
    CFRelease(v9);
  }
}

- (int)setupNWConnection:(id)connection
{
  self->_connectionStartDidSucceed = 0;
  nw_connection_set_queue(connection, +[VCVTPWrapper targetQueue]);
  v5 = [(VCTransportSessionNW *)self setStateChangeHandlerForConnection:connection result:&self->_connectionStartDidSucceed];
  if (v5 < 0)
  {
    [VCTransportSessionNW setupNWConnection:];
  }

  return v5;
}

- (int)startNWConnection:(id)connection
{
  startWaitSemaphore = self->_startWaitSemaphore;
  if (startWaitSemaphore)
  {
    dispatch_release(startWaitSemaphore);
    self->_startWaitSemaphore = 0;
  }

  self->_startWaitSemaphore = dispatch_semaphore_create(0);
  nw_connection_start(connection);
  v6 = self->_startWaitSemaphore;
  v7 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    [VCTransportSessionNW startNWConnection:];
    return v9;
  }

  if (!self->_connectionStartDidSucceed)
  {
    [VCTransportSessionNW startNWConnection:];
    return v9;
  }

  return 0;
}

- (void)start
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)stop
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCTransportSession *)self destroyNWMonitor];
  [(VCTransportSessionNW *)self removeNetworkAssertion];
  v3.receiver = self;
  v3.super_class = VCTransportSessionNW;
  [(VCTransportSession *)&v3 stop];
}

- (void)addNetworkAssertion
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__VCTransportSessionNW_addNetworkAssertion__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

id __43__VCTransportSessionNW_addNetworkAssertion__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3.receiver = v1;
  v3.super_class = VCTransportSessionNW;
  return objc_msgSendSuper2(&v3, sel_addNetworkAssertionWithInterfaceType_, [v1 networkInterfaceType]);
}

- (void)removeNetworkAssertion
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__VCTransportSessionNW_removeNetworkAssertion__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

id __46__VCTransportSessionNW_removeNetworkAssertion__block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = *(a1 + 32);
  v2.super_class = VCTransportSessionNW;
  return objc_msgSendSuper2(&v2, sel_removeNetworkAssertion);
}

- (tagVCNWConnectionMonitor)createNWMonitor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = [(VCNWConnectionInfo *)self->_rtpConnectionInfo connection];
  return VCNWConnectionMonitor_Create(v3);
}

- (int)dupRTPNWConnectionBackingSocket
{
  connection = [(VCNWConnectionInfo *)self->_rtpConnectionInfo connection];

  return [(VCTransportSessionNW *)self dupRTPNWConnectionBackingSocketForNWConnection:connection];
}

- (int)dupRTCPNWConnectionBackingSocket
{
  connection = [(VCNWConnectionInfo *)self->_rtcpConnectionInfo connection];

  return [(VCTransportSessionNW *)self dupRTPNWConnectionBackingSocketForNWConnection:connection];
}

- (int)dupRTPNWConnectionBackingSocketForNWConnection:(id)connection
{
  v25 = *MEMORY[0x1E69E9840];
  if (!connection)
  {
    [VCTransportSessionNW dupRTPNWConnectionBackingSocketForNWConnection:?];
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
        v16 = "[VCTransportSessionNW dupRTPNWConnectionBackingSocketForNWConnection:]";
        v17 = 1024;
        v18 = 450;
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
      v16 = "[VCTransportSessionNW dupRTPNWConnectionBackingSocketForNWConnection:]";
      v17 = 1024;
      v18 = 448;
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

- (void)initializeInterfaceType
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_20();
}

uint64_t __47__VCTransportSessionNW_initializeInterfaceType__block_invoke(uint64_t a1, nw_interface_t interface)
{
  v25 = *MEMORY[0x1E69E9840];
  type = nw_interface_get_type(interface);
  if (type == nw_interface_type_loopback)
  {
    v8 = *(a1 + 32);
    v9 = 5;
    goto LABEL_9;
  }

  v5 = type;
  if (type == nw_interface_type_wired)
  {
    v8 = *(a1 + 32);
    v9 = 1;
    goto LABEL_9;
  }

  if (type == nw_interface_type_wifi)
  {
    subtype = nw_interface_get_subtype();
    if (subtype == 1001)
    {
      name = nw_interface_get_name(interface);
      v15 = strcmp(name, "llw0");
      v8 = *(a1 + 32);
      if (v15)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      goto LABEL_9;
    }

    v7 = subtype;
    if (subtype == 1002)
    {
      v8 = *(a1 + 32);
      v9 = 4;
LABEL_9:
      *(v8 + 252) = v9;
      return 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315906;
        v18 = v16;
        v19 = 2080;
        v20 = "[VCTransportSessionNW initializeInterfaceType]_block_invoke";
        v21 = 1024;
        v22 = 477;
        v23 = 1024;
        v24 = v7;
        v13 = " [%s] %s:%d Not setting unexpected wifi nw_interface_subtype_t %d";
        goto LABEL_19;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = v11;
      v19 = 2080;
      v20 = "[VCTransportSessionNW initializeInterfaceType]_block_invoke";
      v21 = 1024;
      v22 = 484;
      v23 = 1024;
      v24 = v5;
      v13 = " [%s] %s:%d Not setting unexpected nw_interface_type_t %d";
LABEL_19:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 0x22u);
    }
  }

  return 0;
}

- (BOOL)initializeNetworkMTU
{
  v3 = nw_connection_copy_current_path([(VCNWConnectionInfo *)self->_rtpConnectionInfo connection]);
  if (v3)
  {
    self->_networkMTU = nw_path_get_mtu();
  }

  else
  {
    [VCTransportSessionNW initializeNetworkMTU];
  }

  nw_release(v3);
  return v3 != 0;
}

- (BOOL)initializeIsIPv6
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = nw_connection_copy_endpoint([(VCNWConnectionInfo *)self->_rtpConnectionInfo connection]);
  v4 = v3;
  if (v3)
  {
    address = nw_endpoint_get_address(v3);
    if (address)
    {
      self->_isIPv6 = address->sa_family == 30;
      v6 = 1;
    }

    else
    {
      [(VCTransportSessionNW *)&v8 initializeIsIPv6];
      v6 = v8;
    }
  }

  else
  {
    [(VCTransportSessionNW *)&v9 initializeIsIPv6];
    v6 = v9;
  }

  nw_release(v4);
  return v6;
}

- (int)recreateConnectionsWithRTPConnectionInfo:(id)info rtcpConnectionInfo:(id)connectionInfo
{
  if ([(VCTransportSessionNW *)self cancelConnections]< 0)
  {
    [VCTransportSessionNW recreateConnectionsWithRTPConnectionInfo:rtcpConnectionInfo:];
    return v8;
  }

  [(VCTransportSessionNW *)self setRtpConnectionInfo:info];
  [(VCTransportSessionNW *)self setRtcpConnectionInfo:connectionInfo];
  result = [(VCTransportSessionNW *)self createConnections];
  if (result < 0)
  {
    [VCTransportSessionNW recreateConnectionsWithRTPConnectionInfo:rtcpConnectionInfo:];
    return v8;
  }

  return result;
}

- (int)destroyNWConnection:(id *)connection
{
  if (!connection || !*connection || ![*connection connection])
  {
    return 0;
  }

  nw_connection_cancel([*connection connection]);
  cancelWaitSemaphore = self->_cancelWaitSemaphore;
  v6 = dispatch_time(0, 500000000);
  if (dispatch_semaphore_wait(cancelWaitSemaphore, v6))
  {
    v7 = -2144665577;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v9, v10, v11, v12, v13, 0x1Cu);
      }
    }
  }

  else
  {
    nw_connection_set_state_changed_handler([*connection connection], 0);

    v7 = 0;
    *connection = 0;
  }

  return v7;
}

- (int)setRemoteAddress:(id)address remoteRTCPPort:(int)port
{
  portCopy = port;
  if (![address isValid])
  {
LABEL_17:
    v16 = 0;
    v15 = 0;
    v17 = 0;
    goto LABEL_13;
  }

  v7 = [(VCNWConnectionInfo *)self->_rtpConnectionInfo isSameRemoteAddress:address];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v7)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [(VCNWConnectionInfo *)self->_rtpConnectionInfo remoteAddress];
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_26_1();
        _os_log_impl(v24, v25, v26, v27, v28, 0x30u);
      }
    }

    goto LABEL_17;
  }

  v9 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      [(VCNWConnectionInfo *)self->_rtpConnectionInfo remoteAddress];
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_26_1();
      _os_log_impl(v10, v11, v12, v13, v14, 0x30u);
    }
  }

  v15 = objc_opt_new();
  [v15 setParameters:{-[VCNWConnectionInfo parameters](self->_rtpConnectionInfo, "parameters")}];
  [v15 setRemoteAddress:address];
  if (self->_isSharedConnection)
  {
    v16 = 0;
  }

  else
  {
    v16 = objc_opt_new();
    [v16 setParameters:{-[VCNWConnectionInfo parameters](self->_rtcpConnectionInfo, "parameters")}];
    [v16 setRemoteAddress:address];
    [objc_msgSend(v16 "remoteAddress")];
  }

  v17 = [(VCTransportSessionNW *)self recreateConnectionsWithRTPConnectionInfo:v15 rtcpConnectionInfo:v16];
  v18 = VRTraceGetErrorLogLevelForModule();
  if (v17 < 0)
  {
    if (v18 >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v29, v30, v31, v32, v33, 0x1Cu);
      }
    }
  }

  else if (v18 >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      [(VCNWConnectionInfo *)self->_rtpConnectionInfo remoteAddress];
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_31_0();
      _os_log_impl(v19, v20, OS_LOG_TYPE_DEFAULT, v21, v22, 0x26u);
    }
  }

LABEL_13:

  return v17;
}

- (int)createVFD:(int *)d forStreamType:(unsigned int)type
{
  OUTLINED_FUNCTION_37();
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_21;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

  v7 = v6;
  v8 = v5;
  v9 = v4;
  if (v6 <= 6)
  {
    if (((1 << v6) & 0x2E) != 0)
    {
      v10 = VTP_SocketWithNWConnection(2u, 17, [*(v4 + 232) connection]);
      if (v10 == -1)
      {
        __error();
        OUTLINED_FUNCTION_12_0();
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_21;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_28())
        {
          goto LABEL_21;
        }

        goto LABEL_39;
      }

      goto LABEL_13;
    }

    if (((1 << v6) & 0x50) != 0)
    {
      if (*(v4 + 248))
      {
        v11 = &OBJC_IVAR___VCTransportSessionNW__rtpConnectionInfo;
      }

      else
      {
        v11 = &OBJC_IVAR___VCTransportSessionNW__rtcpConnectionInfo;
      }

      v10 = VTP_SocketWithNWConnection(2u, 17, [*(v4 + *v11) connection]);
      if (v10 != -1)
      {
LABEL_13:
        v12 = v10;
        goto LABEL_14;
      }

      __error();
      OUTLINED_FUNCTION_12_0();
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_21;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_28())
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_21;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_28())
      {
        goto LABEL_21;
      }
    }

LABEL_39:
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v21, v22, v23, v24, v25, 0x1Cu);
    goto LABEL_21;
  }

  v12 = 0xFFFFFFFFLL;
LABEL_14:
  if (*(v9 + 248))
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (VTP_SetSocketMode(v12, v13) == -1)
  {
    __error();
    OUTLINED_FUNCTION_12_0();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_40())
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v14 = [VCTransportSession vtpPacketTypeForStreamType:v7];
    if (!v14)
    {
      goto LABEL_22;
    }

    if (VTP_SetPktType(v12, v14) != -1)
    {
      *v8 = v12;
LABEL_21:
      v12 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    __error();
    OUTLINED_FUNCTION_12_0();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_40())
      {
LABEL_36:
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_24();
        _os_log_error_impl(v16, v17, v18, v19, v20, 0x22u);
      }
    }
  }

LABEL_22:
  VCCloseVFDIfValid(v12);
  OUTLINED_FUNCTION_36();
  return result;
}

- (void)initWithRTPNWConnectionID:(void *)a1 RTCPNWConnectionID:handlerQueue:context:notificationHandler:eventHandler:isConnectionStartDelayed:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)createConnections
{
  OUTLINED_FUNCTION_25_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)createAndSetupConnection:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)createAndSetupConnection:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)createAndSetupConnection:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)configureConnectionToReceiveHoplimit:.cold.1()
{
  OUTLINED_FUNCTION_38();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_26(v3, v4, v5, v6, v7);
    }
  }

  *v1 = -2144665536;
  *v0 = v2;
  OUTLINED_FUNCTION_20();
}

- (void)createNWConnection:.cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_15_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

- (void)createNWConnection:.cold.2()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v8 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_26(v9, v10, v11, v12, v13);
    }
  }

  *v1 = v5;
  *v3 = v7;
  OUTLINED_FUNCTION_36();
}

- (void)createNWConnection:.cold.3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

- (void)createNWConnection:.cold.4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_15_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

- (void)createNWConnection:.cold.5()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_15_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

- (void)createNWConnection:.cold.6()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_15_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_36();
}

- (void)setRTPNWConnectionID:rtcpNWConnectionID:.cold.1()
{
  OUTLINED_FUNCTION_38();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_26(v3, v4, v5, v6, v7);
    }
  }

  *v1 = -2144665599;
  *v0 = v2;
  OUTLINED_FUNCTION_20();
}

- (void)setRTPNWConnectionID:(uint64_t)a1 rtcpNWConnectionID:.cold.2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 241;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed recreating the NW connections", &v3);
}

- (void)setStateChangeHandlerForConnection:result:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)setupNWConnection:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)startNWConnection:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)startNWConnection:.cold.2()
{
  OUTLINED_FUNCTION_25_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
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
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = -1;
}

- (void)initializeNetworkMTU
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26_1();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initializeIsIPv6
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
    }
  }

  *self = 0;
}

- (void)recreateConnectionsWithRTPConnectionInfo:rtcpConnectionInfo:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)recreateConnectionsWithRTPConnectionInfo:rtcpConnectionInfo:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

@end