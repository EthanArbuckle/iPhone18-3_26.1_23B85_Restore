@interface TCPTunnelClient
- (BOOL)sendAllocateMsg:(id *)msg;
- (BOOL)sendChannelBindingMsgWithDict:(id)dict error:(id *)error;
- (BOOL)sendRefreshMsg:(unsigned int)msg error:(id *)error;
- (TCPTunnelClient)initWithRelayRequestDictionary:(id)dictionary withCallID:(unsigned int)d relayType:(unsigned __int8)type errorCode:(int *)code;
- (unsigned)connectionType;
- (void)closeTunnelSocket;
- (void)createDispatchTimer:(float)timer withDetailedError:(int64_t)error;
- (void)dealloc;
- (void)destroyDispatchTimer;
- (void)processSocketRead;
- (void)processSocketReadSSL;
- (void)processSocketWrite:(unsigned __int8)write;
- (void)receivedControlData:(id)data;
- (void)receivedSSLConnectionData:(id)data recordType:(unsigned __int16)type;
- (void)reportErrorAndTerminate:(int64_t)terminate detail:(int64_t)detail returnCode:(int64_t)code description:(id)description reason:(id)reason;
- (void)resetConnection;
- (void)sendTCPData:(const void *)data bufSize:(int)size;
- (void)unbindChannel;
- (void)vcArg:(id)arg sendControlData:(id)data isTypeSSL:(BOOL)l withTimeout:(float)timeout withDetail:(int64_t)detail;
- (void)vcArg:(id)arg sendRealTimeData:(id)data toParticipantID:(id)d;
@end

@implementation TCPTunnelClient

- (void)resetConnection
{
  close(self->_connectedFD);
  self->_connectedFD = -1;
  [(TCPTunnelClient *)self setReceiveHandler:0];
  [(TCPTunnelClient *)self setAllocationResponseHandler:0];
  [(TCPTunnelClient *)self setBindingResponseHandler:0];
  [(TCPTunnelClient *)self setDestroyHandler:0];

  [(TCPTunnelClient *)self setTerminationHandler:0];
}

- (void)reportErrorAndTerminate:(int64_t)terminate detail:(int64_t)detail returnCode:(int64_t)code description:(id)description reason:(id)reason
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", v9, terminate, detail, code, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m", 138], description, reason);
  terminationHandler = [(TCPTunnelClient *)self terminationHandler];
  if (terminationHandler)
  {
    terminationHandler[2](terminationHandler, v9[0]);
  }

  self->_isChannelBound = 0;
}

- (void)destroyDispatchTimer
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: timer is deleted.", v2, v3, v4, v5, v6);
}

- (void)createDispatchTimer:(float)timer withDetailedError:(int64_t)error
{
  v22 = *MEMORY[0x1E69E9840];
  [(TCPTunnelClient *)self destroyDispatchTimer];
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  self->_timer = v7;
  if (v7)
  {
    v8 = v7;
    v9 = dispatch_time(0, (timer * 1000000000.0));
    dispatch_source_set_timer(v8, v9, (timer * 1000000000.0), 0x5F5E100uLL);
    timer = self->_timer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __57__TCPTunnelClient_createDispatchTimer_withDetailedError___block_invoke;
    handler[3] = &unk_1E85F3908;
    timerCopy = timer;
    handler[4] = self;
    handler[5] = error;
    dispatch_source_set_event_handler(timer, handler);
    dispatch_resume(self->_timer);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v11;
        v18 = 2080;
        v19 = "[TCPTunnelClient createDispatchTimer:withDetailedError:]";
        v20 = 1024;
        v21 = 179;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: timer is set.", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [TCPTunnelClient createDispatchTimer:withDetailedError:];
    }
  }
}

uint64_t __57__TCPTunnelClient_createDispatchTimer_withDetailedError___block_invoke(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __57__TCPTunnelClient_createDispatchTimer_withDetailedError___block_invoke_cold_2(v2, a1);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      __57__TCPTunnelClient_createDispatchTimer_withDetailedError___block_invoke_cold_1(v2, a1);
    }
  }

  [*(a1 + 32) destroyDispatchTimer];
  v3 = *(a1 + 32);
  if (v3[4])
  {
    v4 = 32022;
  }

  else
  {
    v4 = 32002;
  }

  return [v3 reportErrorAndTerminate:v4 detail:*(a1 + 40) returnCode:0 description:@"cannot establish TCP TURN channel" reason:@"TURN request is timed out"];
}

- (void)processSocketRead
{
  v48 = *MEMORY[0x1E69E9840];
  currentlyReadingDataGoalLength = self->_currentlyReadingDataGoalLength;
  v4 = [(NSMutableData *)self->_currentlyReadingMessage length];
  if (self->_currentlyReadingDataGoalLength)
  {
    v5 = (currentlyReadingDataGoalLength - v4);
  }

  else
  {
    v5 = 4;
  }

  MEMORY[0x1EEE9AC00](v4);
  v7 = &block[-2] - v6;
  if (v5)
  {
    memset(&block[-2] - v6, 170, v5);
  }

  v8 = recv(self->_connectedFD, v7, v5, 0);
  v10 = v8;
  if ((v8 + 1) >= 2)
  {
    if (v8 < 1)
    {
      return;
    }

    v12 = 0;
    *&v9 = 136316162;
    v35 = v9;
    while (1)
    {
      v13 = v10 - v12;
      if (!self->_currentlyReadingDataGoalLength)
      {
        v14 = [(NSMutableData *)self->_currentlyReadingMessage length]+ v13;
        currentlyReadingMessage = self->_currentlyReadingMessage;
        if (v14 <= 3)
        {
          [(NSMutableData *)currentlyReadingMessage appendBytes:&v7[v12] length:v13];
          return;
        }

        if ([(NSMutableData *)currentlyReadingMessage length])
        {
          [(NSMutableData *)self->_currentlyReadingMessage bytes];
          v16 = [(NSMutableData *)self->_currentlyReadingMessage length];
          v17 = 4 - v16;
          *buf = -1431655766;
          __memcpy_chk();
          memcpy(&buf[v16], &v7[v12], 4 - v16);
          v18 = *buf;
          v19 = bswap32(*&buf[2]) >> 16;
        }

        else
        {
          v18 = *&v7[v12];
          v19 = bswap32(*&v7[v12 + 2]) >> 16;
          v17 = 4;
        }

        self->_currentlyReadingDataGoalLength = v19;
        v12 += v17;
        v20 = __rev16(v18);
        self->_currentMsgType = v20;
        v21 = v20 & 0xC000;
        if (v21 == 0x4000)
        {
          v22 = 4 - (v19 & 3);
          if ((v19 & 3) == 0)
          {
            v22 = 0;
          }

          self->_currentPadding = v22;
          self->_currentlyReadingDataGoalLength = v22 + v19;
        }

        else
        {
          if (v21)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v23 = VRTraceErrorLogLevelToCSTR();
              v24 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                currentMsgType = self->_currentMsgType;
                *buf = v35;
                v39 = v23;
                v40 = 2080;
                v41 = "[TCPTunnelClient processSocketRead]";
                v42 = 1024;
                v43 = 249;
                v44 = 1024;
                v45 = 249;
                v46 = 1024;
                v47 = currentMsgType;
                _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: Unknown types: %d", buf, 0x28u);
              }
            }
          }

          else
          {
            self->_currentlyReadingDataGoalLength = v19 + 20;
            v12 -= 4;
          }

          self->_currentPadding = 0;
        }

        [(NSMutableData *)self->_currentlyReadingMessage setLength:0, v35];
        v13 = v10 - v12;
      }

      if (v13)
      {
        v25 = self->_currentlyReadingDataGoalLength;
        v26 = v25 - [(NSMutableData *)self->_currentlyReadingMessage length];
        v27 = self->_currentlyReadingMessage;
        v28 = &v7[v12];
        if (v13 >= v26)
        {
          [(NSMutableData *)v27 appendBytes:v28 length:v26];
          currentPadding = self->_currentPadding;
          if (currentPadding)
          {
            [(NSMutableData *)self->_currentlyReadingMessage setLength:self->_currentlyReadingDataGoalLength - currentPadding];
          }

          v30 = self->_currentlyReadingMessage;
          v31 = self->_currentMsgType;
          receiveHandler = [(TCPTunnelClient *)self receiveHandler];
          queue = self->_queue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __36__TCPTunnelClient_processSocketRead__block_invoke;
          block[3] = &unk_1E85F6FF0;
          v37 = v31;
          block[4] = self;
          block[5] = v30;
          block[6] = receiveHandler;
          dispatch_async(queue, block);

          self->_currentlyReadingDataGoalLength = 0;
          self->_currentlyReadingMessage = objc_alloc_init(MEMORY[0x1E695DF88]);
        }

        else
        {
          [(NSMutableData *)v27 appendBytes:v28 length:v13];
          v26 = v13;
        }

        v12 += v26;
        if (v12 < v10)
        {
          continue;
        }
      }

      return;
    }
  }

  if (self->_connectState != 1)
  {
    if (self->_isChannelBound)
    {
      v11 = 32022;
    }

    else
    {
      v11 = 32002;
    }

    [(TCPTunnelClient *)self reportErrorAndTerminate:v11 detail:316 returnCode:0 description:@"TCP TURN channel closed" reason:@"Socket closed while accepting packets"];
    self->_connectState = 1;
  }
}

