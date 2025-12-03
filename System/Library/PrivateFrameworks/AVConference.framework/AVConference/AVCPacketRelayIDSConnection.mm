@interface AVCPacketRelayIDSConnection
- (AVCPacketRelayIDSConnection)initWithIDSDestination:(id)destination;
- (AVCPacketRelayIDSConnection)initWithIDSSocketDescriptor:(unsigned __int16)descriptor;
- (BOOL)sendData:(const void *)data size:(unsigned int)size error:(id *)error;
- (int)start;
- (int)stop;
- (void)dealloc;
- (void)readyToRead;
- (void)start;
@end

@implementation AVCPacketRelayIDSConnection

- (AVCPacketRelayIDSConnection)initWithIDSSocketDescriptor:(unsigned __int16)descriptor
{
  descriptorCopy = descriptor;
  v23 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AVCPacketRelayIDSConnection;
  v14 = 0;
  v4 = [(AVCPacketRelayIDSConnection *)&v13 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v6 = 2150236163;
  v4->_type = 2;
  v7 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.willow.stream"];
  v5->_packetRelayService = v7;
  if (!v7)
  {
LABEL_9:
    [(AVCPacketRelayIDSConnection *)v6 initWithIDSSocketDescriptor:v5];
    return 0;
  }

  v8 = [(IDSService *)v7 datagramChannelForSocketDescriptor:descriptorCopy error:&v14];
  v5->_datagramChannel = v8;
  if (!v8)
  {
    v6 = 2150236164;
    goto LABEL_9;
  }

  [(AVCPacketRelayIDSConnection *)v5 setPacketFilter:0];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [-[AVCPacketRelayIDSConnection description](v5 "description")];
      *buf = 136315906;
      v16 = v9;
      v17 = 2080;
      v18 = "[AVCPacketRelayIDSConnection initWithIDSSocketDescriptor:]";
      v19 = 1024;
      v20 = 264;
      v21 = 2080;
      v22 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created AVCPacketRelayIDSConnection %s successfully", buf, 0x26u);
    }
  }

  return v5;
}

- (AVCPacketRelayIDSConnection)initWithIDSDestination:(id)destination
{
  v23 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AVCPacketRelayIDSConnection;
  v14 = 0;
  v4 = [(AVCPacketRelayIDSConnection *)&v13 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v6 = 2150236163;
  v4->_type = 2;
  v7 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.willow.stream"];
  v5->_packetRelayService = v7;
  if (!v7)
  {
LABEL_9:
    [(AVCPacketRelayIDSConnection *)v6 initWithIDSDestination:v5];
    return 0;
  }

  v8 = [(IDSService *)v7 datagramChannelForSessionDestination:destination error:&v14];
  v5->_datagramChannel = v8;
  if (!v8)
  {
    v6 = 2150236164;
    goto LABEL_9;
  }

  [(AVCPacketRelayIDSConnection *)v5 setPacketFilter:0];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [-[AVCPacketRelayIDSConnection description](v5 "description")];
      *buf = 136315906;
      v16 = v9;
      v17 = 2080;
      v18 = "[AVCPacketRelayIDSConnection initWithIDSDestination:]";
      v19 = 1024;
      v20 = 289;
      v21 = 2080;
      v22 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created AVCPacketRelayIDSConnection %s successfully", buf, 0x26u);
    }
  }

  return v5;
}

- (int)start
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(AVCPacketRelayIDSConnection *)self isResumed])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = v3;
        v16 = 2080;
        v17 = "[AVCPacketRelayIDSConnection start]";
        v18 = 1024;
        v19 = 302;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayIDSConnection: already started", buf, 0x1Cu);
      }
    }

    return 0;
  }

  readHandler = self->_readHandler;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (readHandler)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = v7;
        v16 = 2080;
        v17 = "[AVCPacketRelayIDSConnection start]";
        v18 = 1024;
        v19 = 311;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayIDSConnection: starting...", buf, 0x1Cu);
      }
    }

    v9 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__AVCPacketRelayIDSConnection_start__block_invoke;
    v13[3] = &unk_1E85F9188;
    v13[4] = v9;
    [(IDSDatagramChannel *)self->_datagramChannel setReadHandler:v13];
    [(IDSDatagramChannel *)self->_datagramChannel setEventHandler:&__block_literal_global_91];
    v10 = objc_autoreleasePoolPush();
    [+[AVCPacketRelayDriver sharedInstance](AVCPacketRelayDriver startMonitoringFileDescriptor:"startMonitoringFileDescriptor:forConnection:" forConnection:[(IDSDatagramChannel *)self->_datagramChannel underlyingFileDescriptor], self];
    objc_autoreleasePoolPop(v10);
    [(AVCPacketRelayIDSConnection *)self setIsResumed:1];
    return 0;
  }

  v11 = -2144731132;
  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVCPacketRelayIDSConnection start];
    }
  }

  return v11;
}

