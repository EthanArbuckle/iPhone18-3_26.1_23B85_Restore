@interface JSABridge
+ (JSABridge)sharedInstance;
- (JSABridge)init;
- (JSABridgeDataSource)dataSource;
- (JSABridgeTemplateBundleRegistering)templateBundleRegistrar;
- (JSAEnvironment)environment;
- (void)bootstrapWithObjectRegistrations:(id)registrations;
- (void)checkForUpgradeWithCompletion:(id)completion;
- (void)enqueueBlock:(id)block file:(id)file line:(int64_t)line;
- (void)enqueueBlockForInitialLaunch:(id)launch file:(id)file line:(int64_t)line;
- (void)enqueueBlockPrefersSync:(id)sync file:(id)file line:(int64_t)line;
- (void)enqueueManagedValueCall:(id)call arguments:(id)arguments file:(id)file line:(int64_t)line;
- (void)enqueueManagedValueInvocation:(id)invocation method:(id)method arguments:(id)arguments file:(id)file line:(int64_t)line;
- (void)enqueueValueCall:(id)call arguments:(id)arguments file:(id)file line:(int64_t)line;
- (void)enqueueValueInvocation:(id)invocation method:(id)method arguments:(id)arguments file:(id)file line:(int64_t)line;
- (void)initializeEnvironmentWithDataSource:(id)source completion:(id)completion;
- (void)setupWithPackage:(id)package completion:(id)completion;
- (void)startProvisioningPackage;
- (void)upgradePackage:(id)package completion:(id)completion;
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
  block[4] = self;
  if (qword_CC180 != -1)
  {
    dispatch_once(&qword_CC180, block);
  }

  v2 = qword_CC188;

  return v2;
}

- (void)bootstrapWithObjectRegistrations:(id)registrations
{
  registrationsCopy = registrations;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSBundle mainBundle];
    bundleIdentifier = [v6 bundleIdentifier];
    *buf = 138543362;
    v13 = bundleIdentifier;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "JSABridge bootstrapping for %{public}@", buf, 0xCu);
  }

  bootstrapQueue = self->_bootstrapQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1EF78;
  v10[3] = &unk_B2128;
  v10[4] = self;
  v11 = registrationsCopy;
  v9 = registrationsCopy;
  dispatch_sync(bootstrapQueue, v10);
}

- (void)initializeEnvironmentWithDataSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  +[JSAMetricsAppLaunchEvent markJSBootstrapStartTime];
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSBundle mainBundle];
    bundleIdentifier = [v9 bundleIdentifier];
    *buf = 138543362;
    v23 = bundleIdentifier;
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

  [(JSABridge *)self setDataSource:sourceCopy];
  v13 = [sourceCopy windowProviderForBridge:self];
  v14 = [[JSAWindowManager alloc] initWithWindowProvider:v13];
  [(JSABridge *)self setWindowManager:v14];

  v15 = objc_opt_new();
  [(JSABridge *)self setPackagePromise:v15];

  bootstrapQueue = self->_bootstrapQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F220;
  block[3] = &unk_B3308;
  v20 = sourceCopy;
  v21 = completionCopy;
  block[4] = self;
  v17 = sourceCopy;
  v18 = completionCopy;
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

  launchPackageProvisioner = [(JSABridge *)self launchPackageProvisioner];
  [launchPackageProvisioner provisionWithCompletionHandler:&stru_B3348];
}

- (void)checkForUpgradeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[JSAPackageProvisioner alloc] initWithLaunching:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F678;
  v7[3] = &unk_B3370;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(JSAPackageProvisioner *)v5 provisionWithCompletionHandler:v7];
}

- (void)upgradePackage:(id)package completion:(id)completion
{
  packageCopy = package;
  completionCopy = completion;
  if (packageCopy)
  {
    v8 = packageCopy;
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      version = [v8 version];
      *buf = 136446466;
      v23 = "[JSABridge upgradePackage:completion:]";
      v24 = 2114;
      v25 = version;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s upgrading to given package with version %{public}@", buf, 0x16u);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1FB74;
    v19[3] = &unk_B2728;
    v20 = v8;
    v21 = completionCopy;
    v11 = completionCopy;
    v12 = v8;
    [(JSABridge *)self setupWithPackage:v12 completion:v19];

    v13 = v20;
  }

  else
  {
    v14 = JSALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      pendingPackageVersion = [(JSABridge *)self pendingPackageVersion];
      *buf = 136446466;
      v23 = "[JSABridge upgradePackage:completion:]";
      v24 = 2114;
      v25 = pendingPackageVersion;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s upgrading to pending package with last known version %{public}@", buf, 0x16u);
    }

    v12 = [[JSAPackageProvisioner alloc] initWithLaunching:0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1FC70;
    v17[3] = &unk_B3370;
    v17[4] = self;
    v18 = completionCopy;
    v16 = completionCopy;
    [(JSAPackageProvisioner *)v12 provisionWithCompletionHandler:v17];
    v13 = v18;
  }
}

