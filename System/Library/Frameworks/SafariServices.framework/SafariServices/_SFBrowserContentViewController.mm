@interface _SFBrowserContentViewController
- (BOOL)_canSaveWebpage;
- (BOOL)_canSaveWebpageForURL:(id)l;
- (BOOL)_canScrollToTopInView:(id)view;
- (BOOL)_canShowDownloadWithoutPrompting:(id)prompting;
- (BOOL)_canShowPageFormatMenu;
- (BOOL)_currentlyEditingText;
- (BOOL)_dismissTransientUIAnimated:(BOOL)animated;
- (BOOL)_effectiveBarCollapsingEnabled;
- (BOOL)_hideFindOnPage;
- (BOOL)_isSplitScreen;
- (BOOL)_readerViewControllerNeedsSetUp;
- (BOOL)_safeAreaShouldAffectWebViewObscuredInsets;
- (BOOL)_shouldGoBackToOwnerWebView;
- (BOOL)_shouldReloadImmediatelyAfterPageLoadError;
- (BOOL)_shouldUpdateCurrentScrollViewInsets;
- (BOOL)_showICSControllerForPath:(id)path sourceURL:(id)l;
- (BOOL)_stopReloadButtonShowsStop;
- (BOOL)_suppressReloadToPreventLoadingJavaScriptIfNecessary;
- (BOOL)_updateAppInfoOverlayForBanner:(id)banner;
- (BOOL)_usesScrollToTopView;
- (BOOL)allowsBrowsingAssistant;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canFindOnPage;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)createFluidProgressState;
- (BOOL)dynamicBarAnimator:(id)animator canTransitionToState:(int64_t)state byDraggingWithOffset:(double)offset;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasFailedURL;
- (BOOL)isDisplayingQuickLookDocumentForCustomizationController:(id)controller;
- (BOOL)isPageEligibileToShowNotSecureWarning;
- (BOOL)isPlayingAudio;
- (BOOL)isReaderAvailableForCustomizationController:(id)controller;
- (BOOL)isSafariRestricted;
- (BOOL)isSecure;
- (BOOL)isShowingErrorPage;
- (BOOL)printControllerPageIsLoading:(id)loading;
- (BOOL)privacyReportShouldSeparateBlockedTrackers;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (BOOL)supportsAdvancedPrivacyProtectionsForURL:(id)l;
- (BOOL)webViewControllerCanFindNextOrPrevious:(id)previous;
- (BOOL)webViewControllerShouldAutofillESimInformation:(id)information;
- (BOOL)webViewControllerShouldFillStringForFind:(id)find;
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
- (_SFBrowserContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_SFBrowserContentViewControllerDelegate)delegate;
- (_SFBrowserView)browserView;
- (_SFReloadOptionsController)reloadOptionsController;
- (double)_crashBannerDraggingOffsetForContentOffset:(CGPoint)offset;
- (double)_maximumHeightObscuredByBottomBar;
- (double)_offsetForDynamicBarAnimator;
- (double)dynamicBarAnimator:(id)animator minimumTopBarHeightForOffset:(double)offset;
- (double)estimatedProgress;
- (id)_EVOrganizationName;
- (id)_applicationPayloadForOpeningInSafari;
- (id)_committedDomainForPreferences;
- (id)_contextMenuConfigurationForWebView:(id)view element:(id)element;
- (id)_contextMenuContentPreviewForWebView:(id)view element:(id)element;
- (id)_createPersistentDataStoreWithConfiguration:(id)configuration;
- (id)_currentWebView;
- (id)_digitalHealthManager;
- (id)_fallbackURLForWellKnownChangePasswordURL:(id)l;
- (id)_fallbackURLForWellKnownChangePasswordURLFromQuirks:(id)quirks;
- (id)_homePageURLToUseAsFallbackWhenTryingToChangePassword:(id)password;
- (id)_itemProviderCollectionForSharingURL:(id)l title:(id)title;
- (id)_mailContentProvider;
- (id)_makeReaderViewController;
- (id)_openNewWebViewIfNeededWithConfiguration:(id)configuration forNavigationAction:(id)action;
- (id)_quickLookDocumentForDownload:(id)download;
- (id)_requestBySettingAdvancedPrivacyProtectionsFlag:(id)flag;
- (id)currentFluidProgressStateSource;
- (id)currentHostForScribbleController:(id)controller;
- (id)expectedOrCurrentURL;
- (id)handoffURL;
- (id)legacyTLSHostManager;
- (id)linkPreviewHelper:(id)helper previewViewControllerForURL:(id)l;
- (id)linkPreviewHelper:(id)helper resultOfLoadingURL:(id)l;
- (id)navigationBarURLForSharing:(id)sharing;
- (id)newProcessPool;
- (id)overlayContainerViewForScribbleController:(id)controller;
- (id)pageFormatMenuController;
- (id)pageLoadErrorControllerGetSecIdentityPreferencesController:(id)controller;
- (id)processPool;
- (id)processPoolConfiguration;
- (id)quickLookDocument;
- (id)quickLookDocumentForCurrentBackForwardListItem;
- (id)readerControllerForMailContentProvider:(id)provider;
- (id)resultOfLoadingRequest:(id)request inMainFrame:(BOOL)frame disallowRedirectToExternalApps:(BOOL)apps;
- (id)safariApplicationVersionForTranslationContext:(id)context;
- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)profiles;
- (id)sfWebExtensionsControllersForAllProfiles:(id)profiles;
- (id)suggestedFileNameForQuickLookDocument:(id)document;
- (id)webViewConfiguration;
- (id)webViewController:(id)controller contextMenuContentPreviewForElement:(id)element;
- (id)webViewController:(id)controller didStartDownload:(id)download;
- (id)webViewForCustomizationController:(id)controller;
- (id)webViewForMailContentProvider:(id)provider;
- (id)websiteDataStore;
- (void)_cancelPendingUpdateUserActivityTimer;
- (void)_checkForAppLink;
- (void)_cleanUpAfterRedirectToExternalApp;
- (void)_cleanUpWebViewController:(id)controller;
- (void)_closePreviewDocumentTimerFired:(id)fired;
- (void)_completeRedirectToExternalNavigationResult:(id)result fromOriginalRequest:(id)request dialogResult:(int64_t)dialogResult;
- (void)_decreasePageZoomSetting;
- (void)_determineResultOfLoadingRequest:(id)request inMainFrame:(BOOL)frame disallowRedirectToExternalApps:(BOOL)apps completionHandler:(id)handler;
- (void)_didCompleteViewSizeTransition;
- (void)_didDecideNavigationPolicy:(int64_t)policy forNavigationAction:(id)action;
- (void)_didDecideNavigationPolicy:(int64_t)policy forNavigationResponse:(id)response;
- (void)_emailCurrentPageWithPreferredContentType:(int64_t)type;
- (void)_fetchSharingURLWithCompletionHandler:(id)handler;
- (void)_goBack;
- (void)_goForward;
- (void)_hideDigitalHealthOverlay;
- (void)_hideNavigationBarGestureRecognized:(id)recognized;
- (void)_hideQuickLookDocumentView;
- (void)_increasePageZoomSetting;
- (void)_initialLoadFinishedWithSuccess:(BOOL)success;
- (void)_initializeWebKitExperimentalFeatures;
- (void)_internalWebViewController:(id)controller decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)_internalWebViewController:(id)controller decidePolicyForNavigationAction:(id)action withResult:(id)result decisionHandler:(id)handler;
- (void)_invalidateEVOrganizationName;
- (void)_invalidatePreviewCloseTimer;
- (void)_invalidateUserActivity;
- (void)_invalidateWebViewControllers;
- (void)_invokeCustomActivity;
- (void)_layOutBrowserViewForSizeTransition;
- (void)_openCurrentURLInSafari;
- (void)_perSiteAutomaticReaderActivationPreferenceDidChange:(id)change;
- (void)_perSiteLockdownModePreferenceDidChange:(id)change;
- (void)_perSitePageZoomPreferenceDidChange:(id)change;
- (void)_popWebViewController;
- (void)_presentActivityViewController;
- (void)_presentSaveWebpageViewController;
- (void)_presentTranslationConsentAlertWithType:(unint64_t)type completionHandler:(id)handler;
- (void)_pushWebViewController:(id)controller;
- (void)_queueAlertForRedirectToExternalNavigationResult:(id)result fromOriginalRequest:(id)request isMainFrame:(BOOL)frame promptPolicy:(int64_t)policy userAction:(id)action;
- (void)_receivedTouchDown:(id)down;
- (void)_receivedTouchUp:(id)up;
- (void)_redirectToExternalNavigationResult:(id)result fromOriginalRequest:(id)request promptPolicy:(int64_t)policy isMainFrame:(BOOL)frame userAction:(id)action;
- (void)_redirectToNewsIfNeededForRequest:(id)request isMainFrame:(BOOL)frame userAction:(id)action decisionHandler:(id)handler;
- (void)_reloadFromOrigin:(BOOL)origin;
- (void)_resetPageZoomSetting;
- (void)_scrollToTopFromScrollToTopView;
- (void)_setCurrentWebViewController:(id)controller;
- (void)_setShowingCrashBanner:(BOOL)banner animated:(BOOL)animated;
- (void)_setShowingPinnableBanner:(id)banner animated:(BOOL)animated;
- (void)_setShowingReader:(BOOL)reader;
- (void)_setShowingReader:(BOOL)reader deactivationMode:(unint64_t)mode animated:(BOOL)animated;
- (void)_setSuppressingPreviewProgressAnimation:(BOOL)animation;
- (void)_setUpAnalyticsPersona;
- (void)_setUpCalendarEventDetectorIfNeeded;
- (void)_setUpCookieStoragePolicyForDataStore:(id)store;
- (void)_setUpInterfaceIfNeeded;
- (void)_setUpMenu;
- (void)_setUpReaderViewController;
- (void)_setUpReloadOptionsControllerIfNeeded;
- (void)_setUpToolbar;
- (void)_setUpTopBarAndBottomBar;
- (void)_setUpWebViewControllerIfNeeded;
- (void)_setWebViewController:(id)controller;
- (void)_setupPocketWithScrollView:(id)view;
- (void)_showCrashBanner:(id)banner animated:(BOOL)animated;
- (void)_showDigitalHealthOverlayWithPolicy:(int64_t)policy;
- (void)_showDownload:(id)download;
- (void)_showFinanceKitOrderPreviewControllerWithURL:(id)l dismissalHandler:(id)handler;
- (void)_showPassBookControllerForPasses:(id)passes;
- (void)_showQuickLookDocumentView;
- (void)_showReaderAnimated:(BOOL)animated;
- (void)_translationAvailabilityDidChange:(id)change;
- (void)_translationContextStateDidChange:(id)change;
- (void)_updateBannerTheme:(id)theme;
- (void)_updateBarItemsWithAnimation:(BOOL)animation;
- (void)_updateBarTheme;
- (void)_updateCrashBannerOffset;
- (void)_updateCurrentScrollViewInsets;
- (void)_updateDarkModeEnabled;
- (void)_updateDigitalHealthTracking;
- (void)_updateDynamicBarGeometry;
- (void)_updateHomeIndicatorAutoHideState;
- (void)_updateInterfaceFillsScreen;
- (void)_updateMaxVisibleHeightPercentageUserDriven:(BOOL)driven;
- (void)_updateModalInPresentation;
- (void)_updateNavigationBar;
- (void)_updatePageZoomWithPreference;
- (void)_updatePinnableBannerFrame;
- (void)_updatePinnableBannerOffset;
- (void)_updatePreviewLoadingUI;
- (void)_updateScrollIndicatorVerticalInsets:(UIEdgeInsets)insets horizontalInsets:(UIEdgeInsets)horizontalInsets;
- (void)_updateScrollToTopView;
- (void)_updateStatusBarStyleForced:(BOOL)forced;
- (void)_updateTrackerProtectionPreferences;
- (void)_updateUI;
- (void)_updateUIWithAnimation:(BOOL)animation;
- (void)_updateUserActivity;
- (void)_updateUserActivitySoon;
- (void)_updateUserActivityTimerFired;
- (void)_updateUsesLockdownStatusBar;
- (void)_updateUsesNarrowLayout;
- (void)_updateWebViewLayoutSize;
- (void)_updateWebViewShrinkToFit;
- (void)_willBeginUserInitiatedNavigation;
- (void)_willCommitContextMenuForWebView:(id)view withAnimator:(id)animator;
- (void)activityViewController:(id)controller prepareActivity:(id)activity completion:(id)completion;
- (void)addCurrentPageToHomeScreen:(id)screen;
- (void)addPassesViewControllerDidFinish:(id)finish;
- (void)addTrustedEventAttribution:(id)attribution;
- (void)authenticationChallengeDidNegotiateModernTLS:(id)s;
- (void)autoFillFormKeyPressed;
- (void)barManager:(id)manager didReceiveTapForBarItem:(int64_t)item;
- (void)beginDigitalHealthTracking;
- (void)browsingAssistantController:(id)controller didUpdateContentOptionsForURL:(id)l;
- (void)browsingAssistantControllerDidUpdateUserConsentState:(id)state;
- (void)cancelKeyPressed;
- (void)clearFluidProgressState;
- (void)collectDiagnosticsForAutoFillWithCompletionHandler:(id)handler;
- (void)contextMenuConfigurationForReaderViewController:(id)controller element:(id)element completionHandler:(id)handler;
- (void)dataForQuickLookDocument:(id)document completionHandler:(id)handler;
- (void)dealloc;
- (void)decideDataSharingModeAndSetUpWebViewWithCompletionHandler:(id)handler;
- (void)didMoveToParentViewController:(id)controller;
- (void)downloadDidFail:(id)fail;
- (void)downloadDidFinish:(id)finish;
- (void)downloadShouldContinueAfterReceivingResponse:(id)response decisionHandler:(id)handler;
- (void)dynamicBarAnimatorOutputsDidChange:(id)change;
- (void)dynamicBarAnimatorStateDidChange:(id)change;
- (void)dynamicBarAnimatorWillEnterSteadyState:(id)state;
- (void)find:(id)find;
- (void)fluidProgressRocketAnimationDidComplete;
- (void)handleSearchResult:(id)result;
- (void)linkPreviewHelper:(id)helper commitPreviewViewControllerForAction:(int64_t)action withTabOrder:(int64_t)order;
- (void)linkPreviewHelper:(id)helper didProduceNavigationIntent:(id)intent forAction:(int64_t)action;
- (void)linkPreviewHelper:(id)helper redirectToExternalNavigationResult:(id)result;
- (void)linkPreviewHelperWillDisableLinkPreview;
- (void)loadRequest:(id)request;
- (void)loadView;
- (void)navigationBar:(id)bar didCreateBar:(id)createBar trailingBar:(id)trailingBar;
- (void)navigationBar:(id)bar didCreateLeadingToolbar:(id)toolbar trailingToolbar:(id)trailingToolbar;
- (void)navigationBarFormatMenuButtonBecameUnavailable:(id)unavailable;
- (void)navigationBarFormatMenuButtonStartedInteraction:(id)interaction;
- (void)navigationBarFormatMenuButtonWasTapped:(id)tapped;
- (void)navigationBarMediaStateMuteButtonWasTapped:(id)tapped;
- (void)navigationBarMetricsDidChange:(id)change;
- (void)navigationBarReaderButtonWasTapped:(id)tapped;
- (void)navigationBarReloadButtonWasTapped:(id)tapped;
- (void)navigationBarStopLoadingButtonWasTapped:(id)tapped;
- (void)navigationBarTranslateButtonWasTapped:(id)tapped;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)overlayDidHide:(id)hide;
- (void)pageLoadErrorController:(id)controller allowLegacyTLSConnectionForURL:(id)l navigateToURL:(id)rL;
- (void)pageLoadErrorControllerReloadUsingHTTPSOnlyBypass:(id)bypass;
- (void)perSiteSettingsUIPresentSettings;
- (void)readerViewController:(id)controller contextMenuDidEndForElement:(id)element;
- (void)readerViewController:(id)controller contextMenuForElement:(id)element willCommitWithAnimator:(id)animator;
- (void)reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:(BOOL)protections;
- (void)reloadDisablingContentBlockers:(BOOL)blockers;
- (void)reloadEnablingDowngradedPrivateRelay:(BOOL)relay;
- (void)reloadFromOriginKeyPressed;
- (void)reloadKeyPressed;
- (void)saveToFilesOperation:(id)operation didFinishWithSuccess:(BOOL)success;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setConfiguration:(id)configuration;
- (void)setDisplayMode:(int64_t)mode;
- (void)setHostAppModalPresentationStyle:(int64_t)style;
- (void)setKeepBarsMinimized:(BOOL)minimized;
- (void)setMediaStateIcon:(unint64_t)icon;
- (void)setPreferredBarTintColor:(id)color;
- (void)setPreferredControlTintColor:(id)color;
- (void)setQuickLookDocumentForCurrentBackForwardListItem:(id)item;
- (void)setRemoteSwipeGestureEnabled:(BOOL)enabled;
- (void)setSafariDataSharingMode:(int64_t)mode;
- (void)sfScribbleControllerDidEndScribbling:(id)scribbling;
- (void)sfScribbleControllerDidStartScribbling:(id)scribbling;
- (void)sfScribbleControllerDidUpdateHiddenElementCount:(id)count;
- (void)showFindOnPage;
- (void)stopDigitalHealthTrackingWithCompletionHandler:(id)handler;
- (void)stopLoading;
- (void)takeFindStringKeyPressed;
- (void)takeOwnershipOfStepperContainer:(id)container;
- (void)toggleContentBlockers:(id)blockers;
- (void)toggleShowingReaderForUserAction;
- (void)traitCollectionDidChange:(id)change;
- (void)translationContext:(id)context shouldReportProgressInUnifiedField:(BOOL)field;
- (void)translationContext:(id)context showTranslationErrorAlertWithTitle:(id)title message:(id)message;
- (void)translationContext:(id)context urlForCurrentPageWithCompletionHandler:(id)handler;
- (void)translationContextReloadPageInOriginalLanguage:(id)language;
- (void)translationContextWillRequestTranslatingWebpage:(id)webpage;
- (void)updateBottomBarOffset:(double)offset topBarHeight:(double)height;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)webViewController:(id)controller authenticationChallenge:(id)challenge shouldAllowLegacyTLS:(id)s;
- (void)webViewController:(id)controller contextMenuConfigurationForElement:(id)element completionHandler:(id)handler;
- (void)webViewController:(id)controller contextMenuDidEndForElement:(id)element;
- (void)webViewController:(id)controller contextMenuForElement:(id)element willCommitWithAnimator:(id)animator;
- (void)webViewController:(id)controller createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action completionHandler:(id)handler;
- (void)webViewController:(id)controller decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webViewController:(id)controller decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webViewController:(id)controller decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)policy forExtension:(id)extension completionHandler:(id)handler;
- (void)webViewController:(id)controller didCommitNavigation:(id)navigation;
- (void)webViewController:(id)controller didEndNavigationGestureToBackForwardListItem:(id)item;
- (void)webViewController:(id)controller didExtractTextSamplesForTranslation:(id)translation;
- (void)webViewController:(id)controller didFailNavigation:(id)navigation withError:(id)error;
- (void)webViewController:(id)controller didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webViewController:(id)controller didFindAppBannerWithContent:(id)content;
- (void)webViewController:(id)controller didFinishDocumentLoadForNavigation:(id)navigation;
- (void)webViewController:(id)controller didFinishNavigation:(id)navigation;
- (void)webViewController:(id)controller didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webViewController:(id)controller didSameDocumentNavigation:(id)navigation ofType:(int64_t)type;
- (void)webViewController:(id)controller didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)name uti:(id)uti;
- (void)webViewController:(id)controller didStartProvisionalNavigation:(id)navigation;
- (void)webViewController:(id)controller mediaCaptureStateDidChange:(unint64_t)change;
- (void)webViewController:(id)controller printFrame:(id)frame;
- (void)webViewController:(id)controller webViewDidClose:(id)close;
- (void)webViewController:(id)controller willEndNavigationGestureToBackForwardListItem:(id)item;
- (void)webViewController:(id)controller willGoToBackForwardListItem:(id)item inPageCache:(BOOL)cache;
- (void)webViewControllerDidChangeEstimatedProgress:(id)progress;
- (void)webViewControllerDidChangeHasOnlySecureContent:(id)content;
- (void)webViewControllerDidChangeLoadingState:(id)state;
- (void)webViewControllerDidChangeSafeAreaInsets:(id)insets;
- (void)webViewControllerDidChangeSafeAreaShouldAffectObscuredInsets:(id)insets;
- (void)webViewControllerDidDetermineReaderAvailability:(id)availability dueTo:(int64_t)to;
- (void)webViewControllerDidFirstPaint:(id)paint;
- (void)webViewControllerDidFirstVisuallyNonEmptyLayout:(id)layout;
- (void)webViewControllerDidUpdateUnderPageBackgroundColor:(id)color;
- (void)webViewControllerWebProcessDidCrash:(id)crash;
- (void)willDismissBrowsingAssistantInSheet:(BOOL)sheet;
- (void)willPresentBrowsingAssistantInSheet:(BOOL)sheet;
@end

@implementation _SFBrowserContentViewController

