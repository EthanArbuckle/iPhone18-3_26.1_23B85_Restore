@interface AFUIApplicationSiriTaskDeliverer
- (AFSiriTaskmaster)taskmaster;
- (AFUIApplicationSiriTaskDeliverer)initWithAppBundleIdentifier:(id)a3;
- (void)_handleSuccessfulAppLaunchToBackground:(BOOL)a3 forRequest:(id)a4 completion:(id)a5;
- (void)_invalidateAssertionTimer;
- (void)_invalidateBackboardServices;
- (void)_processAssertionWasAcquired:(BOOL)a3;
- (void)_processAssertionWasInvalidatedForRequest:(id)a3;
- (void)_startAppStateMonitoringForRequest:(id)a3;
- (void)dealloc;
- (void)deliverSiriTask:(id)a3 completionHandler:(id)a4;
- (void)processAssertionWasInvalidatedForRequest:(id)a3;
- (void)siriTaskDidFinish;
@end

@implementation AFUIApplicationSiriTaskDeliverer

- (AFSiriTaskmaster)taskmaster
{
  WeakRetained = objc_loadWeakRetained(&self->_taskmaster);

  return WeakRetained;
}

- (void)_invalidateAssertionTimer
{
  [(AFWatchdogTimer *)self->_assertionTimer cancel];
  assertionTimer = self->_assertionTimer;
  self->_assertionTimer = 0;
}

- (void)_invalidateBackboardServices
{
  [(BKSApplicationStateMonitor *)self->_appStateMonitor invalidate];
  appStateMonitor = self->_appStateMonitor;
  self->_appStateMonitor = 0;

  [(BKSProcessAssertion *)self->_bKSAssertionForBgLaunch invalidate];
  bKSAssertionForBgLaunch = self->_bKSAssertionForBgLaunch;
  self->_bKSAssertionForBgLaunch = 0;
}

- (void)_handleSuccessfulAppLaunchToBackground:(BOOL)a3 forRequest:(id)a4 completion:(id)a5
{
  v6 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc(getBKSProcessAssertionClass());
    appBundleIdentifier = self->_appBundleIdentifier;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke;
    v26[3] = &unk_1E73477F0;
    v26[4] = self;
    v27 = v9;
    v12 = [v10 initWithBundleIdentifier:appBundleIdentifier flags:33 reason:4 name:@"SiriTaskDelivererBackground" withHandler:v26];
    bKSAssertionForBgLaunch = self->_bKSAssertionForBgLaunch;
    p_bKSAssertionForBgLaunch = &self->_bKSAssertionForBgLaunch;
    *p_bKSAssertionForBgLaunch = v12;

    v15 = *p_bKSAssertionForBgLaunch;
    if (v15)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke_3;
      v23[3] = &unk_1E73470E0;
      objc_copyWeak(&v25, &location);
      v24 = v8;
      [(BKSProcessAssertion *)v15 setInvalidationHandler:v23];

      objc_destroyWeak(&v25);
    }

    else
    {
      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[AFUIApplicationSiriTaskDeliverer _handleSuccessfulAppLaunchToBackground:forRequest:completion:]";
        v31 = 2112;
        v32 = v8;
        _os_log_error_impl(&dword_1912FE000, v21, OS_LOG_TYPE_ERROR, "%s Unable to take process assertion for background launch because BKSProcessAssertion is nil %@", buf, 0x16u);
      }
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v16 = [v8 _refId];
    v17 = [v16 copy];

    WeakRetained = objc_loadWeakRetained(&self->_taskmaster);
    v19 = [WeakRetained delegate];
    v20 = objc_loadWeakRetained(&self->_taskmaster);
    [v19 taskmaster:v20 didLaunchApplicationForRequestWithId:v17];

    v9[2](v9);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke_2;
  block[3] = &unk_1E7348778;
  block[4] = v3;
  v7 = a2;
  v6 = v2;
  dispatch_async(v4, block);
}

void __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained processAssertionWasInvalidatedForRequest:*(a1 + 32)];
}