void __36__AVCPacketRelayIDSConnection_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v22 = 136316162;
        v23 = v8;
        v24 = 2080;
        v25 = "[AVCPacketRelayIDSConnection start]_block_invoke";
        v26 = 1024;
        v27 = 316;
        v28 = 1024;
        v29 = a4;
        v30 = 2080;
        v31 = [objc_msgSend(a6 "description")];
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCPacketRelayIDSConnection: Datagram channel link %d failed to read with error %s", &v22, 0x2Cu);
      }
    }
  }

  else if ([*(a1 + 32) weak] && (v13 = MEMORY[0x1E1289F20](objc_msgSend(*(a1 + 32), "weak"))) != 0)
  {
    v14 = v13;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (a3)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        v18 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136315906;
            v23 = v16;
            v24 = 2080;
            v25 = "[AVCPacketRelayIDSConnection start]_block_invoke";
            v26 = 1024;
            v27 = 333;
            v28 = 1024;
            v29 = a3;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayIDSConnection: reading %u bytes", &v22, 0x22u);
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __36__AVCPacketRelayIDSConnection_start__block_invoke_cold_1();
        }
      }

      v21 = [v14 readHandler];
      (*(v21 + 16))(v21, a2, a3, [v14 isDemuxNeeded], 0);
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __36__AVCPacketRelayIDSConnection_start__block_invoke_cold_2();
      }
    }

    CFRelease(v14);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315650;
      v23 = v19;
      v24 = 2080;
      v25 = "[AVCPacketRelayIDSConnection start]_block_invoke";
      v26 = 1024;
      v27 = 322;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayConnection has been dealloced", &v22, 0x1Cu);
    }
  }
}

void __36__AVCPacketRelayIDSConnection_start__block_invoke_78(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69A4700]];
  if (v2)
  {
    v3 = v2;
    if ([v2 unsignedIntValue] == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315650;
          v9 = v4;
          v10 = 2080;
          v11 = "[AVCPacketRelayIDSConnection start]_block_invoke";
          v12 = 1024;
          v13 = 347;
          v6 = " [%s] %s:%d AVCPacketRelayIDSConnection: IDS channel connected";
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0x1Cu);
        }
      }
    }

    else if ([v3 unsignedIntValue] == 2 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v7;
        v10 = 2080;
        v11 = "[AVCPacketRelayIDSConnection start]_block_invoke";
        v12 = 1024;
        v13 = 349;
        v6 = " [%s] %s:%d AVCPacketRelayIDSConnection: IDS channel disconnected";
        goto LABEL_13;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __36__AVCPacketRelayIDSConnection_start__block_invoke_78_cold_1();
    }
  }
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
      v10 = "[AVCPacketRelayIDSConnection stop]";
      v11 = 1024;
      v12 = 366;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayIDSConnection: stopping...", &v7, 0x1Cu);
    }
  }

  [(AVCPacketRelayIDSConnection *)self setIsResumed:0];
  v5 = objc_autoreleasePoolPush();
  [+[AVCPacketRelayDriver sharedInstance](AVCPacketRelayDriver stopMonitoringFileDescriptor:"stopMonitoringFileDescriptor:", [(IDSDatagramChannel *)self->_datagramChannel underlyingFileDescriptor]];
  objc_autoreleasePoolPop(v5);
  return 0;
}

- (void)readyToRead
{
  if ([(AVCPacketRelayIDSConnection *)self isResumed])
  {
    datagramChannel = self->_datagramChannel;

    [(IDSDatagramChannel *)datagramChannel readyToRead];
  }
}