- (_SFBrowserContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v53.receiver = self;
  v53.super_class = _SFBrowserContentViewController;
  v8 = [(_SFBrowserContentViewController *)&v53 initWithNibName:nameCopy bundle:bundleCopy];
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v8->_uuid;
    v8->_uuid = uUID;

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v15 = objc_alloc_init(MEMORY[0x1E6985338]);
    wkPreferences = v8->_wkPreferences;
    v8->_wkPreferences = v15;

    -[WKPreferences setJavaScriptCanOpenWindowsAutomatically:](v8->_wkPreferences, "setJavaScriptCanOpenWindowsAutomatically:", [safari_browserDefaults safari_javaScriptCanOpenWindowsAutomatically]);
    -[WKPreferences setJavaScriptEnabled:](v8->_wkPreferences, "setJavaScriptEnabled:", [safari_browserDefaults safari_isJavaScriptEnabled]);
    [safari_browserDefaults addObserver:v8 forKeyPath:*MEMORY[0x1E69B1F00] options:3 context:kvoContext];
    v17 = *MEMORY[0x1E69B1E78];
    -[WKPreferences _setApplePayCapabilityDisclosureAllowed:](v8->_wkPreferences, "_setApplePayCapabilityDisclosureAllowed:", [safari_browserDefaults BOOLForKey:*MEMORY[0x1E69B1E78]]);
    [safari_browserDefaults addObserver:v8 forKeyPath:v17 options:3 context:kvoContext];
    [(WKPreferences *)v8->_wkPreferences _setShouldSuppressKeyboardInputDuringProvisionalNavigation:1];
    [(WKPreferences *)v8->_wkPreferences _setShouldAllowUserInstalledFonts:0];
    [(WKPreferences *)v8->_wkPreferences setShouldPrintBackgrounds:1];
    -[WKPreferences _setNeedsSiteSpecificQuirks:](v8->_wkPreferences, "_setNeedsSiteSpecificQuirks:", [safari_browserDefaults BOOLForKey:*MEMORY[0x1E69B1F90]]);
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
    webExtensionsController = [(_SFBrowserContentViewController *)v8 webExtensionsController];
    v22 = [(_SFPerSitePreferencesVendor *)v20 initWithExtensionsController:webExtensionsController profileProvider:0];
    perSitePreferencesVendor = v8->_perSitePreferencesVendor;
    v8->_perSitePreferencesVendor = v22;

    v24 = [[_SFNavigationUtilitiesManager alloc] initWithPerSitePreferencesVendor:v8->_perSitePreferencesVendor];
    [(_SFBrowserContentViewController *)v8 set_navigationUtilitiesManager:v24];

    normalBrowsingUserDefinedContentBlockerManager = [(_SFBrowserContentViewController *)v8 normalBrowsingUserDefinedContentBlockerManager];
    _navigationUtilitiesManager = [(_SFBrowserContentViewController *)v8 _navigationUtilitiesManager];
    [_navigationUtilitiesManager setUserDefinedContentBlockerManager:normalBrowsingUserDefinedContentBlockerManager];

    _navigationUtilitiesManager2 = [(_SFBrowserContentViewController *)v8 _navigationUtilitiesManager];
    [_navigationUtilitiesManager2 setBrowserDocument:v8];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__perSiteAutomaticReaderActivationPreferenceDidChange_ name:*MEMORY[0x1E69C94C8] object:0];
    [defaultCenter addObserver:v8 selector:sel__perSitePageZoomPreferenceDidChange_ name:*MEMORY[0x1E69C9430] object:0];
    [defaultCenter addObserver:v8 selector:sel__perSiteLockdownModePreferenceDidChange_ name:*MEMORY[0x1E69C94D0] object:0];
    v29 = objc_alloc_init(MEMORY[0x1E69853A8]);
    defaultWebpagePreferences = [v29 defaultWebpagePreferences];
    defaultWebpagePreferences = v8->_defaultWebpagePreferences;
    v8->_defaultWebpagePreferences = defaultWebpagePreferences;

    [(WKWebpagePreferences *)v8->_defaultWebpagePreferences addObserver:v8 forKeyPath:*MEMORY[0x1E69C9398] options:4 context:kvoContext];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel__translationAvailabilityDidChange_ name:*MEMORY[0x1E69C9A10] object:0];

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
    safari_safariCoreBundle = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
    v40 = [safari_safariCoreBundle URLForResource:@"WBSAutoFillQuirks" withExtension:@"plist"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    safari_autoFillQuirksDownloadDirectoryURL = [defaultManager safari_autoFillQuirksDownloadDirectoryURL];
    v43 = [v38 initWithBuiltInQuirksURL:v40 downloadsDirectoryURL:safari_autoFillQuirksDownloadDirectoryURL resourceName:@"AutoFillQuirks" resourceVersion:@"1" updateDateDefaultsKey:*MEMORY[0x1E69C8CF8] updateInterval:0.0];
    autoFillQuirksManager = v8->_autoFillQuirksManager;
    v8->_autoFillQuirksManager = v43;

    [(WBSAutoFillQuirksManager *)v8->_autoFillQuirksManager setShouldAttemptToDownloadConfiguration:0];
    [(WBSAutoFillQuirksManager *)v8->_autoFillQuirksManager beginLoadingQuirksFromDisk];
    array = [MEMORY[0x1E695DF70] array];
    webViewControllers = v8->_webViewControllers;
    v8->_webViewControllers = array;

    isLockdownModeEnabledForSafari = [MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari];
    v8->_pendingNavigationWillLoadWithLockdownModeEnabled = isLockdownModeEnabledForSafari;
    v8->_wasLoadedWithLockdownModeEnabled = isLockdownModeEnabledForSafari;
    v48 = v8;
    objc_destroyWeak(&v51);

    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)dealloc
{
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator removeObserver:self forKeyPath:@"UIShouldReflectCommittedURLInsteadOfCurrentURL" context:kvoContext];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults removeObserver:self forKeyPath:*MEMORY[0x1E69B1F00] context:kvoContext];
  [safari_browserDefaults removeObserver:self forKeyPath:*MEMORY[0x1E69B1E78] context:kvoContext];
  [safari_browserDefaults removeObserver:self forKeyPath:*MEMORY[0x1E69E30E0] context:kvoContext];
  [(_SFBrowserContentViewController *)self stopDigitalHealthTrackingWithCompletionHandler:0];
  [(_SFBrowserContentViewController *)self _invalidateUserActivity];
  [(WBSWellKnownURLResponseCodeReliabilityChecker *)self->_wellKnownURLResponseCodeReliabilityChecker cancel];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69C94C8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69C9A10] object:0];
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
  view = [(_SFBrowserContentViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [_SFBrowserView alloc];
  [view bounds];
  v6 = [(_SFBrowserView *)v5 initWithFrame:?];
  browserView = self->_browserView;
  self->_browserView = v6;

  [(_SFBrowserView *)self->_browserView setAutoresizingMask:18];
  [(_SFBrowserView *)self->_browserView setDelegate:self];
  [view addSubview:self->_browserView];
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
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults addObserver:self forKeyPath:*MEMORY[0x1E69E30E0] options:3 context:kvoContext];

  [(_SFBrowserContentViewController *)self _updateTrackerProtectionPreferences];
  [view bounds];
  CGRectGetWidth(v24);
  self->_usesNarrowLayout = SFWidthIsNarrow();
  [(_SFBrowserContentViewController *)self _setUpTopBarAndBottomBar];
  [(_SFBrowserContentViewController *)self _updateStatusBarStyleForced:1];
  navigationBar = [(_SFBrowserView *)self->_browserView navigationBar];
  [_SFBarHoverAssistant attachToBar:navigationBar withAnimator:self->_dynamicBarAnimator inContainerView:view];

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
  traitCollection = [(_SFBrowserContentViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  readerController = [webViewController readerController];

  configurationManager = [readerController configurationManager];
  if (((userInterfaceStyle == 2) ^ [configurationManager darkModeEnabled]))
  {
    [configurationManager setDarkModeEnabled:userInterfaceStyle == 2];
    [readerController sendConfigurationToWebProcess];
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
  _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
  v4 = [_currentWebView URL];

  if (v4)
  {
    _currentWebView2 = [(_SFBrowserContentViewController *)self _currentWebView];
    LOBYTE(becomeFirstResponder) = [_currentWebView2 becomeFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFBrowserContentViewController;
    becomeFirstResponder = [(_SFBrowserContentViewController *)&v8 becomeFirstResponder];
  }

  return becomeFirstResponder;
}

- (BOOL)canBecomeFirstResponder
{
  _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
  v4 = [_currentWebView URL];
  if (v4)
  {
    _currentWebView2 = [(_SFBrowserContentViewController *)self _currentWebView];
    canBecomeFirstResponder = [_currentWebView2 canBecomeFirstResponder];
  }

  else
  {
    canBecomeFirstResponder = 0;
  }

  return canBecomeFirstResponder;
}

- (BOOL)_currentlyEditingText
{
  webView = [(_SFBrowserContentViewController *)self webView];
  if ([webView sf_inResponderChain])
  {
    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    hasFormControlInteraction = [webViewController hasFormControlInteraction];
  }

  else
  {
    webViewController = [MEMORY[0x1E69DCBE0] activeInstance];
    inputDelegate = [webViewController inputDelegate];
    hasFormControlInteraction = inputDelegate != 0;
  }

  return hasFormControlInteraction;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  mEMORY[0x1E69B1AD0] = [MEMORY[0x1E69B1AD0] sharedProvider];
  if (([mEMORY[0x1E69B1AD0] commandConflictsWithTextEditing:senderCopy] & 1) == 0)
  {

    goto LABEL_6;
  }

  _currentlyEditingText = [(_SFBrowserContentViewController *)self _currentlyEditingText];

  if (!_currentlyEditingText)
  {
LABEL_6:
    _onlyWantsWebAppShortcuts = [(_SFBrowserContentViewController *)self _onlyWantsWebAppShortcuts];
    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    v12 = webViewController;
    if (sel_reloadKeyPressed == action || sel_reloadFromOriginKeyPressed == action)
    {
      goto LABEL_22;
    }

    if (sel_find_ != action && sel_takeFindStringKeyPressed != action)
    {
      if (sel_navigateBackKeyPressed == action)
      {
        webView = [webViewController webView];
        canGoBack = [webView canGoBack];
      }

      else
      {
        if (sel_navigateForwardKeyPressed != action)
        {
          if (sel_toggleReaderKeyPressed != action)
          {
            if (sel_emailCurrentPage == action)
            {
              if (_onlyWantsWebAppShortcuts || ![getMFMailComposeViewControllerClass() canSendMail])
              {
                goto LABEL_42;
              }

              webView = [v12 webView];
              v17 = [webView URL];
              goto LABEL_23;
            }

            if (sel_increaseSize_ != action && sel_decreaseSize_ != action && sel_resetPageZoomLevelAndFontSize != action)
            {
              if (sel_dismissSFSafariViewControllerKeyPressed != action)
              {
                if (sel_saveKeyPressed != action && sel_saveWebpageAlternativeKeyPressed != action)
                {
                  v13 = SFBrowserContentControllerCanPerformActionWithSender(self, action);
                  v14 = v13;
                  if (v13)
                  {
                    bOOLValue = [v13 BOOLValue];
                  }

                  else
                  {
                    v21.receiver = self;
                    v21.super_class = _SFBrowserContentViewController;
                    bOOLValue = [(_SFBrowserContentViewController *)&v21 canPerformAction:action withSender:senderCopy];
                  }

                  v9 = bOOLValue;

                  goto LABEL_30;
                }

                if (_onlyWantsWebAppShortcuts)
                {
                  goto LABEL_42;
                }

                _canSaveWebpage = [(_SFBrowserContentViewController *)self _canSaveWebpage];
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

            if (_onlyWantsWebAppShortcuts)
            {
              goto LABEL_42;
            }

LABEL_22:
            webView = [webViewController webView];
            v17 = [webView URL];
LABEL_23:
            v9 = v17 != 0;

LABEL_29:
            goto LABEL_30;
          }

          if (_onlyWantsWebAppShortcuts)
          {
            goto LABEL_42;
          }

          _canSaveWebpage = [(_SFBrowserContentViewController *)self _canShowPageFormatMenu];
LABEL_25:
          v9 = _canSaveWebpage;
LABEL_30:

          goto LABEL_31;
        }

        webView = [webViewController webView];
        canGoBack = [webView canGoForward];
      }

      v9 = canGoBack;
      goto LABEL_29;
    }

    _canSaveWebpage = [(_SFBrowserContentViewController *)self canFindOnPage];
    goto LABEL_25;
  }

  v9 = 0;
LABEL_31:

  return v9;
}

- (void)_cleanUpWebViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    [(_SFTelephonyNavigationMitigationPolicy *)self->_telephonyNavigationPolicy setDialogPresenter:0];
    [controllerCopy setDelegate:0];
    view = [controllerCopy view];
    [view removeFromSuperview];

    [controllerCopy removeFromParentViewController];
    [controllerCopy invalidate];
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
  websiteDataStore = [(_SFBrowserContentViewController *)self websiteDataStore];
  safari_secIdentitiesCache = [websiteDataStore safari_secIdentitiesCache];

  return safari_secIdentitiesCache;
}

- (void)_setCurrentWebViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    telephonyNavigationPolicy = self->_telephonyNavigationPolicy;
    v19 = controllerCopy;
    if (!telephonyNavigationPolicy)
    {
      v6 = objc_alloc_init(_SFTelephonyNavigationMitigationPolicy);
      v7 = self->_telephonyNavigationPolicy;
      self->_telephonyNavigationPolicy = v6;

      telephonyNavigationPolicy = self->_telephonyNavigationPolicy;
      controllerCopy = v19;
    }

    [(_SFTelephonyNavigationMitigationPolicy *)telephonyNavigationPolicy setDialogPresenter:controllerCopy];
    webView = [v19 webView];
    scrollView = [webView scrollView];
    [scrollView _setIndicatorInsetAdjustmentBehavior:2];

    v10 = _SFCustomUserAgentStringIfNeeded();
    if (v10)
    {
      [webView setCustomUserAgent:v10];
    }

    [v19 setDelegate:self];
    [(_SFBrowserContentViewController *)self addChildViewController:v19];
    [v19 didMoveToParentViewController:self];
    [(_SFBrowserContentViewController *)self _setWebViewController:v19];
    v11 = [_SFPageLoadErrorController alloc];
    webView2 = [v19 webView];
    secIdentitiesCache = [(_SFBrowserContentViewController *)self secIdentitiesCache];
    v14 = [(_SFPageLoadErrorController *)v11 initWithWebView:webView2 secIdentitiesCache:secIdentitiesCache];
    pageLoadErrorController = self->_pageLoadErrorController;
    self->_pageLoadErrorController = v14;

    [(_SFPageLoadErrorController *)self->_pageLoadErrorController setDelegate:self];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController setDialogPresenter:v19];
    [(_SFPrintController *)self->_printController setWebView:webView];
    readerController = [v19 readerController];
    [(_SFPrintController *)self->_printController setReaderController:readerController];

    [(_SFPrintController *)self->_printController setDialogPresenter:v19];
    [(_SFBrowserContentViewController *)self _setUpReloadOptionsControllerIfNeeded];
    [(_SFBrowserContentViewController *)self _setUpCalendarEventDetectorIfNeeded];
    [(_SFBrowserContentViewController *)self _updateTrackerProtectionPreferences];
    [(_SFBrowserContentViewController *)self _invalidateEVOrganizationName];
    [(_SFBrowserContentViewController *)self _setUpToolbar];
    [(_SFBrowserContentViewController *)self _updateUI];
    [(_SFBrowserContentViewController *)self _setUpAnalyticsPersona];
    [(_SFBrowserContentViewController *)self _setUpMenu];
    webView3 = [(SFScribbleController *)self->_sfScribbleController webView];

    if (webView3 != webView)
    {
      [(SFScribbleController *)self->_sfScribbleController invalidate];
      sfScribbleController = self->_sfScribbleController;
      self->_sfScribbleController = 0;
    }

    controllerCopy = v19;
  }
}

- (void)_pushWebViewController:(id)controller
{
  controllerCopy = controller;
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  [(_SFBrowserContentViewController *)self _cleanUpWebViewController:webViewController];

  [(NSMutableArray *)self->_webViewControllers addObject:controllerCopy];
  [(_SFBrowserContentViewController *)self _setCurrentWebViewController:controllerCopy];
}

- (void)_popWebViewController
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  [(_SFBrowserContentViewController *)self _cleanUpWebViewController:?];

  [(NSMutableArray *)self->_webViewControllers removeLastObject];
  webViewController2 = [(_SFBrowserContentViewController *)self webViewController];
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

  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  [(_SFBrowserContentViewController *)self _cleanUpWebViewController:webViewController];

  [(NSMutableArray *)self->_webViewControllers removeAllObjects];
}

- (void)_setUpAnalyticsPersona
{
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  _sf_safariServicesBundle = [MEMORY[0x1E696AAE8] _sf_safariServicesBundle];
  safari_normalizedVersion = [_sf_safariServicesBundle safari_normalizedVersion];
  v5 = [(_SFBrowserContentViewController *)self _persona]- 1;
  if (v5 > 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = qword_1D47DF858[v5];
  }

  [mEMORY[0x1E69C8810] registerSafariVersion:safari_normalizedVersion persona:v6];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (kvoContext == context)
  {
    if (self->_URLSpoofingMitigator == objectCopy)
    {
      if ([pathCopy isEqualToString:@"UIShouldReflectCommittedURLInsteadOfCurrentURL"])
      {
        [(_SFBrowserContentViewController *)self _updateUI];
      }
    }

    else if (self->_defaultWebpagePreferences == objectCopy)
    {
      if ([pathCopy isEqualToString:*MEMORY[0x1E69C9398]])
      {
        [(_SFBrowserContentViewController *)self _updateUsesLockdownStatusBar];
      }
    }

    else
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
      v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      if (v14 | v15 && ([v14 isEqual:v15] & 1) == 0)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __82___SFBrowserContentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v16[3] = &unk_1E848F9B0;
        v17 = pathCopy;
        selfCopy = self;
        dispatch_async(MEMORY[0x1E69E96A0], v16);
      }
    }
  }
}

- (void)setDisplayMode:(int64_t)mode
{
  if (self->_displayMode != mode)
  {
    _isPreviewing = [(_SFBrowserContentViewController *)self _isPreviewing];
    browserView = self->_browserView;
    if (_isPreviewing)
    {
      [(_SFBrowserView *)browserView setPreviewHeader:0];
    }

    else
    {
      [(_SFBrowserView *)browserView setNavigationBar:0];
      [(_SFBrowserView *)self->_browserView setToolbar:0];
    }

    self->_displayMode = mode;
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
  safari_safariServicesInjectedBundleURL = [MEMORY[0x1E696AAE8] safari_safariServicesInjectedBundleURL];
  [v3 setInjectedBundleURL:safari_safariServicesInjectedBundleURL];

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
  processPoolConfiguration = [(_SFBrowserContentViewController *)self processPoolConfiguration];
  v5 = [v3 _initWithConfiguration:processPoolConfiguration];

  mEMORY[0x1E69E20E8] = [MEMORY[0x1E69E20E8] sharedWebFilterSettings];
  LODWORD(v3) = [mEMORY[0x1E69E20E8] isWebFilterEnabled];

  if (v3)
  {
    v8 = +[_SFSearchEngineController sharedInstance];
    engines = [v8 engines];
    [v5 _setObject:engines forBundleParameter:*MEMORY[0x1E69C9A48]];
  }

  SafariShared::ReaderAvailabilityController::configureProcessPool(v5, v7);
  return v5;
}

- (id)processPool
{
  v3 = [_SFBrowserContentViewController processPool]::processPool;
  if (![_SFBrowserContentViewController processPool]::processPool)
  {
    newProcessPool = [(_SFBrowserContentViewController *)self newProcessPool];
    v5 = [_SFBrowserContentViewController processPool]::processPool;
    [_SFBrowserContentViewController processPool]::processPool = newProcessPool;

    v3 = [_SFBrowserContentViewController processPool]::processPool;
  }

  return v3;
}

- (id)_createPersistentDataStoreWithConfiguration:(id)configuration
{
  v3 = [MEMORY[0x1E69853B8] safari_dataStoreWithConfiguration:configuration];

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
      websiteDataStoreConfiguration = [(_SFBrowserContentViewController *)self websiteDataStoreConfiguration];
      if (websiteDataStoreConfiguration)
      {
        [(_SFBrowserContentViewController *)self _createPersistentDataStoreWithConfiguration:websiteDataStoreConfiguration];
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

- (void)_setUpCookieStoragePolicyForDataStore:(id)store
{
  v10 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  httpCookieStore = [storeCopy httpCookieStore];
  [httpCookieStore sf_applySafariCookieStoragePolicy];

  [(WKPreferences *)self->_wkPreferences sf_applySafariStorageBlockingPolicy];
  v6 = WBS_LOG_CHANNEL_PREFIXSVCPrivacy();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    mEMORY[0x1E695AC00] = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
    v8 = 134217984;
    cookieAcceptPolicy = [mEMORY[0x1E695AC00] cookieAcceptPolicy];
    _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Set cookie storage policy to %ld", &v8, 0xCu);
  }
}

- (id)webViewConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
  websiteDataStore = [(_SFBrowserContentViewController *)self websiteDataStore];
  [v3 setWebsiteDataStore:websiteDataStore];
  processPool = [(_SFBrowserContentViewController *)self processPool];
  [v3 setProcessPool:processPool];

  userContentController = [(_SFBrowserContentViewController *)self userContentController];
  [v3 setUserContentController:userContentController];

  [v3 setPreferences:self->_wkPreferences];
  [v3 setAllowsPictureInPictureMediaPlayback:0];
  v7 = _SFApplicationNameForUserAgent();
  [v3 setApplicationNameForUserAgent:v7];

  [v3 _setApplePayEnabled:1];
  [v3 setIgnoresViewportScaleLimits:1];
  [v3 _setNeedsStorageAccessFromFileURLsQuirk:0];
  [v3 setShowsSystemScreenTimeBlockingView:0];
  preferences = [v3 preferences];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    safari_warnAboutFraudulentWebsites = [safari_browserDefaults safari_warnAboutFraudulentWebsites];
    preferences2 = [v3 preferences];
    [preferences2 _setSafeBrowsingEnabled:safari_warnAboutFraudulentWebsites];
  }

  safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  LODWORD(v14) = [safari_browserDefaults2 BOOLForKey:*MEMORY[0x1E69B1E80]];
  if ([safari_browserDefaults2 BOOLForKey:*MEMORY[0x1E69B1F70]])
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
  [v3 _setMainContentUserGestureOverrideEnabled:{objc_msgSend(safari_browserDefaults2, "BOOLForKey:", *MEMORY[0x1E69B1F18])}];
  [v3 setAllowsInlineMediaPlayback:{objc_msgSend(safari_browserDefaults2, "BOOLForKey:", *MEMORY[0x1E69B1F20])}];
  [v3 _setInlineMediaPlaybackRequiresPlaysInlineAttribute:{objc_msgSend(safari_browserDefaults2, "BOOLForKey:", *MEMORY[0x1E69B1EE8])}];
  [v3 _setInvisibleAutoplayNotPermitted:{objc_msgSend(safari_browserDefaults2, "BOOLForKey:", *MEMORY[0x1E69B1EF0])}];
  [v3 _setLegacyEncryptedMediaAPIEnabled:{objc_msgSend(safari_browserDefaults2, "BOOLForKey:", *MEMORY[0x1E69B1F10])}];
  [v3 _setDragLiftDelay:2];
  mEMORY[0x1E695AC00] = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  webui_trackerProtectionEnabled = [mEMORY[0x1E695AC00] webui_trackerProtectionEnabled];
  websiteDataStore2 = [v3 websiteDataStore];
  [websiteDataStore2 _setResourceLoadStatisticsEnabled:webui_trackerProtectionEnabled];

  defaultWebpagePreferences = [v3 defaultWebpagePreferences];
  v21 = _SFApplicationNameForDesktopUserAgent();
  [defaultWebpagePreferences _setApplicationNameForUserAgentWithModernCompatibility:v21];

  [v3 _setSystemPreviewEnabled:1];
  _hostAppBundleId = [(_SFBrowserContentViewController *)self _hostAppBundleId];
  if (_hostAppBundleId)
  {
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      _hostAppBundleId2 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
      [v3 _setAttributedBundleIdentifier:_hostAppBundleId2];
    }
  }

  [(_SFBrowserContentViewController *)self _setUpCookieStoragePolicyForDataStore:websiteDataStore];

  return v3;
}

- (BOOL)isSafariRestricted
{
  v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilesafari"];
  appState = [v2 appState];
  isRestricted = [appState isRestricted];

  return isRestricted;
}

- (_SFReloadOptionsController)reloadOptionsController
{
  [(_SFBrowserContentViewController *)self _setUpReloadOptionsControllerIfNeeded];
  reloadOptionsController = self->_reloadOptionsController;

  return reloadOptionsController;
}

- (void)_updateTrackerProtectionPreferences
{
  webView = [(_SFBrowserContentViewController *)self webView];
  configuration = [webView configuration];
  websiteDataStore = [configuration websiteDataStore];

  mEMORY[0x1E695AC00] = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  [websiteDataStore _setResourceLoadStatisticsEnabled:{objc_msgSend(mEMORY[0x1E695AC00], "webui_trackerProtectionEnabled")}];
}

- (void)_initializeWebKitExperimentalFeatures
{
  v17 = *MEMORY[0x1E69E9840];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _experimentalFeatures = [MEMORY[0x1E6985338] _experimentalFeatures];
  v5 = [_experimentalFeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(_experimentalFeatures);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [MEMORY[0x1E695E000] safari_keyForWebKitExperimentalFeature:v8];
        v10 = [safari_browserDefaults objectForKey:v9];
        v11 = v10 == 0;

        if (!v11)
        {
          -[WKPreferences _setEnabled:forExperimentalFeature:](self->_wkPreferences, "_setEnabled:forExperimentalFeature:", [safari_browserDefaults BOOLForKey:v9], v8);
        }
      }

      v5 = [_experimentalFeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_setUpWebViewControllerIfNeeded
{
  if (![(NSMutableArray *)self->_webViewControllers count])
  {
    v3 = [SFReaderEnabledWebViewController alloc];
    webViewConfiguration = [(_SFBrowserContentViewController *)self webViewConfiguration];
    contentBlockerManager = [(_SFBrowserContentViewController *)self contentBlockerManager];
    v6 = [(SFWebViewController *)v3 initWithWebViewConfiguration:webViewConfiguration contentBlockerManager:contentBlockerManager];

    [(_SFBrowserContentViewController *)self _pushWebViewController:v6];
    [(_SFBrowserContentViewController *)self _didLoadWebView];
  }
}

- (BOOL)_hideFindOnPage
{
  _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
  findInteraction = [_currentWebView findInteraction];

  isFindNavigatorVisible = [findInteraction isFindNavigatorVisible];
  if (isFindNavigatorVisible)
  {
    [findInteraction dismissFindNavigator];
  }

  return isFindNavigatorVisible;
}

- (BOOL)_shouldGoBackToOwnerWebView
{
  if ([(NSMutableArray *)self->_webViewControllers count]< 2)
  {
    return 0;
  }

  webView = [(_SFBrowserContentViewController *)self webView];
  backForwardList = [webView backForwardList];
  backList = [backForwardList backList];
  v6 = [backList count] < 2;

  return v6;
}

- (void)_willBeginUserInitiatedNavigation
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  [webViewController willBeginUserInitiatedNavigation];

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
    webView = [(_SFBrowserContentViewController *)self webView];
    backForwardList = [webView backForwardList];
    backItem = [backForwardList backItem];

    v5 = [backItem URL];
    absoluteString = [v5 absoluteString];
    safari_isJavaScriptURLString = [absoluteString safari_isJavaScriptURLString];

    if (safari_isJavaScriptURLString)
    {
      [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedUseOfJavaScriptAlert];
    }

    else
    {
      self->_shouldDismissReaderInReponseToSameDocumentNavigation = 1;
      self->_loadWasUserDriven = 1;
      [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
      webView2 = [(_SFBrowserContentViewController *)self webView];
      goBack = [webView2 goBack];
    }
  }
}

- (void)_goForward
{
  [(_SFBrowserContentViewController *)self _dismissTransientUIAnimated:1];
  webView = [(_SFBrowserContentViewController *)self webView];
  backForwardList = [webView backForwardList];
  forwardItem = [backForwardList forwardItem];

  v5 = [forwardItem URL];
  absoluteString = [v5 absoluteString];
  safari_isJavaScriptURLString = [absoluteString safari_isJavaScriptURLString];

  if (safari_isJavaScriptURLString)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedUseOfJavaScriptAlert];
  }

  else
  {
    self->_shouldDismissReaderInReponseToSameDocumentNavigation = 1;
    self->_loadWasUserDriven = 1;
    [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
    webView2 = [(_SFBrowserContentViewController *)self webView];
    goForward = [webView2 goForward];
  }
}

- (void)_setUpReloadOptionsControllerIfNeeded
{
  if (!self->_reloadOptionsController)
  {
    webView = [(_SFBrowserContentViewController *)self webView];
    if (webView)
    {
      v14 = webView;
      v4 = [[_SFInjectedJavaScriptController alloc] initWithWebView:webView];
      v5 = [_SFReloadOptionsController alloc];
      requestDesktopSitePreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor requestDesktopSitePreferenceManager];
      v7 = [(_SFReloadOptionsController *)v5 initWithWebView:v14 activityJSController:v4 perSitePreferenceManager:requestDesktopSitePreferenceManager];
      reloadOptionsController = self->_reloadOptionsController;
      self->_reloadOptionsController = v7;

      v9 = [v14 URL];
      [(_SFReloadOptionsController *)self->_reloadOptionsController setSupportsAdvancedPrivacyProtections:[(_SFBrowserContentViewController *)self supportsAdvancedPrivacyProtectionsForURL:v9]];

      v10 = self->_reloadOptionsController;
      _navigationUtilitiesManager = [(_SFBrowserContentViewController *)self _navigationUtilitiesManager];
      [_navigationUtilitiesManager setReloadOptionsController:v10];

      _persona = [(_SFBrowserContentViewController *)self _persona];
      _navigationUtilitiesManager2 = [(_SFBrowserContentViewController *)self _navigationUtilitiesManager];
      [_navigationUtilitiesManager2 setPersona:_persona];

      webView = v14;
    }
  }
}

- (void)_setUpCalendarEventDetectorIfNeeded
{
  if (!self->_calendarEventDetector)
  {
    v3 = [_SFCalendarEventDetector alloc];
    webView = [(_SFBrowserContentViewController *)self webView];
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
    progressView = [(_SFLinkPreviewHeader *)v20 progressView];
    [(WBSFluidProgressController *)self->_fluidProgressController setDelegate:progressView];
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
    progressView = [(_SFLinkPreviewHeader *)v20 progressView];
    [(WBSFluidProgressController *)self->_fluidProgressController setDelegate:progressView];
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

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    readerWebView = [(_SFReaderViewController *)self->_readerViewController readerWebView];
    scrollView = [readerWebView scrollView];
    [scrollView setDelegate:0];
  }

  v7.receiver = self;
  v7.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v7 didMoveToParentViewController:controllerCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v5 viewWillAppear:appear];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50___SFBrowserContentViewController_viewWillAppear___block_invoke;
  v4[3] = &unk_1E8490658;
  v4[4] = self;
  [(_SFBrowserContentViewController *)self decideDataSharingModeAndSetUpWebViewWithCompletionHandler:v4];
  [(_SFBrowserView *)self->_browserView setNeedsLayout];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v3 viewDidAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v4 viewDidDisappear:disappear];
  [(_SFBrowserContentViewController *)self _cancelPendingUpdateUserActivityTimer];
  [(_SFBrowserContentViewController *)self _invalidateUserActivity];
}

- (void)decideDataSharingModeAndSetUpWebViewWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  webViewController = [(_SFBrowserContentViewController *)self webViewController];

  if (!webViewController)
  {
    if (!self->_safariDataSharingMode)
    {
      self->_safariDataSharingMode = [(_SFBrowserContentViewController *)self _decideDataSharingMode];
    }

    [(_SFBrowserContentViewController *)self _setUpWebViewControllerIfNeeded];
  }

  handlerCopy[2]();
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
  view = [(_SFBrowserContentViewController *)self view];
  [view frame];
  self->_lastSizeUsedForBrowserViewLayout.width = v4;
  self->_lastSizeUsedForBrowserViewLayout.height = v5;

  view2 = [(_SFBrowserContentViewController *)self view];
  [view2 bounds];
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
  _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
  scrollView = [_currentWebView scrollView];
  [(_SFBrowserContentViewController *)self _setupPocketWithScrollView:scrollView];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
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
  currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
  _safeAreaShouldAffectObscuredInsets = [currentWebView _safeAreaShouldAffectObscuredInsets];

  return _safeAreaShouldAffectObscuredInsets;
}

