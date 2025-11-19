@interface VCTransportStreamRunLoopVTPPerformReceive
@end

@implementation VCTransportStreamRunLoopVTPPerformReceive

uint64_t ___VCTransportStreamRunLoopVTPPerformReceive_block_invoke(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 32);
  if (__darwin_check_fd_set_overflow(a4, v6, 0))
  {
    if ((*&v6[(a4 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> a4))
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if ((!v7 || (v7(a3) & 0x80000000) != 0) && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          ___VCTransportStreamRunLoopVTPPerformReceive_block_invoke_cold_1(v8);
        }
      }
    }
  }

  return 0;
}

void ___VCTransportStreamRunLoopVTPPerformReceive_block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "_VCTransportStreamRunLoopVTPPerformReceive_block_invoke";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_4();
  v7 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Perform receive failed for tranportStream %p", &v3, 0x26u);
}

@end