- (BOOL)sendData:(const void *)data size:(unsigned int)size error:(id *)error
{
  v6 = *&size;
  v14 = *MEMORY[0x1E69E9840];
  isResumed = [(AVCPacketRelayIDSConnection *)self isResumed];
  if (!isResumed)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
      [AVCPacketRelayIDSConnection sendData:size:error:];
      if (!error)
      {
        return isResumed;
      }
    }

    else if (!error)
    {
      return isResumed;
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCPacketRelayErrorDomain" code:-2144731132 userInfo:0];
    return isResumed;
  }

  datagramChannel = self->_datagramChannel;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__AVCPacketRelayIDSConnection_sendData_size_error___block_invoke;
  v12[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
  v13 = v6;
  [(IDSDatagramChannel *)datagramChannel writeDatagram:data datagramSize:v6 flags:45875200 completionHandler:0, v12];
  return isResumed;
}

void __51__AVCPacketRelayIDSConnection_sendData_size_error___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a2)
  {
    if (ErrorLogLevelForModule >= 2)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v7 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v8 = *(a1 + 32);
          v14 = 136316162;
          v15 = v5;
          v16 = 2080;
          v17 = "[AVCPacketRelayIDSConnection sendData:size:error:]_block_invoke";
          v18 = 1024;
          v19 = 398;
          v20 = 1024;
          v21 = v8;
          v22 = 2080;
          v23 = [objc_msgSend(a2 "description")];
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCPacketRelayIDSConnection: write %u bytes failed with error %s", &v14, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        v13 = *(a1 + 32);
        v14 = 136316162;
        v15 = v5;
        v16 = 2080;
        v17 = "[AVCPacketRelayIDSConnection sendData:size:error:]_block_invoke";
        v18 = 1024;
        v19 = 398;
        v20 = 1024;
        v21 = v13;
        v22 = 2080;
        v23 = [objc_msgSend(a2 "description")];
        _os_log_fault_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_FAULT, " [%s] %s:%d AVCPacketRelayIDSConnection: write %u bytes failed with error %s", &v14, 0x2Cu);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v14 = 136315906;
        v15 = v9;
        v16 = 2080;
        v17 = "[AVCPacketRelayIDSConnection sendData:size:error:]_block_invoke";
        v18 = 1024;
        v19 = 400;
        v20 = 1024;
        v21 = v12;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayIDSConnection: write %u bytes successfully", &v14, 0x22u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __51__AVCPacketRelayIDSConnection_sendData_size_error___block_invoke_cold_1();
    }
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVCPacketRelayIDSConnection dealloc]";
      v10 = 1024;
      v11 = 407;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayIDSConnection: dealloc", buf, 0x1Cu);
    }
  }

  [(IDSDatagramChannel *)self->_datagramChannel invalidate];

  self->_datagramChannel = 0;
  [(AVCPacketRelayIDSConnection *)self setPacketFilter:0];
  [(AVCPacketRelayIDSConnection *)self setReadHandler:0];
  v5.receiver = self;
  v5.super_class = AVCPacketRelayIDSConnection;
  [(AVCPacketRelayIDSConnection *)&v5 dealloc];
}

- (void)initWithIDSSocketDescriptor:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v3, v4, " [%s] %s:%d AVCPacketRelayIDSConnection: init error %08X", v5, v6, v7, v8, 2u);
    }
  }
}

- (void)initWithIDSDestination:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v3, v4, " [%s] %s:%d AVCPacketRelayIDSConnection: init error %08X", v5, v6, v7, v8, 2u);
    }
  }
}

- (void)start
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelayIDSConnection: cannot start without setting read handler", v2, v3, v4, v5, v6);
}

void __36__AVCPacketRelayIDSConnection_start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x22u);
}

void __36__AVCPacketRelayIDSConnection_start__block_invoke_cold_2()
{
  v2 = 136315906;
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelayIDSConnection: Datagram channel link %d returned empty datagram", v2, v3, v4, v5);
}

void __36__AVCPacketRelayIDSConnection_start__block_invoke_78_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelayIDSConnection: IDS eventHandler called without event type", v2, v3, v4, v5, v6);
}

- (void)sendData:size:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelayIDSConnection: resume the connection and wait to be connected before sending data", v2, v3, v4, v5, v6);
}

void __51__AVCPacketRelayIDSConnection_sendData_size_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x22u);
}

@end