@interface ATXBackgroundSystemTask
- (ATXBackgroundSystemTask)initWithBackgroundSystemTask:(id)task;
- (ATXBackgroundSystemTask)initWithBackgroundSystemTask:(id)task logHandle:(id)handle;
- (BOOL)_didDeferForTestMode;
- (BOOL)_setDoneForTestMode;
- (BOOL)didDefer;
- (BOOL)setDone;
- (BOOL)shouldDefer;
- (id)initForTestingWithIdentifier:(id)identifier configuration:(id)configuration;
- (id)resultStatusForJob;
- (void)didDefer;
- (void)setProgressUnits:(unsigned __int8)units;
- (void)shouldDefer;
@end

@implementation ATXBackgroundSystemTask

- (ATXBackgroundSystemTask)initWithBackgroundSystemTask:(id)task
{
  taskCopy = task;
  v5 = __atxlog_handle_default();
  v6 = [(ATXBackgroundSystemTask *)self initWithBackgroundSystemTask:taskCopy logHandle:v5];

  return v6;
}

- (ATXBackgroundSystemTask)initWithBackgroundSystemTask:(id)task logHandle:(id)handle
{
  taskCopy = task;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = ATXBackgroundSystemTask;
  v8 = [(ATXBackgroundSystemTask *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(ATXBackgroundSystemTask *)v8 setBgSystemTask:taskCopy];
    [(ATXBackgroundSystemTask *)v9 setHandle:handleCopy];
    [(ATXBackgroundSystemTask *)v9 setTaskDeferred:0];
    [(ATXBackgroundSystemTask *)v9 setTaskExpiryCalled:0];
    [(ATXBackgroundSystemTask *)v9 setCurrentProgressUnits:0];
    objc_initWeak(&location, v9);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__ATXBackgroundSystemTask_initWithBackgroundSystemTask_logHandle___block_invoke;
    v11[3] = &unk_1E80C22A0;
    objc_copyWeak(&v12, &location);
    [taskCopy setExpirationHandlerWithReason:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __66__ATXBackgroundSystemTask_initWithBackgroundSystemTask_logHandle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setTaskDeferred:1];
    v3 = [v2 handle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 bgSystemTask];
      v5 = [v4 identifier];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Background task %@ has expired", &v6, 0xCu);
    }
  }
}

- (id)initForTestingWithIdentifier:(id)identifier configuration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = ATXBackgroundSystemTask;
  v8 = [(ATXBackgroundSystemTask *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(ATXBackgroundSystemTask *)v8 setIdentifier:identifierCopy];
    [(ATXBackgroundSystemTask *)v9 setConfiguration:configurationCopy];
    v10 = [MEMORY[0x1E695DF00] now];
    [(ATXBackgroundSystemTask *)v9 setJobCreationTime:v10];

    v11 = objc_opt_new();
    [(ATXBackgroundSystemTask *)v9 setResultStatus:v11];
  }

  return v9;
}

- (BOOL)_didDeferForTestMode
{
  configuration = [(ATXBackgroundSystemTask *)self configuration];
  v4 = [configuration objectForKeyedSubscript:*MEMORY[0x1E698AF68]];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (([v4 doubleValue], v6 = v5, objc_msgSend(MEMORY[0x1E695DF00], "now"), v7 = objc_claimAutoreleasedReturnValue(), -[ATXBackgroundSystemTask jobCreationTime](self, "jobCreationTime"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceDate:", v8), v10 = v9, v8, v7, v6 > 0.0) ? (v11 = v10 <= v6) : (v11 = 1), !v11))
  {
    resultStatus = [(ATXBackgroundSystemTask *)self resultStatus];
    [resultStatus setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E698AF70]];

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    resultStatus2 = [(ATXBackgroundSystemTask *)self resultStatus];
    [resultStatus2 setObject:v14 forKeyedSubscript:*MEMORY[0x1E698AF80]];

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)didDefer
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698AFF8] = [MEMORY[0x1E698AFF8] sharedInstance];
  isTestModeEnabled = [mEMORY[0x1E698AFF8] isTestModeEnabled];

  if (isTestModeEnabled)
  {

    return [(ATXBackgroundSystemTask *)self _didDeferForTestMode];
  }

  else
  {
    if ([(ATXBackgroundSystemTask *)self taskDeferred]&& ![(ATXBackgroundSystemTask *)self taskExpiryCalled])
    {
      bgSystemTask = [(ATXBackgroundSystemTask *)self bgSystemTask];
      v13 = 0;
      v7 = [bgSystemTask setTaskExpiredWithRetryAfter:&v13 error:0.0];
      v8 = v13;

      handle = [(ATXBackgroundSystemTask *)self handle];
      v10 = handle;
      if (v7)
      {
        if (os_log_type_enabled(handle, OS_LOG_TYPE_DEFAULT))
        {
          bgSystemTask2 = [(ATXBackgroundSystemTask *)self bgSystemTask];
          identifier = [bgSystemTask2 identifier];
          *buf = 138412290;
          v15 = identifier;
          _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "Successfully called setTaskExpiredWithRetryAfter:BGSystemTaskRetryAfterDefault for %@", buf, 0xCu);
        }

        [(ATXBackgroundSystemTask *)self setTaskExpiryCalled:1];
        [(ATXBackgroundSystemTask *)self setBgSystemTask:0];
      }

      else
      {
        if (os_log_type_enabled(handle, OS_LOG_TYPE_ERROR))
        {
          [(ATXBackgroundSystemTask *)self didDefer];
        }
      }
    }

    return [(ATXBackgroundSystemTask *)self taskExpiryCalled];
  }
}