uint64_t __36__TCPTunnelClient_processSocketRead__block_invoke(uint64_t result)
{
  if ((*(result + 56) & 0xC000) == 0x4000)
  {
    return (*(*(result + 48) + 16))(*(result + 48), *(result + 40), *(*(result + 32) + 112));
  }

  if ((*(result + 56) & 0xC000) == 0)
  {
    return [*(result + 32) receivedControlData:*(result + 40)];
  }

  return result;
}

- (void)sendTCPData:(const void *)data bufSize:(int)size
{
  v39 = *MEMORY[0x1E69E9840];
  head = self->_head;
  if (head + size - self->_tail > 2048)
  {
    return;
  }

  if (head)
  {
    v8 = 0;
LABEL_4:
    v9 = size - v8;
    v10 = self->_head + v9;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v10 > 2048)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        v17 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = self->_head - self->_tail;
            v29 = 136316162;
            v30 = v15;
            v31 = 2080;
            v32 = "[TCPTunnelClient sendTCPData:bufSize:]";
            v33 = 1024;
            v34 = 339;
            v35 = 1024;
            v36 = v18;
            v37 = 1024;
            v38 = v9;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: shift %d, put %d on write buffer.", &v29, 0x28u);
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v28 = self->_head - self->_tail;
          v29 = 136316162;
          v30 = v15;
          v31 = 2080;
          v32 = "[TCPTunnelClient sendTCPData:bufSize:]";
          v33 = 1024;
          v34 = 339;
          v35 = 1024;
          v36 = v28;
          v37 = 1024;
          v38 = v9;
          _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d TCPTUNNEL: shift %d, put %d on write buffer.", &v29, 0x28u);
        }
      }

      memmove(self->_writeBuf, &self->_writeBuf[self->_tail], self->_head - self->_tail);
      v26 = self->_head - self->_tail;
      *&self->_head = v26;
      v24 = data + v8;
      v23 = v9;
      v25 = &self->_writeBuf[v26];
    }

    else
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        v14 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v29 = 136315906;
            v30 = v12;
            v31 = 2080;
            v32 = "[TCPTunnelClient sendTCPData:bufSize:]";
            v33 = 1024;
            v34 = 333;
            v35 = 1024;
            v36 = v9;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: put %d on write buffer.", &v29, 0x22u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [TCPTunnelClient sendTCPData:bufSize:];
        }
      }

      v23 = v9;
      v24 = data + v8;
      v25 = &self->_writeBuf[self->_head];
    }

    memcpy(v25, v24, v23);
    self->_head += v9;
    return;
  }

  v19 = send(self->_connectedFD, data, size, 0);
  v8 = v19;
  if (v19 == size)
  {
    return;
  }

  if (v19 != -1)
  {
LABEL_17:
    if (self->_writeSourceSuspended)
    {
      dispatch_resume(self->_writeSource);
      self->_writeSourceSuspended = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        v22 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v29 = 136315650;
            v30 = v20;
            v31 = 2080;
            v32 = "[TCPTunnelClient sendTCPData:bufSize:]";
            v33 = 1024;
            v34 = 327;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: wcb resume", &v29, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [TCPTunnelClient sendTCPData:bufSize:];
        }
      }
    }

    goto LABEL_4;
  }

  if (*__error() == 35)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [TCPTunnelClient sendTCPData:bufSize:];
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      [TCPTunnelClient sendTCPData:bufSize:];
    }
  }

  if (self->_isChannelBound)
  {
    v27 = 32022;
  }

  else
  {
    v27 = 32002;
  }

  [(TCPTunnelClient *)self reportErrorAndTerminate:v27 detail:318 returnCode:*__error() description:@"TCP TURN channel closed" reason:@"Socket closed while writing"];
}

- (void)processSocketWrite:(unsigned __int8)write
{
  writeCopy = write;
  v41 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v7 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        head = self->_head;
        v33 = 136315906;
        v34 = v5;
        v35 = 2080;
        v36 = "[TCPTunnelClient processSocketWrite:]";
        v37 = 1024;
        v38 = 351;
        v39 = 1024;
        v40 = head;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: wcb: %d", &v33, 0x22u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TCPTunnelClient processSocketWrite:];
    }
  }

  connectState = self->_connectState;
  if (connectState == 1)
  {
    goto LABEL_46;
  }

  if (!connectState)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v12 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          connectedFD = self->_connectedFD;
          v33 = 136315906;
          v34 = v10;
          v35 = 2080;
          v36 = "[TCPTunnelClient processSocketWrite:]";
          v37 = 1024;
          v38 = 353;
          v39 = 1024;
          v40 = connectedFD;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: socket is successfully connected %d.", &v33, 0x22u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [TCPTunnelClient processSocketWrite:];
      }
    }

    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (writeCopy == 1)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        v24 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v33 = 136315650;
            v34 = v22;
            v35 = 2080;
            v36 = "[TCPTunnelClient processSocketWrite:]";
            v37 = 1024;
            v38 = 355;
            _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: We got a TCP connection!", &v33, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [TCPTunnelClient processSocketWrite:];
        }
      }

      self->_connectState = 9;
      allocateReq = self->_allocateReq;
      if (allocateReq)
      {
        [(TCPTunnelClient *)self sendTCPData:[(NSData *)allocateReq bytes] bufSize:[(NSData *)self->_allocateReq length]];
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        v27 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v33 = 136315650;
            v34 = v25;
            v35 = 2080;
            v36 = "[TCPTunnelClient processSocketWrite:]";
            v37 = 1024;
            v38 = 361;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: Start SSL handshake", &v33, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [TCPTunnelClient processSocketWrite:];
        }
      }

      [(TCPTunnelClient *)self sendTCPData:&cSSLClientHello_0 bufSize:51];
      self->_connectState = 2;
    }

    goto LABEL_46;
  }

  v14 = self->_head;
  if (!v14)
  {
LABEL_46:
    if (!self->_head && !self->_writeSourceSuspended)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        v31 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = 136315650;
            v34 = v29;
            v35 = 2080;
            v36 = "[TCPTunnelClient processSocketWrite:]";
            v37 = 1024;
            v38 = 391;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: wcb suspend", &v33, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [TCPTunnelClient processSocketWrite:];
        }
      }

      dispatch_suspend(self->_writeSource);
      self->_writeSourceSuspended = 1;
    }

    return;
  }

  v15 = send(self->_connectedFD, &self->_writeBuf[self->_tail], v14 - self->_tail, 0);
  if (v15 != -1 || *__error() == 35)
  {
    v16 = self->_head;
    v17 = self->_tail + v15;
    self->_tail = v17;
    if (v17 == v16)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        v20 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v33 = 136315650;
            v34 = v18;
            v35 = 2080;
            v36 = "[TCPTunnelClient processSocketWrite:]";
            v37 = 1024;
            v38 = 384;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: reset write buffer", &v33, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [TCPTunnelClient processSocketWrite:];
        }
      }

      *&self->_head = 0;
    }

    goto LABEL_46;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [TCPTunnelClient processSocketWrite:];
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      [TCPTunnelClient processSocketWrite:];
    }
  }

  if (self->_isChannelBound)
  {
    v32 = 32022;
  }

  else
  {
    v32 = 32002;
  }

  [(TCPTunnelClient *)self reportErrorAndTerminate:v32 detail:318 returnCode:*__error() description:@"TCP TURN channel closed" reason:@"Socket closed while writing"];
}

