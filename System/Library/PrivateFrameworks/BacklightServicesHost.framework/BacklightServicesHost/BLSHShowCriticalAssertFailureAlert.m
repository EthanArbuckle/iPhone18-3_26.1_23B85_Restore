@interface BLSHShowCriticalAssertFailureAlert
@end

@implementation BLSHShowCriticalAssertFailureAlert

void ___BLSHShowCriticalAssertFailureAlert_block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = bls_diagnostics_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___BLSHShowCriticalAssertFailureAlert_block_invoke_cold_1();
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = objc_opt_class();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _blsCriticalAssertLockStatusDidChange, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {

    BLSHResetCriticalAssertFailure();
  }
}

@end