@interface AEDeactivationPool
- (id)initWithPolicyStore:(void *)store performancePrimitives:(void *)primitives persistentDeactivations:(void *)deactivations queue:;
- (void)deactivateWithCompletion:(uint64_t)completion;
@end

@implementation AEDeactivationPool

void __47__AEDeactivationPool_deactivateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) endInterval];
  if (v3 && (-[AEPersistentDeactivation deactivation](*(a1 + 40)), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isFailable], v4, !v5))
  {
    v19 = AECoreLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_cold_1((a1 + 40), v3, v19);
    }

    v20 = AECoreLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(AEPersistentDeactivation *)*(a1 + 40) deactivation];
      v22 = [v21 identifier];
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_23C1AA000, v20, OS_LOG_TYPE_DEFAULT, "Scratchpad will NOT be removed for failed deactivation with ID=%{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 56);
    objc_sync_enter(v13);
    [*(a1 + 56) addObject:v3];
    objc_sync_exit(v13);
  }

  else
  {
    v6 = AECoreLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(AEPersistentDeactivation *)*(a1 + 40) deactivation];
      v8 = [v7 identifier];
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&dword_23C1AA000, v6, OS_LOG_TYPE_DEFAULT, "Removing scratchpad for completed deactivation with ID=%{public}@", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v9 = v9[2];
    }

    v10 = *(a1 + 40);
    v11 = v9;
    v12 = [(AEPersistentDeactivation *)v10 scratchpadIdentifier];
    v13 = [v11 readOnlyScratchpadForIdentifier:v12];

    v24 = 0;
    v14 = [v13 removeWithError:&v24];
    v15 = v24;
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v17 = AECoreLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_cold_2((a1 + 40), v17);
      }

      v18 = *(a1 + 56);
      objc_sync_enter(v18);
      [*(a1 + 56) addObject:v15];
      objc_sync_exit(v18);
    }
  }

  dispatch_group_leave(*(a1 + 64));
  v23 = *MEMORY[0x277D85DE8];
}

void __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (id)initWithPolicyStore:(void *)store performancePrimitives:(void *)primitives persistentDeactivations:(void *)deactivations queue:
{
  v10 = a2;
  storeCopy = store;
  primitivesCopy = primitives;
  deactivationsCopy = deactivations;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = AEDeactivationPool;
    self = objc_msgSendSuper2(&v17, sel_init);
    if (self)
    {
      v14 = [primitivesCopy copy];
      v15 = self[1];
      self[1] = v14;

      objc_storeStrong(self + 2, a2);
      objc_storeStrong(self + 3, store);
      objc_storeStrong(self + 4, deactivations);
    }
  }

  return self;
}

- (void)deactivateWithCompletion:(uint64_t)completion
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    v22 = v3;
    v25 = objc_opt_new();
    v5 = dispatch_group_create();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(completion + 8);
    v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v24 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          dispatch_group_enter(v5);
          v10 = AECoreLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            deactivation = [(AEPersistentDeactivation *)v9 deactivation];
            identifier = [deactivation identifier];
            *buf = 138543362;
            v34 = identifier;
            _os_log_impl(&dword_23C1AA000, v10, OS_LOG_TYPE_DEFAULT, "Running deactivation: %{public}@", buf, 0xCu);
          }

          deactivation2 = [(AEPersistentDeactivation *)v9 deactivation];
          v14 = AELoggingCategoryForEvent([deactivation2 event]);

          v15 = *(completion + 24);
          deactivation3 = [(AEPersistentDeactivation *)v9 deactivation];
          identifier2 = [deactivation3 identifier];
          v18 = [v15 beginIntervalWithCategory:v14 name:identifier2];

          deactivation4 = [(AEPersistentDeactivation *)v9 deactivation];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __47__AEDeactivationPool_deactivateWithCompletion___block_invoke;
          v28[3] = &unk_278BB70B8;
          v28[4] = v18;
          v28[5] = v9;
          v28[6] = completion;
          v28[7] = v25;
          v28[8] = v5;
          [deactivation4 deactivateWithCompletion:v28];
        }

        v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v7);
    }

    v20 = *(completion + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_1;
    block[3] = &unk_278BB6D18;
    v4 = v22;
    block[4] = v25;
    v27 = v22;
    dispatch_group_notify(v5, v20, block);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [(AEPersistentDeactivation *)*a1 deactivation];
  v6 = [v5 identifier];
  v7 = [a2 ae_verboseDescription];
  v9 = 138543618;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_23C1AA000, a3, OS_LOG_TYPE_ERROR, "Encountered error running deactivation: %{public}@. Error: %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(AEPersistentDeactivation *)*a1 deactivation];
  v4 = [v3 identifier];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_23C1AA000, a2, OS_LOG_TYPE_ERROR, "An error occurred removing the scratchpad for deactivation with ID=%{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end