- (void)vcArg:(id)arg sendControlData:(id)data isTypeSSL:(BOOL)l withTimeout:(float)timeout withDetail:(int64_t)detail
{
  v14 = *MEMORY[0x1E69E9840];
  if (!l)
  {
    connectState = self->_connectState;
    if (connectState == 8)
    {
      queue = self->_queue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__TCPTunnelClient_vcArg_sendControlData_isTypeSSL_withTimeout_withDetail___block_invoke_2;
      v10[3] = &unk_1E85F7018;
      v10[4] = self;
      v10[5] = data;
      timeoutCopy = timeout;
      v10[6] = detail;
      v9 = v10;
      goto LABEL_5;
    }

    if (connectState != 9)
    {
      return;
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TCPTunnelClient_vcArg_sendControlData_isTypeSSL_withTimeout_withDetail___block_invoke;
  block[3] = &unk_1E85F7018;
  block[4] = self;
  block[5] = data;
  timeoutCopy2 = timeout;
  block[6] = detail;
  v9 = block;
LABEL_5:
  dispatch_async(queue, v9);
}

uint64_t __74__TCPTunnelClient_vcArg_sendControlData_isTypeSSL_withTimeout_withDetail___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1[2] != 1)
  {
    v2 = result;
    result = [v1 sendTCPData:objc_msgSend(*(result + 40) bufSize:{"bytes"), objc_msgSend(*(result + 40), "length")}];
    if (*(v2 + 56) > 0.0)
    {
      v3 = *(v2 + 32);
      v4 = *(v2 + 48);

      return [v3 createDispatchTimer:v4 withDetailedError:?];
    }
  }

  return result;
}

void __74__TCPTunnelClient_vcArg_sendControlData_isTypeSSL_withTimeout_withDetail___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8) == 8)
  {
    v2 = (a1 + 40);
    if ([*(a1 + 40) length] < 0xFFFD)
    {
      LOWORD(v5) = 791;
      BYTE2(v5) = 1;
      *(&v5 + 5) = 0;
      HIBYTE(v5) = 0;
      *(&v5 + 3) = bswap32([*(a1 + 40) length] + 3) >> 16;
      [*(a1 + 32) sendTCPData:&v5 bufSize:8];
      [*(a1 + 32) sendTCPData:objc_msgSend(*(a1 + 40) bufSize:{"bytes"), objc_msgSend(*(a1 + 40), "length")}];
      if (*(a1 + 56) > 0.0)
      {
        [*(a1 + 32) createDispatchTimer:*(a1 + 48) withDetailedError:?];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __74__TCPTunnelClient_vcArg_sendControlData_isTypeSSL_withTimeout_withDetail___block_invoke_2_cold_1(v3, v2, v4);
      }
    }
  }
}

- (void)receivedControlData:(id)data
{
  v59 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  [data bytes];
  [data length];
  v5 = ParseSTUNMessage();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if ((v5 & 0x80000000) == 0)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        isChannelBound = self->_isChannelBound;
        *buf = 136316418;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = "[TCPTunnelClient receivedControlData:]";
        *&buf[22] = 1024;
        *&buf[24] = 453;
        *&buf[28] = 1024;
        *&buf[30] = isChannelBound;
        *&buf[34] = 1024;
        *&buf[36] = __b[1];
        v56 = 1024;
        v57 = __b[0];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: %d, Received TURN message: %x, %x", buf, 0x2Eu);
      }
    }

    switch(__b[1])
    {
      case 9:
        [(TCPTunnelClient *)self destroyDispatchTimer];
        if (__b[0] == 256)
        {
          if (self->_connectState == 9)
          {
            v19 = 3;
          }

          else
          {
            v19 = 4;
          }

          if (!self->_isChannelBound)
          {
            self->_isChannelBound = 1;
          }

          bindingResponseHandler = [(TCPTunnelClient *)self bindingResponseHandler];
          if (bindingResponseHandler)
          {
            bindingResponseHandler[2](bindingResponseHandler, v19);
          }

          v21 = self->_allocationTimestamp - micro() + 30.0;
          v22 = VRTraceGetErrorLogLevelForModule();
          if (v21 >= 0.1)
          {
            if (v22 >= 7)
            {
              v26 = VRTraceErrorLogLevelToCSTR();
              v27 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                *&buf[4] = v26;
                *&buf[12] = 2080;
                *&buf[14] = "[TCPTunnelClient receivedControlData:]";
                *&buf[22] = 1024;
                *&buf[24] = 521;
                *&buf[28] = 2048;
                *&buf[30] = v21;
                _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: refreshing after %5.2f seconds", buf, 0x26u);
              }
            }

            v28 = dispatch_time(0, (v21 * 1000000000.0));
            queue = self->_queue;
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __39__TCPTunnelClient_receivedControlData___block_invoke_27;
            v43[3] = &unk_1E85F3778;
            v43[4] = self;
            dispatch_after(v28, queue, v43);
            goto LABEL_84;
          }

          if (v22 >= 7)
          {
            v23 = VRTraceErrorLogLevelToCSTR();
            v24 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = v23;
              *&buf[12] = 2080;
              *&buf[14] = "[TCPTunnelClient receivedControlData:]";
              *&buf[22] = 1024;
              *&buf[24] = 510;
              _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: refreshing now.", buf, 0x1Cu);
            }
          }

          v17 = self->_queue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __39__TCPTunnelClient_receivedControlData___block_invoke;
          block[3] = &unk_1E85F3778;
          block[4] = self;
          v18 = block;
LABEL_38:
          dispatch_async(v17, v18);
