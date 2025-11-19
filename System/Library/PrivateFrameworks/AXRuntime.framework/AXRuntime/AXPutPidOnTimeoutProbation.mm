@interface AXPutPidOnTimeoutProbation
@end

@implementation AXPutPidOnTimeoutProbation

void ___AXPutPidOnTimeoutProbation_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 36);
  os_unfair_lock_lock(&gAXTimeoutProbationPidsLock);
  v3 = +[AXPidSuspensionInfo shared];
  v4 = [v3 timeoutProbationPidsForDisplay:v2];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v1];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = +[AXPidSuspensionInfo shared];
    v8 = [v7 timeoutProbationPidsForDisplay:v2];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v1];
    [v8 removeObject:v9];

    v10 = AXRuntimeLogPID();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11[0] = 67109120;
      v11[1] = v1;
      _os_log_impl(&dword_1BF78E000, v10, OS_LOG_TYPE_INFO, "Pid off timeout probation %d", v11, 8u);
    }
  }

  os_unfair_lock_unlock(&gAXTimeoutProbationPidsLock);
}

@end