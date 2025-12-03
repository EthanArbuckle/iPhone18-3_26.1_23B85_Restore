@interface HKPPT
- (BOOL)runTest:(id)test options:(id)options;
- (HKPPT)init;
- (HKPPT)initWithHKPPTInterface:(id)interface usingQueue:(id)queue;
- (id)_testNameForDriver:(id)driver;
- (id)builtinTests;
- (void)_failedTest:(id)test;
- (void)_failedTest:(id)test withResults:(id)results;
- (void)_finishedTest:(id)test;
- (void)_finishedTest:(id)test extraResults:(id)results;
- (void)_startedTest:(id)test;
- (void)failedTest:(id)test results:(id)results error:(id)error;
- (void)finishedTest:(id)test extraResults:(id)results;
- (void)invalidConfigurationForTest:(id)test error:(id)error;
- (void)startedTest:(id)test;
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

- (HKPPT)initWithHKPPTInterface:(id)interface usingQueue:(id)queue
{
  interfaceCopy = interface;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = HKPPT;
  v9 = [(HKPPT *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pptInterface, interface);
    if (queueCopy)
    {
      v11 = queueCopy;
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
  builtinTests = [v2 builtinTests];

  return builtinTests;
}

- (id)_testNameForDriver:(id)driver
{
  v20 = *MEMORY[0x1E69E9840];
  driverCopy = driver;
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

        if (v11 == driverCopy)
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

- (void)invalidConfigurationForTest:(id)test error:(id)error
{
  errorCopy = error;
  testCopy = test;
  [(HKPPT *)self startedTest:testCopy];
  [(HKPPT *)self failedTest:testCopy results:0 error:errorCopy];
}

- (void)startedTest:(id)test
{
  v4 = [(HKPPT *)self _testNameForDriver:test];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HKPPT *)self _startedTest:v4];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)failedTest:(id)test results:(id)results error:(id)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  errorCopy = error;
  v10 = [(HKPPT *)self _testNameForDriver:test];
  if (v10)
  {
    [(NSMutableDictionary *)self->_activeTestsByName removeObjectForKey:v10];
    if (errorCopy)
    {
      if (!resultsCopy)
      {
        v15 = @"error";
        v13 = [errorCopy description];
        v16[0] = v13;
        resultsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

        if (resultsCopy)
        {
          goto LABEL_6;
        }

        goto LABEL_8;
      }

      v11 = [resultsCopy mutableCopy];
      v12 = [errorCopy description];
      [v11 setObject:v12 forKeyedSubscript:@"error"];

      resultsCopy = v11;
    }

    if (resultsCopy)
    {
LABEL_6:
      [(HKPPT *)self _failedTest:v10 withResults:resultsCopy];
      goto LABEL_9;
    }

LABEL_8:
    [(HKPPT *)self _failedTest:v10];
  }

LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)finishedTest:(id)test extraResults:(id)results
{
  resultsCopy = results;
  v6 = [(HKPPT *)self _testNameForDriver:test];
  if (v6)
  {
    [(NSMutableDictionary *)self->_activeTestsByName removeObjectForKey:v6];
    if (resultsCopy)
    {
      [(HKPPT *)self _finishedTest:v6 extraResults:resultsCopy];
    }

    else
    {
      [(HKPPT *)self _finishedTest:v6];
    }
  }
}

- (BOOL)runTest:(id)test options:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  testCopy = test;
  optionsCopy = options;
  v8 = [optionsCopy objectForKey:@"testType"];
  if (!v8)
  {
    _HKInitializeLogging();
    v15 = HKLogTesting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = testCopy;
      v16 = "[PPT] Skipping unspecified performance test type for: %@";
LABEL_9:
      _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, v16, &v19, 0xCu);
    }

LABEL_12:

    v14 = 0;
    goto LABEL_13;
  }

  v9 = [optionsCopy objectForKeyedSubscript:@"enabled"];
  bOOLValue = [v9 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    _HKInitializeLogging();
    v15 = HKLogTesting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = testCopy;
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
      [(HKPPT *)testCopy runTest:v8 options:v15];
    }

    goto LABEL_12;
  }

  v13 = objc_alloc_init(v12);
  [(NSMutableDictionary *)self->_activeTestsByName setObject:v13 forKeyedSubscript:testCopy];
  [v13 runTest:testCopy options:optionsCopy controller:self];

  v14 = 1;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_startedTest:(id)test
{
  testCopy = test;
  pptQueue = self->_pptQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__HKPPT__startedTest___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = testCopy;
  v6 = testCopy;
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

- (void)_finishedTest:(id)test
{
  testCopy = test;
  pptQueue = self->_pptQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __23__HKPPT__finishedTest___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = testCopy;
  v6 = testCopy;
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

- (void)_finishedTest:(id)test extraResults:(id)results
{
  testCopy = test;
  resultsCopy = results;
  pptQueue = self->_pptQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__HKPPT__finishedTest_extraResults___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = testCopy;
  v13 = resultsCopy;
  v9 = resultsCopy;
  v10 = testCopy;
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

- (void)_failedTest:(id)test
{
  testCopy = test;
  pptQueue = self->_pptQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__HKPPT__failedTest___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = testCopy;
  v6 = testCopy;
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

- (void)_failedTest:(id)test withResults:(id)results
{
  testCopy = test;
  resultsCopy = results;
  pptQueue = self->_pptQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HKPPT__failedTest_withResults___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = testCopy;
  v13 = resultsCopy;
  v9 = resultsCopy;
  v10 = testCopy;
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