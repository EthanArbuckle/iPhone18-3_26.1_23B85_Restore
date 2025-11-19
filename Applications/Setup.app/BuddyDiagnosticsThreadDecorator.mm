@interface BuddyDiagnosticsThreadDecorator
- (BuddyDiagnosticsThreadDecorator)initWithSetupMethod:(id)a3 runState:(id)a4 flowItemDispositionProvider:(id)a5 fundamentalFlowStartupProvider:(id)a6;
- (unint64_t)countOfAllDiagnostics;
- (void)_throwWithException:(id)a3;
- (void)addDiagnostics:(id)a3 thenThrowException:(id)a4;
- (void)overrideThrowExceptionHandler:(id)a3;
- (void)removeAllDiagnostics;
@end

@implementation BuddyDiagnosticsThreadDecorator

- (BuddyDiagnosticsThreadDecorator)initWithSetupMethod:(id)a3 runState:(id)a4 flowItemDispositionProvider:(id)a5 fundamentalFlowStartupProvider:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v9 = v18;
  v18 = 0;
  v13.receiver = v9;
  v13.super_class = BuddyDiagnosticsThreadDecorator;
  v18 = [(BuddyDiagnosticsThreadDecorator *)&v13 init];
  objc_storeStrong(&v18, v18);
  if (v18)
  {
    [v18 setSetupMethod:location[0]];
    [v18 setRunState:v16];
    [v18 setFlowItemDispositionProvider:v15];
    [v18 setFundamentalFlowStartupProvider:v14];
    v10 = objc_alloc_init(NSMutableArray);
    [v18 setNeverSignaledSemaphores:v10];
  }

  v11 = v18;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v11;
}

- (void)addDiagnostics:(id)a3 thenThrowException:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v5 = [(BuddyDiagnosticsThreadDecorator *)v31 setupMethod];
  v6 = [(BuddySetupMethod *)v5 intent];
  v7 = [(BuddyDiagnosticsThreadDecorator *)v31 runState];
  v8 = [(BYRunState *)v7 hasCompletedInitialRun];
  v9 = [(BuddyDiagnosticsThreadDecorator *)v31 flowItemDispositionProvider];
  v10 = [(BuddyFlowItemDispositionProvider *)v9 preferredDispositions];
  v11 = [(BuddyDiagnosticsThreadDecorator *)v31 fundamentalFlowStartupProvider];
  v12 = [(BuddyFundamentalFlowStartupProvider *)v11 startupCause];
  v13 = [NSString stringWithFormat:@"purplebuddydiagnostics.%lu.%d.%lu.%lu.%@", v6, v8, v10, v12, location[0]];
  v14 = v13;
  v15 = [(NSString *)v13 UTF8String];
  v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v28 = dispatch_queue_create(v15, v16);

  v27 = dispatch_semaphore_create(0);
  v17 = [(BuddyDiagnosticsThreadDecorator *)v31 neverSignaledSemaphores];
  objc_sync_enter(v17);
  v18 = [(BuddyDiagnosticsThreadDecorator *)v31 neverSignaledSemaphores];
  [(NSMutableArray *)v18 addObject:v27];

  objc_sync_exit(v17);
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
  [(BuddyDiagnosticsThreadDecorator *)v31 _throwWithException:v29];
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
  v2 = [(BuddyDiagnosticsThreadDecorator *)self neverSignaledSemaphores];
  objc_sync_enter(v2);
  v3 = [(BuddyDiagnosticsThreadDecorator *)self neverSignaledSemaphores];
  v4 = [(NSMutableArray *)v3 count];

  objc_sync_exit(v2);
  return v4;
}

- (void)removeAllDiagnostics
{
  v14 = self;
  v13 = a2;
  v2 = [(BuddyDiagnosticsThreadDecorator *)self neverSignaledSemaphores];
  objc_sync_enter(v2);
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v3 = [(BuddyDiagnosticsThreadDecorator *)v14 neverSignaledSemaphores];
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v15 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        dsema = *(*(&v8 + 1) + 8 * i);
        dispatch_semaphore_signal(dsema);
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = [(BuddyDiagnosticsThreadDecorator *)v14 neverSignaledSemaphores];
  [(NSMutableArray *)v7 removeAllObjects];

  objc_sync_exit(v2);
}

- (void)overrideThrowExceptionHandler:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
    [(BuddyDiagnosticsThreadDecorator *)v9 setCustomExceptionHandler:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)_throwWithException:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  v3 = 0;
  if (os_variant_has_internal_ui())
  {
    v7 = [(BuddyDiagnosticsThreadDecorator *)v9 customExceptionHandler];
    v6 = 1;
    v3 = v7 != 0;
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
  v4 = [(BuddyDiagnosticsThreadDecorator *)v9 customExceptionHandler];
  v4[2](v4, location[0]);

  objc_storeStrong(location, 0);
}

@end