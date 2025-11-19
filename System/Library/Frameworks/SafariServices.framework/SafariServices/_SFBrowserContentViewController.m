@interface _SFBrowserContentViewController
- (BOOL)_canSaveWebpage;
- (BOOL)_canSaveWebpageForURL:(id)a3;
- (BOOL)_canScrollToTopInView:(id)a3;
- (BOOL)_canShowDownloadWithoutPrompting:(id)a3;
- (BOOL)_canShowPageFormatMenu;
- (BOOL)_currentlyEditingText;
- (BOOL)_dismissTransientUIAnimated:(BOOL)a3;
- (BOOL)_effectiveBarCollapsingEnabled;
- (BOOL)_hideFindOnPage;
- (BOOL)_isSplitScreen;
- (BOOL)_readerViewControllerNeedsSetUp;
- (BOOL)_safeAreaShouldAffectWebViewObscuredInsets;
- (BOOL)_shouldGoBackToOwnerWebView;
- (BOOL)_shouldReloadImmediatelyAfterPageLoadError;
- (BOOL)_shouldUpdateCurrentScrollViewInsets;
- (BOOL)_showICSControllerForPath:(id)a3 sourceURL:(id)a4;
- (BOOL)_stopReloadButtonShowsStop;
- (BOOL)_suppressReloadToPreventLoadingJavaScriptIfNecessary;
- (BOOL)_updateAppInfoOverlayForBanner:(id)a3;
- (BOOL)_usesScrollToTopView;
- (BOOL)allowsBrowsingAssistant;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canFindOnPage;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)createFluidProgressState;
- (BOOL)dynamicBarAnimator:(id)a3 canTransitionToState:(int64_t)a4 byDraggingWithOffset:(double)a5;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasFailedURL;
- (BOOL)isDisplayingQuickLookDocumentForCustomizationController:(id)a3;
- (BOOL)isPageEligibileToShowNotSecureWarning;
- (BOOL)isPlayingAudio;
- (BOOL)isReaderAvailableForCustomizationController:(id)a3;
- (BOOL)isSafariRestricted;
- (BOOL)isSecure;
- (BOOL)isShowingErrorPage;
- (BOOL)printControllerPageIsLoading:(id)a3;
- (BOOL)privacyReportShouldSeparateBlockedTrackers;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (BOOL)supportsAdvancedPrivacyProtectionsForURL:(id)a3;
- (BOOL)webViewControllerCanFindNextOrPrevious:(id)a3;
- (BOOL)webViewControllerShouldAutofillESimInformation:(id)a3;
- (BOOL)webViewControllerShouldFillStringForFind:(id)a3;
- (NSArray)normalBrowsingUserContentControllers;
- (NSURL)URLForPerSitePreferences;
- (SFContentBlockerManager)contentBlockerManager;
- (SFReaderContext)readerContext;
- (SFScribbleController)sfScribbleController;
- (SFWebExtensionsController)webExtensionsController;
- (UIEdgeInsets)_effectiveWebViewSafeAreaInsets;
- (WBSBrowsingAssistantController)assistantController;
- (WBSPrivateBrowsingUserDefinedContentBlockerManager)privateBrowsingUserDefinedContentBlockerManager;
- (WBSScribbleQuirksManager)scribbleQuirksManager;
- (WBSSecIdentitiesCache)secIdentitiesCache;
- (WBSTranslationContext)translationContext;
- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager;
- (WKUserContentController)userContentController;
- (WKWebView)webView;
- (_SFBrowserContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_SFBrowserContentViewControllerDelegate)delegate;
- (_SFBrowserView)browserView;
- (_SFReloadOptionsController)reloadOptionsController;
- (double)_crashBannerDraggingOffsetForContentOffset:(CGPoint)a3;
- (double)_maximumHeightObscuredByBottomBar;
- (double)_offsetForDynamicBarAnimator;
- (double)dynamicBarAnimator:(id)a3 minimumTopBarHeightForOffset:(double)a4;
- (double)estimatedProgress;
- (id)_EVOrganizationName;
- (id)_applicationPayloadForOpeningInSafari;
- (id)_committedDomainForPreferences;
- (id)_contextMenuConfigurationForWebView:(id)a3 element:(id)a4;
- (id)_contextMenuContentPreviewForWebView:(id)a3 element:(id)a4;
- (id)_createPersistentDataStoreWithConfiguration:(id)a3;
- (id)_currentWebView;
- (id)_digitalHealthManager;
- (id)_fallbackURLForWellKnownChangePasswordURL:(id)a3;
- (id)_fallbackURLForWellKnownChangePasswordURLFromQuirks:(id)a3;
- (id)_homePageURLToUseAsFallbackWhenTryingToChangePassword:(id)a3;
- (id)_itemProviderCollectionForSharingURL:(id)a3 title:(id)a4;
- (id)_mailContentProvider;
- (id)_makeReaderViewController;
- (id)_openNewWebViewIfNeededWithConfiguration:(id)a3 forNavigationAction:(id)a4;
- (id)_quickLookDocumentForDownload:(id)a3;
- (id)_requestBySettingAdvancedPrivacyProtectionsFlag:(id)a3;
- (id)currentFluidProgressStateSource;
- (id)currentHostForScribbleController:(id)a3;
- (id)expectedOrCurrentURL;
- (id)handoffURL;
- (id)legacyTLSHostManager;
- (id)linkPreviewHelper:(id)a3 previewViewControllerForURL:(id)a4;
- (id)linkPreviewHelper:(id)a3 resultOfLoadingURL:(id)a4;
- (id)navigationBarURLForSharing:(id)a3;
- (id)newProcessPool;
- (id)overlayContainerViewForScribbleController:(id)a3;
- (id)pageFormatMenuController;
- (id)pageLoadErrorControllerGetSecIdentityPreferencesController:(id)a3;
- (id)processPool;
- (id)processPoolConfiguration;
- (id)quickLookDocument;
- (id)quickLookDocumentForCurrentBackForwardListItem;
- (id)readerControllerForMailContentProvider:(id)a3;
- (id)resultOfLoadingRequest:(id)a3 inMainFrame:(BOOL)a4 disallowRedirectToExternalApps:(BOOL)a5;
- (id)safariApplicationVersionForTranslationContext:(id)a3;
- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)a3;
- (id)sfWebExtensionsControllersForAllProfiles:(id)a3;
- (id)suggestedFileNameForQuickLookDocument:(id)a3;
- (id)webViewConfiguration;
- (id)webViewController:(id)a3 contextMenuContentPreviewForElement:(id)a4;
- (id)webViewController:(id)a3 didStartDownload:(id)a4;
- (id)webViewForCustomizationController:(id)a3;
- (id)webViewForMailContentProvider:(id)a3;
- (id)websiteDataStore;
- (void)_cancelPendingUpdateUserActivityTimer;
- (void)_checkForAppLink;
- (void)_cleanUpAfterRedirectToExternalApp;
- (void)_cleanUpWebViewController:(id)a3;
- (void)_closePreviewDocumentTimerFired:(id)a3;
- (void)_completeRedirectToExternalNavigationResult:(id)a3 fromOriginalRequest:(id)a4 dialogResult:(int64_t)a5;
- (void)_decreasePageZoomSetting;
- (void)_determineResultOfLoadingRequest:(id)a3 inMainFrame:(BOOL)a4 disallowRedirectToExternalApps:(BOOL)a5 completionHandler:(id)a6;
- (void)_didCompleteViewSizeTransition;
- (void)_didDecideNavigationPolicy:(int64_t)a3 forNavigationAction:(id)a4;
- (void)_didDecideNavigationPolicy:(int64_t)a3 forNavigationResponse:(id)a4;
- (void)_emailCurrentPageWithPreferredContentType:(int64_t)a3;
- (void)_fetchSharingURLWithCompletionHandler:(id)a3;
- (void)_goBack;
- (void)_goForward;
- (void)_hideDigitalHealthOverlay;
- (void)_hideNavigationBarGestureRecognized:(id)a3;
- (void)_hideQuickLookDocumentView;
- (void)_increasePageZoomSetting;
- (void)_initialLoadFinishedWithSuccess:(BOOL)a3;
- (void)_initializeWebKitExperimentalFeatures;
- (void)_internalWebViewController:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)_internalWebViewController:(id)a3 decidePolicyForNavigationAction:(id)a4 withResult:(id)a5 decisionHandler:(id)a6;
- (void)_invalidateEVOrganizationName;
- (void)_invalidatePreviewCloseTimer;
- (void)_invalidateUserActivity;
- (void)_invalidateWebViewControllers;
- (void)_invokeCustomActivity;
- (void)_layOutBrowserViewForSizeTransition;
- (void)_openCurrentURLInSafari;
- (void)_perSiteAutomaticReaderActivationPreferenceDidChange:(id)a3;
- (void)_perSiteLockdownModePreferenceDidChange:(id)a3;
- (void)_perSitePageZoomPreferenceDidChange:(id)a3;
- (void)_popWebViewController;
- (void)_presentActivityViewController;
- (void)_presentSaveWebpageViewController;
- (void)_presentTranslationConsentAlertWithType:(unint64_t)a3 completionHandler:(id)a4;
- (void)_pushWebViewController:(id)a3;
- (void)_queueAlertForRedirectToExternalNavigationResult:(id)a3 fromOriginalRequest:(id)a4 isMainFrame:(BOOL)a5 promptPolicy:(int64_t)a6 userAction:(id)a7;
- (void)_receivedTouchDown:(id)a3;
- (void)_receivedTouchUp:(id)a3;
- (void)_redirectToExternalNavigationResult:(id)a3 fromOriginalRequest:(id)a4 promptPolicy:(int64_t)a5 isMainFrame:(BOOL)a6 userAction:(id)a7;
- (void)_redirectToNewsIfNeededForRequest:(id)a3 isMainFrame:(BOOL)a4 userAction:(id)a5 decisionHandler:(id)a6;
- (void)_reloadFromOrigin:(BOOL)a3;
- (void)_resetPageZoomSetting;
- (void)_scrollToTopFromScrollToTopView;
- (void)_setCurrentWebViewController:(id)a3;
- (void)_setShowingCrashBanner:(BOOL)a3 animated:(BOOL)a4;
- (void)_setShowingPinnableBanner:(id)a3 animated:(BOOL)a4;
- (void)_setShowingReader:(BOOL)a3;
- (void)_setShowingReader:(BOOL)a3 deactivationMode:(unint64_t)a4 animated:(BOOL)a5;
- (void)_setSuppressingPreviewProgressAnimation:(BOOL)a3;
- (void)_setUpAnalyticsPersona;
- (void)_setUpCalendarEventDetectorIfNeeded;
- (void)_setUpCookieStoragePolicyForDataStore:(id)a3;
- (void)_setUpInterfaceIfNeeded;
- (void)_setUpMenu;
- (void)_setUpReaderViewController;
- (void)_setUpReloadOptionsControllerIfNeeded;
- (void)_setUpToolbar;
- (void)_setUpTopBarAndBottomBar;
- (void)_setUpWebViewControllerIfNeeded;
- (void)_setWebViewController:(id)a3;
- (void)_setupPocketWithScrollView:(id)a3;
- (void)_showCrashBanner:(id)a3 animated:(BOOL)a4;
- (void)_showDigitalHealthOverlayWithPolicy:(int64_t)a3;
- (void)_showDownload:(id)a3;
- (void)_showFinanceKitOrderPreviewControllerWithURL:(id)a3 dismissalHandler:(id)a4;
- (void)_showPassBookControllerForPasses:(id)a3;
- (void)_showQuickLookDocumentView;
- (void)_showReaderAnimated:(BOOL)a3;
- (void)_translationAvailabilityDidChange:(id)a3;
- (void)_translationContextStateDidChange:(id)a3;
- (void)_updateBannerTheme:(id)a3;
- (void)_updateBarItemsWithAnimation:(BOOL)a3;
- (void)_updateBarTheme;
- (void)_updateCrashBannerOffset;
- (void)_updateCurrentScrollViewInsets;
- (void)_updateDarkModeEnabled;
- (void)_updateDigitalHealthTracking;
- (void)_updateDynamicBarGeometry;
- (void)_updateHomeIndicatorAutoHideState;
- (void)_updateInterfaceFillsScreen;
- (void)_updateMaxVisibleHeightPercentageUserDriven:(BOOL)a3;
- (void)_updateModalInPresentation;
- (void)_updateNavigationBar;
- (void)_updatePageZoomWithPreference;
- (void)_updatePinnableBannerFrame;
- (void)_updatePinnableBannerOffset;
- (void)_updatePreviewLoadingUI;
- (void)_updateScrollIndicatorVerticalInsets:(UIEdgeInsets)a3 horizontalInsets:(UIEdgeInsets)a4;
- (void)_updateScrollToTopView;
- (void)_updateStatusBarStyleForced:(BOOL)a3;
- (void)_updateTrackerProtectionPreferences;
- (void)_updateUI;
- (void)_updateUIWithAnimation:(BOOL)a3;
- (void)_updateUserActivity;
- (void)_updateUserActivitySoon;
- (void)_updateUserActivityTimerFired;
- (void)_updateUsesLockdownStatusBar;
- (void)_updateUsesNarrowLayout;
- (void)_updateWebViewLayoutSize;
- (void)_updateWebViewShrinkToFit;
- (void)_willBeginUserInitiatedNavigation;
- (void)_willCommitContextMenuForWebView:(id)a3 withAnimator:(id)a4;
- (void)activityViewController:(id)a3 prepareActivity:(id)a4 completion:(id)a5;
- (void)addCurrentPageToHomeScreen:(id)a3;
- (void)addPassesViewControllerDidFinish:(id)a3;
- (void)addTrustedEventAttribution:(id)a3;
- (void)authenticationChallengeDidNegotiateModernTLS:(id)a3;
- (void)autoFillFormKeyPressed;
- (void)barManager:(id)a3 didReceiveTapForBarItem:(int64_t)a4;
- (void)beginDigitalHealthTracking;
- (void)browsingAssistantController:(id)a3 didUpdateContentOptionsForURL:(id)a4;
- (void)browsingAssistantControllerDidUpdateUserConsentState:(id)a3;
- (void)cancelKeyPressed;
- (void)clearFluidProgressState;
- (void)collectDiagnosticsForAutoFillWithCompletionHandler:(id)a3;
- (void)contextMenuConfigurationForReaderViewController:(id)a3 element:(id)a4 completionHandler:(id)a5;
- (void)dataForQuickLookDocument:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)decideDataSharingModeAndSetUpWebViewWithCompletionHandler:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)downloadDidFail:(id)a3;
- (void)downloadDidFinish:(id)a3;
- (void)downloadShouldContinueAfterReceivingResponse:(id)a3 decisionHandler:(id)a4;
- (void)dynamicBarAnimatorOutputsDidChange:(id)a3;
- (void)dynamicBarAnimatorStateDidChange:(id)a3;
- (void)dynamicBarAnimatorWillEnterSteadyState:(id)a3;
- (void)find:(id)a3;
- (void)fluidProgressRocketAnimationDidComplete;
- (void)handleSearchResult:(id)a3;
- (void)linkPreviewHelper:(id)a3 commitPreviewViewControllerForAction:(int64_t)a4 withTabOrder:(int64_t)a5;
- (void)linkPreviewHelper:(id)a3 didProduceNavigationIntent:(id)a4 forAction:(int64_t)a5;
- (void)linkPreviewHelper:(id)a3 redirectToExternalNavigationResult:(id)a4;
- (void)linkPreviewHelperWillDisableLinkPreview;
- (void)loadRequest:(id)a3;
- (void)loadView;
- (void)navigationBar:(id)a3 didCreateBar:(id)a4 trailingBar:(id)a5;
- (void)navigationBar:(id)a3 didCreateLeadingToolbar:(id)a4 trailingToolbar:(id)a5;
- (void)navigationBarFormatMenuButtonBecameUnavailable:(id)a3;
- (void)navigationBarFormatMenuButtonStartedInteraction:(id)a3;
- (void)navigationBarFormatMenuButtonWasTapped:(id)a3;
- (void)navigationBarMediaStateMuteButtonWasTapped:(id)a3;
- (void)navigationBarMetricsDidChange:(id)a3;
- (void)navigationBarReaderButtonWasTapped:(id)a3;
- (void)navigationBarReloadButtonWasTapped:(id)a3;
- (void)navigationBarStopLoadingButtonWasTapped:(id)a3;
- (void)navigationBarTranslateButtonWasTapped:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)overlayDidHide:(id)a3;
- (void)pageLoadErrorController:(id)a3 allowLegacyTLSConnectionForURL:(id)a4 navigateToURL:(id)a5;
- (void)pageLoadErrorControllerReloadUsingHTTPSOnlyBypass:(id)a3;
- (void)perSiteSettingsUIPresentSettings;
- (void)readerViewController:(id)a3 contextMenuDidEndForElement:(id)a4;
- (void)readerViewController:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5;
- (void)reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:(BOOL)a3;
- (void)reloadDisablingContentBlockers:(BOOL)a3;
- (void)reloadEnablingDowngradedPrivateRelay:(BOOL)a3;
- (void)reloadFromOriginKeyPressed;
- (void)reloadKeyPressed;
- (void)saveToFilesOperation:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setConfiguration:(id)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)setHostAppModalPresentationStyle:(int64_t)a3;
- (void)setKeepBarsMinimized:(BOOL)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setPreferredBarTintColor:(id)a3;
- (void)setPreferredControlTintColor:(id)a3;
- (void)setQuickLookDocumentForCurrentBackForwardListItem:(id)a3;
- (void)setRemoteSwipeGestureEnabled:(BOOL)a3;
- (void)setSafariDataSharingMode:(int64_t)a3;
- (void)sfScribbleControllerDidEndScribbling:(id)a3;
- (void)sfScribbleControllerDidStartScribbling:(id)a3;
- (void)sfScribbleControllerDidUpdateHiddenElementCount:(id)a3;
- (void)showFindOnPage;
- (void)stopDigitalHealthTrackingWithCompletionHandler:(id)a3;
- (void)stopLoading;
- (void)takeFindStringKeyPressed;
- (void)takeOwnershipOfStepperContainer:(id)a3;
- (void)toggleContentBlockers:(id)a3;
- (void)toggleShowingReaderForUserAction;
- (void)traitCollectionDidChange:(id)a3;
- (void)translationContext:(id)a3 shouldReportProgressInUnifiedField:(BOOL)a4;
- (void)translationContext:(id)a3 showTranslationErrorAlertWithTitle:(id)a4 message:(id)a5;
- (void)translationContext:(id)a3 urlForCurrentPageWithCompletionHandler:(id)a4;
- (void)translationContextReloadPageInOriginalLanguage:(id)a3;
- (void)translationContextWillRequestTranslatingWebpage:(id)a3;
- (void)updateBottomBarOffset:(double)a3 topBarHeight:(double)a4;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)webViewController:(id)a3 authenticationChallenge:(id)a4 shouldAllowLegacyTLS:(id)a5;
- (void)webViewController:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5;
- (void)webViewController:(id)a3 contextMenuDidEndForElement:(id)a4;
- (void)webViewController:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5;
- (void)webViewController:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 completionHandler:(id)a6;
- (void)webViewController:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webViewController:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webViewController:(id)a3 decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)a4 forExtension:(id)a5 completionHandler:(id)a6;
- (void)webViewController:(id)a3 didCommitNavigation:(id)a4;
- (void)webViewController:(id)a3 didEndNavigationGestureToBackForwardListItem:(id)a4;
- (void)webViewController:(id)a3 didExtractTextSamplesForTranslation:(id)a4;
- (void)webViewController:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webViewController:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webViewController:(id)a3 didFindAppBannerWithContent:(id)a4;
- (void)webViewController:(id)a3 didFinishDocumentLoadForNavigation:(id)a4;
- (void)webViewController:(id)a3 didFinishNavigation:(id)a4;
- (void)webViewController:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webViewController:(id)a3 didSameDocumentNavigation:(id)a4 ofType:(int64_t)a5;
- (void)webViewController:(id)a3 didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)a4 uti:(id)a5;
- (void)webViewController:(id)a3 didStartProvisionalNavigation:(id)a4;
- (void)webViewController:(id)a3 mediaCaptureStateDidChange:(unint64_t)a4;
- (void)webViewController:(id)a3 printFrame:(id)a4;
- (void)webViewController:(id)a3 webViewDidClose:(id)a4;
- (void)webViewController:(id)a3 willEndNavigationGestureToBackForwardListItem:(id)a4;
- (void)webViewController:(id)a3 willGoToBackForwardListItem:(id)a4 inPageCache:(BOOL)a5;
- (void)webViewControllerDidChangeEstimatedProgress:(id)a3;
- (void)webViewControllerDidChangeHasOnlySecureContent:(id)a3;
- (void)webViewControllerDidChangeLoadingState:(id)a3;
- (void)webViewControllerDidChangeSafeAreaInsets:(id)a3;
- (void)webViewControllerDidChangeSafeAreaShouldAffectObscuredInsets:(id)a3;
- (void)webViewControllerDidDetermineReaderAvailability:(id)a3 dueTo:(int64_t)a4;
- (void)webViewControllerDidFirstPaint:(id)a3;
- (void)webViewControllerDidFirstVisuallyNonEmptyLayout:(id)a3;
- (void)webViewControllerDidUpdateUnderPageBackgroundColor:(id)a3;
- (void)webViewControllerWebProcessDidCrash:(id)a3;
- (void)willDismissBrowsingAssistantInSheet:(BOOL)a3;
- (void)willPresentBrowsingAssistantInSheet:(BOOL)a3;
@end

@implementation _SFBrowserContentViewController

- (_SFBrowserContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v53.receiver = self;
  v53.super_class = _SFBrowserContentViewController;
  v8 = [(_SFBrowserContentViewController *)&v53 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = MEMORY[0x1E69DDCE0];
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v8->_verticalScrollIndicatorBaseInsets.top = *MEMORY[0x1E69DDCE0];
    *&v8->_verticalScrollIndicatorBaseInsets.bottom = v10;
    v11 = v9[1];
    *&v8->_horizontalScrollIndicatorBaseInsets.top = *v9;
    *&v8->_horizontalScrollIndicatorBaseInsets.bottom = v11;
    v12 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v8->_uuid;
    v8->_uuid = v12;

    v14 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v15 = objc_alloc_init(MEMORY[0x1E6985338]);
    wkPreferences = v8->_wkPreferences;
    v8->_wkPreferences = v15;

    -[WKPreferences setJavaScriptCanOpenWindowsAutomatically:](v8->_wkPreferences, "setJavaScriptCanOpenWindowsAutomatically:", [v14 safari_javaScriptCanOpenWindowsAutomatically]);
    -[WKPreferences setJavaScriptEnabled:](v8->_wkPreferences, "setJavaScriptEnabled:", [v14 safari_isJavaScriptEnabled]);
    [v14 addObserver:v8 forKeyPath:*MEMORY[0x1E69B1F00] options:3 context:kvoContext];
    v17 = *MEMORY[0x1E69B1E78];
    -[WKPreferences _setApplePayCapabilityDisclosureAllowed:](v8->_wkPreferences, "_setApplePayCapabilityDisclosureAllowed:", [v14 BOOLForKey:*MEMORY[0x1E69B1E78]]);
    [v14 addObserver:v8 forKeyPath:v17 options:3 context:kvoContext];
    [(WKPreferences *)v8->_wkPreferences _setShouldSuppressKeyboardInputDuringProvisionalNavigation:1];
    [(WKPreferences *)v8->_wkPreferences _setShouldAllowUserInstalledFonts:0];
    [(WKPreferences *)v8->_wkPreferences setShouldPrintBackgrounds:1];
    -[WKPreferences _setNeedsSiteSpecificQuirks:](v8->_wkPreferences, "_setNeedsSiteSpecificQuirks:", [v14 BOOLForKey:*MEMORY[0x1E69B1F90]]);
    [(WKPreferences *)v8->_wkPreferences _setMediaDevicesEnabled:1];
    [(WKPreferences *)v8->_wkPreferences _setInterruptAudioOnPageVisibilityChangeEnabled:1];
    if (objc_opt_respondsToSelector())
    {
      -[WKPreferences _setTextExtractionEnabled:](v8->_wkPreferences, "_setTextExtractionEnabled:", [MEMORY[0x1E69C8880] isWebKitTextExtractionEnabled]);
    }

    [(_SFBrowserContentViewController *)v8 _initializeWebKitExperimentalFeatures];
    v18 = objc_alloc_init(SFSafariViewControllerConfiguration);
    configuration = v8->_configuration;
    v8->_configuration = v18;

    v20 = [_SFPerSitePreferencesVendor alloc];
    v21 = [(_SFBrowserContentViewController *)v8 webExtensionsController];
    v22 = [(_SFPerSitePreferencesVendor *)v20 initWithExtensionsController:v21 profileProvider:0];
    perSitePreferencesVendor = v8->_perSitePreferencesVendor;
    v8->_perSitePreferencesVendor = v22;

    v24 = [[_SFNavigationUtilitiesManager alloc] initWithPerSitePreferencesVendor:v8->_perSitePreferencesVendor];
    [(_SFBrowserContentViewController *)v8 set_navigationUtilitiesManager:v24];

    v25 = [(_SFBrowserContentViewController *)v8 normalBrowsingUserDefinedContentBlockerManager];
    v26 = [(_SFBrowserContentViewController *)v8 _navigationUtilitiesManager];
    [v26 setUserDefinedContentBlockerManager:v25];

    v27 = [(_SFBrowserContentViewController *)v8 _navigationUtilitiesManager];
    [v27 setBrowserDocument:v8];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v8 selector:sel__perSiteAutomaticReaderActivationPreferenceDidChange_ name:*MEMORY[0x1E69C94C8] object:0];
    [v28 addObserver:v8 selector:sel__perSitePageZoomPreferenceDidChange_ name:*MEMORY[0x1E69C9430] object:0];
    [v28 addObserver:v8 selector:sel__perSiteLockdownModePreferenceDidChange_ name:*MEMORY[0x1E69C94D0] object:0];
    v29 = objc_alloc_init(MEMORY[0x1E69853A8]);
    v30 = [v29 defaultWebpagePreferences];
    defaultWebpagePreferences = v8->_defaultWebpagePreferences;
    v8->_defaultWebpagePreferences = v30;

    [(WKWebpagePreferences *)v8->_defaultWebpagePreferences addObserver:v8 forKeyPath:*MEMORY[0x1E69C9398] options:4 context:kvoContext];
    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 addObserver:v8 selector:sel__translationAvailabilityDidChange_ name:*MEMORY[0x1E69C9A10] object:0];

    v8->_canOpenDownloadForInitialLoad = 1;
    v33 = objc_alloc_init(_SFBarManager);
    barManager = v8->_barManager;
    v8->_barManager = v33;

    [(_SFBarManager *)v8->_barManager setDelegate:v8];
    v35 = v8->_barManager;
    v36 = MEMORY[0x1E69DCC60];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __58___SFBrowserContentViewController_initWithNibName_bundle___block_invoke;
    v50[3] = &unk_1E8494A68;
    objc_copyWeak(&v51, &location);
    v37 = [v36 safari_menuWithTitle:@"Debug (Internal Only)" uncachedChildrenProvider:v50];
    [(_SFBarManager *)v35 setBarItem:6 menu:v37];

    [(_SFBrowserContentViewController *)v8 beginDigitalHealthTracking];
    v38 = objc_alloc(MEMORY[0x1E69C8820]);
    v39 = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
    v40 = [v39 URLForResource:@"WBSAutoFillQuirks" withExtension:@"plist"];
    v41 = [MEMORY[0x1E696AC08] defaultManager];
    v42 = [v41 safari_autoFillQuirksDownloadDirectoryURL];
    v43 = [v38 initWithBuiltInQuirksURL:v40 downloadsDirectoryURL:v42 resourceName:@"AutoFillQuirks" resourceVersion:@"1" updateDateDefaultsKey:*MEMORY[0x1E69C8CF8] updateInterval:0.0];
    autoFillQuirksManager = v8->_autoFillQuirksManager;
    v8->_autoFillQuirksManager = v43;

    [(WBSAutoFillQuirksManager *)v8->_autoFillQuirksManager setShouldAttemptToDownloadConfiguration:0];
    [(WBSAutoFillQuirksManager *)v8->_autoFillQuirksManager beginLoadingQuirksFromDisk];
    v45 = [MEMORY[0x1E695DF70] array];
    webViewControllers = v8->_webViewControllers;
    v8->_webViewControllers = v45;

    v47 = [MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari];
    v8->_pendingNavigationWillLoadWithLockdownModeEnabled = v47;
    v8->_wasLoadedWithLockdownModeEnabled = v47;
    v48 = v8;
    objc_destroyWeak(&v51);

    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)dealloc
{
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator removeObserver:self forKeyPath:@"UIShouldReflectCommittedURLInsteadOfCurrentURL" context:kvoContext];
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v3 removeObserver:self forKeyPath:*MEMORY[0x1E69B1F00] context:kvoContext];
  [v3 removeObserver:self forKeyPath:*MEMORY[0x1E69B1E78] context:kvoContext];
  [v3 removeObserver:self forKeyPath:*MEMORY[0x1E69E30E0] context:kvoContext];
  [(_SFBrowserContentViewController *)self stopDigitalHealthTrackingWithCompletionHandler:0];
  [(_SFBrowserContentViewController *)self _invalidateUserActivity];
  [(WBSWellKnownURLResponseCodeReliabilityChecker *)self->_wellKnownURLResponseCodeReliabilityChecker cancel];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69C94C8] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E69C9A10] object:0];
  [(_SFBrowserContentViewController *)self _invalidateWebViewControllers];
  [(_SFReloadOptionsController *)self->_reloadOptionsController invalidate];
  pendingNavigationActionDueToExternalSchemePromptHandler = self->_pendingNavigationActionDueToExternalSchemePromptHandler;
  if (pendingNavigationActionDueToExternalSchemePromptHandler)
  {
    pendingNavigationActionDueToExternalSchemePromptHandler[2](pendingNavigationActionDueToExternalSchemePromptHandler, 0);
  }

  v6.receiver = self;
  v6.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v6 dealloc];
}

- (void)loadView
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v22 loadView];
  v3 = [(_SFBrowserContentViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [_SFBrowserView alloc];
  [v3 bounds];
  v6 = [(_SFBrowserView *)v5 initWithFrame:?];
  browserView = self->_browserView;
  self->_browserView = v6;

  [(_SFBrowserView *)self->_browserView setAutoresizingMask:18];
  [(_SFBrowserView *)self->_browserView setDelegate:self];
  [v3 addSubview:self->_browserView];
  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__showBarsFromBottomBarTap_];
  showBarsFromBottomBarRecognizer = self->_showBarsFromBottomBarRecognizer;
  self->_showBarsFromBottomBarRecognizer = v8;

  [(UITapGestureRecognizer *)self->_showBarsFromBottomBarRecognizer setDelegate:self];
  [(_SFBrowserView *)self->_browserView addGestureRecognizer:self->_showBarsFromBottomBarRecognizer];
  v10 = objc_alloc_init(MEMORY[0x1E69C98C0]);
  URLSpoofingMitigator = self->_URLSpoofingMitigator;
  self->_URLSpoofingMitigator = v10;

  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator addObserver:self forKeyPath:@"UIShouldReflectCommittedURLInsteadOfCurrentURL" options:0 context:kvoContext];
  v12 = objc_alloc_init(_SFPrintController);
  printController = self->_printController;
  self->_printController = v12;

  [(_SFPrintController *)self->_printController setDelegate:self];
  v14 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v14 addObserver:self forKeyPath:*MEMORY[0x1E69E30E0] options:3 context:kvoContext];

  [(_SFBrowserContentViewController *)self _updateTrackerProtectionPreferences];
  [v3 bounds];
  CGRectGetWidth(v24);
  self->_usesNarrowLayout = SFWidthIsNarrow();
  [(_SFBrowserContentViewController *)self _setUpTopBarAndBottomBar];
  [(_SFBrowserContentViewController *)self _updateStatusBarStyleForced:1];
  v15 = [(_SFBrowserView *)self->_browserView navigationBar];
  [_SFBarHoverAssistant attachToBar:v15 withAnimator:self->_dynamicBarAnimator inContainerView:v3];

  v23[0] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v17 = [(_SFBrowserContentViewController *)self registerForTraitChanges:v16 withTarget:self action:sel__updateDarkModeEnabled];

  v18 = [objc_alloc(MEMORY[0x1E69B1BD0]) initWithTarget:self action:sel__receivedTouchDown_];
  touchDownGestureRecognizer = self->_touchDownGestureRecognizer;
  self->_touchDownGestureRecognizer = v18;

  [(SFTouchDownGestureRecognizer *)self->_touchDownGestureRecognizer setDelegate:self];
  [(_SFBrowserView *)self->_browserView addGestureRecognizer:self->_touchDownGestureRecognizer];
  v20 = [objc_alloc(MEMORY[0x1E69B1BD8]) initWithTarget:self action:sel__receivedTouchUp_];
  touchUpGestureRecognizer = self->_touchUpGestureRecognizer;
  self->_touchUpGestureRecognizer = v20;

  [(SFTouchUpGestureRecognizer *)self->_touchUpGestureRecognizer setDelegate:self];
  [(_SFBrowserView *)self->_browserView addGestureRecognizer:self->_touchUpGestureRecognizer];
}