- (UIEdgeInsets)_effectiveWebViewSafeAreaInsets
{
  if ([(_SFBrowserContentViewController *)self _safeAreaShouldAffectWebViewObscuredInsets])
  {
    currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
    [currentWebView safeAreaInsets];
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
    statusBarBackgroundView = [(_SFBrowserView *)self->_browserView statusBarBackgroundView];
    [statusBarBackgroundView bounds];
    CGRectGetHeight(v47);
  }

  else
  {
    statusBarBackgroundView = [(_SFBrowserContentViewController *)self _currentWebView];
    [statusBarBackgroundView safeAreaInsets];
    v40 = v3;
    [(_SFToolbar *)self->_bottomToolbar sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    navigationBar = [(_SFBrowserView *)self->_browserView navigationBar];
    [navigationBar defaultHeight];
    v6 = v5;
    [navigationBar defaultHeight];
    [(_SFBrowserView *)self->_browserView toolbar];

    v7 = v40 + v6;
    if (!self->_keepBarsMinimized)
    {
      if (!self->_interfaceFillsScreen)
      {
        [navigationBar minimumHeight];
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
  _isPreviewing = [(_SFBrowserContentViewController *)self _isPreviewing];
  browserView = self->_browserView;
  if (_isPreviewing)
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
  webView = [(_SFBrowserContentViewController *)self webView];
  [webView _overrideLayoutParametersWithMinimumLayoutSize:v29 minimumUnobscuredSizeOverride:v30 maximumUnobscuredSizeOverride:{v31, v32, v33, v34}];

  readerWebView = [(_SFReaderViewController *)self->_readerViewController readerWebView];
  [readerWebView _overrideLayoutParametersWithMinimumLayoutSize:v29 minimumUnobscuredSizeOverride:v30 maximumUnobscuredSizeOverride:{v31, v32, v33, v34}];
}

- (BOOL)_isSplitScreen
{
  view = [(_SFBrowserContentViewController *)self view];
  window = [view window];
  [window bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
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
  _isSplitScreen = [(_SFBrowserContentViewController *)self _isSplitScreen];
  webView = [(_SFBrowserContentViewController *)self webView];
  [webView _setAllowsViewportShrinkToFit:_isSplitScreen];
}

- (BOOL)_shouldUpdateCurrentScrollViewInsets
{
  currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
  fullscreenState = [currentWebView fullscreenState];

  if (fullscreenState < 4)
  {
    return 1u >> (fullscreenState & 0xF);
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

  currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
  v3 = MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v86 = *(MEMORY[0x1E69DDCE0] + 8);
  if (![(_SFBrowserContentViewController *)self _isPreviewing])
  {
    browserView = self->_browserView;
    if (self->_displayMode == 2)
    {
      statusBarBackgroundView = [(_SFBrowserView *)browserView statusBarBackgroundView];
      [statusBarBackgroundView bounds];
      Height = CGRectGetHeight(v89);

      v83 = Height;
      goto LABEL_19;
    }

    [(_SFBrowserView *)browserView safeAreaInsets];
    v13 = v12;
    crashBanner = [(_SFBrowserView *)self->_browserView crashBanner];
    [crashBanner bounds];
    v15 = CGRectGetHeight(v90);

    pinnableBanner = [(_SFBrowserView *)self->_browserView pinnableBanner];
    [pinnableBanner bounds];
    CGRectGetHeight(v91);

    navigationBar = [(_SFBrowserView *)self->_browserView navigationBar];
    [navigationBar defaultHeight];
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
    scrollView = [currentWebView scrollView];
    [scrollView contentOffset];

    goto LABEL_18;
  }

  previewHeader = [(_SFBrowserView *)self->_browserView previewHeader];
  [previewHeader systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
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

  [currentWebView safeAreaInsets];
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
  scrollView2 = [currentWebView scrollView];
  [scrollView2 _sf_setContentInsetAdjustments:{v81, v35, v79, v78}];

  [currentWebView _setObscuredInsets:{v37, v39, v41, v43}];
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
    view = [(_SFBrowserContentViewController *)self view];
    [view safeAreaInsets];
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

  scrollView3 = [currentWebView scrollView];
  [scrollView3 setVerticalScrollIndicatorInsets:{v80, left, v49, v82}];
  [scrollView3 setHorizontalScrollIndicatorInsets:{top, v53, v55, v57}];
  _safeAreaShouldAffectWebViewObscuredInsets = [(_SFBrowserContentViewController *)self _safeAreaShouldAffectWebViewObscuredInsets];
  v70 = *v3;
  v71 = v3[1];
  if (!_safeAreaShouldAffectWebViewObscuredInsets)
  {
    v70 = v75;
    v71 = v74;
  }

  v72 = v3[2];
  v73 = v3[3];
  if (!_safeAreaShouldAffectWebViewObscuredInsets)
  {
    v72 = v77;
    v73 = v76;
  }

  [currentWebView _setUnobscuredSafeAreaInsets:{v70, v71, v72, v73, v76}];
}

- (void)_updateScrollIndicatorVerticalInsets:(UIEdgeInsets)insets horizontalInsets:(UIEdgeInsets)horizontalInsets
{
  self->_verticalScrollIndicatorBaseInsets = insets;
  self->_horizontalScrollIndicatorBaseInsets = horizontalInsets;
  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
}

- (void)webViewControllerDidChangeSafeAreaInsets:(id)insets
{
  [(_SFBrowserContentViewController *)self _updateWebViewLayoutSize];

  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
}

- (void)webViewControllerDidChangeSafeAreaShouldAffectObscuredInsets:(id)insets
{
  [(_SFBrowserContentViewController *)self _updateWebViewLayoutSize];

  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
}

- (BOOL)_canScrollToTopInView:(id)view
{
  viewCopy = view;
  [viewCopy contentOffset];
  v6 = v5;
  [viewCopy contentInset];
  v8 = v6 > -v7 || [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator state]== 0;

  return v8;
}

- (void)_scrollToTopFromScrollToTopView
{
  _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
  scrollView = [_currentWebView scrollView];

  if ([(_SFBrowserContentViewController *)self _canScrollToTopInView:scrollView])
  {
    [scrollView contentOffset];
    v5 = v4;
    [scrollView contentInset];
    v7 = v6;
    if ([(_SFBrowserContentViewController *)self scrollViewShouldScrollToTop:scrollView])
    {
      [scrollView setContentOffset:1 animated:{v5, -v7}];
    }
  }
}

- (BOOL)_usesScrollToTopView
{
  view = [(_SFBrowserContentViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  if ([statusBarManager isStatusBarHidden])
  {
    _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
    scrollView = [_currentWebView scrollView];
    v9 = [(_SFBrowserContentViewController *)self _canScrollToTopInView:scrollView];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateScrollToTopView
{
  shouldUseScrollToTopView = [(_SFBrowserView *)self->_browserView shouldUseScrollToTopView];
  [(_SFBrowserView *)self->_browserView setShouldUseScrollToTopView:[(_SFBrowserContentViewController *)self _usesScrollToTopView]];
  scrollToTopView = [(_SFBrowserView *)self->_browserView scrollToTopView];

  if (scrollToTopView && !shouldUseScrollToTopView)
  {
    scrollToTopView2 = [(_SFBrowserView *)self->_browserView scrollToTopView];
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__scrollToTopFromScrollToTopView];
    [scrollToTopView2 addGestureRecognizer:v5];
  }
}

- (void)viewWillLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v11 viewWillLayoutSubviews];
  view = [(_SFBrowserContentViewController *)self view];
  window = [view window];
  rootViewController = [window rootViewController];

  view2 = [(_SFBrowserContentViewController *)self view];
  [view2 bounds];
  CGRectGetWidth(v12);
  v7 = _SFSizeClassForWidth();
  traitOverrides = [rootViewController traitOverrides];
  [traitOverrides setHorizontalSizeClass:v7];

  if ([(_SFBrowserContentViewController *)self _isPreviewing])
  {
    [(_SFBrowserContentViewController *)self preferredContentSize];
    v10 = Width;
    if (Width == 0.0)
    {
      view2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [view2 bounds];
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
  view = [(_SFBrowserContentViewController *)self view];
  [view frame];
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

- (void)_updateStatusBarStyleForced:(BOOL)forced
{
  if (self->_customPreferredStatusBarStyle)
  {
    v3 = 0;
  }

  else
  {
    v3 = !forced;
  }

  if (!v3)
  {
    self->_customPreferredStatusBarStyle = 0;
    [(_SFBrowserContentViewController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v10 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection = [(_SFBrowserContentViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);

  if (v8)
  {
    pinnableBanner = [(_SFBrowserView *)self->_browserView pinnableBanner];
    [pinnableBanner contentSizeCategoryDidChange];
  }
}

- (void)_setUpToolbar
{
  navigationBar = [(_SFBrowserView *)self->_browserView navigationBar];

  if (navigationBar)
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
      isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
      v9 = [[_SFToolbar alloc] initWithPlacement:1];
      v10 = self->_bottomToolbar;
      self->_bottomToolbar = v9;

      v11 = _SFBackdropGroupNameForOwner();
      [(_SFToolbar *)self->_bottomToolbar setBackdropGroupName:v11];
      if (isSolariumEnabled)
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

- (void)setPreferredBarTintColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_preferredBarTintColor] & 1) == 0)
  {
    objc_storeStrong(&self->_preferredBarTintColor, color);
    viewIfLoaded = [(_SFBrowserContentViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)setPreferredControlTintColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_preferredControlTintColor] & 1) == 0)
  {
    objc_storeStrong(&self->_preferredControlTintColor, color);
    viewIfLoaded = [(_SFBrowserContentViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)setHostAppModalPresentationStyle:(int64_t)style
{
  styleCopy = style;
  self->_hostAppModalPresentationStyle = style;
  if (![(_SFBrowserContentViewController *)self _effectiveBarCollapsingEnabled])
  {
    [(_SFBrowserContentViewController *)self _showBars];
  }

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    if (styleCopy == 3)
    {
      presentationController = [(_SFBrowserContentViewController *)self presentationController];
      styleCopy = [presentationController presentationStyle];
    }

    [(_SFNavigationBar *)self->_navigationBar updateMetricsWithModalPresentationStyle:styleCopy];
    IsPad = _SFDeviceIsPad();
    if (styleCopy == 2)
    {
      v6 = IsPad;
    }

    else
    {
      v6 = 0;
    }

    [(_SFBrowserView *)self->_browserView setUseNarrowBottomToolbarInsets:v6];
    viewIfLoaded = [(_SFBrowserContentViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (BOOL)_effectiveBarCollapsingEnabled
{
  barCollapsingEnabled = [(SFSafariViewControllerConfiguration *)self->_configuration barCollapsingEnabled];
  if (barCollapsingEnabled)
  {
    LOBYTE(barCollapsingEnabled) = ![(_SFBrowserContentViewController *)self _isPresentedAsSheet];
  }

  return barCollapsingEnabled;
}

- (void)_updateBarTheme
{
  traitCollection = [(_SFBrowserContentViewController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
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
    _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
    _sampledTopFixedPositionContentColor = [_currentWebView _sampledTopFixedPositionContentColor];
    v7 = _sampledTopFixedPositionContentColor;
    if (_sampledTopFixedPositionContentColor)
    {
      underPageBackgroundColor = _sampledTopFixedPositionContentColor;
    }

    else
    {
      underPageBackgroundColor = [_currentWebView underPageBackgroundColor];
    }

    v9 = underPageBackgroundColor;

    if ([v9 sf_isDarkColorForAdaptiveGlass])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = MEMORY[0x1E69B1C20];
    traitCollection2 = [(_SFBrowserContentViewController *)self traitCollection];
    v13 = [v11 shouldDisableBackgroundColorInBar:v9 traitCollection:traitCollection2];

    if (v13)
    {
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      traitCollection3 = [(_SFBrowserContentViewController *)self traitCollection];
      v16 = [systemBackgroundColor resolvedColorWithTraitCollection:traitCollection3];

      v9 = v16;
      v10 = v3;
    }

    else
    {
      v16 = 0;
    }

    [_currentWebView _setShouldSuppressTopColorExtensionView:v13];
    scrollView = [_currentWebView scrollView];
    [scrollView _setPocketColor:v16 forEdge:1];

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

- (void)_updateBannerTheme:(id)theme
{
  v6 = [MEMORY[0x1E69B1AC0] themeWithTheme:theme];
  pinnableBanner = [(_SFBrowserView *)self->_browserView pinnableBanner];
  [pinnableBanner setTheme:v6];

  crashBanner = [(_SFBrowserView *)self->_browserView crashBanner];
  [crashBanner setTheme:v6];
}

- (void)setConfiguration:(id)configuration
{
  v20 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  objc_storeStrong(&self->_configuration, configuration);
  [(_SFBrowserContentViewController *)self _updateModalInPresentation];
  customButtonUIActivity = self->_customButtonUIActivity;
  self->_customButtonUIActivity = 0;

  self->_customActivityButtonIsValid = 0;
  activityButton = [(SFSafariViewControllerConfiguration *)self->_configuration activityButton];
  v8 = activityButton;
  if (activityButton)
  {
    if ([activityButton _fieldsAreValid])
    {
      extensionIdentifier = [v8 extensionIdentifier];
      v18 = 0;
      v10 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:extensionIdentifier error:&v18];
      v11 = v18;
      if (v11 || !v10)
      {
        _hostAppBundleId = WBS_LOG_CHANNEL_PREFIXExtensions();
        if (os_log_type_enabled(_hostAppBundleId, OS_LOG_TYPE_ERROR))
        {
          safari_privacyPreservingDescription = [v11 safari_privacyPreservingDescription];
          [(_SFBrowserContentViewController *)extensionIdentifier setConfiguration:safari_privacyPreservingDescription, buf, _hostAppBundleId];
        }
      }

      else
      {
        _hostAppBundleId = [(_SFBrowserContentViewController *)self _hostAppBundleId];
        v13 = [(UIApplicationExtensionActivity *)[_SFApplicationExtensionActivity alloc] initWithApplicationExtension:v10];
        v14 = [(_SFApplicationExtensionActivity *)v13 validateExtensionHasSameContainerAsHostApp:_hostAppBundleId];
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
            [(_SFBrowserContentViewController *)extensionIdentifier setConfiguration:_hostAppBundleId, v17];
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
  view = [(_SFBrowserContentViewController *)self view];
  [view bounds];
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
  traitCollection = [(_SFBrowserContentViewController *)self traitCollection];
  self->_interfaceFillsScreen = [traitCollection verticalSizeClass] == 1;

  interfaceFillsScreen = self->_interfaceFillsScreen;
  browserView = self->_browserView;

  [(_SFBrowserView *)browserView setNavigationBarBehavior:interfaceFillsScreen];
}

- (void)_updateUsesLockdownStatusBar
{
  isLockdownModeEnabledForSafari = [MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari];
  if (isLockdownModeEnabledForSafari)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B1B28]);
  }

  else
  {
    v4 = 0;
  }

  [(_SFNavigationBar *)self->_navigationBar setLockdownStatusBar:v4];
  if (isLockdownModeEnabledForSafari)
  {
  }

  navigationBarItem = self->_navigationBarItem;
  lockdownStatusBar = [(_SFNavigationBar *)self->_navigationBar lockdownStatusBar];
  [lockdownStatusBar setNavigationBarItem:navigationBarItem];

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
    _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
    scrollView = [_currentWebView scrollView];
    [scrollView contentOffset];
    v4 = v7;
  }

  return v4;
}

- (double)dynamicBarAnimator:(id)animator minimumTopBarHeightForOffset:(double)offset
{
  if (self->_keepBarsMinimized || self->_alwaysShowTopBar)
  {
    return 2.22507386e-308;
  }

  navigationBar = [(_SFBrowserView *)self->_browserView navigationBar];
  [navigationBar defaultHeight];
  v9 = v8;

  _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
  scrollView = [_currentWebView scrollView];
  [scrollView contentInset];
  v5 = v9 - v12 - offset;

  return v5;
}

- (void)_setWebViewController:(id)controller
{
  controllerCopy = controller;
  [(_SFBrowserView *)self->_browserView addWebViewController:?];
  webView = [controllerCopy webView];
  scrollView = [webView scrollView];
  [scrollView setDelegate:self];

  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
  [webView _setFindInteractionEnabled:{-[_SFBrowserContentViewController _onlyWantsWebAppShortcuts](self, "_onlyWantsWebAppShortcuts") ^ 1}];
  _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
  scrollView2 = [_currentWebView scrollView];
  [(_SFBrowserContentViewController *)self _setupPocketWithScrollView:scrollView2];

  [(_SFBrowserContentViewController *)self becomeFirstResponder];
}

- (void)_setupPocketWithScrollView:(id)view
{
  viewCopy = view;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:viewCopy edge:1];
    [(_SFNavigationBar *)self->_navigationBar setPocketContainerInteraction:v4];

    if (self->_bottomToolbar)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:viewCopy edge:4];
      [(_SFToolbar *)self->_bottomToolbar setPocketContainerInteraction:v5];
    }

    hardStyle = [MEMORY[0x1E69DCED8] hardStyle];
    topEdgeEffect = [viewCopy topEdgeEffect];
    [topEdgeEffect setStyle:hardStyle];
  }
}

- (WKWebView)webView
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  webView = [webViewController webView];

  return webView;
}

- (void)_showReaderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(_SFBrowserContentViewController *)self isBlockedByScreenTime])
  {

    [(_SFBrowserContentViewController *)self _setShowingReader:1 deactivationMode:2 animated:animatedCopy];
  }
}

- (BOOL)_readerViewControllerNeedsSetUp
{
  webView = [(_SFBrowserContentViewController *)self webView];
  backForwardList = [webView backForwardList];
  currentItem = [backForwardList currentItem];

  if (self->_readerViewController)
  {
    v6 = [currentItem isEqual:self->_lastBackFowardListItemOnWhichReaderWasActivated] ^ 1;
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
    _makeReaderViewController = [(_SFBrowserContentViewController *)self _makeReaderViewController];
    readerViewController = self->_readerViewController;
    self->_readerViewController = _makeReaderViewController;
  }
}

- (id)_makeReaderViewController
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  webView = [webViewController webView];
  backForwardList = [webView backForwardList];
  currentItem = [backForwardList currentItem];

  v7 = [[_SFReaderViewController alloc] initWithOriginalWebView:webView];
  [(_SFReaderViewController *)v7 setDelegate:self];
  v8 = [webView URL];
  [webViewController setSupportsAdvancedPrivacyProtections:{-[_SFBrowserContentViewController supportsAdvancedPrivacyProtectionsForURL:](self, "supportsAdvancedPrivacyProtectionsForURL:", v8)}];

  view = [(_SFReaderViewController *)v7 view];
  [webViewController setUpReaderWithReaderWebView:view];

  lastBackFowardListItemOnWhichReaderWasActivated = self->_lastBackFowardListItemOnWhichReaderWasActivated;
  self->_lastBackFowardListItemOnWhichReaderWasActivated = currentItem;

  return v7;
}

- (void)_setShowingReader:(BOOL)reader deactivationMode:(unint64_t)mode animated:(BOOL)animated
{
  if (self->_showingReader != reader)
  {
    animatedCopy = animated;
    readerCopy = reader;
    [(_SFBrowserContentViewController *)self _setShowingReader:?];
    [(_SFBrowserContentViewController *)self _updateUI];
    [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
    pageFormatMenuController = [(_SFBrowserContentViewController *)self pageFormatMenuController];
    viewController = [pageFormatMenuController viewController];
    [viewController dismissViewControllerAnimated:1 completion:0];

    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    dialogController = [webViewController dialogController];
    [dialogController owningTabWillClose];

    contentContainerView = [(_SFBrowserView *)self->_browserView contentContainerView];
    v14 = [contentContainerView snapshotViewAfterScreenUpdates:0];

    if (readerCopy)
    {
      [(_SFBrowserContentViewController *)self _setUpReaderViewController];
      [(_SFBrowserContentViewController *)self addChildViewController:self->_readerViewController];
      [(_SFReaderViewController *)self->_readerViewController didMoveToParentViewController:self];
      [(_SFBrowserContentViewController *)self _setWebViewController:self->_readerViewController];
      if (!animatedCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      [(_SFReaderViewController *)self->_readerViewController willMoveToParentViewController:0];
      [(_SFReaderViewController *)self->_readerViewController removeFromParentViewController];
      [(_SFBrowserContentViewController *)self _setWebViewController:webViewController];
      self->_lastReaderDeactivationMode = mode;
      if (!animatedCopy)
      {
LABEL_10:

        return;
      }
    }

    window = [(_SFBrowserView *)self->_browserView window];
    [window setUserInteractionEnabled:0];
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
    contentContainerView2 = [(_SFBrowserView *)self->_browserView contentContainerView];
    if (self->_showingReader)
    {
      [(_SFReaderViewController *)self->_readerViewController view];
    }

    else
    {
      [webViewController view];
    }
    v23 = ;
    [contentContainerView2 insertSubview:v21 aboveSubview:v23];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke;
    aBlock[3] = &unk_1E8494B30;
    v24 = window;
    v33 = &v34;
    v29 = v24;
    selfCopy = self;
    v25 = v21;
    v31 = v25;
    v32 = v14;
    v26 = _Block_copy(aBlock);
    readerController = [webViewController readerController];
    [readerController setUpReaderWebViewIfNeededAndPerformBlock:v26];

    _Block_object_dispose(&v34, 8);
    goto LABEL_10;
  }
}

- (void)_setShowingReader:(BOOL)reader
{
  if (self->_showingReader != reader)
  {
    readerCopy = reader;
    self->_showingReader = reader;
    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    readerController = [webViewController readerController];
    [readerController setReaderIsActive:readerCopy];

    if (readerCopy)
    {
      processPool = [(_SFBrowserContentViewController *)self processPool];
      SafariShared::ReaderAvailabilityController::updateReaderOrTranslationLastActivated(processPool, v7);
    }
  }
}

- (id)_requestBySettingAdvancedPrivacyProtectionsFlag:(id)flag
{
  flagCopy = flag;
  v5 = [flagCopy URL];
  v6 = [(_SFBrowserContentViewController *)self supportsAdvancedPrivacyProtectionsForURL:v5];

  v7 = [flagCopy safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:v6];

  return v7;
}

- (void)loadRequest:(id)request
{
  requestCopy = request;
  self->_loadWasUserDriven = 1;
  [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
  v5 = [(_SFBrowserContentViewController *)self _requestBySettingAdvancedPrivacyProtectionsFlag:requestCopy];

  if (self->_originalRequestURL || ([v5 URL], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "safari_isWellKnownChangePasswordURL"), v6, !v7))
  {
    webView = [(_SFBrowserContentViewController *)self webView];
    v14 = [webView loadRequest:v5];
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

- (void)addTrustedEventAttribution:(id)attribution
{
  attributionCopy = attribution;
  v5 = WBS_LOG_CHANNEL_PREFIXEventAttribution();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Giving valid UIEventAttribution to WebKit", v8, 2u);
  }

  webView = [(_SFBrowserContentViewController *)self webView];
  _hostAppBundleId = [(_SFBrowserContentViewController *)self _hostAppBundleId];
  [webView _setEphemeralUIEventAttribution:attributionCopy forApplicationWithBundleID:_hostAppBundleId];
}

- (BOOL)isShowingErrorPage
{
  quickLookDocument = [(_SFBrowserContentViewController *)self quickLookDocument];

  webView = [(_SFBrowserContentViewController *)self webView];
  v5 = webView;
  if (!quickLookDocument)
  {
    _unreachableURL = [webView _unreachableURL];
    if (_unreachableURL)
    {
      v7 = 1;
      goto LABEL_9;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    _safeBrowsingWarning = [v5 _safeBrowsingWarning];
    v7 = _safeBrowsingWarning != 0;

    if (!quickLookDocument)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (!quickLookDocument)
    {
LABEL_6:
      _unreachableURL = 0;
LABEL_9:
    }
  }

  return v7;
}

- (BOOL)isSecure
{
  webView = [(_SFBrowserContentViewController *)self webView];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([webView _negotiatedLegacyTLS] & 1) != 0 || !objc_msgSend(webView, "hasOnlySecureContent"))
  {
    v5 = 0;
  }

  else
  {
    v3 = [webView URL];
    _committedURL = [webView _committedURL];
    v5 = [v3 isEqual:_committedURL];
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
      webView = [(_SFBrowserContentViewController *)self webView];
      evOrganizationName = [webView evOrganizationName];
      EVOrganizationName = self->_EVOrganizationName;
      self->_EVOrganizationName = evOrganizationName;

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
    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    webView = [webViewController webView];
    if ([(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator UIShouldReflectCommittedURLInsteadOfCurrentURL])
    {
      [webView _committedURL];
    }

    else
    {
      [webView URL];
    }
    sourceURL = ;
    if (!sourceURL)
    {
      activeDownload = self->_activeDownload;
      if (activeDownload)
      {
        sourceURL = [(_SFDownload *)activeDownload sourceURL];
      }

      else
      {
        sourceURL = 0;
      }
    }

    safari_userVisibleStringConsideringLongURLs = [sourceURL safari_userVisibleStringConsideringLongURLs];
    v7 = safari_userVisibleStringConsideringLongURLs;
    if (safari_userVisibleStringConsideringLongURLs)
    {
      customPlaceholderText = safari_userVisibleStringConsideringLongURLs;
    }

    else
    {
      customPlaceholderText = [(SFNavigationBarItem *)self->_navigationBarItem customPlaceholderText];
    }

    v9 = customPlaceholderText;

    v30 = 0;
    v10 = [v9 safari_simplifiedUserVisibleURLStringWithSimplifications:133 forDisplayOnly:0 simplifiedStringOffset:&v30];
    v29 = 0;
    v26 = [v9 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:&v29];
    readerController = 1304;
    if (self->_isShowingHTTPAuthenticationDialog)
    {
      v12 = _WBSLocalizedString();

      v10 = v12;
      [(SFNavigationBarItem *)self->_navigationBarItem setText:v12 textWhenExpanded:v12 startIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    else if ([sourceURL safari_isDataURL])
    {

      v10 = @"data:";
      [(SFNavigationBarItem *)self->_navigationBarItem setText:@"data:" textWhenExpanded:@"data:" startIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    else if ([sourceURL safari_looksLikeAboutBlankURL])
    {
      v13 = *MEMORY[0x1E69C9730];

      v10 = v13;
      [(SFNavigationBarItem *)self->_navigationBarItem setText:v13 textWhenExpanded:v13 startIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    else if ([sourceURL safari_looksLikeAboutSrcdocURL])
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
      -[SFNavigationBarItem setSecurityAnnotation:hasFocusedInputFieldOnCurrentPage:](self->_navigationBarItem, "setSecurityAnnotation:hasFocusedInputFieldOnCurrentPage:", 1, [webViewController hasFocusedInputFieldOnCurrentPage]);
      v16 = 0;
    }

    else
    {
      -[SFNavigationBarItem setSecurityAnnotation:hasFocusedInputFieldOnCurrentPage:](self->_navigationBarItem, "setSecurityAnnotation:hasFocusedInputFieldOnCurrentPage:", 0, [webViewController hasFocusedInputFieldOnCurrentPage]);
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
      isReaderAvailable = 0;
    }

    else
    {
      readerController = [webViewController readerController];
      isReaderAvailable = [readerController isReaderAvailable];
    }

    [navigationBarItem setShowsReaderButton:isReaderAvailable showsAvailabilityText:0];
    if (!isShowingHTTPAuthenticationDialog)
    {
    }

    [(SFNavigationBarItem *)self->_navigationBarItem setShowsTranslationButton:[(WBSTranslationContext *)self->_translationContext detectionNotificationLevel]== 1 showsAvailabilityText:0];
    [(SFNavigationBarItem *)self->_navigationBarItem setReaderButtonSelected:self->_showingReader];
    v21 = [webView URL];
    [(SFNavigationBarItem *)self->_navigationBarItem setShowsStopReloadButtons:v21 != 0];

    [(SFNavigationBarItem *)self->_navigationBarItem setStopReloadButtonShowsStop:[(_SFBrowserContentViewController *)self _stopReloadButtonShowsStop]];
    v22 = objc_opt_respondsToSelector();
    if (v22)
    {
      navigationBarItem = [webView _safeBrowsingWarning];
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
    text = [(SFNavigationBarItem *)self->_navigationBarItem text];
    [(SFNanoDomainContainerView *)nanoDomainContainerView updateWithDomain:text isSecure:v16 showsNotSecureAnnotation:[(SFNavigationBarItem *)self->_navigationBarItem hasFocusedSensitiveFieldOnCurrentPage]];

    [(_SFBrowserContentViewController *)self didUpdateNavigationBarItem:self->_navigationBarItem];
  }
}

- (BOOL)_stopReloadButtonShowsStop
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  isLoading = [webViewController isLoading];

  return isLoading;
}

- (BOOL)_canShowPageFormatMenu
{
  webView = [(_SFBrowserContentViewController *)self webView];
  v3 = [webView URL];
  if (![v3 safari_isHTTPFamilyURL] || (objc_msgSend(webView, "_isDisplayingPDF") & 1) != 0 || (objc_msgSend(webView, "_isDisplayingStandaloneImageDocument") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [webView _isDisplayingStandaloneMediaDocument] ^ 1;
  }

  return v4;
}

- (void)_updatePreviewLoadingUI
{
  previewHeader = [(_SFBrowserView *)self->_browserView previewHeader];

  if (previewHeader)
  {
    uIShouldReflectCommittedURLInsteadOfCurrentURL = [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator UIShouldReflectCommittedURLInsteadOfCurrentURL];
    webView = [(_SFBrowserContentViewController *)self webView];
    v10 = webView;
    if (uIShouldReflectCommittedURLInsteadOfCurrentURL)
    {
      [webView _committedURL];
    }

    else
    {
      [webView URL];
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
    safari_userVisibleString = [activeDownload safari_userVisibleString];
    [(_SFBrowserView *)browserView updatePreviewHeaderWithURLString:safari_userVisibleString];
  }
}

- (void)_updateBarItemsWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  webView = [(_SFBrowserContentViewController *)self webView];
  barManager = self->_barManager;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___SFBrowserContentViewController__updateBarItemsWithAnimation___block_invoke;
  v8[3] = &unk_1E848F9B0;
  v8[4] = self;
  v9 = webView;
  v7 = webView;
  [(_SFBarManager *)barManager performCoalescedUpdatesAnimated:animationCopy updates:v8];
}

- (void)_updateUI
{
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];

  [(_SFBrowserContentViewController *)self _updateUIWithAnimation:isSolariumEnabled];
}

- (void)_updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  [(_SFBrowserContentViewController *)self _updateNavigationBar];
  [(_SFBrowserContentViewController *)self _updateBarItemsWithAnimation:animationCopy];
  [(_SFBrowserContentViewController *)self _updatePreviewLoadingUI];
  [(_SFBrowserContentViewController *)self _updateStatusBarStyleForced:0];
  webView = [(_SFBrowserContentViewController *)self webView];
  -[_SFBrowserContentViewController setRemoteSwipeGestureEnabled:](self, "setRemoteSwipeGestureEnabled:", [webView canGoBack] ^ 1);

  [(_SFBrowserContentViewController *)self _updateBarTheme];
}

- (void)setRemoteSwipeGestureEnabled:(BOOL)enabled
{
  if (self->_remoteSwipeGestureEnabled != enabled)
  {
    self->_remoteSwipeGestureEnabled = enabled;
    [(_SFBrowserContentViewController *)self _updateRemoteSwipeGestureState];
  }
}

- (double)_crashBannerDraggingOffsetForContentOffset:(CGPoint)offset
{
  y = offset.y;
  navigationBarBehavior = [(_SFBrowserView *)self->_browserView navigationBarBehavior];
  [(_SFNavigationBar *)self->_navigationBar maximumHeight];
  v7 = v6;
  v8 = 0.0;
  if (!navigationBarBehavior)
  {
    [(_SFNavigationBar *)self->_navigationBar minimumHeight];
    v8 = v9;
  }

  currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
  scrollView = [currentWebView scrollView];
  [scrollView adjustedContentInset];
  v13 = v12;
  pinnableBanner = [(_SFBrowserView *)self->_browserView pinnableBanner];
  [pinnableBanner frame];
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
  crashBanner = [(_SFBrowserView *)self->_browserView crashBanner];
  v11 = crashBanner;
  if (self->_showingCrashBanner)
  {
    [(_SFBrowserView *)self->_browserView setCrashBannerOffset:0.0];
    if (self->_scrollViewIsDragging)
    {
      [(_SFBrowserView *)self->_browserView crashBannerOffset];
      v5 = v4;
      crashBannerDraggingOffset = self->_crashBannerDraggingOffset;
      _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
      scrollView = [_currentWebView scrollView];
      [scrollView contentOffset];
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
    [crashBanner bounds];
    [(_SFBrowserView *)self->_browserView setCrashBannerOffset:-CGRectGetHeight(v13)];
  }
}

- (void)_updatePinnableBannerOffset
{
  pinnableBanner = [(_SFBrowserView *)self->_browserView pinnableBanner];
  if (pinnableBanner && self->_showingPinnableBanner)
  {
    v15 = pinnableBanner;
    [pinnableBanner frame];
    Height = CGRectGetHeight(v17);
    v5 = 0.0;
    if (self->_showingCrashBanner)
    {
      crashBanner = [(_SFBrowserView *)self->_browserView crashBanner];
      [crashBanner frame];
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
    _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
    scrollView = [_currentWebView scrollView];
    [scrollView convertPoint:self->_navigationBar fromView:{0.0, v9 + MaxY}];

    _currentWebView2 = [(_SFBrowserContentViewController *)self _currentWebView];
    scrollView2 = [_currentWebView2 scrollView];
    [scrollView2 contentOffset];
    [(_SFBrowserView *)self->_browserView setPinnableBannerOffset:?];

    pinnableBanner = v15;
  }
}

- (void)_updatePinnableBannerFrame
{
  pinnableBanner = [(_SFBrowserView *)self->_browserView pinnableBanner];
  if (pinnableBanner && self->_showingPinnableBanner)
  {
    v19 = pinnableBanner;
    currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
    view = [(_SFBrowserContentViewController *)self view];
    [view layoutMargins];
    [v19 setLayoutMargins:?];

    scrollView = [currentWebView scrollView];
    [scrollView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v19 sizeThatFits:{v10, v12}];
    [v19 setFrame:{v8, 0.0, v13, v14}];
    [(_SFBrowserView *)self->_browserView layoutIfNeeded];
    [(_SFBrowserContentViewController *)self _updatePinnableBannerOffset];
    [(_SFBrowserContentViewController *)self _updateBarTheme];
    [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
    scrollView2 = [currentWebView scrollView];
    [scrollView2 contentOffset];
    v17 = v16;
    [scrollView2 adjustedContentInset];
    [scrollView2 setContentOffset:{v17, -v18}];

    pinnableBanner = v19;
  }
}

- (BOOL)_updateAppInfoOverlayForBanner:(id)banner
{
  bannerCopy = banner;
  overlayProvider = [bannerCopy overlayProvider];
  currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
  scrollView = [currentWebView scrollView];

  if (!bannerCopy)
  {
    [overlayProvider hideOverlayAnimated:0];
    goto LABEL_5;
  }

  if (![overlayProvider isAvailable])
  {
LABEL_5:
    [(_SFBrowserView *)self->_browserView setAppInfoOverlay:0];
    [overlayProvider setDelegate:0];
    v11 = 0;
    goto LABEL_6;
  }

  [overlayProvider setDelegate:self];
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  [overlayProvider showOverlayInScrollView:scrollView viewController:webViewController];

  [(_SFBrowserView *)self->_browserView setPinnableBanner:bannerCopy];
  overlayViewController = [overlayProvider overlayViewController];
  view = [overlayViewController view];
  [(_SFBrowserView *)self->_browserView setAppInfoOverlay:view];

  v11 = 1;
LABEL_6:

  return v11;
}

- (void)_setShowingPinnableBanner:(id)banner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  if (![(_SFBrowserContentViewController *)self _updateAppInfoOverlayForBanner:bannerCopy])
  {
    v7 = bannerCopy != 0;
    if (self->_showingPinnableBanner != v7)
    {
      self->_showingPinnableBanner = v7;
      if (bannerCopy)
      {
        [(_SFBrowserView *)self->_browserView setPinnableBanner:bannerCopy];
        [(_SFBrowserContentViewController *)self _updatePinnableBannerFrame];
        currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
        scrollView = [currentWebView scrollView];

        [bannerCopy frame];
        MaxY = CGRectGetMaxY(v18);
        navigationBar = self->_navigationBar;
        [(_SFNavigationBar *)navigationBar bounds];
        [(_SFNavigationBar *)navigationBar convertPoint:scrollView toView:0.0, CGRectGetMaxY(v19)];
        if (MaxY >= v12 && ([bannerCopy isInitiallyBehindNavigationBar] & 1) == 0)
        {
          [scrollView contentOffset];
          v14 = v13;
          [scrollView adjustedContentInset];
          [scrollView setContentOffset:{v14, -v15}];
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
        [MEMORY[0x1E69DD250] sf_animate:animatedCopy usingDefaultTimingWithOptions:2 animations:v17 completion:v16];
      }
    }
  }
}

- (void)_setShowingCrashBanner:(BOOL)banner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  crashBanner = [(_SFBrowserView *)self->_browserView crashBanner];
  v10 = crashBanner;
  v8 = self->_showingCrashBanner != bannerCopy || crashBanner == 0;
  if (v8 || [crashBanner messageType])
  {
    if (bannerCopy)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69B1AF8]);
    }

    else
    {
      v9 = 0;
    }

    [(_SFBrowserContentViewController *)self _showCrashBanner:v9 animated:animatedCopy];
  }
}

- (void)_showCrashBanner:(id)banner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  crashBanner = [(_SFBrowserView *)self->_browserView crashBanner];
  v8 = crashBanner;
  if (bannerCopy && crashBanner)
  {
    messageType = [bannerCopy messageType];
    if (messageType == [v8 messageType])
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (bannerCopy && !crashBanner)
  {
    v10 = _SFBackdropGroupNameForOwner();
    [bannerCopy setBackdropGroupName:v10];

    closeButton = [bannerCopy closeButton];
    [closeButton addTarget:self action:sel__hideCrashBanner forControlEvents:64];

    [(_SFBrowserView *)self->_browserView setCrashBanner:bannerCopy];
    [(_SFBrowserView *)self->_browserView bounds];
    v13 = v12;
    v15 = v14;
    [bannerCopy sizeThatFits:{v16, v17}];
    [bannerCopy setFrame:{v13, v15, v18, v19}];
    [(_SFBrowserContentViewController *)self _updateCrashBannerOffset];
    [(_SFBrowserView *)self->_browserView layoutIfNeeded];
    [(_SFBrowserContentViewController *)self _updateBarTheme];
LABEL_8:
    self->_showingCrashBanner = bannerCopy != 0;
LABEL_10:
    navigationBar = [(_SFBrowserView *)self->_browserView navigationBar];
    [navigationBar setSuppressesBlur:0];

    goto LABEL_11;
  }

  self->_showingCrashBanner = bannerCopy != 0;
  if (bannerCopy)
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
  v24 = bannerCopy;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61___SFBrowserContentViewController__showCrashBanner_animated___block_invoke_2;
  v22[3] = &unk_1E8494B08;
  v22[4] = self;
  [v21 sf_animate:animatedCopy usingDefaultTimingWithOptions:2 animations:v23 completion:v22];

LABEL_12:
}

- (void)_initialLoadFinishedWithSuccess:(BOOL)success
{
  successCopy = success;
  originalRequestURL = self->_originalRequestURL;
  self->_originalRequestURL = 0;

  if (!self->_didNotifyInitialLoadFinish)
  {
    if ([(_SFBrowserContentViewController *)self _notifyInitialLoadDidFinish:successCopy])
    {
      self->_didNotifyInitialLoadFinish = 1;
    }
  }
}

- (id)_applicationPayloadForOpeningInSafari
{
  webView = [(_SFBrowserContentViewController *)self webView];
  _sessionState = [webView _sessionState];
  data = [_sessionState data];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_showingReader];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B1E28]];

  [dictionary setObject:data forKeyedSubscript:*MEMORY[0x1E69B1E30]];
  v8 = [dictionary copy];

  return v8;
}

- (void)_openCurrentURLInSafari
{
  v10[2] = *MEMORY[0x1E69E9840];
  _applicationPayloadForOpeningInSafari = [(_SFBrowserContentViewController *)self _applicationPayloadForOpeningInSafari];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  webView = [(_SFBrowserContentViewController *)self webView];
  v6 = [webView URL];
  v7 = *MEMORY[0x1E6963560];
  v9[0] = *MEMORY[0x1E6963588];
  v9[1] = v7;
  v10[0] = _applicationPayloadForOpeningInSafari;
  v10[1] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [defaultWorkspace _sf_openURL:v6 withOptions:v8 completionHandler:0];
}

- (void)_updatePageZoomWithPreference
{
  objc_initWeak(&location, self);
  pageZoomPreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor pageZoomPreferenceManager];
  webView = [(_SFBrowserContentViewController *)self webView];
  v5 = [webView URL];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___SFBrowserContentViewController__updatePageZoomWithPreference__block_invoke;
  v6[3] = &unk_1E8494BA8;
  objc_copyWeak(&v7, &location);
  [pageZoomPreferenceManager getPageZoomFactorForURL:v5 usingBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_increasePageZoomSetting
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  v4 = webViewController;
  if (self->_showingReader)
  {
    readerController = [webViewController readerController];
    canIncreaseReaderTextSize = [readerController canIncreaseReaderTextSize];

    if (canIncreaseReaderTextSize)
    {
      readerController2 = [v4 readerController];
      [readerController2 increaseReaderTextSize];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    pageZoomPreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor pageZoomPreferenceManager];
    webView = [v4 webView];
    v10 = [webView URL];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___SFBrowserContentViewController__increasePageZoomSetting__block_invoke;
    v11[3] = &unk_1E8494BD0;
    objc_copyWeak(&v12, &location);
    [pageZoomPreferenceManager zoomInOnURL:v10 completionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_decreasePageZoomSetting
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  v4 = webViewController;
  if (self->_showingReader)
  {
    readerController = [webViewController readerController];
    canDecreaseReaderTextSize = [readerController canDecreaseReaderTextSize];

    if (canDecreaseReaderTextSize)
    {
      readerController2 = [v4 readerController];
      [readerController2 decreaseReaderTextSize];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    pageZoomPreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor pageZoomPreferenceManager];
    webView = [v4 webView];
    v10 = [webView URL];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___SFBrowserContentViewController__decreasePageZoomSetting__block_invoke;
    v11[3] = &unk_1E8494BD0;
    objc_copyWeak(&v12, &location);
    [pageZoomPreferenceManager zoomOutOnURL:v10 completionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_resetPageZoomSetting
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  v4 = webViewController;
  if (self->_showingReader)
  {
    readerController = [webViewController readerController];
    [readerController resetReaderTextSize];
  }

  else
  {
    objc_initWeak(&location, self);
    pageZoomPreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor pageZoomPreferenceManager];
    webView = [v4 webView];
    v8 = [webView URL];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56___SFBrowserContentViewController__resetPageZoomSetting__block_invoke;
    v9[3] = &unk_1E8494BD0;
    objc_copyWeak(&v10, &location);
    [pageZoomPreferenceManager resetZoomLevelOnURL:v8 completionHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_invokeCustomActivity
{
  applicationExtension = [(UIApplicationExtensionActivity *)self->_customButtonUIActivity applicationExtension];
  extensionPointIdentifier = [applicationExtension extensionPointIdentifier];
  v5 = [extensionPointIdentifier isEqualToString:@"com.apple.share-services"];

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
  webView = [(_SFBrowserContentViewController *)self webView];
  scrollView = [webView scrollView];
  [scrollView setZoomScale:1.0];

  scrollView2 = [webView scrollView];
  [scrollView2 setZoomEnabled:0];

  documentView = [(SFQuickLookDocumentController *)self->_quickLookDocumentController documentView];
  [(_SFBrowserView *)self->_browserView setQuickLookDocumentView:documentView];

  [webView setHidden:1];
}

- (void)_hideQuickLookDocumentView
{
  [(_SFBrowserView *)self->_browserView setQuickLookDocumentView:0];
  webView = [(_SFBrowserContentViewController *)self webView];
  [webView setHidden:0];
  scrollView = [webView scrollView];
  [scrollView setZoomEnabled:1];
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

- (void)dataForQuickLookDocument:(id)document completionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___SFBrowserContentViewController_dataForQuickLookDocument_completionHandler___block_invoke;
  block[3] = &unk_1E8494C70;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)suggestedFileNameForQuickLookDocument:(id)document
{
  webView = [(_SFBrowserContentViewController *)self webView];
  _sf_suggestedFilename = [webView _sf_suggestedFilename];

  return _sf_suggestedFilename;
}

- (id)quickLookDocumentForCurrentBackForwardListItem
{
  webView = [(_SFBrowserContentViewController *)self webView];
  backForwardList = [webView backForwardList];
  currentItem = [backForwardList currentItem];
  _sf_quickLookDocument = [currentItem _sf_quickLookDocument];

  return _sf_quickLookDocument;
}

- (void)setQuickLookDocumentForCurrentBackForwardListItem:(id)item
{
  itemCopy = item;
  webView = [(_SFBrowserContentViewController *)self webView];
  backForwardList = [webView backForwardList];
  currentItem = [backForwardList currentItem];
  [currentItem _sf_setQuickLookDocument:itemCopy];
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
    quickLookDocument = [(SFQuickLookDocumentWriter *)self->_quickLookDocumentWriter quickLookDocument];
    v5 = self->_quickLookDocument;
    self->_quickLookDocument = quickLookDocument;

    if (self->_quickLookDocument)
    {
      [(_SFBrowserContentViewController *)self setQuickLookDocumentForCurrentBackForwardListItem:?];
    }

    webView = [(_SFBrowserContentViewController *)self webView];
    v7 = webView;
    if (!self->_quickLookDocument)
    {
      if ([webView _isDisplayingPDF])
      {
        _sf_suggestedFilename = [v7 _sf_suggestedFilename];
        v9 = objc_alloc(MEMORY[0x1E69B1B68]);
        v10 = [v9 initWithFileName:_sf_suggestedFilename mimeType:0 uti:*MEMORY[0x1E6963858] needsQuickLookDocumentView:0];
        v11 = self->_quickLookDocument;
        self->_quickLookDocument = v10;
      }

      if (!self->_quickLookDocument)
      {
        quickLookDocumentForCurrentBackForwardListItem = [(_SFBrowserContentViewController *)self quickLookDocumentForCurrentBackForwardListItem];
        v13 = self->_quickLookDocument;
        self->_quickLookDocument = quickLookDocumentForCurrentBackForwardListItem;
      }
    }

    v14 = [v7 URL];
    [(SFQuickLookDocument *)self->_quickLookDocument setSourceURL:v14];

    [(SFQuickLookDocument *)self->_quickLookDocument setDocumentSource:self];
    v15 = self->_quickLookDocument;
  }

  return v15;
}

- (void)webViewController:(id)controller didStartProvisionalNavigation:(id)navigation
{
  controllerCopy = controller;
  [(_SFCalendarEventDetector *)self->_calendarEventDetector cancelCheckForConfirmationPage];
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didStartProvisionalNavigationWithUserInitiatedAction:self->_lastUserInitiatedAction];
  quickLookDocumentWriter = self->_quickLookDocumentWriter;
  self->_quickLookDocumentWriter = 0;

  quickLookDocument = self->_quickLookDocument;
  self->_quickLookDocument = 0;

  webView = [controllerCopy webView];
  _unreachableURL = [webView _unreachableURL];

  if (!_unreachableURL)
  {
    lastLoadErrorForFormatMenu = self->_lastLoadErrorForFormatMenu;
    self->_lastLoadErrorForFormatMenu = 0;
  }

  pinnableBannerPendingFirstPaint = self->_pinnableBannerPendingFirstPaint;
  self->_pinnableBannerPendingFirstPaint = 0;

  webView2 = [(_SFBrowserContentViewController *)self webView];
  if (!self->_translationContext)
  {
    v12 = [MEMORY[0x1E69C98B0] translationContextWithWebView:webView2 delegate:self];
    translationContext = self->_translationContext;
    self->_translationContext = v12;

    [(WBSTranslationContext *)self->_translationContext setFluidProgressController:self->_fluidProgressController];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__translationContextStateDidChange_ name:*MEMORY[0x1E69C9A28] object:self->_translationContext];
  }

  [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
}

- (void)webViewController:(id)controller authenticationChallenge:(id)challenge shouldAllowLegacyTLS:(id)s
{
  controllerCopy = controller;
  challengeCopy = challenge;
  sCopy = s;
  legacyTLSHostManager = [(_SFBrowserContentViewController *)self legacyTLSHostManager];
  protectionSpace = [challengeCopy protectionSpace];
  host = [protectionSpace host];
  v13 = [legacyTLSHostManager isLegacyTLSAllowedForHost:host];

  if ((v13 & 1) == 0)
  {
    pageLoadErrorController = self->_pageLoadErrorController;
    protectionSpace2 = [challengeCopy protectionSpace];
    safari_URL = [protectionSpace2 safari_URL];
    webView = [controllerCopy webView];
    v18 = [webView URL];
    [(_SFPageLoadErrorController *)pageLoadErrorController handleLegacyTLSWithFailingURL:safari_URL clickThroughURL:v18 authenticationChallenge:challengeCopy];
  }

  sCopy[2](sCopy, v13);
}

- (void)authenticationChallengeDidNegotiateModernTLS:(id)s
{
  sCopy = s;
  legacyTLSHostManager = [(_SFBrowserContentViewController *)self legacyTLSHostManager];
  host = [sCopy host];
  [legacyTLSHostManager clearLegacyTLSForHostIfPresent:host];
}

- (void)webViewController:(id)controller didCommitNavigation:(id)navigation
{
  controllerCopy = controller;
  navigationCopy = navigation;
  -[_SFReloadOptionsController setEffectiveContentMode:](self->_reloadOptionsController, "setEffectiveContentMode:", [navigationCopy effectiveContentMode]);
  webView = [controllerCopy webView];
  v8 = webView;
  if (self->_suggestedFilenameForNextCommit)
  {
    [webView setSuggestedFilenameForCurrentBackForwardListItem:?];
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;
  }

  sfScribbleController = [(_SFBrowserContentViewController *)self sfScribbleController];
  _request = [navigationCopy _request];
  v12 = [_request URL];
  host = [v12 host];
  [sfScribbleController updateUserDefinedContentBlockerWithHost:host];

  self->_wasLoadedWithLockdownModeEnabled = self->_pendingNavigationWillLoadWithLockdownModeEnabled;
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didCommitNavigation];
  self->_externalAppRedirectState = 0;
  [(_SFBrowserContentViewController *)self _setShowingPinnableBanner:0 animated:0];
  [(_SFBrowserContentViewController *)self _hideReaderAnimated:1 deactivationMode:0];
  [(_SFBrowserContentViewController *)self _invalidateEVOrganizationName];
  [(_SFBrowserContentViewController *)self _updateUI];
  [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
  [(WBSFluidProgressController *)self->_fluidProgressController progressStateSourceDidCommitLoad:self loadingSingleResource:0];
  _persona = [(_SFBrowserContentViewController *)self _persona];
  if (navigationCopy || _persona != 3)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController clearFailedRequest];
  }

  [(_SFBrowserContentViewController *)self _updatePageZoomWithPreference];
  downloadToShowInQuickLook = self->_downloadToShowInQuickLook;
  if (downloadToShowInQuickLook)
  {
    quickLookDocument = [(_SFDownload *)downloadToShowInQuickLook quickLookDocument];
    quickLookDocument = self->_quickLookDocument;
    self->_quickLookDocument = quickLookDocument;

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
  translationContext = [(_SFBrowserContentViewController *)self translationContext];
  v25 = [v8 URL];
  [translationContext owningWebViewDidCommitNavigationWithURL:v25 completionHandler:0];

  assistantController = [(_SFBrowserContentViewController *)self assistantController];
  [assistantController clearAssistantResult];
}

- (void)webViewController:(id)controller didFinishNavigation:(id)navigation
{
  controllerCopy = controller;
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
    webView = [controllerCopy webView];
    v7 = [webView URL];
    [(_SFReloadOptionsController *)reloadOptionsController logCompletedPageloadToDifferentialPrivacy:v7];
  }

  [(_SFBrowserContentViewController *)self _updateDigitalHealthTracking];
  mEMORY[0x1E69C8EE0] = [MEMORY[0x1E69C8EE0] sharedManager];
  webView2 = [(_SFBrowserContentViewController *)self webView];
  v10 = [webView2 URL];
  host = [v10 host];
  webView3 = [(_SFBrowserContentViewController *)self webView];
  [mEMORY[0x1E69C8EE0] clearCertificateBypassesForHostIfNecessary:host withTrust:{objc_msgSend(webView3, "serverTrust")}];
}

- (void)webViewController:(id)controller didFinishDocumentLoadForNavigation:(id)navigation
{
  v6 = [(_SFBrowserContentViewController *)self webView:controller];
  _committedURL = [v6 _committedURL];
  [(_SFBrowserContentViewController *)self _didResolveDestinationURL:_committedURL pendingAppLinkCheck:0];
}

- (void)_checkForAppLink
{
  if ([(_SFBrowserContentViewController *)self _shouldAllowUniversalLinkBanner])
  {
    webView = [(_SFBrowserContentViewController *)self webView];
    v4 = [webView URL];
    if ([v4 safari_isHTTPFamilyURL] && !-[_SFBrowserContentViewController isShowingErrorPage](self, "isShowingErrorPage"))
    {
      backForwardList = [webView backForwardList];
      currentItem = [backForwardList currentItem];
      backForwardListItemForCurrentAppLinkBannerCheck = self->_backForwardListItemForCurrentAppLinkBannerCheck;
      self->_backForwardListItemForCurrentAppLinkBannerCheck = currentItem;

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
      v14 = webView;
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

- (void)webViewController:(id)controller didFindAppBannerWithContent:(id)content
{
  contentCopy = content;
  if (!self->_storeBannersAreDisabled)
  {
    expectedOrCurrentURL = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
    _hostAppBundleId = [(_SFBrowserContentViewController *)self _hostAppBundleId];
    SFCreateAppSuggestionBannerFromMetaTagContent();
  }
}

- (void)webViewControllerDidFirstPaint:(id)paint
{
  pinnableBannerPendingFirstPaint = self->_pinnableBannerPendingFirstPaint;
  if (pinnableBannerPendingFirstPaint)
  {
    [(_SFBrowserContentViewController *)self _setShowingPinnableBanner:pinnableBannerPendingFirstPaint animated:0];
    v5 = self->_pinnableBannerPendingFirstPaint;
    self->_pinnableBannerPendingFirstPaint = 0;
  }
}

- (void)webViewControllerDidDetermineReaderAvailability:(id)availability dueTo:(int64_t)to
{
  availabilityCopy = availability;
  if (to != 2)
  {
    [(_SFBrowserContentViewController *)self _updateUI];
    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    readerController = [webViewController readerController];
    isReaderAvailable = [readerController isReaderAvailable];

    if (isReaderAvailable)
    {
      if (![(SFSafariViewControllerConfiguration *)self->_configuration entersReaderIfAvailable])
      {
        _committedDomainForPreferences = [(_SFBrowserContentViewController *)self _committedDomainForPreferences];
        if (![_committedDomainForPreferences length] || to == 1 && self->_lastReaderDeactivationMode == 1 || !-[_SFBrowserContentViewController _shouldAllowAutomaticReader](self, "_shouldAllowAutomaticReader"))
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
          v14 = availabilityCopy;
          v11 = _Block_copy(aBlock);
          automaticReaderActivationManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor automaticReaderActivationManager];
          [automaticReaderActivationManager getAutomaticReaderEnabledForDomain:_committedDomainForPreferences usingBlock:v11];

          objc_destroyWeak(&v15);
          objc_destroyWeak(&location);
        }

        goto LABEL_12;
      }

      [(SFNavigationBarItem *)self->_navigationBarItem setShowsReaderButton:1 showsAvailabilityText:0];
      [(_SFBrowserContentViewController *)self _showReaderAnimated:self->_displayMode == 0];
      if (![(_SFBrowserContentViewController *)self isBlockedByScreenTime])
      {
        _committedDomainForPreferences = [MEMORY[0x1E69C8810] sharedLogger];
        [_committedDomainForPreferences didActivateReaderWithTrigger:3];
LABEL_12:
      }
    }
  }
}

- (void)webViewController:(id)controller didExtractTextSamplesForTranslation:(id)translation
{
  controllerCopy = controller;
  translationCopy = translation;
  objc_initWeak(&location, self);
  translationContext = [(_SFBrowserContentViewController *)self translationContext];
  webView = [controllerCopy webView];
  v10 = [webView URL];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89___SFBrowserContentViewController_webViewController_didExtractTextSamplesForTranslation___block_invoke;
  v12[3] = &unk_1E8494D88;
  objc_copyWeak(&v14, &location);
  v11 = controllerCopy;
  v13 = v11;
  [translationContext setWebpageLocaleWithExtractedTextSamples:translationCopy url:v10 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)webViewControllerDidChangeLoadingState:(id)state
{
  stateCopy = state;
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  isLoading = [webViewController isLoading];

  if (isLoading)
  {
    [(WBSFluidProgressController *)self->_fluidProgressController startFluidProgressWithProgressStateSource:self];
  }

  if (([stateCopy isLoading] & 1) == 0)
  {
    self->_loadWasUserDriven = 0;
  }

  [(_SFBrowserContentViewController *)self _updateUI];
}

- (void)webViewControllerDidChangeEstimatedProgress:(id)progress
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  isLoading = [webViewController isLoading];

  if (isLoading)
  {
    fluidProgressController = self->_fluidProgressController;

    [(WBSFluidProgressController *)fluidProgressController updateFluidProgressWithProgressStateSource:self];
  }
}

- (void)webViewController:(id)controller didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  if (([errorCopy safari_matchesErrorDomain:*MEMORY[0x1E6985460] andCode:204] & 1) == 0)
  {
    objc_storeStrong(&self->_lastLoadErrorForFormatMenu, error);
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;

    [(WBSFluidProgressController *)self->_fluidProgressController cancelFluidProgressWithProgressStateSource:self];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController handleFrameLoadError:errorCopy];
    [(_SFBrowserContentViewController *)self _initialLoadFinishedWithSuccess:0];
    [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
    [(_SFNavigationBar *)self->_navigationBar setNeedsLayout];
  }
}

- (void)webViewControllerDidFirstVisuallyNonEmptyLayout:(id)layout
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

- (void)_completeRedirectToExternalNavigationResult:(id)result fromOriginalRequest:(id)request dialogResult:(int64_t)dialogResult
{
  resultCopy = result;
  webView = [(_SFBrowserContentViewController *)self webView];
  _committedURL = [webView _committedURL];

  if (_committedURL)
  {
    if (([resultCopy appliesOneTimeUserInitiatedActionPolicy] & 1) == 0)
    {
      externalAppRedirectState = self->_externalAppRedirectState;
      self->_externalAppRedirectState = externalAppRedirectState | 2;
      if (dialogResult)
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

- (void)_queueAlertForRedirectToExternalNavigationResult:(id)result fromOriginalRequest:(id)request isMainFrame:(BOOL)frame promptPolicy:(int64_t)policy userAction:(id)action
{
  resultCopy = result;
  requestCopy = request;
  actionCopy = action;
  objc_initWeak(&location, self);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __140___SFBrowserContentViewController__queueAlertForRedirectToExternalNavigationResult_fromOriginalRequest_isMainFrame_promptPolicy_userAction___block_invoke;
  v24 = &unk_1E8494DB0;
  objc_copyWeak(&v28, &location);
  v15 = resultCopy;
  v25 = v15;
  v16 = requestCopy;
  v26 = v16;
  frameCopy = frame;
  v17 = actionCopy;
  v27 = v17;
  v18 = _Block_copy(&v21);
  if (([v15 externalApplicationCategory] | 2) == 2)
  {
    self->_externalAppRedirectState |= 8uLL;
    pageLoadErrorController = self->_pageLoadErrorController;
    v20 = [MEMORY[0x1E69B1B00] redirectDialogWithNavigationResult:v15 promptPolicy:policy completionHandler:v18];
    [(_SFPageLoadErrorController *)pageLoadErrorController addDialog:v20];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)_redirectToExternalNavigationResult:(id)result fromOriginalRequest:(id)request promptPolicy:(int64_t)policy isMainFrame:(BOOL)frame userAction:(id)action
{
  frameCopy = frame;
  v33[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  requestCopy = request;
  actionCopy = action;
  v15 = [resultCopy URL];
  if ([*MEMORY[0x1E69DDA98] canOpenURL:v15])
  {
    v16 = [requestCopy valueForHTTPHeaderField:@"Referer"];
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

    if ([(_SFBrowserContentViewController *)self _redirectToHostAppWithNavigationResult:resultCopy options:v18]|| self->_externalAppRedirectState == 8)
    {
      goto LABEL_18;
    }

    if ([resultCopy shouldPromptWithPolicy:policy telephonyNavigationPolicy:self->_telephonyNavigationPolicy userAction:actionCopy inBackgroundOrPrivateBrowsing:-[_SFBrowserContentViewController viewDidAppearInHostApp](self inLockdownMode:{"viewDidAppearInHostApp") ^ 1, self->_wasLoadedWithLockdownModeEnabled}])
    {
      [(_SFBrowserContentViewController *)self _queueAlertForRedirectToExternalNavigationResult:resultCopy fromOriginalRequest:requestCopy isMainFrame:frameCopy promptPolicy:policy userAction:actionCopy];
    }

    else
    {
      externalApplicationCategory = [resultCopy externalApplicationCategory];
      if (!externalApplicationCategory || externalApplicationCategory == 2)
      {
        defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
        externalApplication = [resultCopy externalApplication];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __127___SFBrowserContentViewController__redirectToExternalNavigationResult_fromOriginalRequest_promptPolicy_isMainFrame_userAction___block_invoke_3;
        v25[3] = &unk_1E8492198;
        v25[4] = self;
        v26 = resultCopy;
        v27 = requestCopy;
        [defaultWorkspace _sf_openURL:v15 inApplication:externalApplication withOptions:v18 completionHandler:v25];

        v21 = &v26;
        v22 = &v27;
      }

      else
      {
        if (externalApplicationCategory != 1 || self->_isDisplayingTelephonyPrompt)
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
        v30 = resultCopy;
        v31 = requestCopy;
        [(_SFTelephonyNavigationMitigationPolicy *)telephonyNavigationPolicy handleNavigationToURL:v29 completionHandler:v28];
        v21 = &v29;
        v22 = &v30;
        defaultWorkspace = v31;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  if (frameCopy)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController addInvalidURLAlert];
  }

LABEL_19:
}

- (id)resultOfLoadingRequest:(id)request inMainFrame:(BOOL)frame disallowRedirectToExternalApps:(BOOL)apps
{
  appsCopy = apps;
  frameCopy = frame;
  requestCopy = request;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101___SFBrowserContentViewController_resultOfLoadingRequest_inMainFrame_disallowRedirectToExternalApps___block_invoke;
  v12[3] = &unk_1E8494E00;
  v13 = requestCopy;
  selfCopy = self;
  v9 = requestCopy;
  v10 = [_SFNavigationResult resultOfLoadingRequest:v9 isMainFrame:frameCopy disallowRedirectToExternalApps:appsCopy preferredApplicationBundleIdentifier:0 redirectDecisionHandler:v12];

  return v10;
}

- (void)_determineResultOfLoadingRequest:(id)request inMainFrame:(BOOL)frame disallowRedirectToExternalApps:(BOOL)apps completionHandler:(id)handler
{
  appsCopy = apps;
  frameCopy = frame;
  requestCopy = request;
  handlerCopy = handler;
  webView = [(_SFBrowserContentViewController *)self webView];
  _committedURL = [webView _committedURL];

  LOBYTE(webView) = [(_SFReloadOptionsController *)self->_reloadOptionsController loadedUsingDesktopUserAgent];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __129___SFBrowserContentViewController__determineResultOfLoadingRequest_inMainFrame_disallowRedirectToExternalApps_completionHandler___block_invoke;
  v16[3] = &unk_1E8494E28;
  v14 = requestCopy;
  v17 = v14;
  v15 = _committedURL;
  v18 = v15;
  v19 = webView;
  [_SFNavigationResult determineResultOfLoadingRequest:v14 isMainFrame:frameCopy disallowRedirectToExternalApps:appsCopy preferredApplicationBundleIdentifier:0 redirectDecisionHandler:v16 completionHandler:handlerCopy];
}

- (void)_redirectToNewsIfNeededForRequest:(id)request isMainFrame:(BOOL)frame userAction:(id)action decisionHandler:(id)handler
{
  requestCopy = request;
  actionCopy = action;
  handlerCopy = handler;
  v13 = [requestCopy URL];
  v14 = [objc_alloc(MEMORY[0x1E69C9750]) initWithURL:v13];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __108___SFBrowserContentViewController__redirectToNewsIfNeededForRequest_isMainFrame_userAction_decisionHandler___block_invoke;
  v19[3] = &unk_1E8494E50;
  v15 = handlerCopy;
  v23 = v15;
  v19[4] = self;
  v16 = requestCopy;
  v20 = v16;
  v21 = v14;
  v17 = actionCopy;
  v22 = v17;
  frameCopy = frame;
  v18 = v14;
  [v18 _sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread:v19];
}

- (void)webViewController:(id)controller decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  actionCopy = action;
  handlerCopy = handler;
  targetFrame = [actionCopy targetFrame];
  if (targetFrame && ([actionCopy targetFrame], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isMainFrame"), v12, targetFrame, !v13))
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
      selfCopy = self;
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

      webView = [controllerCopy webView];
      [webView _killWebContentProcessAndResetState];
    }

    v18 = 1;
  }

  objc_initWeak(buf, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101___SFBrowserContentViewController_webViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v21[3] = &unk_1E8494E78;
  objc_copyWeak(&v24, buf);
  v19 = actionCopy;
  v22 = v19;
  v20 = handlerCopy;
  v23 = v20;
  v25 = v18;
  [(_SFBrowserContentViewController *)self _internalWebViewController:controllerCopy decidePolicyForNavigationAction:v19 decisionHandler:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)_internalWebViewController:(id)controller decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  controllerCopy = controller;
  actionCopy = action;
  handlerCopy = handler;
  v42 = handlerCopy;
  v43 = controllerCopy;
  request = [actionCopy request];
  v44 = [request URL];

  targetFrame = [actionCopy targetFrame];
  v41 = targetFrame;
  if (targetFrame)
  {
    isMainFrame = [targetFrame isMainFrame];
  }

  else
  {
    isMainFrame = 1;
  }

  objc_initWeak(location, self);
  if ((self->_externalAppRedirectState & 8) != 0)
  {
    if (!isMainFrame)
    {
      goto LABEL_10;
    }
  }

  else if (!self->_isDisplayingTelephonyPrompt || (isMainFrame & 1) == 0)
  {
LABEL_10:
    navigationType = [actionCopy navigationType];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_2;
    aBlock[3] = &unk_1E8494EF0;
    objc_copyWeak(v57, location);
    v18 = handlerCopy;
    v56 = v18;
    v19 = actionCopy;
    v54 = v19;
    v20 = v44;
    v58 = isMainFrame;
    v55 = v20;
    v57[1] = navigationType;
    v21 = _Block_copy(aBlock);
    self->_didReceivePolicyForInitialLoad = 1;
    _userInitiatedAction = [v19 _userInitiatedAction];
    lastUserInitiatedAction = self->_lastUserInitiatedAction;
    self->_lastUserInitiatedAction = _userInitiatedAction;

    [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator setNavigationSource:!self->_loadWasUserDriven];
    v39 = &v54;
    v40 = &v56;
    v24 = &v55;
    if (isMainFrame && (([v20 safari_isHTTPFamilyURL] & 1) != 0 || objc_msgSend(v20, "safari_hasScheme:", @"ftp")) && objc_msgSend(v20, "safari_hasUserOrPassword"))
    {
      safari_URLByDeletingUserAndPassword = [v20 safari_URLByDeletingUserAndPassword];
      v26 = v21[2];
      if (safari_URLByDeletingUserAndPassword)
      {
        v26(v21, 1, safari_URLByDeletingUserAndPassword);
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
          if (isMainFrame)
          {
            targetFrame2 = [v19 targetFrame];
            request2 = [targetFrame2 request];
            v35 = [request2 URL];

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

        request3 = [v19 request];
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
        [(_SFBrowserContentViewController *)self _determineResultOfLoadingRequest:request3 inMainFrame:isMainFrame disallowRedirectToExternalApps:v36 completionHandler:v45];

        objc_destroyWeak(&v50);
      }

      v21 = v27;
    }

    v32 = v57;
    goto LABEL_35;
  }

  request4 = [actionCopy request];
  v15 = [request4 URL];
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
  v62 = handlerCopy;
  v39 = &v60;
  v60 = controllerCopy;
  v24 = &v61;
  v61 = actionCopy;
  v33 = _Block_copy(v59);
  v21 = self->_pendingNavigationActionDueToExternalSchemePromptHandler;
  self->_pendingNavigationActionDueToExternalSchemePromptHandler = v33;
LABEL_35:

  objc_destroyWeak(v32);
  objc_destroyWeak(location);
}

- (void)_internalWebViewController:(id)controller decidePolicyForNavigationAction:(id)action withResult:(id)result decisionHandler:(id)handler
{
  controllerCopy = controller;
  actionCopy = action;
  resultCopy = result;
  handlerCopy = handler;
  request = [actionCopy request];
  v15 = [request URL];

  targetFrame = [actionCopy targetFrame];
  v17 = targetFrame;
  if (targetFrame)
  {
    isMainFrame = [targetFrame isMainFrame];
  }

  else
  {
    isMainFrame = 1;
  }

  if ([(_SFBrowserContentViewController *)self shouldRedirectToHostAppForAuthenticationSession:v15])
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __121___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_withResult_decisionHandler___block_invoke;
    v36[3] = &unk_1E8494F40;
    v36[4] = self;
    v37 = v15;
    v38 = handlerCopy;
    [controllerCopy willRedirectToHostAppForNavigationWithCompletionHandler:v36];

    goto LABEL_51;
  }

  type = [resultCopy type];
  if (type <= 1)
  {
    if (!type)
    {
      v27 = [resultCopy URL];
      _webkit_isJavaScriptURL = [v27 _webkit_isJavaScriptURL];

      if (_webkit_isJavaScriptURL)
      {
        [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedUseOfJavaScriptAlert];
      }

      else if (isMainFrame && ![(_SFBrowserContentViewController *)self _redirectToHostAppForAuthenticationSession:v15])
      {
        [(_SFPageLoadErrorController *)self->_pageLoadErrorController addInvalidURLAlert];
      }

      goto LABEL_32;
    }

    if (type != 1)
    {
      goto LABEL_32;
    }

    if ((self->_externalAppRedirectState & 4) != 0 && ![actionCopy _isUserInitiated])
    {
      v23 = 1;
      if (isMainFrame)
      {
LABEL_42:
        v31 = [resultCopy URL];
        [(_SFBrowserContentViewController *)self _didResolveDestinationURL:v31 pendingAppLinkCheck:1];

        _shouldOpenAppLinks = [actionCopy _shouldOpenAppLinks];
        if (v23)
        {
          v33 = 3;
        }

        else
        {
          v33 = 1;
        }

        if (_shouldOpenAppLinks)
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

      if ((v23 & 1) == 0 && ((isMainFrame ^ 1) & 1) == 0)
      {
        if ([actionCopy _shouldOpenExternalSchemes] && self->_displayMode != 1 && objc_msgSend(v15, "safari_isAppleNewsURL"))
        {
          request2 = [actionCopy request];
          _userInitiatedAction = [actionCopy _userInitiatedAction];
          [(_SFBrowserContentViewController *)self _redirectToNewsIfNeededForRequest:request2 isMainFrame:isMainFrame userAction:_userInitiatedAction decisionHandler:handlerCopy];

          goto LABEL_51;
        }

        v23 = 0;
      }

      if (isMainFrame)
      {
        goto LABEL_42;
      }
    }

    v34 = 3;
LABEL_50:
    (*(handlerCopy + 2))(handlerCopy, v34);
    goto LABEL_51;
  }

  if (type == 2)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v24 = MEMORY[0x1E695AC68];
    request3 = [resultCopy URL];
    v26 = [v24 safari_nonAppInitiatedRequestWithURL:request3];
    [(_SFBrowserContentViewController *)self loadRequest:v26];

LABEL_25:
    goto LABEL_51;
  }

  if (type == 4)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedFileURLAlert];
    goto LABEL_32;
  }

  if (type != 3)
  {
LABEL_32:
    (*(handlerCopy + 2))(handlerCopy, 0);
    goto LABEL_51;
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
  v20 = [resultCopy URL];
  [(_SFBrowserContentViewController *)self _didResolveDestinationURL:v20 pendingAppLinkCheck:0];

  if (isMainFrame && [actionCopy _shouldOpenExternalSchemes] && self->_displayMode != 1)
  {
    if (self->_wasLoadedWithLockdownModeEnabled)
    {
LABEL_14:
      _userInitiatedAction2 = [actionCopy _userInitiatedAction];
      if (_userInitiatedAction2)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      goto LABEL_56;
    }

    if ([actionCopy _sf_allowsExternalRedirectWithoutPrompting])
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
    request3 = [actionCopy request];
    _userInitiatedAction3 = [actionCopy _userInitiatedAction];
    [(_SFBrowserContentViewController *)self _redirectToExternalNavigationResult:resultCopy fromOriginalRequest:request3 promptPolicy:v22 isMainFrame:1 userAction:_userInitiatedAction3];

    goto LABEL_25;
  }

LABEL_51:
}

- (id)_quickLookDocumentForDownload:(id)download
{
  downloadCopy = download;
  filename = [downloadCopy filename];
  safari_lastPathComponentWithoutZipExtension = [filename safari_lastPathComponentWithoutZipExtension];

  v6 = objc_alloc(MEMORY[0x1E69B1B68]);
  response = [downloadCopy response];
  mIMEType = [response MIMEType];
  v9 = [v6 initWithFileName:safari_lastPathComponentWithoutZipExtension mimeType:mIMEType uti:0 needsQuickLookDocumentView:1];

  sourceURL = [downloadCopy sourceURL];
  [v9 setSourceURL:sourceURL];

  return v9;
}

- (id)_fallbackURLForWellKnownChangePasswordURL:(id)l
{
  lCopy = l;
  v5 = [(_SFBrowserContentViewController *)self _fallbackURLForWellKnownChangePasswordURLFromQuirks:lCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(_SFBrowserContentViewController *)self _homePageURLToUseAsFallbackWhenTryingToChangePassword:lCopy];
  }

  v8 = v7;

  return v8;
}

- (id)_fallbackURLForWellKnownChangePasswordURLFromQuirks:(id)quirks
{
  quirksCopy = quirks;
  changePasswordURLManager = [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager changePasswordURLManager];
  host = [quirksCopy host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  v8 = [changePasswordURLManager changePasswordURLForHighLevelDomain:safari_highLevelDomainFromHost];

  return v8;
}

- (id)_homePageURLToUseAsFallbackWhenTryingToChangePassword:(id)password
{
  safari_URLByRemovingUserPasswordPathQueryAndFragment = [password safari_URLByRemovingUserPasswordPathQueryAndFragment];
  v4 = [safari_URLByRemovingUserPasswordPathQueryAndFragment safari_URLByReplacingSchemeWithString:@"https"];

  return v4;
}

- (void)_didDecideNavigationPolicy:(int64_t)policy forNavigationResponse:(id)response
{
  responseCopy = response;
  v7 = responseCopy;
  if (policy == 1)
  {
    v14 = responseCopy;
    isForMainFrame = [responseCopy isForMainFrame];
    v7 = v14;
    if (isForMainFrame)
    {
      _frame = [v14 _frame];
      webView = [_frame webView];
      webView2 = [(_SFBrowserContentViewController *)self webView];

      v7 = v14;
      if (webView == webView2)
      {
        _sf_explicitSuggestedFilename = [v14 _sf_explicitSuggestedFilename];
        suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
        self->_suggestedFilenameForNextCommit = _sf_explicitSuggestedFilename;

        v7 = v14;
      }
    }
  }
}

- (void)webViewController:(id)controller decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  controllerCopy = controller;
  responseCopy = response;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103___SFBrowserContentViewController_webViewController_decidePolicyForNavigationResponse_decisionHandler___block_invoke;
  aBlock[3] = &unk_1E8494F68;
  aBlock[4] = self;
  v10 = responseCopy;
  v45 = v10;
  v11 = handlerCopy;
  v46 = v11;
  v12 = _Block_copy(aBlock);
  response = [v10 response];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([response safari_statusCodeGroup] & 0xFFFFFFFFFFFFFFFELL) == 4)
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

  mIMEType = [response MIMEType];
  suggestedFilename = [response suggestedFilename];
  safari_filenameByFixingIllegalCharacters = [suggestedFilename safari_filenameByFixingIllegalCharacters];
  safari_lastPathComponentWithoutZipExtension = [safari_filenameByFixingIllegalCharacters safari_lastPathComponentWithoutZipExtension];

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
  pathExtension = [safari_lastPathComponentWithoutZipExtension pathExtension];
  v26 = [pathExtension caseInsensitiveCompare:@"swf"];

  v27 = [mIMEType caseInsensitiveCompare:@"application/x-shockwave-flash"];
  isForMainFrame = [v10 isForMainFrame];
  if (v26)
  {
    v29 = v27 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (!v43 || (v30 & ~isForMainFrame & 1) != 0)
  {
    v12[2](v12, 0);
  }

  else
  {
    v38 = mIMEType;
    _request = [v10 _request];
    _sf_suggestedFilename = [v10 _sf_suggestedFilename];
    v33 = [_SFDownload provisionalDownloadWithMIMEType:mIMEType request:_request response:response filename:_sf_suggestedFilename uti:v14 userInitiatedAction:self->_lastUserInitiatedAction];

    if (v43 == 2)
    {
      v39 = [(_SFBrowserContentViewController *)self _quickLookDocumentForDownload:v33];
    }

    else
    {
      v39 = 0;
    }

    v34 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
    webView = [controllerCopy webView];
    [v34 setPendingDownload:v33 forWebView:webView];

    [v33 setQuickLookDocument:v39];
    [v33 setDelegate:self];
    [v33 setFluidProgressController:self->_fluidProgressController];
    objc_storeStrong(&self->_activeDownload, v33);
    v12[2](v12, 2 * (v33 != 0));

    mIMEType = v38;
  }

LABEL_36:
}

- (void)_didDecideNavigationPolicy:(int64_t)policy forNavigationAction:(id)action
{
  actionCopy = action;
  translationContext = [(_SFBrowserContentViewController *)self translationContext];
  webView = [(_SFBrowserContentViewController *)self webView];
  backForwardList = [webView backForwardList];
  currentItem = [backForwardList currentItem];
  [translationContext owningWebViewDidDecidePolicy:policy forNavigationAction:actionCopy currentBackForwardListItem:currentItem];
}

- (void)webViewController:(id)controller didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  if ([(NSURL *)self->_originalRequestURL safari_isWellKnownChangePasswordURL])
  {
    v7 = MEMORY[0x1E695AC68];
    v8 = [(_SFBrowserContentViewController *)self _fallbackURLForWellKnownChangePasswordURL:self->_originalRequestURL];
    v9 = [v7 safari_nonAppInitiatedRequestWithURL:v8];
    [(_SFBrowserContentViewController *)self loadRequest:v9];
  }

  else
  {
    objc_storeStrong(&self->_lastLoadErrorForFormatMenu, error);
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;

    [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didFailProvisionalNavigationWithError:errorCopy];
    [(WBSFluidProgressController *)self->_fluidProgressController cancelFluidProgressWithProgressStateSource:self];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController handleFrameLoadError:errorCopy];
    [(_SFBrowserContentViewController *)self _initialLoadFinishedWithSuccess:0];
    [(_SFBrowserContentViewController *)self _updateUserActivitySoon];
    [(_SFBrowserContentViewController *)self _updateNavigationBar];
  }
}

- (void)webViewController:(id)controller didSameDocumentNavigation:(id)navigation ofType:(int64_t)type
{
  [(_SFBrowserContentViewController *)self _updateNavigationBar:controller];
  if (type)
  {
    if (self->_shouldDismissReaderInReponseToSameDocumentNavigation)
    {
      [(_SFBrowserContentViewController *)self _hideReaderAnimated:0 deactivationMode:0];
    }

    self->_shouldDismissReaderInReponseToSameDocumentNavigation = 0;
  }
}

- (void)webViewController:(id)controller willEndNavigationGestureToBackForwardListItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  self->_shouldDismissReaderInReponseToSameDocumentNavigation = 1;
  if (itemCopy && [(_SFBrowserContentViewController *)self _shouldGoBackToOwnerWebView])
  {
    self->_gestureRequiresGoingBackToOwnerWebView = 1;
  }
}

- (void)webViewController:(id)controller didEndNavigationGestureToBackForwardListItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  if (itemCopy && self->_gestureRequiresGoingBackToOwnerWebView)
  {
    [(_SFBrowserContentViewController *)self _goBackToOwnerWebView];
    self->_gestureRequiresGoingBackToOwnerWebView = 0;
  }
}

- (void)webViewController:(id)controller willGoToBackForwardListItem:(id)item inPageCache:(BOOL)cache
{
  cacheCopy = cache;
  itemCopy = item;
  translationContext = [(_SFBrowserContentViewController *)self translationContext];
  [translationContext owningWebViewWillNavigateToBackForwardListItem:itemCopy inPageCache:cacheCopy];
}

- (id)_openNewWebViewIfNeededWithConfiguration:(id)configuration forNavigationAction:(id)action
{
  configurationCopy = configuration;
  webView = [(_SFBrowserContentViewController *)self webView];
  backForwardList = [webView backForwardList];
  currentItem = [backForwardList currentItem];

  [webView _saveBackForwardSnapshotForItem:currentItem];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96___SFBrowserContentViewController__openNewWebViewIfNeededWithConfiguration_forNavigationAction___block_invoke;
  v18[3] = &unk_1E8494F90;
  v9 = currentItem;
  v19 = v9;
  v10 = [webView _sessionStateWithFilter:v18];
  v11 = [SFReaderEnabledWebViewController alloc];
  contentBlockerManager = [(_SFBrowserContentViewController *)self contentBlockerManager];
  v13 = [(SFWebViewController *)v11 initWithWebViewConfiguration:configurationCopy contentBlockerManager:contentBlockerManager];

  [(_SFBrowserContentViewController *)self _pushWebViewController:v13];
  webView2 = [(SFWebViewController *)v13 webView];
  v15 = [webView2 _restoreSessionState:v10 andNavigate:0];

  webView3 = [(_SFBrowserContentViewController *)self webView];

  return webView3;
}

- (void)webViewController:(id)controller createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action completionHandler:(id)handler
{
  configurationCopy = configuration;
  actionCopy = action;
  handlerCopy = handler;
  if ([actionCopy _isUserInitiated])
  {
    v12 = [(_SFBrowserContentViewController *)self _openNewWebViewIfNeededWithConfiguration:configurationCopy forNavigationAction:actionCopy];
    handlerCopy[2](handlerCopy, v12);
  }

  else
  {
    v13 = MEMORY[0x1E69B1B00];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __122___SFBrowserContentViewController_webViewController_createWebViewWithConfiguration_forNavigationAction_completionHandler___block_invoke;
    v19 = &unk_1E8494FB8;
    selfCopy = self;
    v21 = configurationCopy;
    v22 = actionCopy;
    v23 = handlerCopy;
    v14 = [v13 blockedPopupWindowDialogWithCompletionHandler:&v16];
    v15 = [(_SFBrowserContentViewController *)self webViewController:v16];
    [v15 presentDialog:v14 sender:self];
  }
}

- (void)webViewController:(id)controller webViewDidClose:(id)close
{
  v5 = [(NSMutableArray *)self->_webViewControllers count:controller];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [(NSMutableArray *)self->_webViewControllers objectAtIndexedSubscript:0];
      webView = [v6 webView];
      _committedURL = [webView _committedURL];

      if (!_committedURL)
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

- (void)webViewControllerWebProcessDidCrash:(id)crash
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(_SFBrowserContentViewController *)self setMediaStateIcon:0];
  [(_SFPageLoadErrorController *)self->_pageLoadErrorController clearCrashCountResetTimer];
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  webView = [webViewController webView];
  v6 = [webView URL];
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

  backForwardList = [webView backForwardList];
  currentItem = [backForwardList currentItem];
  v6 = [currentItem URL];

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
  safari_userVisibleString = [v6 safari_userVisibleString];
  LODWORD(pageLoadErrorController) = [(_SFPageLoadErrorController *)pageLoadErrorController updateCrashesAndShowCrashError:v12 URLString:safari_userVisibleString];

  if (pageLoadErrorController)
  {
    [(_SFBrowserContentViewController *)self _setShowingCrashBanner:0 animated:1];
  }

  else if ((v11 & 1) == 0)
  {
    [(_SFBrowserContentViewController *)self _setShowingCrashBanner:1 animated:1];
    [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
    _committedURL = [webView _committedURL];
    v16 = [_committedURL isEqual:v6];

    if (v16)
    {
      reload = [webView reload];
    }

    else
    {
      v18 = [MEMORY[0x1E695AC68] requestWithURL:v6];
      v19 = [(_SFBrowserContentViewController *)self _requestBySettingAdvancedPrivacyProtectionsFlag:v18];

      v20 = [webView loadRequest:v19];
    }

    [(_SFReaderViewController *)self->_readerViewController setDelegate:0];
    readerViewController = self->_readerViewController;
    self->_readerViewController = 0;
  }
}

- (void)webViewControllerDidChangeHasOnlySecureContent:(id)content
{
  [(_SFBrowserContentViewController *)self _invalidateEVOrganizationName];

  [(_SFBrowserContentViewController *)self _updateUI];
}

- (void)webViewController:(id)controller didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  protectionSpace2 = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace2 authenticationMethod];
  v12 = [authenticationMethod isEqualToString:*MEMORY[0x1E695AB80]];

  if (v12)
  {
    mEMORY[0x1E69C8EE0] = [MEMORY[0x1E69C8EE0] sharedManager];
    protectionSpace3 = [challengeCopy protectionSpace];
    v15 = [mEMORY[0x1E69C8EE0] didInvalidCertificateExceptionsApplySuccessfullyForProtectionSpace:protectionSpace3 inPrivateBrowsing:0];

    if (v15)
    {
      v16 = MEMORY[0x1E695AC48];
      protectionSpace4 = [challengeCopy protectionSpace];
      v18 = [v16 credentialForTrust:{objc_msgSend(protectionSpace4, "serverTrust")}];
      handlerCopy[2](handlerCopy, 0, v18);
LABEL_10:

      goto LABEL_11;
    }

    protectionSpace5 = [challengeCopy protectionSpace];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController setProtectionSpaceForInvalidCertificateBypass:protectionSpace5];

    goto LABEL_8;
  }

  protectionSpace6 = [challengeCopy protectionSpace];
  _sf_canAuthenticate = [protectionSpace6 _sf_canAuthenticate];

  if ((_sf_canAuthenticate & 1) == 0)
  {
LABEL_8:
    handlerCopy[2](handlerCopy, 3, 0);
    goto LABEL_11;
  }

  authenticationMethod2 = [protectionSpace authenticationMethod];
  v22 = [authenticationMethod2 isEqualToString:*MEMORY[0x1E695AB40]];

  if (!v22)
  {
    protectionSpace4 = [(_SFBrowserContentViewController *)self webViewController];
    v24 = MEMORY[0x1E69B1B00];
    webView = [protectionSpace4 webView];
    _committedURL = [webView _committedURL];
    v18 = [v24 authenticationDialogWithAuthenticationChallenge:challengeCopy committedURL:_committedURL completionHandler:handlerCopy];

    dialogController = [protectionSpace4 dialogController];
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
    [dialogController presentDialog:v18 animateAlongsidePresentation:v29 dismissal:v28];

    goto LABEL_10;
  }

  [(_SFPageLoadErrorController *)self->_pageLoadErrorController handleClientCertificateAuthenticationChallenge:challengeCopy completionHandler:handlerCopy];
LABEL_11:
}

- (BOOL)webViewControllerShouldFillStringForFind:(id)find
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

- (BOOL)webViewControllerCanFindNextOrPrevious:(id)previous
{
  previousCopy = previous;
  if ([(_SFBrowserContentViewController *)self _onlyWantsWebAppShortcuts])
  {
    v5 = 0;
  }

  else
  {
    webView = [previousCopy webView];
    v7 = [webView URL];
    if (v7)
    {
      _stringForFind = [MEMORY[0x1E69853A0] _stringForFind];
      v5 = [_stringForFind length] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)webViewControllerShouldAutofillESimInformation:(id)information
{
  v26 = *MEMORY[0x1E69E9840];
  informationCopy = information;
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
      bundleIdentifier = [v6 bundleIdentifier];
      if (([bundleIdentifier isEqualToString:@"com.apple.Preferences"]& 1) != 0)
      {
LABEL_4:
        v9 = 1;
LABEL_20:

        goto LABEL_21;
      }

      bundleIdentifier2 = [v6 bundleIdentifier];
      v11 = [bundleIdentifier2 isEqualToString:@"com.apple.sfapp"];

      if (v11)
      {
        v9 = 1;
LABEL_21:

        goto LABEL_22;
      }

      bundleIdentifier = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];

      if (objc_opt_respondsToSelector())
      {
        webView = [informationCopy webView];
        v13 = [webView URL];
        host = [v13 host];
        bundleIdentifier3 = [v6 bundleIdentifier];
        v20 = 0;
        v16 = [bundleIdentifier isAutofilleSIMIdAllowedForDomain:host clientBundleIdentifier:bundleIdentifier3 error:&v20];
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
      bundleIdentifier = WBS_LOG_CHANNEL_PREFIXESim();
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
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

- (void)webViewControllerDidUpdateUnderPageBackgroundColor:(id)color
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {

    [(_SFBrowserContentViewController *)self _updateBarTheme];
  }
}

- (id)_contextMenuConfigurationForWebView:(id)view element:(id)element
{
  v4 = [_SFLinkPreviewHelper contextMenuConfigurationForWebView:view elementInfo:element handler:self];

  return v4;
}

- (id)_contextMenuContentPreviewForWebView:(id)view element:(id)element
{
  v4 = [_SFLinkPreviewHelper contextMenuContentPreviewForWebView:view elementInfo:element handler:self];

  return v4;
}

- (void)_willCommitContextMenuForWebView:(id)view withAnimator:(id)animator
{
  viewCopy = view;
  animatorCopy = animator;
  previewViewController = [animatorCopy previewViewController];
  objc_opt_class();
  [animatorCopy setPreferredCommitStyle:objc_opt_isKindOfClass() & 1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81___SFBrowserContentViewController__willCommitContextMenuForWebView_withAnimator___block_invoke;
  v9[3] = &unk_1E8490658;
  v8 = viewCopy;
  v10 = v8;
  [animatorCopy addAnimations:v9];
}

- (void)webViewController:(id)controller contextMenuConfigurationForElement:(id)element completionHandler:(id)handler
{
  elementCopy = element;
  handlerCopy = handler;
  webView = [controller webView];
  v10 = [(_SFBrowserContentViewController *)self _contextMenuConfigurationForWebView:webView element:elementCopy];
  handlerCopy[2](handlerCopy, v10);
}

- (id)webViewController:(id)controller contextMenuContentPreviewForElement:(id)element
{
  elementCopy = element;
  webView = [controller webView];
  v8 = [(_SFBrowserContentViewController *)self _contextMenuContentPreviewForWebView:webView element:elementCopy];

  return v8;
}

- (void)webViewController:(id)controller contextMenuForElement:(id)element willCommitWithAnimator:(id)animator
{
  animatorCopy = animator;
  webView = [controller webView];
  [(_SFBrowserContentViewController *)self _willCommitContextMenuForWebView:webView withAnimator:animatorCopy];
}

- (void)webViewController:(id)controller contextMenuDidEndForElement:(id)element
{
  controllerCopy = controller;
  webView = [controllerCopy webView];
  [_SFLinkPreviewHelper invalidateLinkPreviewHelperForWebView:webView];

  [(_SFBrowserContentViewController *)self _invalidatePreviewCloseTimer];
  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__closePreviewDocumentTimerFired_ selector:0 userInfo:0 repeats:0.0];
  previewCloseTimer = self->_previewCloseTimer;
  self->_previewCloseTimer = v6;
}

- (void)_closePreviewDocumentTimerFired:(id)fired
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

- (void)contextMenuConfigurationForReaderViewController:(id)controller element:(id)element completionHandler:(id)handler
{
  elementCopy = element;
  handlerCopy = handler;
  readerWebView = [controller readerWebView];
  v10 = [(_SFBrowserContentViewController *)self _contextMenuConfigurationForWebView:readerWebView element:elementCopy];
  handlerCopy[2](handlerCopy, v10);
}

- (void)readerViewController:(id)controller contextMenuForElement:(id)element willCommitWithAnimator:(id)animator
{
  animatorCopy = animator;
  readerWebView = [controller readerWebView];
  [(_SFBrowserContentViewController *)self _willCommitContextMenuForWebView:readerWebView withAnimator:animatorCopy];
}

- (void)readerViewController:(id)controller contextMenuDidEndForElement:(id)element
{
  readerWebView = [controller readerWebView];
  [_SFLinkPreviewHelper invalidateLinkPreviewHelperForWebView:?];
}

- (id)linkPreviewHelper:(id)helper previewViewControllerForURL:(id)l
{
  helperCopy = helper;
  lCopy = l;
  v8 = objc_alloc_init(_SFBrowserContentViewController);
  browserView = [(_SFBrowserContentViewController *)v8 browserView];
  [browserView setContentReadyForDisplay];
  elementInfo = [helperCopy elementInfo];
  [(_SFBrowserContentViewController *)v8 setActivatedElementInfo:elementInfo];

  view = [(_SFBrowserContentViewController *)self view];
  [view frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view2 = [(_SFBrowserContentViewController *)v8 view];
  [view2 setFrame:{v13, v15, v17, v19}];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  view3 = [(_SFBrowserContentViewController *)v8 view];
  [view3 setBackgroundColor:whiteColor];

  v23 = [SFReaderEnabledWebViewController alloc];
  webViewConfiguration = [(_SFBrowserContentViewController *)self webViewConfiguration];
  contentBlockerManager = [(_SFBrowserContentViewController *)self contentBlockerManager];
  v26 = [(SFWebViewController *)v23 initWithWebViewConfiguration:webViewConfiguration contentBlockerManager:contentBlockerManager];

  [(_SFBrowserContentViewController *)v8 _pushWebViewController:v26];
  webViewController = [(_SFBrowserContentViewController *)v8 webViewController];
  webView = [webViewController webView];
  [webView _setAllowsMediaDocumentInlinePlayback:1];

  [(_SFBrowserContentViewController *)v8 _didLoadWebView];
  webViewController2 = [(_SFBrowserContentViewController *)v8 webViewController];
  webView2 = [webViewController2 webView];
  previewWebView = self->_previewWebView;
  self->_previewWebView = webView2;

  webView3 = [(_SFBrowserContentViewController *)self webView];
  _sessionState = [webView3 _sessionState];

  webViewController3 = [(_SFBrowserContentViewController *)v8 webViewController];
  webView4 = [webViewController3 webView];
  v36 = [webView4 _restoreSessionState:_sessionState andNavigate:0];

  [(_SFBrowserContentViewController *)v8 setDisplayMode:1];
  [(_SFReloadOptionsController *)v8->_reloadOptionsController setSupportsAdvancedPrivacyProtections:[(_SFBrowserContentViewController *)self supportsAdvancedPrivacyProtectionsForURL:lCopy]];
  if ([(_SFReloadOptionsController *)self->_reloadOptionsController loadedUsingDesktopUserAgent])
  {
    [(_SFReloadOptionsController *)v8->_reloadOptionsController requestDesktopSiteWithURL:lCopy];
  }

  else
  {
    v37 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:lCopy];
    v38 = [(_SFBrowserContentViewController *)self _requestBySettingAdvancedPrivacyProtectionsFlag:v37];

    [(_SFBrowserContentViewController *)v8 loadRequest:v38];
  }

  previewHeader = [browserView previewHeader];
  [helperCopy setActiveLinkPreviewHeader:previewHeader];

  return v8;
}

- (void)linkPreviewHelper:(id)helper commitPreviewViewControllerForAction:(int64_t)action withTabOrder:(int64_t)order
{
  helperCopy = helper;
  v7 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "Committing link preview of webpage link", v16, 2u);
  }

  [(_SFBrowserContentViewController *)self _invalidatePreviewCloseTimer];
  previewWebView = self->_previewWebView;
  self->_previewWebView = 0;

  previewContentViewController = [helperCopy previewContentViewController];
  webViewController = [previewContentViewController webViewController];
  webView = [webViewController webView];
  view = [(_SFBrowserContentViewController *)self view];
  [view bounds];
  [webView setBounds:?];

  view2 = [(_SFBrowserContentViewController *)self view];
  [view2 bounds];
  UIRectGetCenter();
  [webView setCenter:?];

  v14 = *(MEMORY[0x1E695EFD0] + 16);
  v16[0] = *MEMORY[0x1E695EFD0];
  v16[1] = v14;
  v16[2] = *(MEMORY[0x1E695EFD0] + 32);
  [webView setTransform:v16];
  [webView _setAllowsMediaDocumentInlinePlayback:0];
  _unreachableURL = [webView _unreachableURL];

  if (_unreachableURL)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController webViewDidCommitErrorPagePreview:webView];
  }

  [previewContentViewController _invalidateWebViewControllers];
  [(_SFBrowserContentViewController *)self _popWebViewController];
  [(_SFBrowserContentViewController *)self _pushWebViewController:webViewController];
  [(_SFBrowserContentViewController *)self _hideReaderAnimated:0 deactivationMode:0];
  [(_SFBrowserContentViewController *)self _updateUI];
}

- (id)linkPreviewHelper:(id)helper resultOfLoadingURL:(id)l
{
  v5 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:l];
  v6 = [(_SFBrowserContentViewController *)self resultOfLoadingRequest:v5 inMainFrame:1 disallowRedirectToExternalApps:0];

  return v6;
}

- (void)linkPreviewHelper:(id)helper redirectToExternalNavigationResult:(id)result
{
  resultCopy = result;
  v6 = MEMORY[0x1E695AC68];
  v9 = resultCopy;
  v7 = [resultCopy URL];
  v8 = [v6 safari_nonAppInitiatedRequestWithURL:v7];
  [(_SFBrowserContentViewController *)self _redirectToExternalNavigationResult:v9 fromOriginalRequest:v8 promptPolicy:0 isMainFrame:1 userAction:0];
}

- (void)linkPreviewHelper:(id)helper didProduceNavigationIntent:(id)intent forAction:(int64_t)action
{
  v6 = MEMORY[0x1E695AC68];
  v8 = [intent URL];
  v7 = [v6 safari_nonAppInitiatedRequestWithURL:?];
  [(_SFBrowserContentViewController *)self loadRequest:v7];
}

- (void)linkPreviewHelperWillDisableLinkPreview
{
  [(WKWebView *)self->_previewWebView _close];
  previewWebView = self->_previewWebView;
  self->_previewWebView = 0;
}

- (void)webViewController:(id)controller printFrame:(id)frame
{
  frameCopy = frame;
  if ([(_SFBrowserContentViewController *)self canPrint])
  {
    [(_SFPrintController *)self->_printController printFrame:frameCopy initiatedByWebContent:1 completion:0];
  }
}

- (void)webViewController:(id)controller didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)name uti:(id)uti
{
  nameCopy = name;
  utiCopy = uti;
  v8 = objc_alloc(MEMORY[0x1E69B1B78]);
  if (self->_suggestedFilenameForNextCommit)
  {
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
  }

  else
  {
    suggestedFilenameForNextCommit = nameCopy;
  }

  v10 = [v8 initWithFileName:suggestedFilenameForNextCommit uti:utiCopy];
  quickLookDocumentWriter = self->_quickLookDocumentWriter;
  self->_quickLookDocumentWriter = v10;
}

- (id)webViewController:(id)controller didStartDownload:(id)download
{
  downloadCopy = download;
  if (self->_activeDownload)
  {
    v6 = 0;
  }

  else
  {
    v7 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
    v6 = [v7 downloadFromWKDownload:downloadCopy userInitiatedAction:self->_lastUserInitiatedAction];
    [v6 setDelegate:self];
    [v6 setFluidProgressController:self->_fluidProgressController];
    objc_storeStrong(&self->_activeDownload, v6);
  }

  return v6;
}

- (void)webViewController:(id)controller decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)policy forExtension:(id)extension completionHandler:(id)handler
{
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, [(_SFBrowserContentViewController *)self _isPreviewing]);
}

- (BOOL)printControllerPageIsLoading:(id)loading
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  isLoading = [webViewController isLoading];

  return isLoading;
}

- (BOOL)isPageEligibileToShowNotSecureWarning
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  webView = [webViewController webView];
  quickLookDocumentView = [(_SFBrowserView *)self->_browserView quickLookDocumentView];

  if (quickLookDocumentView)
  {
    if ([webViewController didFirstVisuallyNonEmptyLayout])
    {
      expectedOrCurrentURL = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
      safari_isEligibleToShowNotSecureWarning = [expectedOrCurrentURL safari_isEligibleToShowNotSecureWarning];
LABEL_11:

      goto LABEL_12;
    }
  }

  else if ([webViewController didFirstVisuallyNonEmptyLayout])
  {
    expectedOrCurrentURL = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
    if (([expectedOrCurrentURL safari_isEligibleToShowNotSecureWarning] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(webView, "_negotiatedLegacyTLS"))
    {
      _committedURL = [webView _committedURL];
      host = [_committedURL host];
      safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
      expectedOrCurrentURL2 = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
      host2 = [expectedOrCurrentURL2 host];
      safari_highLevelDomainFromHost2 = [host2 safari_highLevelDomainFromHost];
      safari_isEligibleToShowNotSecureWarning = [safari_highLevelDomainFromHost isEqualToString:safari_highLevelDomainFromHost2];
    }

    else
    {
      safari_isEligibleToShowNotSecureWarning = 0;
    }

    goto LABEL_11;
  }

  safari_isEligibleToShowNotSecureWarning = 0;
LABEL_12:

  return safari_isEligibleToShowNotSecureWarning;
}

- (void)updateBottomBarOffset:(double)offset topBarHeight:(double)height
{
  [(_SFBrowserView *)self->_browserView setBottomBarOffset:offset];
  browserView = self->_browserView;

  [(_SFBrowserView *)browserView setTopBarHeight:height];
}

- (void)_receivedTouchDown:(id)down
{
  if ([down state] == 3)
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

- (void)_receivedTouchUp:(id)up
{
  upCopy = up;
  if ([upCopy state] == 3 && self->_stepperMovedToRootView)
  {
    self->_stepperMovedToRootView = 0;
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:1];
  }
}

- (void)stopLoading
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  [webViewController setLoading:0];
  webView = [webViewController webView];
  [webView stopLoading];

  [(WBSFluidProgressController *)self->_fluidProgressController cancelFluidProgressWithProgressStateSource:self];
}

- (BOOL)dynamicBarAnimator:(id)animator canTransitionToState:(int64_t)state byDraggingWithOffset:(double)offset
{
  animatorCopy = animator;
  if (state == 1)
  {
    v5 = !self->_keepBarsMinimized;
  }

  else if (!state)
  {
    if ([(UIPanGestureRecognizer *)self->_hideNavigationBarGestureRecognizer state]<= 0)
    {
      _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
      scrollView = [_currentWebView scrollView];

      [scrollView contentSize];
      v13 = v12;
      [scrollView contentInset];
      v15 = v14;
      [scrollView bounds];
      MaxY = CGRectGetMaxY(v19);
      [(_SFBrowserContentViewController *)self _bottomToolbarHeight];
      v5 = v13 + v15 - MaxY - offset > v17;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)dynamicBarAnimatorWillEnterSteadyState:(id)state
{
  stateCopy = state;
  [(_SFBrowserContentViewController *)self _updateMaxVisibleHeightPercentageUserDriven:1];
  if ([stateCopy state] == 1)
  {
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator setIgnoresDragging:0];
    self->_alwaysShowTopBar = 0;
  }
}

- (void)dynamicBarAnimatorStateDidChange:(id)change
{
  changeCopy = change;
  if (self->_keepBarsMinimized && [changeCopy state] == 1)
  {
    self->_keepBarsMinimized = 0;
    [(_SFBrowserContentViewController *)self _updateWebViewLayoutSize];
  }
}

- (void)dynamicBarAnimatorOutputsDidChange:(id)change
{
  changeCopy = change;
  [changeCopy topBarHeight];
  if (self->_alwaysShowTopBar)
  {
    navigationBar = [(_SFBrowserView *)self->_browserView navigationBar];
    [navigationBar defaultHeight];
  }

  [changeCopy bottomBarOffset];
  [_SFBrowserContentViewController updateBottomBarOffset:"updateBottomBarOffset:topBarHeight:" topBarHeight:?];
  [(_SFBrowserContentViewController *)self _updateCrashBannerOffset];
  [(_SFBrowserContentViewController *)self _updatePinnableBannerOffset];
  [(_SFBrowserContentViewController *)self _updateCurrentScrollViewInsets];
  if (self->_pageScrollsWithBottomBar)
  {
    [(_SFBrowserView *)self->_browserView safeAreaInsets];
    [changeCopy bottomBarOffset];
    [(_SFBrowserView *)self->_browserView bounds];
    CGRectGetHeight(v11);
    toolbar = [(_SFBrowserView *)self->_browserView toolbar];
    [toolbar bounds];
    CGRectGetHeight(v12);

    toolbar2 = [(_SFBrowserView *)self->_browserView toolbar];
    [toolbar2 frame];
    CGRectGetMinY(v13);

    currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
    scrollView = [currentWebView scrollView];

    [scrollView contentOffset];
    [scrollView setContentOffset:?];
  }

  self->_shouldAutoHideHomeIndicator = [changeCopy state] == 0;
  [(_SFBrowserContentViewController *)self _updateHomeIndicatorAutoHideState];
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  self->_scrollViewIsDragging = 1;
  v8 = draggingCopy;
  [draggingCopy contentOffset];
  [(_SFBrowserContentViewController *)self _crashBannerDraggingOffsetForContentOffset:?];
  self->_crashBannerDraggingOffset = v5;
  if ([(_SFBrowserContentViewController *)self _effectiveBarCollapsingEnabled])
  {
    dynamicBarAnimator = self->_dynamicBarAnimator;
    [v8 contentOffset];
    [(_SFDynamicBarAnimator *)dynamicBarAnimator beginDraggingWithOffset:v7];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(_SFBrowserContentViewController *)self _updateScrollToTopView];
  if (self->_showingCrashBanner)
  {
    [(_SFBrowserContentViewController *)self _updateCrashBannerOffset];
    [(_SFBrowserView *)self->_browserView crashBannerOffset];
    v5 = v4;
    crashBanner = [(_SFBrowserView *)self->_browserView crashBanner];
    [crashBanner bounds];
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
      if (self->_usesNarrowLayout && [scrollCopy _sf_isScrolledToOrPastBottom] && !self->_keepBarsMinimized)
      {
        [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:1];
      }

      dynamicBarAnimator = self->_dynamicBarAnimator;
      [scrollCopy contentOffset];
      [(_SFDynamicBarAnimator *)dynamicBarAnimator updateDraggingWithOffset:v9];
      [(_SFBrowserContentViewController *)self _updateMaxVisibleHeightPercentageUserDriven:1];
    }
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (self->_scrollViewIsDragging)
  {
    y = velocity.y;
    self->_scrollViewIsDragging = 0;
    if ([(_SFBrowserContentViewController *)self _effectiveBarCollapsingEnabled:dragging])
    {
      dynamicBarAnimator = self->_dynamicBarAnimator;
      v9 = offset->y;

      [(_SFDynamicBarAnimator *)dynamicBarAnimator endDraggingWithTargetOffset:v9 velocity:y * 1000.0];
    }
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
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
  viewIfLoaded = [(_SFBrowserContentViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    v5 = [windowScene activationState] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSafariDataSharingMode:(int64_t)mode
{
  if (self->_safariDataSharingMode != mode)
  {
    webView = [(_SFBrowserContentViewController *)self webView];
    v14 = [webView URL];

    [(_SFBrowserContentViewController *)self _hideReaderAnimated:0 deactivationMode:0];
    [(_SFBrowserContentViewController *)self _invalidateWebViewControllers];
    bottomToolbar = self->_bottomToolbar;
    self->_bottomToolbar = 0;

    self->_safariDataSharingMode = mode;
    v7 = [SFReaderEnabledWebViewController alloc];
    webViewConfiguration = [(_SFBrowserContentViewController *)self webViewConfiguration];
    contentBlockerManager = [(_SFBrowserContentViewController *)self contentBlockerManager];
    v10 = [(SFWebViewController *)v7 initWithWebViewConfiguration:webViewConfiguration contentBlockerManager:contentBlockerManager];

    [(_SFBrowserContentViewController *)self _pushWebViewController:v10];
    _persona = [(_SFBrowserContentViewController *)self _persona];
    requestDesktopSitePreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor requestDesktopSitePreferenceManager];
    [requestDesktopSitePreferenceManager setClientPrefersMobileUserAgentByDefault:((_persona - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0];

    if (v14)
    {
      v13 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v14];
      [(_SFBrowserContentViewController *)self loadRequest:v13];
    }

    [(_SFBrowserContentViewController *)self _updateModalInPresentation];
  }
}

- (void)navigationBarMetricsDidChange:(id)change
{
  [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:0];
  navigationBar = [(_SFBrowserView *)self->_browserView navigationBar];
  [navigationBar defaultHeight];
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

- (void)navigationBarFormatMenuButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  pageFormatMenuController = [(_SFBrowserContentViewController *)self pageFormatMenuController];
  viewController = [pageFormatMenuController viewController];
  presentingViewController = [viewController presentingViewController];

  if (!presentingViewController)
  {
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:35];
  }

  [(_SFBrowserContentViewController *)self _dismissTransientUIAnimated:1];
  formatMenuButtonPopoverSourceInfo = [tappedCopy formatMenuButtonPopoverSourceInfo];
  v10 = [pageFormatMenuController presentMenuFromViewController:self withSourceInfo:formatMenuButtonPopoverSourceInfo fromSafariViewController:1];

  if (v10)
  {
    assistantController = [(_SFBrowserContentViewController *)self assistantController];
    webView = [(_SFBrowserContentViewController *)self webView];
    _committedURL = [webView _committedURL];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74___SFBrowserContentViewController_navigationBarFormatMenuButtonWasTapped___block_invoke;
    v14[3] = &unk_1E8494B08;
    v15 = pageFormatMenuController;
    [assistantController updateAssistantContentForURL:_committedURL completionHandler:v14];
  }
}

- (void)navigationBarFormatMenuButtonBecameUnavailable:(id)unavailable
{
  pageFormatMenuController = [(_SFBrowserContentViewController *)self pageFormatMenuController];
  viewController = [pageFormatMenuController viewController];
  [viewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_hideNavigationBarGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  [recognizedCopy translationInView:self->_browserView];
  v5 = v4;
  currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
  state = [recognizedCopy state];
  if ((state - 3) >= 3)
  {
    v9 = -v5;
    if (state == 1)
    {
      [currentWebView _beginInteractiveObscuredInsetsChange];
      [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator beginDraggingWithOffset:v9];
    }

    else if (state == 2)
    {
      [(_SFBrowserContentViewController *)self _updateDynamicBarGeometry];
      [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator updateDraggingWithOffset:v9];
    }
  }

  else
  {
    [currentWebView _endInteractiveObscuredInsetsChange];
    [recognizedCopy velocityInView:self->_browserView];
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator endDraggingWithTargetOffset:(v8 / log(*MEMORY[0x1E69DE3A8]) - v5) velocity:v8 * -1000.0];
    if (![(_SFDynamicBarAnimator *)self->_dynamicBarAnimator targetState])
    {
      self->_keepBarsMinimized = 1;
    }
  }
}

- (void)navigationBarReaderButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_showingReader || (-[_SFBrowserContentViewController webViewController](self, "webViewController"), v4 = objc_claimAutoreleasedReturnValue(), [v4 readerController], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isReaderAvailable"), v5, v4, v6))
  {
    [(_SFBrowserContentViewController *)self toggleShowingReaderForUserAction];
  }

  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:25];
}

- (void)navigationBarTranslateButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  translationContext = [(_SFBrowserContentViewController *)self translationContext];
  availableTargetLocaleIdentifiers = [translationContext availableTargetLocaleIdentifiers];
  v6 = [availableTargetLocaleIdentifiers count];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = [availableTargetLocaleIdentifiers objectAtIndexedSubscript:0];
      [translationContext requestTranslatingWebpageToLocale:v7 completionHandler:0];
    }

    else
    {
      v7 = [_SFTranslationTargetLocaleAlertController translationAlertControllerWithTranslationContext:translationContext];
      formatMenuButtonPopoverSourceInfo = [tappedCopy formatMenuButtonPopoverSourceInfo];
      [v7 configurePopoverWithSourceInfo:formatMenuButtonPopoverSourceInfo];

      [(_SFBrowserContentViewController *)self presentViewController:v7 animated:1 completion:0];
    }
  }

  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:27];
}

- (void)_translationAvailabilityDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69___SFBrowserContentViewController__translationAvailabilityDidChange___block_invoke;
  v6[3] = &unk_1E848F9B0;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)navigationBarFormatMenuButtonStartedInteraction:(id)interaction
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  readerController = [webViewController readerController];
  [readerController checkReaderAvailability];
}

- (void)navigationBarReloadButtonWasTapped:(id)tapped
{
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    [(_SFBrowserContentViewController *)self _reloadFromOrigin:0];
    self->_isNavigatingViaNormalReload = 1;
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:22];
  }
}

