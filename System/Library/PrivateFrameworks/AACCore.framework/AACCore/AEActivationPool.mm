@interface AEActivationPool
- (id)initWithPolicyStore:(void *)store performancePrimitives:(void *)primitives invalidationHandler:(void *)handler activations:(void *)activations queue:;
- (void)activateWithCompletion:(id *)completion;
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

- (id)initWithPolicyStore:(void *)store performancePrimitives:(void *)primitives invalidationHandler:(void *)handler activations:(void *)activations queue:
{
  v12 = a2;
  storeCopy = store;
  primitivesCopy = primitives;
  handlerCopy = handler;
  activationsCopy = activations;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = AEActivationPool;
    self = objc_msgSendSuper2(&v22, sel_init);
    if (self)
    {
      v17 = MEMORY[0x23EECC850](primitivesCopy);
      v18 = self[2];
      self[2] = v17;

      v19 = [handlerCopy copy];
      v20 = self[1];
      self[1] = v19;

      objc_storeStrong(self + 3, a2);
      objc_storeStrong(self + 4, store);
      objc_storeStrong(self + 5, activations);
    }
  }

  return self;
}

- (void)activateWithCompletion:(id *)completion
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    v20 = v3;
    v27 = objc_opt_new();
    v26 = objc_opt_new();
    v25 = completion[3];
    v24 = completion[2];
    v5 = dispatch_group_create();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    completionCopy = completion;
    obj = completion[1];
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
            identifier = [v9 identifier];
            *buf = 138543362;
            v36 = identifier;
            _os_log_impl(&dword_23C1AA000, v10, OS_LOG_TYPE_DEFAULT, "Running activation: %{public}@", buf, 0xCu);
          }

          identifier2 = [v9 identifier];
          v13 = [v25 writeOnlyScratchpadForIdentifier:identifier2];

          v14 = AELoggingCategoryForEvent([v9 event]);
          v15 = completionCopy[4];
          identifier3 = [v9 identifier];
          v17 = [v15 beginIntervalWithCategory:v14 name:identifier3];

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

    v18 = completionCopy[5];
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