- (void)_updateDarkModeEnabled
{
  v6 = [(_SFBrowserContentViewController *)self traitCollection];
  v3 = [v6 userInterfaceStyle];

  v4 = [(_SFBrowserContentViewController *)self webViewController];
  v7 = [v4 readerController];

  v5 = [v7 configurationManager];
  if (((v3 == 2) ^ [v5 darkModeEnabled]))
  {
    [v5 setDarkModeEnabled:v3 == 2];
    [v7 sendConfigurationToWebProcess];
    [(_SFBrowserContentViewController *)self _updateBarTheme];
  }
}

- (_SFBrowserView)browserView
{
  [(_SFBrowserContentViewController *)self loadViewIfNeeded];
  browserView = self->_browserView;

  return browserView;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(_SFBrowserContentViewController *)self _currentWebView];
  v4 = [v3 URL];

  if (v4)
  {
    v5 = [(_SFBrowserContentViewController *)self _currentWebView];
    LOBYTE(v6) = [v5 becomeFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFBrowserContentViewController;
    v6 = [(_SFBrowserContentViewController *)&v8 becomeFirstResponder];
  }

  return v6;
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(_SFBrowserContentViewController *)self _currentWebView];
  v4 = [v3 URL];
  if (v4)
  {
    v5 = [(_SFBrowserContentViewController *)self _currentWebView];
    v6 = [v5 canBecomeFirstResponder];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_currentlyEditingText
{
  v3 = [(_SFBrowserContentViewController *)self webView];
  if ([v3 sf_inResponderChain])
  {
    v4 = [(_SFBrowserContentViewController *)self webViewController];
    v5 = [v4 hasFormControlInteraction];
  }

  else
  {
    v4 = [MEMORY[0x1E69DCBE0] activeInstance];
    v6 = [v4 inputDelegate];
    v5 = v6 != 0;
  }

  return v5;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E69B1AD0] sharedProvider];
  if (([v7 commandConflictsWithTextEditing:v6] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [(_SFBrowserContentViewController *)self _currentlyEditingText];

  if (!v8)
  {
LABEL_6:
    v10 = [(_SFBrowserContentViewController *)self _onlyWantsWebAppShortcuts];
    v11 = [(_SFBrowserContentViewController *)self webViewController];
    v12 = v11;
    if (sel_reloadKeyPressed == a3 || sel_reloadFromOriginKeyPressed == a3)
    {
      goto LABEL_22;
    }

    if (sel_find_ != a3 && sel_takeFindStringKeyPressed != a3)
    {
      if (sel_navigateBackKeyPressed == a3)
      {
        v16 = [v11 webView];
        v19 = [v16 canGoBack];
      }

      else
      {
        if (sel_navigateForwardKeyPressed != a3)
        {
          if (sel_toggleReaderKeyPressed != a3)
          {
            if (sel_emailCurrentPage == a3)
            {
              if (v10 || ![getMFMailComposeViewControllerClass() canSendMail])
              {
                goto LABEL_42;
              }

              v16 = [v12 webView];
              v17 = [v16 URL];
              goto LABEL_23;
            }

            if (sel_increaseSize_ != a3 && sel_decreaseSize_ != a3 && sel_resetPageZoomLevelAndFontSize != a3)
            {
              if (sel_dismissSFSafariViewControllerKeyPressed != a3)
              {
                if (sel_saveKeyPressed != a3 && sel_saveWebpageAlternativeKeyPressed != a3)
                {
                  v13 = SFBrowserContentControllerCanPerformActionWithSender(self, a3);
                  v14 = v13;
                  if (v13)
                  {
                    v15 = [v13 BOOLValue];
                  }

                  else
                  {
                    v21.receiver = self;
                    v21.super_class = _SFBrowserContentViewController;
                    v15 = [(_SFBrowserContentViewController *)&v21 canPerformAction:a3 withSender:v6];
                  }

                  v9 = v15;

                  goto LABEL_30;
                }

                if (v10)
                {
                  goto LABEL_42;
                }

                v18 = [(_SFBrowserContentViewController *)self _canSaveWebpage];
                goto LABEL_25;
              }

              if (!self->_webViewIsInFullScreen)
              {
                v9 = [(_SFBrowserContentViewController *)self _persona]== 1;
                goto LABEL_30;
              }

LABEL_42:
              v9 = 0;
              goto LABEL_30;
            }

            if (v10)
            {
              goto LABEL_42;
            }

LABEL_22:
            v16 = [v11 webView];
            v17 = [v16 URL];
LABEL_23:
            v9 = v17 != 0;

LABEL_29:
            goto LABEL_30;
          }

          if (v10)
          {
            goto LABEL_42;
          }

          v18 = [(_SFBrowserContentViewController *)self _canShowPageFormatMenu];
LABEL_25:
          v9 = v18;
LABEL_30:

          goto LABEL_31;
        }

        v16 = [v11 webView];
        v19 = [v16 canGoForward];
      }

      v9 = v19;
      goto LABEL_29;
    }

    v18 = [(_SFBrowserContentViewController *)self canFindOnPage];
    goto LABEL_25;
  }

  v9 = 0;
LABEL_31:

  return v9;
}

- (void)_cleanUpWebViewController:(id)a3
{
  v9 = a3;
  if (v9)
  {
    [(_SFTelephonyNavigationMitigationPolicy *)self->_telephonyNavigationPolicy setDialogPresenter:0];
    [v9 setDelegate:0];
    v4 = [v9 view];
    [v4 removeFromSuperview];

    [v9 removeFromParentViewController];
    [v9 invalidate];
    [(_SFBrowserContentViewController *)self _setWebViewController:0];
    sharingExtensionController = self->_sharingExtensionController;
    self->_sharingExtensionController = 0;

    [(_SFReloadOptionsController *)self->_reloadOptionsController invalidate];
    reloadOptionsController = self->_reloadOptionsController;
    self->_reloadOptionsController = 0;

    [(_SFCalendarEventDetector *)self->_calendarEventDetector cancelCheckForConfirmationPage];
    calendarEventDetector = self->_calendarEventDetector;
    self->_calendarEventDetector = 0;

    [(_SFPageLoadErrorController *)self->_pageLoadErrorController invalidate];
    pageLoadErrorController = self->_pageLoadErrorController;
    self->_pageLoadErrorController = 0;
  }
}

- (WBSSecIdentitiesCache)secIdentitiesCache
{
  v2 = [(_SFBrowserContentViewController *)self websiteDataStore];
  v3 = [v2 safari_secIdentitiesCache];

  return v3;
}

- (void)_setCurrentWebViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    telephonyNavigationPolicy = self->_telephonyNavigationPolicy;
    v19 = v4;
    if (!telephonyNavigationPolicy)
    {
      v6 = objc_alloc_init(_SFTelephonyNavigationMitigationPolicy);
      v7 = self->_telephonyNavigationPolicy;
      self->_telephonyNavigationPolicy = v6;

      telephonyNavigationPolicy = self->_telephonyNavigationPolicy;
      v4 = v19;
    }

    [(_SFTelephonyNavigationMitigationPolicy *)telephonyNavigationPolicy setDialogPresenter:v4];
    v8 = [v19 webView];
    v9 = [v8 scrollView];
    [v9 _setIndicatorInsetAdjustmentBehavior:2];

    v10 = _SFCustomUserAgentStringIfNeeded();
    if (v10)
    {
      [v8 setCustomUserAgent:v10];
    }

    [v19 setDelegate:self];
    [(_SFBrowserContentViewController *)self addChildViewController:v19];
    [v19 didMoveToParentViewController:self];
    [(_SFBrowserContentViewController *)self _setWebViewController:v19];
    v11 = [_SFPageLoadErrorController alloc];
    v12 = [v19 webView];
    v13 = [(_SFBrowserContentViewController *)self secIdentitiesCache];
    v14 = [(_SFPageLoadErrorController *)v11 initWithWebView:v12 secIdentitiesCache:v13];
    pageLoadErrorController = self->_pageLoadErrorController;
    self->_pageLoadErrorController = v14;

    [(_SFPageLoadErrorController *)self->_pageLoadErrorController setDelegate:self];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController setDialogPresenter:v19];
    [(_SFPrintController *)self->_printController setWebView:v8];
    v16 = [v19 readerController];
    [(_SFPrintController *)self->_printController setReaderController:v16];

    [(_SFPrintController *)self->_printController setDialogPresenter:v19];
    [(_SFBrowserContentViewController *)self _setUpReloadOptionsControllerIfNeeded];
    [(_SFBrowserContentViewController *)self _setUpCalendarEventDetectorIfNeeded];
    [(_SFBrowserContentViewController *)self _updateTrackerProtectionPreferences];
    [(_SFBrowserContentViewController *)self _invalidateEVOrganizationName];
    [(_SFBrowserContentViewController *)self _setUpToolbar];
    [(_SFBrowserContentViewController *)self _updateUI];
    [(_SFBrowserContentViewController *)self _setUpAnalyticsPersona];
    [(_SFBrowserContentViewController *)self _setUpMenu];
    v17 = [(SFScribbleController *)self->_sfScribbleController webView];

    if (v17 != v8)
    {
      [(SFScribbleController *)self->_sfScribbleController invalidate];
      sfScribbleController = self->_sfScribbleController;
      self->_sfScribbleController = 0;
    }

    v4 = v19;
  }
}

- (void)_pushWebViewController:(id)a3
{
  v5 = a3;
  v4 = [(_SFBrowserContentViewController *)self webViewController];
  [(_SFBrowserContentViewController *)self _cleanUpWebViewController:v4];

  [(NSMutableArray *)self->_webViewControllers addObject:v5];
  [(_SFBrowserContentViewController *)self _setCurrentWebViewController:v5];
}

- (void)_popWebViewController
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  [(_SFBrowserContentViewController *)self _cleanUpWebViewController:?];

  [(NSMutableArray *)self->_webViewControllers removeLastObject];
  v4 = [(_SFBrowserContentViewController *)self webViewController];
  [(_SFBrowserContentViewController *)self _setCurrentWebViewController:?];
}

- (void)_invalidateWebViewControllers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_webViewControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [(_SFBrowserContentViewController *)self webViewController];
  [(_SFBrowserContentViewController *)self _cleanUpWebViewController:v7];

  [(NSMutableArray *)self->_webViewControllers removeAllObjects];
}

- (void)_setUpAnalyticsPersona
{
  v7 = [MEMORY[0x1E69C8810] sharedLogger];
  v3 = [MEMORY[0x1E696AAE8] _sf_safariServicesBundle];
  v4 = [v3 safari_normalizedVersion];
  v5 = [(_SFBrowserContentViewController *)self _persona]- 1;
  if (v5 > 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = qword_1D47DF858[v5];
  }

  [v7 registerSafariVersion:v4 persona:v6];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (kvoContext == a6)
  {
    if (self->_URLSpoofingMitigator == v11)
    {
      if ([v10 isEqualToString:@"UIShouldReflectCommittedURLInsteadOfCurrentURL"])
      {
        [(_SFBrowserContentViewController *)self _updateUI];
      }
    }

    else if (self->_defaultWebpagePreferences == v11)
    {
      if ([v10 isEqualToString:*MEMORY[0x1E69C9398]])
      {
        [(_SFBrowserContentViewController *)self _updateUsesLockdownStatusBar];
      }
    }

    else
    {
      v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
      v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      if (v14 | v15 && ([v14 isEqual:v15] & 1) == 0)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __82___SFBrowserContentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v16[3] = &unk_1E848F9B0;
        v17 = v10;
        v18 = self;
        dispatch_async(MEMORY[0x1E69E96A0], v16);
      }
    }
  }
}

- (void)setDisplayMode:(int64_t)a3
{
  if (self->_displayMode != a3)
  {
    v5 = [(_SFBrowserContentViewController *)self _isPreviewing];
    browserView = self->_browserView;
    if (v5)
    {
      [(_SFBrowserView *)browserView setPreviewHeader:0];
    }

    else
    {
      [(_SFBrowserView *)browserView setNavigationBar:0];
      [(_SFBrowserView *)self->_browserView setToolbar:0];
    }

    self->_displayMode = a3;
    [(_SFBrowserContentViewController *)self _setSuppressingPreviewProgressAnimation:[(_SFBrowserContentViewController *)self _isPreviewing]];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50___SFBrowserContentViewController_setDisplayMode___block_invoke;
    v7[3] = &unk_1E8490658;
    v7[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
  }
}

- (id)processPoolConfiguration
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69853F0]);
  v4 = [MEMORY[0x1E696AAE8] safari_safariServicesInjectedBundleURL];
  [v3 setInjectedBundleURL:v4];

  v7[0] = @"safari-reader";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setCachePartitionedURLSchemes:v5];

  [v3 setPrewarmsProcessesAutomatically:1];
  [v3 setJITEnabled:{-[SFSafariViewControllerConfiguration _isJITEnabled](self->_configuration, "_isJITEnabled")}];

  return v3;
}

- (id)newProcessPool
{
  v3 = objc_alloc(MEMORY[0x1E6985340]);
  v4 = [(_SFBrowserContentViewController *)self processPoolConfiguration];
  v5 = [v3 _initWithConfiguration:v4];

  v6 = [MEMORY[0x1E69E20E8] sharedWebFilterSettings];
  LODWORD(v3) = [v6 isWebFilterEnabled];

  if (v3)
  {
    v8 = +[_SFSearchEngineController sharedInstance];
    v9 = [v8 engines];
    [v5 _setObject:v9 forBundleParameter:*MEMORY[0x1E69C9A48]];
  }

  SafariShared::ReaderAvailabilityController::configureProcessPool(v5, v7);
  return v5;
}

- (id)processPool
{
  v3 = [_SFBrowserContentViewController processPool]::processPool;
  if (![_SFBrowserContentViewController processPool]::processPool)
  {
    v4 = [(_SFBrowserContentViewController *)self newProcessPool];
    v5 = [_SFBrowserContentViewController processPool]::processPool;
    [_SFBrowserContentViewController processPool]::processPool = v4;

    v3 = [_SFBrowserContentViewController processPool]::processPool;
  }

  return v3;
}

- (id)_createPersistentDataStoreWithConfiguration:(id)a3
{
  v3 = [MEMORY[0x1E69853B8] safari_dataStoreWithConfiguration:a3];

  return v3;
}

- (id)websiteDataStore
{
  if ([(_SFBrowserContentViewController *)self safariDataSharingMode]== 4 || [(_SFBrowserContentViewController *)self isSafariRestricted])
  {
    v3 = mobileSafariNonPersistentDataStore(self->_configuration);
  }

  else
  {
    if ([(_SFBrowserContentViewController *)self safariDataSharingMode]!= 1 && [(_SFBrowserContentViewController *)self safariDataSharingMode]!= 3)
    {
      v6 = [(_SFBrowserContentViewController *)self websiteDataStoreConfiguration];
      if (v6)
      {
        [(_SFBrowserContentViewController *)self _createPersistentDataStoreWithConfiguration:v6];
      }

      else
      {
        mobileSafariNonPersistentDataStore(self->_configuration);
      }
      v4 = ;

      goto LABEL_5;
    }

    v3 = mobileSafariDefaultDataStore(self->_configuration);
  }

  v4 = v3;
LABEL_5:

  return v4;
}

- (WKUserContentController)userContentController
{
  if ([(_SFBrowserContentViewController *)self isPrivate])
  {
    [MEMORY[0x1E6985350] safari_privateBrowsingUserContentController];
  }

  else
  {
    [MEMORY[0x1E6985350] safari_userContentController];
  }
  v2 = ;

  return v2;
}

- (void)_setUpCookieStoragePolicyForDataStore:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 httpCookieStore];
  [v5 sf_applySafariCookieStoragePolicy];

  [(WKPreferences *)self->_wkPreferences sf_applySafariStorageBlockingPolicy];
  v6 = WBS_LOG_CHANNEL_PREFIXSVCPrivacy();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
    v8 = 134217984;
    v9 = [v7 cookieAcceptPolicy];
    _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Set cookie storage policy to %ld", &v8, 0xCu);
  }
}

- (id)webViewConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v4 = [(_SFBrowserContentViewController *)self websiteDataStore];
  [v3 setWebsiteDataStore:v4];
  v5 = [(_SFBrowserContentViewController *)self processPool];
  [v3 setProcessPool:v5];

  v6 = [(_SFBrowserContentViewController *)self userContentController];
  [v3 setUserContentController:v6];

  [v3 setPreferences:self->_wkPreferences];
  [v3 setAllowsPictureInPictureMediaPlayback:0];
  v7 = _SFApplicationNameForUserAgent();
  [v3 setApplicationNameForUserAgent:v7];

  [v3 _setApplePayEnabled:1];
  [v3 setIgnoresViewportScaleLimits:1];
  [v3 _setNeedsStorageAccessFromFileURLsQuirk:0];
  [v3 setShowsSystemScreenTimeBlockingView:0];
  v8 = [v3 preferences];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v11 = [v10 safari_warnAboutFraudulentWebsites];
    v12 = [v3 preferences];
    [v12 _setSafeBrowsingEnabled:v11];
  }

  v13 = [MEMORY[0x1E695E000] safari_browserDefaults];
  LODWORD(v14) = [v13 BOOLForKey:*MEMORY[0x1E69B1E80]];
  if ([v13 BOOLForKey:*MEMORY[0x1E69B1F70]])
  {
    v14 = v14 | 2;
  }

  else
  {
    v14 = v14;
  }

  [v3 setMediaTypesRequiringUserActionForPlayback:v14];
  IsPad = _SFDeviceIsPad();
  if (v14)
  {
    v16 = IsPad;
  }

  else
  {
    v16 = 1;
  }

  [v3 _setMediaDataLoadsAutomatically:v16];
  [v3 _setMainContentUserGestureOverrideEnabled:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x1E69B1F18])}];
  [v3 setAllowsInlineMediaPlayback:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x1E69B1F20])}];
  [v3 _setInlineMediaPlaybackRequiresPlaysInlineAttribute:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x1E69B1EE8])}];
  [v3 _setInvisibleAutoplayNotPermitted:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x1E69B1EF0])}];
  [v3 _setLegacyEncryptedMediaAPIEnabled:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x1E69B1F10])}];
  [v3 _setDragLiftDelay:2];
  v17 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  v18 = [v17 webui_trackerProtectionEnabled];
  v19 = [v3 websiteDataStore];
  [v19 _setResourceLoadStatisticsEnabled:v18];

  v20 = [v3 defaultWebpagePreferences];
  v21 = _SFApplicationNameForDesktopUserAgent();
  [v20 _setApplicationNameForUserAgentWithModernCompatibility:v21];

  [v3 _setSystemPreviewEnabled:1];
  v22 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
  if (v22)
  {
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
      [v3 _setAttributedBundleIdentifier:v24];
    }
  }

  [(_SFBrowserContentViewController *)self _setUpCookieStoragePolicyForDataStore:v4];

  return v3;
}

- (BOOL)isSafariRestricted
{
  v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilesafari"];
  v3 = [v2 appState];
  v4 = [v3 isRestricted];

  return v4;
}

- (_SFReloadOptionsController)reloadOptionsController
{
  [(_SFBrowserContentViewController *)self _setUpReloadOptionsControllerIfNeeded];
  reloadOptionsController = self->_reloadOptionsController;

  return reloadOptionsController;
}

- (void)_updateTrackerProtectionPreferences
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v2 configuration];
  v5 = [v3 websiteDataStore];

  v4 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  [v5 _setResourceLoadStatisticsEnabled:{objc_msgSend(v4, "webui_trackerProtectionEnabled")}];
}

- (void)_initializeWebKitExperimentalFeatures
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [MEMORY[0x1E6985338] _experimentalFeatures];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [MEMORY[0x1E695E000] safari_keyForWebKitExperimentalFeature:v8];
        v10 = [v3 objectForKey:v9];
        v11 = v10 == 0;

        if (!v11)
        {
          -[WKPreferences _setEnabled:forExperimentalFeature:](self->_wkPreferences, "_setEnabled:forExperimentalFeature:", [v3 BOOLForKey:v9], v8);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_setUpWebViewControllerIfNeeded
{
  if (![(NSMutableArray *)self->_webViewControllers count])
  {
    v3 = [SFReaderEnabledWebViewController alloc];
    v4 = [(_SFBrowserContentViewController *)self webViewConfiguration];
    v5 = [(_SFBrowserContentViewController *)self contentBlockerManager];
    v6 = [(SFWebViewController *)v3 initWithWebViewConfiguration:v4 contentBlockerManager:v5];

    [(_SFBrowserContentViewController *)self _pushWebViewController:v6];
    [(_SFBrowserContentViewController *)self _didLoadWebView];
  }
}

- (BOOL)_hideFindOnPage
{
  v2 = [(_SFBrowserContentViewController *)self _currentWebView];
  v3 = [v2 findInteraction];

  v4 = [v3 isFindNavigatorVisible];
  if (v4)
  {
    [v3 dismissFindNavigator];
  }

  return v4;
}

- (BOOL)_shouldGoBackToOwnerWebView
{
  if ([(NSMutableArray *)self->_webViewControllers count]< 2)
  {
    return 0;
  }

  v3 = [(_SFBrowserContentViewController *)self webView];
  v4 = [v3 backForwardList];
  v5 = [v4 backList];
  v6 = [v5 count] < 2;

  return v6;
}

- (void)_willBeginUserInitiatedNavigation
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  [v3 willBeginUserInitiatedNavigation];

  URLSpoofingMitigator = self->_URLSpoofingMitigator;

  [(WBSURLSpoofingMitigator *)URLSpoofingMitigator willStartNewBrowserChromeInitiatedNavigation];
}

- (void)_goBack
{
  [(_SFBrowserContentViewController *)self _dismissTransientUIAnimated:1];
  if ([(_SFBrowserContentViewController *)self _shouldGoBackToOwnerWebView])
  {

    [(_SFBrowserContentViewController *)self _goBackToOwnerWebView];
  }

  else
  {
    v3 = [(_SFBrowserContentViewController *)self webView];
    v4 = [v3 backForwardList];
    v10 = [v4 backItem];

    v5 = [v10 URL];
    v6 = [v5 absoluteString];
    v7 = [v6 safari_isJavaScriptURLString];

    if (v7)
    {
      [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedUseOfJavaScriptAlert];
    }

    else
    {
      self->_shouldDismissReaderInReponseToSameDocumentNavigation = 1;
      self->_loadWasUserDriven = 1;
      [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
      v8 = [(_SFBrowserContentViewController *)self webView];
      v9 = [v8 goBack];
    }
  }
}

- (void)_goForward
{
  [(_SFBrowserContentViewController *)self _dismissTransientUIAnimated:1];
  v3 = [(_SFBrowserContentViewController *)self webView];
  v4 = [v3 backForwardList];
  v10 = [v4 forwardItem];

  v5 = [v10 URL];
  v6 = [v5 absoluteString];
  v7 = [v6 safari_isJavaScriptURLString];

  if (v7)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedUseOfJavaScriptAlert];
  }

  else
  {
    self->_shouldDismissReaderInReponseToSameDocumentNavigation = 1;
    self->_loadWasUserDriven = 1;
    [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
    v8 = [(_SFBrowserContentViewController *)self webView];
    v9 = [v8 goForward];
  }
}

- (void)_setUpReloadOptionsControllerIfNeeded
{
  if (!self->_reloadOptionsController)
  {
    v3 = [(_SFBrowserContentViewController *)self webView];
    if (v3)
    {
      v14 = v3;
      v4 = [[_SFInjectedJavaScriptController alloc] initWithWebView:v3];
      v5 = [_SFReloadOptionsController alloc];
      v6 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor requestDesktopSitePreferenceManager];
      v7 = [(_SFReloadOptionsController *)v5 initWithWebView:v14 activityJSController:v4 perSitePreferenceManager:v6];
      reloadOptionsController = self->_reloadOptionsController;
      self->_reloadOptionsController = v7;

      v9 = [v14 URL];
      [(_SFReloadOptionsController *)self->_reloadOptionsController setSupportsAdvancedPrivacyProtections:[(_SFBrowserContentViewController *)self supportsAdvancedPrivacyProtectionsForURL:v9]];

      v10 = self->_reloadOptionsController;
      v11 = [(_SFBrowserContentViewController *)self _navigationUtilitiesManager];
      [v11 setReloadOptionsController:v10];

      v12 = [(_SFBrowserContentViewController *)self _persona];
      v13 = [(_SFBrowserContentViewController *)self _navigationUtilitiesManager];
      [v13 setPersona:v12];

      v3 = v14;
    }
  }
}

- (void)_setUpCalendarEventDetectorIfNeeded
{
  if (!self->_calendarEventDetector)
  {
    v3 = [_SFCalendarEventDetector alloc];
    v6 = [(_SFBrowserContentViewController *)self webView];
    v4 = [(_SFCalendarEventDetector *)v3 initWithWebView:?];
    calendarEventDetector = self->_calendarEventDetector;
    self->_calendarEventDetector = v4;
  }
}

- (void)_setUpTopBarAndBottomBar
{
  displayMode = self->_displayMode;
  if (displayMode > 1)
  {
    if (displayMode == 2)
    {
      dynamicBarAnimator = self->_dynamicBarAnimator;
      self->_dynamicBarAnimator = 0;

      self->_shouldAutoHideHomeIndicator = 1;
      return;
    }

    if (displayMode != 4)
    {
      if (displayMode != 3)
      {
        return;
      }

      goto LABEL_9;
    }

    v20 = [[_SFLinkPreviewHeader alloc] initWithMinimumPreviewUI:1];
    [(_SFBrowserView *)self->_browserView setPreviewHeader:?];
    v18 = objc_alloc_init(MEMORY[0x1E69C97C0]);
    fluidProgressController = self->_fluidProgressController;
    self->_fluidProgressController = v18;

    [(WBSFluidProgressController *)self->_fluidProgressController setWindowDelegate:self];
    v6 = [(_SFLinkPreviewHeader *)v20 progressView];
    [(WBSFluidProgressController *)self->_fluidProgressController setDelegate:v6];
LABEL_13:

    goto LABEL_14;
  }

  if (displayMode)
  {
    if (displayMode != 1)
    {
      return;
    }

    v20 = [[_SFLinkPreviewHeader alloc] initWithMinimumPreviewUI:0];
    [(_SFBrowserView *)self->_browserView setPreviewHeader:?];
    v4 = objc_alloc_init(MEMORY[0x1E69C97C0]);
    v5 = self->_fluidProgressController;
    self->_fluidProgressController = v4;

    [(WBSFluidProgressController *)self->_fluidProgressController setWindowDelegate:self];
    v6 = [(_SFLinkPreviewHeader *)v20 progressView];
    [(WBSFluidProgressController *)self->_fluidProgressController setDelegate:v6];
    goto LABEL_13;
  }

LABEL_9:
  v7 = [_SFBrowserNavigationBar alloc];
  v20 = [(_SFNavigationBar *)v7 initWithFrame:1 inputMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  objc_storeStrong(&self->_navigationBar, v20);
  v8 = _SFBackdropGroupNameForOwner();
  [(_SFLinkPreviewHeader *)v20 setBackdropGroupName:v8];

  [(_SFLinkPreviewHeader *)v20 setDelegate:self];
  [(_SFLinkPreviewHeader *)v20 setUsesNarrowLayout:self->_usesNarrowLayout];
  [(_SFLinkPreviewHeader *)v20 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
  [(_SFBrowserView *)self->_browserView setNavigationBar:v20];
  v9 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__hideNavigationBarGestureRecognized_];
  hideNavigationBarGestureRecognizer = self->_hideNavigationBarGestureRecognizer;
  self->_hideNavigationBarGestureRecognizer = v9;

  [(UIPanGestureRecognizer *)self->_hideNavigationBarGestureRecognizer _setCanPanHorizontally:0];
  [(UIPanGestureRecognizer *)self->_hideNavigationBarGestureRecognizer setDelegate:self];
  [(_SFLinkPreviewHeader *)v20 addGestureRecognizer:self->_hideNavigationBarGestureRecognizer];
  v11 = objc_alloc_init(MEMORY[0x1E69B1B40]);
  navigationBarItem = self->_navigationBarItem;
  self->_navigationBarItem = v11;

  [(SFNavigationBarItem *)self->_navigationBarItem setCustomPlaceholderText:&stru_1F4FE9E38];
  [(_SFBrowserContentViewController *)self _setUpToolbar];
  v13 = objc_alloc_init(_SFDynamicBarAnimator);
  v14 = self->_dynamicBarAnimator;
  self->_dynamicBarAnimator = v13;

  [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator setDelegate:self];
  [(_SFBrowserContentViewController *)self _updateDynamicBarGeometry];
  v15 = objc_alloc_init(MEMORY[0x1E69C97C0]);
  v16 = self->_fluidProgressController;
  self->_fluidProgressController = v15;

  [(WBSFluidProgressController *)self->_fluidProgressController setWindowDelegate:self];
  [(SFNavigationBarItem *)self->_navigationBarItem setFluidProgressController:self->_fluidProgressController];
  [(_SFBrowserContentViewController *)self _updateBarTheme];
  [(_SFNavigationBar *)self->_navigationBar setItem:self->_navigationBarItem];
LABEL_14:
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [(_SFReaderViewController *)self->_readerViewController readerWebView];
    v6 = [v5 scrollView];
    [v6 setDelegate:0];
  }

  v7.receiver = self;
  v7.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v7 didMoveToParentViewController:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v5 viewWillAppear:a3];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50___SFBrowserContentViewController_viewWillAppear___block_invoke;
  v4[3] = &unk_1E8490658;
  v4[4] = self;
  [(_SFBrowserContentViewController *)self decideDataSharingModeAndSetUpWebViewWithCompletionHandler:v4];
  [(_SFBrowserView *)self->_browserView setNeedsLayout];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v3 viewDidAppear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v4 viewDidDisappear:a3];
  [(_SFBrowserContentViewController *)self _cancelPendingUpdateUserActivityTimer];
  [(_SFBrowserContentViewController *)self _invalidateUserActivity];
}

- (void)decideDataSharingModeAndSetUpWebViewWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [(_SFBrowserContentViewController *)self webViewController];

  if (!v4)
  {
    if (!self->_safariDataSharingMode)
    {
      self->_safariDataSharingMode = [(_SFBrowserContentViewController *)self _decideDataSharingMode];
    }

    [(_SFBrowserContentViewController *)self _setUpWebViewControllerIfNeeded];
  }

  v5[2]();
}

