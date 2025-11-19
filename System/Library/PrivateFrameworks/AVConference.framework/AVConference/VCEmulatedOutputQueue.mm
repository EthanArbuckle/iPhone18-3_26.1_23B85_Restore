@interface VCEmulatedOutputQueue
- (unsigned)numberOfPacketsInOutputQueue;
- (void)connectFrom:(id)a3;
- (void)runUntilTime:(double)a3;
@end

@implementation VCEmulatedOutputQueue

- (void)runUntilTime:(double)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCEmulatedOutputQueue runUntilTime:v3];
    }
  }
}

- (void)connectFrom:(id)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCEmulatedOutputQueue connectFrom:v3];
    }
  }
}

- (unsigned)numberOfPacketsInOutputQueue
{
  result = CMSimpleQueueGetCount(self->super._networkElementQueue);
  self->_numberOfPacketsInOutputQueue = result;
  return result;
}

- (void)runUntilTime:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 17;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d No processing should be run for the output queue!", &v2, 0x1Cu);
}

- (void)connectFrom:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 21;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot not call connect from for the output queue!", &v2, 0x1Cu);
}

@end