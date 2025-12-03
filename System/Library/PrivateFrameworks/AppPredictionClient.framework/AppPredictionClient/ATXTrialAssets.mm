@interface ATXTrialAssets
- (ATXTrialAssets)init;
- (id)client;
- (id)dictionaryForClass:(Class)class;
- (id)dictionaryForClassName:(id)name;
- (id)dictionaryForResource:(id)resource;
- (id)directoryPathForTrialResource:(id)resource;
- (id)filePathForClass:(Class)class;
- (id)filePathForResource:(id)resource;
- (void)addUpdateHandlerWithBlock:(id)block;
- (void)fetchTrialExperimentIdentifiers;
@end

@implementation ATXTrialAssets

- (ATXTrialAssets)init
{
  v10.receiver = self;
  v10.super_class = ATXTrialAssets;
  v2 = [(ATXTrialAssets *)&v10 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E69DB518] clientWithIdentifier:105];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [objc_alloc(MEMORY[0x1E69C5D60]) initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v7;

    [v4[1] refresh];
    [(ATXTrialAssets *)v2 fetchTrialExperimentIdentifiers];

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (id)client
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__ATXTrialAssets_client__block_invoke;
  v5[3] = &unk_1E80C0EC8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __24__ATXTrialAssets_client__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (id)dictionaryForResource:(id)resource
{
  resourceCopy = resource;
  v5 = [(ATXTrialAssets *)self filePathForResource:resourceCopy];
  v6 = v5;
  if (v5)
  {
    v7 = loadLazyOrRegularPlist(v5);
  }

  else
  {
    v8 = __atxlog_handle_trial_assets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXTrialAssets *)resourceCopy dictionaryForResource:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)dictionaryForClass:(Class)class
{
  v4 = NSStringFromClass(class);
  v5 = [(ATXTrialAssets *)self dictionaryForClassName:v4];

  return v5;
}

- (id)dictionaryForClassName:(id)name
{
  nameCopy = name;
  v5 = [(ATXTrialAssets *)self filePathForClassName:nameCopy];
  v6 = v5;
  if (v5)
  {
    v7 = loadLazyOrRegularPlist(v5);
  }

  else
  {
    v8 = __atxlog_handle_trial_assets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXTrialAssets *)nameCopy dictionaryForClassName:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)filePathForClass:(Class)class
{
  v4 = NSStringFromClass(class);
  v5 = [(ATXTrialAssets *)self filePathForClassName:v4];

  return v5;
}

- (id)filePathForResource:(id)resource
{
  resourceCopy = resource;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__ATXTrialAssets_filePathForResource___block_invoke;
  v9[3] = &unk_1E80C0EF0;
  v9[4] = self;
  v6 = resourceCopy;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __38__ATXTrialAssets_filePathForResource___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = v11[1];
  v5 = [*(a1 + 32) trialFactorName:*(a1 + 40)];
  v6 = [v4 levelForFactor:v5 withNamespaceName:@"SYSTEM_SPACE_INTELLIGENCE_SPOTLIGHT_SUGGESTIONS"];

  v7 = [v6 fileValue];
  v8 = [v7 path];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  objc_autoreleasePoolPop(v3);
}

- (id)directoryPathForTrialResource:(id)resource
{
  resourceCopy = resource;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ATXTrialAssets_directoryPathForTrialResource___block_invoke;
  v9[3] = &unk_1E80C0EF0;
  v9[4] = self;
  v6 = resourceCopy;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__ATXTrialAssets_directoryPathForTrialResource___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = v11[1];
  v5 = [*(a1 + 32) trialFactorName:*(a1 + 40)];
  v6 = [v4 levelForFactor:v5 withNamespaceName:@"SYSTEM_SPACE_INTELLIGENCE_SPOTLIGHT_SUGGESTIONS"];

  v7 = [v6 directoryValue];
  v8 = [v7 path];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  objc_autoreleasePoolPop(v3);
}

- (void)addUpdateHandlerWithBlock:(id)block
{
  blockCopy = block;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ATXTrialAssets_addUpdateHandlerWithBlock___block_invoke;
  v7[3] = &unk_1E80C0F40;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __44__ATXTrialAssets_addUpdateHandlerWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__ATXTrialAssets_addUpdateHandlerWithBlock___block_invoke_2;
  v4[3] = &unk_1E80C0F18;
  v5 = *(a1 + 32);
  v3 = [v2 addUpdateHandlerForNamespaceName:@"SYSTEM_SPACE_INTELLIGENCE_SPOTLIGHT_SUGGESTIONS" usingBlock:v4];
}

- (void)fetchTrialExperimentIdentifiers
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__ATXTrialAssets_fetchTrialExperimentIdentifiers__block_invoke;
  v3[3] = &unk_1E80C0F68;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __49__ATXTrialAssets_fetchTrialExperimentIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) experimentIdentifiersWithNamespaceName:@"SYSTEM_SPACE_INTELLIGENCE_SPOTLIGHT_SUGGESTIONS"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 experimentId];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;

    v8 = [v4 treatmentId];
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    *(v9 + 16) = v8;

    v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
    v12 = [v11 stringValue];
    v13 = *(a1 + 32);
    v14 = *(v13 + 32);
    *(v13 + 32) = v12;
  }

  else
  {
    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_INFO, "ATXTrialClientWrapper: Unable to fetch experimentId, deploymentId, treatmentId", v16, 2u);
    }
  }
}

- (void)dictionaryForResource:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Could not get file path for resource: %@", &v2, 0xCu);
}

- (void)dictionaryForClassName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Could not get file path for class: %@", &v2, 0xCu);
}

@end