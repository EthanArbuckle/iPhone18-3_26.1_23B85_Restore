@interface VCEmulatedNetworkSingleQueue
- (VCEmulatedNetworkSingleQueue)initWithPolicies:(id)a3;
- (void)dealloc;
- (void)push:(id)a3;
@end

@implementation VCEmulatedNetworkSingleQueue

- (VCEmulatedNetworkSingleQueue)initWithPolicies:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCEmulatedNetworkSingleQueue;
  v4 = [(VCEmulatedNetwork *)&v8 initWithPolicies:?];
  if (v4)
  {
    v5 = -[VCEmulatedNetworkQueue initWithPolicies:]([VCEmulatedNetworkQueue alloc], "initWithPolicies:", [a3 objectForKeyedSubscript:@"SingleQueueImpairments"]);
    v4->_networkQueue = v5;
    if (v5)
    {
      [(VCEmulatedNetworkElement *)v5 connectTo:v4->super._outputQueue];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCEmulatedNetworkSingleQueue initWithPolicies:v6];
        }
      }

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCEmulatedNetworkSingleQueue;
  [(VCEmulatedNetwork *)&v3 dealloc];
}

- (void)push:(id)a3
{
  if ([(VCEmulatedNetworkQueue *)self->_networkQueue write:?])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCEmulatedNetworkSingleQueue push:v4];
      }
    }
  }

  else
  {
    pushCompletionHandler = self->super._pushCompletionHandler;
    if (pushCompletionHandler)
    {
      v6 = *(pushCompletionHandler + 2);

      v6();
    }
  }
}

- (void)initWithPolicies:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 19;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot create network queue successfully!", &v2, 0x1Cu);
}

- (void)push:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 42;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to write to network queue", &v2, 0x1Cu);
}

@end