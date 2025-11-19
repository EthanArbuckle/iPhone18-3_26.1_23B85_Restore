@interface EXAuditTokenForCurrentProcess
@end

@implementation EXAuditTokenForCurrentProcess

void ___EXAuditTokenForCurrentProcess_block_invoke()
{
  task_info_outCnt = 8;
  v0 = task_info(*MEMORY[0x1E69E9A60], 0xFu, _EXAuditTokenForCurrentProcess_sOurAuditToken, &task_info_outCnt);
  if (v0)
  {
    v1 = v0;
    v2 = _EXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___EXAuditTokenForCurrentProcess_block_invoke_cold_1(v1, v2);
    }
  }

  else
  {
    _EXAuditTokenForCurrentProcess_result = _EXAuditTokenForCurrentProcess_sOurAuditToken;
  }
}

void ___EXAuditTokenForCurrentProcess_block_invoke_cold_1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1847D1000, a2, OS_LOG_TYPE_ERROR, "Failed to get audit token for current process: %llx", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end