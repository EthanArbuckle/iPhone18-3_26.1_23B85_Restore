@interface ASDUpdatesService
+ (BOOL)areAllAppsAuthorizedForAutomaticUpdates;
+ (BOOL)isAutomaticUpdateAuthorizationEnabled;
+ (BOOL)isAutomaticUpdateAuthorizationRequiredWhenEnabledForAppWithRecord:(id)a3;
+ (id)defaultService;
+ (id)interface;
+ (id)registerBadgeCountNotificationBlock:(id)a3;
+ (void)badgeCount;
- (ASDUpdatesService)init;
- (BOOL)autoUpdateEnabled;
- (BOOL)confirmAgentRequestedUpdateAll;
- (id)_failedJobResultsForBundleIDs:(uint64_t)a1;
- (id)reloadFromServer;
- (void)dealloc;
- (void)getManagedUpdatesWithCompletionBlock:(id)a3;
- (void)getMetricsWithCompletionBlock:(id)a3;
- (void)getUpdateMetricsEventsWithCompletionBlock:(id)a3;
- (void)getUpdatesIncludingMetricsWithCompletionBlock:(id)a3;
- (void)getUpdatesWithCompletionBlock:(id)a3;
- (void)hideApplicationBadgeForPendingUpdates;
- (void)refreshUpdateCountWithCompletionBlock:(id)a3;
- (void)refreshUpdateForApp:(int64_t)a3;
- (void)refreshUpdatesWithCompletionBlock:(id)a3 completionBlock:(id)a4;
- (void)reloadForSettingsFromServerWithCompletionBlock:(id)a3;
- (void)reloadFromServerInBackgroundWithCompletionBlock:(id)a3;
- (void)reloadFromServerWithCompletionBlock:(id)a3;
- (void)reloadManagedUpdatesWithCompletionBlock:(id)a3;
- (void)requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle:(id)a3 completion:(id)a4;
- (void)setAutoUpdateEnabled:(BOOL)a3;
- (void)showApplicationBadgeForPendingUpdates;
- (void)updateAllWithCompletionBlock:(id)a3;
- (void)updateAllWithJobResultsCompletionBlock:(id)a3;
- (void)updateAllWithOrder:(id)a3 completionBlock:(id)a4;
@end

@implementation ASDUpdatesService

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A3B8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getManagedUpdatesWithReplyHandler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_getUpdatesWithReplyHandler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_reloadFromServerWithReplyHandler_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_reloadManagedUpdatesWithReplyHandler_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v2 setClasses:v17 forSelector:sel_updateAllWithOrder_replyHandler_ argumentIndex:1 ofReply:1];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v2 setClasses:v20 forSelector:sel_reloadFromServerInBackgroundWithCompletionBlock_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v2 setClasses:v23 forSelector:sel_getUpdateMetricsEventsWithReplyHandler_ argumentIndex:0 ofReply:1];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v2 setClasses:v26 forSelector:sel_getUpdatesIncludingMetricsWithReplyHandler_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [v2 setClasses:v29 forSelector:sel_reloadForSettingsFromServerWithReplyHandler_ argumentIndex:0 ofReply:1];

  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  [v2 setClasses:v32 forSelector:sel_updateAllGettingJobResultsWithReplyHandler_ argumentIndex:1 ofReply:1];

  return v2;
}

- (ASDUpdatesService)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = v3;
  if (self && (v17.receiver = self, v17.super_class = ASDUpdatesService, (v5 = [(ASDUpdatesService *)&v17 init]) != 0))
  {
    v6 = v5;
    objc_storeStrong(&v5->_serviceBroker, v3);

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.appstored.ASDUpdatesService.access", v7);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.appstored.ASDUpdatesService.callout", v10);
    calloutQueue = v6->_calloutQueue;
    v6->_calloutQueue = v11;

    objc_initWeak(&v17.receiver, v6);
    v6->_storeChangedNotificationToken = -1;
    v13 = dispatch_get_global_queue(21, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __25__ASDUpdatesService_init__block_invoke;
    handler[3] = &unk_1E7CDC170;
    objc_copyWeak(&v16, &v17.receiver);
    notify_register_dispatch("com.apple.appstored.updatesstorechanged", &v6->_storeChangedNotificationToken, v13, handler);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v17.receiver);
  }

  else
  {

    return 0;
  }

  return v6;
}

