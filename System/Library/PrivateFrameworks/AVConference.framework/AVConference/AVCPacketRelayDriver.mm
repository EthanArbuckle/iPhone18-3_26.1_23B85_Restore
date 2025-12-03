@interface AVCPacketRelayDriver
+ (AVCPacketRelayDriver)sharedInstance;
- (AVCPacketRelayDriver)init;
- (void)dealloc;
- (void)init;
- (void)startMonitoringFileDescriptor:(int)descriptor forConnection:(id)connection;
- (void)stopMonitoringFileDescriptor:(int)descriptor;
@end

@implementation AVCPacketRelayDriver

+ (AVCPacketRelayDriver)sharedInstance
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  Weak = objc_loadWeak(&sharedInstance_sharedInstance_2);
  if (!Weak)
  {
    v4 = objc_alloc_init(AVCPacketRelayDriver);
    objc_storeWeak(&sharedInstance_sharedInstance_2, v4);
    Weak = v4;
  }

  objc_sync_exit(v2);
  return Weak;
}

- (void)startMonitoringFileDescriptor:(int)descriptor forConnection:(id)connection
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[AVCPacketRelayDriver startMonitoringFileDescriptor:forConnection:]";
      v13 = 1024;
      v14 = 32;
      v15 = 1024;
      descriptorCopy = descriptor;
      v17 = 2112;
      connectionCopy = connection;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fileDescriptor=%d, connection=%@", &v9, 0x2Cu);
    }
  }

  if (descriptor == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelayDriver startMonitoringFileDescriptor:v8 forConnection:?];
      }
    }
  }

  else
  {
    AVCPacketRelayDriverThreadAddFileDescriptorWithConnection(descriptor, connection);
  }
}

- (void)stopMonitoringFileDescriptor:(int)descriptor
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[AVCPacketRelayDriver stopMonitoringFileDescriptor:]";
      v11 = 1024;
      v12 = 42;
      v13 = 1024;
      descriptorCopy = descriptor;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fileDescriptor=%d", &v7, 0x22u);
    }
  }

  if (descriptor == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelayDriver stopMonitoringFileDescriptor:v6];
      }
    }
  }

  else
  {
    AVCPacketRelayDriverThreadRemoveFileDescriptor(descriptor);
  }
}

- (AVCPacketRelayDriver)init
{
  v19 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = AVCPacketRelayDriver;
  v2 = [(AVCPacketRelayDriver *)&v10 init];
  if (v2)
  {
    v3 = AVCPacketRelayDriverThreadStart();
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3 == -1)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(AVCPacketRelayDriver *)v7 init];
        }
      }

      return 0;
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v5;
        v13 = 2080;
        v14 = "[AVCPacketRelayDriver init]";
        v15 = 1024;
        v16 = 60;
        v17 = 2048;
        v18 = v2;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayDriver init %p", buf, 0x26u);
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  AVCPacketRelayDriverThreadStop();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVCPacketRelayDriver dealloc]";
      v10 = 1024;
      v11 = 68;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelayDriver dealloc", buf, 0x1Cu);
    }
  }

  v5.receiver = self;
  v5.super_class = AVCPacketRelayDriver;
  [(AVCPacketRelayDriver *)&v5 dealloc];
}

- (void)startMonitoringFileDescriptor:(uint64_t)a1 forConnection:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 34;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCPacketRelayDriver: invalid file descriptor to drive", &v2, 0x1Cu);
}

- (void)stopMonitoringFileDescriptor:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 44;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCPacketRelayDriver: invalid file descriptor to stop", &v2, 0x1Cu);
}

- (void)init
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = 136315906;
  selfCopy = self;
  v7 = 2080;
  v8 = "[AVCPacketRelayDriver init]";
  v9 = 1024;
  v10 = 56;
  v11 = 1024;
  v12 = v4;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCPacketRelayDriver init failed: unable to start driver thread with errno %d", &v5, 0x22u);
}

@end