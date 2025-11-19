@interface ATXRunningBoardAssertion
+ (void)performWorkWithFinishTaskAssertionName:(id)a3 block:(id)a4;
@end

@implementation ATXRunningBoardAssertion

+ (void)performWorkWithFinishTaskAssertionName:(id)a3 block:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AE30] processInfo];
  v9 = [v8 processName];
  v10 = [v9 isEqualToString:@"duetexpertd"];

  if (v10)
  {
    v7[2](v7);
  }

  else
  {
    if (performWorkWithFinishTaskAssertionName_block__onceToken != -1)
    {
      +[ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:block:];
    }

    v11 = objc_alloc(MEMORY[0x1E69C7548]);
    v12 = performWorkWithFinishTaskAssertionName_block__target;
    v33[0] = performWorkWithFinishTaskAssertionName_block__attribute;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v14 = [v11 initWithExplanation:v6 target:v12 attributes:v13];

    v28 = 0;
    v15 = [v14 acquireWithError:&v28];
    v16 = v28;
    v17 = __atxlog_handle_default();
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        *buf = 138543618;
        v30 = v19;
        v31 = 2048;
        v32 = a1;
        v20 = v19;
        _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] Acquired Process assertion", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:block:];
    }

    v7[2](v7);
    v27 = 0;
    v21 = [v14 invalidateSyncWithError:&v27];
    v22 = v27;

    v23 = __atxlog_handle_default();
    v24 = v23;
    if (v21)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        *buf = 138543618;
        v30 = v25;
        v31 = 2048;
        v32 = a1;
        v26 = v25;
        _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] invalidated Process assertion", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:block:];
    }
  }
}

uint64_t __73__ATXRunningBoardAssertion_performWorkWithFinishTaskAssertionName_block___block_invoke()
{
  v0 = [MEMORY[0x1E69C7640] currentProcess];
  v1 = performWorkWithFinishTaskAssertionName_block__target;
  performWorkWithFinishTaskAssertionName_block__target = v0;

  v2 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskNow"];
  v3 = performWorkWithFinishTaskAssertionName_block__attribute;
  performWorkWithFinishTaskAssertionName_block__attribute = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (void)performWorkWithFinishTaskAssertionName:block:.cold.2()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_13(v0);
  OUTLINED_FUNCTION_1_1(&dword_1BF549000, v2, v3, "[%{public}@ %p] Failed to acquire Process assertion with error: %@", v4, v5, v6, v7, v8);
}

+ (void)performWorkWithFinishTaskAssertionName:block:.cold.3()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_13(v0);
  OUTLINED_FUNCTION_1_1(&dword_1BF549000, v2, v3, "[%{public}@ %p] Failed to invalidate Process assertion with error: %@", v4, v5, v6, v7, v8);
}

@end