uint64_t __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _processAssertionWasAcquired:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)siriTaskDidFinish
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[AFUIApplicationSiriTaskDeliverer siriTaskDidFinish]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  bKSAssertionSetupGroup = self->_bKSAssertionSetupGroup;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AFUIApplicationSiriTaskDeliverer_siriTaskDidFinish__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_group_notify(bKSAssertionSetupGroup, queue, block);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __53__AFUIApplicationSiriTaskDeliverer_siriTaskDidFinish__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateAssertionTimer];
  v2 = *(a1 + 32);

  return [v2 _invalidateBackboardServices];
}

- (void)deliverSiriTask:(id)a3 completionHandler:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(getUISiriTaskActionClass()) initWithPayload:v6];
  if (v8)
  {
    v32 = v6;
    v9 = [v6 request];
    [(AFUIApplicationSiriTaskDeliverer *)self _startAppStateMonitoringForRequest:v9];
    v10 = [v9 _makeAppFrontmost] ^ 1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = getFBSOpenApplicationOptionKeyActions();
    if (v12)
    {
      v37 = v8;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      [v11 setObject:v13 forKey:v12];
    }

    v14 = getFBSOpenApplicationOptionKeyActivateSuspended();
    if (v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithBool:v10];
      [v11 setObject:v15 forKey:v14];
    }

    v30 = v10;
    v16 = getFBSOpenApplicationOptionKeyUnlockDevice();
    if (v16)
    {
      [v11 setObject:MEMORY[0x1E695E118] forKey:v16];
    }

    v17 = getFBSOpenApplicationOptionKeyPromptUnlockDevice();
    if (v17)
    {
      [v11 setObject:MEMORY[0x1E695E118] forKey:v17];
    }

    dispatch_group_enter(self->_bKSAssertionSetupGroup);
    v18 = [getFBSOpenApplicationServiceClass() serviceWithDefaultShellEndpoint];
    v31 = v16;
    if (v18)
    {
      appBundleIdentifier = self->_appBundleIdentifier;
      [getFBSOpenApplicationOptionsClass() optionsWithDictionary:v11];
      v19 = v14;
      v20 = v12;
      v21 = v8;
      v23 = v22 = v7;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke;
      v33[3] = &unk_1E73470B8;
      v33[4] = self;
      v35 = v22;
      v36 = v30;
      v34 = v9;
      [v18 openApplication:appBundleIdentifier withOptions:v23 completion:v33];

      v7 = v22;
      v8 = v21;
      v12 = v20;
      v14 = v19;
    }

    else
    {
      v25 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[AFUIApplicationSiriTaskDeliverer deliverSiriTask:completionHandler:]";
        v40 = 2112;
        v41 = v32;
        _os_log_error_impl(&dword_1912FE000, v25, OS_LOG_TYPE_ERROR, "%s Unable to launch apps because FBSOpenApplicationService is nil %@", buf, 0x16u);
      }

      v26 = [AFError errorWithCode:13];
      (*(v7 + 2))(v7, v26);
    }

    v6 = v32;
  }

  else
  {
    v24 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (UIKitLibrary_sOnce != -1)
      {
        dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_144_33750);
      }

      *buf = 136315650;
      v39 = "[AFUIApplicationSiriTaskDeliverer deliverSiriTask:completionHandler:]";
      v40 = 2050;
      v41 = UIKitLibrary_sLib;
      v42 = 2114;
      UISiriTaskActionClass = getUISiriTaskActionClass();
      v28 = UISiriTaskActionClass;
      _os_log_error_impl(&dword_1912FE000, v24, OS_LOG_TYPE_ERROR, "%s Couldn't create a SiriTask action %{public}p %{public}@", buf, 0x20u);

      v8 = 0;
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:705 userInfo:0];
    (*(v7 + 2))(v7, v9);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_2;
  v23[3] = &unk_1E73496E8;
  v23[4] = *(a1 + 32);
  v25 = *(a1 + 48);
  v5 = v4;
  v24 = v5;
  v6 = MEMORY[0x193AFB7B0](v23);
  v7 = [v5 domain];
  v8 = getFBSOpenApplicationServiceErrorDomain();
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v5 userInfo];
    v11 = [v10 objectForKey:*MEMORY[0x1E696AA08]];

    if (v11)
    {
      v12 = v11;

      v5 = v12;
    }
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_3;
  v17[3] = &unk_1E7347090;
  v18 = v5;
  v19 = v13;
  v22 = *(a1 + 56);
  v20 = *(a1 + 40);
  v21 = v6;
  v15 = v6;
  v16 = v5;
  dispatch_async(v14, v17);
}

