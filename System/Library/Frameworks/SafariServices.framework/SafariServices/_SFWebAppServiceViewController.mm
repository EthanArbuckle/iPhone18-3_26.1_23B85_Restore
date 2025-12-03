@interface _SFWebAppServiceViewController
+ (id)serviceViewControllers;
- (BOOL)_clientIsWebApp;
- (BOOL)_isURLOutOfLegacyScope:(id)scope withLoginURLExempted:(BOOL)exempted;
- (BOOL)_isURLOutOfManifestScope:(id)scope;
- (BOOL)_isURLOutOfScope:(id)scope withLoginURLExempted:(BOOL)exempted;
- (NSString)URLString;
- (id)_canonicalPageURL;
- (id)createWebsiteDataStoreForWebClipIdentifier:(id)identifier;
- (id)notificationPermissionsForWebsiteDataStore:(id)store;
- (id)placeholderBundleIdentifierForDataStore:(id)store;
- (id)processPool;
- (id)webViewConfiguration;
- (id)websiteDataStore;
- (id)websiteDataStoreConfigurationWithWebClipIdentifier:(id)identifier;
- (int64_t)preferredStatusBarStyle;
- (void)_fetchApplicationManifestIfNeeded;
- (void)_handleHostStateUpdate:(id)update;
- (void)_hostApplicationDidEnterBackground;
- (void)_initialLoadFinishedWithSuccess:(BOOL)success;
- (void)_loadNextFallbackURL;
- (void)_loadWebClipPageURL:(id)l;
- (void)_setCurrentWebViewController:(id)controller;
- (void)_showBlankViewWithAlertIfNeeded;
- (void)_updateDisplayMode;
- (void)_updateThemeColor;
- (void)_updateUI;
- (void)clearWebViewAndWebsiteDataWithCompletion:(id)completion;
- (void)clearWebsiteDataWithWebClipIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)handlePushNotificationActivation:(id)activation;
- (void)loadWebAppWithIdentifier:(id)identifier;
- (void)muteMediaCapture;
- (void)navigationBarDoneButtonWasTapped:(id)tapped;
- (void)processWebPushForWebAppWithIdentifier:(id)identifier;
- (void)setMediaStateIcon:(unint64_t)icon;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setupPreferences:(id)preferences;
- (void)statusBarIndicatorTapped;
- (void)viewDidLoad;
- (void)webAppDidBecomeActive;
- (void)webAppWillResignActive;
- (void)webViewController:(id)controller decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webViewController:(id)controller didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webViewController:(id)controller didFinishNavigation:(id)navigation;
- (void)webViewController:(id)controller requestNotificationPermissionForSecurityOrigin:(id)origin decisionHandler:(id)handler;
- (void)webViewController:(id)controller setShouldKeepScreenAwake:(BOOL)awake;
- (void)webViewController:(id)controller updatedAppBadge:(id)badge fromSecurityOrigin:(id)origin;
- (void)webViewControllerDidChangeLoadingState:(id)state;
- (void)webViewControllerDidChangeURL:(id)l;
- (void)webViewControllerDidFirstVisuallyNonEmptyLayout:(id)layout;
- (void)websiteDataStore:(id)store getDisplayedNotificationsForWorkerOrigin:(id)origin completionHandler:(id)handler;
- (void)websiteDataStore:(id)store navigateToNotificationActionURL:(id)l;
- (void)websiteDataStore:(id)store openWindow:(id)window fromServiceWorkerOrigin:(id)origin completionHandler:(id)handler;
- (void)websiteDataStore:(id)store showNotification:(id)notification;
- (void)websiteDataStore:(id)store workerOrigin:(id)origin updatedAppBadge:(id)badge;
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
  _hostApplicationBundleIdentifier = [(_SFWebAppServiceViewController *)self _hostApplicationBundleIdentifier];
  v3 = [_hostApplicationBundleIdentifier hasPrefix:@"com.apple.webapp"];

  return v3;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_stateMonitor invalidate];
  v3.receiver = self;
  v3.super_class = _SFWebAppServiceViewController;
  [(SFBrowserServiceViewController *)&v3 dealloc];
}

- (void)clearWebViewAndWebsiteDataWithCompletion:(id)completion
{
  completionCopy = completion;
  webView = [(_SFBrowserContentViewController *)self webView];

  if (webView)
  {
    webView2 = [(_SFBrowserContentViewController *)self webView];
    [webView2 stopLoading];

    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    [webViewController willMoveToParentViewController:0];
    view = [webViewController view];
    [view removeFromSuperview];

    [webViewController removeFromParentViewController];
  }

  websiteDataStore = [(_SFWebAppServiceViewController *)self websiteDataStore];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = *MEMORY[0x1E69DDBE8];
  v10 = *MEMORY[0x1E69DDA98];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke;
  v19[3] = &unk_1E8491E38;
  v11 = completionCopy;
  v20 = v11;
  v21 = &v22;
  v12 = [v10 beginBackgroundTaskWithName:@"com.apple.SafariViewService.deleteWebAppData" expirationHandler:v19];
  v23[3] = v12;
  [websiteDataStore _setCompletionHandlerForRemovalFromNetworkProcess:&__block_literal_global_138];
  safari_allDataTypes = [MEMORY[0x1E69853B8] safari_allDataTypes];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75___SFWebAppServiceViewController_clearWebViewAndWebsiteDataWithCompletion___block_invoke_141;
  v16[3] = &unk_1E8491E38;
  v15 = v11;
  v17 = v15;
  v18 = &v22;
  [websiteDataStore removeDataOfTypes:safari_allDataTypes modifiedSince:distantPast completionHandler:v16];

  _Block_object_dispose(&v22, 8);
}

- (void)clearWebsiteDataWithWebClipIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  serviceViewControllers = [objc_opt_class() serviceViewControllers];
  v8 = [serviceViewControllers objectForKey:identifierCopy];

  if (v8)
  {
    selfCopy = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E69DD2B8] webClipWithIdentifier:identifierCopy];
    webClip = self->_webClip;
    self->_webClip = v10;

    selfCopy = self;
  }

  [(_SFWebAppServiceViewController *)selfCopy clearWebViewAndWebsiteDataWithCompletion:completionCopy];
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
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIView *)self->_statusBarBackgroundView setBackgroundColor:labelColor];
  }

  v6 = self->_statusBarBackgroundView;
  browserView = [(_SFBrowserContentViewController *)self browserView];
  [browserView setStatusBarBackgroundView:v6];
}

- (int64_t)preferredStatusBarStyle
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    return 0;
  }

  displayMode = [(_SFBrowserContentViewController *)self displayMode];
  result = 0;
  if (displayMode <= 4 && ((1 << displayMode) & 0x16) != 0)
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
      webClipStatusBarStyle = [(UIWebClip *)self->_webClip webClipStatusBarStyle];

      return MEMORY[0x1EEE4E0B0](webClipStatusBarStyle);
    }
  }

  return result;
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    webClipStatusBarStyle = [(UIWebClip *)self->_webClip webClipStatusBarStyle];
    if (webClipStatusBarStyle == 2)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)self->_statusBarBackgroundView setBackgroundColor:clearColor];
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

    [(_SFBrowserContentViewController *)self setWebViewLayoutUnderlapsStatusBar:webClipStatusBarStyle == 2];
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
  httpCookieStore = [(WKWebsiteDataStore *)self->_websiteDataStore httpCookieStore];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    httpCookieStore2 = [(WKWebsiteDataStore *)self->_websiteDataStore httpCookieStore];
    [httpCookieStore2 _flushCookiesToDiskWithCompletionHandler:&__block_literal_global_155];
  }
}

- (void)webAppDidBecomeActive
{
  [(_SFWebAppServiceViewController *)self _showBlankViewWithAlertIfNeeded];
  if ((_SFMediaStateIconIsMuted() & 1) == 0)
  {
    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    webView = [webViewController webView];
    [webView _setPageMuted:0];
  }

  mEMORY[0x1E69C8EB0] = [MEMORY[0x1E69C8EB0] sharedManager];
  v5 = objc_opt_new();
  identifier = [(UIWebClip *)self->_webClip identifier];
  _sf_applicationManifest = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  name = [_sf_applicationManifest name];
  _sf_applicationManifest2 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  manifestId = [_sf_applicationManifest2 manifestId];
  absoluteString = [manifestId absoluteString];
  [mEMORY[0x1E69C8EB0] donateWebAppInFocusEventWithStarting:1 date:v5 webAppType:0 identifier:identifier name:name manifestId:absoluteString];
}

- (void)webAppWillResignActive
{
  self->_mediaStateIconBeforeSuspension = [(_SFBrowserContentViewController *)self mediaStateIcon];
  v3 = +[_SFWebAppMediaCaptureStatusBarManager sharedManager];
  [v3 cancelStatusBarOverride];

  mEMORY[0x1E69C8EB0] = [MEMORY[0x1E69C8EB0] sharedManager];
  v5 = objc_opt_new();
  identifier = [(UIWebClip *)self->_webClip identifier];
  _sf_applicationManifest = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  name = [_sf_applicationManifest name];
  _sf_applicationManifest2 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  manifestId = [_sf_applicationManifest2 manifestId];
  absoluteString = [manifestId absoluteString];
  [mEMORY[0x1E69C8EB0] donateWebAppInFocusEventWithStarting:0 date:v5 webAppType:0 identifier:identifier name:name manifestId:absoluteString];

  if (self->_hasPendingDestroyScene)
  {
    _remoteViewControllerProxy = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy destroyScene];
  }
}

- (void)_showBlankViewWithAlertIfNeeded
{
  [(UIWebClip *)self->_webClip _reloadProperties];
  eligibilityStatus = [(UIWebClip *)self->_webClip eligibilityStatus];
  if (eligibilityStatus)
  {
    v4 = eligibilityStatus;
    containingAlertController = self->_containingAlertController;
    if (!containingAlertController)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DD258]);
      v7 = self->_containingAlertController;
      self->_containingAlertController = v6;

      [(UIViewController *)self->_containingAlertController setModalPresentationStyle:0];
      v8 = objc_alloc(MEMORY[0x1E69DC8D0]);
      emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
      v10 = [v8 initWithConfiguration:emptyConfiguration];
      [(UIViewController *)self->_containingAlertController setView:v10];

      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      view = [(UIViewController *)self->_containingAlertController view];
      [view setBackgroundColor:systemBackgroundColor];

      containingAlertController = self->_containingAlertController;
    }

    presentingViewController = [(UIViewController *)containingAlertController presentingViewController];

    if (!presentingViewController)
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
      identifier = [(UIWebClip *)self->_webClip identifier];
      [v18 launchWebClipWithIdentifier:identifier];

      self->_hasPendingDestroyScene = 1;
    }

    else if (v4 == 1)
    {
      presentingViewController2 = [(UIAlertController *)self->_alertController presentingViewController];

      if (!presentingViewController2)
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
  _remoteViewControllerProxy = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy];
  webView = [(_SFBrowserContentViewController *)self webView];
  canGoBack = [webView canGoBack];
  webView2 = [(_SFBrowserContentViewController *)self webView];
  [_remoteViewControllerProxy didFinishNavigationCanGoBack:canGoBack canGoForward:{objc_msgSend(webView2, "canGoForward")}];
}

