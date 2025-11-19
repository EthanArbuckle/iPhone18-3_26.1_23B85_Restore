@interface SFWebAppServiceViewController
@end

@implementation SFWebAppServiceViewController

void __56___SFWebAppServiceViewController_serviceViewControllers__block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = serviceViewControllers_serviceViewControllers;
  serviceViewControllers_serviceViewControllers = v0;
}

uint64_t __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXWebApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  return [*MEMORY[0x1E69DDA98] endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
}

void __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke_135(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke_135_cold_1(v3, v2);
    }
  }
}

uint64_t __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke_141(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *MEMORY[0x1E69DDA98];
  v3 = *(*(*(a1 + 40) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

void __65___SFWebAppServiceViewController__showBlankViewWithAlertIfNeeded__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69D4320];
    v4 = [*(*(a1 + 32) + 2104) identifier];
    [v3 launchWebClipWithIdentifier:v4];

    *(*(a1 + 32) + 2224) = 1;
  }

  else
  {
    v5 = [*(a1 + 32) _remoteViewControllerProxy];
    [v5 destroyScene];
  }
}

void __115___SFWebAppServiceViewController_webViewController_requestNotificationPermissionForSecurityOrigin_decisionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXWebPush();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __115___SFWebAppServiceViewController_webViewController_requestNotificationPermissionForSecurityOrigin_decisionHandler___block_invoke_cold_1(a2, v7, v5);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = a2;
    _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "Push notification permission request finished with result %i", buf, 8u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __115___SFWebAppServiceViewController_webViewController_requestNotificationPermissionForSecurityOrigin_decisionHandler___block_invoke_168;
  v8[3] = &unk_1E8491E60;
  v9 = *(a1 + 32);
  v10 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __100___SFWebAppServiceViewController_webViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _navigationUtilitiesManager];
  v5 = *(a1 + 64);
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100___SFWebAppServiceViewController_webViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_2;
  v8[3] = &unk_1E8491EB0;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = a2;
  [v4 websitePoliciesForURL:v7 isForMainFrameNavigation:v5 navigationType:v6 completionHandler:v8];
}

uint64_t __52___SFWebAppServiceViewController__updateDisplayMode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 URL];
  v6 = [v4 _isURLOutOfScope:v5 withLoginURLExempted:0];

  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    v8 = [v3 URL];
    v6 = [v7 isEqual:v8];
  }

  return v6 ^ 1u;
}

uint64_t __67___SFWebAppServiceViewController_navigationBarDoneButtonWasTapped___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 URL];
  LODWORD(v2) = [v2 _isURLOutOfScope:v3 withLoginURLExempted:0];

  return v2 ^ 1;
}

void __59___SFWebAppServiceViewController_loadWebAppWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59___SFWebAppServiceViewController_loadWebAppWithIdentifier___block_invoke_2;
  v5[3] = &unk_1E8490298;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __59___SFWebAppServiceViewController_loadWebAppWithIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleHostStateUpdate:*(a1 + 32)];
}

void __77___SFWebAppServiceViewController_notificationPermissionsForWebsiteDataStore___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77___SFWebAppServiceViewController_notificationPermissionsForWebsiteDataStore___block_invoke_2;
  v4[3] = &unk_1E8491F50;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 getNotificationSettingsWithCompletionHandler:v4];
}

void __77___SFWebAppServiceViewController_notificationPermissionsForWebsiteDataStore___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __68___SFWebAppServiceViewController_websiteDataStore_showNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __68___SFWebAppServiceViewController_websiteDataStore_showNotification___block_invoke_cold_1(v3, v2);
    }
  }
}

void __110___SFWebAppServiceViewController_websiteDataStore_getDisplayedNotificationsForWorkerOrigin_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) request];
        v11 = [v10 content];
        v12 = [v11 userInfo];
        [v4 addObject:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

void __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke_cold_1();
  }
}

void __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke_290(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    dispatch_group_leave(v3);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
    getAndProcessPendingPushMessage(*(a1 + 40), WeakRetained);
  }
}

void __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 67109120;
    v23 = [v3 count];
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEFAULT, "Processing %i push messages", buf, 8u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        dispatch_group_enter(*(a1 + 32));
        CFRetain(*(a1 + 40));
        v12 = *(a1 + 40);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke_291;
        v14[3] = &unk_1E8491FC8;
        v14[4] = v11;
        v13 = v12;
        v15 = v13;
        v16 = *(a1 + 32);
        [v13 _processPushMessage:v11 completionHandler:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke_291(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"FAILURE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"SUCCESS";
    }

    v7 = 138740227;
    v8 = v6;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "Push message delivered: %{sensitive}@, %{public}@", &v7, 0x16u);
  }

  CFRelease(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void __67___SFWebAppServiceViewController_handlePushNotificationActivation___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __67___SFWebAppServiceViewController_handlePushNotificationActivation___block_invoke_cold_1();
  }
}

void __67___SFWebAppServiceViewController_handlePushNotificationActivation___block_invoke_299(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "Push notification activation event handler done. Result: %i", v5, 8u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __58___SFWebAppServiceViewController_statusBarIndicatorTapped__block_invoke()
{
  v0 = +[_SFWebAppMediaCaptureStatusBarManager sharedManager];
  [v0 cancelStatusBarOverride];
}

void __67___SFWebAppServiceViewController__fetchApplicationManifestIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6 && WeakRetained)
  {
    [WeakRetained[263] _sf_setApplicationManifest:v6];
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:0 error:0];
    v5 = [WeakRetained[263] _sf_applicationManifestPath];
    [v4 writeToURL:v5 atomically:1];
  }
}

void __67___SFWebAppServiceViewController__fetchApplicationManifestIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v5 count])
  {
    v4 = [v5 _web_stringForKey:*MEMORY[0x1E69DE830]];
    [WeakRetained[263] setWebClipStatusBarStyle:UIWebClipStatusBarStyleForMetaTagContent()];

    [WeakRetained[263] updateOnDisk];
    [WeakRetained setNeedsStatusBarAppearanceUpdate];
  }
}

void __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke_135_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __115___SFWebAppServiceViewController_webViewController_requestNotificationPermissionForSecurityOrigin_decisionHandler___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v10 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

void __68___SFWebAppServiceViewController_websiteDataStore_showNotification___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

@end