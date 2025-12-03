@interface BuddyDiagnosticsThreadDecorator
- (BuddyDiagnosticsThreadDecorator)initWithSetupMethod:(id)method runState:(id)state flowItemDispositionProvider:(id)provider fundamentalFlowStartupProvider:(id)startupProvider;
- (unint64_t)countOfAllDiagnostics;
- (void)_throwWithException:(id)exception;
- (void)addDiagnostics:(id)diagnostics thenThrowException:(id)exception;
- (void)overrideThrowExceptionHandler:(id)handler;
- (void)removeAllDiagnostics;
@end

@implementation BuddyDiagnosticsThreadDecorator

- (BuddyDiagnosticsThreadDecorator)initWithSetupMethod:(id)method runState:(id)state flowItemDispositionProvider:(id)provider fundamentalFlowStartupProvider:(id)startupProvider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, method);
  v16 = 0;
  objc_storeStrong(&v16, state);
  v15 = 0;
  objc_storeStrong(&v15, provider);
  v14 = 0;
  objc_storeStrong(&v14, startupProvider);
  v9 = selfCopy;
  selfCopy = 0;
  v13.receiver = v9;
  v13.super_class = BuddyDiagnosticsThreadDecorator;
  selfCopy = [(BuddyDiagnosticsThreadDecorator *)&v13 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [selfCopy setSetupMethod:location[0]];
    [selfCopy setRunState:v16];
    [selfCopy setFlowItemDispositionProvider:v15];
    [selfCopy setFundamentalFlowStartupProvider:v14];
    v10 = objc_alloc_init(NSMutableArray);
    [selfCopy setNeverSignaledSemaphores:v10];
  }

  v11 = selfCopy;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)addDiagnostics:(id)diagnostics thenThrowException:(id)exception
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, diagnostics);
  v29 = 0;
  objc_storeStrong(&v29, exception);
  setupMethod = [(BuddyDiagnosticsThreadDecorator *)selfCopy setupMethod];
  intent = [(BuddySetupMethod *)setupMethod intent];
  runState = [(BuddyDiagnosticsThreadDecorator *)selfCopy runState];
  hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];
  flowItemDispositionProvider = [(BuddyDiagnosticsThreadDecorator *)selfCopy flowItemDispositionProvider];
  preferredDispositions = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider preferredDispositions];
  fundamentalFlowStartupProvider = [(BuddyDiagnosticsThreadDecorator *)selfCopy fundamentalFlowStartupProvider];
  startupCause = [(BuddyFundamentalFlowStartupProvider *)fundamentalFlowStartupProvider startupCause];
  v13 = [NSString stringWithFormat:@"purplebuddydiagnostics.%lu.%d.%lu.%lu.%@", intent, hasCompletedInitialRun, preferredDispositions, startupCause, location[0]];
  v14 = v13;
  uTF8String = [(NSString *)v13 UTF8String];
  v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v28 = dispatch_queue_create(uTF8String, v16);

  v27 = dispatch_semaphore_create(0);
  neverSignaledSemaphores = [(BuddyDiagnosticsThreadDecorator *)selfCopy neverSignaledSemaphores];
  objc_sync_enter(neverSignaledSemaphores);
  neverSignaledSemaphores2 = [(BuddyDiagnosticsThreadDecorator *)selfCopy neverSignaledSemaphores];
  [(NSMutableArray *)neverSignaledSemaphores2 addObject:v27];

  objc_sync_exit(neverSignaledSemaphores);
  v26 = dispatch_semaphore_create(0);
  block = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_1001A8228;
  v23 = &unk_10032B838;
  v24 = v26;
  v25 = v27;
  dispatch_async(v28, &block);
  dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  [(BuddyDiagnosticsThreadDecorator *)selfCopy _throwWithException:v29];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)countOfAllDiagnostics
{
  neverSignaledSemaphores = [(BuddyDiagnosticsThreadDecorator *)self neverSignaledSemaphores];
  objc_sync_enter(neverSignaledSemaphores);
  neverSignaledSemaphores2 = [(BuddyDiagnosticsThreadDecorator *)self neverSignaledSemaphores];
  v4 = [(NSMutableArray *)neverSignaledSemaphores2 count];

  objc_sync_exit(neverSignaledSemaphores);
  return v4;
}

- (void)removeAllDiagnostics
{
  selfCopy = self;
  v13 = a2;
  neverSignaledSemaphores = [(BuddyDiagnosticsThreadDecorator *)self neverSignaledSemaphores];
  objc_sync_enter(neverSignaledSemaphores);
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  neverSignaledSemaphores2 = [(BuddyDiagnosticsThreadDecorator *)selfCopy neverSignaledSemaphores];
  v4 = [(NSMutableArray *)neverSignaledSemaphores2 countByEnumeratingWithState:&v8 objects:v15 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(neverSignaledSemaphores2);
        }

        dsema = *(*(&v8 + 1) + 8 * i);
        dispatch_semaphore_signal(dsema);
      }

      v4 = [(NSMutableArray *)neverSignaledSemaphores2 countByEnumeratingWithState:&v8 objects:v15 count:16];
    }

    while (v4);
  }

  neverSignaledSemaphores3 = [(BuddyDiagnosticsThreadDecorator *)selfCopy neverSignaledSemaphores];
  [(NSMutableArray *)neverSignaledSemaphores3 removeAllObjects];

  objc_sync_exit(neverSignaledSemaphores);
}

- (void)overrideThrowExceptionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  if (os_variant_has_internal_ui())
  {
    oslog = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v3, v4, "Custom exception handler set", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyDiagnosticsThreadDecorator *)selfCopy setCustomExceptionHandler:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)_throwWithException:(id)exception
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, exception);
  v6 = 0;
  v3 = 0;
  if (os_variant_has_internal_ui())
  {
    customExceptionHandler = [(BuddyDiagnosticsThreadDecorator *)selfCopy customExceptionHandler];
    v6 = 1;
    v3 = customExceptionHandler != 0;
  }

  if (v6)
  {
  }

  if (!v3)
  {
    objc_exception_throw(location[0]);
  }

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Custom exception handler called with: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  customExceptionHandler2 = [(BuddyDiagnosticsThreadDecorator *)selfCopy customExceptionHandler];
  customExceptionHandler2[2](customExceptionHandler2, location[0]);

  objc_storeStrong(location, 0);
}

@end