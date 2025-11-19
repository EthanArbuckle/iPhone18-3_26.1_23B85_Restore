@interface BLSHShowWatchdogFailureAlert
@end

@implementation BLSHShowWatchdogFailureAlert

void ___BLSHShowWatchdogFailureAlert_block_invoke(uint64_t a1)
{
  v2 = bls_diagnostics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___BLSHShowWatchdogFailureAlert_block_invoke_cold_1(v2);
  }

  v3 = __blsh_ttrwatchdog_lastFailureDetails;
  if (!__blsh_ttrwatchdog_lastFailureDetails)
  {
    v4 = objc_opt_new();
    v5 = __blsh_ttrwatchdog_lastFailureDetails;
    __blsh_ttrwatchdog_lastFailureDetails = v4;

    v3 = __blsh_ttrwatchdog_lastFailureDetails;
  }

  v6 = *(a1 + 32);
  v7 = [v6 identifier];
  [v3 setObject:v6 forKeyedSubscript:v7];

  if ((*(a1 + 40) & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v9 = objc_opt_class();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _blsWatchdogTimerLockStatusDidChange, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void ___BLSHShowWatchdogFailureAlert_block_invoke_111(uint64_t a1)
{
  v1 = __blsh_ttrwatchdog_lastFailureDetails;
  if (__blsh_ttrwatchdog_lastFailureDetails)
  {
    v3 = [*(a1 + 32) identifier];
    v4 = [v1 objectForKeyedSubscript:v3];

    if (v4)
    {
      v5 = __blsh_ttrwatchdog_lastFailureDetails;
      v6 = [*(a1 + 32) identifier];
      [v5 removeObjectForKey:v6];

      if (![__blsh_ttrwatchdog_lastFailureDetails count])
      {
        v7 = __blsh_ttrwatchdog_lastFailureDetails;
        __blsh_ttrwatchdog_lastFailureDetails = 0;
      }
    }
  }
}

uint64_t ___BLSHShowWatchdogFailureAlert_block_invoke_2(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  return (*(*(a1 + v2) + 16))();
}

@end