- (void)_reloadFromOrigin:(BOOL)origin
{
  originCopy = origin;
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    self->_externalAppRedirectState = 4;
    self->_loadWasUserDriven = 1;
    [(_SFBrowserContentViewController *)self _willBeginUserInitiatedNavigation];
    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    webView = [webViewController webView];
    [webViewController setLoading:1];
    if (originCopy)
    {
      reloadFromOrigin = [webView reloadFromOrigin];
    }

    else
    {
      reload = [webView reload];
    }

    [(_SFReaderViewController *)self->_readerViewController setDelegate:0];
    readerViewController = self->_readerViewController;
    self->_readerViewController = 0;
  }
}

- (void)navigationBarStopLoadingButtonWasTapped:(id)tapped
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  [webViewController setLoading:0];
  webView = [webViewController webView];
  [webView stopLoading];

  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:23];
}

- (id)navigationBarURLForSharing:(id)sharing
{
  webView = [(_SFBrowserContentViewController *)self webView];
  v4 = [webView URL];
  title = [webView title];
  [v4 _setTitle:title];

  return v4;
}

- (void)navigationBarMediaStateMuteButtonWasTapped:(id)tapped
{
  webView = [(_SFBrowserContentViewController *)self webView];
  if (_SFMediaStateIconIsMuted())
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  [webView _setPageMuted:v3];
}

