@interface VCXPCConnection
+ (void)selfTerminateDueToTimeout:(id)timeout;
- (VCXPCConnection)init;
- (void)createTimeoutTimer;
- (void)dealloc;
- (void)destroyTimeoutTimer;
- (void)setConnection:(id)connection;
- (void)setPersistent:(BOOL)persistent;
- (void)setPid:(int)pid;
- (void)startTimeoutTimer;
- (void)stopTimeoutTimer;
@end

@implementation VCXPCConnection

- (VCXPCConnection)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCXPCConnection;
  v2 = [(VCXPCConnection *)&v4 init];
  if (v2)
  {
    v2->_lastCalledApiName = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCXPCConnection *)self destroyTimeoutTimer];
  [(VCXPCConnection *)self setConnection:0];
  [(VCXPCConnection *)self setContext:0];
  [(VCXPCConnection *)self setTokenData:0];
  [(VCXPCConnection *)self setLastCalledApiName:0];
  transaction = self->_transaction;
  if (transaction)
  {

    self->_transaction = 0;
  }

  v4.receiver = self;
  v4.super_class = VCXPCConnection;
  [(VCXPCConnection *)&v4 dealloc];
}

- (void)startTimeoutTimer
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v4 = dispatch_time(0, 11000000000);
    dispatch_source_set_timer(timeoutTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    self->_timeoutTimerStarted = 1;
  }
}

- (void)stopTimeoutTimer
{
  if (self->_timeoutTimerStarted)
  {
    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      dispatch_source_set_timer(timeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
      self->_timeoutTimerStarted = 0;
    }
  }
}

- (void)createTimeoutTimer
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x22u);
}

- (void)destroyTimeoutTimer
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

+ (void)selfTerminateDueToTimeout:(id)timeout
{
  *&v12[1021] = *MEMORY[0x1E69E9840];
  v4 = [timeout pid];
  bzero(v12, 0x3FDuLL);
  memset(buffer, 63, sizeof(buffer));
  proc_name(v4, buffer, 0x400u);
  v5 = getpid();
  bzero(v10, 0x3FDuLL);
  memset(v9, 63, sizeof(v9));
  proc_name(v5, v9, 0x400u);
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [v6 stringWithFormat:@"%s: Terminating %s [%d] due to timeout (client %s [%d]) (API NAME: %@)", class_getName(v7), v9, v5, buffer, v4, objc_msgSend(timeout, "lastCalledApiName")];
  VCTerminateProcess(v8, @"AVConferenceXPCServer", 0);
}

- (void)setPid:(int)pid
{
  v8 = *MEMORY[0x1E69E9840];
  self->_pid = pid;
  p_pid = &self->_pid;
  transaction = self->_transaction;
  if (transaction)
  {

    self->_transaction = 0;
    pid = self->_pid;
  }

  memset(buffer, 0, sizeof(buffer));
  proc_name(pid, buffer, 0x20u);
  v6 = 0;
  asprintf(&v6, "AVConference %d %s", *p_pid, buffer);
  if (v6)
  {
    self->_transaction = FigOSTransactionCreate();
    free(v6);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCXPCConnection setPid:];
    }
  }
}

- (void)setPersistent:(BOOL)persistent
{
  self->_isPersistent = persistent;
  if (persistent)
  {
    transaction = self->_transaction;
    if (transaction)
    {

      self->_transaction = 0;
    }
  }
}

- (void)setConnection:(id)connection
{
  v14 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (connection == connection)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v6;
        v10 = 2080;
        v11 = "[VCXPCConnection setConnection:]";
        v12 = 1024;
        v13 = 212;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVConferenceXPCServer [%s] %s:%d setting connection again with same value", &v8, 0x1Cu);
      }
    }
  }

  else
  {
    if (connection)
    {
      xpc_connection_cancel(connection);
      xpc_release(self->_connection);
    }

    if (connection)
    {
      xpc_retain(connection);
    }

    self->_connection = connection;
  }
}

- (void)setPid:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x22u);
}

@end