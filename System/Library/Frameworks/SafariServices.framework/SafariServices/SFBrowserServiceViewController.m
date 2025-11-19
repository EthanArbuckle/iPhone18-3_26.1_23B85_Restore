@interface SFBrowserServiceViewController
+ (id)_exportedInterface;
+ (id)hostWindowSceneIdentifierForServiceWindowSceneIdentifier:(id)a3;
+ (void)setHostWindowSceneIdentifier:(id)a3 forServiceViewController:(id)a4;
- (BOOL)_ensureWebsiteDataStoreURL:(id)a3 cookieStoreURL:(id)a4;
- (BOOL)_notifyInitialLoadDidFinish:(BOOL)a3;
- (BOOL)_redirectToHostAppForAuthenticationSession:(id)a3;
- (BOOL)_redirectToHostAppWithNavigationResult:(id)a3 options:(id)a4;
- (BOOL)_shouldAcceptMessage:(id)a3;
- (BOOL)_willURLOpenHostApp:(id)a3;
- (SFBrowserServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_applicationPayloadForOpeningInSafari;
- (id)_cookieStoreURL;
- (id)_createPersistentDataStoreWithConfiguration:(id)a3;
- (id)_safariWebDataStoreRootURL;
- (id)_sharedWebDataStoreRootURL;
- (id)_trustedReportEndpoint;
- (id)_webDataStoreRootURL;
- (id)_websiteDataStoreURL;
- (id)processPool;
- (id)processPoolConfiguration;
- (id)secIdentitiesCache;
- (id)websiteDataStoreConfiguration;
- (int64_t)_decideDataSharingMode;
- (int64_t)_persona;
- (void)_decideDataSharingMode;
- (void)_didLoadWebView;
- (void)_didResolveDestinationURL:(id)a3 pendingAppLinkCheck:(BOOL)a4;
- (void)_dismiss;
- (void)_fetchActivityViewControllerInfoForURL:(id)a3 title:(id)a4 completion:(id)a5;
- (void)_hostApplicationDidEnterBackground;
- (void)_hostApplicationWillEnterForeground;
- (void)_notifyHostAppOfRedirectIfNeeded:(id)a3;
- (void)_openCurrentURLInSafari;
- (void)_prewarmConnectionsToURLs:(id)a3;
- (void)_trustedReportEndpoint;
- (void)_updateMaxVisibleHeightPercentageUserDriven:(BOOL)a3;
- (void)_updateRemoteSwipeGestureState;
- (void)_willAppearInRemoteViewController;
- (void)activityViewController:(id)a3 didCompleteActivity:(id)a4 success:(BOOL)a5;
- (void)addClickAttribution:(id)a3;
- (void)browserViewDidReceiveTouchEvent:(id)a3;
- (void)clearWebsiteDataWithCompletionHandler:(id)a3;
- (void)closeDatabasesOnBackgroundingOrDismissal;
- (void)dealloc;
- (void)decideCookieSharingForURL:(id)a3 callback:(id)a4 proxiedAssociatedDomains:(id)a5;
- (void)didFetchCustomActivities:(id)a3 excludedActivityTypes:(id)a4;
- (void)didRequestShowLinkPreviews:(BOOL)a3;
- (void)loadURL:(id)a3;
- (void)openCurrentURLInSafariFromPreviewAction;
- (void)prepareForDisplayWithCompletionHandler:(id)a3;
- (void)processPool;
- (void)repostNotificationInViewService:(id)a3;
- (void)requestPrewarmingWithTokens:(id)a3;
- (void)safariActivity:(id)a3 didFinish:(BOOL)a4;
- (void)setAdditionalHeaderFieldsForInitialLoad:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setDismissButtonStyle:(int64_t)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)setHostWindowSceneIdentifier:(id)a3;
- (void)setIsRunningTransitionAnimation:(BOOL)a3;
- (void)setPreferredBarTintColor:(id)a3 controlTintColor:(id)a4;
- (void)startResolveRedirectionForURL:(id)a3;
- (void)updateScrollViewIndicatorVerticalInsets:(UIEdgeInsets)a3 horizontalInsets:(UIEdgeInsets)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)webViewController:(id)a3 didChangeFullScreen:(BOOL)a4;
- (void)webViewController:(id)a3 didFinishDocumentLoadForNavigation:(id)a4;
- (void)webViewController:(id)a3 didReceiveServerRedirectForProvisionalNavigation:(id)a4;
- (void)webViewController:(id)a3 didStartProvisionalNavigation:(id)a4;
- (void)webViewController:(id)a3 willPerformClientRedirectToURL:(id)a4 withDelay:(double)a5;
- (void)webViewControllerDidCancelClientRedirect:(id)a3;
- (void)webViewControllerWebProcessDidCrash:(id)a3;
@end

@implementation SFBrowserServiceViewController

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F50801E0];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_didFetchCustomActivities_excludedActivityTypes_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_requestPrewarmingWithTokens_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)hostWindowSceneIdentifierForServiceWindowSceneIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  os_unfair_lock_lock(&hostWindowSceneIdentifierToServiceViewControllerLock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = hostWindowSceneIdentifierToServiceViewController;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [hostWindowSceneIdentifierToServiceViewController objectForKey:v6];
        v8 = [v7 view];
        v9 = [v8 window];
        v10 = [v9 windowScene];
        v11 = [v10 _sceneIdentifier];
        v12 = [v11 isEqualToString:v15];

        if (v12)
        {
          v3 = v6;

          goto LABEL_11;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&hostWindowSceneIdentifierToServiceViewControllerLock);

  return v3;
}

+ (void)setHostWindowSceneIdentifier:(id)a3 forServiceViewController:(id)a4
{
  v9 = a3;
  v5 = a4;
  os_unfair_lock_lock(&hostWindowSceneIdentifierToServiceViewControllerLock);
  v6 = hostWindowSceneIdentifierToServiceViewController;
  if (!hostWindowSceneIdentifierToServiceViewController)
  {
    v7 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v8 = hostWindowSceneIdentifierToServiceViewController;
    hostWindowSceneIdentifierToServiceViewController = v7;

    v6 = hostWindowSceneIdentifierToServiceViewController;
  }

  [v6 setObject:v5 forKey:v9];
  os_unfair_lock_unlock(&hostWindowSceneIdentifierToServiceViewControllerLock);
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 _isBeingUsedForCellularServiceBootstrap] && (-[SFBrowserServiceViewController _hostAuditToken](self, "_hostAuditToken"), WBSAuditTokenHasEntitlement()))
  {
    [v4 _setEphemeral:1];
  }

  else
  {
    [v4 set_isBeingUsedForCellularServiceBootstrap:0];
  }

  [(SFBrowserServiceViewController *)self _hostAuditToken];
  if ((WBSAuditTokenHasEntitlement() & 1) == 0)
  {
    [v4 _setNetworkAttributionApplicationBundleIdentifier:0];
  }

  v5.receiver = self;
  v5.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v5 setConfiguration:v4];
}