- (void)navigationBar:(id)bar didCreateLeadingToolbar:(id)toolbar trailingToolbar:(id)trailingToolbar
{
  toolbarCopy = toolbar;
  trailingToolbarCopy = trailingToolbar;
  _persona = [(_SFBrowserContentViewController *)self _persona];
  [(_SFBarManager *)self->_barManager registerToolbar:toolbarCopy withLayout:0 persona:_persona];
  [(_SFBarManager *)self->_barManager registerToolbar:trailingToolbarCopy withLayout:1 persona:_persona];
}

- (void)navigationBar:(id)bar didCreateBar:(id)createBar trailingBar:(id)trailingBar
{
  createBarCopy = createBar;
  trailingBarCopy = trailingBar;
  _persona = [(_SFBrowserContentViewController *)self _persona];
  [(_SFBarManager *)self->_barManager registerBar:createBarCopy withLayout:0 persona:_persona];
  [(_SFBarManager *)self->_barManager registerBar:trailingBarCopy withLayout:1 persona:_persona];
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
    expectedOrCurrentURL = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
    safari_originalDataAsString = [expectedOrCurrentURL safari_originalDataAsString];
    [(WBSFluidProgressState *)v6 setLoadURL:safari_originalDataAsString];
  }

  return downloadToShowInQuickLook == 0;
}