LABEL_84:
          FreeSTUNMessage();
          return;
        }

        *buf = -21846;
        ProcessChannelBindErrorResponse();
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [TCPTunnelClient receivedControlData:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [TCPTunnelClient receivedControlData:];
          }
        }

        if (self->_isChannelBound)
        {
          v36 = 32022;
        }

        else
        {
          v36 = 32002;
        }

        v31 = *buf;
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ChannelBind Failed: %u", *buf];
        selfCopy3 = self;
        v34 = v36;
        v35 = 314;
        break;
      case 4:
        [(TCPTunnelClient *)self destroyDispatchTimer];
        if (__b[0] == 256)
        {
          self->_allocationTimestamp = micro();
          STUNAttr = GetSTUNAttr();
          if (STUNAttr && !*(STUNAttr + 8))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v39 = VRTraceErrorLogLevelToCSTR();
              v40 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = v39;
                *&buf[12] = 2080;
                *&buf[14] = "[TCPTunnelClient receivedControlData:]";
                *&buf[22] = 1024;
                *&buf[24] = 550;
                _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: Got TURN terminating response.", buf, 0x1Cu);
              }
            }

            self->_isChannelBound = 0;
            destroyHandler = [(TCPTunnelClient *)self destroyHandler];
            if (destroyHandler)
            {
              destroyHandler[2]();
            }

            goto LABEL_84;
          }

          v17 = self->_queue;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __39__TCPTunnelClient_receivedControlData___block_invoke_31;
          v42[3] = &unk_1E85F3778;
          v42[4] = self;
          v18 = v42;
          goto LABEL_38;
        }

        *buf = -21846;
        ProcessAllocateErrorResponse();
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [TCPTunnelClient receivedControlData:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [TCPTunnelClient receivedControlData:];
          }
        }

        if (self->_isChannelBound)
        {
          v30 = 32022;
        }

        else
        {
          v30 = 32002;
        }

        v31 = *buf;
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Refresh Failed: %u", *buf];
        selfCopy3 = self;
        v34 = v30;
        v35 = 315;
        break;
      case 3:
        [(TCPTunnelClient *)self destroyDispatchTimer];
        if (__b[0] == 256)
        {
          *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v10 = 0xAAAAAAAAAAAAAAAALL;
          *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *buf = v10;
          *&buf[16] = v10;
          v54 = 0xAAAAAAAAAAAAAAAALL;
          v52 = v10;
          v53 = v10;
          v45 = -1431655766;
          if ((ProcessAllocateResponse() & 0x80000000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [TCPTunnelClient receivedControlData:];
              }
            }
          }

          else
          {
            self->_allocationTimestamp = micro();
            allocationResponseHandler = [(TCPTunnelClient *)self allocationResponseHandler];
            if (allocationResponseHandler)
            {
              allocationResponseHandler[2](allocationResponseHandler, self->_reqRespDict);
            }

            if (self->_channelBReq)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v13 = VRTraceErrorLogLevelToCSTR();
                v14 = *MEMORY[0x1E6986650];
                v15 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    *v46 = 136315650;
                    v47 = v13;
                    v48 = 2080;
                    v49 = "[TCPTunnelClient receivedControlData:]";
                    v50 = 1024;
                    v51 = 475;
                    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: send saved ChannelBinding request now.", v46, 0x1Cu);
                  }
                }

                else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  [TCPTunnelClient receivedControlData:];
                }
              }

              *&v12 = self->_fTimeout;
              [(TCPTunnelClient *)self vcArg:0 sendControlData:self->_channelBReq isTypeSSL:0 withTimeout:309 withDetail:v12];
            }
          }

          goto LABEL_84;
        }

        *buf = -21846;
        ProcessAllocateErrorResponse();
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [TCPTunnelClient receivedControlData:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [TCPTunnelClient receivedControlData:];
          }
        }

        v38 = *buf;
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Allocation Failed: %u", *buf];
        selfCopy3 = self;
        v34 = 32002;
        v35 = 313;
        v37 = v38;
        goto LABEL_83;
      default:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [TCPTunnelClient receivedControlData:];
          }
        }

        goto LABEL_84;
    }

    v37 = v31;
LABEL_83:
    [(TCPTunnelClient *)selfCopy3 reportErrorAndTerminate:v34 detail:v35 returnCode:v37 description:@"cannot establish TCP TURN channel" reason:v32];
    goto LABEL_84;
  }

  if (ErrorLogLevelForModule >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [TCPTunnelClient receivedControlData:];
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      [TCPTunnelClient receivedControlData:];
    }
  }

  if (self->_isChannelBound)
  {
    v25 = 32022;
  }

  else
  {
    v25 = 32002;
  }

  -[TCPTunnelClient reportErrorAndTerminate:detail:returnCode:description:reason:](self, "reportErrorAndTerminate:detail:returnCode:description:reason:", v25, 312, v5, @"cannot establish TCP TURN channel", [MEMORY[0x1E696AEC0] stringWithFormat:@"Error parsing TURN message (%08X)", v5]);
}

uint64_t __39__TCPTunnelClient_receivedControlData___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  result = [*(a1 + 32) sendRefreshMsg:60 error:v3];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) terminationHandler];
    if (result)
    {
      return (*(result + 16))(result, v3[0]);
    }
  }

  return result;
}

uint64_t __39__TCPTunnelClient_receivedControlData___block_invoke_27(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  result = [*(a1 + 32) sendRefreshMsg:60 error:v3];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) terminationHandler];
    if (result)
    {
      return (*(result + 16))(result, v3[0]);
    }
  }

  return result;
}

uint64_t __39__TCPTunnelClient_receivedControlData___block_invoke_31(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 256) monitorBufferPool];
  v3[0] = 0;
  result = [*(a1 + 32) sendChannelBindingMsgWithDict:0 error:v3];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) terminationHandler];
    if (result)
    {
      return (*(result + 16))(result, v3[0]);
    }
  }

  return result;
}

- (void)processSocketReadSSL
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: TCP/SSL socket is closed while accepting packets", v2, v3, v4, v5, v6);
}