- (void)setupWithPackage:(id)package completion:(id)completion
{
  packageCopy = package;
  completionCopy = completion;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = packageCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "JSABridge loadScriptFromPackage: %@", buf, 0xCu);
  }

  [(JSABridge *)self setIsLoadingScript:1];
  currentPackage = [(JSABridge *)self currentPackage];

  if (currentPackage)
  {
    packagePromise2 = [AMSPromise promiseWithResult:packageCopy];
    [(JSABridge *)self setPackagePromise:packagePromise2];
  }

  else
  {
    packagePromise = [(JSABridge *)self packagePromise];
    isFinished = [packagePromise isFinished];

    if (isFinished)
    {
      goto LABEL_8;
    }

    packagePromise2 = [(JSABridge *)self packagePromise];
    [packagePromise2 finishWithResult:packageCopy];
  }

LABEL_8:
  [(JSABridge *)self setCurrentPackage:packageCopy];
  isScriptLoaded = [(JSABridge *)self isScriptLoaded];
  if (isScriptLoaded)
  {
    dispatch_async(&_dispatch_main_q, &stru_B3390);
  }

  v14 = objc_alloc_init(AMSPromise);
  [(JSABridge *)self setTemplateRegistrationPromise:v14];
  templateBundleRegistrar = [(JSABridge *)self templateBundleRegistrar];
  if (!templateBundleRegistrar)
  {
    v16 = JSALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_82D6C();
    }
  }

  if (isScriptLoaded)
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
  v19 = packageCopy;
  v28 = v19;
  v29 = v14;
  v20 = v14;
  dispatch_async(v18, block);

  environment = [(JSABridge *)self environment];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_202F8;
  v24[3] = &unk_B33B8;
  v24[4] = self;
  v25 = v19;
  v26 = completionCopy;
  v22 = completionCopy;
  v23 = v19;
  [environment loadScriptFromPackage:v23 completion:v24];
}

- (void)enqueueBlock:(id)block file:(id)file line:(int64_t)line
{
  blockCopy = block;
  fileCopy = file;
  if (blockCopy)
  {
    v10 = JSALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(blockCopy);
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = fileCopy;
      v18 = 2048;
      lineCopy = line;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue block '%{public}@' from %{public}@:%li", &v14, 0x20u);
    }

    v12 = [[JSAPendingExecutionRecord alloc] initWithBlock:blockCopy];
    generalExecutionRecordQueue = [(JSABridge *)self generalExecutionRecordQueue];
    [generalExecutionRecordQueue enqueueRecord:v12];

    sub_20480(self, 0);
  }
}

- (void)enqueueBlockPrefersSync:(id)sync file:(id)file line:(int64_t)line
{
  syncCopy = sync;
  fileCopy = file;
  if (syncCopy)
  {
    v10 = JSALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(syncCopy);
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = fileCopy;
      v18 = 2048;
      lineCopy = line;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue block sync '%{public}@' from %{public}@:%li", &v14, 0x20u);
    }

    v12 = [[JSAPendingExecutionRecord alloc] initWithBlock:syncCopy];
    generalExecutionRecordQueue = [(JSABridge *)self generalExecutionRecordQueue];
    [generalExecutionRecordQueue enqueueRecord:v12];

    sub_20480(self, 1);
  }
}

- (void)enqueueBlockForInitialLaunch:(id)launch file:(id)file line:(int64_t)line
{
  launchCopy = launch;
  fileCopy = file;
  if (launchCopy)
  {
    v10 = JSALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(launchCopy);
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = fileCopy;
      v21 = 2048;
      lineCopy = line;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue block for initial launch '%{public}@' from %{public}@:%li", &v17, 0x20u);
    }

    launchExecutionRecordQueue = [(JSABridge *)self launchExecutionRecordQueue];
    v13 = launchExecutionRecordQueue;
    if (launchExecutionRecordQueue)
    {
      generalExecutionRecordQueue = launchExecutionRecordQueue;
    }

    else
    {
      generalExecutionRecordQueue = [(JSABridge *)self generalExecutionRecordQueue];
    }

    v15 = generalExecutionRecordQueue;

    v16 = [[JSAPendingExecutionRecord alloc] initWithBlock:launchCopy];
    [v15 enqueueRecord:v16];
    sub_20480(self, 0);
  }
}