- (void)webViewController:(id)controller requestNotificationPermissionForSecurityOrigin:(id)origin decisionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "requestNotificationPermissionForSecurityOrigin: Cannot get push placeholder bundle identifier from UIWebClip", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  placeholderBundleIdentifier = [(UIWebClip *)self->_webClip placeholderBundleIdentifier];
  v9 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    webClip = self->_webClip;
    v11 = v9;
    identifier = [(UIWebClip *)webClip identifier];
    *buf = 138543362;
    v18 = identifier;
    _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEFAULT, "Requesting push notification permission for Web Clip %{public}@", buf, 0xCu);
  }

  v13 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:placeholderBundleIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __115___SFWebAppServiceViewController_webViewController_requestNotificationPermissionForSecurityOrigin_decisionHandler___block_invoke;
  v15[3] = &unk_1E8491E88;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [v13 requestAuthorizationWithOptions:7 completionHandler:v15];
}

- (void)webViewController:(id)controller updatedAppBadge:(id)badge fromSecurityOrigin:(id)origin
{
  v33 = *MEMORY[0x1E69E9840];
  badgeCopy = badge;
  originCopy = origin;
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

  pageURL = [(UIWebClip *)self->_webClip pageURL];
  v10 = [originCopy isSameSiteAsURL:pageURL];

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
        identifier = [(UIWebClip *)webClip identifier];
        v27 = 138543875;
        v28 = identifier;
        v29 = 2113;
        v30 = originCopy;
        v31 = 2112;
        v32 = badgeCopy;
        _os_log_impl(&dword_1D4644000, v15, OS_LOG_TYPE_DEFAULT, "Web Clip with identifier '%{public}@', script from origin %{private}@ updated app badge count to %@", &v27, 0x20u);
      }

      v17 = objc_alloc(MEMORY[0x1E69DEBB0]);
      placeholderBundleIdentifier = [(UIWebClip *)self->_webClip placeholderBundleIdentifier];
      v19 = [v17 initWithBundleIdentifier:placeholderBundleIdentifier];

      [v19 setBadgeValue:badgeCopy];
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
    pageURL2 = [(UIWebClip *)v24 pageURL];
    v27 = 138478083;
    v28 = originCopy;
    v29 = 2117;
    v30 = pageURL2;
    _os_log_impl(&dword_1D4644000, v25, OS_LOG_TYPE_DEFAULT, "Denied attempt to update app badge from a window object: Script origin %{private}@ is a different site from Web Clip page URL %{sensitive}@", &v27, 0x16u);
  }

LABEL_14:
}

- (void)webViewControllerDidChangeLoadingState:(id)state
{
  v7.receiver = self;
  v7.super_class = _SFWebAppServiceViewController;
  stateCopy = state;
  [(_SFBrowserContentViewController *)&v7 webViewControllerDidChangeLoadingState:stateCopy];
  v5 = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy:v7.receiver];
  isLoading = [stateCopy isLoading];

  [v5 didChangeLoadingState:isLoading];
}

- (void)webViewControllerDidFirstVisuallyNonEmptyLayout:(id)layout
{
  v5.receiver = self;
  v5.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v5 webViewControllerDidFirstVisuallyNonEmptyLayout:layout];
  _remoteViewControllerProxy = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy didFinishInitialLoad:1];
}

- (void)webViewController:(id)controller decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v44[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  actionCopy = action;
  handlerCopy = handler;
  request = [actionCopy request];
  v12 = [request URL];

  navigationType = [actionCopy navigationType];
  targetFrame = [actionCopy targetFrame];
  if (targetFrame)
  {
    targetFrame2 = [actionCopy targetFrame];
    isMainFrame = [targetFrame2 isMainFrame];
  }

  else
  {
    isMainFrame = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100___SFWebAppServiceViewController_webViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  aBlock[3] = &unk_1E8491ED8;
  aBlock[4] = self;
  v17 = v12;
  v42 = isMainFrame;
  v39 = v17;
  v41 = navigationType;
  v18 = handlerCopy;
  v40 = v18;
  v19 = _Block_copy(aBlock);
  request2 = [actionCopy request];
  v21 = [request2 valueForHTTPHeaderField:@"Referer"];

  v36 = controllerCopy;
  selfCopy = self;
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

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v24 = [defaultWorkspace URLOverrideForURL:v17];

  scheme = [v24 scheme];
  scheme2 = [v17 scheme];
  v27 = [scheme caseInsensitiveCompare:scheme2];

  if (v27)
  {
    defaultWorkspace2 = [MEMORY[0x1E6963608] defaultWorkspace];
    v29 = v35;
    [defaultWorkspace2 openURL:v24 withOptions:v35];
  }

  else if ([v17 hasTelephonyScheme])
  {
    defaultWorkspace2 = [MEMORY[0x1E6963608] defaultWorkspace];
    v30 = MEMORY[0x1E695DFF8];
    phoneNumber = [v17 phoneNumber];
    v32 = [v30 telephonyURLWithDestinationID:phoneNumber promptUser:1];
    v29 = v35;
    [defaultWorkspace2 openURL:v32 withOptions:v35];
  }

  else
  {
    if (([v17 isFaceTimeURL] & 1) == 0 && !objc_msgSend(v17, "isFaceTimeAudioURL"))
    {
      [actionCopy _sf_setAllowsExternalRedirectWithoutPrompting:1];
      v37.receiver = selfCopy;
      v37.super_class = _SFWebAppServiceViewController;
      v34 = v36;
      [(_SFBrowserContentViewController *)&v37 webViewController:v36 decidePolicyForNavigationAction:actionCopy decisionHandler:v18];
      v29 = v35;
      goto LABEL_15;
    }

    defaultWorkspace2 = [MEMORY[0x1E6963608] defaultWorkspace];
    v33 = [MEMORY[0x1E695DFF8] faceTimePromptURLWithURL:v17];
    v29 = v35;
    [defaultWorkspace2 openURL:v33 withOptions:v35];
  }

  v19[2](v19, 0);
  v34 = v36;
LABEL_15:
}

- (BOOL)_isURLOutOfManifestScope:(id)scope
{
  scopeCopy = scope;
  _sf_applicationManifest = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  v6 = _sf_applicationManifest;
  if (_sf_applicationManifest)
  {
    scope = [_sf_applicationManifest scope];
    if (scope)
    {
      if ([scopeCopy safari_hasSameOriginAsURL:scope])
      {
        path = [scopeCopy path];
        path2 = [scope path];
        v10 = [path hasPrefix:path2] ^ 1;
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

- (BOOL)_isURLOutOfLegacyScope:(id)scope withLoginURLExempted:(BOOL)exempted
{
  scopeCopy = scope;
  _sf_applicationManifest = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  if (_sf_applicationManifest)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    pageURL = [(UIWebClip *)self->_webClip pageURL];
    v7 = [scopeCopy safari_isWithinWebAppNavigationScope:pageURL] ^ 1;
  }

  return v7;
}

- (BOOL)_isURLOutOfScope:(id)scope withLoginURLExempted:(BOOL)exempted
{
  exemptedCopy = exempted;
  scopeCopy = scope;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIWebClip *)self->_webClip ignoreManifestScope]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(_SFWebAppServiceViewController *)self _isURLOutOfManifestScope:scopeCopy]|| [(_SFWebAppServiceViewController *)self _isURLOutOfLegacyScope:scopeCopy withLoginURLExempted:exemptedCopy];
  }

  return v7;
}

