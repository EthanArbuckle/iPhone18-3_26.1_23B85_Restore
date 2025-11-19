@interface HKLoggingObjectCompletion
@end

@implementation HKLoggingObjectCompletion

void ___HKLoggingObjectCompletion_block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = a1[4];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v9 = a1[7];
      v11 = 138543618;
      v12 = v8;
      v13 = 2082;
      v14 = v9;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}s: Succeeded", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    ___HKLoggingActionCompletion_block_invoke_cold_1(a1);
  }

  (*(a1[6] + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

@end