- (void)clearFluidProgressState
{
  fluidProgressState = self->_fluidProgressState;
  self->_fluidProgressState = 0;
}

- (void)_setSuppressingPreviewProgressAnimation:(BOOL)animation
{
  if (self->_isSuppressingPreviewProgressAnimation != animation)
  {
    animationCopy = animation;
    self->_isSuppressingPreviewProgressAnimation = animation;
    previewHeader = [(_SFBrowserView *)self->_browserView previewHeader];
    progressView = [previewHeader progressView];

    if (progressView)
    {
      [(WBSFluidProgressController *)self->_fluidProgressController setProgressAnimationSuppressed:animationCopy forProgressStateSource:self animated:0];
    }
  }
}

- (id)expectedOrCurrentURL
{
  webView = [(_SFBrowserContentViewController *)self webView];
  v3 = [webView URL];

  return v3;
}

- (double)estimatedProgress
{
  webView = [(_SFBrowserContentViewController *)self webView];
  [webView estimatedProgress];
  v4 = v3;

  return v4;
}

- (BOOL)hasFailedURL
{
  webView = [(_SFBrowserContentViewController *)self webView];
  _unreachableURL = [webView _unreachableURL];
  v4 = _unreachableURL != 0;

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
    translationContext = [(_SFBrowserContentViewController *)self translationContext];
    v3 = translationContext;
    if (!self->_shouldReflectTranslationAsFluidProgress || translationContext == 0)
    {
      selfCopy = self;

      v3 = selfCopy;
    }
  }

  return v3;
}

