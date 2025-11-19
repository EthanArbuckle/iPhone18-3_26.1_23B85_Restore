@interface ATXDigitalHealthBlacklist
+ (ATXDigitalHealthBlacklist)sharedInstance;
- (ATXDigitalHealthBlacklist)init;
- (BOOL)_updateBlacklistWithNewBlacklistedBundleIds:(id)a3 whitelistedBundleIds:(id)a4;
- (id)blacklistedBundleIds;
- (void)dealloc;
- (void)deviceManagementPolicyDidChange:(id)a3;
@end

@implementation ATXDigitalHealthBlacklist

- (id)blacklistedBundleIds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ATXDigitalHealthBlacklist_blacklistedBundleIds__block_invoke;
  v5[3] = &unk_27859C2C0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (ATXDigitalHealthBlacklist)sharedInstance
{
  if (sharedInstance__pasOnceToken7_15 != -1)
  {
    +[ATXDigitalHealthBlacklist sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_18;

  return v3;
}

void __43__ATXDigitalHealthBlacklist_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_18;
  sharedInstance__pasExprOnceResult_18 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXDigitalHealthBlacklist)init
{
  v10.receiver = self;
  v10.super_class = ATXDigitalHealthBlacklist;
  v2 = [(ATXDigitalHealthBlacklist *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    v7 = objc_autoreleasePoolPush();
    v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v8 addObserver:v2];

    objc_autoreleasePoolPop(v7);
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ATXDigitalHealthBlacklist;
  [(ATXDigitalHealthBlacklist *)&v4 dealloc];
}

- (void)deviceManagementPolicyDidChange:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 deviceManagementPolicy];
        v14 = [v12 bundleIdentifier];
        if (v13)
        {
          v15 = v5;
        }

        else
        {
          v15 = v6;
        }

        [v15 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if ([(ATXDigitalHealthBlacklist *)self _updateBlacklistWithNewBlacklistedBundleIds:v5 whitelistedBundleIds:v6])
  {
    ATXUpdatePredictionsImmediatelyWithReason(14);
    [MEMORY[0x277D42070] refreshBlendingLayerWithReason:@"Device management policy did change"];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateBlacklistWithNewBlacklistedBundleIds:(id)a3 whitelistedBundleIds:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    lock = self->_lock;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __94__ATXDigitalHealthBlacklist__updateBlacklistWithNewBlacklistedBundleIds_whitelistedBundleIds___block_invoke;
    v11[3] = &unk_27859C2E8;
    v12 = v6;
    v13 = v7;
    v14 = &v15;
    [(_PASLock *)lock runWithLockAcquired:v11];
    v9 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __94__ATXDigitalHealthBlacklist__updateBlacklistWithNewBlacklistedBundleIds_whitelistedBundleIds___block_invoke(void *a1, void *a2)
{
  v7 = a2;
  v3 = v7[1];
  v4 = [v7[1] mutableCopy];
  [v4 unionSet:a1[4]];
  [v4 minusSet:a1[5]];
  if (([v3 isEqualToSet:v4] & 1) == 0)
  {
    v5 = [v4 copy];
    v6 = v7[1];
    v7[1] = v5;

    *(*(a1[6] + 8) + 24) = 1;
  }
}

@end