- (void)webViewController:(id)controller didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v6.receiver = self;
  v6.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v6 webViewController:controller didFailProvisionalNavigation:navigation withError:error];
  [(_SFWebAppServiceViewController *)self _loadNextFallbackURL];
}

- (void)webViewController:(id)controller didFinishNavigation:(id)navigation
{
  fallbackURLs = self->_fallbackURLs;
  self->_fallbackURLs = 0;
  navigationCopy = navigation;
  controllerCopy = controller;

  v9.receiver = self;
  v9.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v9 webViewController:controllerCopy didFinishNavigation:navigationCopy];

  [(_SFWebAppServiceViewController *)self _fetchApplicationManifestIfNeeded];
  [(_SFWebAppServiceViewController *)self _updateDisplayMode];
}

- (void)webViewController:(id)controller setShouldKeepScreenAwake:(BOOL)awake
{
  awakeCopy = awake;
  v7.receiver = self;
  v7.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v7 webViewController:controller setShouldKeepScreenAwake:?];
  _remoteViewControllerProxy = [(_SFWebAppServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setShouldKeepScreenAwake:awakeCopy];
}

- (void)webViewControllerDidChangeURL:(id)l
{
  v4.receiver = self;
  v4.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v4 webViewControllerDidChangeURL:l];
  [(_SFWebAppServiceViewController *)self _updateDisplayMode];
}

- (void)_updateDisplayMode
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  rootWebViewController = [(_SFBrowserContentViewController *)self rootWebViewController];
  webView = [webViewController webView];
  v6 = [webView URL];

  isShowingErrorPage = [(_SFBrowserContentViewController *)self isShowingErrorPage];
  v8 = [(_SFWebAppServiceViewController *)self _isURLOutOfScope:v6 withLoginURLExempted:0];
  v9 = v8;
  v10 = 2;
  if (isShowingErrorPage)
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
  if (webViewController != rootWebViewController || v9 || isShowingErrorPage)
  {
    if (webViewController == rootWebViewController)
    {
      webView2 = [webViewController webView];
      backForwardList = [webView2 backForwardList];
      backList = [backForwardList backList];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __52___SFWebAppServiceViewController__updateDisplayMode__block_invoke;
      v19[3] = &unk_1E8491F00;
      v19[4] = self;
      v21 = isShowingErrorPage;
      v20 = v6;
      v16 = [backList safari_containsObjectPassingTest:v19];

      v12 = v16 ^ 1u;
    }

    else
    {
      v12 = 0;
    }

    browserView = [(_SFBrowserContentViewController *)self browserView];
    navigationBar = [browserView navigationBar];

    [navigationBar setDismissButtonHidden:v12];
  }
}

- (id)websiteDataStoreConfigurationWithWebClipIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x1E6985430]);
  v6 = MEMORY[0x1E695DFF8];
  v7 = [MEMORY[0x1E69DD2B8] pathForWebClipStorageWithIdentifier:identifierCopy];
  v8 = [v6 fileURLWithPath:v7];

  v9 = [v8 URLByAppendingPathComponent:@"Default" isDirectory:1];
  [v5 _setWebStorageDirectory:v8];
  [v5 _setWebSQLDatabaseDirectory:v8];
  _webSQLDatabaseDirectory = [v5 _webSQLDatabaseDirectory];
  v11 = [_webSQLDatabaseDirectory URLByAppendingPathComponent:@"___IndexedDB"];
  [v5 _setIndexedDBDatabaseDirectory:v11];

  v12 = MEMORY[0x1E695DFF8];
  uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v15 = [path stringByAppendingPathComponent:@"Cookies"];
  v16 = [v15 stringByAppendingPathComponent:@"/Cookies.binarycookies"];
  v17 = [v12 fileURLWithPath:v16 isDirectory:0];
  [v5 _setCookieStorageFile:v17];

  [v5 _setResourceLoadStatisticsDirectory:v8];
  [v5 setSourceApplicationBundleIdentifier:@"com.apple.mobilesafari"];
  if (objc_opt_respondsToSelector())
  {
    _canonicalPageURL = [(_SFWebAppServiceViewController *)self _canonicalPageURL];
    [v5 setStandaloneApplicationURL:_canonicalPageURL];
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
    [v5 setWebPushPartitionString:identifierCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setIsDeclarativeWebPushEnabled:1];
  }

  return v5;
}

- (id)createWebsiteDataStoreForWebClipIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E69853B8];
  v5 = [(_SFWebAppServiceViewController *)self websiteDataStoreConfigurationWithWebClipIdentifier:identifier];
  v6 = [v4 safari_dataStoreWithConfiguration:v5];

  [v6 set_delegate:self];
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_opt_new();
    [(_SFWebAppServiceViewController *)self setupPreferences:v7];
    [v6 _setServiceWorkerOverridePreferences:v7];
  }

  _sf_stagedCookiesURL = [(UIWebClip *)self->_webClip _sf_stagedCookiesURL];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [_sf_stagedCookiesURL path];
  v11 = [defaultManager fileExistsAtPath:path];

  if (v11)
  {
    mEMORY[0x1E69C9790] = [MEMORY[0x1E69C9790] sharedController];
    [mEMORY[0x1E69C9790] copyCookiesFromFolderAtURL:_sf_stagedCookiesURL intoDataStore:v6];
  }

  return v6;
}

- (id)websiteDataStore
{
  websiteDataStore = self->_websiteDataStore;
  if (!websiteDataStore)
  {
    identifier = [(UIWebClip *)self->_webClip identifier];
    v5 = [(_SFWebAppServiceViewController *)self createWebsiteDataStoreForWebClipIdentifier:identifier];
    v6 = self->_websiteDataStore;
    self->_websiteDataStore = v5;

    websiteDataStore = self->_websiteDataStore;
  }

  return websiteDataStore;
}

- (void)setupPreferences:(id)preferences
{
  preferencesCopy = preferences;
  [preferencesCopy _setStandalone:1];
  [preferencesCopy _setNotificationsEnabled:1];
  [preferencesCopy _setPushAPIEnabled:1];
  [preferencesCopy _setNotificationEventEnabled:1];
  [preferencesCopy _setAppBadgeEnabled:1];
  [preferencesCopy _setMediaCapabilityGrantsEnabled:0];
}

- (id)webViewConfiguration
{
  v8.receiver = self;
  v8.super_class = _SFWebAppServiceViewController;
  webViewConfiguration = [(_SFBrowserContentViewController *)&v8 webViewConfiguration];
  [webViewConfiguration setIgnoresViewportScaleLimits:0];
  preferences = [webViewConfiguration preferences];
  [(_SFWebAppServiceViewController *)self setupPreferences:preferences];

  websiteDataStore = [(_SFWebAppServiceViewController *)self websiteDataStore];
  [webViewConfiguration setWebsiteDataStore:websiteDataStore];

  _sf_applicationManifest = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  [webViewConfiguration _setApplicationManifest:_sf_applicationManifest];

  return webViewConfiguration;
}

- (void)_setCurrentWebViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = _SFWebAppServiceViewController;
  [(_SFBrowserContentViewController *)&v12 _setCurrentWebViewController:controllerCopy];
  if (controllerCopy)
  {
    webView = [controllerCopy webView];
    [webView setAllowsLinkPreview:0];
    v6 = [objc_alloc(MEMORY[0x1E69DC888]) initWithRed:0.360784314 green:0.388235294 blue:0.403921569 alpha:1.0];
    [webView setBackgroundColor:v6];

    [(_SFWebAppServiceViewController *)self _updateDisplayMode];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      if (self->_statusBarPocketInteraction)
      {
        [(UIView *)self->_statusBarBackgroundView removeInteraction:?];
      }

      v7 = objc_alloc(MEMORY[0x1E69DD6C8]);
      webView2 = [controllerCopy webView];
      scrollView = [webView2 scrollView];
      v10 = [v7 initWithScrollView:scrollView edge:1 style:2];
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
    newProcessPool = [(_SFBrowserContentViewController *)self newProcessPool];
    v5 = self->_processPool;
    self->_processPool = newProcessPool;

    processPool = self->_processPool;
  }

  return processPool;
}

- (void)_initialLoadFinishedWithSuccess:(BOOL)success
{
  successCopy = success;
  if (![(NSMutableArray *)self->_fallbackURLs count])
  {
    v5.receiver = self;
    v5.super_class = _SFWebAppServiceViewController;
    [(_SFBrowserContentViewController *)&v5 _initialLoadFinishedWithSuccess:successCopy];
  }
}

- (void)navigationBarDoneButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  rootWebViewController = [(_SFBrowserContentViewController *)self rootWebViewController];

  if (webViewController == rootWebViewController)
  {
    webView = [webViewController webView];
    backForwardList = [webView backForwardList];
    backList = [backForwardList backList];
    reverseObjectEnumerator = [backList reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67___SFWebAppServiceViewController_navigationBarDoneButtonWasTapped___block_invoke;
    v15[3] = &unk_1E8491F28;
    v15[4] = self;
    v12 = [allObjects safari_firstObjectPassingTest:v15];
    if (v12)
    {
      webView2 = [webViewController webView];
      v14 = [webView2 goToBackForwardListItem:v12];
    }

    else
    {
      [tappedCopy setDismissButtonHidden:1];
    }
  }

  else
  {
    [(_SFBrowserContentViewController *)self _goBackToOwnerWebView];
  }
}

