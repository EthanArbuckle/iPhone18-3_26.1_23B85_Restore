@interface HKSampleQueryUtility
@end

@implementation HKSampleQueryUtility

void __57___HKSampleQueryUtility_setupQueryWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      __57___HKSampleQueryUtility_setupQueryWithCompletionHandler___block_invoke_cold_1(a1);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleAddedObjects:v10 deletedObjects:v11 queryAnchor:v12 error:v13 resultsHandler:*(a1 + 40)];
}

void __42___HKSampleQueryUtility_setUpdateHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v13)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
      {
        __42___HKSampleQueryUtility_setUpdateHandler___block_invoke_cold_1(WeakRetained);
      }
    }

    [WeakRetained handleAddedObjects:v10 deletedObjects:v11 queryAnchor:v12 error:v13 resultsHandler:WeakRetained[8]];
  }
}

uint64_t __92___HKSampleQueryUtility_handleAddedObjects_deletedObjects_queryAnchor_error_resultsHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUID];
  v5 = [v3 UUID];

  v6 = [v4 isEqual:v5];
  return v6;
}

void __57___HKSampleQueryUtility_setupQueryWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "Failed to get results for _HKSampleQueryUtility (type: %@) with error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __42___HKSampleQueryUtility_setUpdateHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "Failed to get update results for _HKSampleQueryUtility (type: %@) with error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

@end