- (void)_setUpInterfaceIfNeeded
{
  if (!self->_didSetUpInterface)
  {
    self->_didSetUpInterface = 1;
    [(_SFBrowserContentViewController *)self _updateInterfaceFillsScreen];
    [(_SFBrowserContentViewController *)self _updateDynamicBarGeometry];
    [(_SFBrowserContentViewController *)self _updateUsesNarrowLayout];
    [(_SFBrowserContentViewController *)self _updateScrollToTopView];
    [(_SFBrowserContentViewController *)self _updateUsesLockdownStatusBar];
    [(_SFBrowserContentViewController *)self _updateWebViewLayoutSize];
    [(_SFBrowserContentViewController *)self _updateWebViewShrinkToFit];
    [(_SFBrowserContentViewController *)self _updateDarkModeEnabled];
    if ([(_SFBrowserContentViewController *)self _isPreviewing])
    {
      v3 = dispatch_time(0, 250000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58___SFBrowserContentViewController__setUpInterfaceIfNeeded__block_invoke;
      block[3] = &unk_1E8490658;
      block[4] = self;
      dispatch_after(v3, MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_layOutBrowserViewForSizeTransition
{
  v3 = [(_SFBrowserContentViewController *)self view];
  [v3 frame];
  self->_lastSizeUsedForBrowserViewLayout.width = v4;
  self->_lastSizeUsedForBrowserViewLayout.height = v5;

  v6 = [(_SFBrowserContentViewController *)self view];
  [v6 bounds];
  [(_SFBrowserView *)self->_browserView setFrame:?];

  [(_SFBrowserContentViewController *)self _updateInterfaceFillsScreen];
  [(_SFBrowserContentViewController *)self _updateDynamicBarGeometry];
  [(_SFBrowserContentViewController *)self _updateUsesNarrowLayout];
  [(_SFBrowserContentViewController *)self _updateWebViewLayoutSize];
  [(_SFBrowserContentViewController *)self _updatePinnableBannerFrame];
  [(_SFPageFormatMenuController *)self->_pageFormatMenuController dismissMenu];
  browserView = self->_browserView;

  [(_SFBrowserView *)browserView setNeedsLayout];
}

- (void)_didCompleteViewSizeTransition
{
  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
  [(_SFBrowserContentViewController *)self _updateUIWithAnimation:0];
  [(_SFBrowserContentViewController *)self _updateScrollToTopView];
  [(_SFBrowserContentViewController *)self _updateWebViewShrinkToFit];
  [(_SFBrowserContentViewController *)self _updateMaxVisibleHeightPercentageUserDriven:1];
  v4 = [(_SFBrowserContentViewController *)self _currentWebView];
  v3 = [v4 scrollView];
  [(_SFBrowserContentViewController *)self _setupPocketWithScrollView:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  ++self->_sizeTransitionCount;
  v8[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86___SFBrowserContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E8494A90;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86___SFBrowserContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E8494A90;
  [v7 animateAlongsideTransition:v9 completion:v8];
}

- (void)_updateHomeIndicatorAutoHideState
{
  v2 = self->_autoHidingHomeIndicatorPermitted && self->_shouldAutoHideHomeIndicator;
  v3 = v2;
  if (self->_prefersHomeIndicatorAutoHidden != v3)
  {
    self->_prefersHomeIndicatorAutoHidden = v3;
    [(_SFBrowserContentViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

- (BOOL)_safeAreaShouldAffectWebViewObscuredInsets
{
  v2 = [(_SFBrowserView *)self->_browserView currentWebView];
  v3 = [v2 _safeAreaShouldAffectObscuredInsets];

  return v3;
}

- (UIEdgeInsets)_effectiveWebViewSafeAreaInsets
{
  if ([(_SFBrowserContentViewController *)self _safeAreaShouldAffectWebViewObscuredInsets])
  {
    v3 = [(_SFBrowserView *)self->_browserView currentWebView];
    [v3 safeAreaInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = 0.0;
  }

  else
  {
    v5 = *MEMORY[0x1E69DDCE0];
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v9 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v10;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)_updateWebViewLayoutSize
{
  if (self->_displayMode == 2)
  {
    v42 = [(_SFBrowserView *)self->_browserView statusBarBackgroundView];
    [v42 bounds];
    CGRectGetHeight(v47);
  }

  else
  {
    v42 = [(_SFBrowserContentViewController *)self _currentWebView];
    [v42 safeAreaInsets];
    v40 = v3;
    [(_SFToolbar *)self->_bottomToolbar sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v4 = [(_SFBrowserView *)self->_browserView navigationBar];
    [v4 defaultHeight];
    v6 = v5;
    [v4 defaultHeight];
    [(_SFBrowserView *)self->_browserView toolbar];

    v7 = v40 + v6;
    if (!self->_keepBarsMinimized)
    {
      if (!self->_interfaceFillsScreen)
      {
        [v4 minimumHeight];
      }

      [(_SFBrowserContentViewController *)self _effectiveWebViewSafeAreaInsets];
    }
  }

  [(_SFBrowserContentViewController *)self _effectiveWebViewSafeAreaInsets];
  UIEdgeInsetsMax();
  v43 = v8;
  v39 = v9;
  v41 = v10;
  v38 = v11;
  UIEdgeInsetsMax();
  v37 = v12;
  v35 = v13;
  v36 = v14;
  v16 = v15;
  UIEdgeInsetsMax();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(_SFBrowserContentViewController *)self _isPreviewing];
  browserView = self->_browserView;
  if (v25)
  {
    [(_SFBrowserView *)browserView unscaledWebViewBounds];
  }

  else
  {
    [(_SFBrowserView *)browserView bounds];
  }

  v29 = v27 - (v39 + v38);
  v30 = v28 - (*&v43 + v41);
  v31 = v27 - (v35 + v16);
  v32 = v28 - (v37 + v36);
  v33 = v27 - (v20 + v24);
  v34 = v28 - (v18 + v22);
  v44 = [(_SFBrowserContentViewController *)self webView];
  [v44 _overrideLayoutParametersWithMinimumLayoutSize:v29 minimumUnobscuredSizeOverride:v30 maximumUnobscuredSizeOverride:{v31, v32, v33, v34}];

  v45 = [(_SFReaderViewController *)self->_readerViewController readerWebView];
  [v45 _overrideLayoutParametersWithMinimumLayoutSize:v29 minimumUnobscuredSizeOverride:v30 maximumUnobscuredSizeOverride:{v31, v32, v33, v34}];
}

- (BOOL)_isSplitScreen
{
  v2 = [(_SFBrowserContentViewController *)self view];
  v3 = [v2 window];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v12 bounds];
  v20.origin.x = v13;
  v20.origin.y = v14;
  v20.size.width = v15;
  v20.size.height = v16;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v17 = CGRectEqualToRect(v19, v20);

  return !v17;
}

- (void)_updateWebViewShrinkToFit
{
  v3 = [(_SFBrowserContentViewController *)self _isSplitScreen];
  v4 = [(_SFBrowserContentViewController *)self webView];
  [v4 _setAllowsViewportShrinkToFit:v3];
}

- (BOOL)_shouldUpdateCurrentScrollViewInsets
{
  v2 = [(_SFBrowserView *)self->_browserView currentWebView];
  v3 = [v2 fullscreenState];

  if (v3 < 4)
  {
    return 1u >> (v3 & 0xF);
  }

  else
  {
    return 0;
  }
}

- (void)_updateCurrentScrollViewInsets
{
  if (![(_SFBrowserContentViewController *)self _shouldUpdateCurrentScrollViewInsets])
  {
    return;
  }

  v87 = [(_SFBrowserView *)self->_browserView currentWebView];
  v3 = MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v86 = *(MEMORY[0x1E69DDCE0] + 8);
  if (![(_SFBrowserContentViewController *)self _isPreviewing])
  {
    browserView = self->_browserView;
    if (self->_displayMode == 2)
    {
      v10 = [(_SFBrowserView *)browserView statusBarBackgroundView];
      [v10 bounds];
      Height = CGRectGetHeight(v89);

      v83 = Height;
      goto LABEL_19;
    }

    [(_SFBrowserView *)browserView safeAreaInsets];
    v13 = v12;
    v14 = [(_SFBrowserView *)self->_browserView crashBanner];
    [v14 bounds];
    v15 = CGRectGetHeight(v90);

    v16 = [(_SFBrowserView *)self->_browserView pinnableBanner];
    [v16 bounds];
    CGRectGetHeight(v91);

    v17 = [(_SFBrowserView *)self->_browserView navigationBar];
    [v17 defaultHeight];
    v19 = v18;

    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator topBarHeight];
    v20 = v15 + v19;
    if ([MEMORY[0x1E69C8880] isSolariumEnabled] && -[_SFBrowserView navigationBarBehavior](self->_browserView, "navigationBarBehavior") != 1)
    {
      v20 = v13 + v20;
    }

    if (self->_showingReader)
    {
      v21 = v13;
    }

    else
    {
      v21 = v20;
    }

    v83 = v21;
    if (self->_showingCrashBanner)
    {
      [(_SFBrowserView *)self->_browserView crashBannerOffset];
      if (!self->_showingPinnableBanner)
      {
        goto LABEL_18;
      }
    }

    else if (!self->_showingPinnableBanner)
    {
LABEL_18:
      [(_SFBrowserContentViewController *)self _maximumHeightObscuredByBottomBar];
      v24 = v23;
      [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator bottomBarOffset];
      v4 = v24 - v25;
      goto LABEL_19;
    }

    [(_SFBrowserView *)self->_browserView pinnableBannerOffset];
    v22 = [v87 scrollView];
    [v22 contentOffset];

    goto LABEL_18;
  }

  v5 = [(_SFBrowserView *)self->_browserView previewHeader];
  [v5 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v7 = v6;

  [(_SFBrowserView *)self->_browserView previewScaleFactor];
  v83 = v7 / v8;
LABEL_19:
  v84 = v4;
  if (self->_showingReader)
  {
    [(_SFBrowserView *)self->_browserView safeAreaInsets];
    v84 = v4 - v26;
  }

  [v87 safeAreaInsets];
  UIEdgeInsetsMax();
  UIEdgeInsetsSubtract();
  v74 = v28;
  v75 = v27;
  v76 = v30;
  v77 = v29;
  [(_SFBrowserContentViewController *)self _effectiveWebViewSafeAreaInsets];
  UIEdgeInsetsMax();
  v79 = v32;
  v81 = v31;
  v78 = v33;
  v35 = v34;
  UIEdgeInsetsMax();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [v87 scrollView];
  [v44 _sf_setContentInsetAdjustments:{v81, v35, v79, v78}];

  [v87 _setObscuredInsets:{v37, v39, v41, v43}];
  if (([MEMORY[0x1E69DCEF8] _sf_baseVerticalScrollIndicatorInsetsExtendFullHeight:{self->_verticalScrollIndicatorBaseInsets.top, self->_verticalScrollIndicatorBaseInsets.left, self->_verticalScrollIndicatorBaseInsets.bottom, self->_verticalScrollIndicatorBaseInsets.right}] & 1) != 0 && objc_msgSend(MEMORY[0x1E69DCEF8], "_sf_baseHorizontalScrollIndicatorInsetsExtendFullWidth:", self->_horizontalScrollIndicatorBaseInsets.top, self->_horizontalScrollIndicatorBaseInsets.left, self->_horizontalScrollIndicatorBaseInsets.bottom, self->_horizontalScrollIndicatorBaseInsets.right))
  {
    UIEdgeInsetsMax();
    v80 = v45;
    v82 = v46;
    left = v47;
    v49 = v48;
    UIEdgeInsetsMax();
    top = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
  }

  else
  {
    left = self->_verticalScrollIndicatorBaseInsets.left;
    top = self->_horizontalScrollIndicatorBaseInsets.top;
    v58 = self->_horizontalScrollIndicatorBaseInsets.left;
    right = self->_horizontalScrollIndicatorBaseInsets.right;
    if (self->_verticalScrollIndicatorBaseInsets.top <= v83)
    {
      v60 = v83;
    }

    else
    {
      v60 = self->_verticalScrollIndicatorBaseInsets.top;
    }

    v80 = v60;
    v82 = self->_verticalScrollIndicatorBaseInsets.right;
    if (self->_verticalScrollIndicatorBaseInsets.bottom <= v84)
    {
      bottom = v84;
    }

    else
    {
      bottom = self->_verticalScrollIndicatorBaseInsets.bottom;
    }

    v49 = bottom;
    if (v84 <= self->_horizontalScrollIndicatorBaseInsets.bottom)
    {
      v62 = self->_horizontalScrollIndicatorBaseInsets.bottom;
    }

    else
    {
      v62 = v84;
    }

    v55 = v62;
    v63 = [(_SFBrowserContentViewController *)self view];
    [v63 safeAreaInsets];
    v65 = v64;

    if (v55 >= v65)
    {
      v66 = 0.0;
    }

    else
    {
      v66 = v58;
    }

    if (v55 >= v65)
    {
      v57 = 0.0;
    }

    else
    {
      v57 = right;
    }

    if (v86 <= v66)
    {
      v67 = v66;
    }

    else
    {
      v67 = v86;
    }

    v53 = v67;
  }

  v68 = [v87 scrollView];
  [v68 setVerticalScrollIndicatorInsets:{v80, left, v49, v82}];
  [v68 setHorizontalScrollIndicatorInsets:{top, v53, v55, v57}];
  v69 = [(_SFBrowserContentViewController *)self _safeAreaShouldAffectWebViewObscuredInsets];
  v70 = *v3;
  v71 = v3[1];
  if (!v69)
  {
    v70 = v75;
    v71 = v74;
  }

  v72 = v3[2];
  v73 = v3[3];
  if (!v69)
  {
    v72 = v77;
    v73 = v76;
  }

  [v87 _setUnobscuredSafeAreaInsets:{v70, v71, v72, v73, v76}];
}

- (void)_updateScrollIndicatorVerticalInsets:(UIEdgeInsets)a3 horizontalInsets:(UIEdgeInsets)a4
{
  self->_verticalScrollIndicatorBaseInsets = a3;
  self->_horizontalScrollIndicatorBaseInsets = a4;
  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
}

- (void)webViewControllerDidChangeSafeAreaInsets:(id)a3
{
  [(_SFBrowserContentViewController *)self _updateWebViewLayoutSize];

  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
}

- (void)webViewControllerDidChangeSafeAreaShouldAffectObscuredInsets:(id)a3
{
  [(_SFBrowserContentViewController *)self _updateWebViewLayoutSize];

  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
}

- (BOOL)_canScrollToTopInView:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  [v4 contentInset];
  v8 = v6 > -v7 || [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator state]== 0;

  return v8;
}

- (void)_scrollToTopFromScrollToTopView
{
  v3 = [(_SFBrowserContentViewController *)self _currentWebView];
  v8 = [v3 scrollView];

  if ([(_SFBrowserContentViewController *)self _canScrollToTopInView:v8])
  {
    [v8 contentOffset];
    v5 = v4;
    [v8 contentInset];
    v7 = v6;
    if ([(_SFBrowserContentViewController *)self scrollViewShouldScrollToTop:v8])
    {
      [v8 setContentOffset:1 animated:{v5, -v7}];
    }
  }
}

- (BOOL)_usesScrollToTopView
{
  v3 = [(_SFBrowserContentViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 statusBarManager];
  if ([v6 isStatusBarHidden])
  {
    v7 = [(_SFBrowserContentViewController *)self _currentWebView];
    v8 = [v7 scrollView];
    v9 = [(_SFBrowserContentViewController *)self _canScrollToTopInView:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateScrollToTopView
{
  v3 = [(_SFBrowserView *)self->_browserView shouldUseScrollToTopView];
  [(_SFBrowserView *)self->_browserView setShouldUseScrollToTopView:[(_SFBrowserContentViewController *)self _usesScrollToTopView]];
  v4 = [(_SFBrowserView *)self->_browserView scrollToTopView];

  if (v4 && !v3)
  {
    v6 = [(_SFBrowserView *)self->_browserView scrollToTopView];
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__scrollToTopFromScrollToTopView];
    [v6 addGestureRecognizer:v5];
  }
}

- (void)viewWillLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v11 viewWillLayoutSubviews];
  v3 = [(_SFBrowserContentViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 rootViewController];

  v6 = [(_SFBrowserContentViewController *)self view];
  [v6 bounds];
  CGRectGetWidth(v12);
  v7 = _SFSizeClassForWidth();
  v8 = [v5 traitOverrides];
  [v8 setHorizontalSizeClass:v7];

  if ([(_SFBrowserContentViewController *)self _isPreviewing])
  {
    [(_SFBrowserContentViewController *)self preferredContentSize];
    v10 = Width;
    if (Width == 0.0)
    {
      v6 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v6 bounds];
      Width = CGRectGetWidth(v13);
    }

    [(_SFBrowserView *)self->_browserView setUnscaledWebViewWidth:Width];
    if (v10 == 0.0)
    {
    }
  }

  else
  {
    [(_SFBrowserView *)self->_browserView setUnscaledWebViewWidth:0.0];
  }
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v9 viewDidLayoutSubviews];
  v3 = [(_SFBrowserContentViewController *)self view];
  [v3 frame];
  if (v5 == self->_lastSizeUsedForBrowserViewLayout.width && v4 == self->_lastSizeUsedForBrowserViewLayout.height)
  {
  }

  else
  {
    sizeTransitionCount = self->_sizeTransitionCount;

    if (!sizeTransitionCount)
    {
      [(_SFBrowserContentViewController *)self _layOutBrowserViewForSizeTransition];
      [(_SFBrowserContentViewController *)self _didCompleteViewSizeTransition];
    }
  }

  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
  v8 = (self->_interfaceFillsScreen || self->_showingReader) && self->_quickLookDocumentController == 0;
  self->_autoHidingHomeIndicatorPermitted = v8;
  [(_SFBrowserContentViewController *)self _updateHomeIndicatorAutoHideState];
  [(_SFBrowserContentViewController *)self _updateWebViewLayoutSize];
}

- (void)_updateStatusBarStyleForced:(BOOL)a3
{
  if (self->_customPreferredStatusBarStyle)
  {
    v3 = 0;
  }

  else
  {
    v3 = !a3;
  }

  if (!v3)
  {
    self->_customPreferredStatusBarStyle = 0;
    [(_SFBrowserContentViewController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [(_SFBrowserContentViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(v5, v7);

  if (v8)
  {
    v9 = [(_SFBrowserView *)self->_browserView pinnableBanner];
    [v9 contentSizeCategoryDidChange];
  }
}

- (void)_setUpToolbar
{
  v3 = [(_SFBrowserView *)self->_browserView navigationBar];

  if (v3)
  {
    usesNarrowLayout = self->_usesNarrowLayout;
    displayMode = self->_displayMode;
    bottomToolbar = self->_bottomToolbar;
    v7 = displayMode != 3;
    if (displayMode == 3 || !usesNarrowLayout)
    {
      if (bottomToolbar)
      {
        self->_bottomToolbar = 0;
      }
    }

    else if (!bottomToolbar)
    {
      v8 = [MEMORY[0x1E69C8880] isSolariumEnabled];
      v9 = [[_SFToolbar alloc] initWithPlacement:1];
      v10 = self->_bottomToolbar;
      self->_bottomToolbar = v9;

      v11 = _SFBackdropGroupNameForOwner();
      [(_SFToolbar *)self->_bottomToolbar setBackdropGroupName:v11];
      if (v8)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      [(_SFBarManager *)self->_barManager registerToolbar:self->_bottomToolbar withLayout:v12 persona:[(_SFBrowserContentViewController *)self _persona]];
    }

    [(_SFBrowserView *)self->_browserView setToolbar:self->_bottomToolbar];
    navigationBar = self->_navigationBar;

    [(_SFNavigationBar *)navigationBar setHasToolbar:v7 && !usesNarrowLayout];
  }
}

- (void)setPreferredBarTintColor:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_preferredBarTintColor] & 1) == 0)
  {
    objc_storeStrong(&self->_preferredBarTintColor, a3);
    v5 = [(_SFBrowserContentViewController *)self viewIfLoaded];
    [v5 setNeedsLayout];
  }
}

- (void)setPreferredControlTintColor:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_preferredControlTintColor] & 1) == 0)
  {
    objc_storeStrong(&self->_preferredControlTintColor, a3);
    v5 = [(_SFBrowserContentViewController *)self viewIfLoaded];
    [v5 setNeedsLayout];
  }
}

- (void)setHostAppModalPresentationStyle:(int64_t)a3
{
  v3 = a3;
  self->_hostAppModalPresentationStyle = a3;
  if (![(_SFBrowserContentViewController *)self _effectiveBarCollapsingEnabled])
  {
    [(_SFBrowserContentViewController *)self _showBars];
  }

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    if (v3 == 3)
    {
      v7 = [(_SFBrowserContentViewController *)self presentationController];
      v3 = [v7 presentationStyle];
    }

    [(_SFNavigationBar *)self->_navigationBar updateMetricsWithModalPresentationStyle:v3];
    IsPad = _SFDeviceIsPad();
    if (v3 == 2)
    {
      v6 = IsPad;
    }

    else
    {
      v6 = 0;
    }

    [(_SFBrowserView *)self->_browserView setUseNarrowBottomToolbarInsets:v6];
    v8 = [(_SFBrowserContentViewController *)self viewIfLoaded];
    [v8 setNeedsLayout];
  }
}

- (BOOL)_effectiveBarCollapsingEnabled
{
  v3 = [(SFSafariViewControllerConfiguration *)self->_configuration barCollapsingEnabled];
  if (v3)
  {
    LOBYTE(v3) = ![(_SFBrowserContentViewController *)self _isPresentedAsSheet];
  }

  return v3;
}

- (void)_updateBarTheme
{
  v19 = [(_SFBrowserContentViewController *)self traitCollection];
  if ([v19 userInterfaceStyle] == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v20 = [MEMORY[0x1E69B1C20] themeWithBarTintStyle:v3 preferredBarTintColor:self->_preferredBarTintColor controlsTintColor:self->_preferredControlTintColor];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && (-[_SFBrowserView crashBanner](self->_browserView, "crashBanner"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(_SFBrowserContentViewController *)self _currentWebView];
    v6 = [v5 _sampledTopFixedPositionContentColor];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v5 underPageBackgroundColor];
    }

    v9 = v8;

    if ([v9 sf_isDarkColorForAdaptiveGlass])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = MEMORY[0x1E69B1C20];
    v12 = [(_SFBrowserContentViewController *)self traitCollection];
    v13 = [v11 shouldDisableBackgroundColorInBar:v9 traitCollection:v12];

    if (v13)
    {
      v14 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v15 = [(_SFBrowserContentViewController *)self traitCollection];
      v16 = [v14 resolvedColorWithTraitCollection:v15];

      v9 = v16;
      v10 = v3;
    }

    else
    {
      v16 = 0;
    }

    [v5 _setShouldSuppressTopColorExtensionView:v13];
    v17 = [v5 scrollView];
    [v17 _setPocketColor:v16 forEdge:1];

    v18 = [MEMORY[0x1E69B1C20] themeWithBarTintStyle:v10 preferredBarTintColor:v9 controlsTintColor:self->_preferredControlTintColor];
    [(_SFNavigationBar *)self->_navigationBar setTheme:v18];
    [(_SFBrowserContentViewController *)self _updateBannerTheme:v18];
  }

  else
  {
    [(_SFNavigationBar *)self->_navigationBar setTheme:v20];
    [(_SFBrowserContentViewController *)self _updateBannerTheme:v20];
  }

  [(_SFToolbar *)self->_bottomToolbar setTheme:v20];
}

- (void)_updateBannerTheme:(id)a3
{
  v6 = [MEMORY[0x1E69B1AC0] themeWithTheme:a3];
  v4 = [(_SFBrowserView *)self->_browserView pinnableBanner];
  [v4 setTheme:v6];

  v5 = [(_SFBrowserView *)self->_browserView crashBanner];
  [v5 setTheme:v6];
}

- (void)setConfiguration:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_configuration, a3);
  [(_SFBrowserContentViewController *)self _updateModalInPresentation];
  customButtonUIActivity = self->_customButtonUIActivity;
  self->_customButtonUIActivity = 0;

  self->_customActivityButtonIsValid = 0;
  v7 = [(SFSafariViewControllerConfiguration *)self->_configuration activityButton];
  v8 = v7;
  if (v7)
  {
    if ([v7 _fieldsAreValid])
    {
      v9 = [v8 extensionIdentifier];
      v18 = 0;
      v10 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v9 error:&v18];
      v11 = v18;
      if (v11 || !v10)
      {
        v12 = WBS_LOG_CHANNEL_PREFIXExtensions();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v16 = [v11 safari_privacyPreservingDescription];
          [(_SFBrowserContentViewController *)v9 setConfiguration:v16, buf, v12];
        }
      }

      else
      {
        v12 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
        v13 = [(UIApplicationExtensionActivity *)[_SFApplicationExtensionActivity alloc] initWithApplicationExtension:v10];
        v14 = [(_SFApplicationExtensionActivity *)v13 validateExtensionHasSameContainerAsHostApp:v12];
        self->_customActivityButtonIsValid = v14;
        if (v14)
        {
          objc_storeStrong(&self->_customButtonUIActivity, v13);
        }

        else
        {
          v17 = WBS_LOG_CHANNEL_PREFIXExtensions();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(_SFBrowserContentViewController *)v9 setConfiguration:v12, v17];
          }
        }
      }
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_SFBrowserContentViewController setConfiguration:];
      }
    }
  }

  [(_SFBrowserContentViewController *)self _updateUI];
}

- (void)_updateUsesNarrowLayout
{
  v3 = [(_SFBrowserContentViewController *)self view];
  [v3 bounds];
  IsNarrow = SFWidthIsNarrow();

  if (self->_usesNarrowLayout != IsNarrow)
  {
    self->_usesNarrowLayout = IsNarrow;
    [(_SFNavigationBar *)self->_navigationBar setUsesNarrowLayout:IsNarrow];

    [(_SFBrowserContentViewController *)self _setUpToolbar];
  }
}

- (void)_updateInterfaceFillsScreen
{
  v3 = [(_SFBrowserContentViewController *)self traitCollection];
  self->_interfaceFillsScreen = [v3 verticalSizeClass] == 1;

  interfaceFillsScreen = self->_interfaceFillsScreen;
  browserView = self->_browserView;

  [(_SFBrowserView *)browserView setNavigationBarBehavior:interfaceFillsScreen];
}

- (void)_updateUsesLockdownStatusBar
{
  v3 = [MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B1B28]);
  }

  else
  {
    v4 = 0;
  }

  [(_SFNavigationBar *)self->_navigationBar setLockdownStatusBar:v4];
  if (v3)
  {
  }

  navigationBarItem = self->_navigationBarItem;
  v6 = [(_SFNavigationBar *)self->_navigationBar lockdownStatusBar];
  [v6 setNavigationBarItem:navigationBarItem];

  [(_SFBrowserContentViewController *)self _updateDynamicBarGeometry];
}

- (id)_currentWebView
{
  if (self->_showingReader)
  {
    [(_SFReaderViewController *)self->_readerViewController readerWebView];
  }

  else
  {
    [(_SFBrowserContentViewController *)self webView];
  }
  v2 = ;

  return v2;
}

- (double)_maximumHeightObscuredByBottomBar
{
  result = 0.0;
  if (self->_usesNarrowLayout)
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      browserView = self->_browserView;

      [(_SFBrowserView *)browserView maximumHeightObscuredByBottomBar];
    }

    else
    {
      [(_SFToolbar *)self->_bottomToolbar sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      v6 = v5;
      [(_SFBrowserContentViewController *)self _sf_bottomUnsafeAreaFrameForToolbar];
      return v6 + CGRectGetHeight(v8);
    }
  }

  return result;
}

- (void)_updateDynamicBarGeometry
{
  dynamicBarAnimator = self->_dynamicBarAnimator;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60___SFBrowserContentViewController__updateDynamicBarGeometry__block_invoke;
  v3[3] = &unk_1E8490658;
  v3[4] = self;
  [(_SFDynamicBarAnimator *)dynamicBarAnimator performBatchUpdates:v3];
}

- (double)_offsetForDynamicBarAnimator
{
  if ([(UIPanGestureRecognizer *)self->_hideNavigationBarGestureRecognizer state]== 2)
  {
    [(UIPanGestureRecognizer *)self->_hideNavigationBarGestureRecognizer translationInView:self->_navigationBar];
    return -v3;
  }

  else
  {
    v5 = [(_SFBrowserContentViewController *)self _currentWebView];
    v6 = [v5 scrollView];
    [v6 contentOffset];
    v4 = v7;
  }

  return v4;
}

- (double)dynamicBarAnimator:(id)a3 minimumTopBarHeightForOffset:(double)a4
{
  if (self->_keepBarsMinimized || self->_alwaysShowTopBar)
  {
    return 2.22507386e-308;
  }

  v7 = [(_SFBrowserView *)self->_browserView navigationBar];
  [v7 defaultHeight];
  v9 = v8;

  v10 = [(_SFBrowserContentViewController *)self _currentWebView];
  v11 = [v10 scrollView];
  [v11 contentInset];
  v5 = v9 - v12 - a4;

  return v5;
}

- (void)_setWebViewController:(id)a3
{
  v8 = a3;
  [(_SFBrowserView *)self->_browserView addWebViewController:?];
  v4 = [v8 webView];
  v5 = [v4 scrollView];
  [v5 setDelegate:self];

  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
  [v4 _setFindInteractionEnabled:{-[_SFBrowserContentViewController _onlyWantsWebAppShortcuts](self, "_onlyWantsWebAppShortcuts") ^ 1}];
  v6 = [(_SFBrowserContentViewController *)self _currentWebView];
  v7 = [v6 scrollView];
  [(_SFBrowserContentViewController *)self _setupPocketWithScrollView:v7];

  [(_SFBrowserContentViewController *)self becomeFirstResponder];
}

- (void)_setupPocketWithScrollView:(id)a3
{
  v8 = a3;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:v8 edge:1];
    [(_SFNavigationBar *)self->_navigationBar setPocketContainerInteraction:v4];

    if (self->_bottomToolbar)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:v8 edge:4];
      [(_SFToolbar *)self->_bottomToolbar setPocketContainerInteraction:v5];
    }

    v6 = [MEMORY[0x1E69DCED8] hardStyle];
    v7 = [v8 topEdgeEffect];
    [v7 setStyle:v6];
  }
}

- (WKWebView)webView
{
  v2 = [(_SFBrowserContentViewController *)self webViewController];
  v3 = [v2 webView];

  return v3;
}

- (void)_showReaderAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(_SFBrowserContentViewController *)self isBlockedByScreenTime])
  {

    [(_SFBrowserContentViewController *)self _setShowingReader:1 deactivationMode:2 animated:v3];
  }
}

- (BOOL)_readerViewControllerNeedsSetUp
{
  v3 = [(_SFBrowserContentViewController *)self webView];
  v4 = [v3 backForwardList];
  v5 = [v4 currentItem];

  if (self->_readerViewController)
  {
    v6 = [v5 isEqual:self->_lastBackFowardListItemOnWhichReaderWasActivated] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)_setUpReaderViewController
{
  if ([(_SFBrowserContentViewController *)self _readerViewControllerNeedsSetUp])
  {
    v3 = [(_SFBrowserContentViewController *)self _makeReaderViewController];
    readerViewController = self->_readerViewController;
    self->_readerViewController = v3;
  }
}

- (id)_makeReaderViewController
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  v4 = [v3 webView];
  v5 = [v4 backForwardList];
  v6 = [v5 currentItem];

  v7 = [[_SFReaderViewController alloc] initWithOriginalWebView:v4];
  [(_SFReaderViewController *)v7 setDelegate:self];
  v8 = [v4 URL];
  [v3 setSupportsAdvancedPrivacyProtections:{-[_SFBrowserContentViewController supportsAdvancedPrivacyProtectionsForURL:](self, "supportsAdvancedPrivacyProtectionsForURL:", v8)}];

  v9 = [(_SFReaderViewController *)v7 view];
  [v3 setUpReaderWithReaderWebView:v9];

  lastBackFowardListItemOnWhichReaderWasActivated = self->_lastBackFowardListItemOnWhichReaderWasActivated;
  self->_lastBackFowardListItemOnWhichReaderWasActivated = v6;

  return v7;
}

- (void)_setShowingReader:(BOOL)a3 deactivationMode:(unint64_t)a4 animated:(BOOL)a5
{
  if (self->_showingReader != a3)
  {
    v5 = a5;
    v7 = a3;
    [(_SFBrowserContentViewController *)self _setShowingReader:?];
    [(_SFBrowserContentViewController *)self _updateUI];
    [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
    v9 = [(_SFBrowserContentViewController *)self pageFormatMenuController];
    v10 = [v9 viewController];
    [v10 dismissViewControllerAnimated:1 completion:0];

    v11 = [(_SFBrowserContentViewController *)self webViewController];
    v12 = [v11 dialogController];
    [v12 owningTabWillClose];

    v13 = [(_SFBrowserView *)self->_browserView contentContainerView];
    v14 = [v13 snapshotViewAfterScreenUpdates:0];

    if (v7)
    {
      [(_SFBrowserContentViewController *)self _setUpReaderViewController];
      [(_SFBrowserContentViewController *)self addChildViewController:self->_readerViewController];
      [(_SFReaderViewController *)self->_readerViewController didMoveToParentViewController:self];
      [(_SFBrowserContentViewController *)self _setWebViewController:self->_readerViewController];
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      [(_SFReaderViewController *)self->_readerViewController willMoveToParentViewController:0];
      [(_SFReaderViewController *)self->_readerViewController removeFromParentViewController];
      [(_SFBrowserContentViewController *)self _setWebViewController:v11];
      self->_lastReaderDeactivationMode = a4;
      if (!v5)
      {
LABEL_10:

        return;
      }
    }

    v15 = [(_SFBrowserView *)self->_browserView window];
    [v15 setUserInteractionEnabled:0];
    v34 = 0;
    v35 = &v34;
    v36 = 0x5012000000;
    v37 = __Block_byref_object_copy__9;
    v38 = __Block_byref_object_dispose__9;
    v39 = &unk_1D48124EB;
    v40 = 0u;
    v41 = 0u;
    [v14 bounds];
    *&v40 = v16;
    *(&v40 + 1) = v17;
    *&v41 = v18;
    *(&v41 + 1) = v19;
    v20 = objc_alloc(MEMORY[0x1E69DD250]);
    v21 = [v20 initWithFrame:{v35[6], v35[7], v35[8], v35[9]}];
    [v21 setClipsToBounds:1];
    [v21 addSubview:v14];
    v22 = [(_SFBrowserView *)self->_browserView contentContainerView];
    if (self->_showingReader)
    {
      [(_SFReaderViewController *)self->_readerViewController view];
    }

    else
    {
      [v11 view];
    }
    v23 = ;
    [v22 insertSubview:v21 aboveSubview:v23];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke;
    aBlock[3] = &unk_1E8494B30;
    v24 = v15;
    v33 = &v34;
    v29 = v24;
    v30 = self;
    v25 = v21;
    v31 = v25;
    v32 = v14;
    v26 = _Block_copy(aBlock);
    v27 = [v11 readerController];
    [v27 setUpReaderWebViewIfNeededAndPerformBlock:v26];

    _Block_object_dispose(&v34, 8);
    goto LABEL_10;
  }
}

- (void)_setShowingReader:(BOOL)a3
{
  if (self->_showingReader != a3)
  {
    v3 = a3;
    self->_showingReader = a3;
    v8 = [(_SFBrowserContentViewController *)self webViewController];
    v5 = [v8 readerController];
    [v5 setReaderIsActive:v3];

    if (v3)
    {
      v6 = [(_SFBrowserContentViewController *)self processPool];
      SafariShared::ReaderAvailabilityController::updateReaderOrTranslationLastActivated(v6, v7);
    }
  }
}

- (id)_requestBySettingAdvancedPrivacyProtectionsFlag:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];
  v6 = [(_SFBrowserContentViewController *)self supportsAdvancedPrivacyProtectionsForURL:v5];

  v7 = [v4 safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:v6];

  return v7;
}