- (void)loadWebAppWithIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(_SFWebAppServiceViewController *)self _clientIsWebApp])
  {
    objc_initWeak(&location, self);
    [(_SFBrowserContentViewController *)self setStoreBannersAreDisabled:1];
    v5 = [MEMORY[0x1E69DD2B8] webClipWithIdentifier:identifierCopy];
    webClip = self->_webClip;
    self->_webClip = v5;

    [(_SFWebAppServiceViewController *)self _showBlankViewWithAlertIfNeeded];
    v7 = MEMORY[0x1E695DEF0];
    _sf_applicationManifestPath = [(UIWebClip *)self->_webClip _sf_applicationManifestPath];
    v9 = [v7 dataWithContentsOfURL:_sf_applicationManifestPath];

    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:0];

    [(UIWebClip *)self->_webClip _sf_setApplicationManifest:v10];
    if (objc_opt_respondsToSelector())
    {
      v11 = WBS_LOG_CHANNEL_PREFIXWebApp();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        bundleVersion = [(UIWebClip *)self->_webClip bundleVersion];
        *buf = 138543618;
        v27 = identifierCopy;
        v28 = 2048;
        v29 = bundleVersion;
        _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEFAULT, "Loading UIWebClip with identifier '%{public}@'; version: %lu", buf, 0x16u);
      }
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXWebApp();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = identifierCopy;
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
    pageURL = [(UIWebClip *)self->_webClip pageURL];
    [(_SFWebAppServiceViewController *)self _loadWebClipPageURL:pageURL];

    serviceViewControllers = [objc_opt_class() serviceViewControllers];
    [serviceViewControllers setObject:self forKey:identifierCopy];

    [(_SFWebAppServiceViewController *)self setNeedsStatusBarAppearanceUpdate];
    v17 = objc_alloc(MEMORY[0x1E698D028]);
    _hostApplicationBundleIdentifier = [(_SFWebAppServiceViewController *)self _hostApplicationBundleIdentifier];
    v25 = _hostApplicationBundleIdentifier;
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

- (id)placeholderBundleIdentifierForDataStore:(id)store
{
  v3 = MEMORY[0x1E696AEC0];
  _webPushPartition = [store _webPushPartition];
  v5 = [v3 stringWithFormat:@"com.apple.WebKit.PushBundle.%@", _webPushPartition];

  return v5;
}

- (id)notificationPermissionsForWebsiteDataStore:(id)store
{
  v44[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v5 = objc_alloc(MEMORY[0x1E6983308]);
  v6 = [(_SFWebAppServiceViewController *)self placeholderBundleIdentifierForDataStore:storeCopy];
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
  authorizationStatus = [v38[5] authorizationStatus];
  v13 = self->_webClip;
  identifier = [(UIWebClip *)v13 identifier];
  _webPushPartition = [storeCopy _webPushPartition];
  v16 = [identifier isEqualToString:_webPushPartition];

  if ((v16 & 1) == 0)
  {
    v17 = MEMORY[0x1E69DD2B8];
    _webPushPartition2 = [storeCopy _webPushPartition];
    v19 = [v17 webClipWithIdentifier:_webPushPartition2];

    v13 = v19;
  }

  pageURL = [(UIWebClip *)v13 pageURL];
  absoluteString = [pageURL absoluteString];
  scheme = [pageURL scheme];
  v23 = [scheme length] == 0;

  if (v23)
  {
    safari_originalDataAsString = [pageURL safari_originalDataAsString];
    _web_bestURLForUserTypedString = [safari_originalDataAsString _web_bestURLForUserTypedString];
    absoluteString2 = [_web_bestURLForUserTypedString absoluteString];

    absoluteString = absoluteString2;
  }

  v43 = absoluteString;
  v27 = [MEMORY[0x1E696AD98] numberWithBool:authorizationStatus == 2];
  v44[0] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];

  _Block_object_dispose(&v37, 8);

  return v28;
}

- (void)websiteDataStore:(id)store showNotification:(id)notification
{
  v38 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  notificationCopy = notification;
  v8 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    _webPushPartition = [storeCopy _webPushPartition];
    *buf = 138543362;
    v37 = _webPushPartition;
    _os_log_impl(&dword_1D4644000, v9, OS_LOG_TYPE_DEFAULT, "About to show push notification with targetContentIdentifier %{public}@", buf, 0xCu);
  }

  v11 = objc_opt_new();
  [v11 setDefaultActionBundleIdentifier:@"com.apple.webapp"];
  _webPushPartition2 = [storeCopy _webPushPartition];
  [v11 setTargetContentIdentifier:_webPushPartition2];

  title = [notificationCopy title];
  [v11 setTitle:title];

  body = [notificationCopy body];
  [v11 setBody:body];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [notificationCopy alert] != 1)
  {
    defaultSound = [MEMORY[0x1E69832B8] defaultSound];
    [v11 setSound:defaultSound];
  }

  v16 = self->_webClip;
  identifier = [(UIWebClip *)v16 identifier];
  _webPushPartition3 = [storeCopy _webPushPartition];
  v19 = [identifier isEqualToString:_webPushPartition3];

  if ((v19 & 1) == 0)
  {
    v20 = MEMORY[0x1E69DD2B8];
    _webPushPartition4 = [storeCopy _webPushPartition];
    v22 = [v20 webClipWithIdentifier:_webPushPartition4];

    v16 = v22;
  }

  title2 = [(UIWebClip *)v16 title];
  if (![title2 length])
  {
    v24 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_SFWebAppServiceViewController websiteDataStore:showNotification:];
    }

    origin = [notificationCopy origin];

    title2 = origin;
  }

  v26 = MEMORY[0x1E696AEC0];
  v27 = _WBSLocalizedString();
  v28 = [v26 stringWithFormat:v27, title2];
  [v11 setSubtitle:v28];

  userInfo = [notificationCopy userInfo];
  [v11 setUserInfo:userInfo];

  v30 = [(_SFWebAppServiceViewController *)self placeholderBundleIdentifierForDataStore:storeCopy];
  v31 = [MEMORY[0x1E6983290] iconForApplicationIdentifier:v30];
  [v11 setIcon:v31];

  v32 = MEMORY[0x1E6983298];
  identifier2 = [notificationCopy identifier];
  v34 = [v32 requestWithIdentifier:identifier2 content:v11 trigger:0];

  v35 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v30];
  [v35 addNotificationRequest:v34 withCompletionHandler:&__block_literal_global_279];
}

