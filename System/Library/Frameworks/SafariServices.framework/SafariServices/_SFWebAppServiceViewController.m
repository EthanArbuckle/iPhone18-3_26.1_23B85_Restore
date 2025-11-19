@interface _SFWebAppServiceViewController
+ (id)serviceViewControllers;
- (BOOL)_clientIsWebApp;
- (BOOL)_isURLOutOfLegacyScope:(id)a3 withLoginURLExempted:(BOOL)a4;
- (BOOL)_isURLOutOfManifestScope:(id)a3;
- (BOOL)_isURLOutOfScope:(id)a3 withLoginURLExempted:(BOOL)a4;
- (NSString)URLString;
- (id)_canonicalPageURL;
- (id)createWebsiteDataStoreForWebClipIdentifier:(id)a3;
- (id)notificationPermissionsForWebsiteDataStore:(id)a3;
- (id)placeholderBundleIdentifierForDataStore:(id)a3;
- (id)processPool;
- (id)webViewConfiguration;
- (id)websiteDataStore;
- (id)websiteDataStoreConfigurationWithWebClipIdentifier:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (void)_fetchApplicationManifestIfNeeded;
- (void)_handleHostStateUpdate:(id)a3;
- (void)_hostApplicationDidEnterBackground;
- (void)_initialLoadFinishedWithSuccess:(BOOL)a3;
- (void)_loadNextFallbackURL;
- (void)_loadWebClipPageURL:(id)a3;
- (void)_setCurrentWebViewController:(id)a3;
- (void)_showBlankViewWithAlertIfNeeded;
- (void)_updateDisplayMode;
- (void)_updateThemeColor;
- (void)_updateUI;
- (void)clearWebViewAndWebsiteDataWithCompletion:(id)a3;
- (void)clearWebsiteDataWithWebClipIdentifier:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)handlePushNotificationActivation:(id)a3;
- (void)loadWebAppWithIdentifier:(id)a3;
- (void)muteMediaCapture;
- (void)navigationBarDoneButtonWasTapped:(id)a3;
- (void)processWebPushForWebAppWithIdentifier:(id)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setupPreferences:(id)a3;
- (void)statusBarIndicatorTapped;
- (void)viewDidLoad;
- (void)webAppDidBecomeActive;
- (void)webAppWillResignActive;
- (void)webViewController:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webViewController:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webViewController:(id)a3 didFinishNavigation:(id)a4;
- (void)webViewController:(id)a3 requestNotificationPermissionForSecurityOrigin:(id)a4 decisionHandler:(id)a5;
- (void)webViewController:(id)a3 setShouldKeepScreenAwake:(BOOL)a4;
- (void)webViewController:(id)a3 updatedAppBadge:(id)a4 fromSecurityOrigin:(id)a5;
- (void)webViewControllerDidChangeLoadingState:(id)a3;
- (void)webViewControllerDidChangeURL:(id)a3;
- (void)webViewControllerDidFirstVisuallyNonEmptyLayout:(id)a3;
- (void)websiteDataStore:(id)a3 getDisplayedNotificationsForWorkerOrigin:(id)a4 completionHandler:(id)a5;
- (void)websiteDataStore:(id)a3 navigateToNotificationActionURL:(id)a4;
- (void)websiteDataStore:(id)a3 openWindow:(id)a4 fromServiceWorkerOrigin:(id)a5 completionHandler:(id)a6;
- (void)websiteDataStore:(id)a3 showNotification:(id)a4;
- (void)websiteDataStore:(id)a3 workerOrigin:(id)a4 updatedAppBadge:(id)a5;
@end

@implementation _SFWebAppServiceViewController

+ (id)serviceViewControllers
{
  if (serviceViewControllers_once != -1)
  {
    +[_SFWebAppServiceViewController serviceViewControllers];
  }

  v3 = serviceViewControllers_serviceViewControllers;

  return v3;
}

- (BOOL)_clientIsWebApp
{
  v2 = [(_SFWebAppServiceViewController *)self _hostApplicationBundleIdentifier];
  v3 = [v2 hasPrefix:@"com.apple.webapp"];

  return v3;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_stateMonitor invalidate];
  v3.receiver = self;
  v3.super_class = _SFWebAppServiceViewController;
  [(SFBrowserServiceViewController *)&v3 dealloc];
}

- (void)clearWebViewAndWebsiteDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_SFBrowserContentViewController *)self webView];

  if (v5)
  {
    v6 = [(_SFBrowserContentViewController *)self webView];
    [v6 stopLoading];

    v7 = [(_SFBrowserContentViewController *)self webViewController];
    [v7 willMoveToParentViewController:0];
    v8 = [v7 view];
    [v8 removeFromSuperview];

    [v7 removeFromParentViewController];
  }

  v9 = [(_SFWebAppServiceViewController *)self websiteDataStore];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = *MEMORY[0x1E69DDBE8];
  v10 = *MEMORY[0x1E69DDA98];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke;
  v19[3] = &unk_1E8491E38;
  v11 = v4;
  v20 = v11;
  v21 = &v22;
  v12 = [v10 beginBackgroundTaskWithName:@"com.apple.SafariViewService.deleteWebAppData" expirationHandler:v19];
  v23[3] = v12;
  [v9 _setCompletionHandlerForRemovalFromNetworkProcess:&__block_literal_global_138];
  v13 = [MEMORY[0x1E69853B8] safari_allDataTypes];
  v14 = [MEMORY[0x1E695DF00] distantPast];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke_141;
  v16[3] = &unk_1E8491E38;
  v15 = v11;
  v17 = v15;
  v18 = &v22;
  [v9 removeDataOfTypes:v13 modifiedSince:v14 completionHandler:v16];

  _Block_object_dispose(&v22, 8);
}

- (void)clearWebsiteDataWithWebClipIdentifier:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [objc_opt_class() serviceViewControllers];
  v8 = [v7 objectForKey:v12];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E69DD2B8] webClipWithIdentifier:v12];
    webClip = self->_webClip;
    self->_webClip = v10;

    v9 = self;
  }

  [(_SFWebAppServiceViewController *)v9 clearWebViewAndWebsiteDataWithCompletion:v6];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = _SFWebAppServiceViewController;
  [(_SFWebAppServiceViewController *)&v8 viewDidLoad];
  [(SFBrowserServiceViewController *)self setDisplayMode:2];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  statusBarBackgroundView = self->_statusBarBackgroundView;
  self->_statusBarBackgroundView = v3;

  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    v5 = [MEMORY[0x1E69DC888] labelColor];
    [(UIView *)self->_statusBarBackgroundView setBackgroundColor:v5];
  }

  v6 = self->_statusBarBackgroundView;
  v7 = [(_SFBrowserContentViewController *)self browserView];
  [v7 setStatusBarBackgroundView:v6];
}

