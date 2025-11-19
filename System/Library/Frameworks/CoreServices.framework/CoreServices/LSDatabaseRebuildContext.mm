@interface LSDatabaseRebuildContext
+ (id)currentRebuildContextIfExists;
+ (void)withStatsGatherer:(void *)a3 runWithRebuildContext:;
- (LSDatabaseRebuildContext)initWithStatsGatherer:(id)a3;
- (id)finishAndArmSaveTimer;
- (void)noteRebuildError:(uint64_t)a1;
- (void)registerItems:(uint64_t)a1;
@end

@implementation LSDatabaseRebuildContext

- (LSDatabaseRebuildContext)initWithStatsGatherer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = LSDatabaseRebuildContext;
  v6 = [(LSDatabaseRebuildContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statsGatherer, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    overriddenPlugins = v7->_overriddenPlugins;
    v7->_overriddenPlugins = v8;
  }

  return v7;
}

+ (id)currentRebuildContextIfExists
{
  objc_opt_self();
  os_unfair_lock_lock(&rebuildContextLock);
  v0 = currentContext;
  os_unfair_lock_unlock(&rebuildContextLock);

  return v0;
}

+ (void)withStatsGatherer:(void *)a3 runWithRebuildContext:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__LSDatabaseRebuildContext_withStatsGatherer_runWithRebuildContext___block_invoke;
  v9[3] = &unk_1E6A1A120;
  v12 = sel_withStatsGatherer_runWithRebuildContext_;
  v13 = v6;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  _LSServer_ExecuteSyncWithQuiescedInstallationActivity(v9);
}

void __68__LSDatabaseRebuildContext_withStatsGatherer_runWithRebuildContext___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&rebuildContextLock);
  if (currentContext)
  {
    __68__LSDatabaseRebuildContext_withStatsGatherer_runWithRebuildContext___block_invoke_cold_1(a1);
  }

  v4 = [[LSDatabaseRebuildContext alloc] initWithStatsGatherer:*(a1 + 32)];
  v2 = currentContext;
  currentContext = v4;

  os_unfair_lock_unlock(&rebuildContextLock);
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_lock(&rebuildContextLock);
  v3 = currentContext;
  if (currentContext != v4)
  {
    __68__LSDatabaseRebuildContext_withStatsGatherer_runWithRebuildContext___block_invoke_cold_2();
    v3 = v5;
  }

  currentContext = 0;

  os_unfair_lock_unlock(&rebuildContextLock);
}

void __49__LSDatabaseRebuildContext_finishAndArmSaveTimer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v9 = 0;
  v10 = 0;
  inited = _LSContextInitReturningError(&v10, &v9);
  v7 = v9;
  if (inited)
  {
    [(_LSDatabase *)v10 store];
    if (_CSStoreGarbageCollect())
    {
      _LSArmSaveTimer(1);
    }
  }

  else
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__LSDatabaseRebuildContext_finishAndArmSaveTimer__block_invoke_cold_1();
    }
  }
}

- (void)registerItems:(uint64_t)a1
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a2;
  obj = v3;
  if (a1)
  {
    v11 = OUTLINED_FUNCTION_21(v3, v4, v5, v6, v7, v8, v9, v10, v42, v3, v45, v47, 0, 0, 0, 0, 0, 0, 0, 0, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    if (v11)
    {
      v12 = v11;
      v48 = *v51;
      v46 = *MEMORY[0x1E695E4F0];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v51 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(a1 + 16);
          v15 = *(v50 + 8 * i);
          v16 = v14;
          v17 = [v15 objectForKey:v46];
          v18 = [v15 objectForKey:@"ApplicationType"];
          _LSLogStepStart(13, 0, v17, @"begin inspect %@", v19, v20, v21, v22, v18);
          v23 = _LSServer_DatabaseExecutionContext();
          v57 = MEMORY[0x1E69E9820];
          v58 = 3221225472;
          v59 = __registerSingleMIDict_block_invoke;
          v60 = &unk_1E6A19E80;
          v61 = v15;
          v62 = v18;
          v63 = v16;
          v64 = v17;
          v24 = v15;
          v25 = v18;
          v26 = v16;
          v27 = v17;
          [(LSDBExecutionContext *)v23 syncWrite:?];

          _LSLogStepFinished(13, 1, v27, @"end inspect %@", v28, v29, v30, v31, v25);
          v32 = [v24 objectForKey:@"ApplicationType"];
          [(LSRebuildStatisticsGatherer *)*(a1 + 8) registeredBundleOfType:v32];
        }

        v12 = OUTLINED_FUNCTION_21(v33, v34, v35, v36, v37, v38, v39, v40, v43, obj, v46, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
      }

      while (v12);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)noteRebuildError:(uint64_t)a1
{
  newValue = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
    [(LSRebuildStatisticsGatherer *)*(a1 + 8) setRebuildError:?];
  }
}

- (id)finishAndArmSaveTimer
{
  if (a1)
  {
    v2 = a1;
    v3 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v3 syncWrite:?];

    a1 = v2[3];
    v1 = vars8;
  }

  return a1;
}

void __68__LSDatabaseRebuildContext_withStatsGatherer_runWithRebuildContext___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"LSApplicationWorkspace.m" lineNumber:5812 description:@"can't start rebuild context: one already exists!"];
}

void __68__LSDatabaseRebuildContext_withStatsGatherer_runWithRebuildContext___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 48) object:*(v1 + 56) file:@"LSApplicationWorkspace.m" lineNumber:5818 description:@"can't end rebuild context: current context is different!?"];

  *v0 = currentContext;
}

void __49__LSDatabaseRebuildContext_finishAndArmSaveTimer__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end