unint64_t __39__TCPTunnelClient_processSocketReadSSL__block_invoke(unint64_t result)
{
  v1 = result;
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(result + 56);
  if ((v2 - 20) > 2)
  {
    if (v2 == 23)
    {
      result = [*(result + 40) length];
      if (result >= 8)
      {
        v8 = 0;
        result = [*(v1 + 40) getBytes:&v8 + 2 range:{3, 2}];
        HIWORD(v8) = bswap32(HIWORD(v8)) >> 16;
        if ((HIWORD(v8) & 0xC000) == 0x4000)
        {
          [*(v1 + 40) getBytes:&v8 range:{5, 2}];
          LOWORD(v8) = bswap32(v8) >> 16;
          v6 = MEMORY[0x1E695DEF0];
          v7 = [*(v1 + 40) bytes];
          [v6 dataWithBytesNoCopy:v7 + 7 length:v8 freeWhenDone:0];
          return (*(*(v1 + 48) + 16))();
        }

        else if ((v8 & 0xC0000000) == 0)
        {
          v5 = [*(v1 + 40) length] - 3;
          return [*(v1 + 32) receivedControlData:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytesNoCopy:length:freeWhenDone:", objc_msgSend(*(v1 + 40), "bytes") + 3, v5, 0)}];
        }
      }
    }
  }

  else
  {
    v3 = *(result + 32);
    v4 = *(v1 + 40);

    return [v3 receivedSSLConnectionData:v4 recordType:?];
  }

  return result;
}

- (void)receivedSSLConnectionData:(id)data recordType:(unsigned __int16)type
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = -86;
  if (type != 22)
  {
    if (type == 21)
    {
      v6 = 2;
    }

    else if (type == 20)
    {
      if (self->_connectState == 6)
      {
        v5 = 7;
LABEL_24:
        self->_connectState = v5;
        return;
      }

      v6 = 1;
    }

    else
    {
      v6 = 7;
    }

    goto LABEL_19;
  }

  if (self->_connectState == 7)
  {
    self->_connectState = 8;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v23 = v7;
          v24 = 2080;
          v25 = "[TCPTunnelClient receivedSSLConnectionData:recordType:]";
          v26 = 1024;
          v27 = 727;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: SSL enabled channel has set up.", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [TCPTunnelClient receivedSSLConnectionData:recordType:];
      }
    }

    if (self->_allocateReq)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        v17 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v23 = v15;
            v24 = 2080;
            v25 = "[TCPTunnelClient receivedSSLConnectionData:recordType:]";
            v26 = 1024;
            v27 = 729;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: send Allocate request in queue now.", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [TCPTunnelClient receivedSSLConnectionData:recordType:];
        }
      }

      *&v14 = self->_fTimeout;
      [(TCPTunnelClient *)self vcArg:0 sendControlData:self->_allocateReq isTypeSSL:0 withTimeout:308 withDetail:v14];
    }
  }

  else
  {
    [data getBytes:&v21 length:1];
    if (v21 != 14)
    {
      if (v21 == 12)
      {
        v6 = 4;
        if (self->_connectState != 3)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v21 != 2)
        {
          v6 = 6;
          goto LABEL_19;
        }

        v6 = 3;
        if (self->_connectState != 2)
        {
LABEL_19:
          if (self->_connectState == 1)
          {
            return;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              connectState = self->_connectState;
              *buf = 136316418;
              v23 = v10;
              v24 = 2080;
              v25 = "[TCPTunnelClient receivedSSLConnectionData:recordType:]";
              v26 = 1024;
              v27 = 786;
              v28 = 1024;
              v29 = 786;
              v30 = 1024;
              v31 = v6;
              v32 = 1024;
              v33 = connectState;
              _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: handshake error: %d, %d", buf, 0x2Eu);
            }
          }

          v12 = dispatch_time(0, 500000000);
          queue = self->_queue;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __56__TCPTunnelClient_receivedSSLConnectionData_recordType___block_invoke;
          v20[3] = &unk_1E85F3778;
          v20[4] = self;
          dispatch_after(v12, queue, v20);
          v5 = 1;
          goto LABEL_24;
        }
      }

      self->_connectState = v6;
      return;
    }

    v18 = self->_connectState;
    v6 = 5;
    if (v18 == 4)
    {
      self->_connectState = 5;
      v6 = 0;
    }

    -[TCPTunnelClient vcArg:sendControlData:isTypeSSL:withTimeout:withDetail:](self, "vcArg:sendControlData:isTypeSSL:withTimeout:withDetail:", 0, [MEMORY[0x1E695DEF0] dataWithBytes:&cSSLClientDone length:109], 1, 321, 0.0);
    self->_connectState = 6;
    if (v18 != 4)
    {
      goto LABEL_19;
    }
  }
}

uint64_t __56__TCPTunnelClient_receivedSSLConnectionData_recordType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) destroyHandler];
  if (result)
  {
    v2 = *(result + 16);

    return v2();
  }

  return result;
}

- (TCPTunnelClient)initWithRelayRequestDictionary:(id)dictionary withCallID:(unsigned int)d relayType:(unsigned __int8)type errorCode:(int *)code
{
  dCopy = d;
  v59 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = TCPTunnelClient;
  v10 = [(TCPTunnelClient *)&v37 init];
  if (v10)
  {
    v58 = 0uLL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v57 + 14) = v11;
    v56 = v11;
    v57[0] = v11;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (dictionary)
        {
          v14 = [objc_msgSend(dictionary "description")];
        }

        else
        {
          v14 = "<nil>";
        }

        *buf = 136315906;
        v47 = v12;
        v48 = 2080;
        v49 = "[TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:]";
        v50 = 1024;
        v51 = 812;
        v52 = 2080;
        v53 = v14;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: STARTING! %s", buf, 0x26u);
      }
    }

    *(v10 + 9) = 0u;
    *(v10 + 22) = 0;
    *(v10 + 10) = 0u;
    GetIPPortFromDict();
    *(v10 + 41) = bswap32(*(v10 + 41));
    *(v10 + 1) = 0xFFFFFFFF00000000;
    *(v10 + 4) = 0;
    *(v10 + 9) = 0;
    *(v10 + 12) = 0;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 26) = 1109262336;
    *(v10 + 7) = 0;
    *(v10 + 14) = @"Dummy";
    *(v10 + 60) = dCopy & 0x3FFF | 0x4000;
    *(v10 + 17) = 0;
    *(v10 + 27) = 0;
    *(v10 + 112) = 0;
    *(v10 + 29) = 0;
    *(v10 + 23) = 0;
    *(v10 + 24) = 0;
    v36 = 0;
    LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
    if (!LocalInterfaceListWithOptions)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:];
        }
      }

      goto LABEL_23;
    }

    if (LocalInterfaceListWithOptions < 1)
    {
      LODWORD(v16) = 0;
    }

    else
    {
      v16 = 0;
      v17 = (v36 + 5);
      while (*(v17 - 1) == 108 && *v17 == 111)
      {
        ++v16;
        v17 += 40;
        if (LocalInterfaceListWithOptions == v16)
        {
          goto LABEL_20;
        }
      }
    }

    if (v16 == LocalInterfaceListWithOptions)
    {
LABEL_20:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:];
        }
      }