- (int64_t)preferredStatusBarStyle
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    return 0;
  }

  v4 = [(_SFBrowserContentViewController *)self displayMode];
  result = 0;
  if (v4 <= 4 && ((1 << v4) & 0x16) != 0)
  {
    themeColor = self->_themeColor;
    if (themeColor)
    {
      if ([(UIColor *)themeColor safari_meetsThresholdForDarkAppearance])
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      v6 = [(UIWebClip *)self->_webClip webClipStatusBarStyle];

      return MEMORY[0x1EEE4E0B0](v6);
    }
  }

  return result;
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    v3 = [(UIWebClip *)self->_webClip webClipStatusBarStyle];
    if (v3 == 2)
    {
      v4 = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)self->_statusBarBackgroundView setBackgroundColor:v4];
    }

    else
    {
      [(_SFWebAppServiceViewController *)self _updateThemeColor];
      v5 = [(UIColor *)self->_themeColor colorWithAlphaComponent:1.0];
      if (!v5)
      {
        if ([(_SFWebAppServiceViewController *)self preferredStatusBarStyle])
        {
          [MEMORY[0x1E69DC888] blackColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] labelColor];
        }
        v5 = ;
      }

      v6 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67___SFWebAppServiceViewController_setNeedsStatusBarAppearanceUpdate__block_invoke;
      v9[3] = &unk_1E848F548;
      v9[4] = self;
      v10 = v5;
      v7 = v5;
      [v6 _animateUsingDefaultTimingWithOptions:50331648 animations:v9 completion:0];
    }

    [(_SFBrowserContentViewController *)self setWebViewLayoutUnderlapsStatusBar:v3 == 2];
    v8.receiver = self;
    v8.super_class = _SFWebAppServiceViewController;
    [(_SFWebAppServiceViewController *)&v8 setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)_hostApplicationDidEnterBackground
{
  v6.receiver = self;
  v6.super_class = _SFWebAppServiceViewController;
  [(SFBrowserServiceViewController *)&v6 _hostApplicationDidEnterBackground];
  v3 = [(WKWebsiteDataStore *)self->_websiteDataStore httpCookieStore];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WKWebsiteDataStore *)self->_websiteDataStore httpCookieStore];
    [v5 _flushCookiesToDiskWithCompletionHandler:&__block_literal_global_155];
  }
}

- (void)webAppDidBecomeActive
{
  [(_SFWebAppServiceViewController *)self _showBlankViewWithAlertIfNeeded];
  if ((_SFMediaStateIconIsMuted() & 1) == 0)
  {
    v3 = [(_SFBrowserContentViewController *)self webViewController];
    v4 = [v3 webView];
    [v4 _setPageMuted:0];
  }

  v12 = [MEMORY[0x1E69C8EB0] sharedManager];
  v5 = objc_opt_new();
  v6 = [(UIWebClip *)self->_webClip identifier];
  v7 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  v8 = [v7 name];
  v9 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  v10 = [v9 manifestId];
  v11 = [v10 absoluteString];
  [v12 donateWebAppInFocusEventWithStarting:1 date:v5 webAppType:0 identifier:v6 name:v8 manifestId:v11];
}

- (void)webAppWillResignActive
{
  self->_mediaStateIconBeforeSuspension = [(_SFBrowserContentViewController *)self mediaStateIcon];
  v3 = +[_SFWebAppMediaCaptureStatusBarManager sharedManager];
  [v3 cancelStatusBarOverride];

  v4 = [MEMORY[0x1E69C8EB0] sharedManager];
  v5 = objc_opt_new();
  v6 = [(UIWebClip *)self->_webClip identifier];
  v7 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  v8 = [v7 name];
  v9 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  v10 = [v9 manifestId];
  v11 = [v10 absoluteString];
  [v4 donateWebAppInFocusEventWithStarting:0 date:v5 webAppType:0 identifier:v6 name:v8 manifestId:v11];

  if (self->_hasPendingDestroyScene)
  {
    v12 = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy];
    [v12 destroyScene];
  }
}

- (void)_showBlankViewWithAlertIfNeeded
{
  [(UIWebClip *)self->_webClip _reloadProperties];
  v3 = [(UIWebClip *)self->_webClip eligibilityStatus];
  if (v3)
  {
    v4 = v3;
    containingAlertController = self->_containingAlertController;
    if (!containingAlertController)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DD258]);
      v7 = self->_containingAlertController;
      self->_containingAlertController = v6;

      [(UIViewController *)self->_containingAlertController setModalPresentationStyle:0];
      v8 = objc_alloc(MEMORY[0x1E69DC8D0]);
      v9 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
      v10 = [v8 initWithConfiguration:v9];
      [(UIViewController *)self->_containingAlertController setView:v10];

      v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v12 = [(UIViewController *)self->_containingAlertController view];
      [v12 setBackgroundColor:v11];

      containingAlertController = self->_containingAlertController;
    }

    v13 = [(UIViewController *)containingAlertController presentingViewController];

    if (!v13)
    {
      [(_SFBrowserContentViewController *)self presentViewController:self->_containingAlertController animated:0 completion:0];
    }

    if (!self->_alertController)
    {
      webClip = self->_webClip;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65___SFWebAppServiceViewController__showBlankViewWithAlertIfNeeded__block_invoke;
      v20[3] = &unk_1E848FA00;
      v20[4] = self;
      v15 = [(UIWebClip *)webClip eligibilityAlert:v20];
      alertController = self->_alertController;
      self->_alertController = v15;
    }

    if (v4 == 2)
    {
      v18 = MEMORY[0x1E69D4320];
      v19 = [(UIWebClip *)self->_webClip identifier];
      [v18 launchWebClipWithIdentifier:v19];

      self->_hasPendingDestroyScene = 1;
    }

    else if (v4 == 1)
    {
      v17 = [(UIAlertController *)self->_alertController presentingViewController];

      if (!v17)
      {
        [(UIViewController *)self->_containingAlertController presentViewController:self->_alertController animated:1 completion:0];
      }
    }
  }
}

- (void)_updateUI
{
  v7.receiver = self;
  v7.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v7 _updateUI];
  v3 = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy];
  v4 = [(_SFBrowserContentViewController *)self webView];
  v5 = [v4 canGoBack];
  v6 = [(_SFBrowserContentViewController *)self webView];
  [v3 didFinishNavigationCanGoBack:v5 canGoForward:{objc_msgSend(v6, "canGoForward")}];
}

