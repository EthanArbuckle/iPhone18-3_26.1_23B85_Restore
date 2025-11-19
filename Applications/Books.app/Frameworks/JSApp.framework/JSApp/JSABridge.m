@interface JSABridge
+ (JSABridge)sharedInstance;
- (JSABridge)init;
- (JSABridgeDataSource)dataSource;
- (JSABridgeTemplateBundleRegistering)templateBundleRegistrar;
- (JSAEnvironment)environment;
- (void)bootstrapWithObjectRegistrations:(id)a3;
- (void)checkForUpgradeWithCompletion:(id)a3;
- (void)enqueueBlock:(id)a3 file:(id)a4 line:(int64_t)a5;
- (void)enqueueBlockForInitialLaunch:(id)a3 file:(id)a4 line:(int64_t)a5;
- (void)enqueueBlockPrefersSync:(id)a3 file:(id)a4 line:(int64_t)a5;
- (void)enqueueManagedValueCall:(id)a3 arguments:(id)a4 file:(id)a5 line:(int64_t)a6;
- (void)enqueueManagedValueInvocation:(id)a3 method:(id)a4 arguments:(id)a5 file:(id)a6 line:(int64_t)a7;
- (void)enqueueValueCall:(id)a3 arguments:(id)a4 file:(id)a5 line:(int64_t)a6;
- (void)enqueueValueInvocation:(id)a3 method:(id)a4 arguments:(id)a5 file:(id)a6 line:(int64_t)a7;
- (void)initializeEnvironmentWithDataSource:(id)a3 completion:(id)a4;
- (void)setupWithPackage:(id)a3 completion:(id)a4;
- (void)startProvisioningPackage;
- (void)upgradePackage:(id)a3 completion:(id)a4;
@end

@implementation JSABridge

- (JSABridge)init
{
  v18.receiver = self;
  v18.super_class = JSABridge;
  v2 = [(JSABridge *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("JSABridge.accessQueue", v4);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("JSABridge.accessQueue", v8);
    bootstrapQueue = v2->_bootstrapQueue;
    v2->_bootstrapQueue = v9;

    v11 = objc_alloc_init(JSAPendingExecutionRecordQueue);
    launchExecutionRecordQueue = v2->_launchExecutionRecordQueue;
    v2->_launchExecutionRecordQueue = v11;

    v13 = objc_alloc_init(JSAPendingExecutionRecordQueue);
    generalExecutionRecordQueue = v2->_generalExecutionRecordQueue;
    v2->_generalExecutionRecordQueue = v13;

    v15 = [[JSAPackageProvisioner alloc] initWithLaunching:1 onQueue:v2->_bootstrapQueue];
    launchPackageProvisioner = v2->_launchPackageProvisioner;
    v2->_launchPackageProvisioner = v15;
  }

  return v2;
}

+ (JSABridge)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1EDE4;
  block[3] = &unk_B25E8;
  block[4] = a1;
  if (qword_CC180 != -1)
  {
    dispatch_once(&qword_CC180, block);
  }

  v2 = qword_CC188;

  return v2;
}

- (void)bootstrapWithObjectRegistrations:(id)a3
{
  v4 = a3;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 bundleIdentifier];
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "JSABridge bootstrapping for %{public}@", buf, 0xCu);
  }

  bootstrapQueue = self->_bootstrapQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1EF78;
  v10[3] = &unk_B2128;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_sync(bootstrapQueue, v10);
}

- (void)initializeEnvironmentWithDataSource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[JSAMetricsAppLaunchEvent markJSBootstrapStartTime];
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 bundleIdentifier];
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "JSABridge initializing environment for %{public}@", buf, 0xCu);
  }

  +[JSAHarConfiguration setup];
  v11 = +[NSUserDefaults standardUserDefaults];
  if (![v11 BOOLForKey:@"BKHotReloadEnabled"])
  {
    goto LABEL_6;
  }

  v12 = +[JSADevice isInternalBuild];

  if (v12)
  {
    v11 = +[JSAHotReloadController sharedController];
    [v11 startWithCompletion:0];
LABEL_6:
  }

  [(JSABridge *)self setDataSource:v6];
  v13 = [v6 windowProviderForBridge:self];
  v14 = [[JSAWindowManager alloc] initWithWindowProvider:v13];
  [(JSABridge *)self setWindowManager:v14];

  v15 = objc_opt_new();
  [(JSABridge *)self setPackagePromise:v15];

  bootstrapQueue = self->_bootstrapQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F220;
  block[3] = &unk_B3308;
  v20 = v6;
  v21 = v7;
  block[4] = self;
  v17 = v6;
  v18 = v7;
  dispatch_async(bootstrapQueue, block);
}