- (void)websiteDataStore:(id)store getDisplayedNotificationsForWorkerOrigin:(id)origin completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [(_SFWebAppServiceViewController *)self placeholderBundleIdentifierForDataStore:store];
  v9 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110___SFWebAppServiceViewController_websiteDataStore_getDisplayedNotificationsForWorkerOrigin_completionHandler___block_invoke;
  v11[3] = &unk_1E8490060;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [v9 getDeliveredNotificationsWithCompletionHandler:v11];
}

- (void)websiteDataStore:(id)store navigateToNotificationActionURL:(id)l
{
  lCopy = l;
  if ([lCopy safari_isEligibleToBeOpenedByServiceWorkers])
  {
    v6 = [MEMORY[0x1E695AC68] requestWithURL:lCopy];
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

- (void)websiteDataStore:(id)store openWindow:(id)window fromServiceWorkerOrigin:(id)origin completionHandler:(id)handler
{
  windowCopy = window;
  handlerCopy = handler;
  if ([windowCopy safari_isEligibleToBeOpenedByServiceWorkers])
  {
    webViewConfiguration = [(_SFWebAppServiceViewController *)self webViewConfiguration];
    v11 = [(_SFBrowserContentViewController *)self _openNewWebViewIfNeededWithConfiguration:webViewConfiguration forNavigationAction:0];

    if (v11)
    {
      v12 = [MEMORY[0x1E695AC68] requestWithURL:windowCopy];
      [(_SFBrowserContentViewController *)self loadRequest:v12];
    }

    handlerCopy[2](handlerCopy, v11);
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXWebPush();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14[0] = 0;
      _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_INFO, "Web push notification URL is ineligible to be opened", v14, 2u);
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)websiteDataStore:(id)store workerOrigin:(id)origin updatedAppBadge:(id)badge
{
  v38 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  originCopy = origin;
  badgeCopy = badge;
  if (objc_opt_respondsToSelector())
  {
    v11 = self->_webClip;
    identifier = [(UIWebClip *)v11 identifier];
    _webPushPartition = [storeCopy _webPushPartition];
    v14 = [identifier isEqualToString:_webPushPartition];

    if ((v14 & 1) == 0)
    {
      v15 = MEMORY[0x1E69DD2B8];
      _webPushPartition2 = [storeCopy _webPushPartition];
      v17 = [v15 webClipWithIdentifier:_webPushPartition2];

      v11 = v17;
    }

    pageURL = [(UIWebClip *)v11 pageURL];
    v19 = [originCopy isSameSiteAsURL:pageURL];

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
          _webPushPartition3 = [storeCopy _webPushPartition];
          v32 = 138412803;
          v33 = _webPushPartition3;
          v34 = 2113;
          v35 = originCopy;
          v36 = 2112;
          v37 = badgeCopy;
          _os_log_impl(&dword_1D4644000, v23, OS_LOG_TYPE_DEFAULT, "Web clip with identifier '%@' worker from origin %{private}@ updated app badge count to %@", &v32, 0x20u);
        }

        v25 = objc_alloc(MEMORY[0x1E69DEBB0]);
        placeholderBundleIdentifier = [(UIWebClip *)v11 placeholderBundleIdentifier];
        v27 = [v25 initWithBundleIdentifier:placeholderBundleIdentifier];

        [v27 setBadgeValue:badgeCopy];
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
        pageURL2 = [(UIWebClip *)v11 pageURL];
        v32 = 138478083;
        v33 = originCopy;
        v34 = 2117;
        v35 = pageURL2;
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

- (void)processWebPushForWebAppWithIdentifier:(id)identifier
{
  v32[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s for %@", "-[_SFWebAppServiceViewController processWebPushForWebAppWithIdentifier:]", identifierCopy];
  v6 = *MEMORY[0x1E69DDA98];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke;
  v26[3] = &unk_1E848F810;
  v7 = identifierCopy;
  v27 = v7;
  v8 = [v6 beginBackgroundTaskWithName:identifierCopy expirationHandler:v26];
  v9 = WBS_LOG_CHANNEL_PREFIXWebPush();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1D4644000, v9, OS_LOG_TYPE_DEFAULT, "Processing push for Web clip with identifier: '%@'", &buf, 0xCu);
  }

  if (self->_webClip)
  {
    websiteDataStore = [(_SFWebAppServiceViewController *)self websiteDataStore];
  }

  else
  {
    websiteDataStore = 0;
  }

  _webPushPartition = [websiteDataStore _webPushPartition];
  v12 = [_webPushPartition isEqualToString:v7];

  if ((v12 & 1) == 0)
  {
    v13 = [(_SFWebAppServiceViewController *)self createWebsiteDataStoreForWebClipIdentifier:v7];

    websiteDataStore = v13;
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
    v15 = websiteDataStore;
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
    v21 = websiteDataStore;
    [v21 _getPendingPushMessages:v19];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___SFWebAppServiceViewController_processWebPushForWebAppWithIdentifier___block_invoke_298;
  block[3] = &unk_1E848F638;
  block[4] = self;
  block[5] = v8;
  selfCopy = self;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], block);
}

- (void)handlePushNotificationActivation:(id)activation
{
  v23 = *MEMORY[0x1E69E9840];
  webClip = self->_webClip;
  activationCopy = activation;
  identifier = [(UIWebClip *)webClip identifier];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s for %@", "-[_SFWebAppServiceViewController handlePushNotificationActivation:]", identifier];
  v8 = *MEMORY[0x1E69DDA98];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67___SFWebAppServiceViewController_handlePushNotificationActivation___block_invoke;
  v19[3] = &unk_1E848F810;
  v9 = identifier;
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
  websiteDataStore = [(_SFWebAppServiceViewController *)self websiteDataStore];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67___SFWebAppServiceViewController_handlePushNotificationActivation___block_invoke_299;
  v17[3] = &unk_1E848FA00;
  v18 = v12;
  v14 = v12;
  [websiteDataStore _processPersistentNotificationClick:activationCopy completionHandler:v17];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67___SFWebAppServiceViewController_handlePushNotificationActivation___block_invoke_300;
  block[3] = &unk_1E848F638;
  block[4] = self;
  block[5] = v10;
  selfCopy = self;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], block);
}