void __25__ASDUpdatesService_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"ASDSoftwareUpdatesStoreDidChangeNotification" object:WeakRetained];
}

- (void)dealloc
{
  storeChangedNotificationToken = self->_storeChangedNotificationToken;
  if (storeChangedNotificationToken != -1)
  {
    notify_cancel(storeChangedNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = ASDUpdatesService;
  [(ASDUpdatesService *)&v4 dealloc];
}

+ (id)defaultService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__ASDUpdatesService_defaultService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED90D560 != -1)
  {
    dispatch_once(&qword_1ED90D560, block);
  }

  v2 = _MergedGlobals_39;

  return v2;
}

uint64_t __35__ASDUpdatesService_defaultService__block_invoke(uint64_t a1)
{
  _MergedGlobals_39 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

+ (id)registerBadgeCountNotificationBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__ASDUpdatesService_registerBadgeCountNotificationBlock___block_invoke;
    v8[3] = &unk_1E7CDCD20;
    v9 = v4;
    v10 = a1;
    notify_register_dispatch("com.apple.appstored.updatesstorechanged", &registerBadgeCountNotificationBlock__s_storeChangedNotificationToken, v5, v8);
  }

  else
  {
    notify_cancel(registerBadgeCountNotificationBlock__s_storeChangedNotificationToken);
    registerBadgeCountNotificationBlock__s_storeChangedNotificationToken = -1;
  }

  v6 = +[ASDUpdatesService badgeCount];

  return v6;
}

void __57__ASDUpdatesService_registerBadgeCountNotificationBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = +[ASDUpdatesService badgeCount];
  (*(v2 + 16))(v2, v3);
}

+ (void)badgeCount
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"BadgeCount", @"com.apple.appstored");
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F3033320;
  }

  v3 = v2;

  return v2;
}

+ (BOOL)isAutomaticUpdateAuthorizationEnabled
{
  if (_os_feature_enabled_impl() & 1) != 0 || (ct_green_tea_logging_enabled())
  {
    v2 = MGGetStringAnswer();
    v3 = [v2 caseInsensitiveCompare:@"CH"];

    if (v3)
    {
      v4 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v9 = 0;
        v5 = "This region does not have automatic update authorization";
        v6 = &v9;
LABEL_12:
        _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
      }
    }

    else
    {
      if (MGGetBoolAnswer())
      {
        return 1;
      }

      v4 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v8 = 0;
        v5 = "This device does not have cellular data capabilities.";
        v6 = &v8;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v5 = "Feature flag not enabled";
      v6 = &v10;
      goto LABEL_12;
    }
  }

  return 0;
}

+ (BOOL)isAutomaticUpdateAuthorizationRequiredWhenEnabledForAppWithRecord:(id)a3
{
  v3 = [a3 infoDictionary];
  v4 = [v3 objectForKey:@"NSAppNeedsAutoUpdateConsent" ofClass:objc_opt_class()];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (BOOL)areAllAppsAuthorizedForAutomaticUpdates
{
  v37 = *MEMORY[0x1E69E9840];
  if (_autoUpdatesEnabled())
  {
    if (+[ASDUpdatesService isAutomaticUpdateAuthorizationEnabled])
    {
      v2 = CFPreferencesCopyValue(@"AutomaticUpdateAuthorizations", @"com.apple.appstored", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __60__ASDUpdatesService_areAllAppsAuthorizedForAutomaticUpdates__block_invoke;
      v33[3] = &unk_1E7CDCD48;
      v3 = v2;
      v34 = v3;
      v4 = MEMORY[0x1B8CBC4F0](v33);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v5 = [v3 allKeys];
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:7];
      [v6 addObjectsFromArray:&unk_1F30333C8];
      [v6 addObjectsFromArray:v5];
      v7 = [v6 copy];

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v36 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v30;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v30 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v29 + 1) + 8 * i);
            v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v12 allowPlaceholder:0 error:0];
            if (v13 && !(v4)[2](v4, v12, v13))
            {

              LOBYTE(v21) = 0;
              goto LABEL_27;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v29 objects:v36 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v14 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1B8220000, v14, OS_LOG_TYPE_DEBUG, "Checking all apps", buf, 2u);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = [MEMORY[0x1E69635F8] enumeratorWithOptions:{0, 0}];
      v15 = [v7 countByEnumeratingWithState:&v24 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
LABEL_16:
        v18 = 0;
        while (1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v7);
          }

          v19 = *(*(&v24 + 1) + 8 * v18);
          v20 = [v19 bundleIdentifier];
          v21 = (v4)[2](v4, v20, v19);

          if (!v21)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v7 countByEnumeratingWithState:&v24 objects:v35 count:16];
            LOBYTE(v21) = 1;
            if (v16)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }

      else
      {
        LOBYTE(v21) = 1;
      }

