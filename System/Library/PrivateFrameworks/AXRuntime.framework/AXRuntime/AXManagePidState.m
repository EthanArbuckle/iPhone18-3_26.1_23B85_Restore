@interface AXManagePidState
@end

@implementation AXManagePidState

void ___AXManagePidState_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  os_unfair_lock_lock(&gAXSuspendedPidsLock);
  v3 = +[AXPidSuspensionInfo shared];
  v4 = [v3 tentativeSuspendedPidsForDisplay:v1];
  v5 = [v4 containsObject:v2];

  if (v5)
  {
    v6 = +[AXPidSuspensionInfo shared];
    v7 = [v6 tentativeSuspendedPidsForDisplay:v1];
    [v7 removeObject:v2];

    _AXRemoveSuspendedPid([v2 intValue], v1);
  }

  os_unfair_lock_unlock(&gAXSuspendedPidsLock);
  v8 = AXRuntimeLogPID();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&dword_1BF78E000, v8, OS_LOG_TYPE_INFO, "Should unsuspend tentative PID? %ld", &v9, 0xCu);
  }
}

@end