- (void)_handleHostStateUpdate:(id)update
{
  v4 = [update objectForKeyedSubscript:*MEMORY[0x1E698D010]];
  unsignedIntValue = [v4 unsignedIntValue];

  hostState = self->_hostState;
  if (unsignedIntValue == 8 && hostState != 8)
  {
    v9 = @"_UIViewServiceHostWillEnterForegroundNotification";
LABEL_11:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:v9 object:self];

    goto LABEL_12;
  }

  if (unsignedIntValue == 32 && hostState != 32)
  {
    v9 = @"_UIViewServiceHostDidEnterBackgroundNotification";
    goto LABEL_11;
  }

LABEL_12:
  self->_hostState = unsignedIntValue;
}

- (id)_canonicalPageURL
{
  pageURL = [(UIWebClip *)self->_webClip pageURL];
  scheme = [pageURL scheme];

  if (!scheme)
  {
    safari_originalDataAsString = [pageURL safari_originalDataAsString];
    _web_bestURLForUserTypedString = [safari_originalDataAsString _web_bestURLForUserTypedString];

    pageURL = _web_bestURLForUserTypedString;
  }

  _webkit_canonicalize = [pageURL _webkit_canonicalize];

  return _webkit_canonicalize;
}

- (void)_loadWebClipPageURL:(id)l
{
  lCopy = l;
  browserView = [(_SFBrowserContentViewController *)self browserView];
  [browserView setContentReadyForDisplay];

  scheme = [lCopy scheme];

  if (scheme)
  {
    _webkit_canonicalize = [lCopy _webkit_canonicalize];
    [(SFBrowserServiceViewController *)self loadURL:_webkit_canonicalize];
  }

  else
  {
    safari_originalDataAsString = [lCopy safari_originalDataAsString];
    _web_possibleURLsForUserTypedString = [safari_originalDataAsString _web_possibleURLsForUserTypedString];
    _webkit_canonicalize = [_web_possibleURLsForUserTypedString mutableCopy];

    if ([_webkit_canonicalize count])
    {
      if ([_webkit_canonicalize count] >= 2)
      {
        firstObject = [_webkit_canonicalize firstObject];
        [_webkit_canonicalize addObject:firstObject];
      }

      objc_storeStrong(&self->_fallbackURLs, _webkit_canonicalize);
      [(_SFWebAppServiceViewController *)self _loadNextFallbackURL];
    }

    else
    {
      _webkit_canonicalize2 = [lCopy _webkit_canonicalize];
      [(SFBrowserServiceViewController *)self loadURL:_webkit_canonicalize2];
    }
  }
}

- (void)_loadNextFallbackURL
{
  firstObject = [(NSMutableArray *)self->_fallbackURLs firstObject];
  if (firstObject)
  {
    v4 = firstObject;
    [(NSMutableArray *)self->_fallbackURLs removeObjectAtIndex:0];
    [(SFBrowserServiceViewController *)self loadURL:v4];
    firstObject = v4;
  }
}

- (void)setMediaStateIcon:(unint64_t)icon
{
  if ([(_SFBrowserContentViewController *)self mediaStateIcon]!= icon)
  {
    if ([(_SFBrowserContentViewController *)self mediaStateIcon]== 1)
    {
      v5 = icon - 1 < 2;
      v6 = 1;
    }

    else
    {
      mediaStateIcon = [(_SFBrowserContentViewController *)self mediaStateIcon];
      v5 = icon - 1 < 2;
      v6 = mediaStateIcon == 2;
      if (mediaStateIcon != 2 && icon - 1 <= 1)
      {
        v7 = +[_SFWebAppMediaCaptureStatusBarManager sharedManager];
        [v7 recordingDocumentDidBeginMediaCapture:self audioOnly:icon == 1];
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
    [(_SFBrowserContentViewController *)&v9 setMediaStateIcon:icon];
  }
}

- (NSString)URLString
{
  webView = [(_SFBrowserContentViewController *)self webView];
  v3 = [webView URL];
  absoluteString = [v3 absoluteString];

  return absoluteString;
}

- (void)muteMediaCapture
{
  [(_SFBrowserContentViewController *)self mediaStateIcon];
  if ((_SFMediaStateIconIsMuted() & 1) == 0)
  {
    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    webView = [webViewController webView];
    [webView _setPageMuted:2];

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
  _sf_applicationManifest = [(UIWebClip *)self->_webClip _sf_applicationManifest];
  if (_sf_applicationManifest)
  {
  }

  else if (!self->_applicationManifestFetcher)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x1E69C9758]);
    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    webView = [webViewController webView];
    v7 = [v4 initWithWebView:webView];
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
      webViewController2 = [(_SFBrowserContentViewController *)self webViewController];
      webView2 = [webViewController2 webView];
      v13 = [(_SFInjectedJavaScriptController *)v10 initWithWebView:webView2];
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
    displayMode = [(_SFBrowserContentViewController *)self displayMode];
    if (displayMode != 3 && displayMode)
    {
      webViewController = [(_SFBrowserContentViewController *)self webViewController];
      themeColor = [webViewController webView];

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