LABEL_27:
    }

    else
    {
      LOBYTE(v21) = 1;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t __60__ASDUpdatesService_areAllAppsAuthorizedForAutomaticUpdates__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([ASDUpdatesService isAutomaticUpdateAuthorizationRequiredWhenEnabledForAppWithRecord:a3])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = objc_opt_class();
    v9 = v24;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle", buf, 0xCu);
  }

  if (+[ASDUpdatesService isAutomaticUpdateAuthorizationEnabled])
  {
    v10 = [v6 bundleIdentifier];
    if (_autoUpdatesEnabled() && (v11 = CFPreferencesCopyValue(@"AutomaticUpdateAuthorizations", @"com.apple.appstored", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]), [v11 objectForKeyedSubscript:v10], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
    {
      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke;
      block[3] = &unk_1E7CDCDC0;
      block[4] = self;
      v22 = v7;
      v21 = v6;
      v18 = accessQueue;
      v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v18, v19);
    }

    else
    {
      v13 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B8220000, v13, OS_LOG_TYPE_DEFAULT, "Already asked for authorization or auto-updates are disabled", buf, 2u);
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASDErrorDomain" code:1300 userInfo:0];
      (*(v7 + 2))(v7, v14);
    }
  }

  else
  {
    v15 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8220000, v15, OS_LOG_TYPE_DEFAULT, "Automatic update authorization is disabled.", buf, 2u);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASDErrorDomain" code:1300 userInfo:0];
    (*(v7 + 2))(v7, v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke_2;
  v4[3] = &unk_1E7CDCD98;
  v4[4] = v2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke_3;
    v14[3] = &unk_1E7CDBAB8;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke_5;
    v12[3] = &unk_1E7CDBAB8;
    v5 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    [v4 requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle:v5 completion:v12];

    v6 = v15;
  }

  else
  {
    v7 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke_7;
    block[3] = &unk_1E7CDCD70;
    v11 = *(a1 + 48);
    v8 = v7;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v8, v9);

    v6 = v11;
  }
}

void __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke_4;
  v9[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_async(v6, v8);
}

void __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__ASDUpdatesService_requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle_completion___block_invoke_6;
  v9[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_async(v6, v8);
}

- (BOOL)autoUpdateEnabled
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__9;
  v13[4] = __Block_byref_object_dispose__9;
  v14 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v3 = [(ASDServiceBroker *)serviceBroker getUpdatesServiceWithError:&obj];
  objc_storeStrong(&v14, obj);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__ASDUpdatesService_autoUpdateEnabled__block_invoke;
  v7[3] = &unk_1E7CDBB80;
  v7[4] = v13;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__ASDUpdatesService_autoUpdateEnabled__block_invoke_2;
  v6[3] = &unk_1E7CDC0A0;
  v6[4] = &v9;
  [v4 autoUpdateEnabled:v6];

  LOBYTE(v4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);

  return v4;
}