- (BOOL)shouldDefer
{
  handle = [(ATXBackgroundSystemTask *)self handle];
  if (os_log_type_enabled(handle, OS_LOG_TYPE_FAULT))
  {
    [(ATXBackgroundSystemTask *)self shouldDefer];
  }

  return [(ATXBackgroundSystemTask *)self taskDeferred];
}

- (void)setProgressUnits:(unsigned __int8)units
{
  unitsCopy = units;
  mEMORY[0x1E698AFF8] = [MEMORY[0x1E698AFF8] sharedInstance];
  isTestModeEnabled = [mEMORY[0x1E698AFF8] isTestModeEnabled];

  if (isTestModeEnabled)
  {

    [(ATXBackgroundSystemTask *)self _setProgressUnitsForTestMode:unitsCopy];
  }

  else if ((unitsCopy - 1) <= 0x63 && [(ATXBackgroundSystemTask *)self currentProgressUnits]< unitsCopy)
  {
    [(ATXBackgroundSystemTask *)self setCurrentProgressUnits:unitsCopy];
    v7 = objc_alloc(MEMORY[0x1E698E4A8]);
    bgSystemTask = [(ATXBackgroundSystemTask *)self bgSystemTask];
    identifier = [bgSystemTask identifier];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:qos_class_self()];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:unitsCopy];
    v12 = [v7 initWithIdentifier:identifier qos:v10 workloadCategory:50 expectedMetricValue:0 itemsCompleted:v11 totalItemCount:&unk_1F3E5FE98];

    mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
    v16 = 0;
    LOBYTE(identifier) = [mEMORY[0x1E698E4B8] reportProgressMetrics:v12 error:&v16];
    v14 = v16;

    if ((identifier & 1) == 0)
    {
      handle = [(ATXBackgroundSystemTask *)self handle];
      if (os_log_type_enabled(handle, OS_LOG_TYPE_ERROR))
      {
        [ATXBackgroundSystemTask setProgressUnits:?];
      }
    }
  }
}

- (BOOL)_setDoneForTestMode
{
  resultStatus = [(ATXBackgroundSystemTask *)self resultStatus];
  [resultStatus setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E698AF78]];

  v4 = MEMORY[0x1E696AD98];
  v5 = [MEMORY[0x1E695DF00] now];
  jobCreationTime = [(ATXBackgroundSystemTask *)self jobCreationTime];
  [v5 timeIntervalSinceDate:jobCreationTime];
  v7 = [v4 numberWithDouble:?];
  resultStatus2 = [(ATXBackgroundSystemTask *)self resultStatus];
  [resultStatus2 setObject:v7 forKeyedSubscript:*MEMORY[0x1E698AF80]];

  return 1;
}

- (BOOL)setDone
{
  mEMORY[0x1E698AFF8] = [MEMORY[0x1E698AFF8] sharedInstance];
  isTestModeEnabled = [mEMORY[0x1E698AFF8] isTestModeEnabled];

  if (isTestModeEnabled)
  {

    return [(ATXBackgroundSystemTask *)self _setDoneForTestMode];
  }

  else
  {
    [(ATXBackgroundSystemTask *)self setProgressUnits:100];
    bgSystemTask = [(ATXBackgroundSystemTask *)self bgSystemTask];
    [bgSystemTask setTaskCompleted];

    [(ATXBackgroundSystemTask *)self setBgSystemTask:0];
    return 1;
  }
}

- (id)resultStatusForJob
{
  resultStatus = [(ATXBackgroundSystemTask *)self resultStatus];
  v3 = [resultStatus copy];

  return v3;
}

- (void)didDefer
{
  bgSystemTask = [self bgSystemTask];
  identifier = [bgSystemTask identifier];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v3, v4, "Failed to call setTaskExpiredWithRetryAfter for %@ : %@", v5, v6, v7, v8, v9);
}

- (void)shouldDefer
{
  v7 = *MEMORY[0x1E69E9840];
  bgSystemTask = [self bgSystemTask];
  identifier = [bgSystemTask identifier];
  v5 = 138412290;
  v6 = identifier;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "Activities using BGST (%@) should only call didDefer which handles the deferral", &v5, 0xCu);
}

- (void)setProgressUnits:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 bgSystemTask];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v3, v4, "Failed to report progress for %@ to bgst: %@", v5, v6, v7, v8, v9);
}

@end