- (void)webViewController:(id)a3 requestNotificationPermissionForSecurityOrigin:(id)a4 decisionHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a5;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "requestNotificationPermissionForSecurityOrigin: Cannot get push placeholder bundle identifier from UIWebClip", buf, 2u);
    }

    v6[2](v6, 0);
  }

  v8 = [(UIWebClip *)self->_webClip placeholderBundleIdentifier];
  v9 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    webClip = self->_webClip;
    v11 = v9;
    v12 = [(UIWebClip *)webClip identifier];
    *buf = 138543362;
    v18 = v12;
    _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEFAULT, "Requesting push notification permission for Web Clip %{public}@", buf, 0xCu);
  }

  v13 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __115___SFWebAppServiceViewController_webViewController_requestNotificationPermissionForSecurityOrigin_decisionHandler___block_invoke;
  v15[3] = &unk_1E8491E88;
  v16 = v6;
  v14 = v6;
  [v13 requestAuthorizationWithOptions:7 completionHandler:v15];
}

- (void)webViewController:(id)a3 updatedAppBadge:(id)a4 fromSecurityOrigin:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(v27) = 0;
    v21 = "Denied attempt to update app badge from a window object: Missing selector to verify script origin should be allowed";
    v22 = v20;
    goto LABEL_9;
  }

  v9 = [(UIWebClip *)self->_webClip pageURL];
  v10 = [v8 isSameSiteAsURL:v9];

  if (v10)
  {
    v11 = objc_opt_respondsToSelector();
    v12 = WBS_LOG_CHANNEL_PREFIXWebPush();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        webClip = self->_webClip;
        v15 = v12;
        v16 = [(UIWebClip *)webClip identifier];
        v27 = 138543875;
        v28 = v16;
        v29 = 2113;
        v30 = v8;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_1D4644000, v15, OS_LOG_TYPE_DEFAULT, "Web Clip with identifier '%{public}@', script from origin %{private}@ updated app badge count to %@", &v27, 0x20u);
      }

      v17 = objc_alloc(MEMORY[0x1E69DEBB0]);
      v18 = [(UIWebClip *)self->_webClip placeholderBundleIdentifier];
      v19 = [v17 initWithBundleIdentifier:v18];

      [v19 setBadgeValue:v7];
      goto LABEL_14;
    }

    if (!v13)
    {
      goto LABEL_14;
    }

    LOWORD(v27) = 0;
    v21 = "Denied attempt to update app badge from a window object: Cannot get push placeholder bundle identifier from UIWebClip";
    v22 = v12;
LABEL_9:
    _os_log_impl(&dword_1D4644000, v22, OS_LOG_TYPE_DEFAULT, v21, &v27, 2u);
    goto LABEL_14;
  }

  v23 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->_webClip;
    v25 = v23;
    v26 = [(UIWebClip *)v24 pageURL];
    v27 = 138478083;
    v28 = v8;
    v29 = 2117;
    v30 = v26;
    _os_log_impl(&dword_1D4644000, v25, OS_LOG_TYPE_DEFAULT, "Denied attempt to update app badge from a window object: Script origin %{private}@ is a different site from Web Clip page URL %{sensitive}@", &v27, 0x16u);
  }

LABEL_14:
}

- (void)webViewControllerDidChangeLoadingState:(id)a3
{
  v7.receiver = self;
  v7.super_class = _SFWebAppServiceViewController;
  v4 = a3;
  [(_SFBrowserContentViewController *)&v7 webViewControllerDidChangeLoadingState:v4];
  v5 = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy:v7.receiver];
  v6 = [v4 isLoading];

  [v5 didChangeLoadingState:v6];
}

- (void)webViewControllerDidFirstVisuallyNonEmptyLayout:(id)a3
{
  v5.receiver = self;
  v5.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v5 webViewControllerDidFirstVisuallyNonEmptyLayout:a3];
  v4 = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy];
  [v4 didFinishInitialLoad:1];
}

- (void)webViewController:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 request];
  v12 = [v11 URL];

  v13 = [v9 navigationType];
  v14 = [v9 targetFrame];
  if (v14)
  {
    v15 = [v9 targetFrame];
    v16 = [v15 isMainFrame];
  }

  else
  {
    v16 = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100___SFWebAppServiceViewController_webViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  aBlock[3] = &unk_1E8491ED8;
  aBlock[4] = self;
  v17 = v12;
  v42 = v16;
  v39 = v17;
  v41 = v13;
  v18 = v10;
  v40 = v18;
  v19 = _Block_copy(aBlock);
  v20 = [v9 request];
  v21 = [v20 valueForHTTPHeaderField:@"Referer"];

  v36 = v8;
  v22 = self;
  if (v21)
  {
    v43 = *MEMORY[0x1E6963598];
    v44[0] = v21;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
  }

  else
  {
    v35 = 0;
  }

  v23 = [MEMORY[0x1E6963608] defaultWorkspace];
  v24 = [v23 URLOverrideForURL:v17];

  v25 = [v24 scheme];
  v26 = [v17 scheme];
  v27 = [v25 caseInsensitiveCompare:v26];

  if (v27)
  {
    v28 = [MEMORY[0x1E6963608] defaultWorkspace];
    v29 = v35;
    [v28 openURL:v24 withOptions:v35];
  }

  else if ([v17 hasTelephonyScheme])
  {
    v28 = [MEMORY[0x1E6963608] defaultWorkspace];
    v30 = MEMORY[0x1E695DFF8];
    v31 = [v17 phoneNumber];
    v32 = [v30 telephonyURLWithDestinationID:v31 promptUser:1];
    v29 = v35;
    [v28 openURL:v32 withOptions:v35];
  }

  else
  {
    if (([v17 isFaceTimeURL] & 1) == 0 && !objc_msgSend(v17, "isFaceTimeAudioURL"))
    {
      [v9 _sf_setAllowsExternalRedirectWithoutPrompting:1];
      v37.receiver = v22;
      v37.super_class = _SFWebAppServiceViewController;
      v34 = v36;
      [(_SFBrowserContentViewController *)&v37 webViewController:v36 decidePolicyForNavigationAction:v9 decisionHandler:v18];
      v29 = v35;
      goto LABEL_15;
    }

    v28 = [MEMORY[0x1E6963608] defaultWorkspace];
    v33 = [MEMORY[0x1E695DFF8] faceTimePromptURLWithURL:v17];
    v29 = v35;
    [v28 openURL:v33 withOptions:v35];
  }

  v19[2](v19, 0);
  v34 = v36;
LABEL_15:
}

