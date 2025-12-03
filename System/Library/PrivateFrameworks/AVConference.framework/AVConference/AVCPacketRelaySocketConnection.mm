@interface AVCPacketRelaySocketConnection
- (AVCPacketRelaySocketConnection)initWithSocket:(unsigned __int16)socket remoteAddress:(id)address packetFilter:(id)filter;
- (BOOL)sendData:(const void *)data size:(unsigned int)size error:(id *)error;
- (int)start;
- (int)stop;
- (void)dealloc;
- (void)receiveDataOnSocket:(unsigned __int16)socket;
- (void)start;
@end

@implementation AVCPacketRelaySocketConnection

- (AVCPacketRelaySocketConnection)initWithSocket:(unsigned __int16)socket remoteAddress:(id)address packetFilter:(id)filter
{
  socketCopy = socket;
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AVCPacketRelaySocketConnection;
  v8 = [(AVCPacketRelaySocketConnection *)&v17 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v8->_unixSocket = socketCopy;
  v8->_remoteIPPortLength = 16;
  if (address)
  {
    if (![objc_msgSend(address "ip")])
    {
      v15 = 2150236161;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCPacketRelaySocketConnection initWithSocket:remoteAddress:packetFilter:];
        }
      }

      goto LABEL_24;
    }

    if (!getpeername(socketCopy, &v9->_remoteIPPort, &v9->_remoteIPPortLength))
    {
      v15 = 2150236161;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCPacketRelaySocketConnection initWithSocket:remoteAddress:packetFilter:];
        }
      }

      goto LABEL_24;
    }

    *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v10;
    *&buf[16] = v10;
    [objc_msgSend(address "ip")];
    [address port];
    MakeIPPORT();
    if (buf[0])
    {
      IPPORTToSA6();
    }

    else
    {
      IPPORTToSA();
    }

    v9->_isConnectedSocket = 0;
  }

  else
  {
    if (getpeername(socketCopy, &v8->_remoteIPPort, &v8->_remoteIPPortLength) == -1)
    {
      v15 = 2150236161;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCPacketRelaySocketConnection initWithSocket:remoteAddress:packetFilter:];
        }
      }

      goto LABEL_24;
    }

    v9->_isConnectedSocket = 1;
  }

  v9->_type = 1;
  [(AVCPacketRelaySocketConnection *)v9 setPacketFilter:filter];
  v11 = malloc_type_malloc(0x5C0uLL, 0x99C8FA2BuLL);
  v9->dataBuffer = v11;
  if (!v11)
  {
    v15 = 2150236163;
LABEL_24:
    [AVCPacketRelaySocketConnection initWithSocket:v15 remoteAddress:v9 packetFilter:?];
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = [-[AVCPacketRelaySocketConnection description](v9 "description")];
      *buf = 136315906;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "[AVCPacketRelaySocketConnection initWithSocket:remoteAddress:packetFilter:]";
      *&buf[22] = 1024;
      *&buf[24] = 105;
      *&buf[28] = 2080;
      *&buf[30] = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created AVCPacketRelaySocketConnection %s successfully", buf, 0x26u);
    }
  }

  return v9;
}

- (int)start
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v3;
      v10 = 2080;
      v11 = "[AVCPacketRelaySocketConnection start]";
      v12 = 1024;
      v13 = 117;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelaySocketConnection: starting...", &v8, 0x1Cu);
    }
  }

  if (self->_readHandler)
  {
    v5 = objc_autoreleasePoolPush();
    [+[AVCPacketRelayDriver sharedInstance](AVCPacketRelayDriver startMonitoringFileDescriptor:"startMonitoringFileDescriptor:forConnection:" forConnection:self->_unixSocket, self];
    objc_autoreleasePoolPop(v5);
    return 0;
  }

  else
  {
    v6 = -2144731132;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelaySocketConnection start];
      }
    }
  }

  return v6;
}

- (int)stop
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[AVCPacketRelaySocketConnection stop]";
      v11 = 1024;
      v12 = 132;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelaySocketConnection: stopping...", &v7, 0x1Cu);
    }
  }

  v5 = objc_autoreleasePoolPush();
  [+[AVCPacketRelayDriver sharedInstance](AVCPacketRelayDriver stopMonitoringFileDescriptor:"stopMonitoringFileDescriptor:", self->_unixSocket];
  objc_autoreleasePoolPop(v5);
  return 0;
}

