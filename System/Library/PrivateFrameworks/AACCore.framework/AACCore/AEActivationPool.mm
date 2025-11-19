@interface AEActivationPool
- (id)initWithPolicyStore:(void *)a3 performancePrimitives:(void *)a4 invalidationHandler:(void *)a5 activations:(void *)a6 queue:;
- (void)activateWithCompletion:(id *)a1;
@end

@implementation AEActivationPool

void __43__AEActivationPool_activateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) endInterval];
  if (v6)
  {
    v7 = AECoreLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__AEActivationPool_activateWithCompletion___block_invoke_cold_1(a1, v6, v7);
    }

    v8 = *(a1 + 48);
    objc_sync_enter(v8);
    [*(a1 + 48) addObject:v6];
    objc_sync_exit(v8);
  }

  if (v5)
  {
    v9 = [AEPersistentDeactivation alloc];
    v10 = [*(a1 + 40) identifier];
    v11 = [(AEPersistentDeactivation *)&v9->super.isa initWithScratchpadIdentifier:v10 deactivation:v5];

    v12 = *(a1 + 56);
    objc_sync_enter(v12);
    [*(a1 + 56) addObject:v11];
    objc_sync_exit(v12);
  }

  dispatch_group_leave(*(a1 + 64));
}

void __43__AEActivationPool_activateWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) copy];
  v3 = [*(a1 + 40) copy];
  (*(v2 + 16))(v2, v4, v3);
}

- (id)initWithPolicyStore:(void *)a3 performancePrimitives:(void *)a4 invalidationHandler:(void *)a5 activations:(void *)a6 queue:
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = AEActivationPool;
    a1 = objc_msgSendSuper2(&v22, sel_init);
    if (a1)
    {
      v17 = MEMORY[0x23EECC850](v14);
      v18 = a1[2];
      a1[2] = v17;

      v19 = [v15 copy];
      v20 = a1[1];
      a1[1] = v19;

      objc_storeStrong(a1 + 3, a2);
      objc_storeStrong(a1 + 4, a3);
      objc_storeStrong(a1 + 5, a6);
    }
  }

  return a1;
}

- (void)activateWithCompletion:(id *)a1
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v20 = v3;
    v27 = objc_opt_new();
    v26 = objc_opt_new();
    v25 = a1[3];
    v24 = a1[2];
    v5 = dispatch_group_create();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = a1;
    obj = a1[1];
    v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v22 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          dispatch_group_enter(v5);
          v10 = AECoreLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v9 identifier];
            *buf = 138543362;
            v36 = v11;
            _os_log_impl(&dword_23C1AA000, v10, OS_LOG_TYPE_DEFAULT, "Running activation: %{public}@", buf, 0xCu);
          }

          v12 = [v9 identifier];
          v13 = [v25 writeOnlyScratchpadForIdentifier:v12];

          v14 = AELoggingCategoryForEvent([v9 event]);
          v15 = v23[4];
          v16 = [v9 identifier];
          v17 = [v15 beginIntervalWithCategory:v14 name:v16];

          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __43__AEActivationPool_activateWithCompletion___block_invoke;
          v30[3] = &unk_278BB6D90;
          v30[4] = v17;
          v30[5] = v9;
          v30[6] = v27;
          v30[7] = v26;
          v30[8] = v5;
          [v9 activateWithScratchpad:v13 invalidationHandler:v24 completion:v30];
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v7);
    }

    v18 = v23[5];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__AEActivationPool_activateWithCompletion___block_invoke_2;
    block[3] = &unk_278BB6DB8;
    v4 = v20;
    block[4] = v26;
    block[5] = v27;
    v29 = v20;
    dispatch_group_notify(v5, v18, block);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __43__AEActivationPool_activateWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 40) identifier];
  v6 = [a2 ae_verboseDescription];
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_23C1AA000, a3, OS_LOG_TYPE_ERROR, "Encountered error running activation: %{public}@. Error: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end