- (void)loadRequest:(id)a3
{
  v4 = a3;
  self->_loadWasUserDriven = 1;
  [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
  v5 = [(_SFBrowserContentViewController *)self _requestBySettingAdvancedPrivacyProtectionsFlag:v4];

  if (self->_originalRequestURL || ([v5 URL], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "safari_isWellKnownChangePasswordURL"), v6, !v7))
  {
    v13 = [(_SFBrowserContentViewController *)self webView];
    v14 = [v13 loadRequest:v5];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69C90F8]);
    v9 = [v5 URL];
    v10 = [v8 initWithURL:v9];
    wellKnownURLResponseCodeReliabilityChecker = self->_wellKnownURLResponseCodeReliabilityChecker;
    self->_wellKnownURLResponseCodeReliabilityChecker = v10;

    objc_initWeak(&location, self);
    v12 = self->_wellKnownURLResponseCodeReliabilityChecker;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47___SFBrowserContentViewController_loadRequest___block_invoke;
    v17[3] = &unk_1E8492390;
    objc_copyWeak(&v19, &location);
    v18 = v5;
    [(WBSWellKnownURLResponseCodeReliabilityChecker *)v12 checkReliabilityWithCompletion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  [(_SFPageLoadErrorController *)self->_pageLoadErrorController clearFailedRequest];
  v15 = [v5 URL];
  originalRequestURL = self->_originalRequestURL;
  self->_originalRequestURL = v15;

  [(_SFBrowserContentViewController *)self becomeFirstResponder];
}

- (void)addTrustedEventAttribution:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXEventAttribution();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Giving valid UIEventAttribution to WebKit", v8, 2u);
  }

  v6 = [(_SFBrowserContentViewController *)self webView];
  v7 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
  [v6 _setEphemeralUIEventAttribution:v4 forApplicationWithBundleID:v7];
}

- (BOOL)isShowingErrorPage
{
  v3 = [(_SFBrowserContentViewController *)self quickLookDocument];

  v4 = [(_SFBrowserContentViewController *)self webView];
  v5 = v4;
  if (!v3)
  {
    v8 = [v4 _unreachableURL];
    if (v8)
    {
      v7 = 1;
      goto LABEL_9;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 _safeBrowsingWarning];
    v7 = v6 != 0;

    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (!v3)
    {
LABEL_6:
      v8 = 0;
LABEL_9:
    }
  }

  return v7;
}

- (BOOL)isSecure
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v2 _negotiatedLegacyTLS] & 1) != 0 || !objc_msgSend(v2, "hasOnlySecureContent"))
  {
    v5 = 0;
  }

  else
  {
    v3 = [v2 URL];
    v4 = [v2 _committedURL];
    v5 = [v3 isEqual:v4];
  }

  return v5;
}

- (id)_EVOrganizationName
{
  if ([(_SFBrowserContentViewController *)self isSecure])
  {
    if (self->_EVOrganizationNameIsValid)
    {
      v3 = self->_EVOrganizationName;
    }

    else
    {
      self->_EVOrganizationNameIsValid = 1;
      v4 = [(_SFBrowserContentViewController *)self webView];
      v5 = [v4 evOrganizationName];
      EVOrganizationName = self->_EVOrganizationName;
      self->_EVOrganizationName = v5;

      v3 = self->_EVOrganizationName;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_invalidateEVOrganizationName
{
  EVOrganizationName = self->_EVOrganizationName;
  self->_EVOrganizationName = 0;

  self->_EVOrganizationNameIsValid = 0;
}

- (void)_updateNavigationBar
{
  if (self->_navigationBarItem)
  {
    v28 = [(_SFBrowserContentViewController *)self webViewController];
    v3 = [v28 webView];
    if ([(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator UIShouldReflectCommittedURLInsteadOfCurrentURL])
    {
      [v3 _committedURL];
    }

    else
    {
      [v3 URL];
    }
    v4 = ;
    if (!v4)
    {
      activeDownload = self->_activeDownload;
      if (activeDownload)
      {
        v4 = [(_SFDownload *)activeDownload sourceURL];
      }

      else
      {
        v4 = 0;
      }
    }

    v6 = [v4 safari_userVisibleStringConsideringLongURLs];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(SFNavigationBarItem *)self->_navigationBarItem customPlaceholderText];
    }

    v9 = v8;

    v30 = 0;
    v10 = [v9 safari_simplifiedUserVisibleURLStringWithSimplifications:133 forDisplayOnly:0 simplifiedStringOffset:&v30];
    v29 = 0;
    v26 = [v9 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:&v29];
    v11 = 1304;
    if (self->_isShowingHTTPAuthenticationDialog)
    {
      v12 = _WBSLocalizedString();

      v10 = v12;
      [(SFNavigationBarItem *)self->_navigationBarItem setText:v12 textWhenExpanded:v12 startIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    else if ([v4 safari_isDataURL])
    {

      v10 = @"data:";
      [(SFNavigationBarItem *)self->_navigationBarItem setText:@"data:" textWhenExpanded:@"data:" startIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    else if ([v4 safari_looksLikeAboutBlankURL])
    {
      v13 = *MEMORY[0x1E69C9730];

      v10 = v13;
      [(SFNavigationBarItem *)self->_navigationBarItem setText:v13 textWhenExpanded:v13 startIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    else if ([v4 safari_looksLikeAboutSrcdocURL])
    {
      v14 = *MEMORY[0x1E69C9108];

      v10 = v14;
      [(SFNavigationBarItem *)self->_navigationBarItem setText:v14 textWhenExpanded:v14 startIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    else
    {
      if (v29 >= v30)
      {
        v15 = v29 - v30;
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [(SFNavigationBarItem *)self->_navigationBarItem setText:v26 textWhenExpanded:v10 startIndex:v15, v26];
    }

    if (v26 && [(_SFBrowserContentViewController *)self isPageEligibileToShowNotSecureWarning])
    {
      -[SFNavigationBarItem setSecurityAnnotation:hasFocusedInputFieldOnCurrentPage:](self->_navigationBarItem, "setSecurityAnnotation:hasFocusedInputFieldOnCurrentPage:", 1, [v28 hasFocusedInputFieldOnCurrentPage]);
      v16 = 0;
    }

    else
    {
      -[SFNavigationBarItem setSecurityAnnotation:hasFocusedInputFieldOnCurrentPage:](self->_navigationBarItem, "setSecurityAnnotation:hasFocusedInputFieldOnCurrentPage:", 0, [v28 hasFocusedInputFieldOnCurrentPage]);
      v16 = 1;
    }

    if (self->_wasLoadedWithLockdownModeEnabled)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    [(SFNavigationBarItem *)self->_navigationBarItem setLockdownModeAnnotation:v17, v26];
    navigationBarItem = self->_navigationBarItem;
    isShowingHTTPAuthenticationDialog = self->_isShowingHTTPAuthenticationDialog;
    if (isShowingHTTPAuthenticationDialog)
    {
      v20 = 0;
    }

    else
    {
      v11 = [v28 readerController];
      v20 = [v11 isReaderAvailable];
    }

    [navigationBarItem setShowsReaderButton:v20 showsAvailabilityText:0];
    if (!isShowingHTTPAuthenticationDialog)
    {
    }

    [(SFNavigationBarItem *)self->_navigationBarItem setShowsTranslationButton:[(WBSTranslationContext *)self->_translationContext detectionNotificationLevel]== 1 showsAvailabilityText:0];
    [(SFNavigationBarItem *)self->_navigationBarItem setReaderButtonSelected:self->_showingReader];
    v21 = [v3 URL];
    [(SFNavigationBarItem *)self->_navigationBarItem setShowsStopReloadButtons:v21 != 0];

    [(SFNavigationBarItem *)self->_navigationBarItem setStopReloadButtonShowsStop:[(_SFBrowserContentViewController *)self _stopReloadButtonShowsStop]];
    v22 = objc_opt_respondsToSelector();
    if (v22)
    {
      navigationBarItem = [v3 _safeBrowsingWarning];
      v23 = navigationBarItem != 0;
    }

    else
    {
      v23 = 0;
    }

    [(SFNavigationBarItem *)self->_navigationBarItem setOverrideBarStyleForSecurityWarning:v23];
    if (v22)
    {
    }

    [(SFNavigationBarItem *)self->_navigationBarItem setShowsPageFormatButton:[(_SFBrowserContentViewController *)self _canShowPageFormatMenu]];
    nanoDomainContainerView = self->_nanoDomainContainerView;
    v25 = [(SFNavigationBarItem *)self->_navigationBarItem text];
    [(SFNanoDomainContainerView *)nanoDomainContainerView updateWithDomain:v25 isSecure:v16 showsNotSecureAnnotation:[(SFNavigationBarItem *)self->_navigationBarItem hasFocusedSensitiveFieldOnCurrentPage]];

    [(_SFBrowserContentViewController *)self didUpdateNavigationBarItem:self->_navigationBarItem];
  }
}

- (BOOL)_stopReloadButtonShowsStop
{
  v2 = [(_SFBrowserContentViewController *)self webViewController];
  v3 = [v2 isLoading];

  return v3;
}

- (BOOL)_canShowPageFormatMenu
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v2 URL];
  if (![v3 safari_isHTTPFamilyURL] || (objc_msgSend(v2, "_isDisplayingPDF") & 1) != 0 || (objc_msgSend(v2, "_isDisplayingStandaloneImageDocument") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v2 _isDisplayingStandaloneMediaDocument] ^ 1;
  }

  return v4;
}

- (void)_updatePreviewLoadingUI
{
  v3 = [(_SFBrowserView *)self->_browserView previewHeader];

  if (v3)
  {
    v4 = [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator UIShouldReflectCommittedURLInsteadOfCurrentURL];
    v5 = [(_SFBrowserContentViewController *)self webView];
    v10 = v5;
    if (v4)
    {
      [v5 _committedURL];
    }

    else
    {
      [v5 URL];
    }
    v6 = ;

    activeDownload = v6;
    if (!v6)
    {
      activeDownload = self->_activeDownload;
      if (activeDownload)
      {
        activeDownload = [activeDownload sourceURL];
      }
    }

    browserView = self->_browserView;
    v11 = activeDownload;
    v9 = [activeDownload safari_userVisibleString];
    [(_SFBrowserView *)browserView updatePreviewHeaderWithURLString:v9];
  }
}

- (void)_updateBarItemsWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(_SFBrowserContentViewController *)self webView];
  barManager = self->_barManager;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___SFBrowserContentViewController__updateBarItemsWithAnimation___block_invoke;
  v8[3] = &unk_1E848F9B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(_SFBarManager *)barManager performCoalescedUpdatesAnimated:v3 updates:v8];
}

- (void)_updateUI
{
  v3 = [MEMORY[0x1E69C8880] isSolariumEnabled];

  [(_SFBrowserContentViewController *)self _updateUIWithAnimation:v3];
}

- (void)_updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  [(_SFBrowserContentViewController *)self _updateNavigationBar];
  [(_SFBrowserContentViewController *)self _updateBarItemsWithAnimation:v3];
  [(_SFBrowserContentViewController *)self _updatePreviewLoadingUI];
  [(_SFBrowserContentViewController *)self _updateStatusBarStyleForced:0];
  v5 = [(_SFBrowserContentViewController *)self webView];
  -[_SFBrowserContentViewController setRemoteSwipeGestureEnabled:](self, "setRemoteSwipeGestureEnabled:", [v5 canGoBack] ^ 1);

  [(_SFBrowserContentViewController *)self _updateBarTheme];
}

- (void)setRemoteSwipeGestureEnabled:(BOOL)a3
{
  if (self->_remoteSwipeGestureEnabled != a3)
  {
    self->_remoteSwipeGestureEnabled = a3;
    [(_SFBrowserContentViewController *)self _updateRemoteSwipeGestureState];
  }
}

- (double)_crashBannerDraggingOffsetForContentOffset:(CGPoint)a3
{
  y = a3.y;
  v5 = [(_SFBrowserView *)self->_browserView navigationBarBehavior];
  [(_SFNavigationBar *)self->_navigationBar maximumHeight];
  v7 = v6;
  v8 = 0.0;
  if (!v5)
  {
    [(_SFNavigationBar *)self->_navigationBar minimumHeight];
    v8 = v9;
  }

  v10 = [(_SFBrowserView *)self->_browserView currentWebView];
  v11 = [v10 scrollView];
  [v11 adjustedContentInset];
  v13 = v12;
  v14 = [(_SFBrowserView *)self->_browserView pinnableBanner];
  [v14 frame];
  v15 = v7 - v8 - v13 + CGRectGetHeight(v17);

  if (v15 <= y)
  {
    return y;
  }

  else
  {
    return v15;
  }
}

- (void)_updateCrashBannerOffset
{
  v3 = [(_SFBrowserView *)self->_browserView crashBanner];
  v11 = v3;
  if (self->_showingCrashBanner)
  {
    [(_SFBrowserView *)self->_browserView setCrashBannerOffset:0.0];
    if (self->_scrollViewIsDragging)
    {
      [(_SFBrowserView *)self->_browserView crashBannerOffset];
      v5 = v4;
      crashBannerDraggingOffset = self->_crashBannerDraggingOffset;
      v7 = [(_SFBrowserContentViewController *)self _currentWebView];
      v8 = [v7 scrollView];
      [v8 contentOffset];
      if (v5 >= crashBannerDraggingOffset - v9)
      {
        v10 = crashBannerDraggingOffset - v9;
      }

      else
      {
        v10 = v5;
      }

      [(_SFBrowserView *)self->_browserView setCrashBannerOffset:v10];
    }
  }

  else
  {
    [v3 bounds];
    [(_SFBrowserView *)self->_browserView setCrashBannerOffset:-CGRectGetHeight(v13)];
  }
}

- (void)_updatePinnableBannerOffset
{
  v3 = [(_SFBrowserView *)self->_browserView pinnableBanner];
  if (v3 && self->_showingPinnableBanner)
  {
    v15 = v3;
    [v3 frame];
    Height = CGRectGetHeight(v17);
    v5 = 0.0;
    if (self->_showingCrashBanner)
    {
      v6 = [(_SFBrowserView *)self->_browserView crashBanner];
      [v6 frame];
      v7 = CGRectGetHeight(v18);
      [(_SFBrowserView *)self->_browserView crashBannerOffset];
      v5 = v7 + v8 + 0.0;
    }

    if (self->_showingPinnableBanner)
    {
      v9 = Height + v5;
    }

    else
    {
      v9 = v5;
    }

    [(_SFNavigationBar *)self->_navigationBar bounds];
    MaxY = CGRectGetMaxY(v19);
    v11 = [(_SFBrowserContentViewController *)self _currentWebView];
    v12 = [v11 scrollView];
    [v12 convertPoint:self->_navigationBar fromView:{0.0, v9 + MaxY}];

    v13 = [(_SFBrowserContentViewController *)self _currentWebView];
    v14 = [v13 scrollView];
    [v14 contentOffset];
    [(_SFBrowserView *)self->_browserView setPinnableBannerOffset:?];

    v3 = v15;
  }
}

- (void)_updatePinnableBannerFrame
{
  v3 = [(_SFBrowserView *)self->_browserView pinnableBanner];
  if (v3 && self->_showingPinnableBanner)
  {
    v19 = v3;
    v4 = [(_SFBrowserView *)self->_browserView currentWebView];
    v5 = [(_SFBrowserContentViewController *)self view];
    [v5 layoutMargins];
    [v19 setLayoutMargins:?];

    v6 = [v4 scrollView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v19 sizeThatFits:{v10, v12}];
    [v19 setFrame:{v8, 0.0, v13, v14}];
    [(_SFBrowserView *)self->_browserView layoutIfNeeded];
    [(_SFBrowserContentViewController *)self _updatePinnableBannerOffset];
    [(_SFBrowserContentViewController *)self _updateBarTheme];
    [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
    v15 = [v4 scrollView];
    [v15 contentOffset];
    v17 = v16;
    [v15 adjustedContentInset];
    [v15 setContentOffset:{v17, -v18}];

    v3 = v19;
  }
}

- (BOOL)_updateAppInfoOverlayForBanner:(id)a3
{
  v4 = a3;
  v5 = [v4 overlayProvider];
  v6 = [(_SFBrowserView *)self->_browserView currentWebView];
  v7 = [v6 scrollView];

  if (!v4)
  {
    [v5 hideOverlayAnimated:0];
    goto LABEL_5;
  }

  if (![v5 isAvailable])
  {
LABEL_5:
    [(_SFBrowserView *)self->_browserView setAppInfoOverlay:0];
    [v5 setDelegate:0];
    v11 = 0;
    goto LABEL_6;
  }

  [v5 setDelegate:self];
  v8 = [(_SFBrowserContentViewController *)self webViewController];
  [v5 showOverlayInScrollView:v7 viewController:v8];

  [(_SFBrowserView *)self->_browserView setPinnableBanner:v4];
  v9 = [v5 overlayViewController];
  v10 = [v9 view];
  [(_SFBrowserView *)self->_browserView setAppInfoOverlay:v10];

  v11 = 1;
LABEL_6:

  return v11;
}

- (void)_setShowingPinnableBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(_SFBrowserContentViewController *)self _updateAppInfoOverlayForBanner:v6])
  {
    v7 = v6 != 0;
    if (self->_showingPinnableBanner != v7)
    {
      self->_showingPinnableBanner = v7;
      if (v6)
      {
        [(_SFBrowserView *)self->_browserView setPinnableBanner:v6];
        [(_SFBrowserContentViewController *)self _updatePinnableBannerFrame];
        v8 = [(_SFBrowserView *)self->_browserView currentWebView];
        v9 = [v8 scrollView];

        [v6 frame];
        MaxY = CGRectGetMaxY(v18);
        navigationBar = self->_navigationBar;
        [(_SFNavigationBar *)navigationBar bounds];
        [(_SFNavigationBar *)navigationBar convertPoint:v9 toView:0.0, CGRectGetMaxY(v19)];
        if (MaxY >= v12 && ([v6 isInitiallyBehindNavigationBar] & 1) == 0)
        {
          [v9 contentOffset];
          v14 = v13;
          [v9 adjustedContentInset];
          [v9 setContentOffset:{v14, -v15}];
        }
      }

      else
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __70___SFBrowserContentViewController__setShowingPinnableBanner_animated___block_invoke;
        v17[3] = &unk_1E8490658;
        v17[4] = self;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __70___SFBrowserContentViewController__setShowingPinnableBanner_animated___block_invoke_2;
        v16[3] = &unk_1E8494B08;
        v16[4] = self;
        [MEMORY[0x1E69DD250] sf_animate:v4 usingDefaultTimingWithOptions:2 animations:v17 completion:v16];
      }
    }
  }
}

- (void)_setShowingCrashBanner:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_SFBrowserView *)self->_browserView crashBanner];
  v10 = v7;
  v8 = self->_showingCrashBanner != v5 || v7 == 0;
  if (v8 || [v7 messageType])
  {
    if (v5)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69B1AF8]);
    }

    else
    {
      v9 = 0;
    }

    [(_SFBrowserContentViewController *)self _showCrashBanner:v9 animated:v4];
  }
}

- (void)_showCrashBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_SFBrowserView *)self->_browserView crashBanner];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 messageType];
    if (v9 == [v8 messageType])
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v6 && !v7)
  {
    v10 = _SFBackdropGroupNameForOwner();
    [v6 setBackdropGroupName:v10];

    v11 = [v6 closeButton];
    [v11 addTarget:self action:sel__hideCrashBanner forControlEvents:64];

    [(_SFBrowserView *)self->_browserView setCrashBanner:v6];
    [(_SFBrowserView *)self->_browserView bounds];
    v13 = v12;
    v15 = v14;
    [v6 sizeThatFits:{v16, v17}];
    [v6 setFrame:{v13, v15, v18, v19}];
    [(_SFBrowserContentViewController *)self _updateCrashBannerOffset];
    [(_SFBrowserView *)self->_browserView layoutIfNeeded];
    [(_SFBrowserContentViewController *)self _updateBarTheme];
LABEL_8:
    self->_showingCrashBanner = v6 != 0;
LABEL_10:
    v20 = [(_SFBrowserView *)self->_browserView navigationBar];
    [v20 setSuppressesBlur:0];

    goto LABEL_11;
  }

  self->_showingCrashBanner = v6 != 0;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_11:
  v21 = MEMORY[0x1E69DD250];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61___SFBrowserContentViewController__showCrashBanner_animated___block_invoke;
  v23[3] = &unk_1E848F9B0;
  v23[4] = self;
  v24 = v6;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61___SFBrowserContentViewController__showCrashBanner_animated___block_invoke_2;
  v22[3] = &unk_1E8494B08;
  v22[4] = self;
  [v21 sf_animate:v4 usingDefaultTimingWithOptions:2 animations:v23 completion:v22];

LABEL_12:
}

- (void)_initialLoadFinishedWithSuccess:(BOOL)a3
{
  v3 = a3;
  originalRequestURL = self->_originalRequestURL;
  self->_originalRequestURL = 0;

  if (!self->_didNotifyInitialLoadFinish)
  {
    if ([(_SFBrowserContentViewController *)self _notifyInitialLoadDidFinish:v3])
    {
      self->_didNotifyInitialLoadFinish = 1;
    }
  }
}

- (id)_applicationPayloadForOpeningInSafari
{
  v3 = [(_SFBrowserContentViewController *)self webView];
  v4 = [v3 _sessionState];
  v5 = [v4 data];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_showingReader];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B1E28]];

  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69B1E30]];
  v8 = [v6 copy];

  return v8;
}

- (void)_openCurrentURLInSafari
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [(_SFBrowserContentViewController *)self _applicationPayloadForOpeningInSafari];
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [(_SFBrowserContentViewController *)self webView];
  v6 = [v5 URL];
  v7 = *MEMORY[0x1E6963560];
  v9[0] = *MEMORY[0x1E6963588];
  v9[1] = v7;
  v10[0] = v3;
  v10[1] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 _sf_openURL:v6 withOptions:v8 completionHandler:0];
}

- (void)_updatePageZoomWithPreference
{
  objc_initWeak(&location, self);
  v3 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor pageZoomPreferenceManager];
  v4 = [(_SFBrowserContentViewController *)self webView];
  v5 = [v4 URL];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___SFBrowserContentViewController__updatePageZoomWithPreference__block_invoke;
  v6[3] = &unk_1E8494BA8;
  objc_copyWeak(&v7, &location);
  [v3 getPageZoomFactorForURL:v5 usingBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_increasePageZoomSetting
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  v4 = v3;
  if (self->_showingReader)
  {
    v5 = [v3 readerController];
    v6 = [v5 canIncreaseReaderTextSize];

    if (v6)
    {
      v7 = [v4 readerController];
      [v7 increaseReaderTextSize];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor pageZoomPreferenceManager];
    v9 = [v4 webView];
    v10 = [v9 URL];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___SFBrowserContentViewController__increasePageZoomSetting__block_invoke;
    v11[3] = &unk_1E8494BD0;
    objc_copyWeak(&v12, &location);
    [v8 zoomInOnURL:v10 completionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_decreasePageZoomSetting
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  v4 = v3;
  if (self->_showingReader)
  {
    v5 = [v3 readerController];
    v6 = [v5 canDecreaseReaderTextSize];

    if (v6)
    {
      v7 = [v4 readerController];
      [v7 decreaseReaderTextSize];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor pageZoomPreferenceManager];
    v9 = [v4 webView];
    v10 = [v9 URL];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___SFBrowserContentViewController__decreasePageZoomSetting__block_invoke;
    v11[3] = &unk_1E8494BD0;
    objc_copyWeak(&v12, &location);
    [v8 zoomOutOnURL:v10 completionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_resetPageZoomSetting
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  v4 = v3;
  if (self->_showingReader)
  {
    v5 = [v3 readerController];
    [v5 resetReaderTextSize];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor pageZoomPreferenceManager];
    v7 = [v4 webView];
    v8 = [v7 URL];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56___SFBrowserContentViewController__resetPageZoomSetting__block_invoke;
    v9[3] = &unk_1E8494BD0;
    objc_copyWeak(&v10, &location);
    [v6 resetZoomLevelOnURL:v8 completionHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_invokeCustomActivity
{
  v3 = [(UIApplicationExtensionActivity *)self->_customButtonUIActivity applicationExtension];
  v4 = [v3 extensionPointIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.share-services"];

  if (v5)
  {
    getSLComposeViewControllerClass();
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56___SFBrowserContentViewController__invokeCustomActivity__block_invoke;
  v6[3] = &unk_1E8494C20;
  v6[4] = self;
  [(_SFBrowserContentViewController *)self _fetchSharingURLWithCompletionHandler:v6];
}

- (void)_showQuickLookDocumentView
{
  v6 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v6 scrollView];
  [v3 setZoomScale:1.0];

  v4 = [v6 scrollView];
  [v4 setZoomEnabled:0];

  v5 = [(SFQuickLookDocumentController *)self->_quickLookDocumentController documentView];
  [(_SFBrowserView *)self->_browserView setQuickLookDocumentView:v5];

  [v6 setHidden:1];
}

- (void)_hideQuickLookDocumentView
{
  [(_SFBrowserView *)self->_browserView setQuickLookDocumentView:0];
  v4 = [(_SFBrowserContentViewController *)self webView];
  [v4 setHidden:0];
  v3 = [v4 scrollView];
  [v3 setZoomEnabled:1];
}

- (WBSTranslationContext)translationContext
{
  if ([(_SFBrowserContentViewController *)self _canTranslateWebpages])
  {
    v3 = self->_translationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dataForQuickLookDocument:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___SFBrowserContentViewController_dataForQuickLookDocument_completionHandler___block_invoke;
  block[3] = &unk_1E8494C70;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)suggestedFileNameForQuickLookDocument:(id)a3
{
  v3 = [(_SFBrowserContentViewController *)self webView];
  v4 = [v3 _sf_suggestedFilename];

  return v4;
}

- (id)quickLookDocumentForCurrentBackForwardListItem
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v2 backForwardList];
  v4 = [v3 currentItem];
  v5 = [v4 _sf_quickLookDocument];

  return v5;
}

- (void)setQuickLookDocumentForCurrentBackForwardListItem:(id)a3
{
  v7 = a3;
  v4 = [(_SFBrowserContentViewController *)self webView];
  v5 = [v4 backForwardList];
  v6 = [v5 currentItem];
  [v6 _sf_setQuickLookDocument:v7];
}

- (id)quickLookDocument
{
  quickLookDocument = self->_quickLookDocument;
  if (self->_quickLookDocumentCheckCompleted || quickLookDocument)
  {
    v15 = quickLookDocument;
  }

  else
  {
    self->_quickLookDocumentCheckCompleted = 1;
    v4 = [(SFQuickLookDocumentWriter *)self->_quickLookDocumentWriter quickLookDocument];
    v5 = self->_quickLookDocument;
    self->_quickLookDocument = v4;

    if (self->_quickLookDocument)
    {
      [(_SFBrowserContentViewController *)self setQuickLookDocumentForCurrentBackForwardListItem:?];
    }

    v6 = [(_SFBrowserContentViewController *)self webView];
    v7 = v6;
    if (!self->_quickLookDocument)
    {
      if ([v6 _isDisplayingPDF])
      {
        v8 = [v7 _sf_suggestedFilename];
        v9 = objc_alloc(MEMORY[0x1E69B1B68]);
        v10 = [v9 initWithFileName:v8 mimeType:0 uti:*MEMORY[0x1E6963858] needsQuickLookDocumentView:0];
        v11 = self->_quickLookDocument;
        self->_quickLookDocument = v10;
      }

      if (!self->_quickLookDocument)
      {
        v12 = [(_SFBrowserContentViewController *)self quickLookDocumentForCurrentBackForwardListItem];
        v13 = self->_quickLookDocument;
        self->_quickLookDocument = v12;
      }
    }

    v14 = [v7 URL];
    [(SFQuickLookDocument *)self->_quickLookDocument setSourceURL:v14];

    [(SFQuickLookDocument *)self->_quickLookDocument setDocumentSource:self];
    v15 = self->_quickLookDocument;
  }

  return v15;
}

- (void)webViewController:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v15 = a3;
  [(_SFCalendarEventDetector *)self->_calendarEventDetector cancelCheckForConfirmationPage];
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didStartProvisionalNavigationWithUserInitiatedAction:self->_lastUserInitiatedAction];
  quickLookDocumentWriter = self->_quickLookDocumentWriter;
  self->_quickLookDocumentWriter = 0;

  quickLookDocument = self->_quickLookDocument;
  self->_quickLookDocument = 0;

  v7 = [v15 webView];
  v8 = [v7 _unreachableURL];

  if (!v8)
  {
    lastLoadErrorForFormatMenu = self->_lastLoadErrorForFormatMenu;
    self->_lastLoadErrorForFormatMenu = 0;
  }

  pinnableBannerPendingFirstPaint = self->_pinnableBannerPendingFirstPaint;
  self->_pinnableBannerPendingFirstPaint = 0;

  v11 = [(_SFBrowserContentViewController *)self webView];
  if (!self->_translationContext)
  {
    v12 = [MEMORY[0x1E69C98B0] translationContextWithWebView:v11 delegate:self];
    translationContext = self->_translationContext;
    self->_translationContext = v12;

    [(WBSTranslationContext *)self->_translationContext setFluidProgressController:self->_fluidProgressController];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:self selector:sel__translationContextStateDidChange_ name:*MEMORY[0x1E69C9A28] object:self->_translationContext];
  }

  [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
}

- (void)webViewController:(id)a3 authenticationChallenge:(id)a4 shouldAllowLegacyTLS:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(_SFBrowserContentViewController *)self legacyTLSHostManager];
  v11 = [v8 protectionSpace];
  v12 = [v11 host];
  v13 = [v10 isLegacyTLSAllowedForHost:v12];

  if ((v13 & 1) == 0)
  {
    pageLoadErrorController = self->_pageLoadErrorController;
    v15 = [v8 protectionSpace];
    v16 = [v15 safari_URL];
    v17 = [v19 webView];
    v18 = [v17 URL];
    [(_SFPageLoadErrorController *)pageLoadErrorController handleLegacyTLSWithFailingURL:v16 clickThroughURL:v18 authenticationChallenge:v8];
  }

  v9[2](v9, v13);
}

- (void)authenticationChallengeDidNegotiateModernTLS:(id)a3
{
  v6 = a3;
  v4 = [(_SFBrowserContentViewController *)self legacyTLSHostManager];
  v5 = [v6 host];
  [v4 clearLegacyTLSForHostIfPresent:v5];
}

- (void)webViewController:(id)a3 didCommitNavigation:(id)a4
{
  v27 = a3;
  v6 = a4;
  -[_SFReloadOptionsController setEffectiveContentMode:](self->_reloadOptionsController, "setEffectiveContentMode:", [v6 effectiveContentMode]);
  v7 = [v27 webView];
  v8 = v7;
  if (self->_suggestedFilenameForNextCommit)
  {
    [v7 setSuggestedFilenameForCurrentBackForwardListItem:?];
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;
  }

  v10 = [(_SFBrowserContentViewController *)self sfScribbleController];
  v11 = [v6 _request];
  v12 = [v11 URL];
  v13 = [v12 host];
  [v10 updateUserDefinedContentBlockerWithHost:v13];

  self->_wasLoadedWithLockdownModeEnabled = self->_pendingNavigationWillLoadWithLockdownModeEnabled;
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didCommitNavigation];
  self->_externalAppRedirectState = 0;
  [(_SFBrowserContentViewController *)self _setShowingPinnableBanner:0 animated:0];
  [(_SFBrowserContentViewController *)self _hideReaderAnimated:1 deactivationMode:0];
  [(_SFBrowserContentViewController *)self _invalidateEVOrganizationName];
  [(_SFBrowserContentViewController *)self _updateUI];
  [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
  [(WBSFluidProgressController *)self->_fluidProgressController progressStateSourceDidCommitLoad:self loadingSingleResource:0];
  v14 = [(_SFBrowserContentViewController *)self _persona];
  if (v6 || v14 != 3)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController clearFailedRequest];
  }

  [(_SFBrowserContentViewController *)self _updatePageZoomWithPreference];
  downloadToShowInQuickLook = self->_downloadToShowInQuickLook;
  if (downloadToShowInQuickLook)
  {
    v16 = [(_SFDownload *)downloadToShowInQuickLook quickLookDocument];
    quickLookDocument = self->_quickLookDocument;
    self->_quickLookDocument = v16;

    v18 = self->_downloadToShowInQuickLook;
    self->_downloadToShowInQuickLook = 0;

    quickLookDocumentController = self->_quickLookDocumentController;
    if (!quickLookDocumentController)
    {
      v20 = objc_alloc_init(MEMORY[0x1E69B1B70]);
      v21 = self->_quickLookDocumentController;
      self->_quickLookDocumentController = v20;

      [(_SFBrowserContentViewController *)self _showQuickLookDocumentView];
      quickLookDocumentController = self->_quickLookDocumentController;
    }

    [(SFQuickLookDocumentController *)quickLookDocumentController updateWithQuickLookDocument:self->_quickLookDocument];
  }

  else
  {
    v22 = self->_quickLookDocument;
    self->_quickLookDocument = 0;

    self->_quickLookDocumentCheckCompleted = 0;
    if (self->_quickLookDocumentController)
    {
      [(_SFBrowserContentViewController *)self _hideQuickLookDocumentView];
      v23 = self->_quickLookDocumentController;
      self->_quickLookDocumentController = 0;
    }
  }

  [(_SFBrowserContentViewController *)self _checkForAppLink];
  v24 = [(_SFBrowserContentViewController *)self translationContext];
  v25 = [v8 URL];
  [v24 owningWebViewDidCommitNavigationWithURL:v25 completionHandler:0];

  v26 = [(_SFBrowserContentViewController *)self assistantController];
  [v26 clearAssistantResult];
}

