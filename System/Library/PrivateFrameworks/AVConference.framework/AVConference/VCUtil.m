@interface VCUtil
@end

@implementation VCUtil

void ___VCUtil_GenerateTailspin_block_invoke(uint64_t a1)
{
  Tailspin = VCTailspinUtil_GenerateTailspin(*(a1 + 56), *(a1 + 48));
  close(*(a1 + 56));
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (Tailspin)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ___VCUtil_GenerateTailspin_block_invoke_cold_2();
      }
    }
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ___VCUtil_GenerateTailspin_block_invoke_cold_1();
    }
  }

  atomic_fetch_add(*(*(*(a1 + 40) + 8) + 24), 0xFFFFFFFF);
  free(*(*(*(a1 + 32) + 8) + 24));
}

void ___VCUtil_GenerateStackshot_block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if ((WriteStackshotReport_stdc() & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ___VCUtil_GenerateStackshot_block_invoke_cold_1();
    }
  }

  free(*(*(*v1 + 8) + 24));
}

void ___VCUtil_GenerateSpindump_block_invoke(uint64_t a1)
{
  *&v22[1021] = *MEMORY[0x1E69E9840];
  v2 = getpid();
  bzero(v22, 0x3FDuLL);
  memset(buffer, 63, sizeof(buffer));
  proc_name(v2, buffer, 0x400u);
  v3 = dispatch_semaphore_create(0);
  dispatch_retain(v3);
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x400uLL, "AVConference PID:%d", v2);
  memset(__str, 170, sizeof(__str));
  snprintf(__str, 0x400uLL, "%s", *(a1 + 40));
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v8 = v4;
      v9 = 2080;
      v10 = "_VCUtil_GenerateSpindump_block_invoke";
      v11 = 1024;
      v12 = 1582;
      v13 = 2080;
      v14 = buffer;
      v15 = 1024;
      v16 = v2;
      v17 = 2080;
      v18 = __b;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d ##### Triggering a spindump on %s (PID:%d) signatureCString=%s", buf, 0x36u);
    }
  }

  SPGenerateSpindump();
  v6 = dispatch_time(0, 165000000000);
  dispatch_semaphore_wait(v3, v6);
  atomic_fetch_add(*(*(*(a1 + 32) + 8) + 24), 0xFFFFFFFF);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void ___VCUtil_GenerateSpindump_block_invoke_113(uint64_t a1, int a2, const char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "_VCUtil_GenerateSpindump_block_invoke";
      v12 = 1024;
      v13 = 1585;
      v14 = 1024;
      v15 = a2;
      v16 = 2080;
      v17 = a3;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d ##### spindump (error=%d) written to file %s", &v8, 0x2Cu);
    }
  }

  VRLogfileZipOnly(a3, 0);
  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_release(*(a1 + 32));
}

void ___VCUtil_GenerateTailspin_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void ___VCUtil_GenerateTailspin_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void ___VCUtil_GenerateStackshot_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end