- (BOOL)_isURLOutOfManifestScope:(id)a3
{
  v4 = a3;
  v5 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 scope];
    if (v7)
    {
      if ([v4 safari_hasSameOriginAsURL:v7])
      {
        v8 = [v4 path];
        v9 = [v7 path];
        v10 = [v8 hasPrefix:v9] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 1;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_isURLOutOfLegacyScope:(id)a3 withLoginURLExempted:(BOOL)a4
{
  v5 = a3;
  v6 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = [(UIWebClip *)self->_webClip pageURL];
    v7 = [v5 safari_isWithinWebAppNavigationScope:v8] ^ 1;
  }

  return v7;
}

- (BOOL)_isURLOutOfScope:(id)a3 withLoginURLExempted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIWebClip *)self->_webClip ignoreManifestScope]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(_SFWebAppServiceViewController *)self _isURLOutOfManifestScope:v6]|| [(_SFWebAppServiceViewController *)self _isURLOutOfLegacyScope:v6 withLoginURLExempted:v4];
  }

  return v7;
}

- (void)webViewController:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6.receiver = self;
  v6.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v6 webViewController:a3 didFailProvisionalNavigation:a4 withError:a5];
  [(_SFWebAppServiceViewController *)self _loadNextFallbackURL];
}

- (void)webViewController:(id)a3 didFinishNavigation:(id)a4
{
  fallbackURLs = self->_fallbackURLs;
  self->_fallbackURLs = 0;
  v7 = a4;
  v8 = a3;

  v9.receiver = self;
  v9.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v9 webViewController:v8 didFinishNavigation:v7];

  [(_SFWebAppServiceViewController *)self _fetchApplicationManifestIfNeeded];
  [(_SFWebAppServiceViewController *)self _updateDisplayMode];
}

- (void)webViewController:(id)a3 setShouldKeepScreenAwake:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v7 webViewController:a3 setShouldKeepScreenAwake:?];
  v6 = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy];
  [v6 setShouldKeepScreenAwake:v4];
}

- (void)webViewControllerDidChangeURL:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v4 webViewControllerDidChangeURL:a3];
  [(_SFWebAppServiceViewController *)self _updateDisplayMode];
}

- (void)_updateDisplayMode
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  v4 = [(_SFBrowserContentViewController *)self rootWebViewController];
  v5 = [v3 webView];
  v6 = [v5 URL];

  v7 = [(_SFBrowserContentViewController *)self isShowingErrorPage];
  v8 = [(_SFWebAppServiceViewController *)self _isURLOutOfScope:v6 withLoginURLExempted:0];
  v9 = v8;
  v10 = 2;
  if (v7)
  {
    v10 = 3;
  }

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  [(SFBrowserServiceViewController *)self setDisplayMode:v11];
  if (v3 != v4 || v9 || v7)
  {
    if (v3 == v4)
    {
      v13 = [v3 webView];
      v14 = [v13 backForwardList];
      v15 = [v14 backList];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __52___SFWebAppServiceViewController__updateDisplayMode__block_invoke;
      v19[3] = &unk_1E8491F00;
      v19[4] = self;
      v21 = v7;
      v20 = v6;
      v16 = [v15 safari_containsObjectPassingTest:v19];

      v12 = v16 ^ 1u;
    }

    else
    {
      v12 = 0;
    }

    v17 = [(_SFBrowserContentViewController *)self browserView];
    v18 = [v17 navigationBar];

    [v18 setDismissButtonHidden:v12];
  }
}

- (id)websiteDataStoreConfigurationWithWebClipIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E6985430]);
  v6 = MEMORY[0x1E695DFF8];
  v7 = [MEMORY[0x1E69DD2B8] pathForWebClipStorageWithIdentifier:v4];
  v8 = [v6 fileURLWithPath:v7];

  v9 = [v8 URLByAppendingPathComponent:@"Default" isDirectory:1];
  [v5 _setWebStorageDirectory:v8];
  [v5 _setWebSQLDatabaseDirectory:v8];
  v10 = [v5 _webSQLDatabaseDirectory];
  v11 = [v10 URLByAppendingPathComponent:@"___IndexedDB"];
  [v5 _setIndexedDBDatabaseDirectory:v11];

  v12 = MEMORY[0x1E695DFF8];
  v13 = [v8 URLByDeletingLastPathComponent];
  v14 = [v13 path];
  v15 = [v14 stringByAppendingPathComponent:@"Cookies"];
  v16 = [v15 stringByAppendingPathComponent:@"/Cookies.binarycookies"];
  v17 = [v12 fileURLWithPath:v16 isDirectory:0];
  [v5 _setCookieStorageFile:v17];

  [v5 _setResourceLoadStatisticsDirectory:v8];
  [v5 setSourceApplicationBundleIdentifier:@"com.apple.mobilesafari"];
  if (objc_opt_respondsToSelector())
  {
    v18 = [(_SFWebAppServiceViewController *)self _canonicalPageURL];
    [v5 setStandaloneApplicationURL:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setAlternativeServicesStorageDirectory:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setHSTSStorageDirectory:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setGeneralStorageDirectory:v9];
  }

  [v5 _setCacheStorageDirectory:v8];
  [v5 _setServiceWorkerRegistrationDirectory:v8];
  v19 = [v8 URLByAppendingPathComponent:@"NetworkCache" isDirectory:1];
  [v5 setNetworkCacheDirectory:v19];

  v20 = [v8 URLByAppendingPathComponent:@"OfflineWebApplicationCache" isDirectory:1];
  [v5 setApplicationCacheDirectory:v20];

  v21 = [v8 URLByAppendingPathComponent:@"MediaCache" isDirectory:1];
  [v5 setMediaCacheDirectory:v21];

  v22 = [v8 URLByAppendingPathComponent:@"MediaKeys" isDirectory:1];
  [v5 setMediaKeysStorageDirectory:v22];

  [v5 setWebPushMachServiceName:@"com.apple.webkit.webpushd.service"];
  if (objc_opt_respondsToSelector())
  {
    [v5 setWebPushPartitionString:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setIsDeclarativeWebPushEnabled:1];
  }

  return v5;
}

- (id)createWebsiteDataStoreForWebClipIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69853B8];
  v5 = [(_SFWebAppServiceViewController *)self websiteDataStoreConfigurationWithWebClipIdentifier:a3];
  v6 = [v4 safari_dataStoreWithConfiguration:v5];

  [v6 set_delegate:self];
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_opt_new();
    [(_SFWebAppServiceViewController *)self setupPreferences:v7];
    [v6 _setServiceWorkerOverridePreferences:v7];
  }

  v8 = [(UIWebClip *)self->_webClip _sf_stagedCookiesURL];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [MEMORY[0x1E69C9790] sharedController];
    [v12 copyCookiesFromFolderAtURL:v8 intoDataStore:v6];
  }

  return v6;
}