- (SFBrowserServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = SFBrowserServiceViewController;
  v8 = [(_SFBrowserContentViewController *)&v17 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = MEMORY[0x1E695FBE8];
    if (webBrowsingServicesBundle(void)::onceToken != -1)
    {
      [SFBrowserServiceViewController initWithNibName:bundle:];
    }

    [v9 setDefaultEffectiveBundle:webBrowsingServicesBundle(void)::bundle];
    v10 = [MEMORY[0x1E695DF00] distantPast];
    lastHostApplicationSuspendDate = v8->_lastHostApplicationSuspendDate;
    v8->_lastHostApplicationSuspendDate = v10;

    v8->_canNotifyHostApplicationOfRedirects = 1;
    v12 = [(_SFBrowserContentViewController *)v8 wkPreferences];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(_SFBrowserContentViewController *)v8 wkPreferences];
      [v14 _setMediaCapabilityGrantsEnabled:0];
    }

    v15 = v8;
  }

  return v8;
}

- (void)dealloc
{
  [(_SFWebViewUsageMonitor *)self->_usageMonitor auditUsageIfNeeded];
  if (self->_hasConnectedToHostApplication)
  {
    v3 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
    [allHostAppBundleIDs removeObject:v3];
    updatePowerLogEventForAllHostApps();

    v4 = +[_SFLocationManager sharedLocationManager];
    v5 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
    [v4 removeClientForApplication:v5];

    v6 = [(SFBrowserServiceViewController *)self _hostProcessIdentifier];
    if (self->_processPool)
    {
      v7 = safariViewControllerProcessPoolStorage();
      [v7 decrementReferenceForPID:v6];
    }

    if (self->_persistentDataStore)
    {
      v8 = safariViewControllerDataStoreStorage();
      [v8 decrementReferenceForPID:v6];
    }
  }

  [(SFBrowserServiceViewController *)self closeDatabasesOnBackgroundingOrDismissal];
  [(SFSystemAlert *)self->_webAuthenticationDataSharingConfirmation cancel];
  [(_SFBrowserContentViewController *)self _invalidateUserActivity];
  WeakRetained = objc_loadWeakRetained(&self->_redirectNotificationTimer);
  [WeakRetained invalidate];

  v10.receiver = self;
  v10.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v10 dealloc];
}

- (void)_willAppearInRemoteViewController
{
  self->_hasConnectedToHostApplication = 1;
  v13 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
  v3 = [(SFBrowserServiceViewController *)self view];
  v4 = [v3 window];
  [v4 setTintColor:v13];

  v5 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
  v6 = allHostAppBundleIDs;
  v14 = v5;
  if (!allHostAppBundleIDs)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = allHostAppBundleIDs;
    allHostAppBundleIDs = v7;

    v6 = allHostAppBundleIDs;
    v5 = v14;
  }

  [v6 addObject:v5];
  updatePowerLogEventForAllHostApps();

  if (!self->_usageMonitor)
  {
    v9 = [[_SFWebViewUsageMonitor alloc] initWithHostAppIdentifier:v14];
    usageMonitor = self->_usageMonitor;
    self->_usageMonitor = v9;
  }

  v11 = +[_SFLocationManager sharedLocationManager];
  v12 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
  [v11 addClientForApplication:v12];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v8 viewDidAppear:a3];
  if (![(_SFBrowserContentViewController *)self viewDidAppearInHostApp])
  {
    self->_hostApplicationIsForeground = 1;
  }

  [(_SFBrowserContentViewController *)self setViewDidAppearInHostApp:1];
  v4 = [(SFBrowserServiceViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 _rootSheetPresentationController];
  [v6 _setShouldScaleDownBehindDescendantSheets:0];

  [(SFBrowserServiceViewController *)self _updateRemoteSwipeGestureState];
  prewarmingRequestThrottler = self->_prewarmingRequestThrottler;
  self->_prewarmingRequestThrottler = 0;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v4 viewDidDisappear:a3];
  [(_SFBrowserContentViewController *)self setViewDidAppearInHostApp:0];
}

- (void)setDisplayMode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v7 setDisplayMode:?];
  if (a3 == 1)
  {
    v5 = [(_SFBrowserContentViewController *)self browserView];
    v6 = [v5 previewHeader];
    [v6 setDelegate:self];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SFBrowserServiceViewController;
  [(SFBrowserServiceViewController *)&v7 viewWillDisappear:a3];
  if (![(_SFWebViewUsageMonitor *)self->_usageMonitor userInteracted])
  {
    v4 = [(_SFBrowserContentViewController *)self browserView];
    -[_SFWebViewUsageMonitor setUserInteracted:](self->_usageMonitor, "setUserInteracted:", [v4 hasReceivedTouchEvents]);
  }

  [(SFBrowserServiceViewController *)self closeDatabasesOnBackgroundingOrDismissal];
  v5 = [(_SFBrowserContentViewController *)self webViewController];
  v6 = [v5 webView];
  [v6 _sf_saveUnsubmittedGeneratedPasswordAndRemoveFormMetadata];
}

- (void)setPreferredBarTintColor:(id)a3 controlTintColor:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(_SFBrowserContentViewController *)self setPreferredBarTintColor:v7];
  [(_SFBrowserContentViewController *)self setPreferredControlTintColor:v6];
}

- (id)processPoolConfiguration
{
  v7.receiver = self;
  v7.super_class = SFBrowserServiceViewController;
  v3 = [(_SFBrowserContentViewController *)&v7 processPoolConfiguration];
  v4 = [v3 copy];

  [v4 setPresentingApplicationPID:{-[SFBrowserServiceViewController _hostProcessIdentifier](self, "_hostProcessIdentifier")}];
  if (objc_opt_respondsToSelector())
  {
    [(SFBrowserServiceViewController *)self _hostAuditToken];
    v6[0] = v6[2];
    v6[1] = v6[3];
    [v4 setPresentingApplicationProcessToken:v6];
  }

  return v4;
}

- (void)updateScrollViewIndicatorVerticalInsets:(UIEdgeInsets)a3 horizontalInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = a3.right;
  v9 = a3.bottom;
  v10 = a3.left;
  v11 = a3.top;
  v15[3] = *MEMORY[0x1E69E9840];
  if ((_SFInsetIsInvalid() & 1) != 0 || _SFInsetIsInvalid())
  {
    v13 = WBS_LOG_CHANNEL_PREFIXViewService();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
      [SFBrowserServiceViewController updateScrollViewIndicatorVerticalInsets:v14 horizontalInsets:v15];
    }
  }

  else
  {

    [(_SFBrowserContentViewController *)self _updateScrollIndicatorVerticalInsets:v11 horizontalInsets:v10, v9, v8, top, left, bottom, right];
  }
}

