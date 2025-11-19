@interface HKWorkoutObserver
@end

@implementation HKWorkoutObserver

void __65___HKWorkoutObserver_initWithHealthStore_reportInactiveSessions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startTaskServerIfNeeded];
}

void __34___HKWorkoutObserver_setDelegate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_storeWeak((*(a1 + 32) + 32), *(a1 + 40));
  if (*(a1 + 40) && *(*(a1 + 32) + 24) == 1)
  {
    _HKInitializeLogging();
    v2 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Registered for delegate updates", buf, 0xCu);
    }

    v4 = [*(*(a1 + 32) + 72) clientQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __34___HKWorkoutObserver_setDelegate___block_invoke_18;
    v8[3] = &unk_1E7378400;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    dispatch_async(v4, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __30___HKWorkoutObserver_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8]();
}

void __59___HKWorkoutObserver_currentWorkoutSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 72) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___HKWorkoutObserver_currentWorkoutSnapshotWithCompletion___block_invoke_2;
  block[3] = &unk_1E7376618;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __59___HKWorkoutObserver_currentWorkoutSnapshotWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(v2 + 40);
    v7 = [*(a1 + 40) copy];
    v6 = _Block_copy(v7);
    [v5 addObject:v6];
  }
}

void __68___HKWorkoutObserver_waitForAutomaticWorkoutRecoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___HKWorkoutObserver_waitForAutomaticWorkoutRecoveryWithCompletion___block_invoke_2;
  block[3] = &unk_1E7376A98;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __68___HKWorkoutObserver_waitForAutomaticWorkoutRecoveryWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __68___HKWorkoutObserver_waitForAutomaticWorkoutRecoveryWithCompletion___block_invoke_4_cold_1(a1, v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

void __43___HKWorkoutObserver_connectionInterrupted__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t __60___HKWorkoutObserver_clientRemote_didUpdateWorkoutSnapshot___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 1;
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  v5 = [*(*(a1 + 32) + 40) copy];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(a1 + 32) + 40);

  return [v8 removeAllObjects];
}

void __60___HKWorkoutObserver_clientRemote_didUpdateWorkoutSnapshot___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(*(a1[5] + 8) + 40) didUpdateWorkoutSnapshot:a1[4]];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1[6] + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = a1[4];
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __51___HKWorkoutObserver__lock_startTaskServerIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __51___HKWorkoutObserver__lock_startTaskServerIfNeeded__block_invoke_2_cold_1(a1, v3, v4);
  }
}

void __68___HKWorkoutObserver_waitForAutomaticWorkoutRecoveryWithCompletion___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "%{public}@: Failed to register for automatic workout recovery completion: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __51___HKWorkoutObserver__lock_startTaskServerIfNeeded__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "Unable to fetch workout observer %@ proxy after interrupted connection with error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end