- (BOOL)confirmAgentRequestedUpdateAll
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__9;
  v13[4] = __Block_byref_object_dispose__9;
  v14 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v3 = [(ASDServiceBroker *)serviceBroker getUpdatesServiceWithError:&obj];
  objc_storeStrong(&v14, obj);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__ASDUpdatesService_confirmAgentRequestedUpdateAll__block_invoke;
  v7[3] = &unk_1E7CDBB80;
  v7[4] = v13;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ASDUpdatesService_confirmAgentRequestedUpdateAll__block_invoke_2;
  v6[3] = &unk_1E7CDC0A0;
  v6[4] = &v9;
  [v4 confirmAgentRequestedUpdateAll:v6];

  LOBYTE(v4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);

  return v4;
}

- (void)getManagedUpdatesWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getManagedUpdatesWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke_3;
    v13[3] = &unk_1E7CDBAB8;
    v4 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v4;
    v5 = [a2 remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke_5;
    v11[3] = &unk_1E7CDB8E0;
    v6 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v6;
    [v5 getManagedUpdatesWithReplyHandler:v11];

    v7 = v14;
  }

  else
  {
    v8 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke_7;
    block[3] = &unk_1E7CDCD70;
    v10 = *(a1 + 40);
    dispatch_async(v8, block);
    v7 = v10;
  }
}

void __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke_4;
  block[3] = &unk_1E7CDCD70;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ASDUpdatesService_getManagedUpdatesWithCompletionBlock___block_invoke_6;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)getUpdatesWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getUpdatesWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke_3;
    v13[3] = &unk_1E7CDBAB8;
    v4 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v4;
    v5 = [a2 remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke_5;
    v11[3] = &unk_1E7CDCA68;
    v6 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v6;
    [v5 getUpdatesWithReplyHandler:v11];

    v7 = v14;
  }

  else
  {
    v8 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke_7;
    block[3] = &unk_1E7CDCD70;
    v10 = *(a1 + 40);
    dispatch_async(v8, block);
    v7 = v10;
  }
}

void __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke_4;
  block[3] = &unk_1E7CDCD70;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__ASDUpdatesService_getUpdatesWithCompletionBlock___block_invoke_6;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)refreshUpdateForApp:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = objc_opt_class();
    v12 = 2050;
    v13 = a3;
    v6 = v11;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: refreshUpdateForApp %{public}lld", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__ASDUpdatesService_refreshUpdateForApp___block_invoke;
  v9[3] = &unk_1E7CDCE60;
  v9[4] = self;
  v9[5] = a3;
  dispatch_async(accessQueue, v9);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __41__ASDUpdatesService_refreshUpdateForApp___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__ASDUpdatesService_refreshUpdateForApp___block_invoke_2;
  v5[3] = &unk_1E7CDCE38;
  v3 = *(a1 + 40);
  v5[4] = v1;
  v5[5] = v3;
  return [v2 getUpdatesServiceWithCompletionHandler:v5];
}

void __41__ASDUpdatesService_refreshUpdateForApp___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__ASDUpdatesService_refreshUpdateForApp___block_invoke_3;
    v13[3] = &unk_1E7CDCE10;
    v6 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v13[5] = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v13];
    [v7 refreshUpdateForApp:MEMORY[0x1E69E9820] reply:3221225472, __41__ASDUpdatesService_refreshUpdateForApp___block_invoke_35, &unk_1E7CDCE10, *(a1 + 32), *(a1 + 40)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      *buf = 138543874;
      v15 = v10;
      v16 = 2050;
      v17 = v11;
      v18 = 2114;
      v19 = v5;
      v12 = v10;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: refreshUpdateForApp %{public}lld failed with error: %{public}@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __41__ASDUpdatesService_refreshUpdateForApp___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2050;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    v9 = v7;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: refreshUpdateForApp %{public}lld failed with error: %{public}@", &v10, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __41__ASDUpdatesService_refreshUpdateForApp___block_invoke_35(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2050;
      v13 = v8;
      v14 = 2114;
      v15 = v3;
      v9 = v7;
      _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: refreshUpdateForApp %{public}lld failed with error: %{public}@", &v10, 0x20u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)refreshUpdateCountWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: refreshUpdateCountWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke_3;
    v16[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke_5;
    v14[3] = &unk_1E7CDCE88;
    v8 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v8;
    [v7 refreshUpdateCountWithReplyHandler:v14];

    v9 = v17;
  }

  else
  {
    v10 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke_7;
    v11[3] = &unk_1E7CDB890;
    v13 = *(a1 + 40);
    v12 = v5;
    dispatch_async(v10, v11);

    v9 = v13;
  }
}

