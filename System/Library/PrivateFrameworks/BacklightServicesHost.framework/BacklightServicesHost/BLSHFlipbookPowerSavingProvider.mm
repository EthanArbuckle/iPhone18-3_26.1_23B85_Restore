@interface BLSHFlipbookPowerSavingProvider
- (BLSHFlipbook)flipbook;
- (BLSHFlipbookPowerSavingProvider)init;
- (BOOL)isFlipbookPowerSavingEnabled;
- (NSString)description;
- (id)lock_description;
- (void)decrementDisablePowerSavingUsageCountForReason:(unint64_t)reason;
- (void)incrementDisablePowerSavingUsageCountForReason:(unint64_t)reason;
- (void)setFlipbook:(id)flipbook;
@end

@implementation BLSHFlipbookPowerSavingProvider

- (id)lock_description
{
  if (self->_lock_count)
  {
    v3 = objc_opt_new();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__BLSHFlipbookPowerSavingProvider_lock_description__block_invoke;
    v6[3] = &unk_27841EF48;
    v6[4] = self;
    [v3 appendCustomFormatWithName:0 block:v6];
    v4 = [v3 description];
  }

  else
  {
    v4 = @"powerSavingsEnabled";
  }

  return v4;
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  lock_description = [(BLSHFlipbookPowerSavingProvider *)self lock_description];
  os_unfair_lock_unlock(&self->_lock);

  return lock_description;
}

void __51__BLSHFlipbookPowerSavingProvider_lock_description__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 appendFormat:@"powerSavingsDisabled(%llu):", *(*(a1 + 32) + 24)];
  v3 = *(a1 + 32);
  if (v3[5])
  {
    [v6 appendFormat:@"event(%llu), ", v3[5]];
    v3 = *(a1 + 32);
  }

  if (v3[6])
  {
    [v6 appendFormat:@"transitionStep(%llu), ", v3[6]];
    v3 = *(a1 + 32);
  }

  v4 = v6;
  if (v3[7])
  {
    [v6 appendFormat:@"session(%llu), ", v3[7]];
    v4 = v6;
    v3 = *(a1 + 32);
  }

  if (v3[8])
  {
    [v6 appendFormat:@"engineStep(%llu), ", v3[8]];
    v4 = v6;
    v3 = *(a1 + 32);
  }

  if (v3[9])
  {
    [v6 appendFormat:@"dates(%llu), ", v3[9]];
    v4 = v6;
    v3 = *(a1 + 32);
  }

  if (v3[10])
  {
    [v6 appendFormat:@"invalidate(%llu), ", v3[10]];
    v4 = v6;
    v3 = *(a1 + 32);
  }

  if (v3[11])
  {
    [v6 appendFormat:@"misc(%llu), ", v3[11]];
    v4 = v6;
    v3 = *(a1 + 32);
  }

  v5 = v3[4];
  if (v5)
  {
    [v6 appendFormat:@"unknown(%llu), ", v5];
    v4 = v6;
  }
}

- (BLSHFlipbookPowerSavingProvider)init
{
  v3.receiver = self;
  v3.super_class = BLSHFlipbookPowerSavingProvider;
  result = [(BLSHFlipbookPowerSavingProvider *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BLSHFlipbook)flipbook
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_flipbook);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setFlipbook:(id)flipbook
{
  flipbookCopy = flipbook;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_count == 0;
  objc_storeWeak(&self->_lock_flipbook, flipbookCopy);
  [flipbookCopy setPowerSavingEnabled:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isFlipbookPowerSavingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  isPowerSavingEnabled = self->_lock_count == 0;
  WeakRetained = objc_loadWeakRetained(&self->_lock_flipbook);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    isPowerSavingEnabled = [WeakRetained isPowerSavingEnabled];
  }

  os_unfair_lock_unlock(&self->_lock);

  return isPowerSavingEnabled;
}

- (void)incrementDisablePowerSavingUsageCountForReason:(unint64_t)reason
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (reason >= 8)
  {
    [BLSHFlipbookPowerSavingProvider incrementDisablePowerSavingUsageCountForReason:];
  }

  lock_count = self->_lock_count;
  self->_lock_count = lock_count + 1;
  ++self->_lock_reasonsCount[reason];
  v6 = bls_assertions_log();
  WeakRetained = v6;
  if (lock_count)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BLSHFlipbookPowerSavingProvider incrementDisablePowerSavingUsageCountForReason:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      lock_description = [(BLSHFlipbookPowerSavingProvider *)self lock_description];
      v10 = 134218242;
      selfCopy = self;
      v12 = 2114;
      v13 = lock_description;
      _os_log_impl(&dword_21FD11000, WeakRetained, OS_LOG_TYPE_INFO, "%p did disable power savings: %{public}@", &v10, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_lock_flipbook);
    [WeakRetained setPowerSavingEnabled:0];
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)decrementDisablePowerSavingUsageCountForReason:(unint64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_count = self->_lock_count;
  if (!lock_count)
  {
    [BLSHFlipbookPowerSavingProvider decrementDisablePowerSavingUsageCountForReason:];
  }

  if (reason >= 8)
  {
    [BLSHFlipbookPowerSavingProvider decrementDisablePowerSavingUsageCountForReason:];
  }

  v6 = lock_count - 1;
  self->_lock_count = lock_count - 1;
  --self->_lock_reasonsCount[reason];
  v7 = bls_assertions_log();
  WeakRetained = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BLSHFlipbookPowerSavingProvider decrementDisablePowerSavingUsageCountForReason:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      lock_description = [(BLSHFlipbookPowerSavingProvider *)self lock_description];
      v11 = 134218498;
      selfCopy = self;
      v13 = 2048;
      reasonCopy = reason;
      v15 = 2114;
      v16 = lock_description;
      _os_log_impl(&dword_21FD11000, WeakRetained, OS_LOG_TYPE_INFO, "%p did enable power savings after removing reason:%ld – %{public}@", &v11, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_lock_flipbook);
    [WeakRetained setPowerSavingEnabled:1];
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)incrementDisablePowerSavingUsageCountForReason:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 lock_description];
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)decrementDisablePowerSavingUsageCountForReason:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 lock_description];
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end