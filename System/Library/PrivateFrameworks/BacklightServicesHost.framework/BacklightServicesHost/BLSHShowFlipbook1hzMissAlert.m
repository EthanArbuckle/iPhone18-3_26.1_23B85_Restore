@interface BLSHShowFlipbook1hzMissAlert
@end

@implementation BLSHShowFlipbook1hzMissAlert

void ___BLSHShowFlipbook1hzMissAlert_block_invoke(uint64_t a1)
{
  v2 = bls_diagnostics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___BLSHShowFlipbook1hzMissAlert_block_invoke_cold_1();
  }

  __aodStatsFlipbookMissValueForTTRAlert = *(a1 + 32);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = objc_opt_class();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, _bls1hzFlipbookWatchdogLockStatusDidChange, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t ___BLSHShowFlipbook1hzMissAlert_block_invoke_2(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  return (*(*(a1 + v2) + 16))();
}

@end