LABEL_23:
      *code = 324;
      FreeLocalInterfaceList();
      return 0;
    }

    if ((VCNAT64ResolverGetPrefix(v36 + 40 * v16 + 4, &v58) & 0x80000000) != 0 || !VCNAT64ResolverIsNonzeroPrefix(&v58))
    {
      v21 = 0;
    }

    else
    {
      v35 = 0;
      *&v43.sa_len = 0xAAAAAAAAAAAAAAAALL;
      *&v43.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
      nw_nat64_synthesize_v6();
      inet_ntop(30, &v43, &v56, 0x2Eu);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v47 = v19;
          v48 = 2080;
          v49 = "[TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:]";
          v50 = 1024;
          v51 = 870;
          v52 = 2080;
          v53 = (v36 + 40 * v16 + 4);
          v54 = 2080;
          v55 = &v56;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: interface %s is behind NAT64 with prefix %s", buf, 0x30u);
        }
      }

      v21 = 1;
    }

    FreeLocalInterfaceList();
    *&v43.sa_len = 0;
    *&v43.sa_data[6] = 0;
    v45 = 0;
    v44 = 0;
    if (v21)
    {
      v22 = 28;
    }

    else
    {
      v22 = 16;
    }

    if (v21)
    {
      v23 = 30;
    }

    else
    {
      v23 = 2;
    }

    v43.sa_family = v23;
    v24 = socket(v23, 1, 0);
    if ((v24 & 0x80000000) == 0)
    {
      v25 = v24;
      v35 = 1;
      setsockopt(v24, 0xFFFF, 4130, &v35, 4u);
      v34 = 1;
      setsockopt(v25, 6, 1, &v34, 4u);
      v26 = 54004;
      do
      {
        *v43.sa_data = bswap32(++v26) >> 16;
        v27 = bind(v25, &v43, v22);
      }

      while (v27 && v26 != 0xFFFF);
      if (v27)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:];
          }
        }

        v28 = 323;
      }

      else
      {
        v33 = 28;
        getsockname(v25, &v43, &v33);
        inet_ntop(30, &v43.sa_data[6], &v56, 0x2Eu);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v47 = v29;
            v48 = 2080;
            v49 = "[TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:]";
            v50 = 1024;
            v51 = 915;
            v52 = 2080;
            v53 = &v56;
            v54 = 1024;
            LODWORD(v55) = bswap32(*v43.sa_data) >> 16;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: local IP %s, local port: %d", buf, 0x2Cu);
          }
        }

        v31 = objc_alloc_init(TCPBufferPool);
        *(v10 + 32) = v31;
        if (v31)
        {
          *(v10 + 26) = objc_alloc_init(MEMORY[0x1E695DF88]);
          *(v10 + 30) = malloc_type_malloc(0x800uLL, 0x100004077774924uLL);
          *(v10 + 31) = 0;
          *(v10 + 16) = [dictionary mutableCopy];
          v32 = dispatch_queue_create("com.apple.viceroy.TCPTunnel", 0);
          *(v10 + 8) = v32;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke;
          block[3] = &unk_1E85F7040;
          v41 = v21;
          block[4] = v10;
          v39 = v58;
          v40 = v25;
          typeCopy = type;
          dispatch_async(v32, block);
          return v10;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:];
          }
        }

        v28 = 325;
      }

      *code = v28;
      close(v25);
      return 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:];
      }
    }

    v10 = 0;
    *code = 322;
  }

  return v10;
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  *&v47.sa_len = 0;
  *&v47.sa_data[6] = 0;
  v49 = 0;
  v48 = 0;
  v45 = 28;
  if (*(a1 + 60) == 1)
  {
    v47.sa_family = 30;
    v44 = bswap32(*(*(a1 + 32) + 164));
    nw_nat64_synthesize_v6();
    v47.sa_len = 28;
    *v47.sa_data = bswap32(*(*(a1 + 32) + 180)) >> 16;
    *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v2;
    *&buf[16] = v2;
    SAToIPPORT();
    IPPORTToStringWithSize();
  }

  else
  {
    v47.sa_family = 2;
    IPPORTToStringWithSize();
    IPPORTToSA();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = "[TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:]_block_invoke";
      *&buf[22] = 1024;
      *&buf[24] = 954;
      *&buf[28] = 2080;
      *&buf[30] = &_block_invoke_ipPortStr;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: attempt a TCP connection to %s", buf, 0x26u);
    }
  }

  v5 = fcntl(*(a1 + 56), 3, 0);
  fcntl(*(a1 + 56), 4, v5 | 4u);
  v6 = *(a1 + 56);
  v7 = (a1 + 32);
  *(*(a1 + 32) + 12) = v6;
  *(*(a1 + 32) + 80) = dispatch_source_create(MEMORY[0x1E69E9730], v6, 0, *(*(a1 + 32) + 64));
  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  if (!v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_9();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_8();
      }
    }

    v19 = *v7;
    v20 = @"can't create write source.";
    v21 = 318;
    goto LABEL_59;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_49;
  handler[3] = &unk_1E85F37A0;
  handler[4] = v8;
  v43 = *(a1 + 61);
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(*(*(a1 + 32) + 80));
  *(*(a1 + 32) + 88) = 0;
  v10 = connect(*(a1 + 56), &v47, v45);
  if ((v10 & 0x80000000) != 0)
  {
    v15 = v10;
    if (*__error() != 36)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v18 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_2(v16, v15, v18);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_1(v16, v15, v18);
        }
      }

      v30 = *v7;
      v31 = *__error();
      v20 = @"can't connect socket.";
      v19 = v30;
      v21 = 319;
      goto LABEL_60;
    }
  }

  else if (!*(*v7 + 2))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(*v7 + 3);
          *buf = 136315906;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "[TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:]_block_invoke_2";
          *&buf[22] = 1024;
          *&buf[24] = 980;
          *&buf[28] = 1024;
          *&buf[30] = v14;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: connect is done immediately %d.", buf, 0x22u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_3();
      }
    }

    v22 = *(a1 + 61);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v22 == 1)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        v26 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v24;
            *&buf[12] = 2080;
            *&buf[14] = "[TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:]_block_invoke";
            *&buf[22] = 1024;
            *&buf[24] = 982;
            _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: We got a TCP connection!", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_5();
        }
      }

      *(*v7 + 2) = 9;
      v32 = *(*v7 + 23);
      if (v32)
      {
        [*v7 sendTCPData:objc_msgSend(v32 bufSize:{"bytes"), objc_msgSend(*(*v7 + 23), "length")}];
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        v29 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v27;
            *&buf[12] = 2080;
            *&buf[14] = "[TCPTunnelClient initWithRelayRequestDictionary:withCallID:relayType:errorCode:]_block_invoke";
            *&buf[22] = 1024;
            *&buf[24] = 988;
            _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: Start SSL handshake", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_4();
        }
      }

      [*v7 sendTCPData:&cSSLClientHello_0 bufSize:51];
      *(*v7 + 2) = 2;
    }
  }

  *(*(a1 + 32) + 72) = dispatch_source_create(MEMORY[0x1E69E96F8], *(a1 + 56), 0, *(*(a1 + 32) + 64));
  v33 = *(a1 + 32);
  v34 = *(v33 + 72);
  if (!v34)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_7();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_6();
      }
    }

    v19 = *v7;
    v20 = @"can't create read source.";
    v21 = 316;
LABEL_59:
    v31 = 0;
LABEL_60:
    [v19 reportErrorAndTerminate:32002 detail:v21 returnCode:v31 description:@"TCP TURN channel closed" reason:v20];
    return;
  }

  if (*(a1 + 61) == 1)
  {
    v35 = v41;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v36 = __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_57;
  }

  else
  {
    v35 = v40;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v36 = __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_2;
  }

  v35[2] = v36;
  v35[3] = &unk_1E85F3778;
  v35[4] = v33;
  dispatch_source_set_event_handler(v34, v35);
  v37 = *v7;
  v38 = *(*v7 + 9);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_3;
  v39[3] = &unk_1E85F3778;
  v39[4] = v37;
  dispatch_source_set_cancel_handler(v38, v39);
  dispatch_resume(*(*v7 + 9));
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = v3;
      v11 = 2080;
      v12 = "[TCPTunnelClient dealloc]";
      v13 = 1024;
      v14 = 1035;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: TCP tunnel released.", buf, 0x1Cu);
    }
  }

  [(TCPTunnelClient *)self destroyDispatchTimer];
  writeSource = self->_writeSource;
  if (writeSource)
  {
    dispatch_release(writeSource);
    self->_writeSource = 0;
  }

  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_release(readSource);
    self->_readSource = 0;
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  free(self->_writeBuf);
  self->_writeBuf = 0;

  v8.receiver = self;
  v8.super_class = TCPTunnelClient;
  [(TCPTunnelClient *)&v8 dealloc];
}

- (unsigned)connectionType
{
  connectState = self->_connectState;
  if (connectState == 9)
  {
    return 3;
  }

  else
  {
    return 4 * (connectState == 8);
  }
}

- (BOOL)sendAllocateMsg:(id *)msg
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v17, 170, sizeof(v17));
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 1472;
  Request = MakeAllocateRequest();
  if ((Request & 0x80000000) != 0)
  {
    v10 = Request;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [TCPTunnelClient sendAllocateMsg:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [TCPTunnelClient sendAllocateMsg:];
      }
    }

    1086 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m", 1086];
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", msg, 32002, 302, v10, 1086, @"Sending TCPTunnel Allocate Request failed.", [MEMORY[0x1E696AEC0] stringWithFormat:@"Make request error: %x.", v10]);
    FreeSTUNMessage();
  }

  else
  {
    v6 = STUNEncodeMessage();
    FreeSTUNMessage();
    if ((v6 & 0x80000000) == 0)
    {
      v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v17 length:v14];
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__TCPTunnelClient_sendAllocateMsg___block_invoke;
      block[3] = &unk_1E85F37F0;
      block[4] = self;
      block[5] = v7;
      dispatch_async(queue, block);
      return 1;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [TCPTunnelClient sendAllocateMsg:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [TCPTunnelClient sendAllocateMsg:];
      }
    }

    1101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m", 1101];
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", msg, 32002, 303, v6, 1101, @"Sending TCPTunnel Allocate Request failed.", [MEMORY[0x1E696AEC0] stringWithFormat:@"Encode request error: %x.", v6]);
  }

  return 0;
}