void __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke_4;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ASDUpdatesService_refreshUpdateCountWithCompletionBlock___block_invoke_6;
  block[3] = &unk_1E7CDC540;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)refreshUpdatesWithCompletionBlock:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: refreshUpdatesWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke;
  block[3] = &unk_1E7CDCDC0;
  v15 = v6;
  v16 = v7;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  dispatch_async(accessQueue, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCD98;
  v4[4] = v2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_3;
    v16[3] = &unk_1E7CDBAB8;
    v16[4] = *(a1 + 32);
    v17 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_5;
    v14[3] = &unk_1E7CDBDD0;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v14[4] = *(a1 + 32);
    v15 = v8;
    [v6 refreshUpdatesWithCompletionBlock:v7 completionBlock:v14];

    v9 = v17;
  }

  else
  {
    v10 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_7;
    v11[3] = &unk_1E7CDB890;
    v13 = *(a1 + 48);
    v12 = v5;
    dispatch_async(v10, v11);

    v9 = v13;
  }
}

void __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_4;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__ASDUpdatesService_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_6;
    block[3] = &unk_1E7CDBB30;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (id)reloadFromServer
{
  v31 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = MEMORY[0x1E695E0F0];
  serviceBroker = self->_serviceBroker;
  obj = 0;
  v3 = [(ASDServiceBroker *)serviceBroker getUpdatesServiceWithError:&obj];
  objc_storeStrong(&v26, obj);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__ASDUpdatesService_reloadFromServer__block_invoke;
  v13[3] = &unk_1E7CDBB80;
  v13[4] = &v21;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__ASDUpdatesService_reloadFromServer__block_invoke_2;
  v12[3] = &unk_1E7CDCEB0;
  v12[4] = &v21;
  v12[5] = &v15;
  [v4 reloadFromServerWithReplyHandler:v12];

  if (v22[5])
  {
    v5 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v22[5];
      *buf = 138543618;
      v28 = v9;
      v29 = 2114;
      v30 = v10;
      v11 = v9;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: error in reloadFromServer: %{public}@", buf, 0x16u);
    }
  }

  v6 = v16[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __37__ASDUpdatesService_reloadFromServer__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)reloadFromServerWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reloadFromServerWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke_3;
    v16[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke_5;
    v14[3] = &unk_1E7CDB8E0;
    v8 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v8;
    [v7 reloadFromServerWithReplyHandler:v14];

    v9 = v17;
  }

  else
  {
    v10 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke_7;
    v11[3] = &unk_1E7CDB890;
    v13 = *(a1 + 40);
    v12 = v5;
    dispatch_async(v10, v11);

    v9 = v13;
  }
}

void __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke_4;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ASDUpdatesService_reloadFromServerWithCompletionBlock___block_invoke_6;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)reloadManagedUpdatesWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reloadManagedUpdatesWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke_3;
    v16[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke_5;
    v14[3] = &unk_1E7CDB8E0;
    v8 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v8;
    [v7 reloadManagedUpdatesWithReplyHandler:v14];

    v9 = v17;
  }

  else
  {
    v10 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke_7;
    v11[3] = &unk_1E7CDB890;
    v13 = *(a1 + 40);
    v12 = v5;
    dispatch_async(v10, v11);

    v9 = v13;
  }
}

