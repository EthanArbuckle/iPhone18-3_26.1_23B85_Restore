@interface BSPowerChanged
@end

@implementation BSPowerChanged

void ___BSPowerChanged_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BSLogPowerMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18FEF6000, v4, OS_LOG_TYPE_INFO, "kIOMessageCanSystemSleep -> powerMonitorSystemSleepRequested -> observer: %@", &v5, 0xCu);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 powerMonitorSystemSleepRequested:*(a1 + 32)] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void ___BSPowerChanged_block_invoke_35(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BSLogPowerMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18FEF6000, v4, OS_LOG_TYPE_INFO, "kIOMessageSystemWillNotSleep -> powerMonitorSystemSleepRequestAborted -> observer: %@", &v5, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 powerMonitorSystemSleepRequestAborted:*(a1 + 32)];
  }
}

void ___BSPowerChanged_block_invoke_38(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BSLogPowerMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18FEF6000, v4, OS_LOG_TYPE_INFO, "kIOMessageSystemWillSleep -> powerMonitorSystemWillSleep -> observer: %@", &v5, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 powerMonitorSystemWillSleep:*(a1 + 32)];
  }
}

void ___BSPowerChanged_block_invoke_41(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BSLogPowerMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18FEF6000, v4, OS_LOG_TYPE_INFO, "kIOMessageSystemWillPowerOn -> powerMonitorSystemWillWakeFromSleep -> observer: %@", &v5, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 powerMonitorSystemWillWakeFromSleep:*(a1 + 32)];
  }
}

void ___BSPowerChanged_block_invoke_44(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BSLogPowerMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18FEF6000, v4, OS_LOG_TYPE_INFO, "kIOMessageSystemHasPoweredOn -> powerMonitorSystemDidWakeFromSleep -> observer: %@", &v5, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 powerMonitorSystemDidWakeFromSleep:*(a1 + 32)];
  }
}

@end