uint64_t __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_2(void *a1)
{
  dispatch_group_leave(*(a1[4] + 40));
  result = a1[6];
  if (result)
  {
    v3 = a1[5];
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 40) _handleSuccessfulAppLaunchToBackground:*(a1 + 64) forRequest:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)_processAssertionWasAcquired:(BOOL)a3
{
  location[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = AFPreferencesSiriTaskBackgroundAssertionTimeout();
    v5 = self->_appBundleIdentifier;
    objc_initWeak(location, self);
    v6 = self->_appStateMonitor;
    v7 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __65__AFUIApplicationSiriTaskDeliverer__processAssertionWasAcquired___block_invoke;
    v19 = &unk_1E7347068;
    v9 = v5;
    v20 = v9;
    v22[1] = *&v4;
    v10 = v6;
    v21 = v10;
    objc_copyWeak(v22, location);
    v11 = [(AFWatchdogTimer *)v7 initWithTimeoutInterval:queue onQueue:&v16 timeoutHandler:v4];
    assertionTimer = self->_assertionTimer;
    p_assertionTimer = &self->_assertionTimer;
    *p_assertionTimer = v11;

    [*p_assertionTimer start];
    objc_destroyWeak(v22);

    objc_destroyWeak(location);
  }

  else
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasAcquired:]";
      _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s Could not acquire BKS assertion", location, 0xCu);
    }

    [(AFUIApplicationSiriTaskDeliverer *)self _invalidateBackboardServices];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __65__AFUIApplicationSiriTaskDeliverer__processAssertionWasAcquired___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    *buf = 136315650;
    v12 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasAcquired:]_block_invoke";
    v13 = 2114;
    v14 = v7;
    v15 = 2050;
    v16 = v8;
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s BKS assertion for %{public}@ timed out after %{public}.2f seconds", buf, 0x20u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AFUIApplicationSiriTaskDeliverer__processAssertionWasAcquired___block_invoke_20;
  v9[3] = &unk_1E7347018;
  v10 = v3;
  [v4 applicationInfoForApplication:v10 completion:v9];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _invalidateBackboardServices];

  v6 = *MEMORY[0x1E69E9840];
}

void __65__AFUIApplicationSiriTaskDeliverer__processAssertionWasAcquired___block_invoke_20(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasAcquired:]_block_invoke";
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s After timing out, recipient %{public}@ state was %{public}@", &v7, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)processAssertionWasInvalidatedForRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__AFUIApplicationSiriTaskDeliverer_processAssertionWasInvalidatedForRequest___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_processAssertionWasInvalidatedForRequest:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v20 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasInvalidatedForRequest:]";
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s BKS assertion was unexpectedly dropped", buf, 0xCu);
  }

  appStateMonitor = self->_appStateMonitor;
  if (!appStateMonitor)
  {
    v7 = objc_alloc(getBKSApplicationStateMonitorClass());
    appBundleIdentifier = self->_appBundleIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&appBundleIdentifier count:1];
    v9 = [v7 initWithBundleIDs:v8 states:getBKSApplicationStateAll()];
    v10 = self->_appStateMonitor;
    self->_appStateMonitor = v9;

    appStateMonitor = self->_appStateMonitor;
    if (!appStateMonitor)
    {
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v20 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasInvalidatedForRequest:]";
        _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s Unable to restart app state monitoring because BKSApplicationStateMonitor is nil.", buf, 0xCu);
        appStateMonitor = self->_appStateMonitor;
      }

      else
      {
        appStateMonitor = 0;
      }
    }
  }

  v12 = self->_appBundleIdentifier;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__AFUIApplicationSiriTaskDeliverer__processAssertionWasInvalidatedForRequest___block_invoke;
  v16[3] = &unk_1E7347040;
  v16[4] = self;
  v17 = v4;
  v13 = v4;
  [(BKSApplicationStateMonitor *)appStateMonitor applicationInfoForApplication:v12 completion:v16];
  [(AFUIApplicationSiriTaskDeliverer *)self _invalidateAssertionTimer];
  bKSAssertionForBgLaunch = self->_bKSAssertionForBgLaunch;
  self->_bKSAssertionForBgLaunch = 0;

  v15 = *MEMORY[0x1E69E9840];
}