- (void)webViewController:(id)a3 didFinishNavigation:(id)a4
{
  v13 = a3;
  [(_SFBrowserContentViewController *)self _updateUI];
  [(WBSFluidProgressController *)self->_fluidProgressController finishFluidProgressWithProgressStateSource:self];
  [(_SFPageLoadErrorController *)self->_pageLoadErrorController scheduleResetCrashCount];
  [(_SFCalendarEventDetector *)self->_calendarEventDetector containsCalendarEventForPageWithSchemaOrgMarkup:0];
  [(_SFBrowserContentViewController *)self _initialLoadFinishedWithSuccess:1];
  self->_shouldDismissReaderInReponseToSameDocumentNavigation = 0;
  self->_canOpenDownloadForInitialLoad = 0;
  [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
  if ([(_SFBrowserContentViewController *)self _persona]== 1)
  {
    reloadOptionsController = self->_reloadOptionsController;
    v6 = [v13 webView];
    v7 = [v6 URL];
    [(_SFReloadOptionsController *)reloadOptionsController logCompletedPageloadToDifferentialPrivacy:v7];
  }

  [(_SFBrowserContentViewController *)self _updateDigitalHealthTracking];
  v8 = [MEMORY[0x1E69C8EE0] sharedManager];
  v9 = [(_SFBrowserContentViewController *)self webView];
  v10 = [v9 URL];
  v11 = [v10 host];
  v12 = [(_SFBrowserContentViewController *)self webView];
  [v8 clearCertificateBypassesForHostIfNecessary:v11 withTrust:{objc_msgSend(v12, "serverTrust")}];
}

- (void)webViewController:(id)a3 didFinishDocumentLoadForNavigation:(id)a4
{
  v6 = [(_SFBrowserContentViewController *)self webView:a3];
  v5 = [v6 _committedURL];
  [(_SFBrowserContentViewController *)self _didResolveDestinationURL:v5 pendingAppLinkCheck:0];
}

- (void)_checkForAppLink
{
  if ([(_SFBrowserContentViewController *)self _shouldAllowUniversalLinkBanner])
  {
    v3 = [(_SFBrowserContentViewController *)self webView];
    v4 = [v3 URL];
    if ([v4 safari_isHTTPFamilyURL] && !-[_SFBrowserContentViewController isShowingErrorPage](self, "isShowingErrorPage"))
    {
      v6 = [v3 backForwardList];
      v7 = [v6 currentItem];
      backForwardListItemForCurrentAppLinkBannerCheck = self->_backForwardListItemForCurrentAppLinkBannerCheck;
      self->_backForwardListItemForCurrentAppLinkBannerCheck = v7;

      shouldRevealAppLinkBannerForNextCommit = self->_shouldRevealAppLinkBannerForNextCommit;
      self->_shouldRevealAppLinkBannerForNextCommit = 0;
      v10 = [objc_alloc(MEMORY[0x1E69C9750]) initWithURL:v4];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51___SFBrowserContentViewController__checkForAppLink__block_invoke;
      v12[3] = &unk_1E8494CE8;
      v11 = v10;
      v13 = v11;
      objc_copyWeak(&v15, &location);
      v14 = v3;
      v16 = shouldRevealAppLinkBannerForNextCommit;
      [v11 decideOpenStrategyWithCompletionHandler:v12];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      v5 = self->_backForwardListItemForCurrentAppLinkBannerCheck;
      self->_backForwardListItemForCurrentAppLinkBannerCheck = 0;
    }
  }
}

- (void)webViewController:(id)a3 didFindAppBannerWithContent:(id)a4
{
  v5 = a4;
  if (!self->_storeBannersAreDisabled)
  {
    v6 = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
    v7 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
    SFCreateAppSuggestionBannerFromMetaTagContent();
  }
}

- (void)webViewControllerDidFirstPaint:(id)a3
{
  pinnableBannerPendingFirstPaint = self->_pinnableBannerPendingFirstPaint;
  if (pinnableBannerPendingFirstPaint)
  {
    [(_SFBrowserContentViewController *)self _setShowingPinnableBanner:pinnableBannerPendingFirstPaint animated:0];
    v5 = self->_pinnableBannerPendingFirstPaint;
    self->_pinnableBannerPendingFirstPaint = 0;
  }
}

- (void)webViewControllerDidDetermineReaderAvailability:(id)a3 dueTo:(int64_t)a4
{
  v6 = a3;
  if (a4 != 2)
  {
    [(_SFBrowserContentViewController *)self _updateUI];
    v7 = [(_SFBrowserContentViewController *)self webViewController];
    v8 = [v7 readerController];
    v9 = [v8 isReaderAvailable];

    if (v9)
    {
      if (![(SFSafariViewControllerConfiguration *)self->_configuration entersReaderIfAvailable])
      {
        v10 = [(_SFBrowserContentViewController *)self _committedDomainForPreferences];
        if (![v10 length] || a4 == 1 && self->_lastReaderDeactivationMode == 1 || !-[_SFBrowserContentViewController _shouldAllowAutomaticReader](self, "_shouldAllowAutomaticReader"))
        {
          [(SFNavigationBarItem *)self->_navigationBarItem setShowsReaderButton:1 showsAvailabilityText:0];
        }

        else
        {
          objc_initWeak(&location, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __89___SFBrowserContentViewController_webViewControllerDidDetermineReaderAvailability_dueTo___block_invoke;
          aBlock[3] = &unk_1E8494D60;
          objc_copyWeak(&v15, &location);
          v14 = v6;
          v11 = _Block_copy(aBlock);
          v12 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor automaticReaderActivationManager];
          [v12 getAutomaticReaderEnabledForDomain:v10 usingBlock:v11];

          objc_destroyWeak(&v15);
          objc_destroyWeak(&location);
        }

        goto LABEL_12;
      }

      [(SFNavigationBarItem *)self->_navigationBarItem setShowsReaderButton:1 showsAvailabilityText:0];
      [(_SFBrowserContentViewController *)self _showReaderAnimated:self->_displayMode == 0];
      if (![(_SFBrowserContentViewController *)self isBlockedByScreenTime])
      {
        v10 = [MEMORY[0x1E69C8810] sharedLogger];
        [v10 didActivateReaderWithTrigger:3];
LABEL_12:
      }
    }
  }
}

- (void)webViewController:(id)a3 didExtractTextSamplesForTranslation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(_SFBrowserContentViewController *)self translationContext];
  v9 = [v6 webView];
  v10 = [v9 URL];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89___SFBrowserContentViewController_webViewController_didExtractTextSamplesForTranslation___block_invoke;
  v12[3] = &unk_1E8494D88;
  objc_copyWeak(&v14, &location);
  v11 = v6;
  v13 = v11;
  [v8 setWebpageLocaleWithExtractedTextSamples:v7 url:v10 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)webViewControllerDidChangeLoadingState:(id)a3
{
  v6 = a3;
  v4 = [(_SFBrowserContentViewController *)self webViewController];
  v5 = [v4 isLoading];

  if (v5)
  {
    [(WBSFluidProgressController *)self->_fluidProgressController startFluidProgressWithProgressStateSource:self];
  }

  if (([v6 isLoading] & 1) == 0)
  {
    self->_loadWasUserDriven = 0;
  }

  [(_SFBrowserContentViewController *)self _updateUI];
}

- (void)webViewControllerDidChangeEstimatedProgress:(id)a3
{
  v4 = [(_SFBrowserContentViewController *)self webViewController];
  v5 = [v4 isLoading];

  if (v5)
  {
    fluidProgressController = self->_fluidProgressController;

    [(WBSFluidProgressController *)fluidProgressController updateFluidProgressWithProgressStateSource:self];
  }
}

- (void)webViewController:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v8 = a5;
  if (([v8 safari_matchesErrorDomain:*MEMORY[0x1E6985460] andCode:204] & 1) == 0)
  {
    objc_storeStrong(&self->_lastLoadErrorForFormatMenu, a5);
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;

    [(WBSFluidProgressController *)self->_fluidProgressController cancelFluidProgressWithProgressStateSource:self];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController handleFrameLoadError:v8];
    [(_SFBrowserContentViewController *)self _initialLoadFinishedWithSuccess:0];
    [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
    [(_SFNavigationBar *)self->_navigationBar setNeedsLayout];
  }
}

- (void)webViewControllerDidFirstVisuallyNonEmptyLayout:(id)a3
{
  [(_SFBrowserContentViewController *)self _updateUI];

  [(_SFBrowserContentViewController *)self _updateDigitalHealthTracking];
}

- (void)_cleanUpAfterRedirectToExternalApp
{
  if ([(_SFBrowserContentViewController *)self _shouldGoBackToOwnerWebView])
  {

    [(_SFBrowserContentViewController *)self _goBack];
  }

  else
  {

    [(_SFBrowserContentViewController *)self _dismiss];
  }
}

- (void)_completeRedirectToExternalNavigationResult:(id)a3 fromOriginalRequest:(id)a4 dialogResult:(int64_t)a5
{
  v10 = a3;
  v7 = [(_SFBrowserContentViewController *)self webView];
  v8 = [v7 _committedURL];

  if (v8)
  {
    if (([v10 appliesOneTimeUserInitiatedActionPolicy] & 1) == 0)
    {
      externalAppRedirectState = self->_externalAppRedirectState;
      self->_externalAppRedirectState = externalAppRedirectState | 2;
      if (a5)
      {
        self->_externalAppRedirectState = externalAppRedirectState | 6;
      }
    }
  }

  else
  {
    [(_SFBrowserContentViewController *)self _cleanUpAfterRedirectToExternalApp];
  }
}

- (void)_queueAlertForRedirectToExternalNavigationResult:(id)a3 fromOriginalRequest:(id)a4 isMainFrame:(BOOL)a5 promptPolicy:(int64_t)a6 userAction:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  objc_initWeak(&location, self);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __140___SFBrowserContentViewController__queueAlertForRedirectToExternalNavigationResult_fromOriginalRequest_isMainFrame_promptPolicy_userAction___block_invoke;
  v24 = &unk_1E8494DB0;
  objc_copyWeak(&v28, &location);
  v15 = v12;
  v25 = v15;
  v16 = v13;
  v26 = v16;
  v29 = a5;
  v17 = v14;
  v27 = v17;
  v18 = _Block_copy(&v21);
  if (([v15 externalApplicationCategory] | 2) == 2)
  {
    self->_externalAppRedirectState |= 8uLL;
    pageLoadErrorController = self->_pageLoadErrorController;
    v20 = [MEMORY[0x1E69B1B00] redirectDialogWithNavigationResult:v15 promptPolicy:a6 completionHandler:v18];
    [(_SFPageLoadErrorController *)pageLoadErrorController addDialog:v20];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)_redirectToExternalNavigationResult:(id)a3 fromOriginalRequest:(id)a4 promptPolicy:(int64_t)a5 isMainFrame:(BOOL)a6 userAction:(id)a7
{
  v8 = a6;
  v33[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [v12 URL];
  if ([*MEMORY[0x1E69DDA98] canOpenURL:v15])
  {
    v16 = [v13 valueForHTTPHeaderField:@"Referer"];
    v17 = v16;
    if (v16)
    {
      v32 = *MEMORY[0x1E6963598];
      v33[0] = v16;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    }

    else
    {
      v18 = 0;
    }

    if ([(_SFBrowserContentViewController *)self _redirectToHostAppWithNavigationResult:v12 options:v18]|| self->_externalAppRedirectState == 8)
    {
      goto LABEL_18;
    }

    if ([v12 shouldPromptWithPolicy:a5 telephonyNavigationPolicy:self->_telephonyNavigationPolicy userAction:v14 inBackgroundOrPrivateBrowsing:-[_SFBrowserContentViewController viewDidAppearInHostApp](self inLockdownMode:{"viewDidAppearInHostApp") ^ 1, self->_wasLoadedWithLockdownModeEnabled}])
    {
      [(_SFBrowserContentViewController *)self _queueAlertForRedirectToExternalNavigationResult:v12 fromOriginalRequest:v13 isMainFrame:v8 promptPolicy:a5 userAction:v14];
    }

    else
    {
      v19 = [v12 externalApplicationCategory];
      if (!v19 || v19 == 2)
      {
        v23 = [MEMORY[0x1E6963608] defaultWorkspace];
        v24 = [v12 externalApplication];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __127___SFBrowserContentViewController__redirectToExternalNavigationResult_fromOriginalRequest_promptPolicy_isMainFrame_userAction___block_invoke_3;
        v25[3] = &unk_1E8492198;
        v25[4] = self;
        v26 = v12;
        v27 = v13;
        [v23 _sf_openURL:v15 inApplication:v24 withOptions:v18 completionHandler:v25];

        v21 = &v26;
        v22 = &v27;
      }

      else
      {
        if (v19 != 1 || self->_isDisplayingTelephonyPrompt)
        {
          goto LABEL_18;
        }

        self->_isDisplayingTelephonyPrompt = 1;
        telephonyNavigationPolicy = self->_telephonyNavigationPolicy;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __127___SFBrowserContentViewController__redirectToExternalNavigationResult_fromOriginalRequest_promptPolicy_isMainFrame_userAction___block_invoke;
        v28[3] = &unk_1E8494DD8;
        v28[4] = self;
        v29 = v15;
        v30 = v12;
        v31 = v13;
        [(_SFTelephonyNavigationMitigationPolicy *)telephonyNavigationPolicy handleNavigationToURL:v29 completionHandler:v28];
        v21 = &v29;
        v22 = &v30;
        v23 = v31;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  if (v8)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController addInvalidURLAlert];
  }

LABEL_19:
}

- (id)resultOfLoadingRequest:(id)a3 inMainFrame:(BOOL)a4 disallowRedirectToExternalApps:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101___SFBrowserContentViewController_resultOfLoadingRequest_inMainFrame_disallowRedirectToExternalApps___block_invoke;
  v12[3] = &unk_1E8494E00;
  v13 = v8;
  v14 = self;
  v9 = v8;
  v10 = [_SFNavigationResult resultOfLoadingRequest:v9 isMainFrame:v6 disallowRedirectToExternalApps:v5 preferredApplicationBundleIdentifier:0 redirectDecisionHandler:v12];

  return v10;
}

- (void)_determineResultOfLoadingRequest:(id)a3 inMainFrame:(BOOL)a4 disallowRedirectToExternalApps:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [(_SFBrowserContentViewController *)self webView];
  v13 = [v12 _committedURL];

  LOBYTE(v12) = [(_SFReloadOptionsController *)self->_reloadOptionsController loadedUsingDesktopUserAgent];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __129___SFBrowserContentViewController__determineResultOfLoadingRequest_inMainFrame_disallowRedirectToExternalApps_completionHandler___block_invoke;
  v16[3] = &unk_1E8494E28;
  v14 = v10;
  v17 = v14;
  v15 = v13;
  v18 = v15;
  v19 = v12;
  [_SFNavigationResult determineResultOfLoadingRequest:v14 isMainFrame:v8 disallowRedirectToExternalApps:v7 preferredApplicationBundleIdentifier:0 redirectDecisionHandler:v16 completionHandler:v11];
}

- (void)_redirectToNewsIfNeededForRequest:(id)a3 isMainFrame:(BOOL)a4 userAction:(id)a5 decisionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 URL];
  v14 = [objc_alloc(MEMORY[0x1E69C9750]) initWithURL:v13];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __108___SFBrowserContentViewController__redirectToNewsIfNeededForRequest_isMainFrame_userAction_decisionHandler___block_invoke;
  v19[3] = &unk_1E8494E50;
  v15 = v12;
  v23 = v15;
  v19[4] = self;
  v16 = v10;
  v20 = v16;
  v21 = v14;
  v17 = v11;
  v22 = v17;
  v24 = a4;
  v18 = v14;
  [v18 _sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread:v19];
}

- (void)webViewController:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 targetFrame];
  if (v11 && ([v9 targetFrame], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isMainFrame"), v12, v11, !v13))
  {
    v18 = 0;
  }

  else
  {
    ++self->_concurrentNavigationActionPolicyDecisions;
    v14 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      concurrentNavigationActionPolicyDecisions = self->_concurrentNavigationActionPolicyDecisions;
      *buf = 134218240;
      v27 = self;
      v28 = 2048;
      v29 = concurrentNavigationActionPolicyDecisions;
      _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_INFO, "(%p) Concurrent navigation action policy decisions: %zd", buf, 0x16u);
    }

    if (self->_concurrentNavigationActionPolicyDecisions >= 21)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [_SFBrowserContentViewController webViewController:v16 decidePolicyForNavigationAction:? decisionHandler:?];
      }

      v17 = [v8 webView];
      [v17 _killWebContentProcessAndResetState];
    }

    v18 = 1;
  }

  objc_initWeak(buf, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101___SFBrowserContentViewController_webViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v21[3] = &unk_1E8494E78;
  objc_copyWeak(&v24, buf);
  v19 = v9;
  v22 = v19;
  v20 = v10;
  v23 = v20;
  v25 = v18;
  [(_SFBrowserContentViewController *)self _internalWebViewController:v8 decidePolicyForNavigationAction:v19 decisionHandler:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)_internalWebViewController:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v42 = v10;
  v43 = v8;
  v11 = [v9 request];
  v44 = [v11 URL];

  v12 = [v9 targetFrame];
  v41 = v12;
  if (v12)
  {
    v13 = [v12 isMainFrame];
  }

  else
  {
    v13 = 1;
  }

  objc_initWeak(location, self);
  if ((self->_externalAppRedirectState & 8) != 0)
  {
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else if (!self->_isDisplayingTelephonyPrompt || (v13 & 1) == 0)
  {
LABEL_10:
    v17 = [v9 navigationType];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_2;
    aBlock[3] = &unk_1E8494EF0;
    objc_copyWeak(v57, location);
    v18 = v10;
    v56 = v18;
    v19 = v9;
    v54 = v19;
    v20 = v44;
    v58 = v13;
    v55 = v20;
    v57[1] = v17;
    v21 = _Block_copy(aBlock);
    self->_didReceivePolicyForInitialLoad = 1;
    v22 = [v19 _userInitiatedAction];
    lastUserInitiatedAction = self->_lastUserInitiatedAction;
    self->_lastUserInitiatedAction = v22;

    [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator setNavigationSource:!self->_loadWasUserDriven];
    v39 = &v54;
    v40 = &v56;
    v24 = &v55;
    if (v13 && (([v20 safari_isHTTPFamilyURL] & 1) != 0 || objc_msgSend(v20, "safari_hasScheme:", @"ftp")) && objc_msgSend(v20, "safari_hasUserOrPassword"))
    {
      v25 = [v20 safari_URLByDeletingUserAndPassword];
      v26 = v21[2];
      if (v25)
      {
        v26(v21, 1, v25);
      }

      else
      {
        v26(v21, 0, 0);
      }
    }

    else if ([v19 safari_shouldProhibitNavigationToSafariSpecificURL])
    {
      (v21[2])(v21, 0, 0);
    }

    else
    {
      if ([v19 _sf_shouldAskAboutInsecureFormSubmission])
      {
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_2_307;
        v51[3] = &unk_1E8492A70;
        v27 = v21;
        v52 = v27;
        v28 = _Block_copy(v51);
        pageLoadErrorController = self->_pageLoadErrorController;
        v30 = _WBSLocalizedString();
        [(_SFPageLoadErrorController *)pageLoadErrorController addFormAlertWithTitle:v30 decisionHandler:v28];
      }

      else
      {
        if ([(_SFPageLoadErrorController *)self->_pageLoadErrorController crashesSinceLastSuccessfulLoad])
        {
          if (v13)
          {
            v38 = [v19 targetFrame];
            v34 = [v38 request];
            v35 = [v34 URL];

            if (v35)
            {
              [(_SFBrowserContentViewController *)self _setShowingCrashBanner:0 animated:1];
            }
          }
        }

        if ((self->_externalAppRedirectState & 4) != 0)
        {
          v36 = [v19 _isUserInitiated] ^ 1;
        }

        else
        {
          v36 = 0;
        }

        v37 = [v19 request];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_3;
        v45[3] = &unk_1E8494F18;
        objc_copyWeak(&v50, location);
        v48 = v18;
        v27 = v21;
        v49 = v27;
        v46 = v43;
        v47 = v19;
        [(_SFBrowserContentViewController *)self _determineResultOfLoadingRequest:v37 inMainFrame:v13 disallowRedirectToExternalApps:v36 completionHandler:v45];

        objc_destroyWeak(&v50);
      }

      v21 = v27;
    }

    v32 = v57;
    goto LABEL_35;
  }

  v14 = [v9 request];
  v15 = [v14 URL];
  v16 = [(_SFBrowserContentViewController *)self _willURLOpenHostApp:v15];

  if (v16)
  {
    goto LABEL_10;
  }

  pendingNavigationActionDueToExternalSchemePromptHandler = self->_pendingNavigationActionDueToExternalSchemePromptHandler;
  if (pendingNavigationActionDueToExternalSchemePromptHandler)
  {
    pendingNavigationActionDueToExternalSchemePromptHandler[2](pendingNavigationActionDueToExternalSchemePromptHandler, 0);
  }

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v59[3] = &unk_1E8494EA0;
  v32 = &v63;
  objc_copyWeak(&v63, location);
  v40 = &v62;
  v62 = v10;
  v39 = &v60;
  v60 = v8;
  v24 = &v61;
  v61 = v9;
  v33 = _Block_copy(v59);
  v21 = self->_pendingNavigationActionDueToExternalSchemePromptHandler;
  self->_pendingNavigationActionDueToExternalSchemePromptHandler = v33;
LABEL_35:

  objc_destroyWeak(v32);
  objc_destroyWeak(location);
}

- (void)_internalWebViewController:(id)a3 decidePolicyForNavigationAction:(id)a4 withResult:(id)a5 decisionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 request];
  v15 = [v14 URL];

  v16 = [v11 targetFrame];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 isMainFrame];
  }

  else
  {
    v18 = 1;
  }

  if ([(_SFBrowserContentViewController *)self shouldRedirectToHostAppForAuthenticationSession:v15])
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __121___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_withResult_decisionHandler___block_invoke;
    v36[3] = &unk_1E8494F40;
    v36[4] = self;
    v37 = v15;
    v38 = v13;
    [v10 willRedirectToHostAppForNavigationWithCompletionHandler:v36];

    goto LABEL_51;
  }

  v19 = [v12 type];
  if (v19 <= 1)
  {
    if (!v19)
    {
      v27 = [v12 URL];
      v28 = [v27 _webkit_isJavaScriptURL];

      if (v28)
      {
        [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedUseOfJavaScriptAlert];
      }

      else if (v18 && ![(_SFBrowserContentViewController *)self _redirectToHostAppForAuthenticationSession:v15])
      {
        [(_SFPageLoadErrorController *)self->_pageLoadErrorController addInvalidURLAlert];
      }

      goto LABEL_32;
    }

    if (v19 != 1)
    {
      goto LABEL_32;
    }

    if ((self->_externalAppRedirectState & 4) != 0 && ![v11 _isUserInitiated])
    {
      v23 = 1;
      if (v18)
      {
LABEL_42:
        v31 = [v12 URL];
        [(_SFBrowserContentViewController *)self _didResolveDestinationURL:v31 pendingAppLinkCheck:1];

        v32 = [v11 _shouldOpenAppLinks];
        if (v23)
        {
          v33 = 3;
        }

        else
        {
          v33 = 1;
        }

        if (v32)
        {
          v34 = v33;
        }

        else
        {
          v34 = 3;
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (self->_wasLoadedWithLockdownModeEnabled)
      {
        v23 = [v15 hasTelephonyScheme] ^ 1;
      }

      else
      {
        v23 = 0;
      }

      if ((v23 & 1) == 0 && ((v18 ^ 1) & 1) == 0)
      {
        if ([v11 _shouldOpenExternalSchemes] && self->_displayMode != 1 && objc_msgSend(v15, "safari_isAppleNewsURL"))
        {
          v29 = [v11 request];
          v30 = [v11 _userInitiatedAction];
          [(_SFBrowserContentViewController *)self _redirectToNewsIfNeededForRequest:v29 isMainFrame:v18 userAction:v30 decisionHandler:v13];

          goto LABEL_51;
        }

        v23 = 0;
      }

      if (v18)
      {
        goto LABEL_42;
      }
    }

    v34 = 3;
LABEL_50:
    (*(v13 + 2))(v13, v34);
    goto LABEL_51;
  }

  if (v19 == 2)
  {
    (*(v13 + 2))(v13, 0);
    v24 = MEMORY[0x1E695AC68];
    v25 = [v12 URL];
    v26 = [v24 safari_nonAppInitiatedRequestWithURL:v25];
    [(_SFBrowserContentViewController *)self loadRequest:v26];

LABEL_25:
    goto LABEL_51;
  }

  if (v19 == 4)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedFileURLAlert];
    goto LABEL_32;
  }

  if (v19 != 3)
  {
LABEL_32:
    (*(v13 + 2))(v13, 0);
    goto LABEL_51;
  }

  (*(v13 + 2))(v13, 0);
  v20 = [v12 URL];
  [(_SFBrowserContentViewController *)self _didResolveDestinationURL:v20 pendingAppLinkCheck:0];

  if (v18 && [v11 _shouldOpenExternalSchemes] && self->_displayMode != 1)
  {
    if (self->_wasLoadedWithLockdownModeEnabled)
    {
LABEL_14:
      v21 = [v11 _userInitiatedAction];
      if (v21)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      goto LABEL_56;
    }

    if ([v11 _sf_allowsExternalRedirectWithoutPrompting])
    {
      v22 = 0;
    }

    else
    {
      if (self->_didNotifyInitialLoadFinish)
      {
        goto LABEL_14;
      }

      v22 = 1;
    }

LABEL_56:
    v25 = [v11 request];
    v35 = [v11 _userInitiatedAction];
    [(_SFBrowserContentViewController *)self _redirectToExternalNavigationResult:v12 fromOriginalRequest:v25 promptPolicy:v22 isMainFrame:1 userAction:v35];

    goto LABEL_25;
  }

LABEL_51:
}

- (id)_quickLookDocumentForDownload:(id)a3
{
  v3 = a3;
  v4 = [v3 filename];
  v5 = [v4 safari_lastPathComponentWithoutZipExtension];

  v6 = objc_alloc(MEMORY[0x1E69B1B68]);
  v7 = [v3 response];
  v8 = [v7 MIMEType];
  v9 = [v6 initWithFileName:v5 mimeType:v8 uti:0 needsQuickLookDocumentView:1];

  v10 = [v3 sourceURL];
  [v9 setSourceURL:v10];

  return v9;
}

- (id)_fallbackURLForWellKnownChangePasswordURL:(id)a3
{
  v4 = a3;
  v5 = [(_SFBrowserContentViewController *)self _fallbackURLForWellKnownChangePasswordURLFromQuirks:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(_SFBrowserContentViewController *)self _homePageURLToUseAsFallbackWhenTryingToChangePassword:v4];
  }

  v8 = v7;

  return v8;
}

- (id)_fallbackURLForWellKnownChangePasswordURLFromQuirks:(id)a3
{
  v4 = a3;
  v5 = [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager changePasswordURLManager];
  v6 = [v4 host];
  v7 = [v6 safari_highLevelDomainFromHost];
  v8 = [v5 changePasswordURLForHighLevelDomain:v7];

  return v8;
}

- (id)_homePageURLToUseAsFallbackWhenTryingToChangePassword:(id)a3
{
  v3 = [a3 safari_URLByRemovingUserPasswordPathQueryAndFragment];
  v4 = [v3 safari_URLByReplacingSchemeWithString:@"https"];

  return v4;
}

- (void)_didDecideNavigationPolicy:(int64_t)a3 forNavigationResponse:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 1)
  {
    v14 = v6;
    v8 = [v6 isForMainFrame];
    v7 = v14;
    if (v8)
    {
      v9 = [v14 _frame];
      v10 = [v9 webView];
      v11 = [(_SFBrowserContentViewController *)self webView];

      v7 = v14;
      if (v10 == v11)
      {
        v12 = [v14 _sf_explicitSuggestedFilename];
        suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
        self->_suggestedFilenameForNextCommit = v12;

        v7 = v14;
      }
    }
  }
}

- (void)webViewController:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v41 = a3;
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103___SFBrowserContentViewController_webViewController_decidePolicyForNavigationResponse_decisionHandler___block_invoke;
  aBlock[3] = &unk_1E8494F68;
  aBlock[4] = self;
  v10 = v8;
  v45 = v10;
  v11 = v9;
  v46 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [v10 response];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v13 safari_statusCodeGroup] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v14 = self->_originalRequestURL;
    if ([(NSURL *)v14 safari_isWellKnownChangePasswordURL])
    {
      v12[2](v12, 0);
      v15 = [(_SFBrowserContentViewController *)self _fallbackURLForWellKnownChangePasswordURLFromQuirks:v14];
      if (v15)
      {
        objc_storeStrong(&self->_urlForPendingNavigationToFallbackURLForWellKnownChangePasswordURL, v15);
        v16 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v15];
        [(_SFBrowserContentViewController *)self loadRequest:v16];
      }

      else
      {
        v36 = MEMORY[0x1E695AC68];
        v16 = [(_SFBrowserContentViewController *)self _homePageURLToUseAsFallbackWhenTryingToChangePassword:v14];
        v37 = [v36 safari_nonAppInitiatedRequestWithURL:v16];
        [(_SFBrowserContentViewController *)self loadRequest:v37];
      }

      goto LABEL_35;
    }

    if ([(NSURL *)v14 isEqual:self->_urlForPendingNavigationToFallbackURLForWellKnownChangePasswordURL])
    {
      v12[2](v12, 0);
      urlForPendingNavigationToFallbackURLForWellKnownChangePasswordURL = self->_urlForPendingNavigationToFallbackURLForWellKnownChangePasswordURL;
      self->_urlForPendingNavigationToFallbackURLForWellKnownChangePasswordURL = 0;

      v18 = MEMORY[0x1E695AC68];
      v15 = [(_SFBrowserContentViewController *)self _homePageURLToUseAsFallbackWhenTryingToChangePassword:v14];
      v16 = [v18 safari_nonAppInitiatedRequestWithURL:v15];
      [(_SFBrowserContentViewController *)self loadRequest:v16];
LABEL_35:

      goto LABEL_36;
    }
  }

  v42 = 0;
  v43 = 0;
  v19 = [v10 _sf_responsePolicy:&v43 uti:&v42];
  v14 = v42;
  if (!v19)
  {
    v20 = 1;
    goto LABEL_13;
  }

  if (self->_activeDownload)
  {
    v20 = 0;
LABEL_13:
    v12[2](v12, v20);
    goto LABEL_36;
  }

  v21 = [v13 MIMEType];
  v22 = [v13 suggestedFilename];
  v23 = [v22 safari_filenameByFixingIllegalCharacters];
  v40 = [v23 safari_lastPathComponentWithoutZipExtension];

  v24 = v43;
  if (v43 == 3)
  {
    if (([getPKAddPassesViewControllerClass() canAddPasses] & 1) == 0)
    {
LABEL_19:
      v43 = 0;
      goto LABEL_20;
    }

    v24 = v43;
  }

  if (v24 == 7 && ([getPKAddPassesViewControllerClass() canAddPasses] & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v25 = [v40 pathExtension];
  v26 = [v25 caseInsensitiveCompare:@"swf"];

  v27 = [v21 caseInsensitiveCompare:@"application/x-shockwave-flash"];
  v28 = [v10 isForMainFrame];
  if (v26)
  {
    v29 = v27 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (!v43 || (v30 & ~v28 & 1) != 0)
  {
    v12[2](v12, 0);
  }

  else
  {
    v38 = v21;
    v31 = [v10 _request];
    v32 = [v10 _sf_suggestedFilename];
    v33 = [_SFDownload provisionalDownloadWithMIMEType:v21 request:v31 response:v13 filename:v32 uti:v14 userInitiatedAction:self->_lastUserInitiatedAction];

    if (v43 == 2)
    {
      v39 = [(_SFBrowserContentViewController *)self _quickLookDocumentForDownload:v33];
    }

    else
    {
      v39 = 0;
    }

    v34 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
    v35 = [v41 webView];
    [v34 setPendingDownload:v33 forWebView:v35];

    [v33 setQuickLookDocument:v39];
    [v33 setDelegate:self];
    [v33 setFluidProgressController:self->_fluidProgressController];
    objc_storeStrong(&self->_activeDownload, v33);
    v12[2](v12, 2 * (v33 != 0));

    v21 = v38;
  }

LABEL_36:
}

- (void)_didDecideNavigationPolicy:(int64_t)a3 forNavigationAction:(id)a4
{
  v10 = a4;
  v6 = [(_SFBrowserContentViewController *)self translationContext];
  v7 = [(_SFBrowserContentViewController *)self webView];
  v8 = [v7 backForwardList];
  v9 = [v8 currentItem];
  [v6 owningWebViewDidDecidePolicy:a3 forNavigationAction:v10 currentBackForwardListItem:v9];
}

- (void)webViewController:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v11 = a5;
  if ([(NSURL *)self->_originalRequestURL safari_isWellKnownChangePasswordURL])
  {
    v7 = MEMORY[0x1E695AC68];
    v8 = [(_SFBrowserContentViewController *)self _fallbackURLForWellKnownChangePasswordURL:self->_originalRequestURL];
    v9 = [v7 safari_nonAppInitiatedRequestWithURL:v8];
    [(_SFBrowserContentViewController *)self loadRequest:v9];
  }

  else
  {
    objc_storeStrong(&self->_lastLoadErrorForFormatMenu, a5);
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;

    [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didFailProvisionalNavigationWithError:v11];
    [(WBSFluidProgressController *)self->_fluidProgressController cancelFluidProgressWithProgressStateSource:self];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController handleFrameLoadError:v11];
    [(_SFBrowserContentViewController *)self _initialLoadFinishedWithSuccess:0];
    [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
    [(_SFBrowserContentViewController *)self _updateNavigationBar];
  }
}

- (void)webViewController:(id)a3 didSameDocumentNavigation:(id)a4 ofType:(int64_t)a5
{
  [(_SFBrowserContentViewController *)self _updateNavigationBar:a3];
  if (a5)
  {
    if (self->_shouldDismissReaderInReponseToSameDocumentNavigation)
    {
      [(_SFBrowserContentViewController *)self _hideReaderAnimated:0 deactivationMode:0];
    }

    self->_shouldDismissReaderInReponseToSameDocumentNavigation = 0;
  }
}

- (void)webViewController:(id)a3 willEndNavigationGestureToBackForwardListItem:(id)a4
{
  v7 = a3;
  v6 = a4;
  self->_shouldDismissReaderInReponseToSameDocumentNavigation = 1;
  if (v6 && [(_SFBrowserContentViewController *)self _shouldGoBackToOwnerWebView])
  {
    self->_gestureRequiresGoingBackToOwnerWebView = 1;
  }
}

- (void)webViewController:(id)a3 didEndNavigationGestureToBackForwardListItem:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6 && self->_gestureRequiresGoingBackToOwnerWebView)
  {
    [(_SFBrowserContentViewController *)self _goBackToOwnerWebView];
    self->_gestureRequiresGoingBackToOwnerWebView = 0;
  }
}

