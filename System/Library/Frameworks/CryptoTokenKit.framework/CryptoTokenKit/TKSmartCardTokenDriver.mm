@interface TKSmartCardTokenDriver
@end

@implementation TKSmartCardTokenDriver

uint64_t __77__TKSmartCardTokenDriver_createTokenWithSlot_AID_proprietaryCardUsage_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) selectApplication:*(a1 + 40) error:a2])
  {
    v4 = [*(a1 + 48) tokenDriver:*(a1 + 56) createTokenForSmartCard:*(a1 + 32) AID:*(a1 + 40) error:a2];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

- (void)createTokenWithSlot:(void *)a1 AID:(uint64_t)a2 proprietaryCardUsage:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "create token for token in %{public}@ (AID:%{public}@)", buf, 0x16u);
}

@end