- (id)processPool
{
  v14 = *MEMORY[0x1E69E9840];
  processPool = self->_processPool;
  if (!processPool)
  {
    v4 = [(SFBrowserServiceViewController *)self _hostProcessIdentifier];
    if (!v4 && [MEMORY[0x1E69C8880] hasInternalContent])
    {
      v5 = WBS_LOG_CHANNEL_PREFIXViewService();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = objc_opt_class();
        [(SFBrowserServiceViewController *)v6 processPool];
      }
    }

    v7 = safariViewControllerProcessPoolStorage();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__SFBrowserServiceViewController_processPool__block_invoke;
    v12[3] = &unk_1E8492318;
    v12[4] = self;
    v8 = [v7 incrementReferenceForPID:v4 valueCreationBlock:v12];
    v9 = self->_processPool;
    self->_processPool = v8;

    processPool = self->_processPool;
  }

  v10 = processPool;

  return v10;
}

id __45__SFBrowserServiceViewController_processPool__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) newProcessPool];

  return v1;
}

- (void)loadURL:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695A950];
  [(SFBrowserServiceViewController *)self _hostAuditToken];
  [v5 handleSSOExtensionIdentifier:location];
  [(_SFWebViewUsageMonitor *)self->_usageMonitor checkURL:v4];
  v6 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v4];
  if ([(NSDictionary *)self->_additionalHeaderFieldsForInitialRequest count])
  {
    v7 = [v6 mutableCopy];

    additionalHeaderFieldsForInitialRequest = self->_additionalHeaderFieldsForInitialRequest;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __42__SFBrowserServiceViewController_loadURL___block_invoke;
    v19[3] = &unk_1E8492340;
    v6 = v7;
    v20 = v6;
    [(NSDictionary *)additionalHeaderFieldsForInitialRequest enumerateKeysAndObjectsUsingBlock:v19];
  }

  [(_SFBrowserContentViewController *)self loadRequest:v6];
  v9 = [(_SFBrowserContentViewController *)self configuration];
  v10 = [v9 _redirectNotificationBehavior];

  if (v10 == 1)
  {
    objc_initWeak(location, self);
    v11 = MEMORY[0x1E695DFF0];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __42__SFBrowserServiceViewController_loadURL___block_invoke_2;
    v17 = &unk_1E8492368;
    objc_copyWeak(&v18, location);
    v12 = [v11 timerWithTimeInterval:0 repeats:&v14 block:10.0];
    [v12 setTolerance:{1.0, v14, v15, v16, v17}];
    v13 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v13 addTimer:v12 forMode:*MEMORY[0x1E695DA28]];

    objc_storeWeak(&self->_redirectNotificationTimer, v12);
    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }
}

void __42__SFBrowserServiceViewController_loadURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[2041] = 1;
  }
}

- (BOOL)_shouldAcceptMessage:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 originIdentifier] != 0xC181BADB23D8497BLL)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXEventAttribution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      -[SFBrowserServiceViewController _shouldAcceptMessage:].cold.1(v12, [v3 originIdentifier], v8);
    }

    goto LABEL_12;
  }

  v4 = [v3 timestamp];
  if (v4 <= [SFBrowserServiceViewController _shouldAcceptMessage:]::lastSeenBackBoardTimestamp)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXEventAttribution();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserServiceViewController _shouldAcceptMessage:];
    }

    goto LABEL_12;
  }

  v5 = [MEMORY[0x1E698E3B0] sharedInstance];
  v6 = [v5 authenticateMessage:v3];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXEventAttribution();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserServiceViewController _shouldAcceptMessage:];
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  [SFBrowserServiceViewController _shouldAcceptMessage:]::lastSeenBackBoardTimestamp = v4;
  v7 = 1;
LABEL_13:

  return v7;
}

- (id)_trustedReportEndpoint
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6963620];
  [(SFBrowserServiceViewController *)self _hostAuditToken];
  v13 = 0;
  v3 = [v2 bundleRecordForAuditToken:v14 error:&v13];
  v4 = v13;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [v3 infoDictionary];
    v10 = [v7 objectForKey:@"NSAdvertisingAttributionReportEndpoint" ofClass:objc_opt_class()];
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    if (([v9 safari_isHTTPSURL] & 1) == 0)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXEventAttribution();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SFBrowserServiceViewController _trustedReportEndpoint];
      }

      v9 = 0;
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXEventAttribution();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 safari_privacyPreservingDescription];
      [(SFBrowserServiceViewController *)v8 _trustedReportEndpoint];
    }

    v9 = 0;
  }

  return v9;
}

- (void)addClickAttribution:(id)a3
{
  v9 = a3;
  v4 = [v9 eventMessage];
  v5 = [(SFBrowserServiceViewController *)self _shouldAcceptMessage:v4];

  if (v5)
  {
    v6 = [(SFBrowserServiceViewController *)self _trustedReportEndpoint];
    if (v6)
    {
      v7 = [v9 clickAttributionWithReportEndpoint:v6];
      v8 = [objc_alloc(MEMORY[0x1E69DC9F0]) initWithUISClickAttribution:v7];
      [(_SFBrowserContentViewController *)self addTrustedEventAttribution:v8];
    }
  }
}