void __78__AFUIApplicationSiriTaskDeliverer__processAssertionWasInvalidatedForRequest___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _LogAppStateInfo(v3);
  if (!v3 || (getSBApplicationStateKey(), v4 = objc_claimAutoreleasedReturnValue(), _SafelyGetObject(v3, v4), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5) || (v6 = [v5 unsignedIntValue], v5, v6 <= 1))
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1 + 32) + 8);
      v14 = 136315394;
      v15 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasInvalidatedForRequest:]_block_invoke";
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s %{public}@ appears to have crashed", &v14, 0x16u);
    }

    v8 = +[AFAnalytics sharedAnalytics];
    v9 = [*(a1 + 40) _af_analyticsContextDescription];
    [v8 logEventWithType:505 context:v9];

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:706 userInfo:MEMORY[0x1E695E0F8]];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
    [WeakRetained handleFailureOfRequest:*(a1 + 40) error:v10 atTime:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_startAppStateMonitoringForRequest:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_appBundleIdentifier;
  v6 = objc_alloc(getBKSApplicationStateMonitorClass());
  v17[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v8 = [v6 initWithBundleIDs:v7 states:getBKSApplicationStateAll()];
  appStateMonitor = self->_appStateMonitor;
  self->_appStateMonitor = v8;

  if (self->_appStateMonitor)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__AFUIApplicationSiriTaskDeliverer__startAppStateMonitoringForRequest___block_invoke;
    v13[3] = &unk_1E7347018;
    v14 = v4;
    v10 = MEMORY[0x193AFB7B0](v13);
    [(BKSApplicationStateMonitor *)self->_appStateMonitor setHandler:v10];
    [(BKSApplicationStateMonitor *)self->_appStateMonitor applicationInfoForApplication:v5 completion:v10];
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[AFUIApplicationSiriTaskDeliverer _startAppStateMonitoringForRequest:]";
      _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s Unable to start app state monitoring because BKSApplicationStateMonitor is nil.", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __71__AFUIApplicationSiriTaskDeliverer__startAppStateMonitoringForRequest___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 32);
  _LogAppStateInfo(v11);
  v4 = [v3 _af_analyticsContextDescription];

  v5 = getSBApplicationStateKey();
  v6 = _SafelyGetObject(v11, v5);

  v7 = AFDescriptionOfBKSApplicationState([v6 unsignedIntValue]);
  [v4 setObject:v7 forKeyedSubscript:@"appState"];

  v8 = getBKSApplicationStateAppIsFrontmostKey();
  v9 = _SafelyGetObject(v11, v8);

  if (v9)
  {
    [v4 setObject:v9 forKeyedSubscript:@"appIsFrontmost"];
  }

  v10 = +[AFAnalytics sharedAnalytics];
  [v10 logEventWithType:504 context:v4];
}

- (void)dealloc
{
  [(AFUIApplicationSiriTaskDeliverer *)self _invalidateAssertionTimer];
  [(AFUIApplicationSiriTaskDeliverer *)self _invalidateBackboardServices];
  v3.receiver = self;
  v3.super_class = AFUIApplicationSiriTaskDeliverer;
  [(AFUIApplicationSiriTaskDeliverer *)&v3 dealloc];
}

- (AFUIApplicationSiriTaskDeliverer)initWithAppBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"AFUIApplicationSiriTaskDeliverer.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"appBundleIdentifier"}];
  }

  v16.receiver = self;
  v16.super_class = AFUIApplicationSiriTaskDeliverer;
  v6 = [(AFUIApplicationSiriTaskDeliverer *)&v16 init];
  if (v6)
  {
    v7 = [v5 copy];
    appBundleIdentifier = v6->_appBundleIdentifier;
    v6->_appBundleIdentifier = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("AFUIApplicationSiriTaskDeliverer", v9);

    queue = v6->_queue;
    v6->_queue = v10;

    v12 = dispatch_group_create();
    bKSAssertionSetupGroup = v6->_bKSAssertionSetupGroup;
    v6->_bKSAssertionSetupGroup = v12;
  }

  return v6;
}

@end