uint64_t __35__TCPTunnelClient_sendAllocateMsg___block_invoke(uint64_t a1, double a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3[2] > 7)
  {
    v7 = *(a1 + 40);
    LODWORD(a2) = v3[26];

    return [v3 vcArg:0 sendControlData:v7 isTypeSSL:0 withTimeout:308 withDetail:a2];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315650;
          v10 = v4;
          v11 = 2080;
          v12 = "[TCPTunnelClient sendAllocateMsg:]_block_invoke";
          v13 = 1024;
          v14 = 1110;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendAllocateMsg: save the message for set-up in progress.", &v9, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __35__TCPTunnelClient_sendAllocateMsg___block_invoke_cold_1();
      }
    }

    result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:*(a1 + 40)];
    *(*(a1 + 32) + 184) = result;
  }

  return result;
}

- (BOOL)sendChannelBindingMsgWithDict:(id)dict error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 1472;
  if (dict)
  {

    self->_relayUpdateDict = [dict copy];
  }

  memset(v19, 170, sizeof(v19));
  ChannelBindRequest = MakeChannelBindRequest();
  if ((ChannelBindRequest & 0x80000000) != 0)
  {
    v12 = ChannelBindRequest;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [TCPTunnelClient sendChannelBindingMsgWithDict:error:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [TCPTunnelClient sendChannelBindingMsgWithDict:error:];
      }
    }

    if (self->_isChannelBound)
    {
      v13 = 32022;
    }

    else
    {
      v13 = 32002;
    }

    1143 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m", 1143];
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", error, v13, 304, v12, 1143, @"Sending TCPTunnel ChannelBinding Request failed.", [MEMORY[0x1E696AEC0] stringWithFormat:@"Make request error: %x.", v12]);
    FreeSTUNMessage();
  }

  else
  {
    v8 = STUNEncodeMessage();
    FreeSTUNMessage();
    if ((v8 & 0x80000000) == 0)
    {
      v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v19 length:v18];
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__TCPTunnelClient_sendChannelBindingMsgWithDict_error___block_invoke;
      block[3] = &unk_1E85F37F0;
      block[4] = self;
      block[5] = v9;
      dispatch_async(queue, block);
      return 1;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [TCPTunnelClient sendChannelBindingMsgWithDict:error:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [TCPTunnelClient sendChannelBindingMsgWithDict:error:];
      }
    }

    if (self->_isChannelBound)
    {
      v15 = 32022;
    }

    else
    {
      v15 = 32002;
    }

    1159 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m", 1159];
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", error, v15, 305, v8, 1159, @"Sending TCPTunnel ChannelBinding Request failed.", [MEMORY[0x1E696AEC0] stringWithFormat:@"Encode request error: %x.", v8]);
  }

  return 0;
}

uint64_t __55__TCPTunnelClient_sendChannelBindingMsgWithDict_error___block_invoke(uint64_t a1, double a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3[2] > 7)
  {
    v7 = *(a1 + 40);
    LODWORD(a2) = v3[26];

    return [v3 vcArg:0 sendControlData:v7 isTypeSSL:0 withTimeout:309 withDetail:a2];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315650;
          v10 = v4;
          v11 = 2080;
          v12 = "[TCPTunnelClient sendChannelBindingMsgWithDict:error:]_block_invoke";
          v13 = 1024;
          v14 = 1168;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendChannelBindingMsgWithDict: save message for set-up in progress.", &v9, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __55__TCPTunnelClient_sendChannelBindingMsgWithDict_error___block_invoke_cold_1();
      }
    }

    result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:*(a1 + 40)];
    *(*(a1 + 32) + 192) = result;
  }

  return result;
}

- (BOOL)sendRefreshMsg:(unsigned int)msg error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 170, sizeof(v12));
  MakeRefreshRequest();
  v6 = STUNEncodeMessage();
  if ((v6 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [TCPTunnelClient sendRefreshMsg:error:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [TCPTunnelClient sendRefreshMsg:error:];
      }
    }

    if (self->_isChannelBound)
    {
      v9 = 32022;
    }

    else
    {
      v9 = 32002;
    }

    1199 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m", 1199];
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", error, v9, 307, v6, 1199, @"Sending TCPTunnel Refresh Request failed.", [MEMORY[0x1E696AEC0] stringWithFormat:@"Encode request error: %x.", v6]);
    FreeSTUNMessage();
  }

  else
  {
    FreeSTUNMessage();
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:1472];
    *&v8 = self->_fTimeout;
    [(TCPTunnelClient *)self vcArg:0 sendControlData:v7 isTypeSSL:0 withTimeout:310 withDetail:v8];
  }

  return v6 >= 0;
}

- (void)vcArg:(id)arg sendRealTimeData:(id)data toParticipantID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  channelNumber = self->_channelNumber;
  v8 = [data length];
  v9 = v8;
  v10 = 4 - (v8 & 3);
  if ((v8 & 3) == 0)
  {
    v10 = 0;
  }

  connectState = self->_connectState;
  if (connectState == 8)
  {
    v16 = v8 + v10 + 7;
    v12 = (v8 + v10 + 7) + 5;
    v17 = [(TCPBufferPool *)self->_bufferPool getBufferFromPool:v12];
    if (!v17)
    {
      return;
    }

    v14 = v17;
    *v17 = 66327;
    *(v17 + 3) = bswap32(v16) >> 16;
    v15 = 8;
    goto LABEL_9;
  }

  if (connectState == 9)
  {
    v12 = v8 + v10 + 4;
    v13 = [(TCPBufferPool *)self->_bufferPool getBufferFromPool:v12];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
LABEL_9:
      v18 = bswap32(channelNumber);
      v19 = &v14[v15];
      *v19 = HIWORD(v18);
      *(v19 + 1) = bswap32(v9) >> 16;
      memcpy(&v14[v15 + 4], [data bytes], objc_msgSend(data, "length"));
      queue = self->_queue;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __58__TCPTunnelClient_vcArg_sendRealTimeData_toParticipantID___block_invoke;
      v21[3] = &unk_1E85F3908;
      v21[4] = self;
      v21[5] = v14;
      v22 = v12;
      dispatch_async(queue, v21);
    }
  }
}

uint64_t __58__TCPTunnelClient_vcArg_sendRealTimeData_toParticipantID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendTCPData:*(a1 + 40) bufSize:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 256);

  return [v3 returnBufferToPool:v2];
}

- (void)unbindChannel
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_connectState != 1)
  {
    if (self->_isChannelBound)
    {
      memset(v8, 170, sizeof(v8));
      v7 = 1472;
      MakeRefreshRequest();
      STUNEncodeMessage();
      FreeSTUNMessage();
      v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:1472];
      *&v4 = self->_fTimeout;
      [(TCPTunnelClient *)self vcArg:0 sendControlData:v3 isTypeSSL:0 withTimeout:311 withDetail:v4];
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __32__TCPTunnelClient_unbindChannel__block_invoke;
      block[3] = &unk_1E85F3778;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

void __32__TCPTunnelClient_unbindChannel__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 8) = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v1 = VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    v3 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315650;
        v5 = v1;
        v6 = 2080;
        v7 = "[TCPTunnelClient unbindChannel]_block_invoke";
        v8 = 1024;
        v9 = 1287;
        _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: TCP channel is unbound.", &v4, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __32__TCPTunnelClient_unbindChannel__block_invoke_cold_1();
    }
  }
}