void __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke_4;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ASDUpdatesService_reloadManagedUpdatesWithCompletionBlock___block_invoke_6;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)setAutoUpdateEnabled:(BOOL)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__ASDUpdatesService_setAutoUpdateEnabled___block_invoke;
  v4[3] = &unk_1E7CDBEE8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(accessQueue, v4);
}

uint64_t __42__ASDUpdatesService_setAutoUpdateEnabled___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__ASDUpdatesService_setAutoUpdateEnabled___block_invoke_2;
  v3[3] = &__block_descriptor_33_e69_v24__0___ASDUpdatesServiceProtocol__NSXPCProxyCreating__8__NSError_16l;
  v4 = *(a1 + 40);
  return [v1 getUpdatesServiceWithCompletionHandler:v3];
}

void __42__ASDUpdatesService_setAutoUpdateEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_14];
    [v3 setAutoUpdateEnabled:*(a1 + 32) withReplyHandler:&__block_literal_global_39];
  }
}

- (void)updateAllWithOrder:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: updateAllWithOrder", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke;
  block[3] = &unk_1E7CDCDC0;
  v15 = v6;
  v16 = v7;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  dispatch_async(accessQueue, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCD98;
  v4[4] = v2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_3;
    v20[3] = &unk_1E7CDCF20;
    v20[4] = *(a1 + 32);
    v22 = *(a1 + 48);
    v21 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_5;
    v18[3] = &unk_1E7CDCF48;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v18[4] = *(a1 + 32);
    v19 = v8;
    [v6 updateAllWithOrder:v7 replyHandler:v18];

    v9 = v22;
  }

  else
  {
    v10 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_7;
    block[3] = &unk_1E7CDCEF8;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v17 = v11;
    block[4] = v12;
    v15 = v13;
    v16 = v5;
    dispatch_async(v10, block);

    v9 = v17;
  }
}

void __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_4;
  v9[3] = &unk_1E7CDCEF8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v9[4] = v6;
  v10 = v7;
  v11 = v3;
  v8 = v3;
  dispatch_async(v4, v9);
}

void __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [(ASDUpdatesService *)*(a1 + 32) _failedJobResultsForBundleIDs:?];
  (*(v2 + 16))(v2, 0, v3, *(a1 + 48));
}

- (id)_failedJobResultsForBundleIDs:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count", v3)}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASDErrorDomain" code:901 userInfo:0];
          v12 = [ASDJobResult resultWithPersistentID:0 bundleID:v10 status:1 error:v11];

          [v5 addObject:v12];
        }

        v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_5(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_6;
    v11[3] = &unk_1E7CDBF10;
    v14 = v9;
    v15 = a2;
    v12 = v7;
    v13 = v8;
    dispatch_async(v10, v11);
  }
}

void __56__ASDUpdatesService_updateAllWithOrder_completionBlock___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [(ASDUpdatesService *)*(a1 + 32) _failedJobResultsForBundleIDs:?];
  (*(v2 + 16))(v2, 0, v3, *(a1 + 48));
}

- (void)reloadFromServerInBackgroundWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reloadFromServerInBackground", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__ASDUpdatesService_reloadFromServerInBackgroundWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDCDE8;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getUpdatesServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __69__ASDUpdatesService_reloadFromServerInBackgroundWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__ASDUpdatesService_reloadFromServerInBackgroundWithCompletionBlock___block_invoke_2;
    v6[3] = &unk_1E7CDB980;
    v6[4] = *(a1 + 32);
    v3 = [a2 remoteObjectProxyWithErrorHandler:v6];
    [v3 reloadFromServerInBackgroundWithCompletionBlock:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void __69__ASDUpdatesService_reloadFromServerInBackgroundWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: error: %{public}@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getUpdateMetricsEventsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getUpdateMetricsEventsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ASDUpdatesService_getUpdateMetricsEventsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDCDE8;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getUpdatesServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __63__ASDUpdatesService_getUpdateMetricsEventsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__ASDUpdatesService_getUpdateMetricsEventsWithCompletionBlock___block_invoke_2;
    v6[3] = &unk_1E7CDB980;
    v6[4] = *(a1 + 32);
    v3 = [a2 remoteObjectProxyWithErrorHandler:v6];
    [v3 getUpdateMetricsEventsWithReplyHandler:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void __63__ASDUpdatesService_getUpdateMetricsEventsWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: error: %{public}@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getMetricsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get metrics with completion block", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke_3;
    v20[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke_2_45;
    v18[3] = &unk_1E7CDCF70;
    v8 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v8;
    [v7 getMetricsWithReplyHandler:v18];

    v9 = v21;
  }

  else
  {
    v10 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v5;
      v14 = v23;
      _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }

    v11 = *(*(a1 + 32) + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke_48;
    v15[3] = &unk_1E7CDB890;
    v17 = *(a1 + 40);
    v16 = v5;
    dispatch_async(v11, v15);

    v9 = v17;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v3;
    v10 = v15;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 24);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke_44;
  v11[3] = &unk_1E7CDB890;
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v6;
  v7 = v3;
  dispatch_async(v5, v11);

  v8 = *MEMORY[0x1E69E9840];
}

void __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke_2_45(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v6;
      v14 = v20;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }
  }

  v8 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASDUpdatesService_getMetricsWithCompletionBlock___block_invoke_46;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v17 = v6;
  v18 = v9;
  v16 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getUpdatesIncludingMetricsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get updates including metrics with completion block", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_3;
    v19[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_2_50;
    v17[3] = &unk_1E7CDB8E0;
    v8 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v8;
    [v7 getUpdatesIncludingMetricsWithReplyHandler:v17];

    v9 = v20;
  }

  else
  {
    v10 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v5;
      v14 = v22;
      _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }

    v11 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_52;
    block[3] = &unk_1E7CDCD70;
    v16 = *(a1 + 40);
    dispatch_async(v11, block);
    v9 = v16;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    *buf = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = v3;
    v8 = v12;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_49;
  block[3] = &unk_1E7CDCD70;
  v10 = *(a1 + 40);
  dispatch_async(v5, block);

  v6 = *MEMORY[0x1E69E9840];
}

void __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_2_50(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v6;
      v13 = v18;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }
  }

  v8 = *(*(a1 + 32) + 24);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__ASDUpdatesService_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_51;
  v14[3] = &unk_1E7CDB890;
  v9 = *(a1 + 40);
  v15 = v5;
  v16 = v9;
  v10 = v5;
  dispatch_async(v8, v14);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)hideApplicationBadgeForPendingUpdates
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hide application badge for pending updates", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__ASDUpdatesService_hideApplicationBadgeForPendingUpdates__block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(accessQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __58__ASDUpdatesService_hideApplicationBadgeForPendingUpdates__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__ASDUpdatesService_hideApplicationBadgeForPendingUpdates__block_invoke_2;
  v4[3] = &unk_1E7CDCF98;
  v4[4] = v1;
  return [v2 getUpdatesServiceWithCompletionHandler:v4];
}

void __58__ASDUpdatesService_hideApplicationBadgeForPendingUpdates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__ASDUpdatesService_hideApplicationBadgeForPendingUpdates__block_invoke_3;
    v10[3] = &unk_1E7CDB980;
    v10[4] = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v10];
    [v6 hideApplicationBadgeForPendingUpdates];
  }

  else
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v5;
      v9 = v12;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __58__ASDUpdatesService_hideApplicationBadgeForPendingUpdates__block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)reloadForSettingsFromServerWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reload for settings from server with completion block", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke_3;
    v20[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke_2_54;
    v18[3] = &unk_1E7CDB8E0;
    v8 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v8;
    [v7 reloadForSettingsFromServerWithReplyHandler:v18];

    v9 = v21;
  }

  else
  {
    v10 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v5;
      v14 = v23;
      _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }

    v11 = *(*(a1 + 32) + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke_56;
    v15[3] = &unk_1E7CDB890;
    v17 = *(a1 + 40);
    v16 = v5;
    dispatch_async(v11, v15);

    v9 = v17;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v3;
    v10 = v15;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 24);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke_53;
  v11[3] = &unk_1E7CDB890;
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v6;
  v7 = v3;
  dispatch_async(v5, v11);

  v8 = *MEMORY[0x1E69E9840];
}