- (void)decideCookieSharingForURL:(id)a3 callback:(id)a4 proxiedAssociatedDomains:(id)a5
{
  v52[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v41 = a5;
  objc_initWeak(&location, self);
  if ([v9 callbackType] != 1)
  {
LABEL_6:
    [(SFBrowserServiceViewController *)self set_isUsedForAuthentication:1];
    [(SFBrowserServiceViewController *)self setHostApplicationCallback:v9];
    [(_SFBrowserContentViewController *)self setStoreBannersAreDisabled:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__SFBrowserServiceViewController_decideCookieSharingForURL_callback_proxiedAssociatedDomains___block_invoke;
    aBlock[3] = &unk_1E8492390;
    objc_copyWeak(&v46, &location);
    v14 = v8;
    v45 = v14;
    v15 = _Block_copy(aBlock);
    if ([(SFBrowserServiceViewController *)self _isUsedForAuthentication])
    {
      v16 = [(_SFBrowserContentViewController *)self configuration];
      v17 = [v16 _storageModeForAuthenticationSession];

      if (v17 == 1)
      {
        v18 = 3;
        goto LABEL_22;
      }

      if (v17 == 2)
      {
        v18 = 1;
LABEL_22:
        v15[2](v15, v18);
LABEL_23:

        objc_destroyWeak(&v46);
        goto LABEL_24;
      }
    }

    v19 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
    v20 = MEMORY[0x1E69B1BC0];
    v21 = [v14 safari_highLevelDomain];
    v22 = v21;
    if (!v21)
    {
      v22 = [v14 host];
    }

    v23 = [v20 webAuthenticationAlertForDomain:v22 appBundleID:v19];
    webAuthenticationDataSharingConfirmation = self->_webAuthenticationDataSharingConfirmation;
    self->_webAuthenticationDataSharingConfirmation = v23;

    if (!v21)
    {
    }

    v25 = self->_webAuthenticationDataSharingConfirmation;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __94__SFBrowserServiceViewController_decideCookieSharingForURL_callback_proxiedAssociatedDomains___block_invoke_2;
    v42[3] = &unk_1E84923B8;
    v43 = v15;
    [(SFSystemAlert *)v25 scheduleWithCompletionBlock:v42];

    goto LABEL_23;
  }

  if ([v41 count])
  {
    [(SFBrowserServiceViewController *)self _hostAuditToken];
    if ((WBSAuditTokenHasEntitlement() & 1) == 0)
    {
      v26 = MEMORY[0x1E696ABC0];
      v51 = *MEMORY[0x1E696A588];
      v52[0] = @"Process is not entitled to perform proxied requests.";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v28 = [v26 errorWithDomain:*MEMORY[0x1E695A900] code:1 userInfo:v27];

      v29 = WBS_LOG_CHANNEL_PREFIXAuthenticationSession();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [SFBrowserServiceViewController decideCookieSharingForURL:callback:proxiedAssociatedDomains:];
      }

      v30 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
      [v30 didDecideCookieSharingForURL:v8 shouldCancel:1 withError:v28];

      goto LABEL_24;
    }

    v10 = [v9 host];
    v11 = [v41 containsObject:v10];

    if (v11)
    {
      goto LABEL_6;
    }
  }

  v12 = MEMORY[0x1E696B0B8];
  [(SFBrowserServiceViewController *)self _hostAuditToken];
  v13 = [v9 host];
  LOBYTE(v12) = [v12 safari_applicationWithAuditToken:v47 hasApprovedWebCredentialsDomainAssociationForDomain:v13];

  if (v12)
  {
    goto LABEL_6;
  }

  v31 = MEMORY[0x1E696ABC0];
  v49 = *MEMORY[0x1E696A588];
  v32 = MEMORY[0x1E696AEC0];
  v33 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
  v34 = [v9 host];
  v35 = [v9 host];
  v36 = objc_claimAutoreleasedReturnValue();
  v50 = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v38 = [v31 errorWithDomain:*MEMORY[0x1E695A900] code:1 userInfo:v37];

  v39 = WBS_LOG_CHANNEL_PREFIXAuthenticationSession();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    [SFBrowserServiceViewController decideCookieSharingForURL:callback:proxiedAssociatedDomains:];
  }

  v40 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v40 didDecideCookieSharingForURL:v8 shouldCancel:1 withError:v38];

LABEL_24:
  objc_destroyWeak(&location);
}

void __94__SFBrowserServiceViewController_decideCookieSharingForURL_callback_proxiedAssociatedDomains___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained setWebAuthenticationDataSharingConfirmation:0];
    if (a2 != 2)
    {
      v5 = 3;
      if (a2 == 3)
      {
        v5 = 4;
      }

      if (a2 == 1)
      {
        v6 = 2;
      }

      else
      {
        v6 = v5;
      }

      [v8 setSafariDataSharingMode:v6];
    }

    v7 = [v8 _remoteViewControllerProxy];
    [v7 didDecideCookieSharingForURL:*(a1 + 32) shouldCancel:a2 == 2 withError:0];

    WeakRetained = v8;
  }
}

- (void)startResolveRedirectionForURL:(id)a3
{
  v4 = a3;
  v5 = [(_SFBrowserContentViewController *)self configuration];
  v6 = [v5 _isEphemeral];

  if (v6)
  {
    [(_SFBrowserContentViewController *)self setSafariDataSharingMode:4];
    [(_SFBrowserContentViewController *)self _setUpWebViewControllerIfNeeded];
    [(SFBrowserServiceViewController *)self loadURL:v4];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSVCPrivacy();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserServiceViewController startResolveRedirectionForURL:];
    }

    v8 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
    [v8 didResolveRedirectionWithURL:v4 appLink:0];
  }
}

- (void)prepareForDisplayWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [(_SFBrowserContentViewController *)self browserView];
  [v4 setContentReadyForDisplay];

  v5[2]();
}

- (void)requestPrewarmingWithTokens:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_prewarmingRequestThrottler)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc_init(_SFSafariViewControllerPrewarmingRequestThrottler);
    prewarmingRequestThrottler = self->_prewarmingRequestThrottler;
    self->_prewarmingRequestThrottler = v5;

    [(_SFSafariViewControllerPrewarmingRequestThrottler *)self->_prewarmingRequestThrottler setMinimumRequestDelay:2.0];
    [(_SFSafariViewControllerPrewarmingRequestThrottler *)self->_prewarmingRequestThrottler setMaximumValidConnectionCount:20];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__SFBrowserServiceViewController_requestPrewarmingWithTokens___block_invoke;
    v15[3] = &unk_1E84923E0;
    objc_copyWeak(&v16, &location);
    [(_SFSafariViewControllerPrewarmingRequestThrottler *)self->_prewarmingRequestThrottler setConnectionHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(_SFSafariViewControllerPrewarmingRequestThrottler *)self->_prewarmingRequestThrottler requestToken:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v8);
  }
}

void __62__SFBrowserServiceViewController_requestPrewarmingWithTokens___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prewarmConnectionsToURLs:v3];
}

- (void)_prewarmConnectionsToURLs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__SFBrowserServiceViewController__prewarmConnectionsToURLs___block_invoke;
    v5[3] = &unk_1E848F9B0;
    v6 = v4;
    v7 = self;
    [(_SFBrowserContentViewController *)self decideDataSharingModeAndSetUpWebViewWithCompletionHandler:v5];
  }
}

void __60__SFBrowserServiceViewController__prewarmConnectionsToURLs___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXPrewarming();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138739971;
    v15 = v3;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_INFO, "Prewarming connections to %{sensitive}@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) webView];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v4 _preconnectToServer:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)clearWebsiteDataWithCompletionHandler:(id)a3
{
  v9 = a3;
  if (![(_SFBrowserContentViewController *)self safariDataSharingMode])
  {
    [(_SFBrowserContentViewController *)self setSafariDataSharingMode:[(SFBrowserServiceViewController *)self _decideDataSharingMode]];
  }

  if ([(_SFBrowserContentViewController *)self safariDataSharingMode]== 1 || [(_SFBrowserContentViewController *)self safariDataSharingMode]== 3)
  {
    v9[2]();
  }

  else
  {
    v4 = [(SFBrowserServiceViewController *)self secIdentitiesCache];
    [v4 removeAllObjects];

    v5 = [(SFBrowserServiceViewController *)self websiteDataStoreConfiguration];
    if (v5)
    {
      v6 = [MEMORY[0x1E69853B8] safari_dataStoreWithConfiguration:v5];
      v7 = [MEMORY[0x1E69853B8] safari_allDataTypes];
      v8 = [MEMORY[0x1E695DF00] distantPast];
      [v6 removeDataOfTypes:v7 modifiedSince:v8 completionHandler:v9];
    }

    else
    {
      v9[2]();
    }
  }
}