- (void)receiveDataOnSocket:(unsigned __int16)socket
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_isConnectedSocket)
  {
    v4 = recv(socket, self->dataBuffer, 0x5C0uLL, 0);
  }

  else
  {
    *&v28.sa_len = 0xAAAAAAAAAAAAAAAALL;
    *&v28.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
    v15 = 16;
    v4 = recvfrom(socket, self->dataBuffer, 0x5C0uLL, 0, &v28, &v15);
    v27 = 0;
    v26 = 0u;
    v25 = 0u;
    *&v24[46] = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v24[16] = v5;
    *&v24[32] = v5;
    *v24 = v5;
    SAToIPPORT();
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = IPPORTToStringWithSize();
          *buf = 136315906;
          v17 = v6;
          v18 = 2080;
          v19 = "[AVCPacketRelaySocketConnection receiveDataOnSocket:]";
          v20 = 1024;
          v21 = 159;
          v22 = 2080;
          v23 = v9;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelaySocketConnection: received from %s", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v14 = IPPORTToStringWithSize();
        *buf = 136315906;
        v17 = v6;
        v18 = 2080;
        v19 = "[AVCPacketRelaySocketConnection receiveDataOnSocket:]";
        v20 = 1024;
        v21 = 159;
        v22 = 2080;
        v23 = v14;
        _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AVCPacketRelaySocketConnection: received from %s", buf, 0x26u);
      }
    }
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v4 < 0)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelaySocketConnection receiveDataOnSocket:];
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 136315906;
          *&v24[4] = v11;
          *&v24[12] = 2080;
          *&v24[14] = "[AVCPacketRelaySocketConnection receiveDataOnSocket:]";
          *&v24[22] = 1024;
          *&v24[24] = 166;
          *&v24[28] = 1024;
          *&v24[30] = v4;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelaySocketConnection: received %d bytes of data", v24, 0x22u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [AVCPacketRelaySocketConnection receiveDataOnSocket:];
      }
    }

    (*(self->_readHandler + 2))();
  }
}

- (BOOL)sendData:(const void *)data size:(unsigned int)size error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  p_unixSocket = &self->_unixSocket;
  unixSocket = self->_unixSocket;
  sizeCopy = size;
  if (*(p_unixSocket + 4) == 1)
  {
    v11 = send(unixSocket, data, size, 0);
  }

  else
  {
    v11 = sendto(unixSocket, data, size, 0, &self->_remoteIPPort, self->_remoteIPPortLength);
  }

  v12 = v11;
  if (v11 == -1)
  {
    if (*__error() == 35 || *__error() == 55)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCPacketRelaySocketConnection sendData:size:error:];
          if (!error)
          {
            return 0;
          }

LABEL_23:
          v16 = MEMORY[0x1E696ABC0];
          v17 = -2144731103;
          goto LABEL_24;
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelaySocketConnection sendData:size:error:];
        if (error)
        {
          goto LABEL_23;
        }

        return 0;
      }
    }

    if (error)
    {
      goto LABEL_23;
    }

    return 0;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v12 < sizeCopy)
  {
    if (ErrorLogLevelForModule >= 3 && (v14 = VRTraceErrorLogLevelToCSTR(), v15 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
      v23 = 136316162;
      v24 = v14;
      v25 = 2080;
      v26 = "[AVCPacketRelaySocketConnection sendData:size:error:]";
      v27 = 1024;
      v28 = 195;
      v29 = 2048;
      v30 = v12;
      v31 = 1024;
      sizeCopy2 = size;
      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCPacketRelaySocketConnection: sent %zu bytes < %u total bytes", &v23, 0x2Cu);
      if (error)
      {
        goto LABEL_9;
      }
    }

    else if (error)
    {
LABEL_9:
      v16 = MEMORY[0x1E696ABC0];
      v17 = -2144731122;
LABEL_24:
      v21 = [v16 errorWithDomain:@"AVCPacketRelayErrorDomain" code:v17 userInfo:0];
      result = 0;
      *error = v21;
      return result;
    }

    return 0;
  }

  if (ErrorLogLevelForModule >= 8)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    v20 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315906;
        v24 = v18;
        v25 = 2080;
        v26 = "[AVCPacketRelaySocketConnection sendData:size:error:]";
        v27 = 1024;
        v28 = 201;
        v29 = 2048;
        v30 = v12;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelaySocketConnection: sent %zu bytes", &v23, 0x26u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [AVCPacketRelaySocketConnection sendData:size:error:];
    }
  }

  return 1;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[AVCPacketRelaySocketConnection dealloc]";
      v11 = 1024;
      v12 = 216;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelaySocketConnection: dealloc", buf, 0x1Cu);
    }
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  free(self->dataBuffer);

  v6.receiver = self;
  v6.super_class = AVCPacketRelaySocketConnection;
  [(AVCPacketRelaySocketConnection *)&v6 dealloc];
}

- (void)initWithSocket:remoteAddress:packetFilter:.cold.1()
{
  v2 = 136315906;
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelaySocketConnection: socket %d is connected. Expected an unconnected socket", v2, v3, v4, v5);
}

- (void)initWithSocket:remoteAddress:packetFilter:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelaySocketConnection: invalid remote IPPort", v2, v3, v4, v5, v6);
}

- (void)initWithSocket:remoteAddress:packetFilter:.cold.3()
{
  OUTLINED_FUNCTION_14_5();
  __error();
  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)initWithSocket:(uint64_t)a1 remoteAddress:(void *)a2 packetFilter:.cold.4(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v3, v4, " [%s] %s:%d AVCPacketRelaySocketConnection: init error %08X", v5, v6, v7, v8, 2u);
    }
  }
}

- (void)start
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelaySocketConnection: cannot start without setting read handler", v2, v3, v4, v5, v6);
}

- (void)receiveDataOnSocket:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x22u);
}

- (void)receiveDataOnSocket:.cold.2()
{
  __error();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_16_19();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendData:size:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

- (void)sendData:size:error:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  __error();
  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendData:size:error:.cold.3()
{
  __error();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_16_19();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

@end