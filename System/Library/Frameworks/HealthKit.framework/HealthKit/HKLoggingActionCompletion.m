@interface HKLoggingActionCompletion
@end

@implementation HKLoggingActionCompletion

void ___HKLoggingActionCompletion_block_invoke(void *a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = a1[4];
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v8 = a1[7];
      v10 = 138543618;
      v11 = v7;
      v12 = 2082;
      v13 = v8;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}s: Succeeded", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    ___HKLoggingActionCompletion_block_invoke_cold_1(a1);
  }

  (*(a1[6] + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

void ___HKLoggingActionCompletion_block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_3(&dword_19197B000, v3, v4, "%{public}@: %{public}s: Failed: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

@end