- (void)closeTunnelSocket
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      connectedFD = self->_connectedFD;
      *buf = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[TCPTunnelClient closeTunnelSocket]";
      v12 = 1024;
      v13 = 1292;
      v14 = 1024;
      v15 = connectedFD;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: closeTunnelSocket %d", buf, 0x22u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__TCPTunnelClient_closeTunnelSocket__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __36__TCPTunnelClient_closeTunnelSocket__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      v5 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v3;
          v13 = 2080;
          v14 = "[TCPTunnelClient closeTunnelSocket]_block_invoke";
          v15 = 1024;
          v16 = 1297;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: Canceling the writeSource.", &v11, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __36__TCPTunnelClient_closeTunnelSocket__block_invoke_cold_1();
      }
    }

    v6 = *(a1 + 32);
    if (*(v6 + 88))
    {
      dispatch_resume(*(v6 + 80));
      *(*(a1 + 32) + 88) = 0;
      v6 = *(a1 + 32);
    }

    dispatch_source_cancel(*(v6 + 80));
    v2 = *(a1 + 32);
  }

  if (v2[9])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v7;
          v13 = 2080;
          v14 = "[TCPTunnelClient closeTunnelSocket]_block_invoke";
          v15 = 1024;
          v16 = 1306;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: Canceling the readSource.", &v11, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __36__TCPTunnelClient_closeTunnelSocket__block_invoke_cold_2();
      }
    }

    dispatch_source_cancel(*(*(a1 + 32) + 72));
    v2 = *(a1 + 32);
  }

  return [v2 destroyDispatchTimer];
}

- (void)createDispatchTimer:withDetailedError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: timer is set.", v2, v3, v4, v5, v6);
}

void __57__TCPTunnelClient_createDispatchTimer_withDetailedError___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_16(*(a2 + 48));
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_8_21();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

void __57__TCPTunnelClient_createDispatchTimer_withDetailedError___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_16(*(a2 + 48));
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

- (void)sendTCPData:bufSize:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_14_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: socket error, tear down the connection.", v2, v3, v4, v5, v6);
}

- (void)sendTCPData:bufSize:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: socket error, tear down the connection.", v2, v3, v4, v5, v6);
}

- (void)sendTCPData:bufSize:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: wcb resume", v2, v3, v4, v5, v6);
}

- (void)sendTCPData:bufSize:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)processSocketWrite:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)processSocketWrite:.cold.2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)processSocketWrite:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: Start SSL handshake", v2, v3, v4, v5, v6);
}

- (void)processSocketWrite:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: We got a TCP connection!", v2, v3, v4, v5, v6);
}

- (void)processSocketWrite:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_14_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Socket error, tear down the connection.", v2, v3, v4, v5, v6);
}

- (void)processSocketWrite:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Socket error, tear down the connection.", v2, v3, v4, v5, v6);
}

- (void)processSocketWrite:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: reset write buffer", v2, v3, v4, v5, v6);
}

- (void)processSocketWrite:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: wcb suspend", v2, v3, v4, v5, v6);
}

void __74__TCPTunnelClient_vcArg_sendControlData_isTypeSSL_withTimeout_withDetail___block_invoke_2_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  [*a2 length];
  v6 = 136315906;
  v7 = a1;
  v8 = 2080;
  OUTLINED_FUNCTION_6();
  v9 = 416;
  v10 = 2048;
  v11 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Data length is too large: %lu", &v6, 0x26u);
}

- (void)receivedControlData:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_14_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Got error response for Refresh request.", v2, v3, v4, v5, v6);
}

- (void)receivedControlData:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Got error response for Refresh request.", v2, v3, v4, v5, v6);
}

- (void)receivedControlData:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_14_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Got error response for ChannelBinding request.", v2, v3, v4, v5, v6);
}

- (void)receivedControlData:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Got error response for ChannelBinding request.", v2, v3, v4, v5, v6);
}

- (void)receivedControlData:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_14_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Got error response for Allocate request.", v2, v3, v4, v5, v6);
}

- (void)receivedControlData:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Got error response for Allocate request.", v2, v3, v4, v5, v6);
}

- (void)receivedControlData:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: send saved ChannelBinding request now.", v2, v3, v4, v5, v6);
}

- (void)receivedControlData:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: ProcessAllocateResponse failed", v2, v3, v4, v5, v6);
}

- (void)receivedControlData:.cold.9()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)receivedControlData:.cold.10()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_8_21();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)receivedControlData:.cold.11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)receivedSSLConnectionData:recordType:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: SSL enabled channel has set up.", v2, v3, v4, v5, v6);
}

- (void)receivedSSLConnectionData:recordType:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: send Allocate request in queue now.", v2, v3, v4, v5, v6);
}

- (void)initWithRelayRequestDictionary:withCallID:relayType:errorCode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: can't reserver buffer pool", v2, v3, v4, v5, v6);
}

- (void)initWithRelayRequestDictionary:withCallID:relayType:errorCode:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: no port to bind to.", v2, v3, v4, v5, v6);
}

- (void)initWithRelayRequestDictionary:withCallID:relayType:errorCode:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: can't create socket", v2, v3, v4, v5, v6);
}

- (void)initWithRelayRequestDictionary:withCallID:relayType:errorCode:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Only Carrier interface available.", v2, v3, v4, v5, v6);
}

- (void)initWithRelayRequestDictionary:withCallID:relayType:errorCode:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: Only Carrier interface available.", v2, v3, v4, v5, v6);
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  __error();
  v5 = 136316418;
  v6 = a1;
  OUTLINED_FUNCTION_13_10();
  _os_log_fault_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_FAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: We can't connect: %d, %d", &v5, 0x2Eu);
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  __error();
  v5 = 136316418;
  v6 = a1;
  OUTLINED_FUNCTION_13_10();
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: We can't connect: %d, %d", &v5, 0x2Eu);
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: Start SSL handshake", v2, v3, v4, v5, v6);
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: We got a TCP connection!", v2, v3, v4, v5, v6);
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_14_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: can't create read source.", v2, v3, v4, v5, v6);
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: can't create read source.", v2, v3, v4, v5, v6);
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_14_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: can't create write source.", v2, v3, v4, v5, v6);
}

void __81__TCPTunnelClient_initWithRelayRequestDictionary_withCallID_relayType_errorCode___block_invoke_cold_9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/TCPTunnelClient.m:%d: TCPTUNNEL: can't create write source.", v2, v3, v4, v5, v6);
}

- (void)sendAllocateMsg:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_8_21();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendAllocateMsg:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendAllocateMsg:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_8_21();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendAllocateMsg:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void __35__TCPTunnelClient_sendAllocateMsg___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d sendAllocateMsg: save the message for set-up in progress.", v2, v3, v4, v5, v6);
}

- (void)sendChannelBindingMsgWithDict:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_8_21();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendChannelBindingMsgWithDict:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendChannelBindingMsgWithDict:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_8_21();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendChannelBindingMsgWithDict:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void __55__TCPTunnelClient_sendChannelBindingMsgWithDict_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d sendChannelBindingMsgWithDict: save message for set-up in progress.", v2, v3, v4, v5, v6);
}

- (void)sendRefreshMsg:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_8_21();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendRefreshMsg:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void __32__TCPTunnelClient_unbindChannel__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: TCP channel is unbound.", v2, v3, v4, v5, v6);
}

void __36__TCPTunnelClient_closeTunnelSocket__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: Canceling the writeSource.", v2, v3, v4, v5, v6);
}

void __36__TCPTunnelClient_closeTunnelSocket__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d TCPTUNNEL: Canceling the readSource.", v2, v3, v4, v5, v6);
}

@end