- (void)setHostWindowSceneIdentifier:(id)a3
{
  v4 = a3;
  [objc_opt_class() setHostWindowSceneIdentifier:v4 forServiceViewController:self];
}

- (void)setAdditionalHeaderFieldsForInitialLoad:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  additionalHeaderFieldsForInitialRequest = self->_additionalHeaderFieldsForInitialRequest;
  self->_additionalHeaderFieldsForInitialRequest = v4;
}

- (void)_didResolveDestinationURL:(id)a3 pendingAppLinkCheck:(BOOL)a4
{
  v6 = a3;
  v7 = [(_SFBrowserContentViewController *)self configuration];
  v8 = [v7 _isEphemeral];

  if ((v8 & 1) != 0 && ![(_SFBrowserContentViewController *)self viewDidAppearInHostApp]&& ![(_SFBrowserContentViewController *)self isShowingErrorPage])
  {
    if (a4)
    {
      if (v6)
      {
        v9 = MEMORY[0x1E69635C0];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __80__SFBrowserServiceViewController__didResolveDestinationURL_pendingAppLinkCheck___block_invoke;
        v11[3] = &unk_1E8492408;
        v11[4] = self;
        v12 = v6;
        [v9 getAppLinkWithURL:v12 completionHandler:v11];
      }
    }

    else
    {
      v10 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
      [v10 didResolveRedirectionWithURL:v6 appLink:0];
    }
  }
}

void __80__SFBrowserServiceViewController__didResolveDestinationURL_pendingAppLinkCheck___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__SFBrowserServiceViewController__didResolveDestinationURL_pendingAppLinkCheck___block_invoke_2;
  block[3] = &unk_1E8491628;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__SFBrowserServiceViewController__didResolveDestinationURL_pendingAppLinkCheck___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _remoteViewControllerProxy];
    [v2 didResolveRedirectionWithURL:*(a1 + 48) appLink:*(a1 + 32)];
  }
}

- (void)openCurrentURLInSafariFromPreviewAction
{
  v2.receiver = self;
  v2.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v2 _openCurrentURLInSafari];
}

- (void)_openCurrentURLInSafari
{
  v3 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v3 willOpenCurrentPageInBrowser];

  v4.receiver = self;
  v4.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v4 _openCurrentURLInSafari];
}

- (id)_safariWebDataStoreRootURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = _SFSafariContainerPath();
  v4 = [v3 stringByAppendingPathComponent:@"/Library"];
  v5 = [v4 stringByResolvingSymlinksInPath];
  v6 = [v2 fileURLWithPath:v5 isDirectory:1];

  return v6;
}

- (id)_sharedWebDataStoreRootURL
{
  v3 = +[_SFSafariDataSharingController sharedController];
  v4 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
  v5 = [v3 systemDataContainerURLWithAppBundleID:v4];

  v6 = [v5 URLByAppendingPathComponent:@"/Library"];

  return v6;
}

- (id)_webDataStoreRootURL
{
  if ([(_SFBrowserContentViewController *)self safariDataSharingMode]== 3 || [(_SFBrowserContentViewController *)self safariDataSharingMode]== 1)
  {
    v3 = [(SFBrowserServiceViewController *)self _safariWebDataStoreRootURL];
  }

  else if ([(_SFBrowserContentViewController *)self safariDataSharingMode]== 2)
  {
    v3 = [(SFBrowserServiceViewController *)self _sharedWebDataStoreRootURL];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_websiteDataStoreURL
{
  v2 = [(SFBrowserServiceViewController *)self _webDataStoreRootURL];
  v3 = [v2 URLByAppendingPathComponent:@"/WebKit/WebsiteData/"];

  return v3;
}

- (id)_cookieStoreURL
{
  v2 = [(SFBrowserServiceViewController *)self _webDataStoreRootURL];
  v3 = [v2 URLByAppendingPathComponent:@"/Cookies/"];

  return v3;
}

- (BOOL)_ensureWebsiteDataStoreURL:(id)a3 cookieStoreURL:(id)a4
{
  v21[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v5 path];
    v11 = [v9 fileExistsAtPath:v10];

    if ((v11 & 1) == 0)
    {
      v21[0] = 0;
      v12 = [v9 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v21];
      v13 = v21[0];
      v14 = v13;
      if ((v12 & 1) == 0)
      {
        v18 = WBS_LOG_CHANNEL_PREFIXViewService();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [v14 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [SFBrowserServiceViewController _ensureWebsiteDataStoreURL:cookieStoreURL:];
        }

        goto LABEL_14;
      }
    }

    v15 = [v7 path];
    v16 = [v9 fileExistsAtPath:v15];

    if (v16)
    {
      v8 = 1;
LABEL_16:

      goto LABEL_17;
    }

    v20 = 0;
    v17 = [v9 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v20];
    v14 = v20;
    if (v17)
    {
      v8 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v18 = WBS_LOG_CHANNEL_PREFIXViewService();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [v14 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserServiceViewController _ensureWebsiteDataStoreURL:cookieStoreURL:];
    }

LABEL_14:

    v8 = 0;
    goto LABEL_15;
  }

LABEL_17:

  return v8;
}

- (id)websiteDataStoreConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6985430]);
  v4 = [(SFBrowserServiceViewController *)self _webDataStoreRootURL];
  v5 = [(SFBrowserServiceViewController *)self _websiteDataStoreURL];
  v6 = [(SFBrowserServiceViewController *)self _cookieStoreURL];
  if ([(SFBrowserServiceViewController *)self _ensureWebsiteDataStoreURL:v5 cookieStoreURL:v6])
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSVCPrivacy();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
      v24 = 138543618;
      v25 = v8;
      v26 = 2114;
      v27 = v4;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "Data Store URL for app %{public}@ is %{public}@.", &v24, 0x16u);
    }

    v9 = MEMORY[0x1E695DFF8];
    v10 = [v6 path];
    v11 = [v10 stringByAppendingPathComponent:@"/Cookies.binarycookies"];
    v12 = [v9 fileURLWithPath:v11 isDirectory:0];
    [v3 _setCookieStorageFile:v12];

    [v3 _setWebStorageDirectory:v5];
    [v3 _setWebSQLDatabaseDirectory:v5];
    [v3 _setResourceLoadStatisticsDirectory:v5];
    [v3 _setIndexedDBDatabaseDirectory:v5];
    [v3 _setCacheStorageDirectory:v5];
    [v3 _setServiceWorkerRegistrationDirectory:v5];
    v13 = [(_SFBrowserContentViewController *)self configuration];
    v14 = [v13 _networkAttributionApplicationBundleIdentifier];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"com.apple.mobilesafari";
    }

    [v3 setSourceApplicationBundleIdentifier:v16];

    if (objc_opt_respondsToSelector())
    {
      [v3 setAlternativeServicesStorageDirectory:v5];
    }

    if (objc_opt_respondsToSelector())
    {
      [v3 setHSTSStorageDirectory:v5];
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [v5 URLByAppendingPathComponent:@"Default" isDirectory:1];
      [v3 setGeneralStorageDirectory:v17];
    }

    v18 = [v5 URLByAppendingPathComponent:@"NetworkCache" isDirectory:1];
    [v3 setNetworkCacheDirectory:v18];

    v19 = [v5 URLByAppendingPathComponent:@"OfflineWebApplicationCache" isDirectory:1];
    [v3 setApplicationCacheDirectory:v19];

    v20 = [v5 URLByAppendingPathComponent:@"MediaCache" isDirectory:1];
    [v3 setMediaCacheDirectory:v20];

    v21 = [v5 URLByAppendingPathComponent:@"MediaKeys" isDirectory:1];
    [v3 setMediaKeysStorageDirectory:v21];

    v22 = 0;
  }

  else
  {
    v22 = v3;
    v3 = 0;
  }

  return v3;
}