- (id)websiteDataStore
{
  websiteDataStore = self->_websiteDataStore;
  if (!websiteDataStore)
  {
    v4 = [(UIWebClip *)self->_webClip identifier];
    v5 = [(_SFWebAppServiceViewController *)self createWebsiteDataStoreForWebClipIdentifier:v4];
    v6 = self->_websiteDataStore;
    self->_websiteDataStore = v5;

    websiteDataStore = self->_websiteDataStore;
  }

  return websiteDataStore;
}

- (void)setupPreferences:(id)a3
{
  v3 = a3;
  [v3 _setStandalone:1];
  [v3 _setNotificationsEnabled:1];
  [v3 _setPushAPIEnabled:1];
  [v3 _setNotificationEventEnabled:1];
  [v3 _setAppBadgeEnabled:1];
  [v3 _setMediaCapabilityGrantsEnabled:0];
}

- (id)webViewConfiguration
{
  v8.receiver = self;
  v8.super_class = _SFWebAppServiceViewController;
  v3 = [(_SFBrowserContentViewController *)&v8 webViewConfiguration];
  [v3 setIgnoresViewportScaleLimits:0];
  v4 = [v3 preferences];
  [(_SFWebAppServiceViewController *)self setupPreferences:v4];

  v5 = [(_SFWebAppServiceViewController *)self websiteDataStore];
  [v3 setWebsiteDataStore:v5];

  v6 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  [v3 _setApplicationManifest:v6];

  return v3;
}

- (void)_setCurrentWebViewController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v12 _setCurrentWebViewController:v4];
  if (v4)
  {
    v5 = [v4 webView];
    [v5 setAllowsLinkPreview:0];
    v6 = [objc_alloc(MEMORY[0x1E69DC888]) initWithRed:0.360784314 green:0.388235294 blue:0.403921569 alpha:1.0];
    [v5 setBackgroundColor:v6];

    [(_SFWebAppServiceViewController *)self _updateDisplayMode];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      if (self->_statusBarPocketInteraction)
      {
        [(UIView *)self->_statusBarBackgroundView removeInteraction:?];
      }

      v7 = objc_alloc(MEMORY[0x1E69DD6C8]);
      v8 = [v4 webView];
      v9 = [v8 scrollView];
      v10 = [v7 initWithScrollView:v9 edge:1 style:2];
      statusBarPocketInteraction = self->_statusBarPocketInteraction;
      self->_statusBarPocketInteraction = v10;

      [(UIView *)self->_statusBarBackgroundView addInteraction:self->_statusBarPocketInteraction];
    }
  }
}

- (id)processPool
{
  processPool = self->_processPool;
  if (!processPool)
  {
    v4 = [(_SFBrowserContentViewController *)self newProcessPool];
    v5 = self->_processPool;
    self->_processPool = v4;

    processPool = self->_processPool;
  }

  return processPool;
}

- (void)_initialLoadFinishedWithSuccess:(BOOL)a3
{
  v3 = a3;
  if (![(NSMutableArray *)self->_fallbackURLs count])
  {
    v5.receiver = self;
    v5.super_class = _SFWebAppServiceViewController;
    [(_SFBrowserContentViewController *)&v5 _initialLoadFinishedWithSuccess:v3];
  }
}

- (void)navigationBarDoneButtonWasTapped:(id)a3
{
  v4 = a3;
  v5 = [(_SFBrowserContentViewController *)self webViewController];
  v6 = [(_SFBrowserContentViewController *)self rootWebViewController];

  if (v5 == v6)
  {
    v7 = [v5 webView];
    v8 = [v7 backForwardList];
    v9 = [v8 backList];
    v10 = [v9 reverseObjectEnumerator];
    v11 = [v10 allObjects];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67___SFWebAppServiceViewController_navigationBarDoneButtonWasTapped___block_invoke;
    v15[3] = &unk_1E8491F28;
    v15[4] = self;
    v12 = [v11 safari_firstObjectPassingTest:v15];
    if (v12)
    {
      v13 = [v5 webView];
      v14 = [v13 goToBackForwardListItem:v12];
    }

    else
    {
      [v4 setDismissButtonHidden:1];
    }
  }

  else
  {
    [(_SFBrowserContentViewController *)self _goBackToOwnerWebView];
  }
}

- (void)loadWebAppWithIdentifier:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_SFWebAppServiceViewController *)self _clientIsWebApp])
  {
    objc_initWeak(&location, self);
    [(_SFBrowserContentViewController *)self setStoreBannersAreDisabled:1];
    v5 = [MEMORY[0x1E69DD2B8] webClipWithIdentifier:v4];
    webClip = self->_webClip;
    self->_webClip = v5;

    [(_SFWebAppServiceViewController *)self _showBlankViewWithAlertIfNeeded];
    v7 = MEMORY[0x1E695DEF0];
    v8 = [(UIWebClip *)self->_webClip _sf_applicationManifestPath];
    v9 = [v7 dataWithContentsOfURL:v8];

    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:0];

    [(UIWebClip *)self->_webClip _sf_setApplicationManifest:v10];
    if (objc_opt_respondsToSelector())
    {
      v11 = WBS_LOG_CHANNEL_PREFIXWebApp();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(UIWebClip *)self->_webClip bundleVersion];
        *buf = 138543618;
        v27 = v4;
        v28 = 2048;
        v29 = v12;
        _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEFAULT, "Loading UIWebClip with identifier '%{public}@'; version: %lu", buf, 0x16u);
      }
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXWebApp();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v4;
        _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_DEFAULT, "Loading UIWebClip with identifier '%{public}@'; unable to get version information", buf, 0xCu);
      }
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIWebClip *)self->_webClip ensurePlaceholderBundle]& 1) == 0)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXWebApp();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [_SFWebAppServiceViewController loadWebAppWithIdentifier:];
      }
    }

    [(_SFBrowserContentViewController *)self setSafariDataSharingMode:2];
    v15 = [(UIWebClip *)self->_webClip pageURL];
    [(_SFWebAppServiceViewController *)self _loadWebClipPageURL:v15];

    v16 = [objc_opt_class() serviceViewControllers];
    [v16 setObject:self forKey:v4];

    [(_SFWebAppServiceViewController *)self setNeedsStatusBarAppearanceUpdate];
    v17 = objc_alloc(MEMORY[0x1E698D028]);
    v18 = [(_SFWebAppServiceViewController *)self _hostApplicationBundleIdentifier];
    v25 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v20 = [v17 initWithBundleIDs:v19 states:40];
    stateMonitor = self->_stateMonitor;
    self->_stateMonitor = v20;

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59___SFWebAppServiceViewController_loadWebAppWithIdentifier___block_invoke;
    v22[3] = &unk_1E8490FC8;
    objc_copyWeak(&v23, &location);
    [(BKSApplicationStateMonitor *)self->_stateMonitor setHandler:v22];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