- (void)fluidProgressRocketAnimationDidComplete
{
  if (self->_shouldReflectTranslationAsFluidProgress)
  {
    translationContext = [(_SFBrowserContentViewController *)self translationContext];
    [translationContext clearFluidProgressState];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_showBarsFromBottomBarRecognizer == recognizerCopy)
  {
    if (self->_keepBarsMinimized || [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator state])
    {
      v8 = 0;
    }

    else
    {
      [(_SFBrowserView *)self->_browserView bounds];
      v11 = v10;
      [touchCopy locationInView:self->_browserView];
      v13 = v12;
      toolbar = [(_SFBrowserView *)self->_browserView toolbar];
      [toolbar bounds];
      v8 = v11 - v13 < CGRectGetHeight(v15);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_hideNavigationBarGestureRecognizer == beginCopy)
  {
    LOBYTE(self) = [(_SFBrowserContentViewController *)self canHideToolbar];
  }

  else if (self->_showBarsFromBottomBarRecognizer == beginCopy)
  {
    LODWORD(self) = ![(_SFDynamicBarAnimator *)self->_dynamicBarAnimator isTrackingDrag];
  }

  else
  {
    LOBYTE(self) = 1;
  }

  return self;
}

- (id)pageLoadErrorControllerGetSecIdentityPreferencesController:(id)controller
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

- (void)pageLoadErrorControllerReloadUsingHTTPSOnlyBypass:(id)bypass
{
  webView = [(_SFBrowserContentViewController *)self webView];
  v5 = [webView URL];
  host = [v5 host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  highLevelDomainForHTTPSOnlyBypass = self->_highLevelDomainForHTTPSOnlyBypass;
  self->_highLevelDomainForHTTPSOnlyBypass = safari_highLevelDomainFromHost;

  [(_SFBrowserContentViewController *)self reload];
}

- (void)downloadDidFail:(id)fail
{
  activeDownload = self->_activeDownload;
  self->_activeDownload = 0;
}

- (void)downloadDidFinish:(id)finish
{
  finishCopy = finish;
  activeDownload = self->_activeDownload;
  self->_activeDownload = 0;

  if ([(_SFBrowserContentViewController *)self _canShowDownloadWithoutPrompting:finishCopy])
  {
    [(_SFBrowserContentViewController *)self _showDownload:finishCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69B1B00];
    fileType = [finishCopy fileType];
    wkDownload = [finishCopy wkDownload];
    originatingFrame = [wkDownload originatingFrame];
    securityOrigin = [originatingFrame securityOrigin];
    webView = [(_SFBrowserContentViewController *)self webView];
    v12 = [webView URL];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53___SFBrowserContentViewController_downloadDidFinish___block_invoke;
    v15[3] = &unk_1E8494D60;
    objc_copyWeak(&v17, &location);
    v16 = finishCopy;
    v13 = [v6 downloadBlockedDialogWithFileType:fileType initiatingSecurityOrigin:securityOrigin presentingURL:v12 completionHandler:v15];

    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    [webViewController presentDialog:v13 sender:self];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)downloadShouldContinueAfterReceivingResponse:(id)response decisionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  if ([responseCopy fileType] == 2)
  {
    quickLookDocument = [responseCopy quickLookDocument];

    if (!quickLookDocument)
    {
      v8 = [(_SFBrowserContentViewController *)self _quickLookDocumentForDownload:responseCopy];
      [responseCopy setQuickLookDocument:v8];
    }
  }

  handlerCopy[2](handlerCopy, 1);
}

- (BOOL)_canShowDownloadWithoutPrompting:(id)prompting
{
  promptingCopy = prompting;
  if ([promptingCopy fileType] == 1 || objc_msgSend(promptingCopy, "fileType") == 6)
  {
    LOBYTE(v5) = 0;
  }

  else if ([promptingCopy fileType] == 2 || self->_canOpenDownloadForInitialLoad)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    userInitiatedAction = [promptingCopy userInitiatedAction];
    v8 = userInitiatedAction;
    if (userInitiatedAction && userInitiatedAction == self->_lastUserInitiatedAction)
    {
      v5 = [(_WKUserInitiatedAction *)userInitiatedAction isConsumed]^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_showDownload:(id)download
{
  downloadCopy = download;
  fileType = [downloadCopy fileType];
  fileDownloadPath = [downloadCopy fileDownloadPath];
  self->_canOpenDownloadForInitialLoad = 0;
  userInitiatedAction = [downloadCopy userInitiatedAction];
  isConsumed = [userInitiatedAction isConsumed];

  if ((isConsumed & 1) == 0)
  {
    userInitiatedAction2 = [downloadCopy userInitiatedAction];
    [userInitiatedAction2 consume];
  }

  if (fileType <= 3)
  {
    if (fileType == 1)
    {
      webView = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileDownloadPath];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager _web_removeFileOnlyAtPath:fileDownloadPath];

      if (!webView)
      {
        v38 = WBS_LOG_CHANNEL_PREFIXDownloads();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [_SFBrowserContentViewController _showDownload:];
        }

        [(_SFPageLoadErrorController *)self->_pageLoadErrorController addInvalidProfileAlert];
        goto LABEL_32;
      }

      mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
      lastPathComponent = [fileDownloadPath lastPathComponent];
      bundleIdentifierForProfileInstallation = [(_SFBrowserContentViewController *)self bundleIdentifierForProfileInstallation];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __49___SFBrowserContentViewController__showDownload___block_invoke_365;
      v41[3] = &unk_1E8495008;
      v41[4] = self;
      [mEMORY[0x1E69ADFB8] queueFileDataForAcceptance:webView originalFileName:lastPathComponent forBundleID:bundleIdentifierForProfileInstallation completion:v41];

      goto LABEL_31;
    }

    if (fileType == 2)
    {
      mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
      mimeType = [downloadCopy mimeType];
      v36 = [downloadCopy uti];
      [mEMORY[0x1E69C8810] _sf_didBeginDownloadWithMIMEType:mimeType uti:v36 downloadType:0 promptType:0 browserPersona:{-[_SFBrowserContentViewController _persona](self, "_persona")}];

      objc_storeStrong(&self->_downloadToShowInQuickLook, download);
      quickLookDocument = [downloadCopy quickLookDocument];
      [quickLookDocument setSavedPath:fileDownloadPath shouldDelete:1];

      webView = [(_SFBrowserContentViewController *)self webView];
      mEMORY[0x1E69ADFB8] = [downloadCopy sourceURL];
      [(_SFContactPreviewViewController *)webView _loadAlternateHTMLString:0 baseURL:0 forUnreachableURL:mEMORY[0x1E69ADFB8]];
      goto LABEL_31;
    }

    if (fileType != 3)
    {
      goto LABEL_33;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:fileDownloadPath isDirectory:0];
    v16 = [downloadCopy uti];
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

  if (fileType > 5)
  {
    if (fileType != 6)
    {
      if (fileType == 7)
      {
        webView = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:fileDownloadPath isDirectory:0];
        [(_SFBrowserContentViewController *)self _showFinanceKitOrderPreviewControllerWithURL:webView dismissalHandler:0];
        if (([downloadCopy explicitlySaved] & 1) == 0)
        {
          [downloadCopy removeFromDisk];
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
    webView = objc_alloc_init(v32);
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E695DFF8] fileURLWithPath:fileDownloadPath isDirectory:0];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __49___SFBrowserContentViewController__showDownload___block_invoke_362;
    v42[3] = &unk_1E84906D0;
    v42[4] = self;
    [(_SFContactPreviewViewController *)webView _addWatchFaceAtURL:mEMORY[0x1E69ADFB8] shouldValidate:0 completionHandler:v42];
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  if (fileType != 4)
  {
    v11 = [_SFContactPreviewViewController alloc];
    sourceURL = [downloadCopy sourceURL];
    webView = [(_SFContactPreviewViewController *)v11 initWithFilePath:fileDownloadPath sourceURL:sourceURL deleteFileWhenDone:1 beforeDismissHandler:0];

    if (webView)
    {
      [(_SFBrowserContentViewController *)self presentViewController:webView animated:1 completion:0];
    }

    else
    {
      [downloadCopy removeFromDisk];
      [(_SFBrowserContentViewController *)self _showGenericDownloadAlert];
    }

    goto LABEL_32;
  }

  sourceURL2 = [downloadCopy sourceURL];
  v29 = [(_SFBrowserContentViewController *)self _showICSControllerForPath:fileDownloadPath sourceURL:sourceURL2];

  if (!v29)
  {
    v30 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [_SFBrowserContentViewController _showDownload:];
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 _web_removeFileOnlyAtPath:fileDownloadPath];

    [(_SFBrowserContentViewController *)self _showGenericDownloadAlert];
  }

LABEL_33:
}

- (void)_showPassBookControllerForPasses:(id)passes
{
  passesCopy = passes;
  v4 = [objc_alloc(getPKAddPassesViewControllerClass()) initWithPasses:passesCopy fromPresentationSource:0];
  [v4 setDelegate:self];
  [(_SFBrowserContentViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_showFinanceKitOrderPreviewControllerWithURL:(id)l dismissalHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
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
  v10 = handlerCopy;
  v12 = v10;
  [v8 saveOrderAtURL:lCopy completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (BOOL)_showICSControllerForPath:(id)path sourceURL:(id)l
{
  pathCopy = path;
  lCopy = l;
  v8 = [[_SFICSPreviewViewController alloc] initWithFilePath:pathCopy sourceURL:lCopy];
  v9 = v8;
  if (v8)
  {
    [(_SFICSPreviewViewController *)v8 setModalPresentationStyle:2];
    [(_SFBrowserContentViewController *)self presentViewController:v9 animated:1 completion:0];
  }

  return v9 != 0;
}

- (void)_fetchSharingURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  webView = [(_SFBrowserContentViewController *)self webView];
  v6 = [webView URL];
  v7 = [[_SFSharingLinkExtractor alloc] initWithWebView:webView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73___SFBrowserContentViewController__fetchSharingURLWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E8495058;
  v8 = v6;
  v11 = v8;
  v9 = handlerCopy;
  v12 = v9;
  [(_SFSharingLinkExtractor *)v7 fetchSharingLinkWithCompletionHandler:v10];
}

- (id)_itemProviderCollectionForSharingURL:(id)l title:(id)title
{
  lCopy = l;
  webView = [(_SFBrowserContentViewController *)self webView];
  v7 = [[_SFActivityItemProviderCollection alloc] initWithWebView:webView];
  -[_SFActivityItemProviderCollection setDisplayingStandaloneImage:](v7, "setDisplayingStandaloneImage:", [webView _isDisplayingStandaloneImageDocument]);
  -[_SFActivityItemProviderCollection setDisplayingStandaloneMedia:](v7, "setDisplayingStandaloneMedia:", [webView _isDisplayingStandaloneMediaDocument]);
  v8 = [_SFLinkWithPreviewActivityItemProvider alloc];
  title = [webView title];
  v10 = [(_SFLinkWithPreviewActivityItemProvider *)v8 initWithPlaceholderItem:lCopy URL:lCopy pageTitle:title webView:webView];
  [(_SFActivityItemProviderCollection *)v7 setLinkProvider:v10];

  if (![(_SFBrowserContentViewController *)self isShowingErrorPage])
  {
    v11 = [_SFActivityViewController activeWebPageExtensionItemForURL:lCopy withPreviewImageHandler:0];
    v12 = [_SFActivityExtensionItemProvider alloc];
    title2 = [webView title];
    v14 = [(_SFActivityExtensionItemProvider *)v12 initWithExtensionItem:v11 URL:lCopy pageTitle:title2 webView:webView];

    [(_SFActivityItemProviderCollection *)v7 setJavaScriptExtensionProvider:v14];
  }

  v15 = [_SFDownloadActivityItemProvider alloc];
  quickLookDocument = [(_SFBrowserContentViewController *)self quickLookDocument];
  v17 = [(_SFDownloadActivityItemProvider *)v15 initWithQuickLookDocument:quickLookDocument URL:lCopy webView:webView];
  [(_SFActivityItemProviderCollection *)v7 setDownloadProvider:v17];

  v18 = [[_SFPrintActivityItemProvider alloc] initWithPrintController:self->_printController webView:webView];
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
  quickLookDocument = [(_SFBrowserContentViewController *)self quickLookDocument];
  if (quickLookDocument && (quickLookDocumentController = self->_quickLookDocumentController, quickLookDocument, quickLookDocumentController))
  {
    [(SFQuickLookDocumentController *)self->_quickLookDocumentController presentDocumentInteractionControllerFromSource:v4];
  }

  else
  {
    webView = [(_SFBrowserContentViewController *)self webView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___SFBrowserContentViewController__presentActivityViewController__block_invoke;
    v9[3] = &unk_1E84950A8;
    v9[4] = self;
    v10 = webView;
    v11 = v4;
    v8 = webView;
    [(_SFBrowserContentViewController *)self _fetchSharingURLWithCompletionHandler:v9];
  }
}

- (void)activityViewController:(id)controller prepareActivity:(id)activity completion:(id)completion
{
  controllerCopy = controller;
  activityCopy = activity;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = completionCopy;
  }

  else
  {
    v10 = &__block_literal_global_389_0;
  }

  webView = [(_SFBrowserContentViewController *)self webView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activityViewController = [activityCopy activityViewController];
      getSLComposeViewControllerClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        title = [webView title];
        [activityViewController setInitialText:title];
      }
    }

    else
    {
      activityType = [activityCopy activityType];
      v20 = [activityType isEqualToString:*MEMORY[0x1E69CDAA0]];

      if (!v20)
      {
        v10[2](v10);
        goto LABEL_16;
      }

      activityViewController = [activityCopy activityViewController];
      if ([activityViewController _sf_isMFMailComposeViewController])
      {
        _mailContentProvider = [(_SFBrowserContentViewController *)self _mailContentProvider];
        [_mailContentProvider setRestrictAddingPDFContent:1];
        customizationController = [controllerCopy customizationController];
        v23 = _SFPreferredMailContentTypeForActivityContentType([customizationController selectedContentType]);

        sharingURL = [controllerCopy sharingURL];
        [_mailContentProvider prepareMailComposeViewController:activityViewController withMailToURL:0 contentURL:sharingURL preferredContentType:v23 completionHandler:v10];

        [_mailContentProvider setRestrictAddingPDFContent:0];
        goto LABEL_15;
      }
    }

    v10[2](v10);
    goto LABEL_15;
  }

  activityViewController = activityCopy;
  bookmarkNavigationController = [activityViewController bookmarkNavigationController];
  title2 = [webView title];
  sharingURL2 = [controllerCopy sharingURL];
  safari_userVisibleString = [sharingURL2 safari_userVisibleString];
  v17 = [bookmarkNavigationController addBookmarkWithTitle:title2 address:safari_userVisibleString parentBookmark:0];

  v10[2](v10);
LABEL_15:

LABEL_16:
}

- (void)perSiteSettingsUIPresentSettings
{
  v3 = [_SFPerSitePreferencesPopoverViewController alloc];
  perSitePreferencesVendor = [(_SFBrowserContentViewController *)self perSitePreferencesVendor];
  v6 = [(_SFPerSitePreferencesPopoverViewController *)v3 initWithBrowserDocument:self perSitePreferencesVendor:perSitePreferencesVendor];

  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v5 setModalPresentationStyle:2];
  [(_SFBrowserContentViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (BOOL)_suppressReloadToPreventLoadingJavaScriptIfNecessary
{
  expectedOrCurrentURL = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
  absoluteString = [expectedOrCurrentURL absoluteString];
  safari_isJavaScriptURLString = [absoluteString safari_isJavaScriptURLString];

  if (safari_isJavaScriptURLString)
  {
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDisallowedUseOfJavaScriptAlert];
  }

  return safari_isJavaScriptURLString;
}

- (void)reloadEnablingDowngradedPrivateRelay:(BOOL)relay
{
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
    v6 = [currentWebView URL];
    urlToReloadEnablingPrivateRelay = self->_urlToReloadEnablingPrivateRelay;
    self->_urlToReloadEnablingPrivateRelay = v6;

    self->_disablePrivateRelayWhenReloading = relay;
    self->_isNavigatingViaReloadWithoutPrivateRelay = relay;

    [(_SFBrowserContentViewController *)self _reloadFromOrigin:0];
  }
}

- (void)reloadDisablingContentBlockers:(BOOL)blockers
{
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
    v6 = [currentWebView URL];
    urlToReloadForcingContentBlockers = self->_urlToReloadForcingContentBlockers;
    self->_urlToReloadForcingContentBlockers = v6;

    self->_disableContentBlockersWhenReloading = blockers;

    [(_SFBrowserContentViewController *)self _reloadFromOrigin:0];
  }
}

- (void)reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:(BOOL)protections
{
  if (![(_SFBrowserContentViewController *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary])
  {
    webView = [(_SFBrowserContentViewController *)self webView];
    v6 = [webView URL];
    urlToReloadForAdvancedPrivateBrowsingPrivacyProtections = self->_urlToReloadForAdvancedPrivateBrowsingPrivacyProtections;
    self->_urlToReloadForAdvancedPrivateBrowsingPrivacyProtections = v6;

    self->_disableAdvancedPrivateBrowsingPrivacyProtectionsWhenReloading = protections;

    [(_SFBrowserContentViewController *)self _reloadFromOrigin:0];
  }
}

- (BOOL)privacyReportShouldSeparateBlockedTrackers
{
  selfCopy = self;
  webView = [(_SFBrowserContentViewController *)self webView];
  v4 = [webView URL];
  LOBYTE(selfCopy) = [(_SFBrowserContentViewController *)selfCopy supportsAdvancedPrivacyProtectionsForURL:v4];

  return selfCopy;
}

- (NSURL)URLForPerSitePreferences
{
  webView = [(_SFBrowserContentViewController *)self webView];
  _committedURL = [webView _committedURL];

  if (!_committedURL || ([_committedURL safari_isHTTPFamilyURL] & 1) == 0 && -[_SFBrowserContentViewController isShowingErrorPage](self, "isShowingErrorPage"))
  {
    webView2 = [(_SFBrowserContentViewController *)self webView];
    v6 = [webView2 URL];

    _committedURL = v6;
  }

  return _committedURL;
}

- (SFReaderContext)readerContext
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  readerController = [webViewController readerController];

  return readerController;
}

- (SFScribbleController)sfScribbleController
{
  sfScribbleController = self->_sfScribbleController;
  if (!sfScribbleController)
  {
    v4 = objc_alloc(MEMORY[0x1E69B1B88]);
    webView = [(_SFBrowserContentViewController *)self webView];
    v6 = [v4 initWithWebView:webView delegate:self];
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
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didActivateReaderWithTrigger:0];
  }
}

- (BOOL)canFindOnPage
{
  if ([(_SFBrowserContentViewController *)self _onlyWantsWebAppShortcuts])
  {
    return 0;
  }

  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  webView = [webViewController webView];
  v6 = [webView URL];
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

- (void)willPresentBrowsingAssistantInSheet:(BOOL)sheet
{
  if (sheet)
  {
    self->_alwaysShowTopBar = 1;
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator setIgnoresDragging:1];
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator setMinimumTopBarHeight:2.22507386e-308];
    dynamicBarAnimator = self->_dynamicBarAnimator;

    [(_SFDynamicBarAnimator *)dynamicBarAnimator attemptTransitionToState:0 animated:1];
  }
}

- (void)willDismissBrowsingAssistantInSheet:(BOOL)sheet
{
  if (sheet && ![(_SFPageFormatMenuController *)self->_pageFormatMenuController stepperIsInTransitionView])
  {
    dynamicBarAnimator = self->_dynamicBarAnimator;

    [(_SFDynamicBarAnimator *)dynamicBarAnimator attemptTransitionToState:1 animated:1];
  }
}

- (void)showFindOnPage
{
  activeWebView = [(_SFBrowserContentViewController *)self activeWebView];
  [activeWebView find:0];
}

- (void)handleSearchResult:(id)result
{
  v4 = MEMORY[0x1E695AC68];
  _sf_punchoutURL = [result _sf_punchoutURL];
  v5 = [v4 requestWithURL:?];
  [(_SFBrowserContentViewController *)self loadRequest:v5];
}

- (void)takeOwnershipOfStepperContainer:(id)container
{
  containerCopy = container;
  if (!self->_stepperContainer)
  {
    v8 = containerCopy;
    objc_storeStrong(&self->_stepperContainer, container);
    view = [(_SFBrowserContentViewController *)self view];
    [v8 bounds];
    [view convertRect:v8 fromView:?];
    [v8 setFrame:?];

    view2 = [(_SFBrowserContentViewController *)self view];
    [view2 addSubview:v8];

    self->_stepperMovedToRootView = 1;
    containerCopy = v8;
  }
}

- (void)setKeepBarsMinimized:(BOOL)minimized
{
  if (self->_keepBarsMinimized != minimized)
  {
    self->_keepBarsMinimized = minimized;
    if (minimized)
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
    userContentController = [(_SFBrowserContentViewController *)self userContentController];
    webExtensionsController = [(_SFBrowserContentViewController *)self webExtensionsController];
    v7 = [(SFContentBlockerManager *)v4 initWithUserContentController:userContentController webExtensionsController:webExtensionsController];
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
    safari_userContentController = [MEMORY[0x1E6985350] safari_userContentController];
    v7 = [v4 initWithProfileServerID:v5 userContentController:safari_userContentController];
    v8 = self->_webExtensionsController;
    self->_webExtensionsController = v7;

    [(SFWebExtensionsController *)self->_webExtensionsController setProfileDelegate:self];
    webExtensionsController = self->_webExtensionsController;
  }

  return webExtensionsController;
}

- (void)collectDiagnosticsForAutoFillWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  [webViewController collectDiagnosticsForAutoFillWithCompletionHandler:handlerCopy];
}