- (void)webViewController:(id)a3 willGoToBackForwardListItem:(id)a4 inPageCache:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v7 = [(_SFBrowserContentViewController *)self translationContext];
  [v7 owningWebViewWillNavigateToBackForwardListItem:v8 inPageCache:v5];
}

- (id)_openNewWebViewIfNeededWithConfiguration:(id)a3 forNavigationAction:(id)a4
{
  v5 = a3;
  v6 = [(_SFBrowserContentViewController *)self webView];
  v7 = [v6 backForwardList];
  v8 = [v7 currentItem];

  [v6 _saveBackForwardSnapshotForItem:v8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96___SFBrowserContentViewController__openNewWebViewIfNeededWithConfiguration_forNavigationAction___block_invoke;
  v18[3] = &unk_1E8494F90;
  v9 = v8;
  v19 = v9;
  v10 = [v6 _sessionStateWithFilter:v18];
  v11 = [SFReaderEnabledWebViewController alloc];
  v12 = [(_SFBrowserContentViewController *)self contentBlockerManager];
  v13 = [(SFWebViewController *)v11 initWithWebViewConfiguration:v5 contentBlockerManager:v12];

  [(_SFBrowserContentViewController *)self _pushWebViewController:v13];
  v14 = [(SFWebViewController *)v13 webView];
  v15 = [v14 _restoreSessionState:v10 andNavigate:0];

  v16 = [(_SFBrowserContentViewController *)self webView];

  return v16;
}

- (void)webViewController:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([v10 _isUserInitiated])
  {
    v12 = [(_SFBrowserContentViewController *)self _openNewWebViewIfNeededWithConfiguration:v9 forNavigationAction:v10];
    v11[2](v11, v12);
  }

  else
  {
    v13 = MEMORY[0x1E69B1B00];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __122___SFBrowserContentViewController_webViewController_createWebViewWithConfiguration_forNavigationAction_completionHandler___block_invoke;
    v19 = &unk_1E8494FB8;
    v20 = self;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v14 = [v13 blockedPopupWindowDialogWithCompletionHandler:&v16];
    v15 = [(_SFBrowserContentViewController *)self webViewController:v16];
    [v15 presentDialog:v14 sender:self];
  }
}

- (void)webViewController:(id)a3 webViewDidClose:(id)a4
{
  v5 = [(NSMutableArray *)self->_webViewControllers count:a3];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [(NSMutableArray *)self->_webViewControllers objectAtIndexedSubscript:0];
      v7 = [v6 webView];
      v8 = [v7 _committedURL];

      if (!v8)
      {

        [(_SFBrowserContentViewController *)self _dismiss];
      }
    }

    else
    {

      [(_SFBrowserContentViewController *)self _popWebViewController];
    }
  }
}

- (void)webViewControllerWebProcessDidCrash:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(_SFBrowserContentViewController *)self setMediaStateIcon:0];
  [(_SFPageLoadErrorController *)self->_pageLoadErrorController clearCrashCountResetTimer];
  v4 = [(_SFBrowserContentViewController *)self webViewController];
  v5 = [v4 webView];
  v6 = [v5 URL];
  if (v6)
  {
    v7 = MEMORY[0x1E696ABC0];
LABEL_4:
    v22 = *MEMORY[0x1E696A980];
    v23[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v11 = 0;
    goto LABEL_5;
  }

  v8 = [v5 backForwardList];
  v9 = [v8 currentItem];
  v6 = [v9 URL];

  v7 = MEMORY[0x1E696ABC0];
  if (v6)
  {
    goto LABEL_4;
  }

  v10 = 0;
  v11 = 1;
LABEL_5:
  v12 = [v7 errorWithDomain:@"com.apple.SafariViewService" code:0 userInfo:v10];
  if ((v11 & 1) == 0)
  {
  }

  pageLoadErrorController = self->_pageLoadErrorController;
  v14 = [v6 safari_userVisibleString];
  LODWORD(pageLoadErrorController) = [(_SFPageLoadErrorController *)pageLoadErrorController updateCrashesAndShowCrashError:v12 URLString:v14];

  if (pageLoadErrorController)
  {
    [(_SFBrowserContentViewController *)self _setShowingCrashBanner:0 animated:1];
  }

  else if ((v11 & 1) == 0)
  {
    [(_SFBrowserContentViewController *)self _setShowingCrashBanner:1 animated:1];
    [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
    v15 = [v5 _committedURL];
    v16 = [v15 isEqual:v6];

    if (v16)
    {
      v17 = [v5 reload];
    }

    else
    {
      v18 = [MEMORY[0x1E695AC68] requestWithURL:v6];
      v19 = [(_SFBrowserContentViewController *)self _requestBySettingAdvancedPrivacyProtectionsFlag:v18];

      v20 = [v5 loadRequest:v19];
    }

    [(_SFReaderViewController *)self->_readerViewController setDelegate:0];
    readerViewController = self->_readerViewController;
    self->_readerViewController = 0;
  }
}

- (void)webViewControllerDidChangeHasOnlySecureContent:(id)a3
{
  [(_SFBrowserContentViewController *)self _invalidateEVOrganizationName];

  [(_SFBrowserContentViewController *)self _updateUI];
}

- (void)webViewController:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 protectionSpace];
  v10 = [v7 protectionSpace];
  v11 = [v10 authenticationMethod];
  v12 = [v11 isEqualToString:*MEMORY[0x1E695AB80]];

  if (v12)
  {
    v13 = [MEMORY[0x1E69C8EE0] sharedManager];
    v14 = [v7 protectionSpace];
    v15 = [v13 didInvalidCertificateExceptionsApplySuccessfullyForProtectionSpace:v14 inPrivateBrowsing:0];

    if (v15)
    {
      v16 = MEMORY[0x1E695AC48];
      v17 = [v7 protectionSpace];
      v18 = [v16 credentialForTrust:{objc_msgSend(v17, "serverTrust")}];
      v8[2](v8, 0, v18);
LABEL_10:

      goto LABEL_11;
    }

    v23 = [v7 protectionSpace];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController setProtectionSpaceForInvalidCertificateBypass:v23];

    goto LABEL_8;
  }

  v19 = [v7 protectionSpace];
  v20 = [v19 _sf_canAuthenticate];

  if ((v20 & 1) == 0)
  {
LABEL_8:
    v8[2](v8, 3, 0);
    goto LABEL_11;
  }

  v21 = [v9 authenticationMethod];
  v22 = [v21 isEqualToString:*MEMORY[0x1E695AB40]];

  if (!v22)
  {
    v17 = [(_SFBrowserContentViewController *)self webViewController];
    v24 = MEMORY[0x1E69B1B00];
    v25 = [v17 webView];
    v26 = [v25 _committedURL];
    v18 = [v24 authenticationDialogWithAuthenticationChallenge:v7 committedURL:v26 completionHandler:v8];

    v27 = [v17 dialogController];
    v28[4] = self;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __105___SFBrowserContentViewController_webViewController_didReceiveAuthenticationChallenge_completionHandler___block_invoke;
    v29[3] = &unk_1E8490658;
    v29[4] = self;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __105___SFBrowserContentViewController_webViewController_didReceiveAuthenticationChallenge_completionHandler___block_invoke_2;
    v28[3] = &unk_1E8490658;
    [v27 presentDialog:v18 animateAlongsidePresentation:v29 dismissal:v28];

    goto LABEL_10;
  }

  [(_SFPageLoadErrorController *)self->_pageLoadErrorController handleClientCertificateAuthenticationChallenge:v7 completionHandler:v8];
LABEL_11:
}

- (BOOL)webViewControllerShouldFillStringForFind:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76___SFBrowserContentViewController_webViewControllerShouldFillStringForFind___block_invoke;
  v6[3] = &unk_1E8490658;
  v6[4] = self;
  [v4 setHandler:v6];
  LOBYTE(self) = self->_shouldFillStringForFind;

  return self;
}

- (BOOL)webViewControllerCanFindNextOrPrevious:(id)a3
{
  v4 = a3;
  if ([(_SFBrowserContentViewController *)self _onlyWantsWebAppShortcuts])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 webView];
    v7 = [v6 URL];
    if (v7)
    {
      v8 = [MEMORY[0x1E69853A0] _stringForFind];
      v5 = [v8 length] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)webViewControllerShouldAutofillESimInformation:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  [(_SFBrowserContentViewController *)self _hostAuditToken];
  v24 = 0u;
  v25 = 0u;
  v5 = WBSAuditTokenValueArrayForEntitlement();
  if ([v5 containsObject:@"public-cellular-plan"])
  {
    v24 = v22;
    v25 = v23;
    v21 = 0;
    v6 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:&v24 error:&v21];
    v7 = v21;
    if (v6)
    {
      v8 = [v6 bundleIdentifier];
      if (([v8 isEqualToString:@"com.apple.Preferences"]& 1) != 0)
      {
LABEL_4:
        v9 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v10 = [v6 bundleIdentifier];
      v11 = [v10 isEqualToString:@"com.apple.sfapp"];

      if (v11)
      {
        v9 = 1;
LABEL_21:

        goto LABEL_22;
      }

      v8 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];

      if (objc_opt_respondsToSelector())
      {
        v12 = [v4 webView];
        v13 = [v12 URL];
        v14 = [v13 host];
        v15 = [v6 bundleIdentifier];
        v20 = 0;
        v16 = [v8 isAutofilleSIMIdAllowedForDomain:v14 clientBundleIdentifier:v15 error:&v20];
        v7 = v20;

        if (v16)
        {
          goto LABEL_4;
        }

        if (v7)
        {
          v17 = WBS_LOG_CHANNEL_PREFIXESim();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [v7 safari_privacyPreservingDescription];
            objc_claimAutoreleasedReturnValue();
            [_SFBrowserContentViewController webViewControllerShouldAutofillESimInformation:];
          }
        }
      }

      else
      {
        v18 = WBS_LOG_CHANNEL_PREFIXESim();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [_SFBrowserContentViewController webViewControllerShouldAutofillESimInformation:];
        }

        v7 = 0;
      }
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXESim();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [v7 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [_SFBrowserContentViewController webViewControllerShouldAutofillESimInformation:];
      }
    }

    v9 = 0;
    goto LABEL_20;
  }

  v9 = 0;
LABEL_22:

  return v9;
}

- (void)webViewControllerDidUpdateUnderPageBackgroundColor:(id)a3
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {

    [(_SFBrowserContentViewController *)self _updateBarTheme];
  }
}

- (id)_contextMenuConfigurationForWebView:(id)a3 element:(id)a4
{
  v4 = [_SFLinkPreviewHelper contextMenuConfigurationForWebView:a3 elementInfo:a4 handler:self];

  return v4;
}

- (id)_contextMenuContentPreviewForWebView:(id)a3 element:(id)a4
{
  v4 = [_SFLinkPreviewHelper contextMenuContentPreviewForWebView:a3 elementInfo:a4 handler:self];

  return v4;
}

- (void)_willCommitContextMenuForWebView:(id)a3 withAnimator:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 previewViewController];
  objc_opt_class();
  [v6 setPreferredCommitStyle:objc_opt_isKindOfClass() & 1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81___SFBrowserContentViewController__willCommitContextMenuForWebView_withAnimator___block_invoke;
  v9[3] = &unk_1E8490658;
  v8 = v5;
  v10 = v8;
  [v6 addAnimations:v9];
}

- (void)webViewController:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = [a3 webView];
  v10 = [(_SFBrowserContentViewController *)self _contextMenuConfigurationForWebView:v9 element:v11];
  v8[2](v8, v10);
}

- (id)webViewController:(id)a3 contextMenuContentPreviewForElement:(id)a4
{
  v6 = a4;
  v7 = [a3 webView];
  v8 = [(_SFBrowserContentViewController *)self _contextMenuContentPreviewForWebView:v7 element:v6];

  return v8;
}

- (void)webViewController:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5
{
  v8 = a5;
  v7 = [a3 webView];
  [(_SFBrowserContentViewController *)self _willCommitContextMenuForWebView:v7 withAnimator:v8];
}

- (void)webViewController:(id)a3 contextMenuDidEndForElement:(id)a4
{
  v8 = a3;
  v5 = [v8 webView];
  [_SFLinkPreviewHelper invalidateLinkPreviewHelperForWebView:v5];

  [(_SFBrowserContentViewController *)self _invalidatePreviewCloseTimer];
  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__closePreviewDocumentTimerFired_ selector:0 userInfo:0 repeats:0.0];
  previewCloseTimer = self->_previewCloseTimer;
  self->_previewCloseTimer = v6;
}

- (void)_closePreviewDocumentTimerFired:(id)a3
{
  [(WKWebView *)self->_previewWebView _close];
  previewWebView = self->_previewWebView;
  self->_previewWebView = 0;

  [(_SFBrowserContentViewController *)self _invalidatePreviewCloseTimer];
}

- (void)_invalidatePreviewCloseTimer
{
  [(NSTimer *)self->_previewCloseTimer invalidate];
  previewCloseTimer = self->_previewCloseTimer;
  self->_previewCloseTimer = 0;
}

- (void)contextMenuConfigurationForReaderViewController:(id)a3 element:(id)a4 completionHandler:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = [a3 readerWebView];
  v10 = [(_SFBrowserContentViewController *)self _contextMenuConfigurationForWebView:v9 element:v11];
  v8[2](v8, v10);
}

- (void)readerViewController:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5
{
  v8 = a5;
  v7 = [a3 readerWebView];
  [(_SFBrowserContentViewController *)self _willCommitContextMenuForWebView:v7 withAnimator:v8];
}

- (void)readerViewController:(id)a3 contextMenuDidEndForElement:(id)a4
{
  v4 = [a3 readerWebView];
  [_SFLinkPreviewHelper invalidateLinkPreviewHelperForWebView:?];
}

- (id)linkPreviewHelper:(id)a3 previewViewControllerForURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_SFBrowserContentViewController);
  v9 = [(_SFBrowserContentViewController *)v8 browserView];
  [v9 setContentReadyForDisplay];
  v10 = [v6 elementInfo];
  [(_SFBrowserContentViewController *)v8 setActivatedElementInfo:v10];

  v11 = [(_SFBrowserContentViewController *)self view];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(_SFBrowserContentViewController *)v8 view];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = [MEMORY[0x1E69DC888] whiteColor];
  v22 = [(_SFBrowserContentViewController *)v8 view];
  [v22 setBackgroundColor:v21];

  v23 = [SFReaderEnabledWebViewController alloc];
  v24 = [(_SFBrowserContentViewController *)self webViewConfiguration];
  v25 = [(_SFBrowserContentViewController *)self contentBlockerManager];
  v26 = [(SFWebViewController *)v23 initWithWebViewConfiguration:v24 contentBlockerManager:v25];

  [(_SFBrowserContentViewController *)v8 _pushWebViewController:v26];
  v27 = [(_SFBrowserContentViewController *)v8 webViewController];
  v28 = [v27 webView];
  [v28 _setAllowsMediaDocumentInlinePlayback:1];

  [(_SFBrowserContentViewController *)v8 _didLoadWebView];
  v29 = [(_SFBrowserContentViewController *)v8 webViewController];
  v30 = [v29 webView];
  previewWebView = self->_previewWebView;
  self->_previewWebView = v30;

  v32 = [(_SFBrowserContentViewController *)self webView];
  v33 = [v32 _sessionState];

  v34 = [(_SFBrowserContentViewController *)v8 webViewController];
  v35 = [v34 webView];
  v36 = [v35 _restoreSessionState:v33 andNavigate:0];

  [(_SFBrowserContentViewController *)v8 setDisplayMode:1];
  [(_SFReloadOptionsController *)v8->_reloadOptionsController setSupportsAdvancedPrivacyProtections:[(_SFBrowserContentViewController *)self supportsAdvancedPrivacyProtectionsForURL:v7]];
  if ([(_SFReloadOptionsController *)self->_reloadOptionsController loadedUsingDesktopUserAgent])
  {
    [(_SFReloadOptionsController *)v8->_reloadOptionsController requestDesktopSiteWithURL:v7];
  }

  else
  {
    v37 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v7];
    v38 = [(_SFBrowserContentViewController *)self _requestBySettingAdvancedPrivacyProtectionsFlag:v37];

    [(_SFBrowserContentViewController *)v8 loadRequest:v38];
  }

  v39 = [v9 previewHeader];
  [v6 setActiveLinkPreviewHeader:v39];

  return v8;
}

- (void)linkPreviewHelper:(id)a3 commitPreviewViewControllerForAction:(int64_t)a4 withTabOrder:(int64_t)a5
{
  v6 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "Committing link preview of webpage link", v16, 2u);
  }

  [(_SFBrowserContentViewController *)self _invalidatePreviewCloseTimer];
  previewWebView = self->_previewWebView;
  self->_previewWebView = 0;

  v9 = [v6 previewContentViewController];
  v10 = [v9 webViewController];
  v11 = [v10 webView];
  v12 = [(_SFBrowserContentViewController *)self view];
  [v12 bounds];
  [v11 setBounds:?];

  v13 = [(_SFBrowserContentViewController *)self view];
  [v13 bounds];
  UIRectGetCenter();
  [v11 setCenter:?];

  v14 = *(MEMORY[0x1E695EFD0] + 16);
  v16[0] = *MEMORY[0x1E695EFD0];
  v16[1] = v14;
  v16[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v11 setTransform:v16];
  [v11 _setAllowsMediaDocumentInlinePlayback:0];
  v15 = [v11 _unreachableURL];

  if (v15)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController webViewDidCommitErrorPagePreview:v11];
  }

  [v9 _invalidateWebViewControllers];
  [(_SFBrowserContentViewController *)self _popWebViewController];
  [(_SFBrowserContentViewController *)self _pushWebViewController:v10];
  [(_SFBrowserContentViewController *)self _hideReaderAnimated:0 deactivationMode:0];
  [(_SFBrowserContentViewController *)self _updateUI];
}

- (id)linkPreviewHelper:(id)a3 resultOfLoadingURL:(id)a4
{
  v5 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:a4];
  v6 = [(_SFBrowserContentViewController *)self resultOfLoadingRequest:v5 inMainFrame:1 disallowRedirectToExternalApps:0];

  return v6;
}

- (void)linkPreviewHelper:(id)a3 redirectToExternalNavigationResult:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695AC68];
  v9 = v5;
  v7 = [v5 URL];
  v8 = [v6 safari_nonAppInitiatedRequestWithURL:v7];
  [(_SFBrowserContentViewController *)self _redirectToExternalNavigationResult:v9 fromOriginalRequest:v8 promptPolicy:0 isMainFrame:1 userAction:0];
}

- (void)linkPreviewHelper:(id)a3 didProduceNavigationIntent:(id)a4 forAction:(int64_t)a5
{
  v6 = MEMORY[0x1E695AC68];
  v8 = [a4 URL];
  v7 = [v6 safari_nonAppInitiatedRequestWithURL:?];
  [(_SFBrowserContentViewController *)self loadRequest:v7];
}

- (void)linkPreviewHelperWillDisableLinkPreview
{
  [(WKWebView *)self->_previewWebView _close];
  previewWebView = self->_previewWebView;
  self->_previewWebView = 0;
}

- (void)webViewController:(id)a3 printFrame:(id)a4
{
  v5 = a4;
  if ([(_SFBrowserContentViewController *)self canPrint])
  {
    [(_SFPrintController *)self->_printController printFrame:v5 initiatedByWebContent:1 completion:0];
  }
}

- (void)webViewController:(id)a3 didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)a4 uti:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = objc_alloc(MEMORY[0x1E69B1B78]);
  if (self->_suggestedFilenameForNextCommit)
  {
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
  }

  else
  {
    suggestedFilenameForNextCommit = v12;
  }

  v10 = [v8 initWithFileName:suggestedFilenameForNextCommit uti:v7];
  quickLookDocumentWriter = self->_quickLookDocumentWriter;
  self->_quickLookDocumentWriter = v10;
}

- (id)webViewController:(id)a3 didStartDownload:(id)a4
{
  v5 = a4;
  if (self->_activeDownload)
  {
    v6 = 0;
  }

  else
  {
    v7 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
    v6 = [v7 downloadFromWKDownload:v5 userInitiatedAction:self->_lastUserInitiatedAction];
    [v6 setDelegate:self];
    [v6 setFluidProgressController:self->_fluidProgressController];
    objc_storeStrong(&self->_activeDownload, v6);
  }

  return v6;
}

- (void)webViewController:(id)a3 decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)a4 forExtension:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v7[2](v7, [(_SFBrowserContentViewController *)self _isPreviewing]);
}

- (BOOL)printControllerPageIsLoading:(id)a3
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  v4 = [v3 isLoading];

  return v4;
}

- (BOOL)isPageEligibileToShowNotSecureWarning
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  v4 = [v3 webView];
  v5 = [(_SFBrowserView *)self->_browserView quickLookDocumentView];

  if (v5)
  {
    if ([v3 didFirstVisuallyNonEmptyLayout])
    {
      v6 = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
      v7 = [v6 safari_isEligibleToShowNotSecureWarning];
LABEL_11:

      goto LABEL_12;
    }
  }

  else if ([v3 didFirstVisuallyNonEmptyLayout])
  {
    v6 = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
    if (([v6 safari_isEligibleToShowNotSecureWarning] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v4, "_negotiatedLegacyTLS"))
    {
      v8 = [v4 _committedURL];
      v9 = [v8 host];
      v10 = [v9 safari_highLevelDomainFromHost];
      v11 = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
      v12 = [v11 host];
      v13 = [v12 safari_highLevelDomainFromHost];
      v7 = [v10 isEqualToString:v13];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)updateBottomBarOffset:(double)a3 topBarHeight:(double)a4
{
  [(_SFBrowserView *)self->_browserView setBottomBarOffset:a3];
  browserView = self->_browserView;

  [(_SFBrowserView *)browserView setTopBarHeight:a4];
}

- (void)_receivedTouchDown:(id)a3
{
  if ([a3 state] == 3)
  {
    stepperContainer = self->_stepperContainer;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54___SFBrowserContentViewController__receivedTouchDown___block_invoke;
    v5[3] = &unk_1E8490658;
    v5[4] = self;
    [(SFStepperContainer *)stepperContainer hideStepperWithCompletion:v5];
  }
}

- (void)_receivedTouchUp:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3 && self->_stepperMovedToRootView)
  {
    self->_stepperMovedToRootView = 0;
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:1];
  }
}

- (void)stopLoading
{
  v4 = [(_SFBrowserContentViewController *)self webViewController];
  [v4 setLoading:0];
  v3 = [v4 webView];
  [v3 stopLoading];

  [(WBSFluidProgressController *)self->_fluidProgressController cancelFluidProgressWithProgressStateSource:self];
}

- (BOOL)dynamicBarAnimator:(id)a3 canTransitionToState:(int64_t)a4 byDraggingWithOffset:(double)a5
{
  v9 = a3;
  if (a4 == 1)
  {
    v5 = !self->_keepBarsMinimized;
  }

  else if (!a4)
  {
    if ([(UIPanGestureRecognizer *)self->_hideNavigationBarGestureRecognizer state]<= 0)
    {
      v10 = [(_SFBrowserContentViewController *)self _currentWebView];
      v11 = [v10 scrollView];

      [v11 contentSize];
      v13 = v12;
      [v11 contentInset];
      v15 = v14;
      [v11 bounds];
      MaxY = CGRectGetMaxY(v19);
      [(_SFBrowserContentViewController *)self _bottomToolbarHeight];
      v5 = v13 + v15 - MaxY - a5 > v17;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)dynamicBarAnimatorWillEnterSteadyState:(id)a3
{
  v4 = a3;
  [(_SFBrowserContentViewController *)self _updateMaxVisibleHeightPercentageUserDriven:1];
  if ([v4 state] == 1)
  {
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator setIgnoresDragging:0];
    self->_alwaysShowTopBar = 0;
  }
}

- (void)dynamicBarAnimatorStateDidChange:(id)a3
{
  v4 = a3;
  if (self->_keepBarsMinimized && [v4 state] == 1)
  {
    self->_keepBarsMinimized = 0;
    [(_SFBrowserContentViewController *)self _updateWebViewLayoutSize];
  }
}

- (void)dynamicBarAnimatorOutputsDidChange:(id)a3
{
  v9 = a3;
  [v9 topBarHeight];
  if (self->_alwaysShowTopBar)
  {
    v4 = [(_SFBrowserView *)self->_browserView navigationBar];
    [v4 defaultHeight];
  }

  [v9 bottomBarOffset];
  [_SFBrowserContentViewController updateBottomBarOffset:"updateBottomBarOffset:topBarHeight:" topBarHeight:?];
  [(_SFBrowserContentViewController *)self _updateCrashBannerOffset];
  [(_SFBrowserContentViewController *)self _updatePinnableBannerOffset];
  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
  if (self->_pageScrollsWithBottomBar)
  {
    [(_SFBrowserView *)self->_browserView safeAreaInsets];
    [v9 bottomBarOffset];
    [(_SFBrowserView *)self->_browserView bounds];
    CGRectGetHeight(v11);
    v5 = [(_SFBrowserView *)self->_browserView toolbar];
    [v5 bounds];
    CGRectGetHeight(v12);

    v6 = [(_SFBrowserView *)self->_browserView toolbar];
    [v6 frame];
    CGRectGetMinY(v13);

    v7 = [(_SFBrowserView *)self->_browserView currentWebView];
    v8 = [v7 scrollView];

    [v8 contentOffset];
    [v8 setContentOffset:?];
  }

  self->_shouldAutoHideHomeIndicator = [v9 state] == 0;
  [(_SFBrowserContentViewController *)self _updateHomeIndicatorAutoHideState];
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  dynamicBarAnimator = self->_dynamicBarAnimator;
  if (dynamicBarAnimator && ![(_SFDynamicBarAnimator *)dynamicBarAnimator state])
  {
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:1];
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  self->_scrollViewIsDragging = 1;
  v8 = v4;
  [v4 contentOffset];
  [(_SFBrowserContentViewController *)self _crashBannerDraggingOffsetForContentOffset:?];
  self->_crashBannerDraggingOffset = v5;
  if ([(_SFBrowserContentViewController *)self _effectiveBarCollapsingEnabled])
  {
    dynamicBarAnimator = self->_dynamicBarAnimator;
    [v8 contentOffset];
    [(_SFDynamicBarAnimator *)dynamicBarAnimator beginDraggingWithOffset:v7];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v10 = a3;
  [(_SFBrowserContentViewController *)self _updateScrollToTopView];
  if (self->_showingCrashBanner)
  {
    [(_SFBrowserContentViewController *)self _updateCrashBannerOffset];
    [(_SFBrowserView *)self->_browserView crashBannerOffset];
    v5 = v4;
    v6 = [(_SFBrowserView *)self->_browserView crashBanner];
    [v6 bounds];
    v7 = -CGRectGetHeight(v12);

    if (v5 < v7)
    {
      [(_SFBrowserContentViewController *)self _setShowingCrashBanner:0 animated:0];
    }
  }

  if (self->_showingPinnableBanner)
  {
    [(_SFBrowserContentViewController *)self _updatePinnableBannerOffset];
  }

  if (self->_showingCrashBanner || self->_showingPinnableBanner)
  {
    [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
  }

  [(_SFBrowserView *)self->_browserView layoutIfNeeded];
  if ([(_SFBrowserContentViewController *)self _effectiveBarCollapsingEnabled])
  {
    if ([(_SFDynamicBarAnimator *)self->_dynamicBarAnimator isTrackingDrag])
    {
      self->_pageScrollsWithBottomBar = 0;
    }

    [(_SFBrowserContentViewController *)self _updateDynamicBarGeometry];
    if (self->_scrollViewIsDragging)
    {
      if (self->_usesNarrowLayout && [v10 _sf_isScrolledToOrPastBottom] && !self->_keepBarsMinimized)
      {
        [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:1];
      }

      dynamicBarAnimator = self->_dynamicBarAnimator;
      [v10 contentOffset];
      [(_SFDynamicBarAnimator *)dynamicBarAnimator updateDraggingWithOffset:v9];
      [(_SFBrowserContentViewController *)self _updateMaxVisibleHeightPercentageUserDriven:1];
    }
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (self->_scrollViewIsDragging)
  {
    y = a4.y;
    self->_scrollViewIsDragging = 0;
    if ([(_SFBrowserContentViewController *)self _effectiveBarCollapsingEnabled:a3])
    {
      dynamicBarAnimator = self->_dynamicBarAnimator;
      v9 = a5->y;

      [(_SFDynamicBarAnimator *)dynamicBarAnimator endDraggingWithTargetOffset:v9 velocity:y * 1000.0];
    }
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(_SFBrowserContentViewController *)self _didCompleteScrolling];
  }
}

- (void)_updateModalInPresentation
{
  if ([(_SFBrowserContentViewController *)self _isUsedForAuthentication]|| [(SFSafariViewControllerConfiguration *)self->_configuration _isPerformingAccountSecurityUpgrade])
  {

    [(_SFBrowserContentViewController *)self setModalInPresentation:1];
  }
}

- (BOOL)_shouldReloadImmediatelyAfterPageLoadError
{
  v2 = [(_SFBrowserContentViewController *)self viewIfLoaded];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  if (v4)
  {
    v5 = [v4 activationState] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSafariDataSharingMode:(int64_t)a3
{
  if (self->_safariDataSharingMode != a3)
  {
    v5 = [(_SFBrowserContentViewController *)self webView];
    v14 = [v5 URL];

    [(_SFBrowserContentViewController *)self _hideReaderAnimated:0 deactivationMode:0];
    [(_SFBrowserContentViewController *)self _invalidateWebViewControllers];
    bottomToolbar = self->_bottomToolbar;
    self->_bottomToolbar = 0;

    self->_safariDataSharingMode = a3;
    v7 = [SFReaderEnabledWebViewController alloc];
    v8 = [(_SFBrowserContentViewController *)self webViewConfiguration];
    v9 = [(_SFBrowserContentViewController *)self contentBlockerManager];
    v10 = [(SFWebViewController *)v7 initWithWebViewConfiguration:v8 contentBlockerManager:v9];

    [(_SFBrowserContentViewController *)self _pushWebViewController:v10];
    v11 = [(_SFBrowserContentViewController *)self _persona];
    v12 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor requestDesktopSitePreferenceManager];
    [v12 setClientPrefersMobileUserAgentByDefault:((v11 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0];

    if (v14)
    {
      v13 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v14];
      [(_SFBrowserContentViewController *)self loadRequest:v13];
    }

    [(_SFBrowserContentViewController *)self _updateModalInPresentation];
  }
}

- (void)navigationBarMetricsDidChange:(id)a3
{
  [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:0];
  v4 = [(_SFBrowserView *)self->_browserView navigationBar];
  [v4 defaultHeight];
  [(_SFBrowserView *)self->_browserView setTopBarHeight:?];

  [(_SFBrowserContentViewController *)self _layOutBrowserViewForSizeTransition];

  [(_SFBrowserContentViewController *)self _didCompleteViewSizeTransition];
}

- (id)pageFormatMenuController
{
  pageFormatMenuController = self->_pageFormatMenuController;
  if (!pageFormatMenuController)
  {
    v4 = [[_SFPageFormatMenuController alloc] initWithBrowserContentController:self];
    v5 = self->_pageFormatMenuController;
    self->_pageFormatMenuController = v4;

    pageFormatMenuController = self->_pageFormatMenuController;
  }

  return pageFormatMenuController;
}

- (void)navigationBarFormatMenuButtonWasTapped:(id)a3
{
  v4 = a3;
  v5 = [(_SFBrowserContentViewController *)self pageFormatMenuController];
  v6 = [v5 viewController];
  v7 = [v6 presentingViewController];

  if (!v7)
  {
    v8 = [MEMORY[0x1E69C8810] sharedLogger];
    [v8 reportSVCToolbarButtonUsage:35];
  }

  [(_SFBrowserContentViewController *)self _dismissTransientUIAnimated:1];
  v9 = [v4 formatMenuButtonPopoverSourceInfo];
  v10 = [v5 presentMenuFromViewController:self withSourceInfo:v9 fromSafariViewController:1];

  if (v10)
  {
    v11 = [(_SFBrowserContentViewController *)self assistantController];
    v12 = [(_SFBrowserContentViewController *)self webView];
    v13 = [v12 _committedURL];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74___SFBrowserContentViewController_navigationBarFormatMenuButtonWasTapped___block_invoke;
    v14[3] = &unk_1E8494B08;
    v15 = v5;
    [v11 updateAssistantContentForURL:v13 completionHandler:v14];
  }
}

- (void)navigationBarFormatMenuButtonBecameUnavailable:(id)a3
{
  v4 = [(_SFBrowserContentViewController *)self pageFormatMenuController];
  v3 = [v4 viewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_hideNavigationBarGestureRecognized:(id)a3
{
  v10 = a3;
  [v10 translationInView:self->_browserView];
  v5 = v4;
  v6 = [(_SFBrowserView *)self->_browserView currentWebView];
  v7 = [v10 state];
  if ((v7 - 3) >= 3)
  {
    v9 = -v5;
    if (v7 == 1)
    {
      [v6 _beginInteractiveObscuredInsetsChange];
      [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator beginDraggingWithOffset:v9];
    }

    else if (v7 == 2)
    {
      [(_SFBrowserContentViewController *)self _updateDynamicBarGeometry];
      [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator updateDraggingWithOffset:v9];
    }
  }

  else
  {
    [v6 _endInteractiveObscuredInsetsChange];
    [v10 velocityInView:self->_browserView];
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator endDraggingWithTargetOffset:(v8 / log(*MEMORY[0x1E69DE3A8]) - v5) velocity:v8 * -1000.0];
    if (![(_SFDynamicBarAnimator *)self->_dynamicBarAnimator targetState])
    {
      self->_keepBarsMinimized = 1;
    }
  }
}

- (void)navigationBarReaderButtonWasTapped:(id)a3
{
  v8 = a3;
  if (self->_showingReader || (-[_SFBrowserContentViewController webViewController](self, "webViewController"), v4 = objc_claimAutoreleasedReturnValue(), [v4 readerController], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isReaderAvailable"), v5, v4, v6))
  {
    [(_SFBrowserContentViewController *)self toggleShowingReaderForUserAction];
  }

  v7 = [MEMORY[0x1E69C8810] sharedLogger];
  [v7 reportSVCToolbarButtonUsage:25];
}

- (void)navigationBarTranslateButtonWasTapped:(id)a3
{
  v10 = a3;
  v4 = [(_SFBrowserContentViewController *)self translationContext];
  v5 = [v4 availableTargetLocaleIdentifiers];
  v6 = [v5 count];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = [v5 objectAtIndexedSubscript:0];
      [v4 requestTranslatingWebpageToLocale:v7 completionHandler:0];
    }

    else
    {
      v7 = [_SFTranslationTargetLocaleAlertController translationAlertControllerWithTranslationContext:v4];
      v8 = [v10 formatMenuButtonPopoverSourceInfo];
      [v7 configurePopoverWithSourceInfo:v8];

      [(_SFBrowserContentViewController *)self presentViewController:v7 animated:1 completion:0];
    }
  }

  v9 = [MEMORY[0x1E69C8810] sharedLogger];
  [v9 reportSVCToolbarButtonUsage:27];
}

- (void)_translationAvailabilityDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69___SFBrowserContentViewController__translationAvailabilityDidChange___block_invoke;
  v6[3] = &unk_1E848F9B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)navigationBarFormatMenuButtonStartedInteraction:(id)a3
{
  v4 = [(_SFBrowserContentViewController *)self webViewController];
  v3 = [v4 readerController];
  [v3 checkReaderAvailability];
}

- (void)navigationBarReloadButtonWasTapped:(id)a3
{
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    [(_SFBrowserContentViewController *)self _reloadFromOrigin:0];
    self->_isNavigatingViaNormalReload = 1;
    v4 = [MEMORY[0x1E69C8810] sharedLogger];
    [v4 reportSVCToolbarButtonUsage:22];
  }
}

- (void)_reloadFromOrigin:(BOOL)a3
{
  v3 = a3;
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    self->_externalAppRedirectState = 4;
    self->_loadWasUserDriven = 1;
    [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
    v9 = [(_SFBrowserContentViewController *)self webViewController];
    v5 = [v9 webView];
    [v9 setLoading:1];
    if (v3)
    {
      v6 = [v5 reloadFromOrigin];
    }

    else
    {
      v7 = [v5 reload];
    }

    [(_SFReaderViewController *)self->_readerViewController setDelegate:0];
    readerViewController = self->_readerViewController;
    self->_readerViewController = 0;
  }
}

- (void)navigationBarStopLoadingButtonWasTapped:(id)a3
{
  v5 = [(_SFBrowserContentViewController *)self webViewController];
  [v5 setLoading:0];
  v3 = [v5 webView];
  [v3 stopLoading];

  v4 = [MEMORY[0x1E69C8810] sharedLogger];
  [v4 reportSVCToolbarButtonUsage:23];
}

- (id)navigationBarURLForSharing:(id)a3
{
  v3 = [(_SFBrowserContentViewController *)self webView];
  v4 = [v3 URL];
  v5 = [v3 title];
  [v4 _setTitle:v5];

  return v4;
}

- (void)navigationBarMediaStateMuteButtonWasTapped:(id)a3
{
  v4 = [(_SFBrowserContentViewController *)self webView];
  if (_SFMediaStateIconIsMuted())
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  [v4 _setPageMuted:v3];
}

- (void)navigationBar:(id)a3 didCreateLeadingToolbar:(id)a4 trailingToolbar:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(_SFBrowserContentViewController *)self _persona];
  [(_SFBarManager *)self->_barManager registerToolbar:v9 withLayout:0 persona:v8];
  [(_SFBarManager *)self->_barManager registerToolbar:v7 withLayout:1 persona:v8];
}

- (void)navigationBar:(id)a3 didCreateBar:(id)a4 trailingBar:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(_SFBrowserContentViewController *)self _persona];
  [(_SFBarManager *)self->_barManager registerBar:v9 withLayout:0 persona:v8];
  [(_SFBarManager *)self->_barManager registerBar:v7 withLayout:1 persona:v8];
}