- (id)placeholderBundleIdentifierForDataStore:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 _webPushPartition];
  v5 = [v3 stringWithFormat:@"com.apple.WebKit.PushBundle.%@", v4];

  return v5;
}

- (id)notificationPermissionsForWebsiteDataStore:(id)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E6983308]);
  v6 = [(_SFWebAppServiceViewController *)self placeholderBundleIdentifierForDataStore:v4];
  v7 = [v5 initWithBundleIdentifier:v6];

  v8 = dispatch_semaphore_create(0);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__1;
  v41 = __Block_byref_object_dispose__1;
  v42 = 0;
  v9 = dispatch_get_global_queue(33, 0);
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __77___SFWebAppServiceViewController_notificationPermissionsForWebsiteDataStore___block_invoke;
  v33 = &unk_1E8491F78;
  v10 = v7;
  v34 = v10;
  v36 = &v37;
  v11 = v8;
  v35 = v11;
  dispatch_async(v9, &v30);

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = [v38[5] authorizationStatus];
  v13 = self->_webClip;
  v14 = [(UIWebClip *)v13 identifier];
  v15 = [v4 _webPushPartition];
  v16 = [v14 isEqualToString:v15];

  if ((v16 & 1) == 0)
  {
    v17 = MEMORY[0x1E69DD2B8];
    v18 = [v4 _webPushPartition];
    v19 = [v17 webClipWithIdentifier:v18];

    v13 = v19;
  }

  v20 = [(UIWebClip *)v13 pageURL];
  v21 = [v20 absoluteString];
  v22 = [v20 scheme];
  v23 = [v22 length] == 0;

  if (v23)
  {
    v24 = [v20 safari_originalDataAsString];
    v25 = [v24 _web_bestURLForUserTypedString];
    v26 = [v25 absoluteString];

    v21 = v26;
  }

  v43 = v21;
  v27 = [MEMORY[0x1E696AD98] numberWithBool:v12 == 2];
  v44[0] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];

  _Block_object_dispose(&v37, 8);

  return v28;
}

- (void)websiteDataStore:(id)a3 showNotification:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 _webPushPartition];
    *buf = 138543362;
    v37 = v10;
    _os_log_impl(&dword_1D4644000, v9, OS_LOG_TYPE_DEFAULT, "About to show push notification with targetContentIdentifier %{public}@", buf, 0xCu);
  }

  v11 = objc_opt_new();
  [v11 setDefaultActionBundleIdentifier:@"com.apple.webapp"];
  v12 = [v6 _webPushPartition];
  [v11 setTargetContentIdentifier:v12];

  v13 = [v7 title];
  [v11 setTitle:v13];

  v14 = [v7 body];
  [v11 setBody:v14];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 alert] != 1)
  {
    v15 = [MEMORY[0x1E69832B8] defaultSound];
    [v11 setSound:v15];
  }

  v16 = self->_webClip;
  v17 = [(UIWebClip *)v16 identifier];
  v18 = [v6 _webPushPartition];
  v19 = [v17 isEqualToString:v18];

  if ((v19 & 1) == 0)
  {
    v20 = MEMORY[0x1E69DD2B8];
    v21 = [v6 _webPushPartition];
    v22 = [v20 webClipWithIdentifier:v21];

    v16 = v22;
  }

  v23 = [(UIWebClip *)v16 title];
  if (![v23 length])
  {
    v24 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_SFWebAppServiceViewController websiteDataStore:showNotification:];
    }

    v25 = [v7 origin];

    v23 = v25;
  }

  v26 = MEMORY[0x1E696AEC0];
  v27 = _WBSLocalizedString();
  v28 = [v26 stringWithFormat:v27, v23];
  [v11 setSubtitle:v28];

  v29 = [v7 userInfo];
  [v11 setUserInfo:v29];

  v30 = [(_SFWebAppServiceViewController *)self placeholderBundleIdentifierForDataStore:v6];
  v31 = [MEMORY[0x1E6983290] iconForApplicationIdentifier:v30];
  [v11 setIcon:v31];

  v32 = MEMORY[0x1E6983298];
  v33 = [v7 identifier];
  v34 = [v32 requestWithIdentifier:v33 content:v11 trigger:0];

  v35 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v30];
  [v35 addNotificationRequest:v34 withCompletionHandler:&__block_literal_global_279];
}

- (void)websiteDataStore:(id)a3 getDisplayedNotificationsForWorkerOrigin:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [(_SFWebAppServiceViewController *)self placeholderBundleIdentifierForDataStore:a3];
  v9 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110___SFWebAppServiceViewController_websiteDataStore_getDisplayedNotificationsForWorkerOrigin_completionHandler___block_invoke;
  v11[3] = &unk_1E8490060;
  v12 = v7;
  v10 = v7;
  [v9 getDeliveredNotificationsWithCompletionHandler:v11];
}

- (void)websiteDataStore:(id)a3 navigateToNotificationActionURL:(id)a4
{
  v5 = a4;
  if ([v5 safari_isEligibleToBeOpenedByServiceWorkers])
  {
    v6 = [MEMORY[0x1E695AC68] requestWithURL:v5];
    [(_SFBrowserContentViewController *)self loadRequest:v6];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_INFO, "Declarative web push notification action URL is ineligible to be opened", v8, 2u);
    }
  }
}

- (void)websiteDataStore:(id)a3 openWindow:(id)a4 fromServiceWorkerOrigin:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  if ([v8 safari_isEligibleToBeOpenedByServiceWorkers])
  {
    v10 = [(_SFWebAppServiceViewController *)self webViewConfiguration];
    v11 = [(_SFBrowserContentViewController *)self _openNewWebViewIfNeededWithConfiguration:v10 forNavigationAction:0];

    if (v11)
    {
      v12 = [MEMORY[0x1E695AC68] requestWithURL:v8];
      [(_SFBrowserContentViewController *)self loadRequest:v12];
    }

    v9[2](v9, v11);
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14[0] = 0;
      _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_INFO, "Web push notification URL is ineligible to be opened", v14, 2u);
    }

    v9[2](v9, 0);
  }
}