- (void)startProvisioningPackage
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Start provisioning package for launch", v5, 2u);
  }

  v4 = [(JSABridge *)self launchPackageProvisioner];
  [v4 provisionWithCompletionHandler:&stru_B3348];
}

- (void)checkForUpgradeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[JSAPackageProvisioner alloc] initWithLaunching:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F678;
  v7[3] = &unk_B3370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(JSAPackageProvisioner *)v5 provisionWithCompletionHandler:v7];
}

- (void)upgradePackage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 version];
      *buf = 136446466;
      v23 = "[JSABridge upgradePackage:completion:]";
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s upgrading to given package with version %{public}@", buf, 0x16u);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1FB74;
    v19[3] = &unk_B2728;
    v20 = v8;
    v21 = v7;
    v11 = v7;
    v12 = v8;
    [(JSABridge *)self setupWithPackage:v12 completion:v19];

    v13 = v20;
  }

  else
  {
    v14 = JSALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(JSABridge *)self pendingPackageVersion];
      *buf = 136446466;
      v23 = "[JSABridge upgradePackage:completion:]";
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s upgrading to pending package with last known version %{public}@", buf, 0x16u);
    }

    v12 = [[JSAPackageProvisioner alloc] initWithLaunching:0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1FC70;
    v17[3] = &unk_B3370;
    v17[4] = self;
    v18 = v7;
    v16 = v7;
    [(JSAPackageProvisioner *)v12 provisionWithCompletionHandler:v17];
    v13 = v18;
  }
}

- (void)setupWithPackage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "JSABridge loadScriptFromPackage: %@", buf, 0xCu);
  }

  [(JSABridge *)self setIsLoadingScript:1];
  v9 = [(JSABridge *)self currentPackage];

  if (v9)
  {
    v10 = [AMSPromise promiseWithResult:v6];
    [(JSABridge *)self setPackagePromise:v10];
  }

  else
  {
    v11 = [(JSABridge *)self packagePromise];
    v12 = [v11 isFinished];

    if (v12)
    {
      goto LABEL_8;
    }

    v10 = [(JSABridge *)self packagePromise];
    [v10 finishWithResult:v6];
  }

LABEL_8:
  [(JSABridge *)self setCurrentPackage:v6];
  v13 = [(JSABridge *)self isScriptLoaded];
  if (v13)
  {
    dispatch_async(&_dispatch_main_q, &stru_B3390);
  }

  v14 = objc_alloc_init(AMSPromise);
  [(JSABridge *)self setTemplateRegistrationPromise:v14];
  v15 = [(JSABridge *)self templateBundleRegistrar];
  if (!v15)
  {
    v16 = JSALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_82D6C();
    }
  }

  if (v13)
  {
    v17 = 25;
  }

  else
  {
    v17 = 33;
  }

  v18 = dispatch_get_global_queue(v17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20280;
  block[3] = &unk_B2638;
  block[4] = self;
  v19 = v6;
  v28 = v19;
  v29 = v14;
  v20 = v14;
  dispatch_async(v18, block);

  v21 = [(JSABridge *)self environment];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_202F8;
  v24[3] = &unk_B33B8;
  v24[4] = self;
  v25 = v19;
  v26 = v7;
  v22 = v7;
  v23 = v19;
  [v21 loadScriptFromPackage:v23 completion:v24];
}

- (void)enqueueBlock:(id)a3 file:(id)a4 line:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = JSALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v8);
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v9;
      v18 = 2048;
      v19 = a5;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue block '%{public}@' from %{public}@:%li", &v14, 0x20u);
    }

    v12 = [[JSAPendingExecutionRecord alloc] initWithBlock:v8];
    v13 = [(JSABridge *)self generalExecutionRecordQueue];
    [v13 enqueueRecord:v12];

    sub_20480(self, 0);
  }
}

