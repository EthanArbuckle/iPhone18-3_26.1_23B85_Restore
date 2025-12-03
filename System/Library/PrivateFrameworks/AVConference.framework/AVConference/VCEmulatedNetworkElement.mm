@interface VCEmulatedNetworkElement
- (VCEmulatedNetworkElement)initWithPolicies:(id)policies;
- (int)write:(id)write;
- (void)connectFrom:(id)from;
- (void)connectTo:(id)to;
- (void)dealloc;
- (void)drainAndReleasePackets;
- (void)runUntilTime:(double)time;
@end

@implementation VCEmulatedNetworkElement

- (VCEmulatedNetworkElement)initWithPolicies:(id)policies
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCEmulatedNetworkElement;
  v4 = [(VCEmulatedNetworkElement *)&v6 init];
  if (v4)
  {
    if (CMSimpleQueueCreate(*MEMORY[0x1E695E480], 4096, &v4->_networkElementQueue))
    {

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCEmulatedNetworkElement initWithPolicies:];
        }
      }

      return 0;
    }

    else
    {
      v4->_policies = policies;
    }
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCEmulatedNetworkElement *)self setProcessCompleteHandler:0];

  [(VCEmulatedNetworkElement *)self drainAndReleasePackets];
  networkElementQueue = self->_networkElementQueue;
  if (networkElementQueue)
  {
    CFRelease(networkElementQueue);
  }

  v4.receiver = self;
  v4.super_class = VCEmulatedNetworkElement;
  [(VCEmulatedNetworkElement *)&v4 dealloc];
}

- (void)drainAndReleasePackets
{
  networkElementQueue = self->_networkElementQueue;
  if (networkElementQueue && CMSimpleQueueGetCount(networkElementQueue) >= 1)
  {
    do
    {
    }

    while (CMSimpleQueueGetCount(self->_networkElementQueue) > 0);
  }
}

- (int)write:(id)write
{
  result = CMSimpleQueueEnqueue(self->_networkElementQueue, write);
  if (result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCEmulatedNetworkElement write:];
      }
    }

    return -1;
  }

  return result;
}

- (void)runUntilTime:(double)time
{
  if (CMSimpleQueueGetCount(self->_networkElementQueue) >= 1)
  {
    do
    {
      v4 = CMSimpleQueueDequeue(self->_networkElementQueue);
      processCompleteHandler = self->_processCompleteHandler;
      if (processCompleteHandler)
      {
        processCompleteHandler[2](processCompleteHandler, v4);
      }
    }

    while (CMSimpleQueueGetCount(self->_networkElementQueue) > 0);
  }
}

- (void)connectTo:(id)to
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (to == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCEmulatedNetworkElement connectTo:];
      }
    }
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __38__VCEmulatedNetworkElement_connectTo___block_invoke;
    v3[3] = &unk_1E85F5C30;
    v3[4] = to;
    [(VCEmulatedNetworkElement *)self setProcessCompleteHandler:v3];
  }
}

- (void)connectFrom:(id)from
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (from == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCEmulatedNetworkElement connectFrom:];
      }
    }
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __40__VCEmulatedNetworkElement_connectFrom___block_invoke;
    v3[3] = &unk_1E85F5C30;
    v3[4] = self;
    [from setProcessCompleteHandler:v3];
  }
}

- (void)initWithPolicies:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Cannot create network element queue successfully!", v2, v3, v4, v5, v6);
}

- (void)write:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCEmulatedNetworkElement write:]";
  v6 = 1024;
  v7 = 49;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enqueue! status: %d", v3, 0x22u);
}

- (void)connectTo:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d A network element cannot connect to itself!", v2, v3, v4, v5, v6);
}

- (void)connectFrom:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d A network element cannot connect to itself!", v2, v3, v4, v5, v6);
}

@end