- (BOOL)createFluidProgressState
{
  downloadToShowInQuickLook = self->_downloadToShowInQuickLook;
  if (!downloadToShowInQuickLook && !self->_fluidProgressState)
  {
    v4 = [objc_alloc(MEMORY[0x1E69C97C8]) initWithType:0];
    fluidProgressState = self->_fluidProgressState;
    self->_fluidProgressState = v4;

    v6 = self->_fluidProgressState;
    v7 = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
    v8 = [v7 safari_originalDataAsString];
    [(WBSFluidProgressState *)v6 setLoadURL:v8];
  }

  return downloadToShowInQuickLook == 0;
}

- (void)clearFluidProgressState
{
  fluidProgressState = self->_fluidProgressState;
  self->_fluidProgressState = 0;
}

- (void)_setSuppressingPreviewProgressAnimation:(BOOL)a3
{
  if (self->_isSuppressingPreviewProgressAnimation != a3)
  {
    v3 = a3;
    self->_isSuppressingPreviewProgressAnimation = a3;
    v5 = [(_SFBrowserView *)self->_browserView previewHeader];
    v6 = [v5 progressView];

    if (v6)
    {
      [(WBSFluidProgressController *)self->_fluidProgressController setProgressAnimationSuppressed:v3 forProgressStateSource:self animated:0];
    }
  }
}

- (id)expectedOrCurrentURL
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v2 URL];

  return v3;
}

- (double)estimatedProgress
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  [v2 estimatedProgress];
  v4 = v3;

  return v4;
}

- (BOOL)hasFailedURL
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v2 _unreachableURL];
  v4 = v3 != 0;

  return v4;
}

- (id)currentFluidProgressStateSource
{
  activeDownload = self->_activeDownload;
  if (activeDownload)
  {
    v3 = activeDownload;
  }

  else
  {
    v5 = [(_SFBrowserContentViewController *)self translationContext];
    v3 = v5;
    if (!self->_shouldReflectTranslationAsFluidProgress || v5 == 0)
    {
      v7 = self;

      v3 = v7;
    }
  }

  return v3;
}

- (void)fluidProgressRocketAnimationDidComplete
{
  if (self->_shouldReflectTranslationAsFluidProgress)
  {
    v2 = [(_SFBrowserContentViewController *)self translationContext];
    [v2 clearFluidProgressState];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_showBarsFromBottomBarRecognizer == v6)
  {
    if (self->_keepBarsMinimized || [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator state])
    {
      v8 = 0;
    }

    else
    {
      [(_SFBrowserView *)self->_browserView bounds];
      v11 = v10;
      [v7 locationInView:self->_browserView];
      v13 = v12;
      v14 = [(_SFBrowserView *)self->_browserView toolbar];
      [v14 bounds];
      v8 = v11 - v13 < CGRectGetHeight(v15);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hideNavigationBarGestureRecognizer == v4)
  {
    LOBYTE(self) = [(_SFBrowserContentViewController *)self canHideToolbar];
  }

  else if (self->_showBarsFromBottomBarRecognizer == v4)
  {
    LODWORD(self) = ![(_SFDynamicBarAnimator *)self->_dynamicBarAnimator isTrackingDrag];
  }

  else
  {
    LOBYTE(self) = 1;
  }

  return self;
}

- (id)pageLoadErrorControllerGetSecIdentityPreferencesController:(id)a3
{
  secIdentityPreferencesController = self->_secIdentityPreferencesController;
  if (!secIdentityPreferencesController)
  {
    v5 = +[_SFSecIdentityPreferencesController sharedPersistentSecIdentityPreferencesController];
    v6 = self->_secIdentityPreferencesController;
    self->_secIdentityPreferencesController = v5;

    secIdentityPreferencesController = self->_secIdentityPreferencesController;
  }

  return secIdentityPreferencesController;
}

- (void)pageLoadErrorControllerReloadUsingHTTPSOnlyBypass:(id)a3
{
  v4 = [(_SFBrowserContentViewController *)self webView];
  v5 = [v4 URL];
  v6 = [v5 host];
  v7 = [v6 safari_highLevelDomainFromHost];
  highLevelDomainForHTTPSOnlyBypass = self->_highLevelDomainForHTTPSOnlyBypass;
  self->_highLevelDomainForHTTPSOnlyBypass = v7;

  [(_SFBrowserContentViewController *)self reload];
}

- (void)downloadDidFail:(id)a3
{
  activeDownload = self->_activeDownload;
  self->_activeDownload = 0;
}

- (void)downloadDidFinish:(id)a3
{
  v4 = a3;
  activeDownload = self->_activeDownload;
  self->_activeDownload = 0;

  if ([(_SFBrowserContentViewController *)self _canShowDownloadWithoutPrompting:v4])
  {
    [(_SFBrowserContentViewController *)self _showDownload:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69B1B00];
    v7 = [v4 fileType];
    v8 = [v4 wkDownload];
    v9 = [v8 originatingFrame];
    v10 = [v9 securityOrigin];
    v11 = [(_SFBrowserContentViewController *)self webView];
    v12 = [v11 URL];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53___SFBrowserContentViewController_downloadDidFinish___block_invoke;
    v15[3] = &unk_1E8494D60;
    objc_copyWeak(&v17, &location);
    v16 = v4;
    v13 = [v6 downloadBlockedDialogWithFileType:v7 initiatingSecurityOrigin:v10 presentingURL:v12 completionHandler:v15];

    v14 = [(_SFBrowserContentViewController *)self webViewController];
    [v14 presentDialog:v13 sender:self];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)downloadShouldContinueAfterReceivingResponse:(id)a3 decisionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 fileType] == 2)
  {
    v7 = [v9 quickLookDocument];

    if (!v7)
    {
      v8 = [(_SFBrowserContentViewController *)self _quickLookDocumentForDownload:v9];
      [v9 setQuickLookDocument:v8];
    }
  }

  v6[2](v6, 1);
}

- (BOOL)_canShowDownloadWithoutPrompting:(id)a3
{
  v4 = a3;
  if ([v4 fileType] == 1 || objc_msgSend(v4, "fileType") == 6)
  {
    LOBYTE(v5) = 0;
  }

  else if ([v4 fileType] == 2 || self->_canOpenDownloadForInitialLoad)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v7 = [v4 userInitiatedAction];
    v8 = v7;
    if (v7 && v7 == self->_lastUserInitiatedAction)
    {
      v5 = [(_WKUserInitiatedAction *)v7 isConsumed]^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_showDownload:(id)a3
{
  v5 = a3;
  v6 = [v5 fileType];
  v7 = [v5 fileDownloadPath];
  self->_canOpenDownloadForInitialLoad = 0;
  v8 = [v5 userInitiatedAction];
  v9 = [v8 isConsumed];

  if ((v9 & 1) == 0)
  {
    v10 = [v5 userInitiatedAction];
    [v10 consume];
  }

  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v7];
      v24 = [MEMORY[0x1E696AC08] defaultManager];
      [v24 _web_removeFileOnlyAtPath:v7];

      if (!v13)
      {
        v38 = WBS_LOG_CHANNEL_PREFIXDownloads();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [_SFBrowserContentViewController _showDownload:];
        }

        [(_SFPageLoadErrorController *)self->_pageLoadErrorController addInvalidProfileAlert];
        goto LABEL_32;
      }

      v25 = [MEMORY[0x1E69ADFB8] sharedConnection];
      v26 = [v7 lastPathComponent];
      v27 = [(_SFBrowserContentViewController *)self bundleIdentifierForProfileInstallation];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __49___SFBrowserContentViewController__showDownload___block_invoke_365;
      v41[3] = &unk_1E8495008;
      v41[4] = self;
      [v25 queueFileDataForAcceptance:v13 originalFileName:v26 forBundleID:v27 completion:v41];

      goto LABEL_31;
    }

    if (v6 == 2)
    {
      v34 = [MEMORY[0x1E69C8810] sharedLogger];
      v35 = [v5 mimeType];
      v36 = [v5 uti];
      [v34 _sf_didBeginDownloadWithMIMEType:v35 uti:v36 downloadType:0 promptType:0 browserPersona:{-[_SFBrowserContentViewController _persona](self, "_persona")}];

      objc_storeStrong(&self->_downloadToShowInQuickLook, a3);
      v37 = [v5 quickLookDocument];
      [v37 setSavedPath:v7 shouldDelete:1];

      v13 = [(_SFBrowserContentViewController *)self webView];
      v25 = [v5 sourceURL];
      [(_SFContactPreviewViewController *)v13 _loadAlternateHTMLString:0 baseURL:0 forUnreachableURL:v25];
      goto LABEL_31;
    }

    if (v6 != 3)
    {
      goto LABEL_33;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v7 isDirectory:0];
    v16 = [v5 uti];
    if (v16)
    {
      v17 = [MEMORY[0x1E6982C40] typeWithIdentifier:v16];
      v18 = v17;
      if (v17 && ([v17 conformsToType:*MEMORY[0x1E69831A0]] & 1) != 0)
      {
        v51 = 0;
        v52 = &v51;
        v53 = 0x2050000000;
        v19 = getPKPassesXPCContainerClass(void)::softClass;
        v54 = getPKPassesXPCContainerClass(void)::softClass;
        if (!getPKPassesXPCContainerClass(void)::softClass)
        {
          v46 = MEMORY[0x1E69E9820];
          v47 = 3221225472;
          v48 = ___ZL28getPKPassesXPCContainerClassv_block_invoke;
          v49 = &unk_1E848F7D0;
          v50 = &v51;
          ___ZL28getPKPassesXPCContainerClassv_block_invoke(&v46);
          v19 = v52[3];
        }

        v20 = v19;
        _Block_object_dispose(&v51, 8);
        v21 = [[v19 alloc] initWithFileURL:v15];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __49___SFBrowserContentViewController__showDownload___block_invoke;
        v43[3] = &unk_1E8494FE0;
        v44 = v14;
        [v21 unarchivePassesWithBlock:v43];
        v22 = 0;
        v23 = v44;
LABEL_42:

        if (![v14 count] || v22)
        {
          [(_SFBrowserContentViewController *)self _showGenericDownloadAlert];
        }

        else
        {
          [(_SFBrowserContentViewController *)self _showPassBookControllerForPasses:v14];
        }

        goto LABEL_33;
      }
    }

    else
    {
      v18 = 0;
    }

    v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v15];
    v51 = 0;
    v52 = &v51;
    v53 = 0x2050000000;
    v39 = getPKPassClass(void)::softClass;
    v54 = getPKPassClass(void)::softClass;
    if (!getPKPassClass(void)::softClass)
    {
      v46 = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = ___ZL14getPKPassClassv_block_invoke;
      v49 = &unk_1E848F7D0;
      v50 = &v51;
      ___ZL14getPKPassClassv_block_invoke(&v46);
      v39 = v52[3];
    }

    v40 = v39;
    _Block_object_dispose(&v51, 8);
    v45 = 0;
    v23 = [v39 createWithData:v21 warnings:0 error:&v45];
    v22 = v45;
    [v14 safari_addObjectUnlessNil:v23];
    goto LABEL_42;
  }

  if (v6 > 5)
  {
    if (v6 != 6)
    {
      if (v6 == 7)
      {
        v13 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v7 isDirectory:0];
        [(_SFBrowserContentViewController *)self _showFinanceKitOrderPreviewControllerWithURL:v13 dismissalHandler:0];
        if (([v5 explicitlySaved] & 1) == 0)
        {
          [v5 removeFromDisk];
        }

        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x2050000000;
    v32 = getCLKWatchFaceLibraryClass(void)::softClass;
    v54 = getCLKWatchFaceLibraryClass(void)::softClass;
    if (!getCLKWatchFaceLibraryClass(void)::softClass)
    {
      v46 = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = ___ZL27getCLKWatchFaceLibraryClassv_block_invoke;
      v49 = &unk_1E848F7D0;
      v50 = &v51;
      ___ZL27getCLKWatchFaceLibraryClassv_block_invoke(&v46);
      v32 = v52[3];
    }

    v33 = v32;
    _Block_object_dispose(&v51, 8);
    v13 = objc_alloc_init(v32);
    v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __49___SFBrowserContentViewController__showDownload___block_invoke_362;
    v42[3] = &unk_1E84906D0;
    v42[4] = self;
    [(_SFContactPreviewViewController *)v13 _addWatchFaceAtURL:v25 shouldValidate:0 completionHandler:v42];
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  if (v6 != 4)
  {
    v11 = [_SFContactPreviewViewController alloc];
    v12 = [v5 sourceURL];
    v13 = [(_SFContactPreviewViewController *)v11 initWithFilePath:v7 sourceURL:v12 deleteFileWhenDone:1 beforeDismissHandler:0];

    if (v13)
    {
      [(_SFBrowserContentViewController *)self presentViewController:v13 animated:1 completion:0];
    }

    else
    {
      [v5 removeFromDisk];
      [(_SFBrowserContentViewController *)self _showGenericDownloadAlert];
    }

    goto LABEL_32;
  }

  v28 = [v5 sourceURL];
  v29 = [(_SFBrowserContentViewController *)self _showICSControllerForPath:v7 sourceURL:v28];

  if (!v29)
  {
    v30 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [_SFBrowserContentViewController _showDownload:];
    }

    v31 = [MEMORY[0x1E696AC08] defaultManager];
    [v31 _web_removeFileOnlyAtPath:v7];

    [(_SFBrowserContentViewController *)self _showGenericDownloadAlert];
  }

LABEL_33:
}

- (void)_showPassBookControllerForPasses:(id)a3
{
  v5 = a3;
  v4 = [objc_alloc(getPKAddPassesViewControllerClass()) initWithPasses:v5 fromPresentationSource:0];
  [v4 setDelegate:self];
  [(_SFBrowserContentViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_showFinanceKitOrderPreviewControllerWithURL:(id)a3 dismissalHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v8 = getFKSaveOrderClass(void)::softClass;
  v19 = getFKSaveOrderClass(void)::softClass;
  if (!getFKSaveOrderClass(void)::softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZL19getFKSaveOrderClassv_block_invoke;
    v15[3] = &unk_1E848F7D0;
    v15[4] = &v16;
    ___ZL19getFKSaveOrderClassv_block_invoke(v15);
    v8 = v17[3];
  }

  v9 = v8;
  _Block_object_dispose(&v16, 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97___SFBrowserContentViewController__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke;
  v11[3] = &unk_1E8495030;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [v8 saveOrderAtURL:v6 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (BOOL)_showICSControllerForPath:(id)a3 sourceURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_SFICSPreviewViewController alloc] initWithFilePath:v6 sourceURL:v7];
  v9 = v8;
  if (v8)
  {
    [(_SFICSPreviewViewController *)v8 setModalPresentationStyle:2];
    [(_SFBrowserContentViewController *)self presentViewController:v9 animated:1 completion:0];
  }

  return v9 != 0;
}

- (void)_fetchSharingURLWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_SFBrowserContentViewController *)self webView];
  v6 = [v5 URL];
  v7 = [[_SFSharingLinkExtractor alloc] initWithWebView:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73___SFBrowserContentViewController__fetchSharingURLWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E8495058;
  v8 = v6;
  v11 = v8;
  v9 = v4;
  v12 = v9;
  [(_SFSharingLinkExtractor *)v7 fetchSharingLinkWithCompletionHandler:v10];
}

- (id)_itemProviderCollectionForSharingURL:(id)a3 title:(id)a4
{
  v5 = a3;
  v6 = [(_SFBrowserContentViewController *)self webView];
  v7 = [[_SFActivityItemProviderCollection alloc] initWithWebView:v6];
  -[_SFActivityItemProviderCollection setDisplayingStandaloneImage:](v7, "setDisplayingStandaloneImage:", [v6 _isDisplayingStandaloneImageDocument]);
  -[_SFActivityItemProviderCollection setDisplayingStandaloneMedia:](v7, "setDisplayingStandaloneMedia:", [v6 _isDisplayingStandaloneMediaDocument]);
  v8 = [_SFLinkWithPreviewActivityItemProvider alloc];
  v9 = [v6 title];
  v10 = [(_SFLinkWithPreviewActivityItemProvider *)v8 initWithPlaceholderItem:v5 URL:v5 pageTitle:v9 webView:v6];
  [(_SFActivityItemProviderCollection *)v7 setLinkProvider:v10];

  if (![(_SFBrowserContentViewController *)self isShowingErrorPage])
  {
    v11 = [_SFActivityViewController activeWebPageExtensionItemForURL:v5 withPreviewImageHandler:0];
    v12 = [_SFActivityExtensionItemProvider alloc];
    v13 = [v6 title];
    v14 = [(_SFActivityExtensionItemProvider *)v12 initWithExtensionItem:v11 URL:v5 pageTitle:v13 webView:v6];

    [(_SFActivityItemProviderCollection *)v7 setJavaScriptExtensionProvider:v14];
  }

  v15 = [_SFDownloadActivityItemProvider alloc];
  v16 = [(_SFBrowserContentViewController *)self quickLookDocument];
  v17 = [(_SFDownloadActivityItemProvider *)v15 initWithQuickLookDocument:v16 URL:v5 webView:v6];
  [(_SFActivityItemProviderCollection *)v7 setDownloadProvider:v17];

  v18 = [[_SFPrintActivityItemProvider alloc] initWithPrintController:self->_printController webView:v6];
  [(_SFActivityItemProviderCollection *)v7 setPrintProvider:v18];

  v19 = [[_SFBrowserDocumentActivityItemProvider alloc] initWithBrowserDocument:self];
  [(_SFActivityItemProviderCollection *)v7 setDocumentProvider:v19];

  return v7;
}

- (void)_presentActivityViewController
{
  p_navigationBar = &self->_navigationBar;
  if (![(_SFNavigationBar *)self->_navigationBar hasToolbar])
  {
    p_navigationBar = &self->_bottomToolbar;
  }

  v4 = [*p_navigationBar popoverSourceInfoForBarItem:6];
  v5 = [(_SFBrowserContentViewController *)self quickLookDocument];
  if (v5 && (quickLookDocumentController = self->_quickLookDocumentController, v5, quickLookDocumentController))
  {
    [(SFQuickLookDocumentController *)self->_quickLookDocumentController presentDocumentInteractionControllerFromSource:v4];
  }

  else
  {
    v7 = [(_SFBrowserContentViewController *)self webView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___SFBrowserContentViewController__presentActivityViewController__block_invoke;
    v9[3] = &unk_1E84950A8;
    v9[4] = self;
    v10 = v7;
    v11 = v4;
    v8 = v7;
    [(_SFBrowserContentViewController *)self _fetchSharingURLWithCompletionHandler:v9];
  }
}

- (void)activityViewController:(id)a3 prepareActivity:(id)a4 completion:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__block_literal_global_389_0;
  }

  v11 = [(_SFBrowserContentViewController *)self webView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v8 activityViewController];
      getSLComposeViewControllerClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v11 title];
        [v12 setInitialText:v18];
      }
    }

    else
    {
      v19 = [v8 activityType];
      v20 = [v19 isEqualToString:*MEMORY[0x1E69CDAA0]];

      if (!v20)
      {
        v10[2](v10);
        goto LABEL_16;
      }

      v12 = [v8 activityViewController];
      if ([v12 _sf_isMFMailComposeViewController])
      {
        v21 = [(_SFBrowserContentViewController *)self _mailContentProvider];
        [v21 setRestrictAddingPDFContent:1];
        v22 = [v25 customizationController];
        v23 = _SFPreferredMailContentTypeForActivityContentType([v22 selectedContentType]);

        v24 = [v25 sharingURL];
        [v21 prepareMailComposeViewController:v12 withMailToURL:0 contentURL:v24 preferredContentType:v23 completionHandler:v10];

        [v21 setRestrictAddingPDFContent:0];
        goto LABEL_15;
      }
    }

    v10[2](v10);
    goto LABEL_15;
  }

  v12 = v8;
  v13 = [v12 bookmarkNavigationController];
  v14 = [v11 title];
  v15 = [v25 sharingURL];
  v16 = [v15 safari_userVisibleString];
  v17 = [v13 addBookmarkWithTitle:v14 address:v16 parentBookmark:0];

  v10[2](v10);
LABEL_15:

LABEL_16:
}

- (void)perSiteSettingsUIPresentSettings
{
  v3 = [_SFPerSitePreferencesPopoverViewController alloc];
  v4 = [(_SFBrowserContentViewController *)self perSitePreferencesVendor];
  v6 = [(_SFPerSitePreferencesPopoverViewController *)v3 initWithBrowserDocument:self perSitePreferencesVendor:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v5 setModalPresentationStyle:2];
  [(_SFBrowserContentViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (BOOL)_suppressReloadToPreventLoadingJavaScriptIfNecessary
{
  v3 = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
  v4 = [v3 absoluteString];
  v5 = [v4 safari_isJavaScriptURLString];

  if (v5)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedUseOfJavaScriptAlert];
  }

  return v5;
}

- (void)reloadEnablingDowngradedPrivateRelay:(BOOL)a3
{
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    v5 = [(_SFBrowserView *)self->_browserView currentWebView];
    v6 = [v5 URL];
    urlToReloadEnablingPrivateRelay = self->_urlToReloadEnablingPrivateRelay;
    self->_urlToReloadEnablingPrivateRelay = v6;

    self->_disablePrivateRelayWhenReloading = a3;
    self->_isNavigatingViaReloadWithoutPrivateRelay = a3;

    [(_SFBrowserContentViewController *)self _reloadFromOrigin:0];
  }
}

- (void)reloadDisablingContentBlockers:(BOOL)a3
{
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    v5 = [(_SFBrowserView *)self->_browserView currentWebView];
    v6 = [v5 URL];
    urlToReloadForcingContentBlockers = self->_urlToReloadForcingContentBlockers;
    self->_urlToReloadForcingContentBlockers = v6;

    self->_disableContentBlockersWhenReloading = a3;

    [(_SFBrowserContentViewController *)self _reloadFromOrigin:0];
  }
}

- (void)reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:(BOOL)a3
{
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    v5 = [(_SFBrowserContentViewController *)self webView];
    v6 = [v5 URL];
    urlToReloadForAdvancedPrivateBrowsingPrivacyProtections = self->_urlToReloadForAdvancedPrivateBrowsingPrivacyProtections;
    self->_urlToReloadForAdvancedPrivateBrowsingPrivacyProtections = v6;

    self->_disableAdvancedPrivateBrowsingPrivacyProtectionsWhenReloading = a3;

    [(_SFBrowserContentViewController *)self _reloadFromOrigin:0];
  }
}

- (BOOL)privacyReportShouldSeparateBlockedTrackers
{
  v2 = self;
  v3 = [(_SFBrowserContentViewController *)self webView];
  v4 = [v3 URL];
  LOBYTE(v2) = [(_SFBrowserContentViewController *)v2 supportsAdvancedPrivacyProtectionsForURL:v4];

  return v2;
}

- (NSURL)URLForPerSitePreferences
{
  v3 = [(_SFBrowserContentViewController *)self webView];
  v4 = [v3 _committedURL];

  if (!v4 || ([v4 safari_isHTTPFamilyURL] & 1) == 0 && -[_SFBrowserContentViewController isShowingErrorPage](self, "isShowingErrorPage"))
  {
    v5 = [(_SFBrowserContentViewController *)self webView];
    v6 = [v5 URL];

    v4 = v6;
  }

  return v4;
}

- (SFReaderContext)readerContext
{
  v2 = [(_SFBrowserContentViewController *)self webViewController];
  v3 = [v2 readerController];

  return v3;
}

- (SFScribbleController)sfScribbleController
{
  sfScribbleController = self->_sfScribbleController;
  if (!sfScribbleController)
  {
    v4 = objc_alloc(MEMORY[0x1E69B1B88]);
    v5 = [(_SFBrowserContentViewController *)self webView];
    v6 = [v4 initWithWebView:v5 delegate:self];
    v7 = self->_sfScribbleController;
    self->_sfScribbleController = v6;

    [(SFScribbleController *)self->_sfScribbleController setUserInitiatedScribblingDisabled:1];
    sfScribbleController = self->_sfScribbleController;
  }

  return sfScribbleController;
}

- (void)toggleShowingReaderForUserAction
{
  if (self->_showingReader)
  {

    [(_SFBrowserContentViewController *)self _hideReaderAnimated:1 deactivationMode:1];
  }

  else
  {
    [(_SFBrowserContentViewController *)self _showReaderAnimated:1];
    v2 = [MEMORY[0x1E69C8810] sharedLogger];
    [v2 didActivateReaderWithTrigger:0];
  }
}

- (BOOL)canFindOnPage
{
  if ([(_SFBrowserContentViewController *)self _onlyWantsWebAppShortcuts])
  {
    return 0;
  }

  v4 = [(_SFBrowserContentViewController *)self webViewController];
  v5 = [v4 webView];
  v6 = [v5 URL];
  v3 = v6 != 0;

  return v3;
}

- (BOOL)allowsBrowsingAssistant
{
  if ([MEMORY[0x1E69C8EC8] userConsentState] != 1)
  {
    return 0;
  }

  v2 = MEMORY[0x1E69C8EC8];

  return [v2 isAvailableInCurrentLocale];
}

- (WBSBrowsingAssistantController)assistantController
{
  assistantController = self->_assistantController;
  if (!assistantController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C8EC8]);
    v5 = self->_assistantController;
    self->_assistantController = v4;

    [(WBSBrowsingAssistantController *)self->_assistantController setDelegate:self];
    assistantController = self->_assistantController;
  }

  return assistantController;
}

- (void)willPresentBrowsingAssistantInSheet:(BOOL)a3
{
  if (a3)
  {
    self->_alwaysShowTopBar = 1;
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator setIgnoresDragging:1];
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator setMinimumTopBarHeight:2.22507386e-308];
    dynamicBarAnimator = self->_dynamicBarAnimator;

    [(_SFDynamicBarAnimator *)dynamicBarAnimator attemptTransitionToState:0 animated:1];
  }
}

