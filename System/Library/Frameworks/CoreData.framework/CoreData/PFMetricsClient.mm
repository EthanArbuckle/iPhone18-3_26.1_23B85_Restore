@interface PFMetricsClient
+ (void)initialize;
- (void)logMetric:(uint64_t)metric;
@end

@implementation PFMetricsClient

+ (void)initialize
{
  if (objc_opt_class() == self && initialize_onceToken_0 != -1)
  {

    dispatch_once(&initialize_onceToken_0, &__block_literal_global_24);
  }
}

uint64_t __29__PFMetricsClient_initialize__block_invoke()
{
  v0 = getprogname();
  result = strncmp("xctest", v0, 6uLL);
  if (result)
  {
    result = strncmp("CoreDataTestingTests-Runner", v0, 0x1BuLL);
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  _MergedGlobals_84 = v2;
  return result;
}

- (void)logMetric:(uint64_t)metric
{
  v22 = *MEMORY[0x1E69E9840];
  if (metric && _MergedGlobals_84 == 1)
  {
    v3 = objc_autoreleasePoolPush();
    name = [a2 name];
    if (![name length])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v18 = 138412546;
        v19 = NSStringFromClass(v11);
        v20 = 2112;
        v21 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Invalid metric name sent to '%@': %@\n", &v18, 0x16u);
      }

      v6 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = a2;
        _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Invalid metric name sent to '%@': %@", &v18, 0x16u);
      }
    }

    objc_opt_self();
    if (qword_1ED4BEB08 != -1)
    {
      dispatch_once(&qword_1ED4BEB08, &__block_literal_global_4);
    }

    if (([qword_1ED4BEB10 containsObject:name] & 1) == 0)
    {
      createPayload = [a2 createPayload];
      if (![createPayload count])
      {
        v8 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v18 = 138412546;
          v19 = v15;
          v20 = 2112;
          v21 = a2;
          _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: Invalid metric payload sent to '%@': %@\n", &v18, 0x16u);
        }

        v9 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v18 = 138412546;
          v19 = v17;
          v20 = 2112;
          v21 = a2;
          _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Invalid metric payload sent to '%@': %@", &v18, 0x16u);
        }
      }

      softLinkAnalyticsSendEvent[0]();
    }

    objc_autoreleasePoolPop(v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __40__PFMetricsClient_shouldSendEventNamed___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.coredata.assertions.uikit.success", @"com.apple.coredata.assertions.uikit.denied", 0}];
  qword_1ED4BEB10 = result;
  return result;
}

@end