- (void)websiteDataStore:(id)a3 workerOrigin:(id)a4 updatedAppBadge:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = self->_webClip;
    v12 = [(UIWebClip *)v11 identifier];
    v13 = [v8 _webPushPartition];
    v14 = [v12 isEqualToString:v13];

    if ((v14 & 1) == 0)
    {
      v15 = MEMORY[0x1E69DD2B8];
      v16 = [v8 _webPushPartition];
      v17 = [v15 webClipWithIdentifier:v16];

      v11 = v17;
    }

    v18 = [(UIWebClip *)v11 pageURL];
    v19 = [v9 isSameSiteAsURL:v18];

    if (v19)
    {
      v20 = objc_opt_respondsToSelector();
      v21 = WBS_LOG_CHANNEL_PREFIXWebPush();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v22)
        {
          v23 = v21;
          v24 = [v8 _webPushPartition];
          v32 = 138412803;
          v33 = v24;
          v34 = 2113;
          v35 = v9;
          v36 = 2112;
          v37 = v10;
          _os_log_impl(&dword_1D4644000, v23, OS_LOG_TYPE_DEFAULT, "Web clip with identifier '%@' worker from origin %{private}@ updated app badge count to %@", &v32, 0x20u);
        }

        v25 = objc_alloc(MEMORY[0x1E69DEBB0]);
        v26 = [(UIWebClip *)v11 placeholderBundleIdentifier];
        v27 = [v25 initWithBundleIdentifier:v26];

        [v27 setBadgeValue:v10];
      }

      else if (v22)
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_1D4644000, v21, OS_LOG_TYPE_DEFAULT, "Denied attempt to update app badge from a worker: Cannot get push placeholder bundle identifier from UIWebClip", &v32, 2u);
      }
    }

    else
    {
      v29 = WBS_LOG_CHANNEL_PREFIXWebPush();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [(UIWebClip *)v11 pageURL];
        v32 = 138478083;
        v33 = v9;
        v34 = 2117;
        v35 = v31;
        _os_log_impl(&dword_1D4644000, v30, OS_LOG_TYPE_DEFAULT, "Denied attempt to update app badge from a worker: Worker origin %{private}@ is a different site from Web Clip page URL %{sensitive}@", &v32, 0x16u);
      }
    }
  }

  else
  {
    v28 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1D4644000, v28, OS_LOG_TYPE_DEFAULT, "Denied attempt to update app badge from a worker: Missing selector to verify worker script origin should be allowed", &v32, 2u);
    }
  }
}

- (void)processWebPushForWebAppWithIdentifier:(id)a3
{
  v32[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s for %@", "-[_SFWebAppServiceViewController processWebPushForWebAppWithIdentifier:]", v4];
  v6 = *MEMORY[0x1E69DDA98];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke;
  v26[3] = &unk_1E848F810;
  v7 = v4;
  v27 = v7;
  v8 = [v6 beginBackgroundTaskWithName:v5 expirationHandler:v26];
  v9 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1D4644000, v9, OS_LOG_TYPE_DEFAULT, "Processing push for Web clip with identifier: '%@'", &buf, 0xCu);
  }

  if (self->_webClip)
  {
    v10 = [(_SFWebAppServiceViewController *)self websiteDataStore];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 _webPushPartition];
  v12 = [v11 isEqualToString:v7];

  if ((v12 & 1) == 0)
  {
    v13 = [(_SFWebAppServiceViewController *)self createWebsiteDataStoreForWebClipIdentifier:v7];

    v10 = v13;
  }

  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  if (objc_opt_respondsToSelector())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3042000000;
    v30 = __Block_byref_object_copy__288;
    v31 = __Block_byref_object_dispose__289;
    v32[0] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke_290;
    aBlock[3] = &unk_1E8491FA0;
    v23 = v14;
    p_buf = &buf;
    v15 = v10;
    v24 = v15;
    v16 = _Block_copy(aBlock);
    objc_storeWeak((*(&buf + 1) + 40), v16);
    getAndProcessPendingPushMessage(v15, v16);

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(v32);
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke_2;
    v19[3] = &unk_1E8491FF0;
    v20 = v14;
    v21 = v10;
    [v21 _getPendingPushMessages:v19];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke_298;
  block[3] = &unk_1E848F638;
  block[4] = self;
  block[5] = v8;
  v17 = self;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], block);
}

- (void)handlePushNotificationActivation:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  webClip = self->_webClip;
  v5 = a3;
  v6 = [(UIWebClip *)webClip identifier];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s for %@", "-[_SFWebAppServiceViewController handlePushNotificationActivation:]", v6];
  v8 = *MEMORY[0x1E69DDA98];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67___SFWebAppServiceViewController_handlePushNotificationActivation___block_invoke;
  v19[3] = &unk_1E848F810;
  v9 = v6;
  v20 = v9;
  v10 = [v8 beginBackgroundTaskWithName:v7 expirationHandler:v19];
  v11 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEFAULT, "Processing push notification activation for Web clip with identifier: '%@'", buf, 0xCu);
  }

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = [(_SFWebAppServiceViewController *)self websiteDataStore];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67___SFWebAppServiceViewController_handlePushNotificationActivation___block_invoke_299;
  v17[3] = &unk_1E848FA00;
  v18 = v12;
  v14 = v12;
  [v13 _processPersistentNotificationClick:v5 completionHandler:v17];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67___SFWebAppServiceViewController_handlePushNotificationActivation___block_invoke_300;
  block[3] = &unk_1E848F638;
  block[4] = self;
  block[5] = v10;
  v15 = self;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], block);
}

- (void)_handleHostStateUpdate:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E698D010]];
  v5 = [v4 unsignedIntValue];

  hostState = self->_hostState;
  if (v5 == 8 && hostState != 8)
  {
    v9 = @"_UIViewServiceHostWillEnterForegroundNotification";
LABEL_11:
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:v9 object:self];

    goto LABEL_12;
  }

  if (v5 == 32 && hostState != 32)
  {
    v9 = @"_UIViewServiceHostDidEnterBackgroundNotification";
    goto LABEL_11;
  }

LABEL_12:
  self->_hostState = v5;
}

- (id)_canonicalPageURL
{
  v2 = [(UIWebClip *)self->_webClip pageURL];
  v3 = [v2 scheme];

  if (!v3)
  {
    v4 = [v2 safari_originalDataAsString];
    v5 = [v4 _web_bestURLForUserTypedString];

    v2 = v5;
  }

  v6 = [v2 _webkit_canonicalize];

  return v6;
}

