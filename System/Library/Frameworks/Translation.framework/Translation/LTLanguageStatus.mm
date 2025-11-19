@interface LTLanguageStatus
@end

@implementation LTLanguageStatus

void __27___LTLanguageStatus_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = &__block_literal_global_4;
}

void __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      *buf = 138412546;
      v17 = v6;
      v18 = 2048;
      v19 = [v3 count];
      _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_INFO, "LTLanguageStatus %@ receive multicast with %zd observations", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke_1;
    v13[3] = &unk_278B6D068;
    v14 = WeakRetained;
    v8 = v3;
    v15 = v8;
    os_unfair_lock_assert_not_owner(WeakRetained + 2);
    os_unfair_lock_lock(WeakRetained + 2);
    __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke_1(v13);
    os_unfair_lock_unlock(WeakRetained + 2);
    if (*(a1 + 40))
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke_2;
      v10[3] = &unk_278B6D090;
      v12 = *(a1 + 40);
      v11 = v8;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke_1(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8]();
}

@end