@interface HKPPT
- (BOOL)runTest:(id)a3 options:(id)a4;
- (HKPPT)init;
- (HKPPT)initWithHKPPTInterface:(id)a3 usingQueue:(id)a4;
- (id)_testNameForDriver:(id)a3;
- (id)builtinTests;
- (void)_failedTest:(id)a3;
- (void)_failedTest:(id)a3 withResults:(id)a4;
- (void)_finishedTest:(id)a3;
- (void)_finishedTest:(id)a3 extraResults:(id)a4;
- (void)_startedTest:(id)a3;
- (void)failedTest:(id)a3 results:(id)a4 error:(id)a5;
- (void)finishedTest:(id)a3 extraResults:(id)a4;
- (void)invalidConfigurationForTest:(id)a3 error:(id)a4;
- (void)startedTest:(id)a3;
@end

@implementation HKPPT

- (HKPPT)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKPPT)initWithHKPPTInterface:(id)a3 usingQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HKPPT;
  v9 = [(HKPPT *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pptInterface, a3);
    if (v8)
    {
      v11 = v8;
      pptQueue = v10->_pptQueue;
      v10->_pptQueue = v11;
    }

    else
    {
      v13 = MEMORY[0x1E69E96A0];
      v14 = MEMORY[0x1E69E96A0];
      pptQueue = v10->_pptQueue;
      v10->_pptQueue = v13;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeTestsByName = v10->_activeTestsByName;
    v10->_activeTestsByName = v15;
  }

  return v10;
}

- (id)builtinTests
{
  v2 = +[HKPPTPluginManager sharedPluginManager];
  v3 = [v2 builtinTests];

  return v3;
}

- (id)_testNameForDriver:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_activeTestsByName;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_activeTestsByName objectForKeyedSubscript:v10, v15];

        if (v11 == v4)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)invalidConfigurationForTest:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HKPPT *)self startedTest:v7];
  [(HKPPT *)self failedTest:v7 results:0 error:v6];
}

- (void)startedTest:(id)a3
{
  v4 = [(HKPPT *)self _testNameForDriver:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HKPPT *)self _startedTest:v4];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)failedTest:(id)a3 results:(id)a4 error:(id)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(HKPPT *)self _testNameForDriver:a3];
  if (v10)
  {
    [(NSMutableDictionary *)self->_activeTestsByName removeObjectForKey:v10];
    if (v9)
    {
      if (!v8)
      {
        v15 = @"error";
        v13 = [v9 description];
        v16[0] = v13;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_8;
      }

      v11 = [v8 mutableCopy];
      v12 = [v9 description];
      [v11 setObject:v12 forKeyedSubscript:@"error"];

      v8 = v11;
    }

    if (v8)
    {
LABEL_6:
      [(HKPPT *)self _failedTest:v10 withResults:v8];
      goto LABEL_9;
    }

LABEL_8:
    [(HKPPT *)self _failedTest:v10];
  }

LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)finishedTest:(id)a3 extraResults:(id)a4
{
  v7 = a4;
  v6 = [(HKPPT *)self _testNameForDriver:a3];
  if (v6)
  {
    [(NSMutableDictionary *)self->_activeTestsByName removeObjectForKey:v6];
    if (v7)
    {
      [(HKPPT *)self _finishedTest:v6 extraResults:v7];
    }

    else
    {
      [(HKPPT *)self _finishedTest:v6];
    }
  }
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKey:@"testType"];
  if (!v8)
  {
    _HKInitializeLogging();
    v15 = HKLogTesting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      v16 = "[PPT] Skipping unspecified performance test type for: %@";
LABEL_9:
      _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, v16, &v19, 0xCu);
    }

LABEL_12:

    v14 = 0;
    goto LABEL_13;
  }

  v9 = [v7 objectForKeyedSubscript:@"enabled"];
  v10 = [v9 BOOLValue];

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v15 = HKLogTesting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      v16 = "[PPT] Skipping disabled performance test: %@";
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v11 = +[HKPPTPluginManager sharedPluginManager];
  v12 = [v11 classForTestType:v8];

  if (!v12)
  {
    _HKInitializeLogging();
    v15 = HKLogTesting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(HKPPT *)v6 runTest:v8 options:v15];
    }

    goto LABEL_12;
  }

  v13 = objc_alloc_init(v12);
  [(NSMutableDictionary *)self->_activeTestsByName setObject:v13 forKeyedSubscript:v6];
  [v13 runTest:v6 options:v7 controller:self];

  v14 = 1;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_startedTest:(id)a3
{
  v4 = a3;
  pptQueue = self->_pptQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__HKPPT__startedTest___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(pptQueue, v7);
}

void __22__HKPPT__startedTest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);

    [v4 startedTest:v3];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogTesting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[PPT] *** HKPPT application object does not conform to startedTest.", v6, 2u);
    }
  }
}

- (void)_finishedTest:(id)a3
{
  v4 = a3;
  pptQueue = self->_pptQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __23__HKPPT__finishedTest___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(pptQueue, v7);
}

void __23__HKPPT__finishedTest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);

    [v4 finishedTest:v3];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogTesting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[PPT] *** HKPPT application object does not conform to finishedTest.", v6, 2u);
    }
  }
}

- (void)_finishedTest:(id)a3 extraResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  pptQueue = self->_pptQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__HKPPT__finishedTest_extraResults___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(pptQueue, block);
}

void __36__HKPPT__finishedTest_extraResults___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = a1[6];

    [v4 finishedTest:v3 extraResults:v5];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogTesting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[PPT] *** HKPPT application object does not conform to finishedTest:extraResults:.", v7, 2u);
    }
  }
}

- (void)_failedTest:(id)a3
{
  v4 = a3;
  pptQueue = self->_pptQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__HKPPT__failedTest___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(pptQueue, v7);
}

void __21__HKPPT__failedTest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);

    [v4 failedTest:v3];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogTesting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[PPT] *** HKPPT application object does not conform to failedTest:.", v6, 2u);
    }
  }
}

- (void)_failedTest:(id)a3 withResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  pptQueue = self->_pptQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HKPPT__failedTest_withResults___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(pptQueue, block);
}

void __33__HKPPT__failedTest_withResults___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = a1[6];

    [v4 failedTest:v3 withResults:v5];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogTesting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[PPT] *** HKPPT application object does not conform to failedTest:withResults:.", v7, 2u);
    }
  }
}

- (void)runTest:(os_log_t)log options:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Unrecognized performance test: %@ (%@)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end