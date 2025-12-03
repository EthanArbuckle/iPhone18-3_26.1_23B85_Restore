@interface JSAEnvironment
+ (void)_exposeObjectsAndClassesToContext:(id)context;
- (JSAEnvironment)init;
- (id)appForOwnership;
- (void)dealloc;
- (void)loadScript:(id)script name:(id)name version:(id)version isBundled:(BOOL)bundled completion:(id)completion;
- (void)loadScriptFromPackage:(id)package completion:(id)completion;
- (void)registerObjects:(id)objects;
@end

@implementation JSAEnvironment

- (JSAEnvironment)init
{
  v19.receiver = self;
  v19.super_class = JSAEnvironment;
  v2 = [(JSAEnvironment *)&v19 init];
  v3 = v2;
  if (v2)
  {
    appVersion = v2->_appVersion;
    v2->_appVersion = @"undefined";

    atomic_store(0, &v3->_exceptionHandlerReentrantCount);
    v5 = [[JSAThread alloc] initWithName:@"com.apple.iBooks.JSAThread"];
    thread = v3->_thread;
    v3->_thread = v5;

    objc_initWeak(&location, v3);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_56A4;
    v16 = &unk_B2320;
    objc_copyWeak(&v17, &location);
    v7 = objc_retainBlock(&v13);
    v8 = [NSNotificationCenter defaultCenter:v13];
    v9 = [v8 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v7];
    sub_578C(v3);
    if (MGGetBoolAnswer())
    {
      v10 = [[BUOSStateHandler alloc] initWithTitle:@"ScriptingLocalStorage" block:&stru_B2360];
      stateDumpHandle = v3->_stateDumpHandle;
      v3->_stateDumpHandle = v10;
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  value = [(JSManagedValue *)self->_nativeJSObject value];
  context = [value context];
  virtualMachine = [context virtualMachine];
  [virtualMachine removeManagedReference:self->_nativeJSObject withOwner:self];

  v7.receiver = self;
  v7.super_class = JSAEnvironment;
  [(JSAEnvironment *)&v7 dealloc];
}

- (id)appForOwnership
{
  context = [(JSAEnvironment *)self context];
  v4 = [context objectForKeyedSubscript:@"App"];

  v5 = [v4 toObjectOfClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    globalObject = v5;
  }

  else
  {
    v8 = JSALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_7F048(self, v8);
    }

    if (+[JSADevice isInternalBuild])
    {
      context2 = [(JSAEnvironment *)self context];
      BUReportAssertionFailureWithMessage();

      BUCrashBreakpoint();
      result = BUIsRunningTests();
      if ((result & 1) == 0)
      {
        __break(1u);
        return result;
      }

      context3 = [(JSAEnvironment *)self context];
      BUCrashFinalThrow();
    }

    context4 = [(JSAEnvironment *)self context];
    globalObject = [context4 globalObject];
  }

  return globalObject;
}

- (void)loadScriptFromPackage:(id)package completion:(id)completion
{
  completionCopy = completion;
  packageCopy = package;
  v11 = [packageCopy dataAtPath:@"app.js"];
  nameForJSContext = [packageCopy nameForJSContext];
  version = [packageCopy version];
  isBundled = [packageCopy isBundled];

  [(JSAEnvironment *)self loadScript:v11 name:nameForJSContext version:version isBundled:isBundled completion:completionCopy];
}

- (void)loadScript:(id)script name:(id)name version:(id)version isBundled:(BOOL)bundled completion:(id)completion
{
  scriptCopy = script;
  nameCopy = name;
  versionCopy = version;
  completionCopy = completion;
  v16 = JSALog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "[JSAEnvironment loadScript:name:version:isBundled:completion:]";
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "JSAEnvironment %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  thread = [(JSAEnvironment *)self thread];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_654C;
  v22[3] = &unk_B23D8;
  objc_copyWeak(&v27, buf);
  v18 = scriptCopy;
  v23 = v18;
  v19 = nameCopy;
  v24 = v19;
  v20 = versionCopy;
  v25 = v20;
  bundledCopy = bundled;
  v21 = completionCopy;
  v26 = v21;
  [thread enqueueBlock:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (void)registerObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    thread = [(JSAEnvironment *)self thread];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_6990;
    v6[3] = &unk_B2128;
    v6[4] = self;
    v7 = objectsCopy;
    [thread enqueueBlock:v6];
  }
}

+ (void)_exposeObjectsAndClassesToContext:(id)context
{
  contextCopy = context;
  v4 = JSASignpostExecution();
  v5 = os_signpost_id_generate(v4);

  v6 = JSASignpostExecution();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Expose Objects", "", buf, 2u);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_743C;
  v30[3] = &unk_B2400;
  v8 = objc_alloc_init(JSAFoundation);
  v31 = v8;
  v9 = objc_retainBlock(v30);
  [contextCopy setObject:v9 forKeyedSubscript:@"setInterval"];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_7448;
  v28[3] = &unk_B2428;
  v10 = v8;
  v29 = v10;
  v11 = objc_retainBlock(v28);
  [contextCopy setObject:v11 forKeyedSubscript:@"clearInterval"];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_7454;
  v26[3] = &unk_B2400;
  v12 = v10;
  v27 = v12;
  v13 = objc_retainBlock(v26);
  [contextCopy setObject:v13 forKeyedSubscript:@"setTimeout"];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_7460;
  v24[3] = &unk_B2428;
  v14 = v12;
  v25 = v14;
  v15 = objc_retainBlock(v24);
  [contextCopy setObject:v15 forKeyedSubscript:@"clearTimeout"];

  v16 = [JSValue valueWithNewObjectInContext:contextCopy];
  [contextCopy setObject:v16 forKeyedSubscript:@"native"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"AccountController"];
  [v16 setObject:&stru_B2468 forKeyedSubscript:@"currentPackage"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_74C0;
  v22[3] = &unk_B24E0;
  v17 = contextCopy;
  v23 = v17;
  v18 = objc_retainBlock(v22);
  [v16 setObject:v18 forKeyedSubscript:@"templateRegistrationPromise"];

  [v16 setObject:objc_opt_class() forKeyedSubscript:@"MetricsController"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Store"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Account"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Application"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"AssetRequest"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Base64"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Calendar"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"ColorUtils"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Cookie"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"DateComponentsFormatter"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"DateFormatter"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Device"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"FamilySharing"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Locale"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"OSLog"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Network"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"ParentalApproval"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Persistence"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"PostReviewRequest"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"ProfileBagKeyEntry"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"ProfileBagManager"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Share"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"StoreContentLookupRequest"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"StoreHTTPRequest"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"StoreHTTPResponse"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"Timer"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"URLParser"];
  [v16 setObject:objc_opt_class() forKeyedSubscript:@"UserDefaults"];
  [v16 setObject:&off_BA7D0 forKeyedSubscript:@"nativeAPIVersion"];
  v19 = [NSNumber numberWithBool:_UISolariumEnabled()];
  [v16 setObject:v19 forKeyedSubscript:@"preferRoundedUI"];

  v20 = JSASignpostExecution();
  v21 = v20;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v21, OS_SIGNPOST_INTERVAL_END, v5, "Expose Objects", "", buf, 2u);
  }
}

@end