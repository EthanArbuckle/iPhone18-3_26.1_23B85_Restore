@interface AAURLSessionConfigurationTask
@end

@implementation AAURLSessionConfigurationTask

void __71___AAURLSessionConfigurationTask__unfairLock_initiateConfigurationTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6[20])
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-999 userInfo:0];
    [*(a1 + 32) _invokeCompletionWithData:0 response:0 error:v7];
  }

  else if (v9)
  {
    [v6 _initiateSessionTaskWithConfiguration:?];
  }

  else
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    [v6 _invokeCompletionWithData:0 response:0 error:v8];
  }
}

void __72___AAURLSessionConfigurationTask__initiateSessionTaskWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __72___AAURLSessionConfigurationTask__initiateSessionTaskWithConfiguration___block_invoke_cold_1(a1, v9, v10);
    }
  }

  [*(a1 + 32) _invokeCompletionWithData:v7 response:v8 error:v9];
}

void __41___AAURLSessionConfigurationTask_suspend__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3 || (v3 = *(v2 + 24)) != 0)
  {

    [v3 suspend];
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"AAURLSessionConfigurationTask.m" lineNumber:139 description:@"Attempt to suspend inactive task!"];
  }
}

uint64_t __40___AAURLSessionConfigurationTask_resume__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  if (v2)
  {
    return [v2 resume];
  }

  v2 = v1[3];
  if (v2)
  {
    return [v2 resume];
  }

  else
  {
    return [v1 _unfairLock_initiateConfigurationTask];
  }
}

__CFString *__45___AAURLSessionConfigurationTask_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3 || (v3 = *(v2 + 24)) != 0)
  {
    v4 = [v3 description];
  }

  else
  {
    v4 = @"< Inactive AAURLSessionConfigurationTask >";
  }

  return v4;
}

void __72___AAURLSessionConfigurationTask__initiateSessionTaskWithConfiguration___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_ERROR, "_sessionTask %{public}@ completed with error:%@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end