- (void)willDismissBrowsingAssistantInSheet:(BOOL)a3
{
  if (a3 && ![(_SFPageFormatMenuController *)self->_pageFormatMenuController stepperIsInTransitionView])
  {
    dynamicBarAnimator = self->_dynamicBarAnimator;

    [(_SFDynamicBarAnimator *)dynamicBarAnimator attemptTransitionToState:1 animated:1];
  }
}

- (void)showFindOnPage
{
  v2 = [(_SFBrowserContentViewController *)self activeWebView];
  [v2 find:0];
}

- (void)handleSearchResult:(id)a3
{
  v4 = MEMORY[0x1E695AC68];
  v6 = [a3 _sf_punchoutURL];
  v5 = [v4 requestWithURL:?];
  [(_SFBrowserContentViewController *)self loadRequest:v5];
}

- (void)takeOwnershipOfStepperContainer:(id)a3
{
  v5 = a3;
  if (!self->_stepperContainer)
  {
    v8 = v5;
    objc_storeStrong(&self->_stepperContainer, a3);
    v6 = [(_SFBrowserContentViewController *)self view];
    [v8 bounds];
    [v6 convertRect:v8 fromView:?];
    [v8 setFrame:?];

    v7 = [(_SFBrowserContentViewController *)self view];
    [v7 addSubview:v8];

    self->_stepperMovedToRootView = 1;
    v5 = v8;
  }
}

- (void)setKeepBarsMinimized:(BOOL)a3
{
  if (self->_keepBarsMinimized != a3)
  {
    self->_keepBarsMinimized = a3;
    if (a3)
    {
      [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator setMinimumTopBarHeight:2.22507386e-308];
      dynamicBarAnimator = self->_dynamicBarAnimator;

      [(_SFDynamicBarAnimator *)dynamicBarAnimator attemptTransitionToState:0 animated:1];
    }
  }
}

- (SFContentBlockerManager)contentBlockerManager
{
  contentBlockerManager = self->_contentBlockerManager;
  if (!contentBlockerManager)
  {
    v4 = [SFContentBlockerManager alloc];
    v5 = [(_SFBrowserContentViewController *)self userContentController];
    v6 = [(_SFBrowserContentViewController *)self webExtensionsController];
    v7 = [(SFContentBlockerManager *)v4 initWithUserContentController:v5 webExtensionsController:v6];
    v8 = self->_contentBlockerManager;
    self->_contentBlockerManager = v7;

    contentBlockerManager = self->_contentBlockerManager;
  }

  return contentBlockerManager;
}

- (SFWebExtensionsController)webExtensionsController
{
  webExtensionsController = self->_webExtensionsController;
  if (!webExtensionsController)
  {
    v4 = objc_alloc(MEMORY[0x1E69B1C10]);
    v5 = *MEMORY[0x1E69C8B58];
    v6 = [MEMORY[0x1E6985350] safari_userContentController];
    v7 = [v4 initWithProfileServerID:v5 userContentController:v6];
    v8 = self->_webExtensionsController;
    self->_webExtensionsController = v7;

    [(SFWebExtensionsController *)self->_webExtensionsController setProfileDelegate:self];
    webExtensionsController = self->_webExtensionsController;
  }

  return webExtensionsController;
}

- (void)collectDiagnosticsForAutoFillWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [(_SFBrowserContentViewController *)self webViewController];
  [v4 collectDiagnosticsForAutoFillWithCompletionHandler:v5];
}

- (id)sfWebExtensionsControllersForAllProfiles:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(_SFBrowserContentViewController *)self webExtensionsController];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(_SFBrowserContentViewController *)self contentBlockerManager];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)_updateUserActivitySoon
{
  v3 = WBS_LOG_CHANNEL_PREFIXContinuity();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_SFBrowserContentViewController _updateUserActivitySoon];
  }

  if (!self->_updateContinuityTimer)
  {
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__updateUserActivityTimerFired selector:0 userInfo:0 repeats:1.0];
    updateContinuityTimer = self->_updateContinuityTimer;
    self->_updateContinuityTimer = v4;

    [(NSTimer *)self->_updateContinuityTimer setTolerance:1.0];
  }
}

- (void)_updateUserActivityTimerFired
{
  [(_SFBrowserContentViewController *)self _cancelPendingUpdateUserActivityTimer];

  [(_SFBrowserContentViewController *)self _updateUserActivity];
}

- (void)_cancelPendingUpdateUserActivityTimer
{
  updateContinuityTimer = self->_updateContinuityTimer;
  if (updateContinuityTimer)
  {
    [(NSTimer *)updateContinuityTimer invalidate];
    v4 = self->_updateContinuityTimer;
    self->_updateContinuityTimer = 0;
  }
}

- (id)handoffURL
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v2 URL];

  return v3;
}

- (void)_updateUserActivity
{
  v20[1] = *MEMORY[0x1E69E9840];
  if ([(_SFBrowserContentViewController *)self _persona]== 1 && ![(SFSafariViewControllerConfiguration *)self->_configuration _isEphemeral])
  {
    v3 = [(_SFBrowserContentViewController *)self webView];
    v4 = [v3 title];
    v5 = objc_alloc(MEMORY[0x1E69C8EF8]);
    v6 = [(_SFBrowserContentViewController *)self handoffURL];
    v7 = [v5 initWithURL:v6 uuid:0 title:v4 isShowingReader:self->_showingReader readerScrollPosition:0 sceneID:0];

    v8 = [v7 url];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v8 resolvingAgainstBaseURL:0];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 URL];

    if ([v10 safari_isHTTPFamilyURL])
    {
      v11 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
      if (v11)
      {
        v19 = @"UAProxiedBundleIdentifier";
        v12 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
        v20[0] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      }

      else
      {
        v13 = 0;
      }

      v15 = objc_alloc(MEMORY[0x1E69636A8]);
      v16 = [v15 _initWithUserActivityType:*MEMORY[0x1E696AA68] dynamicActivityType:0 options:v13];
      [v16 setWebpageURL:v10];
      [v16 setTitle:v4];
      v17 = [v7 dictionaryRepresentationForUserActivityUserInfo];
      [v16 setUserInfo:v17];

      [(_SFBrowserContentViewController *)self setUserActivity:v16];
      [v16 becomeCurrent];
      v18 = WBS_LOG_CHANNEL_PREFIXContinuity();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [_SFBrowserContentViewController _updateUserActivity];
      }
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXContinuity();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [_SFBrowserContentViewController _updateUserActivity];
      }

      [(_SFBrowserContentViewController *)self _invalidateUserActivity];
    }
  }
}

- (void)_invalidateUserActivity
{
  v3 = WBS_LOG_CHANNEL_PREFIXContinuity();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_SFBrowserContentViewController _invalidateUserActivity];
  }

  v4 = [(_SFBrowserContentViewController *)self userActivity];
  [v4 invalidate];

  [(_SFBrowserContentViewController *)self setUserActivity:0];
}

- (void)_setUpMenu
{
  v3 = [MEMORY[0x1E69B1AD0] sharedProvider];
  [v3 rebuildMenuIfNeededForPersona:{-[_SFBrowserContentViewController _persona](self, "_persona")}];
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v6 validateCommand:v4];
  if ([v4 action] == sel_saveKeyPressed)
  {
    v5 = _WBSLocalizedString();
    [v4 setDiscoverabilityTitle:v5];
  }

  else
  {
    SFBrowserContentControllerValidateCommand(self, v4);
  }
}

- (void)reloadKeyPressed
{
  [(_SFBrowserContentViewController *)self _dismissTransientUIAnimated:1];
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    [(_SFBrowserContentViewController *)self _reloadFromOrigin:0];
    self->_isNavigatingViaNormalReload = 1;
  }
}

- (void)reloadFromOriginKeyPressed
{
  [(_SFBrowserContentViewController *)self _dismissTransientUIAnimated:1];
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {

    [(_SFBrowserContentViewController *)self _reloadFromOrigin:1];
  }
}

- (void)find:(id)a3
{
  v3 = [(_SFBrowserContentViewController *)self activeWebView];
  [v3 find:0];

  v4 = [MEMORY[0x1E69C8810] sharedLogger];
  [v4 didFindOnPageWithTrigger:0];
}

- (void)takeFindStringKeyPressed
{
  self->_shouldFillStringForFind = 1;
  v2 = [(_SFBrowserContentViewController *)self _currentWebView];
  [v2 _takeFindStringFromSelection:0];
}

- (void)cancelKeyPressed
{
  if (self->_showingReader)
  {

    [(_SFBrowserContentViewController *)self _hideReaderAnimated:1 deactivationMode:1];
  }

  else if (![(_SFBrowserContentViewController *)self _dismissTransientUIAnimated:1])
  {
    v3 = [(_SFBrowserContentViewController *)self webView];
    [v3 stopLoading];
  }
}

- (BOOL)_dismissTransientUIAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_SFBrowserContentViewController *)self _hideFindOnPage];
  v6 = [(_SFBrowserContentViewController *)self webViewController];
  v7 = [v6 dialogController];

  v8 = [v7 presentedDialog];
  v9 = v8;
  if (v8 && [v8 presentationStyle] == 1)
  {
    [v7 cancelPresentedDialogIfNeeded];
    v5 = 1;
  }

  v10 = [(_SFBrowserContentViewController *)self presentedViewController];
  v11 = v10;
  if (v10 && ([v10 isBeingDismissed] & 1) == 0)
  {
    [v11 dismissViewControllerAnimated:v3 completion:0];
    goto LABEL_9;
  }

  if (v5)
  {
LABEL_9:
    v12 = 1;
    goto LABEL_10;
  }

  v12 = [(_SFPrintController *)self->_printController isDisplayingPrintUI];
LABEL_10:
  [(_SFPrintController *)self->_printController dismissPrintInteractionControllerAnimated:1];

  return v12;
}

- (void)autoFillFormKeyPressed
{
  v2 = [(_SFBrowserContentViewController *)self webViewController];
  [v2 performPageLevelAutoFill];
}

- (void)_emailCurrentPageWithPreferredContentType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77___SFBrowserContentViewController__emailCurrentPageWithPreferredContentType___block_invoke;
  v3[3] = &unk_1E84950F8;
  v3[4] = self;
  v3[5] = a3;
  [(_SFBrowserContentViewController *)self _fetchSharingURLWithCompletionHandler:v3];
}

- (void)addCurrentPageToHomeScreen:(id)a3
{
  objc_initWeak(&location, self);
  v4 = [SFAddToHomeScreenViewController alloc];
  v5 = [(_SFBrowserContentViewController *)self webView];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __62___SFBrowserContentViewController_addCurrentPageToHomeScreen___block_invoke;
  v10 = &unk_1E8495120;
  objc_copyWeak(&v11, &location);
  v6 = [(SFAddToHomeScreenViewController *)v4 initWithWebView:v5 completion:&v7];

  [(_SFBrowserContentViewController *)self presentViewController:v6 animated:1 completion:0, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)toggleContentBlockers:(id)a3
{
  v4 = [(_SFBrowserContentViewController *)self wasLoadedWithContentBlockersEnabled];

  [(_SFBrowserContentViewController *)self reloadDisablingContentBlockers:v4];
}

- (id)_mailContentProvider
{
  cachedMailContentProvider = self->_cachedMailContentProvider;
  if (!cachedMailContentProvider)
  {
    v4 = objc_alloc_init(_SFMailContentProvider);
    v5 = self->_cachedMailContentProvider;
    self->_cachedMailContentProvider = v4;

    [(_SFMailContentProvider *)self->_cachedMailContentProvider setDataSource:self];
    cachedMailContentProvider = self->_cachedMailContentProvider;
  }

  return cachedMailContentProvider;
}

- (id)readerControllerForMailContentProvider:(id)a3
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  v4 = [v3 readerController];

  return v4;
}

- (id)webViewForMailContentProvider:(id)a3
{
  v4 = [(_SFBrowserContentViewController *)self webViewController];
  v5 = v4;
  if (self->_showingReader)
  {
    v6 = [v4 readerController];
    v7 = [v6 readerWebView];
  }

  else
  {
    v7 = [v4 webView];
  }

  return v7;
}

- (id)_committedDomainForPreferences
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v2 _committedURL];
  v4 = [v3 safari_userVisibleHostWithoutWWWSubdomain];

  return v4;
}

- (void)_perSiteAutomaticReaderActivationPreferenceDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88___SFBrowserContentViewController__perSiteAutomaticReaderActivationPreferenceDidChange___block_invoke;
  v6[3] = &unk_1E848F9B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_perSitePageZoomPreferenceDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___SFBrowserContentViewController__perSitePageZoomPreferenceDidChange___block_invoke;
  v6[3] = &unk_1E848F9B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_perSiteLockdownModePreferenceDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75___SFBrowserContentViewController__perSiteLockdownModePreferenceDidChange___block_invoke;
  v6[3] = &unk_1E848F9B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)_digitalHealthManager
{
  cachedDigitalHealthManager = self->_cachedDigitalHealthManager;
  if (!cachedDigitalHealthManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C8F18]);
    v5 = self->_cachedDigitalHealthManager;
    self->_cachedDigitalHealthManager = v4;

    [(WBSDigitalHealthManager *)self->_cachedDigitalHealthManager setDelegate:self];
    [(WBSDigitalHealthManager *)self->_cachedDigitalHealthManager startObserving];
    cachedDigitalHealthManager = self->_cachedDigitalHealthManager;
  }

  return cachedDigitalHealthManager;
}

- (void)_updateDigitalHealthTracking
{
  if ([(_SFBrowserContentViewController *)self _personaShouldUseScreenTime])
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __63___SFBrowserContentViewController__updateDigitalHealthTracking__block_invoke;
    v3[3] = &unk_1E84905C0;
    objc_copyWeak(&v4, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

- (void)_showDigitalHealthOverlayWithPolicy:(int64_t)a3
{
  if ([(_SFBrowserContentViewController *)self _personaShouldUseScreenTime])
  {
    if (self->_showingReader)
    {
      [(_SFBrowserContentViewController *)self _hideReaderAnimated:0 deactivationMode:1];
    }

    if (![(_SFBrowserContentViewController *)self isBlockedByScreenTime])
    {
      v12 = [(_SFBrowserContentViewController *)self webViewController];
      v5 = [v12 webView];
      v6 = [v5 URL];

      if (v6)
      {
        v7 = objc_alloc_init(MEMORY[0x1E69B1B80]);
        screenTimeOverlayViewController = self->_screenTimeOverlayViewController;
        self->_screenTimeOverlayViewController = v7;

        v9 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController showBlockingViewControllerForURL:v6 withPolicy:a3 animated:1];
        [v12 addChildViewController:self->_screenTimeOverlayViewController];
        [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController didMoveToParentViewController:v12];
        v10 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
        v11 = [v12 view];
        [v11 bounds];
        [v10 setFrame:?];
        [v11 addSubview:v10];
      }
    }
  }
}

- (void)_hideDigitalHealthOverlay
{
  if ([(_SFBrowserContentViewController *)self _personaShouldUseScreenTime]&& [(_SFBrowserContentViewController *)self isBlockedByScreenTime])
  {
    [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController willMoveToParentViewController:0];
    [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController removeFromParentViewController];
    v3 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
    [v3 removeFromSuperview];

    screenTimeOverlayViewController = self->_screenTimeOverlayViewController;
    self->_screenTimeOverlayViewController = 0;
  }
}

- (void)beginDigitalHealthTracking
{
  if ([(_SFBrowserContentViewController *)self _personaShouldUseScreenTime])
  {
    v5 = [(_SFBrowserContentViewController *)self _digitalHealthManager];
    currentUsageTrackingURL = self->_currentUsageTrackingURL;
    v4 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
    [v5 updateUsageTrackingForURL:currentUsageTrackingURL withBundleIdentifier:v4 profileIdentifier:*MEMORY[0x1E69C8B58] toState:2];

    [v5 startObserving];
  }
}

- (void)stopDigitalHealthTrackingWithCompletionHandler:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82___SFBrowserContentViewController_stopDigitalHealthTrackingWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E8495170;
  v5 = v4;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  if ([(_SFBrowserContentViewController *)self _personaShouldUseScreenTime])
  {
    v7 = [(_SFBrowserContentViewController *)self _digitalHealthManager];
    currentUsageTrackingURL = self->_currentUsageTrackingURL;
    v9 = *MEMORY[0x1E69C8B58];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82___SFBrowserContentViewController_stopDigitalHealthTrackingWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E84911D8;
    v12 = v7;
    v13 = v5;
    v10 = v7;
    [v10 stopUsageTrackingForURL:currentUsageTrackingURL profileIdentifier:v9 withCompletionHandler:v11];
  }

  else
  {
    v6[2](v6);
  }
}

- (BOOL)isPlayingAudio
{
  v2 = [(_SFBrowserContentViewController *)self webView];
  v3 = [v2 _isPlayingAudio];

  return v3;
}

- (void)barManager:(id)a3 didReceiveTapForBarItem:(int64_t)a4
{
  v9 = a3;
  if (a4 <= 8)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        [(_SFBrowserContentViewController *)self _goForward];
        v6 = [MEMORY[0x1E69C8810] sharedLogger];
        [v6 reportSVCToolbarButtonUsage:1];
      }

      else
      {
        if (a4 != 6)
        {
          goto LABEL_19;
        }

        [(_SFBrowserContentViewController *)self _presentActivityViewController];
        v6 = [MEMORY[0x1E69C8810] sharedLogger];
        [v6 reportSVCToolbarButtonUsage:3];
      }
    }

    else
    {
      [(_SFBrowserContentViewController *)self _goBack];
      v6 = [MEMORY[0x1E69C8810] sharedLogger];
      [v6 reportSVCToolbarButtonUsage:0];
    }

    goto LABEL_18;
  }

  if (a4 <= 13)
  {
    if (a4 == 9)
    {
      [(_SFBrowserContentViewController *)self _openCurrentURLInSafari];
      v6 = [MEMORY[0x1E69C8810] sharedLogger];
      [v6 reportSVCToolbarButtonUsage:36];
    }

    else
    {
      if (a4 != 10)
      {
        goto LABEL_19;
      }

      [(_SFBrowserContentViewController *)self _invokeCustomActivity];
      v6 = [MEMORY[0x1E69C8810] sharedLogger];
      [v6 reportSVCToolbarButtonUsage:37];
    }

LABEL_18:

    goto LABEL_19;
  }

  if (a4 == 14)
  {
    [(_SFBrowserContentViewController *)self navigationBarStopLoadingButtonWasTapped:self->_navigationBar];
    p_barManager = &self->_barManager;
    [(_SFBarManager *)*p_barManager setBarItem:15 hidden:0];
    v8 = 1;
  }

  else
  {
    if (a4 != 15)
    {
      goto LABEL_19;
    }

    [(_SFBrowserContentViewController *)self navigationBarReloadButtonWasTapped:self->_navigationBar];
    p_barManager = &self->_barManager;
    [(_SFBarManager *)*p_barManager setBarItem:15 hidden:1];
    v8 = 0;
  }

  [(_SFBarManager *)*p_barManager setBarItem:14 hidden:v8];
LABEL_19:
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  if (self->_cachedMediaStateIcon != a3)
  {
    self->_cachedMediaStateIcon = a3;
    [(SFNavigationBarItem *)self->_navigationBarItem setMediaStateIcon:?];
  }
}

- (void)webViewController:(id)a3 mediaCaptureStateDidChange:(unint64_t)a4
{
  v9 = a3;
  v6 = 1;
  v7 = 4;
  if ((a4 & 8) == 0)
  {
    v7 = ((a4 << 61) >> 63) & 3;
  }

  if ((a4 & 1) == 0)
  {
    v6 = v7;
  }

  if ((a4 & 2) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6;
  }

  [(_SFBrowserContentViewController *)self setMediaStateIcon:v8];
}

- (BOOL)_canSaveWebpage
{
  v2 = self;
  v3 = [(_SFBrowserContentViewController *)self webView];
  v4 = [v3 URL];
  LOBYTE(v2) = [(_SFBrowserContentViewController *)v2 _canSaveWebpageForURL:v4];

  return v2;
}

- (BOOL)_canSaveWebpageForURL:(id)a3
{
  v4 = a3;
  if (v4 && !self->_saveToFilesOperation)
  {
    v5 = ![(_SFBrowserContentViewController *)self isBlockedByScreenTime];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_presentSaveWebpageViewController
{
  if ([(_SFBrowserContentViewController *)self _canSaveWebpage])
  {
    v3 = [(_SFBrowserContentViewController *)self webView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68___SFBrowserContentViewController__presentSaveWebpageViewController__block_invoke;
    v5[3] = &unk_1E8495198;
    v5[4] = self;
    v6 = v3;
    v4 = v3;
    [(_SFBrowserContentViewController *)self _fetchSharingURLWithCompletionHandler:v5];
  }
}

- (void)saveToFilesOperation:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  saveToFilesOperation = self->_saveToFilesOperation;
  self->_saveToFilesOperation = 0;
}

- (id)webViewForCustomizationController:(id)a3
{
  v3 = [(_SFBrowserContentViewController *)self webView];

  return v3;
}

- (BOOL)isDisplayingQuickLookDocumentForCustomizationController:(id)a3
{
  v3 = [(_SFBrowserContentViewController *)self quickLookDocument];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isReaderAvailableForCustomizationController:(id)a3
{
  v3 = [(_SFBrowserContentViewController *)self webViewController];
  v4 = [v3 readerController];
  v5 = [v4 isReaderAvailable];

  return v5;
}

- (void)translationContextReloadPageInOriginalLanguage:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___SFBrowserContentViewController_translationContextReloadPageInOriginalLanguage___block_invoke;
  block[3] = &unk_1E8490658;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)translationContext:(id)a3 urlForCurrentPageWithCompletionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93___SFBrowserContentViewController_translationContext_urlForCurrentPageWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E84904F8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (id)safariApplicationVersionForTranslationContext:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] _sf_safariServicesBundle];
  v4 = [v3 safari_normalizedVersion];

  return v4;
}

- (void)translationContext:(id)a3 showTranslationErrorAlertWithTitle:(id)a4 message:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97___SFBrowserContentViewController_translationContext_showTranslationErrorAlertWithTitle_message___block_invoke;
  v8[3] = &unk_1E848F9B0;
  v9 = v6;
  v10 = self;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)translationContext:(id)a3 shouldReportProgressInUnifiedField:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89___SFBrowserContentViewController_translationContext_shouldReportProgressInUnifiedField___block_invoke;
  v4[3] = &unk_1E84951C0;
  v4[4] = self;
  v5 = a4;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (void)translationContextWillRequestTranslatingWebpage:(id)a3
{
  v4 = [(_SFBrowserContentViewController *)self processPool];
  SafariShared::ReaderAvailabilityController::updateReaderOrTranslationLastActivated(v4, v3);
}

- (void)_updateMaxVisibleHeightPercentageUserDriven:(BOOL)a3
{
  v3 = a3;
  v14 = [(_SFBrowserContentViewController *)self webView];
  v5 = [v14 scrollView];
  [v5 contentSize];
  v7 = v6;
  if ([(_SFToolbar *)self->_bottomToolbar placement]== 1)
  {
    v8 = [(_SFToolbar *)self->_bottomToolbar superview];
    [(_SFToolbar *)self->_bottomToolbar origin];
    [v8 convertPoint:v5 toView:?];
    v10 = v9;
  }

  else
  {
    [v5 contentOffset];
    v12 = v11;
    [v14 frame];
    v10 = v12 + v13;
  }

  [(WBSTranslationContext *)self->_translationContext updateMaxVisibleHeightPercentageIfNeeded:v3 userDriven:v10 / v7];
}

- (void)_translationContextStateDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69___SFBrowserContentViewController__translationContextStateDidChange___block_invoke;
  block[3] = &unk_1E8490658;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_presentTranslationConsentAlertWithType:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___SFBrowserContentViewController__presentTranslationConsentAlertWithType_completionHandler___block_invoke;
  block[3] = &unk_1E8495210;
  v9 = v6;
  v10 = a3;
  block[4] = self;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)addPassesViewControllerDidFinish:(id)a3
{
  v6 = a3;
  v4 = [(_SFBrowserContentViewController *)self _currentWebView];
  v5 = [v4 _committedURL];

  if (v5)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    [(_SFBrowserContentViewController *)self _dismiss];
  }
}

- (id)legacyTLSHostManager
{
  cachedLegacyTLSHostManager = self->_cachedLegacyTLSHostManager;
  if (!cachedLegacyTLSHostManager)
  {
    v4 = objc_alloc(MEMORY[0x1E69C8E88]);
    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v6 = [v4 initWithBrowserDefaults:v5];
    v7 = self->_cachedLegacyTLSHostManager;
    self->_cachedLegacyTLSHostManager = v6;

    cachedLegacyTLSHostManager = self->_cachedLegacyTLSHostManager;
  }

  return cachedLegacyTLSHostManager;
}

- (void)pageLoadErrorController:(id)a3 allowLegacyTLSConnectionForURL:(id)a4 navigateToURL:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(_SFBrowserContentViewController *)self legacyTLSHostManager];
  v9 = [v11 host];
  [v8 allowLegacyTLSForHost:v9];

  v10 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v7];
  [(_SFBrowserContentViewController *)self loadRequest:v10];
}

- (void)overlayDidHide:(id)a3
{
  v11 = a3;
  v4 = [(_SFBrowserView *)self->_browserView pinnableBanner];
  [(_SFBrowserContentViewController *)self _setShowingPinnableBanner:v4 animated:1];

  if (([v11 isAvailable] & 1) == 0)
  {
    v5 = [(_SFBrowserView *)self->_browserView currentWebView];
    v6 = [v5 scrollView];

    v7 = [(_SFBrowserView *)self->_browserView pinnableBanner];
    [v7 frame];
    MaxY = CGRectGetMaxY(v13);

    navigationBar = self->_navigationBar;
    [(_SFNavigationBar *)navigationBar bounds];
    [(_SFNavigationBar *)navigationBar convertPoint:v6 toView:0.0, CGRectGetMaxY(v14)];
    if (MaxY > v10)
    {
      [v6 contentOffset];
      [v6 setContentOffset:?];
    }
  }
}

- (BOOL)supportsAdvancedPrivacyProtectionsForURL:(id)a3
{
  v4 = a3;
  if (([v4 safari_isSafariWebExtensionURL] & 1) != 0 || (objc_msgSend(MEMORY[0x1E695E000], "safari_browserDefaults"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "safari_enableAdvancedPrivacyProtections:", 0), v5, (v6 & 1) == 0))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(_SFBrowserContentViewController *)self _persona];
    if (v7 <= 3)
    {
      v8 = 3u >> (v7 & 0xF);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

- (void)browsingAssistantController:(id)a3 didUpdateContentOptionsForURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SFBrowserContentViewController *)self webView];
  v9 = [v8 _committedURL];

  if (WBSIsEqual())
  {
    v10 = [v6 result];
    v11 = [v10 contentOptions];

    v12 = [v6 result];
    v13 = [v12 tableOfContentsAvailable];

    v14 = [(_SFBrowserContentViewController *)self webViewController];
    v15 = [v14 readerController];

    if (self->_showingReader && ((v11 | v13) & 1) != 0 && [(_SFBrowserContentViewController *)self allowsBrowsingAssistant])
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __93___SFBrowserContentViewController_browsingAssistantController_didUpdateContentOptionsForURL___block_invoke;
      v16[3] = &unk_1E8495238;
      v17 = v15;
      v18 = self;
      v19 = v9;
      [v6 fetchAssistantContentFromPegasusForURL:v19 withCompletionHandler:v16];
    }

    [(SFNavigationBarItem *)self->_navigationBarItem updateContentOptions:v11];
  }
}

- (void)browsingAssistantControllerDidUpdateUserConsentState:(id)a3
{
  v6 = a3;
  if ([(_SFBrowserContentViewController *)self allowsBrowsingAssistant])
  {
    v4 = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
    v5 = [(WBSTranslationContext *)self->_translationContext webpageLocale];
    [v6 checkForAssistantContentFromPegasusForURL:v4 locale:v5];
  }
}

- (id)currentHostForScribbleController:(id)a3
{
  v3 = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
  v4 = [v3 host];

  return v4;
}

- (void)sfScribbleControllerDidEndScribbling:(id)a3
{
  [(SFNavigationBarItem *)self->_navigationBarItem setOverlayConfiguration:0];

  [(_SFBrowserContentViewController *)self _updateUI];
}

- (void)sfScribbleControllerDidStartScribbling:(id)a3
{
  v5 = a3;
  [(_SFPageFormatMenuController *)self->_pageFormatMenuController dismissMenu];
  v4 = [v5 urlFieldOverlayConfiguration];
  [(SFNavigationBarItem *)self->_navigationBarItem setOverlayConfiguration:v4];

  [(_SFBrowserContentViewController *)self _updateUI];
}

- (void)sfScribbleControllerDidUpdateHiddenElementCount:(id)a3
{
  v5 = a3;
  -[SFNavigationBarItem setHasHiddenElements:](self->_navigationBarItem, "setHasHiddenElements:", [v5 hiddenElementCount] != 0);
  if ([v5 isScribbling])
  {
    v4 = [v5 urlFieldOverlayConfiguration];
    [(SFNavigationBarItem *)self->_navigationBarItem setOverlayConfiguration:v4];
  }

  [(_SFPageFormatMenuController *)self->_pageFormatMenuController reloadBrowsingAssistantIfNeeded];
}

- (id)overlayContainerViewForScribbleController:(id)a3
{
  v3 = [(_SFBrowserView *)self->_browserView contentContainerView];

  return v3;
}

- (NSArray)normalBrowsingUserContentControllers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6985350] safari_userContentController];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager
{
  v2 = [_SFBrowserContentViewController normalBrowsingUserDefinedContentBlockerManager]::manager;
  if (![_SFBrowserContentViewController normalBrowsingUserDefinedContentBlockerManager]::manager)
  {
    v3 = objc_alloc(MEMORY[0x1E69C90E8]);
    v4 = [MEMORY[0x1E69C90F0] sharedStore];
    v5 = [v3 initWithDataStore:v4];
    v6 = [_SFBrowserContentViewController normalBrowsingUserDefinedContentBlockerManager]::manager;
    [_SFBrowserContentViewController normalBrowsingUserDefinedContentBlockerManager]::manager = v5;

    v2 = [_SFBrowserContentViewController normalBrowsingUserDefinedContentBlockerManager]::manager;
  }

  return v2;
}

- (WBSPrivateBrowsingUserDefinedContentBlockerManager)privateBrowsingUserDefinedContentBlockerManager
{
  v3 = [_SFBrowserContentViewController privateBrowsingUserDefinedContentBlockerManager]::manager;
  if (![_SFBrowserContentViewController privateBrowsingUserDefinedContentBlockerManager]::manager)
  {
    v4 = objc_alloc(MEMORY[0x1E69C8FE0]);
    v5 = [objc_alloc(MEMORY[0x1E69C90F0]) initWithDatabaseURL:0];
    v6 = [v4 initWithDataStore:v5];
    v7 = [_SFBrowserContentViewController privateBrowsingUserDefinedContentBlockerManager]::manager;
    [_SFBrowserContentViewController privateBrowsingUserDefinedContentBlockerManager]::manager = v6;

    v8 = [(_SFBrowserContentViewController *)self normalBrowsingUserDefinedContentBlockerManager];
    [-[_SFBrowserContentViewController privateBrowsingUserDefinedContentBlockerManager]::manager setNormalBrowsingUserDefinedContentBlockerManager:v8];

    v3 = [_SFBrowserContentViewController privateBrowsingUserDefinedContentBlockerManager]::manager;
  }

  return v3;
}

- (WBSScribbleQuirksManager)scribbleQuirksManager
{
  v2 = [_SFBrowserContentViewController scribbleQuirksManager]::manager;
  if (![_SFBrowserContentViewController scribbleQuirksManager]::manager)
  {
    v3 = objc_opt_new();
    v4 = [_SFBrowserContentViewController scribbleQuirksManager]::manager;
    [_SFBrowserContentViewController scribbleQuirksManager]::manager = v3;

    v2 = [_SFBrowserContentViewController scribbleQuirksManager]::manager;
  }

  return v2;
}

- (_SFBrowserContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setConfiguration:(uint8_t *)buf .cold.2(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1D4644000, log, OS_LOG_TYPE_ERROR, "Couldn't find extension '%{public}@': %{public}@; the button won't be shown", buf, 0x16u);
}

- (void)setConfiguration:(os_log_t)log .cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1D4644000, log, OS_LOG_TYPE_ERROR, "Can't run extension '%{public}@' because it isn't part of the app '%{public}@'", &v3, 0x16u);
}

- (void)webViewController:(uint64_t *)a1 decidePolicyForNavigationAction:(NSObject *)a2 decisionHandler:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Killing web process as a mitigation after it has rapidly attempted %zd navigations concurrently", &v3, 0xCu);
}

- (void)webViewControllerShouldAutofillESimInformation:.cold.2()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Failed to check if domain is allowed with error %@", v5);
}

- (void)webViewControllerShouldAutofillESimInformation:.cold.3()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Could not fetch bundle record for connected process: %{public}@.", v5);
}

@end