- (id)_createPersistentDataStoreWithConfiguration:(id)a3
{
  v4 = a3;
  persistentDataStore = self->_persistentDataStore;
  if (persistentDataStore)
  {
    v6 = persistentDataStore;
  }

  else
  {
    v7 = [(SFBrowserServiceViewController *)self _hostProcessIdentifier];
    v8 = safariViewControllerDataStoreStorage();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__SFBrowserServiceViewController__createPersistentDataStoreWithConfiguration___block_invoke;
    v12[3] = &unk_1E8492430;
    v13 = v4;
    v14 = self;
    v9 = [v8 incrementReferenceForPID:v7 additionalKey:0 valueCreationBlock:v12];
    v10 = self->_persistentDataStore;
    self->_persistentDataStore = v9;

    v6 = self->_persistentDataStore;
  }

  return v6;
}

id __78__SFBrowserServiceViewController__createPersistentDataStoreWithConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = SFBrowserServiceViewController;
  v2 = objc_msgSendSuper2(&v4, sel__createPersistentDataStoreWithConfiguration_, v1);

  return v2;
}

- (int64_t)_decideDataSharingMode
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = [(_SFBrowserContentViewController *)self configuration];
  v4 = [v3 _isEphemeral];

  if ((v4 & 1) == 0)
  {
    v6 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
    if ([v6 hasPrefix:@"com.apple."])
    {
      v13[0] = 0;
      v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:v13];
      v8 = v13[0];
      if (v7)
      {
        v9 = [v7 dataContainerURL];
        v10 = v9 == 0;

        if (v10)
        {

          v5 = 4;
LABEL_12:

          return v5;
        }
      }

      else
      {
        v11 = WBS_LOG_CHANNEL_PREFIXViewService();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [v8 safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [SFBrowserServiceViewController _decideDataSharingMode];
        }
      }
    }

    v8 = +[_SFSafariDataSharingController sharedController];
    [v8 checkInAppBundleIDIfNeeded:v6];
    v5 = 2;
    goto LABEL_12;
  }

  return 4;
}

- (void)didFetchCustomActivities:(id)a3 excludedActivityTypes:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v6 = a4;
  if (self->_activityViewControllerInfoFetchCompletionHandler)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v19;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [[SFHostApplicationCustomActivity alloc] initWithActivityProxy:*(*(&v20 + 1) + 8 * v11)];
          [(_SFActivity *)v12 setDelegate:self];
          [v7 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    if (![(SFBrowserServiceViewController *)self _isUsedForAuthentication])
    {
      v13 = objc_alloc_init(_SFAddBookmarkActivity);
      [(_SFActivity *)v13 setDelegate:self];
      [v7 addObject:v13];
    }

    v14 = [_SFFindOnPageUIActivity alloc];
    v15 = [(_SFBrowserContentViewController *)self activeWebView];
    v16 = [(_SFFindOnPageUIActivity *)v14 initWithWebView:v15];
    [v7 addObject:v16];

    v17 = _Block_copy(self->_activityViewControllerInfoFetchCompletionHandler);
    activityViewControllerInfoFetchCompletionHandler = self->_activityViewControllerInfoFetchCompletionHandler;
    self->_activityViewControllerInfoFetchCompletionHandler = 0;

    v17[2](v17, v7, v6);
  }
}

- (void)_fetchActivityViewControllerInfoForURL:(id)a3 title:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 copy];
  activityViewControllerInfoFetchCompletionHandler = self->_activityViewControllerInfoFetchCompletionHandler;
  self->_activityViewControllerInfoFetchCompletionHandler = v10;

  v12 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v12 fetchActivityViewControllerInfoForURL:v13 title:v8];
}

- (void)repostNotificationInViewService:(id)a3
{
  v6 = a3;
  if ([v6 isEqualToString:*MEMORY[0x1E69DDBC8]])
  {
    [(_SFBrowserContentViewController *)self setViewDidAppearInHostApp:0];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 postNotificationName:v6 object:v5];
}

- (void)setIsRunningTransitionAnimation:(BOOL)a3
{
  v3 = a3;
  [(_SFWebViewUsageMonitor *)self->_usageMonitor setUserInteracted:1];
  v6 = [(SFBrowserServiceViewController *)self view];
  v5 = [v6 window];
  [v5 setUserInteractionEnabled:!v3];
}

- (void)setDismissButtonStyle:(int64_t)a3
{
  v4 = [(_SFBrowserContentViewController *)self browserView];
  [v4 updateDismissButtonStyle:a3];
}

- (void)didRequestShowLinkPreviews:(BOOL)a3
{
  v3 = a3;
  v9 = [(_SFBrowserContentViewController *)self browserView];
  v5 = [v9 previewHeader];
  [v5 setLinkPreviewEnabled:v3];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v7 = *MEMORY[0x1E695E890];
  v10 = v6;
  CFPreferencesSetAppValue(*MEMORY[0x1E69B1F88], v6, *MEMORY[0x1E695E890]);
  CFPreferencesAppSynchronize(v7);
  v8 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v8 didDecideShouldShowLinkPreviews:v3];
}