- (void)enqueueValueCall:(id)call arguments:(id)arguments file:(id)file line:(int64_t)line
{
  callCopy = call;
  argumentsCopy = arguments;
  fileCopy = file;
  if (callCopy)
  {
    v13 = JSALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134349826;
      v17 = callCopy;
      v18 = 2048;
      v19 = [argumentsCopy count];
      v20 = 2114;
      v21 = fileCopy;
      v22 = 2048;
      lineCopy = line;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue value call '%{public}p' with %lu args from %{public}@:%li", &v16, 0x2Au);
    }

    v14 = [[JSAPendingExecutionRecord alloc] initWithValue:callCopy method:0 arguments:argumentsCopy type:2];
    generalExecutionRecordQueue = [(JSABridge *)self generalExecutionRecordQueue];
    [generalExecutionRecordQueue enqueueRecord:v14];

    sub_20480(self, 0);
  }
}

- (void)enqueueValueInvocation:(id)invocation method:(id)method arguments:(id)arguments file:(id)file line:(int64_t)line
{
  invocationCopy = invocation;
  methodCopy = method;
  argumentsCopy = arguments;
  fileCopy = file;
  if (invocationCopy)
  {
    v16 = JSALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134350082;
      v20 = invocationCopy;
      v21 = 2114;
      v22 = methodCopy;
      v23 = 2048;
      v24 = [argumentsCopy count];
      v25 = 2114;
      v26 = fileCopy;
      v27 = 2048;
      lineCopy = line;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue value invocation '%{public}p' for '%{public}@' with %lu args from %{public}@:%li", &v19, 0x34u);
    }

    v17 = [[JSAPendingExecutionRecord alloc] initWithValue:invocationCopy method:methodCopy arguments:argumentsCopy type:3];
    generalExecutionRecordQueue = [(JSABridge *)self generalExecutionRecordQueue];
    [generalExecutionRecordQueue enqueueRecord:v17];

    sub_20480(self, 0);
  }
}

- (void)enqueueManagedValueCall:(id)call arguments:(id)arguments file:(id)file line:(int64_t)line
{
  callCopy = call;
  argumentsCopy = arguments;
  fileCopy = file;
  if (callCopy)
  {
    v13 = JSALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134349826;
      v17 = callCopy;
      v18 = 2048;
      v19 = [argumentsCopy count];
      v20 = 2114;
      v21 = fileCopy;
      v22 = 2048;
      lineCopy = line;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue managed value call '%{public}p' with %lu args from %{public}@:%li", &v16, 0x2Au);
    }

    v14 = [[JSAPendingExecutionRecord alloc] initWithManagedValue:callCopy method:0 arguments:argumentsCopy type:2];
    generalExecutionRecordQueue = [(JSABridge *)self generalExecutionRecordQueue];
    [generalExecutionRecordQueue enqueueRecord:v14];

    sub_20480(self, 0);
  }
}

- (void)enqueueManagedValueInvocation:(id)invocation method:(id)method arguments:(id)arguments file:(id)file line:(int64_t)line
{
  invocationCopy = invocation;
  methodCopy = method;
  argumentsCopy = arguments;
  fileCopy = file;
  if (invocationCopy)
  {
    v16 = JSALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134350082;
      v20 = invocationCopy;
      v21 = 2114;
      v22 = methodCopy;
      v23 = 2048;
      v24 = [argumentsCopy count];
      v25 = 2114;
      v26 = fileCopy;
      v27 = 2048;
      lineCopy = line;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "JSABridge enqueue managed value invocation '%{public}p' for '%{public}@' with %lu args from %{public}@:%li", &v19, 0x34u);
    }

    v17 = [[JSAPendingExecutionRecord alloc] initWithManagedValue:invocationCopy method:methodCopy arguments:argumentsCopy type:3];
    generalExecutionRecordQueue = [(JSABridge *)self generalExecutionRecordQueue];
    [generalExecutionRecordQueue enqueueRecord:v17];

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