- (id)sfWebExtensionsControllersForAllProfiles:(id)profiles
{
  v6[1] = *MEMORY[0x1E69E9840];
  webExtensionsController = [(_SFBrowserContentViewController *)self webExtensionsController];
  v6[0] = webExtensionsController;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)profiles
{
  v6[1] = *MEMORY[0x1E69E9840];
  contentBlockerManager = [(_SFBrowserContentViewController *)self contentBlockerManager];
  v6[0] = contentBlockerManager;
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
  webView = [(_SFBrowserContentViewController *)self webView];
  v3 = [webView URL];

  return v3;
}

- (void)_updateUserActivity
{
  v20[1] = *MEMORY[0x1E69E9840];
  if ([(_SFBrowserContentViewController *)self _persona]== 1 && ![(SFSafariViewControllerConfiguration *)self->_configuration _isEphemeral])
  {
    webView = [(_SFBrowserContentViewController *)self webView];
    title = [webView title];
    v5 = objc_alloc(MEMORY[0x1E69C8EF8]);
    handoffURL = [(_SFBrowserContentViewController *)self handoffURL];
    v7 = [v5 initWithURL:handoffURL uuid:0 title:title isShowingReader:self->_showingReader readerScrollPosition:0 sceneID:0];

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
      _hostAppBundleId = [(_SFBrowserContentViewController *)self _hostAppBundleId];
      if (_hostAppBundleId)
      {
        v19 = @"UAProxiedBundleIdentifier";
        _hostAppBundleId2 = [(_SFBrowserContentViewController *)self _hostAppBundleId];
        v20[0] = _hostAppBundleId2;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      }

      else
      {
        v13 = 0;
      }

      v15 = objc_alloc(MEMORY[0x1E69636A8]);
      v16 = [v15 _initWithUserActivityType:*MEMORY[0x1E696AA68] dynamicActivityType:0 options:v13];
      [v16 setWebpageURL:v10];
      [v16 setTitle:title];
      dictionaryRepresentationForUserActivityUserInfo = [v7 dictionaryRepresentationForUserActivityUserInfo];
      [v16 setUserInfo:dictionaryRepresentationForUserActivityUserInfo];

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

  userActivity = [(_SFBrowserContentViewController *)self userActivity];
  [userActivity invalidate];

  [(_SFBrowserContentViewController *)self setUserActivity:0];
}

- (void)_setUpMenu
{
  mEMORY[0x1E69B1AD0] = [MEMORY[0x1E69B1AD0] sharedProvider];
  [mEMORY[0x1E69B1AD0] rebuildMenuIfNeededForPersona:{-[_SFBrowserContentViewController _persona](self, "_persona")}];
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v6.receiver = self;
  v6.super_class = _SFBrowserContentViewController;
  [(_SFBrowserContentViewController *)&v6 validateCommand:commandCopy];
  if ([commandCopy action] == sel_saveKeyPressed)
  {
    v5 = _WBSLocalizedString();
    [commandCopy setDiscoverabilityTitle:v5];
  }

  else
  {
    SFBrowserContentControllerValidateCommand(self, commandCopy);
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

- (void)find:(id)find
{
  activeWebView = [(_SFBrowserContentViewController *)self activeWebView];
  [activeWebView find:0];

  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] didFindOnPageWithTrigger:0];
}

- (void)takeFindStringKeyPressed
{
  self->_shouldFillStringForFind = 1;
  _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
  [_currentWebView _takeFindStringFromSelection:0];
}

- (void)cancelKeyPressed
{
  if (self->_showingReader)
  {

    [(_SFBrowserContentViewController *)self _hideReaderAnimated:1 deactivationMode:1];
  }

  else if (![(_SFBrowserContentViewController *)self _dismissTransientUIAnimated:1])
  {
    webView = [(_SFBrowserContentViewController *)self webView];
    [webView stopLoading];
  }
}

- (BOOL)_dismissTransientUIAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _hideFindOnPage = [(_SFBrowserContentViewController *)self _hideFindOnPage];
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  dialogController = [webViewController dialogController];

  presentedDialog = [dialogController presentedDialog];
  v9 = presentedDialog;
  if (presentedDialog && [presentedDialog presentationStyle] == 1)
  {
    [dialogController cancelPresentedDialogIfNeeded];
    _hideFindOnPage = 1;
  }

  presentedViewController = [(_SFBrowserContentViewController *)self presentedViewController];
  v11 = presentedViewController;
  if (presentedViewController && ([presentedViewController isBeingDismissed] & 1) == 0)
  {
    [v11 dismissViewControllerAnimated:animatedCopy completion:0];
    goto LABEL_9;
  }

  if (_hideFindOnPage)
  {
LABEL_9:
    isDisplayingPrintUI = 1;
    goto LABEL_10;
  }

  isDisplayingPrintUI = [(_SFPrintController *)self->_printController isDisplayingPrintUI];
LABEL_10:
  [(_SFPrintController *)self->_printController dismissPrintInteractionControllerAnimated:1];

  return isDisplayingPrintUI;
}

- (void)autoFillFormKeyPressed
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  [webViewController performPageLevelAutoFill];
}

- (void)_emailCurrentPageWithPreferredContentType:(int64_t)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77___SFBrowserContentViewController__emailCurrentPageWithPreferredContentType___block_invoke;
  v3[3] = &unk_1E84950F8;
  v3[4] = self;
  v3[5] = type;
  [(_SFBrowserContentViewController *)self _fetchSharingURLWithCompletionHandler:v3];
}

- (void)addCurrentPageToHomeScreen:(id)screen
{
  objc_initWeak(&location, self);
  v4 = [SFAddToHomeScreenViewController alloc];
  webView = [(_SFBrowserContentViewController *)self webView];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __62___SFBrowserContentViewController_addCurrentPageToHomeScreen___block_invoke;
  v10 = &unk_1E8495120;
  objc_copyWeak(&v11, &location);
  v6 = [(SFAddToHomeScreenViewController *)v4 initWithWebView:webView completion:&v7];

  [(_SFBrowserContentViewController *)self presentViewController:v6 animated:1 completion:0, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)toggleContentBlockers:(id)blockers
{
  wasLoadedWithContentBlockersEnabled = [(_SFBrowserContentViewController *)self wasLoadedWithContentBlockersEnabled];

  [(_SFBrowserContentViewController *)self reloadDisablingContentBlockers:wasLoadedWithContentBlockersEnabled];
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

- (id)readerControllerForMailContentProvider:(id)provider
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  readerController = [webViewController readerController];

  return readerController;
}

- (id)webViewForMailContentProvider:(id)provider
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  v5 = webViewController;
  if (self->_showingReader)
  {
    readerController = [webViewController readerController];
    readerWebView = [readerController readerWebView];
  }

  else
  {
    readerWebView = [webViewController webView];
  }

  return readerWebView;
}

- (id)_committedDomainForPreferences
{
  webView = [(_SFBrowserContentViewController *)self webView];
  _committedURL = [webView _committedURL];
  safari_userVisibleHostWithoutWWWSubdomain = [_committedURL safari_userVisibleHostWithoutWWWSubdomain];

  return safari_userVisibleHostWithoutWWWSubdomain;
}

- (void)_perSiteAutomaticReaderActivationPreferenceDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88___SFBrowserContentViewController__perSiteAutomaticReaderActivationPreferenceDidChange___block_invoke;
  v6[3] = &unk_1E848F9B0;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_perSitePageZoomPreferenceDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___SFBrowserContentViewController__perSitePageZoomPreferenceDidChange___block_invoke;
  v6[3] = &unk_1E848F9B0;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_perSiteLockdownModePreferenceDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75___SFBrowserContentViewController__perSiteLockdownModePreferenceDidChange___block_invoke;
  v6[3] = &unk_1E848F9B0;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
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

- (void)_showDigitalHealthOverlayWithPolicy:(int64_t)policy
{
  if ([(_SFBrowserContentViewController *)self _personaShouldUseScreenTime])
  {
    if (self->_showingReader)
    {
      [(_SFBrowserContentViewController *)self _hideReaderAnimated:0 deactivationMode:1];
    }

    if (![(_SFBrowserContentViewController *)self isBlockedByScreenTime])
    {
      webViewController = [(_SFBrowserContentViewController *)self webViewController];
      webView = [webViewController webView];
      v6 = [webView URL];

      if (v6)
      {
        v7 = objc_alloc_init(MEMORY[0x1E69B1B80]);
        screenTimeOverlayViewController = self->_screenTimeOverlayViewController;
        self->_screenTimeOverlayViewController = v7;

        v9 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController showBlockingViewControllerForURL:v6 withPolicy:policy animated:1];
        [webViewController addChildViewController:self->_screenTimeOverlayViewController];
        [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController didMoveToParentViewController:webViewController];
        view = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
        view2 = [webViewController view];
        [view2 bounds];
        [view setFrame:?];
        [view2 addSubview:view];
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
    view = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
    [view removeFromSuperview];

    screenTimeOverlayViewController = self->_screenTimeOverlayViewController;
    self->_screenTimeOverlayViewController = 0;
  }
}

- (void)beginDigitalHealthTracking
{
  if ([(_SFBrowserContentViewController *)self _personaShouldUseScreenTime])
  {
    _digitalHealthManager = [(_SFBrowserContentViewController *)self _digitalHealthManager];
    currentUsageTrackingURL = self->_currentUsageTrackingURL;
    _hostAppBundleId = [(_SFBrowserContentViewController *)self _hostAppBundleId];
    [_digitalHealthManager updateUsageTrackingForURL:currentUsageTrackingURL withBundleIdentifier:_hostAppBundleId profileIdentifier:*MEMORY[0x1E69C8B58] toState:2];

    [_digitalHealthManager startObserving];
  }
}

- (void)stopDigitalHealthTrackingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82___SFBrowserContentViewController_stopDigitalHealthTrackingWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E8495170;
  v5 = handlerCopy;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  if ([(_SFBrowserContentViewController *)self _personaShouldUseScreenTime])
  {
    _digitalHealthManager = [(_SFBrowserContentViewController *)self _digitalHealthManager];
    currentUsageTrackingURL = self->_currentUsageTrackingURL;
    v9 = *MEMORY[0x1E69C8B58];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82___SFBrowserContentViewController_stopDigitalHealthTrackingWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E84911D8;
    v12 = _digitalHealthManager;
    v13 = v5;
    v10 = _digitalHealthManager;
    [v10 stopUsageTrackingForURL:currentUsageTrackingURL profileIdentifier:v9 withCompletionHandler:v11];
  }

  else
  {
    v6[2](v6);
  }
}

- (BOOL)isPlayingAudio
{
  webView = [(_SFBrowserContentViewController *)self webView];
  _isPlayingAudio = [webView _isPlayingAudio];

  return _isPlayingAudio;
}

- (void)barManager:(id)manager didReceiveTapForBarItem:(int64_t)item
{
  managerCopy = manager;
  if (item <= 8)
  {
    if (item)
    {
      if (item == 1)
      {
        [(_SFBrowserContentViewController *)self _goForward];
        mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
        [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:1];
      }

      else
      {
        if (item != 6)
        {
          goto LABEL_19;
        }

        [(_SFBrowserContentViewController *)self _presentActivityViewController];
        mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
        [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:3];
      }
    }

    else
    {
      [(_SFBrowserContentViewController *)self _goBack];
      mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
      [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:0];
    }

    goto LABEL_18;
  }

  if (item <= 13)
  {
    if (item == 9)
    {
      [(_SFBrowserContentViewController *)self _openCurrentURLInSafari];
      mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
      [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:36];
    }

    else
    {
      if (item != 10)
      {
        goto LABEL_19;
      }

      [(_SFBrowserContentViewController *)self _invokeCustomActivity];
      mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
      [mEMORY[0x1E69C8810] reportSVCToolbarButtonUsage:37];
    }

LABEL_18:

    goto LABEL_19;
  }

  if (item == 14)
  {
    [(_SFBrowserContentViewController *)self navigationBarStopLoadingButtonWasTapped:self->_navigationBar];
    p_barManager = &self->_barManager;
    [(_SFBarManager *)*p_barManager setBarItem:15 hidden:0];
    v8 = 1;
  }

  else
  {
    if (item != 15)
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

- (void)setMediaStateIcon:(unint64_t)icon
{
  if (self->_cachedMediaStateIcon != icon)
  {
    self->_cachedMediaStateIcon = icon;
    [(SFNavigationBarItem *)self->_navigationBarItem setMediaStateIcon:?];
  }
}

- (void)webViewController:(id)controller mediaCaptureStateDidChange:(unint64_t)change
{
  controllerCopy = controller;
  v6 = 1;
  v7 = 4;
  if ((change & 8) == 0)
  {
    v7 = ((change << 61) >> 63) & 3;
  }

  if ((change & 1) == 0)
  {
    v6 = v7;
  }

  if ((change & 2) != 0)
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
  selfCopy = self;
  webView = [(_SFBrowserContentViewController *)self webView];
  v4 = [webView URL];
  LOBYTE(selfCopy) = [(_SFBrowserContentViewController *)selfCopy _canSaveWebpageForURL:v4];

  return selfCopy;
}

- (BOOL)_canSaveWebpageForURL:(id)l
{
  lCopy = l;
  if (lCopy && !self->_saveToFilesOperation)
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
    webView = [(_SFBrowserContentViewController *)self webView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68___SFBrowserContentViewController__presentSaveWebpageViewController__block_invoke;
    v5[3] = &unk_1E8495198;
    v5[4] = self;
    v6 = webView;
    v4 = webView;
    [(_SFBrowserContentViewController *)self _fetchSharingURLWithCompletionHandler:v5];
  }
}

- (void)saveToFilesOperation:(id)operation didFinishWithSuccess:(BOOL)success
{
  saveToFilesOperation = self->_saveToFilesOperation;
  self->_saveToFilesOperation = 0;
}

- (id)webViewForCustomizationController:(id)controller
{
  webView = [(_SFBrowserContentViewController *)self webView];

  return webView;
}

- (BOOL)isDisplayingQuickLookDocumentForCustomizationController:(id)controller
{
  quickLookDocument = [(_SFBrowserContentViewController *)self quickLookDocument];
  v4 = quickLookDocument != 0;

  return v4;
}

- (BOOL)isReaderAvailableForCustomizationController:(id)controller
{
  webViewController = [(_SFBrowserContentViewController *)self webViewController];
  readerController = [webViewController readerController];
  isReaderAvailable = [readerController isReaderAvailable];

  return isReaderAvailable;
}

- (void)translationContextReloadPageInOriginalLanguage:(id)language
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___SFBrowserContentViewController_translationContextReloadPageInOriginalLanguage___block_invoke;
  block[3] = &unk_1E8490658;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)translationContext:(id)context urlForCurrentPageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93___SFBrowserContentViewController_translationContext_urlForCurrentPageWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E84904F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (id)safariApplicationVersionForTranslationContext:(id)context
{
  _sf_safariServicesBundle = [MEMORY[0x1E696AAE8] _sf_safariServicesBundle];
  safari_normalizedVersion = [_sf_safariServicesBundle safari_normalizedVersion];

  return safari_normalizedVersion;
}

- (void)translationContext:(id)context showTranslationErrorAlertWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97___SFBrowserContentViewController_translationContext_showTranslationErrorAlertWithTitle_message___block_invoke;
  v8[3] = &unk_1E848F9B0;
  v9 = messageCopy;
  selfCopy = self;
  v7 = messageCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)translationContext:(id)context shouldReportProgressInUnifiedField:(BOOL)field
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89___SFBrowserContentViewController_translationContext_shouldReportProgressInUnifiedField___block_invoke;
  v4[3] = &unk_1E84951C0;
  v4[4] = self;
  fieldCopy = field;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (void)translationContextWillRequestTranslatingWebpage:(id)webpage
{
  processPool = [(_SFBrowserContentViewController *)self processPool];
  SafariShared::ReaderAvailabilityController::updateReaderOrTranslationLastActivated(processPool, v3);
}

- (void)_updateMaxVisibleHeightPercentageUserDriven:(BOOL)driven
{
  drivenCopy = driven;
  webView = [(_SFBrowserContentViewController *)self webView];
  scrollView = [webView scrollView];
  [scrollView contentSize];
  v7 = v6;
  if ([(_SFToolbar *)self->_bottomToolbar placement]== 1)
  {
    superview = [(_SFToolbar *)self->_bottomToolbar superview];
    [(_SFToolbar *)self->_bottomToolbar origin];
    [superview convertPoint:scrollView toView:?];
    v10 = v9;
  }

  else
  {
    [scrollView contentOffset];
    v12 = v11;
    [webView frame];
    v10 = v12 + v13;
  }

  [(WBSTranslationContext *)self->_translationContext updateMaxVisibleHeightPercentageIfNeeded:drivenCopy userDriven:v10 / v7];
}

- (void)_translationContextStateDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69___SFBrowserContentViewController__translationContextStateDidChange___block_invoke;
  block[3] = &unk_1E8490658;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_presentTranslationConsentAlertWithType:(unint64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___SFBrowserContentViewController__presentTranslationConsentAlertWithType_completionHandler___block_invoke;
  block[3] = &unk_1E8495210;
  v9 = handlerCopy;
  typeCopy = type;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)addPassesViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  _currentWebView = [(_SFBrowserContentViewController *)self _currentWebView];
  _committedURL = [_currentWebView _committedURL];

  if (_committedURL)
  {
    [finishCopy dismissViewControllerAnimated:1 completion:0];
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
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v6 = [v4 initWithBrowserDefaults:safari_browserDefaults];
    v7 = self->_cachedLegacyTLSHostManager;
    self->_cachedLegacyTLSHostManager = v6;

    cachedLegacyTLSHostManager = self->_cachedLegacyTLSHostManager;
  }

  return cachedLegacyTLSHostManager;
}

- (void)pageLoadErrorController:(id)controller allowLegacyTLSConnectionForURL:(id)l navigateToURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  legacyTLSHostManager = [(_SFBrowserContentViewController *)self legacyTLSHostManager];
  host = [lCopy host];
  [legacyTLSHostManager allowLegacyTLSForHost:host];

  v10 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:rLCopy];
  [(_SFBrowserContentViewController *)self loadRequest:v10];
}

- (void)overlayDidHide:(id)hide
{
  hideCopy = hide;
  pinnableBanner = [(_SFBrowserView *)self->_browserView pinnableBanner];
  [(_SFBrowserContentViewController *)self _setShowingPinnableBanner:pinnableBanner animated:1];

  if (([hideCopy isAvailable] & 1) == 0)
  {
    currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
    scrollView = [currentWebView scrollView];

    pinnableBanner2 = [(_SFBrowserView *)self->_browserView pinnableBanner];
    [pinnableBanner2 frame];
    MaxY = CGRectGetMaxY(v13);

    navigationBar = self->_navigationBar;
    [(_SFNavigationBar *)navigationBar bounds];
    [(_SFNavigationBar *)navigationBar convertPoint:scrollView toView:0.0, CGRectGetMaxY(v14)];
    if (MaxY > v10)
    {
      [scrollView contentOffset];
      [scrollView setContentOffset:?];
    }
  }
}

- (BOOL)supportsAdvancedPrivacyProtectionsForURL:(id)l
{
  lCopy = l;
  if (([lCopy safari_isSafariWebExtensionURL] & 1) != 0 || (objc_msgSend(MEMORY[0x1E695E000], "safari_browserDefaults"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "safari_enableAdvancedPrivacyProtections:", 0), v5, (v6 & 1) == 0))
  {
    v8 = 0;
  }

  else
  {
    _persona = [(_SFBrowserContentViewController *)self _persona];
    if (_persona <= 3)
    {
      v8 = 3u >> (_persona & 0xF);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

- (void)browsingAssistantController:(id)controller didUpdateContentOptionsForURL:(id)l
{
  controllerCopy = controller;
  lCopy = l;
  webView = [(_SFBrowserContentViewController *)self webView];
  _committedURL = [webView _committedURL];

  if (WBSIsEqual())
  {
    result = [controllerCopy result];
    contentOptions = [result contentOptions];

    result2 = [controllerCopy result];
    tableOfContentsAvailable = [result2 tableOfContentsAvailable];

    webViewController = [(_SFBrowserContentViewController *)self webViewController];
    readerController = [webViewController readerController];

    if (self->_showingReader && ((contentOptions | tableOfContentsAvailable) & 1) != 0 && [(_SFBrowserContentViewController *)self allowsBrowsingAssistant])
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __93___SFBrowserContentViewController_browsingAssistantController_didUpdateContentOptionsForURL___block_invoke;
      v16[3] = &unk_1E8495238;
      v17 = readerController;
      selfCopy = self;
      v19 = _committedURL;
      [controllerCopy fetchAssistantContentFromPegasusForURL:v19 withCompletionHandler:v16];
    }

    [(SFNavigationBarItem *)self->_navigationBarItem updateContentOptions:contentOptions];
  }
}

- (void)browsingAssistantControllerDidUpdateUserConsentState:(id)state
{
  stateCopy = state;
  if ([(_SFBrowserContentViewController *)self allowsBrowsingAssistant])
  {
    expectedOrCurrentURL = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
    webpageLocale = [(WBSTranslationContext *)self->_translationContext webpageLocale];
    [stateCopy checkForAssistantContentFromPegasusForURL:expectedOrCurrentURL locale:webpageLocale];
  }
}

- (id)currentHostForScribbleController:(id)controller
{
  expectedOrCurrentURL = [(_SFBrowserContentViewController *)self expectedOrCurrentURL];
  host = [expectedOrCurrentURL host];

  return host;
}

- (void)sfScribbleControllerDidEndScribbling:(id)scribbling
{
  [(SFNavigationBarItem *)self->_navigationBarItem setOverlayConfiguration:0];

  [(_SFBrowserContentViewController *)self _updateUI];
}

- (void)sfScribbleControllerDidStartScribbling:(id)scribbling
{
  scribblingCopy = scribbling;
  [(_SFPageFormatMenuController *)self->_pageFormatMenuController dismissMenu];
  urlFieldOverlayConfiguration = [scribblingCopy urlFieldOverlayConfiguration];
  [(SFNavigationBarItem *)self->_navigationBarItem setOverlayConfiguration:urlFieldOverlayConfiguration];

  [(_SFBrowserContentViewController *)self _updateUI];
}

- (void)sfScribbleControllerDidUpdateHiddenElementCount:(id)count
{
  countCopy = count;
  -[SFNavigationBarItem setHasHiddenElements:](self->_navigationBarItem, "setHasHiddenElements:", [countCopy hiddenElementCount] != 0);
  if ([countCopy isScribbling])
  {
    urlFieldOverlayConfiguration = [countCopy urlFieldOverlayConfiguration];
    [(SFNavigationBarItem *)self->_navigationBarItem setOverlayConfiguration:urlFieldOverlayConfiguration];
  }

  [(_SFPageFormatMenuController *)self->_pageFormatMenuController reloadBrowsingAssistantIfNeeded];
}

- (id)overlayContainerViewForScribbleController:(id)controller
{
  contentContainerView = [(_SFBrowserView *)self->_browserView contentContainerView];

  return contentContainerView;
}

- (NSArray)normalBrowsingUserContentControllers
{
  v5[1] = *MEMORY[0x1E69E9840];
  safari_userContentController = [MEMORY[0x1E6985350] safari_userContentController];
  v5[0] = safari_userContentController;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager
{
  v2 = [_SFBrowserContentViewController normalBrowsingUserDefinedContentBlockerManager]::manager;
  if (![_SFBrowserContentViewController normalBrowsingUserDefinedContentBlockerManager]::manager)
  {
    v3 = objc_alloc(MEMORY[0x1E69C90E8]);
    mEMORY[0x1E69C90F0] = [MEMORY[0x1E69C90F0] sharedStore];
    v5 = [v3 initWithDataStore:mEMORY[0x1E69C90F0]];
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

    normalBrowsingUserDefinedContentBlockerManager = [(_SFBrowserContentViewController *)self normalBrowsingUserDefinedContentBlockerManager];
    [-[_SFBrowserContentViewController privateBrowsingUserDefinedContentBlockerManager]::manager setNormalBrowsingUserDefinedContentBlockerManager:normalBrowsingUserDefinedContentBlockerManager];

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