- (void)_loadWebClipPageURL:(id)a3
{
  v11 = a3;
  v4 = [(_SFBrowserContentViewController *)self browserView];
  [v4 setContentReadyForDisplay];

  v5 = [v11 scheme];

  if (v5)
  {
    v6 = [v11 _webkit_canonicalize];
    [(SFBrowserServiceViewController *)self loadURL:v6];
  }

  else
  {
    v7 = [v11 safari_originalDataAsString];
    v8 = [v7 _web_possibleURLsForUserTypedString];
    v6 = [v8 mutableCopy];

    if ([v6 count])
    {
      if ([v6 count] >= 2)
      {
        v9 = [v6 firstObject];
        [v6 addObject:v9];
      }

      objc_storeStrong(&self->_fallbackURLs, v6);
      [(_SFWebAppServiceViewController *)self _loadNextFallbackURL];
    }

    else
    {
      v10 = [v11 _webkit_canonicalize];
      [(SFBrowserServiceViewController *)self loadURL:v10];
    }
  }
}

- (void)_loadNextFallbackURL
{
  v3 = [(NSMutableArray *)self->_fallbackURLs firstObject];
  if (v3)
  {
    v4 = v3;
    [(NSMutableArray *)self->_fallbackURLs removeObjectAtIndex:0];
    [(SFBrowserServiceViewController *)self loadURL:v4];
    v3 = v4;
  }
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  if ([(_SFBrowserContentViewController *)self mediaStateIcon]!= a3)
  {
    if ([(_SFBrowserContentViewController *)self mediaStateIcon]== 1)
    {
      v5 = a3 - 1 < 2;
      v6 = 1;
    }

    else
    {
      v8 = [(_SFBrowserContentViewController *)self mediaStateIcon];
      v5 = a3 - 1 < 2;
      v6 = v8 == 2;
      if (v8 != 2 && a3 - 1 <= 1)
      {
        v7 = +[_SFWebAppMediaCaptureStatusBarManager sharedManager];
        [v7 recordingDocumentDidBeginMediaCapture:self audioOnly:a3 == 1];
        goto LABEL_10;
      }
    }

    if (v5 || !v6)
    {
      goto LABEL_11;
    }

    v7 = +[_SFWebAppMediaCaptureStatusBarManager sharedManager];
    [v7 recordingDocumentDidEndMediaCapture:self];
LABEL_10:

LABEL_11:
    v9.receiver = self;
    v9.super_class = _SFWebAppServiceViewController;
    [(_SFBrowserContentViewController *)&v9 setMediaStateIcon:a3];
  }
}

- (NSString)URLString
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v2 URL];
  v4 = [v3 absoluteString];

  return v4;
}

- (void)muteMediaCapture
{
  [(_SFBrowserContentViewController *)self mediaStateIcon];
  if ((_SFMediaStateIconIsMuted() & 1) == 0)
  {
    v3 = [(_SFBrowserContentViewController *)self webViewController];
    v4 = [v3 webView];
    [v4 _setPageMuted:2];

    [(_SFBrowserContentViewController *)self mediaStateIcon];
    v5 = _SFMediaStateIconMutedVariant();
    v6.receiver = self;
    v6.super_class = _SFWebAppServiceViewController;
    [(_SFBrowserContentViewController *)&v6 setMediaStateIcon:v5];
  }
}

- (void)statusBarIndicatorTapped
{
  [(_SFBrowserContentViewController *)self mediaStateIcon];
  v11 = _WBSLocalizedString();
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v3 preferredStyle:1];
  v5 = MEMORY[0x1E69DC648];
  v6 = _WBSLocalizedString();
  v7 = [v5 actionWithTitle:v6 style:0 handler:&__block_literal_global_332];
  [v4 addAction:v7];

  v8 = MEMORY[0x1E69DC648];
  v9 = _WBSLocalizedString();
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];
  [v4 addAction:v10];

  [(_SFBrowserContentViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_fetchApplicationManifestIfNeeded
{
  v3 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  if (v3)
  {
  }

  else if (!self->_applicationManifestFetcher)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x1E69C9758]);
    v5 = [(_SFBrowserContentViewController *)self webViewController];
    v6 = [v5 webView];
    v7 = [v4 initWithWebView:v6];
    applicationManifestFetcher = self->_applicationManifestFetcher;
    self->_applicationManifestFetcher = v7;

    v9 = self->_applicationManifestFetcher;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67___SFWebAppServiceViewController__fetchApplicationManifestIfNeeded__block_invoke;
    v20[3] = &unk_1E8492038;
    objc_copyWeak(&v21, &location);
    [(WBSApplicationManifestFetcher *)v9 getApplicationManifestWithCompletionHandler:v20];
    if (![(UIWebClip *)self->_webClip webClipStatusBarStyle]&& !self->_activityJSController && !self->_webClipMetadataFetcher)
    {
      v10 = [_SFInjectedJavaScriptController alloc];
      v11 = [(_SFBrowserContentViewController *)self webViewController];
      v12 = [v11 webView];
      v13 = [(_SFInjectedJavaScriptController *)v10 initWithWebView:v12];
      activityJSController = self->_activityJSController;
      self->_activityJSController = v13;

      v15 = [[_SFWebClipMetadataFetcher alloc] initWithInjectedJavascriptController:self->_activityJSController];
      webClipMetadataFetcher = self->_webClipMetadataFetcher;
      self->_webClipMetadataFetcher = v15;

      v17 = self->_webClipMetadataFetcher;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __67___SFWebAppServiceViewController__fetchApplicationManifestIfNeeded__block_invoke_2;
      v18[3] = &unk_1E8492060;
      objc_copyWeak(&v19, &location);
      [(_SFWebClipMetadataFetcher *)v17 fetchMetadataWithConsumer:v18];
      objc_destroyWeak(&v19);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)_updateThemeColor
{
  if (!self->_updatingThemeColor)
  {
    self->_updatingThemeColor = 1;
    v3 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51___SFWebAppServiceViewController__updateThemeColor__block_invoke;
    v8[3] = &unk_1E848F810;
    v8[4] = self;
    [v3 setHandler:v8];
    v4 = [(_SFBrowserContentViewController *)self displayMode];
    if (v4 != 3 && v4)
    {
      v6 = [(_SFBrowserContentViewController *)self webViewController];
      themeColor = [v6 webView];

      if (themeColor)
      {
        v7 = [MEMORY[0x1E69C9890] updateThemeColorForWebView:themeColor darkModeEnabled:0 allowFallbackColors:0 updateUnderPageBackgroundColor:1];
      }

      else
      {
        v7 = 0;
      }

      objc_storeStrong(&self->_themeColor, v7);
      if (themeColor)
      {
      }
    }

    else
    {
      themeColor = self->_themeColor;
      self->_themeColor = 0;
    }
  }
}

@end