- (void)_dismiss
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateRemoteSwipeGestureState
{
  v3 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v3 setRemoteSwipeGestureEnabled:{-[_SFBrowserContentViewController remoteSwipeGestureEnabled](self, "remoteSwipeGestureEnabled")}];
}

- (BOOL)_notifyInitialLoadDidFinish:(BOOL)a3
{
  v3 = a3;
  v5 = [(_SFBrowserContentViewController *)self configuration];
  v6 = [v5 _redirectNotificationBehavior];

  if (!v6 && v3 && self->_isExpectingClientRedirect)
  {
    return 0;
  }

  v8 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v8 didFinishInitialLoad:v3];

  return 1;
}

- (BOOL)_redirectToHostAppForAuthenticationSession:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFBrowserServiceViewController *)self shouldRedirectToHostAppForAuthenticationSession:v4];
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSVCPrivacy();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
      hostApplicationCallback = self->_hostApplicationCallback;
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = hostApplicationCallback;
      _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Application %{public}@ is able to handle %{public}@ for authentication", &v11, 0x16u);
    }

    v9 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
    [v9 willOpenURLInHostApplication:v4];
  }

  return v5;
}

- (BOOL)_redirectToHostAppWithNavigationResult:(id)a3 options:(id)a4
{
  v5 = a3;
  [MEMORY[0x1E695A950] resetSSOExtensionIdentifier];
  v6 = [v5 URL];
  v7 = [(SFBrowserServiceViewController *)self _redirectToHostAppForAuthenticationSession:v6];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 URL];
    v8 = [(SFBrowserServiceViewController *)self _willURLOpenHostApp:v9];
  }

  return v8;
}

- (BOOL)_willURLOpenHostApp:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  v6 = [v5 applicationsAvailableForOpeningURL:v4];

  if ([v6 count])
  {
    v7 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) bundleIdentifier];
          v13 = [v12 isEqualToString:v7];

          if (v13)
          {
            v15 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
            [v15 willOpenURLInHostApplication:v4];

            v14 = 1;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_didLoadWebView
{
  v2 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v2 didLoadWebView];
}

- (void)_hostApplicationWillEnterForeground
{
  OUTLINED_FUNCTION_7_0(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Failed to set PID to hinerit application state from: %{public}@", v5);
}

- (void)_hostApplicationDidEnterBackground
{
  self->_hostApplicationIsForeground = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x1E69DDA98];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__SFBrowserServiceViewController__hostApplicationDidEnterBackground__block_invoke;
  v8[3] = &unk_1E848F7D0;
  v8[4] = &v9;
  v4 = [v3 beginBackgroundTaskWithName:@"com.apple.SafariViewService.stopCountingUsageTimeForBackgroundedApp" expirationHandler:v8];
  v10[3] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SFBrowserServiceViewController__hostApplicationDidEnterBackground__block_invoke_2;
  v7[3] = &unk_1E848F7D0;
  v7[4] = &v9;
  [(_SFBrowserContentViewController *)self stopDigitalHealthTrackingWithCompletionHandler:v7];
  v5 = [MEMORY[0x1E695DF00] date];
  lastHostApplicationSuspendDate = self->_lastHostApplicationSuspendDate;
  self->_lastHostApplicationSuspendDate = v5;

  [(SFBrowserServiceViewController *)self closeDatabasesOnBackgroundingOrDismissal];
  [(SFSystemAlert *)self->_webAuthenticationDataSharingConfirmation cancel];
  _Block_object_dispose(&v9, 8);
}

- (void)closeDatabasesOnBackgroundingOrDismissal
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = *MEMORY[0x1E69DDA98];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__SFBrowserServiceViewController_closeDatabasesOnBackgroundingOrDismissal__block_invoke;
  v11[3] = &unk_1E848F7D0;
  v11[4] = &v12;
  v4 = [v3 beginBackgroundTaskWithName:@"com.apple.SafariViewService.closeDatabasesOnBackgroundingOrDismissalTask" expirationHandler:v11];
  v13[3] = v4;
  v5 = [MEMORY[0x1E69B1C68] sharedSiteMetadataManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__SFBrowserServiceViewController_closeDatabasesOnBackgroundingOrDismissal__block_invoke_243;
  v10[3] = &unk_1E848F7D0;
  v10[4] = &v12;
  [v5 savePendingProviderChangesWithCompletion:v10];

  if ([(_SFBrowserContentViewController *)self safariDataSharingMode]== 1 || [(_SFBrowserContentViewController *)self safariDataSharingMode]== 3)
  {
    v6 = [(_SFBrowserContentViewController *)self webView];
    v7 = [v6 configuration];
    v8 = [v7 websiteDataStore];
    v9 = [v8 httpCookieStore];

    if (objc_opt_respondsToSelector())
    {
      [v9 _flushCookiesToDiskWithCompletionHandler:&__block_literal_global_27];
    }
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __74__SFBrowserServiceViewController_closeDatabasesOnBackgroundingOrDismissal__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXViewService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__SFBrowserServiceViewController_closeDatabasesOnBackgroundingOrDismissal__block_invoke_cold_1();
  }

  return [*MEMORY[0x1E69DDA98] endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

- (id)_applicationPayloadForOpeningInSafari
{
  v8.receiver = self;
  v8.super_class = SFBrowserServiceViewController;
  v3 = [(_SFBrowserContentViewController *)&v8 _applicationPayloadForOpeningInSafari];
  v4 = [v3 mutableCopy];

  v5 = [(SFBrowserServiceViewController *)self _hostApplicationBundleIdentifier];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69B1E38]];

  v6 = [v4 copy];

  return v6;
}

- (int64_t)_persona
{
  if ([(SFBrowserServiceViewController *)self _isUsedForAuthentication])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)secIdentitiesCache
{
  if (secIdentitiesCacheStorage(void)::onceToken != -1)
  {
    [SFBrowserServiceViewController secIdentitiesCache];
  }

  v3 = secIdentitiesCacheStorage(void)::dictionary;
  v4 = [v3 incrementReferenceForPID:-[SFBrowserServiceViewController _hostProcessIdentifier](self valueCreationBlock:{"_hostProcessIdentifier"), &__block_literal_global_250}];

  return v4;
}

id __52__SFBrowserServiceViewController_secIdentitiesCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69C9060]);

  return v0;
}

- (void)webViewController:(id)a3 didReceiveServerRedirectForProvisionalNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v10 webViewController:v6 didReceiveServerRedirectForProvisionalNavigation:v7];
  v8 = [v6 webView];
  v9 = [v8 URL];
  [(SFBrowserServiceViewController *)self _notifyHostAppOfRedirectIfNeeded:v9];
}