- (void)enqueueBlockPrefersSync:(id)a3 file:(id)a4 line:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = JSALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v8);
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v9;
      v18 = 2048;
      v19 = a5;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue block sync '%{public}@' from %{public}@:%li", &v14, 0x20u);
    }

    v12 = [[JSAPendingExecutionRecord alloc] initWithBlock:v8];
    v13 = [(JSABridge *)self generalExecutionRecordQueue];
    [v13 enqueueRecord:v12];

    sub_20480(self, 1);
  }
}

- (void)enqueueBlockForInitialLaunch:(id)a3 file:(id)a4 line:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = JSALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v8);
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v9;
      v21 = 2048;
      v22 = a5;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue block for initial launch '%{public}@' from %{public}@:%li", &v17, 0x20u);
    }

    v12 = [(JSABridge *)self launchExecutionRecordQueue];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [(JSABridge *)self generalExecutionRecordQueue];
    }

    v15 = v14;

    v16 = [[JSAPendingExecutionRecord alloc] initWithBlock:v8];
    [v15 enqueueRecord:v16];
    sub_20480(self, 0);
  }
}

- (void)enqueueValueCall:(id)a3 arguments:(id)a4 file:(id)a5 line:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v13 = JSALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134349826;
      v17 = v10;
      v18 = 2048;
      v19 = [v11 count];
      v20 = 2114;
      v21 = v12;
      v22 = 2048;
      v23 = a6;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue value call '%{public}p' with %lu args from %{public}@:%li", &v16, 0x2Au);
    }

    v14 = [[JSAPendingExecutionRecord alloc] initWithValue:v10 method:0 arguments:v11 type:2];
    v15 = [(JSABridge *)self generalExecutionRecordQueue];
    [v15 enqueueRecord:v14];

    sub_20480(self, 0);
  }
}

- (void)enqueueValueInvocation:(id)a3 method:(id)a4 arguments:(id)a5 file:(id)a6 line:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    v16 = JSALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134350082;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      v23 = 2048;
      v24 = [v14 count];
      v25 = 2114;
      v26 = v15;
      v27 = 2048;
      v28 = a7;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue value invocation '%{public}p' for '%{public}@' with %lu args from %{public}@:%li", &v19, 0x34u);
    }

    v17 = [[JSAPendingExecutionRecord alloc] initWithValue:v12 method:v13 arguments:v14 type:3];
    v18 = [(JSABridge *)self generalExecutionRecordQueue];
    [v18 enqueueRecord:v17];

    sub_20480(self, 0);
  }
}

- (void)enqueueManagedValueCall:(id)a3 arguments:(id)a4 file:(id)a5 line:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v13 = JSALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134349826;
      v17 = v10;
      v18 = 2048;
      v19 = [v11 count];
      v20 = 2114;
      v21 = v12;
      v22 = 2048;
      v23 = a6;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue managed value call '%{public}p' with %lu args from %{public}@:%li", &v16, 0x2Au);
    }

    v14 = [[JSAPendingExecutionRecord alloc] initWithManagedValue:v10 method:0 arguments:v11 type:2];
    v15 = [(JSABridge *)self generalExecutionRecordQueue];
    [v15 enqueueRecord:v14];

    sub_20480(self, 0);
  }
}

- (void)enqueueManagedValueInvocation:(id)a3 method:(id)a4 arguments:(id)a5 file:(id)a6 line:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    v16 = JSALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134350082;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      v23 = 2048;
      v24 = [v14 count];
      v25 = 2114;
      v26 = v15;
      v27 = 2048;
      v28 = a7;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue managed value invocation '%{public}p' for '%{public}@' with %lu args from %{public}@:%li", &v19, 0x34u);
    }

    v17 = [[JSAPendingExecutionRecord alloc] initWithManagedValue:v12 method:v13 arguments:v14 type:3];
    v18 = [(JSABridge *)self generalExecutionRecordQueue];
    [v18 enqueueRecord:v17];

    sub_20480(self, 0);
  }
}

- (JSAEnvironment)environment
{
  if (qword_CC190 != -1)
  {
    sub_82E8C();
  }

  v3 = qword_CC198;

  return v3;
}

- (JSABridgeTemplateBundleRegistering)templateBundleRegistrar
{
  WeakRetained = objc_loadWeakRetained(&self->_templateBundleRegistrar);

  return WeakRetained;
}

- (JSABridgeDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end