void __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke_2_54(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v6;
      v14 = v20;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }
  }

  v8 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__ASDUpdatesService_reloadForSettingsFromServerWithCompletionBlock___block_invoke_55;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v17 = v6;
  v18 = v9;
  v16 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)showApplicationBadgeForPendingUpdates
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Show application badge for pending updates", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__ASDUpdatesService_showApplicationBadgeForPendingUpdates__block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(accessQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __58__ASDUpdatesService_showApplicationBadgeForPendingUpdates__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__ASDUpdatesService_showApplicationBadgeForPendingUpdates__block_invoke_2;
  v4[3] = &unk_1E7CDCF98;
  v4[4] = v1;
  return [v2 getUpdatesServiceWithCompletionHandler:v4];
}

void __58__ASDUpdatesService_showApplicationBadgeForPendingUpdates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__ASDUpdatesService_showApplicationBadgeForPendingUpdates__block_invoke_3;
    v10[3] = &unk_1E7CDB980;
    v10[4] = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v10];
    [v6 showApplicationBadgeForPendingUpdates];
  }

  else
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v5;
      v9 = v12;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __58__ASDUpdatesService_showApplicationBadgeForPendingUpdates__block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateAllWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update all with completion block", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke_3;
    v20[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke_2_58;
    v18[3] = &unk_1E7CDCFC0;
    v8 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v8;
    [v7 updateAllWithReplyHandler:v18];

    v9 = v21;
  }

  else
  {
    v10 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v5;
      v14 = v23;
      _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }

    v11 = *(*(a1 + 32) + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke_60;
    v15[3] = &unk_1E7CDB890;
    v17 = *(a1 + 40);
    v16 = v5;
    dispatch_async(v11, v15);

    v9 = v17;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v3;
    v10 = v15;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 24);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke_57;
  v11[3] = &unk_1E7CDB890;
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v6;
  v7 = v3;
  dispatch_async(v5, v11);

  v8 = *MEMORY[0x1E69E9840];
}

void __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke_2_58(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v12 = v18;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }
  }

  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ASDUpdatesService_updateAllWithCompletionBlock___block_invoke_59;
  block[3] = &unk_1E7CDBB30;
  v8 = *(a1 + 40);
  v16 = a2;
  v14 = v5;
  v15 = v8;
  v9 = v5;
  dispatch_async(v7, block);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateAllWithJobResultsCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update all with job results completion block", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCDE8;
  v4[4] = v2;
  v5 = v1;
  [v3 getUpdatesServiceWithCompletionHandler:v4];
}

void __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke_3;
    v20[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke_2_62;
    v18[3] = &unk_1E7CDBF38;
    v8 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v8;
    [v7 updateAllGettingJobResultsWithReplyHandler:v18];

    v9 = v21;
  }

  else
  {
    v10 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v5;
      v14 = v23;
      _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }

    v11 = *(*(a1 + 32) + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke_64;
    v15[3] = &unk_1E7CDB890;
    v17 = *(a1 + 40);
    v16 = v5;
    dispatch_async(v11, v15);

    v9 = v17;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v3;
    v10 = v15;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 24);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke_61;
  v11[3] = &unk_1E7CDB890;
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v6;
  v7 = v3;
  dispatch_async(v5, v11);

  v8 = *MEMORY[0x1E69E9840];
}

void __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke_2_62(uint64_t a1, char a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v8;
      v16 = v23;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %{public}@", buf, 0x16u);
    }
  }

  v10 = *(*(a1 + 32) + 24);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__ASDUpdatesService_updateAllWithJobResultsCompletionBlock___block_invoke_63;
  v17[3] = &unk_1E7CDBF10;
  v11 = *(a1 + 40);
  v19 = v8;
  v20 = v11;
  v21 = a2;
  v18 = v7;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, v17);

  v14 = *MEMORY[0x1E69E9840];
}

@end