- (void)webViewControllerDidCancelClientRedirect:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v4 webViewControllerDidCancelClientRedirect:a3];
  self->_isExpectingClientRedirect = 0;
}

- (void)webViewController:(id)a3 willPerformClientRedirectToURL:(id)a4 withDelay:(double)a5
{
  v8 = a3;
  v9 = a4;
  v12.receiver = self;
  v12.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v12 webViewController:v8 willPerformClientRedirectToURL:v9 withDelay:a5];
  if (self->_canNotifyHostApplicationOfRedirects)
  {
    v10 = [(_SFBrowserContentViewController *)self configuration];
    v11 = [v10 _redirectNotificationBehavior];

    if (a5 == 0.0 || v11)
    {
      self->_isExpectingClientRedirect = 1;
    }
  }
}

- (void)webViewController:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v12 webViewController:v6 didStartProvisionalNavigation:v7];
  if (self->_canNotifyHostApplicationOfRedirects)
  {
    if (self->_isExpectingClientRedirect)
    {
      v8 = [v6 webView];
      v9 = [v8 URL];
      [(SFBrowserServiceViewController *)self _notifyHostAppOfRedirectIfNeeded:v9];
    }

    else if (self->_hasBegunFirstNavigation)
    {
      v10 = [(_SFBrowserContentViewController *)self configuration];
      v11 = [v10 _redirectNotificationBehavior];

      if (!v11)
      {
        self->_canNotifyHostApplicationOfRedirects = 0;
      }
    }

    self->_hasBegunFirstNavigation = 1;
  }
}

- (void)_notifyHostAppOfRedirectIfNeeded:(id)a3
{
  v4 = a3;
  if (self->_canNotifyHostApplicationOfRedirects)
  {
    v8 = v4;
    if ([v4 safari_isHTTPFamilyURL])
    {
      v5 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
      v6 = [v8 safari_URLByRemovingUserPasswordQueryAndFragment];
      [v5 initialLoadDidRedirectToURL:v6];
    }

    else
    {
      self->_canNotifyHostApplicationOfRedirects = 0;
      WeakRetained = objc_loadWeakRetained(&self->_redirectNotificationTimer);
      [WeakRetained invalidate];

      objc_storeWeak(&self->_redirectNotificationTimer, 0);
    }

    v4 = v8;
  }
}

- (void)webViewController:(id)a3 didFinishDocumentLoadForNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v10 webViewController:v6 didFinishDocumentLoadForNavigation:v7];
  v8 = [(_SFBrowserContentViewController *)self configuration];
  v9 = [v8 _redirectNotificationBehavior];

  if (!v9 && !self->_isExpectingClientRedirect)
  {
    self->_canNotifyHostApplicationOfRedirects = 0;
  }
}

- (void)webViewController:(id)a3 didChangeFullScreen:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v8 webViewController:v6 didChangeFullScreen:v4];
  v7 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v7 didChangeFullScreen:v4];
}

- (void)webViewControllerWebProcessDidCrash:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v6 webViewControllerWebProcessDidCrash:v4];
  v5 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
  [v5 didChangeFullScreen:0];
}

- (void)safariActivity:(id)a3 didFinish:(BOOL)a4
{
  v12 = a3;
  v5 = [v12 activityType];
  v6 = [v5 isEqualToString:@"com.apple.mobilesafari.activity.addBookmark"];

  if ((v6 & 1) == 0)
  {
    v7 = v12;
    v8 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
    v9 = MEMORY[0x1E696AD98];
    v10 = [v7 activityProxy];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "activityProxyID")}];
    [v8 executeCustomActivityProxyID:v11];
  }
}

- (void)browserViewDidReceiveTouchEvent:(id)a3
{
  v5 = [(_SFBrowserContentViewController *)self configuration];
  if ([v5 _redirectNotificationBehavior] == 1)
  {
    touchEventsShouldStopRedirectNotifications = self->_touchEventsShouldStopRedirectNotifications;

    if (touchEventsShouldStopRedirectNotifications)
    {
      self->_canNotifyHostApplicationOfRedirects = 0;
    }
  }

  else
  {
  }
}

- (void)_updateMaxVisibleHeightPercentageUserDriven:(BOOL)a3
{
  if (self->_hostApplicationIsForeground)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = SFBrowserServiceViewController;
    [(_SFBrowserContentViewController *)&v5 _updateMaxVisibleHeightPercentageUserDriven:a3];
  }
}

- (void)activityViewController:(id)a3 didCompleteActivity:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v11.receiver = self;
  v11.super_class = SFBrowserServiceViewController;
  [(_SFBrowserContentViewController *)&v11 activityViewController:v8 didCompleteActivity:v9 success:v5];
  if ([v9 isEqualToString:@"com.apple.mobilesafari.activity.addToHomeScreen"] & v5)
  {
    v10 = [(SFBrowserServiceViewController *)self _remoteViewControllerProxy];
    [v10 suspendApplication];
  }
}

- (void)updateScrollViewIndicatorVerticalInsets:(void *)a1 horizontalInsets:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_0(a1, a2, 5.8381e-34);
  _os_log_fault_impl(&dword_1D4644000, v3, OS_LOG_TYPE_FAULT, "Received invalid scroll view indicator insets from host app: %{public}@", v4, 0xCu);
}

- (void)processPool
{
  v5 = OUTLINED_FUNCTION_7_0(a1, a2, 5.8381e-34);
  _os_log_fault_impl(&dword_1D4644000, a3, OS_LOG_TYPE_FAULT, "%{public}@ was asked to create its process pool before it has the host app's information", a2, 0xCu);
}

- (void)_shouldAcceptMessage:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, a2, a3, "Private click not accepted because its origin identifier was %llu", a1);
}

- (void)_shouldAcceptMessage:.cold.2()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_shouldAcceptMessage:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_trustedReportEndpoint
{
  OUTLINED_FUNCTION_7_0(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Private click not accepted because fetching Info.plist contents failed with error %{public}@", v5);
}

- (void)decideCookieSharingForURL:callback:proxiedAssociatedDomains:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)startResolveRedirectionForURL:.cold.1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_ensureWebsiteDataStoreURL:cookieStoreURL:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_0(&dword_1D4644000, "Failed to create data store URL at %{public}@, error: %{public}@", v4, v5);
}

- (void)_ensureWebsiteDataStoreURL:cookieStoreURL:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_0(&dword_1D4644000, "Failed to create cookie data store URL at %{public}@, error: %{public}@", v4, v5);
}

- (void)_decideDataSharingMode
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_0(&dword_1D4644000, "Failed to look up record for %{public}@: %{public}@", v4, v5);
}

void __74__SFBrowserServiceViewController_closeDatabasesOnBackgroundingOrDismissal__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end