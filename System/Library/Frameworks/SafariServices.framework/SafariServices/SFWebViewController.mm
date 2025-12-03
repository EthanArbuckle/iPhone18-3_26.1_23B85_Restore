@interface SFWebViewController
- (BOOL)_webView:(id)view fileUploadPanelContentIsManagedWithInitiatingFrame:(id)frame;
- (BOOL)_webView:(id)view focusRequiresStrongPasswordAssistance:(id)assistance;
- (BOOL)formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:(id)domain;
- (BOOL)sfWebViewCanFindNextOrPrevious:(id)previous;
- (BOOL)sfWebViewCanPromptForAccountSecurityRecommendation;
- (BOOL)sfWebViewShouldFillStringForFind:(id)find;
- (NSURL)url;
- (SFWebViewController)initWithWebViewConfiguration:(id)configuration contentBlockerManager:(id)manager;
- (SFWebViewControllerDelegate)delegate;
- (WKWebView)webView;
- (id)_presentingViewControllerForWebView:(id)view;
- (id)_webView:(id)view contextMenuContentPreviewForElement:(id)element;
- (id)_webViewAdditionalContextForStrongPasswordAssistance:(id)assistance;
- (id)formAutoFillControllerURLForFormAutoFill:(id)fill;
- (id)permissionDialogThrottler;
- (id)sfWebView:(id)view didStartDownload:(id)download;
- (int64_t)_webView:(id)view decidePolicyForFocusedElement:(id)element;
- (int64_t)dialogController:(id)controller presentationPolicyForDialog:(id)dialog;
- (void)_automaticPasswordInputViewAutoFillContextProviderRequiredNotification:(id)notification;
- (void)_automaticPasswordInputViewNotification:(id)notification;
- (void)_keyboardWillHide:(id)hide;
- (void)_loadWebView;
- (void)_loadWebViewIfNeeded;
- (void)_userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:(id)d;
- (void)_webView:(id)view authenticationChallenge:(id)challenge shouldAllowLegacyTLS:(id)s;
- (void)_webView:(id)view checkUserMediaPermissionForURL:(id)l mainFrameURL:(id)rL frameIdentifier:(unint64_t)identifier decisionHandler:(id)handler;
- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler;
- (void)_webView:(id)view contextMenuDidEndForElement:(id)element;
- (void)_webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator;
- (void)_webView:(id)view contextMenuWillPresentForElement:(id)element;
- (void)_webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features completionHandler:(id)handler;
- (void)_webView:(id)view decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)policy forExtension:(id)extension completionHandler:(id)handler;
- (void)_webView:(id)view didChangeSafeAreaShouldAffectObscuredInsets:(BOOL)insets;
- (void)_webView:(id)view didFinishLoadForQuickLookDocumentInMainFrame:(id)frame;
- (void)_webView:(id)view didNegotiateModernTLSForURL:(id)l;
- (void)_webView:(id)view didStartInputSession:(id)session;
- (void)_webView:(id)view didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)name uti:(id)uti;
- (void)_webView:(id)view mediaCaptureStateDidChange:(unint64_t)change;
- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation;
- (void)_webView:(id)view navigationDidFinishDocumentLoad:(id)load;
- (void)_webView:(id)view printFrame:(id)frame;
- (void)_webView:(id)view queryPermission:(id)permission forOrigin:(id)origin completionHandler:(id)handler;
- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change;
- (void)_webView:(id)view requestGeolocationAuthorizationForURL:(id)l frame:(id)frame decisionHandler:(id)handler;
- (void)_webView:(id)view requestNotificationPermissionForSecurityOrigin:(id)origin decisionHandler:(id)handler;
- (void)_webView:(id)view requestPresentingViewControllerWithCompletionHandler:(id)handler;
- (void)_webView:(id)view requestStorageAccessPanelForDomain:(id)domain underCurrentDomain:(id)currentDomain completionHandler:(id)handler;
- (void)_webView:(id)view requestUserMediaAuthorizationForDevices:(unint64_t)devices url:(id)url mainFrameURL:(id)l decisionHandler:(id)handler;
- (void)_webView:(id)view requestWebAuthenticationConditionalMediationRegistrationForUser:(id)user completionHandler:(id)handler;
- (void)_webView:(id)view setShouldKeepScreenAwake:(BOOL)awake;
- (void)_webView:(id)view shouldGoToBackForwardListItem:(id)item inPageCache:(BOOL)cache completionHandler:(id)handler;
- (void)_webView:(id)view updatedAppBadge:(id)badge fromSecurityOrigin:(id)origin;
- (void)_webView:(id)view willPerformClientRedirectToURL:(id)l delay:(double)delay;
- (void)_webView:(id)view willStartInputSession:(id)session;
- (void)_webViewDidCancelClientRedirect:(id)redirect;
- (void)_webViewDidEndNavigationGesture:(id)gesture withNavigationToBackForwardListItem:(id)item;
- (void)_webViewDidEnterFullscreen:(id)fullscreen;
- (void)_webViewDidExitElementFullscreen:(id)fullscreen;
- (void)_webViewDidExitFullscreen:(id)fullscreen;
- (void)_webViewDidShowSafeBrowsingWarning:(id)warning;
- (void)_webViewWebProcessDidCrash:(id)crash;
- (void)_webViewWillEndNavigationGesture:(id)gesture withNavigationToBackForwardListItem:(id)item;
- (void)dealloc;
- (void)dialogController:(id)controller dismissViewController:(id)viewController withAdditionalAnimations:(id)animations;
- (void)dialogController:(id)controller presentViewController:(id)viewController withAdditionalAnimations:(id)animations;
- (void)dialogController:(id)controller willPresentDialog:(id)dialog;
- (void)formAutoFillControllerDidFocusSensitiveFormField:(id)field;
- (void)formAutoFillControllerGetAuthenticationForAutoFill:(id)fill completion:(id)completion;
- (void)formAutoFillControllerUserChoseToUseGeneratedPassword:(id)password;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLoading:(BOOL)loading;
- (void)sfWebViewDidChangeSafeAreaInsets:(id)insets;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didCommitNavigation:(id)navigation;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webView:(id)view didReceiveServerRedirectForProvisionalNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
- (void)webView:(id)view navigationAction:(id)action didBecomeDownload:(id)download;
- (void)webView:(id)view navigationResponse:(id)response didBecomeDownload:(id)download;
- (void)webView:(id)view runJavaScriptAlertPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler;
- (void)webView:(id)view runJavaScriptConfirmPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler;
- (void)webView:(id)view runJavaScriptTextInputPanelWithPrompt:(id)prompt defaultText:(id)text initiatedByFrame:(id)frame completionHandler:(id)handler;
- (void)webViewDidClose:(id)close;
- (void)willRedirectToHostAppForNavigationWithCompletionHandler:(id)handler;
@end

@implementation SFWebViewController

- (SFWebViewController)initWithWebViewConfiguration:(id)configuration contentBlockerManager:(id)manager
{
  configurationCopy = configuration;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = SFWebViewController;
  v9 = [(SFWebViewController *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webViewConfiguration, configuration);
    objc_storeStrong(&v10->_contentBlockerManager, manager);
    [(SFContentBlockerManager *)v10->_contentBlockerManager reloadUserContentControllerReadingStateFromDisk:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, contentBlockerDidChange, @"com.apple.SafariServices.ContentBlockerDidChange", 0, 1028);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [defaultCenter addObserver:v10 selector:sel__automaticPasswordInputViewNotification_ name:@"_SFAutomaticPasswordInputViewButtonPressedNotification" object:0];
    [defaultCenter addObserver:v10 selector:sel__automaticPasswordInputViewAutoFillContextProviderRequiredNotification_ name:@"SFAutomaticPasswordInputViewAutoFillContextProviderRequiredNotification" object:0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v10->_UUID;
    v10->_UUID = uUID;

    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    tabIDForAutoFill = v10->_tabIDForAutoFill;
    v10->_tabIDForAutoFill = uUID2;

    v17 = v10;
  }

  return v10;
}

- (void)_loadWebView
{
  v3 = [_SFWebView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  webViewConfiguration = self->_webViewConfiguration;
  v9 = webViewConfiguration;
  if (!webViewConfiguration)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69853A8]);
  }

  v10 = [(_SFWebView *)v3 initWithFrame:v9 configuration:v4, v5, v6, v7];
  if (!webViewConfiguration)
  {
  }

  [(_SFWebView *)v10 setNavigationDelegate:self];
  [(_SFWebView *)v10 setUIDelegate:self];
  [(_SFWebView *)v10 _setFullscreenDelegate:self];
  [(_SFWebView *)v10 _setInputDelegate:self];
  [(_SFWebView *)v10 setDelegate:self];
  [(_SFWebView *)v10 _setBackgroundExtendsBeyondPage:1];
  [(_SFWebView *)v10 setAllowsLinkPreview:1];
  [(_SFWebView *)v10 setInspectable:1];
  [(_SFWebView *)v10 setAutoresizingMask:18];
  scrollView = [(_SFWebView *)v10 scrollView];
  [scrollView setScrollsToTop:1];

  [(_SFWebView *)v10 addObserver:self forKeyPath:@"estimatedProgress" options:0 context:SFWebViewControllerObserverContext];
  [(_SFWebView *)v10 addObserver:self forKeyPath:@"URL" options:0 context:SFWebViewControllerObserverContext];
  [(_SFWebView *)v10 addObserver:self forKeyPath:@"hasOnlySecureContent" options:0 context:SFWebViewControllerObserverContext];
  [(_SFWebView *)v10 addObserver:self forKeyPath:@"_negotiatedLegacyTLS" options:0 context:SFWebViewControllerObserverContext];
  [(_SFWebView *)v10 addObserver:self forKeyPath:@"_webProcessIsResponsive" options:0 context:SFWebViewControllerObserverContext];
  [(_SFWebView *)v10 addObserver:self forKeyPath:@"themeColor" options:0 context:SFWebViewControllerObserverContext];
  [(_SFWebView *)v10 addObserver:self forKeyPath:@"underPageBackgroundColor" options:0 context:SFWebViewControllerObserverContext];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [(_SFWebView *)v10 addObserver:self forKeyPath:@"_sampledTopFixedPositionContentColor" options:0 context:SFWebViewControllerObserverContext];
  }

  [(_SFWebView *)v10 _setObservedRenderingProgressEvents:71];
  v12 = [[_SFFormAutoFillController alloc] initWithWebView:v10 delegate:self];
  autoFillController = self->_autoFillController;
  self->_autoFillController = v12;

  v14 = objc_alloc_init(MEMORY[0x1E69B1B08]);
  dialogController = self->_dialogController;
  self->_dialogController = v14;

  [(SFDialogController *)self->_dialogController setDelegate:self];
  [(SFDialogController *)self->_dialogController setDialogPresenter:v10];
  [(SFDialogController *)self->_dialogController setViewControllerPresenter:self];
  [(SFDialogController *)self->_dialogController owningWebViewWillBecomeActive];
  webView = self->_webView;
  self->_webView = v10;
}

- (void)_loadWebViewIfNeeded
{
  if (!self->_webView)
  {
    [(SFWebViewController *)self _loadWebView];
  }
}

- (void)loadView
{
  [(SFWebViewController *)self _loadWebViewIfNeeded];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setAutoresizingMask:18];
  [v3 addSubview:self->_webView];
  [(SFWebViewController *)self setView:v3];
}

- (id)_presentingViewControllerForWebView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained presentingViewControllerForWebViewController:self];

  return v5;
}

- (WKWebView)webView
{
  [(SFWebViewController *)self _loadWebViewIfNeeded];
  webView = self->_webView;

  return webView;
}

- (void)dealloc
{
  webView = [(SFWebViewController *)self webView];
  [webView setUIDelegate:0];
  [(SFDialogController *)self->_dialogController owningTabWillClose];
  scrollView = [webView scrollView];
  [scrollView setDelegate:0];

  [webView removeObserver:self forKeyPath:@"estimatedProgress" context:SFWebViewControllerObserverContext];
  [webView removeObserver:self forKeyPath:@"URL" context:SFWebViewControllerObserverContext];
  [webView removeObserver:self forKeyPath:@"hasOnlySecureContent" context:SFWebViewControllerObserverContext];
  [webView removeObserver:self forKeyPath:@"_negotiatedLegacyTLS" context:SFWebViewControllerObserverContext];
  [webView removeObserver:self forKeyPath:@"_webProcessIsResponsive" context:SFWebViewControllerObserverContext];
  [webView removeObserver:self forKeyPath:@"themeColor" context:SFWebViewControllerObserverContext];
  [webView removeObserver:self forKeyPath:@"underPageBackgroundColor" context:SFWebViewControllerObserverContext];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [webView removeObserver:self forKeyPath:@"_sampledTopFixedPositionContentColor" context:SFWebViewControllerObserverContext];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(_SFFormAutoFillController *)self->_autoFillController invalidate];

  v6.receiver = self;
  v6.super_class = SFWebViewController;
  [(SFWebViewController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (self->_webView == object)
  {
    v12 = pathCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([v12 isEqualToString:@"estimatedProgress"])
    {
      [WeakRetained webViewControllerDidChangeEstimatedProgress:self];
    }

    else if ([v12 isEqualToString:@"URL"])
    {
      [WeakRetained webViewControllerDidChangeURL:self];
    }

    else if (([v12 isEqualToString:@"hasOnlySecureContent"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"_negotiatedLegacyTLS"))
    {
      [WeakRetained webViewControllerDidChangeHasOnlySecureContent:self];
    }

    else if ([v12 isEqualToString:@"_webProcessIsResponsive"])
    {
      webView = [(SFWebViewController *)self webView];
      _webProcessIsResponsive = [webView _webProcessIsResponsive];

      if (_webProcessIsResponsive)
      {
        [WeakRetained webViewControllerWebProcessDidBecomeResponsive:self];
      }

      else
      {
        [WeakRetained webViewControllerWebProcessDidBecomeUnresponsive:self];
      }
    }

    else if ([v12 isEqualToString:@"themeColor"] || objc_msgSend(v12, "isEqualToString:", @"underPageBackgroundColor"))
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained webViewControllerDidUpdateThemeColor:self];
      }
    }

    else if ([v12 isEqualToString:@"_sampledTopFixedPositionContentColor"] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained webViewControllerDidUpdateUnderPageBackgroundColor:self];
    }

    pathCopy = v12;
  }
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    if (!loading)
    {
      self->_shouldSuppressDialogsThatBlockWebProcess = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained webViewControllerDidChangeLoadingState:self];
  }
}

- (void)_keyboardWillHide:(id)hide
{
  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {

    [(SFWebViewController *)self makeStrongPasswordFieldViewable:0];
  }
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  navigationCopy = navigation;
  [(_SFFormAutoFillController *)self->_autoFillController offerToSaveUnsubmittedFormDataIfNeededWithCompletionHandler:&__block_literal_global_29];
  [(SFWebViewController *)self setLoading:1];
  self->_didFinishDocumentLoad = 0;
  self->_didFirstLayout = 0;
  self->_didFirstVisuallyNonEmptyLayout = 0;
  self->_didFirstPaint = 0;
  [(WBSPermissionDialogThrottler *)self->_permissionDialogThrottler willPerformUserInitiatedNavigation];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didStartProvisionalNavigation:navigationCopy];
}

- (void)webView:(id)view didReceiveServerRedirectForProvisionalNavigation:(id)navigation
{
  navigationCopy = navigation;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didReceiveServerRedirectForProvisionalNavigation:navigationCopy];
}

- (void)_webView:(id)view willPerformClientRedirectToURL:(id)l delay:(double)delay
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self willPerformClientRedirectToURL:lCopy withDelay:delay];
}

- (void)_webViewDidCancelClientRedirect:(id)redirect
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewControllerDidCancelClientRedirect:self];
}

- (void)webView:(id)view didCommitNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  dialogController = self->_dialogController;
  v8 = [viewCopy URL];
  [(SFDialogController *)dialogController owningWebViewDidCommitNavigationWithURL:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didCommitNavigation:navigationCopy];

  [(_SFFormAutoFillController *)self->_autoFillController setLastFilledCreditCardData:0];
  v10 = [viewCopy URL];
  safari_userVisibleHostWithoutWWWSubdomain = [v10 safari_userVisibleHostWithoutWWWSubdomain];

  if (([safari_userVisibleHostWithoutWWWSubdomain isEqualToString:self->_domainWhereUserDeclinedAutomaticStrongPassword] & 1) == 0)
  {
    domainWhereUserDeclinedAutomaticStrongPassword = self->_domainWhereUserDeclinedAutomaticStrongPassword;
    self->_domainWhereUserDeclinedAutomaticStrongPassword = 0;
  }

  self->_hasFocusedInputFieldOnCurrentPage = 0;
  self->_shouldSuppressDialogsThatBlockWebProcess = 0;
  self->_hasFormControlInteraction = 0;
}

- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation
{
  navigationCopy = navigation;
  [(_SFFormAutoFillController *)self->_autoFillController offerToSaveUnsubmittedFormDataIfNeededInWebView:view fromSameDocumentNavigationOfType:documentNavigation completionHandler:&__block_literal_global_43];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didSameDocumentNavigation:navigationCopy ofType:documentNavigation];
}

- (void)_webView:(id)view authenticationChallenge:(id)challenge shouldAllowLegacyTLS:(id)s
{
  challengeCopy = challenge;
  sCopy = s;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self authenticationChallenge:challengeCopy shouldAllowLegacyTLS:sCopy];
  }

  else
  {
    sCopy[2](sCopy, 0);
  }
}

- (void)_webView:(id)view didNegotiateModernTLSForURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authenticationChallengeDidNegotiateModernTLS:lCopy];
}

- (void)_webView:(id)view decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)policy forExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self decidePolicyForSOAuthorizationLoadWithCurrentPolicy:policy forExtension:extensionCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)_webViewWillEndNavigationGesture:(id)gesture withNavigationToBackForwardListItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self willEndNavigationGestureToBackForwardListItem:itemCopy];
}

- (void)_webViewDidEndNavigationGesture:(id)gesture withNavigationToBackForwardListItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didEndNavigationGestureToBackForwardListItem:itemCopy];
}

- (void)_webView:(id)view shouldGoToBackForwardListItem:(id)item inPageCache:(BOOL)cache completionHandler:(id)handler
{
  cacheCopy = cache;
  itemCopy = item;
  handlerCopy = handler;
  v10 = [itemCopy URL];
  safari_isJavaScriptURL = [v10 safari_isJavaScriptURL];

  if (safari_isJavaScriptURL)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained webViewController:self willGoToBackForwardListItem:itemCopy inPageCache:cacheCopy];
    }

    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  navigationCopy = navigation;
  [(SFWebViewController *)self setLoading:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFinishNavigation:navigationCopy];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self decidePolicyForNavigationAction:actionCopy decisionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self decidePolicyForNavigationResponse:responseCopy decisionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  navigationCopy = navigation;
  errorCopy = error;
  [(SFWebViewController *)self setLoading:0];
  self->_didFirstVisuallyNonEmptyLayout = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFailProvisionalNavigation:navigationCopy withError:errorCopy];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  navigationCopy = navigation;
  errorCopy = error;
  [(SFWebViewController *)self setLoading:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFailNavigation:navigationCopy withError:errorCopy];
}

- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change
{
  changeCopy = change;
  viewCopy = view;
  if (changeCopy)
  {
    self->_didFirstLayout = 1;
    [(_SFFormAutoFillController *)self->_autoFillController prefillFormsSoonIfNeeded];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if ((changeCopy & 2) != 0)
  {
    self->_didFirstVisuallyNonEmptyLayout = 1;
    [WeakRetained webViewControllerDidFirstVisuallyNonEmptyLayout:self];
    [v7 webViewControllerUpdateNavigationBar:self];
  }

  if ((changeCopy & 0x40) != 0)
  {
    self->_didFirstPaint = 1;
    if (objc_opt_respondsToSelector())
    {
      [v7 webViewControllerDidFirstPaint:self];
    }
  }
}

- (void)_webView:(id)view navigationDidFinishDocumentLoad:(id)load
{
  loadCopy = load;
  self->_didFinishDocumentLoad = 1;
  [(_SFFormAutoFillController *)self->_autoFillController prefillFormsSoonIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFinishDocumentLoadForNavigation:loadCopy];
}

- (void)_webViewWebProcessDidCrash:(id)crash
{
  [(SFDialogController *)self->_dialogController owningWebViewDidChangeProcessID];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewControllerWebProcessDidCrash:self];
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self didReceiveAuthenticationChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 2, 0);
  }
}

- (void)_webView:(id)view didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)name uti:(id)uti
{
  utiCopy = uti;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didStartLoadForQuickLookDocumentInMainFrameWithFileName:nameCopy uti:utiCopy];
}

- (void)_webView:(id)view didFinishLoadForQuickLookDocumentInMainFrame:(id)frame
{
  frameCopy = frame;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFinishLoadForQuickLookDocumentInMainFrame:frameCopy];
}

- (void)webView:(id)view navigationAction:(id)action didBecomeDownload:(id)download
{
  downloadCopy = download;
  v5 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
  [v5 downloadDidStart:downloadCopy];
}

- (void)webView:(id)view navigationResponse:(id)response didBecomeDownload:(id)download
{
  downloadCopy = download;
  v5 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
  [v5 downloadDidStart:downloadCopy];
}

- (void)willRedirectToHostAppForNavigationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  autoFillController = self->_autoFillController;
  v6 = handlerCopy;
  if (autoFillController)
  {
    [(_SFFormAutoFillController *)autoFillController offerToSaveUnsubmittedFormDataIfNeededWithCompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy);
  }
}

- (id)formAutoFillControllerURLForFormAutoFill:(id)fill
{
  webView = [(SFWebViewController *)self webView];
  v4 = [webView URL];

  return v4;
}

- (BOOL)formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:(id)domain
{
  webView = [(SFWebViewController *)self webView];
  v5 = [webView URL];
  safari_userVisibleHostWithoutWWWSubdomain = [v5 safari_userVisibleHostWithoutWWWSubdomain];

  LOBYTE(webView) = [safari_userVisibleHostWithoutWWWSubdomain isEqualToString:self->_domainWhereUserDeclinedAutomaticStrongPassword];
  return webView;
}

- (void)formAutoFillControllerUserChoseToUseGeneratedPassword:(id)password
{
  domainWhereUserDeclinedAutomaticStrongPassword = self->_domainWhereUserDeclinedAutomaticStrongPassword;
  self->_domainWhereUserDeclinedAutomaticStrongPassword = 0;
}

- (void)formAutoFillControllerGetAuthenticationForAutoFill:(id)fill completion:(id)completion
{
  fillCopy = fill;
  completionCopy = completion;
  authenticationContext = [fillCopy authenticationContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__SFWebViewController_formAutoFillControllerGetAuthenticationForAutoFill_completion___block_invoke;
  v10[3] = &unk_1E8492A20;
  v8 = completionCopy;
  v12 = v8;
  v9 = fillCopy;
  v11 = v9;
  [authenticationContext authenticateForClient:v9 userInitiated:1 completion:v10];
}

void __85__SFWebViewController_formAutoFillControllerGetAuthenticationForAutoFill_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v5 = [*(a1 + 32) authenticationContext];
  v4 = [v5 authenticatedContext];
  (*(v3 + 16))(v3, a2, v4);
}

- (void)_automaticPasswordInputViewNotification:(id)notification
{
  notificationCopy = notification;
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"SFAutoFillContextProviderIdentifierUserInfoKey"];
  v7 = [v4 initWithUUIDString:v6];

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 safari_numberForKey:@"_SFAutomaticPasswordInputViewNotificationPressedButtonUserInfoKey"];

  if (v9 && [v9 integerValue] == 1)
  {
    [(_SFFormAutoFillController *)self->_autoFillController removeAutomaticPasswordButtonInitiatedByUser:1];
    [(SFWebViewController *)self _userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:v7];
  }
}

- (void)_userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:(id)d
{
  dCopy = d;
  webView = [(SFWebViewController *)self webView];
  v5 = [webView URL];
  safari_userVisibleHostWithoutWWWSubdomain = [v5 safari_userVisibleHostWithoutWWWSubdomain];

  uUID = [(SFWebViewController *)self UUID];
  LODWORD(v5) = [dCopy isEqual:uUID];

  if (v5)
  {
    objc_storeStrong(&self->_domainWhereUserDeclinedAutomaticStrongPassword, safari_userVisibleHostWithoutWWWSubdomain);
  }
}

- (void)_automaticPasswordInputViewAutoFillContextProviderRequiredNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"SFAutomaticPasswordInputViewControllerKey"];

  [v5 setAutoFillContextProvider:self];
}

- (void)formAutoFillControllerDidFocusSensitiveFormField:(id)field
{
  hasFocusedInputFieldOnCurrentPage = self->_hasFocusedInputFieldOnCurrentPage;
  self->_hasFocusedInputFieldOnCurrentPage = 1;
  if (!hasFocusedInputFieldOnCurrentPage)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained webViewControllerUpdateNavigationBar:self];
  }
}

- (void)_webView:(id)view requestPresentingViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self requestPresentingViewControllerWithCompletionHandler:handlerCopy];
  }
}

- (void)_webViewDidExitElementFullscreen:(id)fullscreen
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewControllerDidExitElementFullscreen:self];
  }
}

- (void)_webView:(id)view willStartInputSession:(id)session
{
  sessionCopy = session;
  v5 = [[_SFFormAutoFillInputSession alloc] initWithFormInputSession:sessionCopy];
  if (![sessionCopy requiresStrongPasswordAssistance] || (-[_SFFormAutoFillController prepareForShowingAutomaticStrongPasswordWithInputSession:](self->_autoFillController, "prepareForShowingAutomaticStrongPasswordWithInputSession:", v5), (objc_msgSend(MEMORY[0x1E69C8880], "isPasswordsAppInstalled") & 1) != 0))
  {
    [(_SFFormAutoFillController *)self->_autoFillController fieldWillFocusWithInputSession:v5];
  }
}

- (void)_webView:(id)view didStartInputSession:(id)session
{
  if (([session requiresStrongPasswordAssistance] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      -[_SFFormAutoFillController setShouldAutofillESimInformation:](self->_autoFillController, "setShouldAutofillESimInformation:", [WeakRetained webViewControllerShouldAutofillESimInformation:self]);
    }

    [(_SFFormAutoFillController *)self->_autoFillController fieldDidFocus];
  }
}

- (void)_webView:(id)view setShouldKeepScreenAwake:(BOOL)awake
{
  awakeCopy = awake;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [WeakRetained webViewController:self setShouldKeepScreenAwake:awakeCopy];
  }
}

- (void)_webViewDidShowSafeBrowsingWarning:(id)warning
{
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] didShowSafeBrowsingWarningWithSource:0];
}

- (int64_t)_webView:(id)view decidePolicyForFocusedElement:(id)element
{
  viewCopy = view;
  elementCopy = element;
  if ([(_SFFormAutoFillController *)self->_autoFillController elementIsBeingFocusedForStreamlinedLogin:elementCopy])
  {
    presentedViewController = [(SFWebViewController *)self presentedViewController];
    if (presentedViewController)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    presentedViewController = [viewCopy URL];
    _committedURL = [viewCopy _committedURL];
    if ([presentedViewController isEqual:_committedURL])
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }
  }

  return v9;
}

- (BOOL)_webView:(id)view focusRequiresStrongPasswordAssistance:(id)assistance
{
  assistanceCopy = assistance;
  autoFillController = self->_autoFillController;
  v7 = [[_SFFormAutoFillInputSession alloc] initWithFocusedElement:assistanceCopy];
  v8 = [(_SFFormAutoFillController *)autoFillController beginAutomaticPasswordInteractionWithInputSession:v7];
  LOBYTE(autoFillController) = v8 != 0;

  return autoFillController;
}

- (id)_webViewAdditionalContextForStrongPasswordAssistance:(id)assistance
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"SFAutoFillContextProviderIdentifierUserInfoKey";
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v7[0] = uUIDString;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)webView:(id)view runJavaScriptAlertPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler
{
  dialogController = self->_dialogController;
  v7 = [MEMORY[0x1E69B1B00] javaScriptAlertDialogWithMessage:message completionHandler:{handler, frame}];
  [(SFDialogController *)dialogController presentDialog:?];
}

- (void)webView:(id)view runJavaScriptConfirmPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler
{
  dialogController = self->_dialogController;
  v7 = [MEMORY[0x1E69B1B00] javaScriptConfirmDialogWithMessage:message completionHandler:{handler, frame}];
  [(SFDialogController *)dialogController presentDialog:?];
}

- (void)webView:(id)view runJavaScriptTextInputPanelWithPrompt:(id)prompt defaultText:(id)text initiatedByFrame:(id)frame completionHandler:(id)handler
{
  dialogController = self->_dialogController;
  v8 = [MEMORY[0x1E69B1B00] javaScriptPromptDialogWithMessage:prompt defaultText:text completionHandler:{handler, frame}];
  [(SFDialogController *)dialogController presentDialog:?];
}

- (void)_webView:(id)view requestStorageAccessPanelForDomain:(id)domain underCurrentDomain:(id)currentDomain completionHandler:(id)handler
{
  dialogController = self->_dialogController;
  v7 = [MEMORY[0x1E69B1B00] requestStorageAccessDialogForDomain:domain underCurrentDomain:currentDomain extensionsController:0 completionHandler:handler];
  [(SFDialogController *)dialogController presentDialog:?];
}

- (void)webViewDidClose:(id)close
{
  closeCopy = close;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self webViewDidClose:closeCopy];
}

- (void)_webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features completionHandler:(id)handler
{
  configurationCopy = configuration;
  actionCopy = action;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self createWebViewWithConfiguration:configurationCopy forNavigationAction:actionCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler
{
  elementCopy = element;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self contextMenuConfigurationForElement:elementCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_webView:(id)view contextMenuWillPresentForElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self contextMenuWillPresentForElement:elementCopy];
  }
}

- (id)_webView:(id)view contextMenuContentPreviewForElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained webViewController:self contextMenuContentPreviewForElement:elementCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator
{
  elementCopy = element;
  animatorCopy = animator;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self contextMenuForElement:elementCopy willCommitWithAnimator:animatorCopy];
  }
}

- (void)_webView:(id)view contextMenuDidEndForElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self contextMenuDidEndForElement:elementCopy];
  }
}

- (void)_webView:(id)view printFrame:(id)frame
{
  frameCopy = frame;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self printFrame:frameCopy];
}

- (void)_webViewDidEnterFullscreen:(id)fullscreen
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didChangeFullScreen:1];
}

- (void)_webViewDidExitFullscreen:(id)fullscreen
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didChangeFullScreen:0];
}

- (void)_webView:(id)view requestGeolocationAuthorizationForURL:(id)l frame:(id)frame decisionHandler:(id)handler
{
  lCopy = l;
  frameCopy = frame;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained browserPersonaForWebViewController:self];

  v13 = +[_SFGeolocationPermissionManager sharedManager];
  [v13 requestPermissionForURL:lCopy frame:frameCopy dialogPresenter:self browserPersona:v12 completionHandler:handlerCopy];
}

- (void)_webView:(id)view didChangeSafeAreaShouldAffectObscuredInsets:(BOOL)insets
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewControllerDidChangeSafeAreaShouldAffectObscuredInsets:self];
}

- (void)_webView:(id)view requestWebAuthenticationConditionalMediationRegistrationForUser:(id)user completionHandler:(id)handler
{
  userCopy = user;
  handlerCopy = handler;
  v9 = +[_SFFormDataController sharedController];
  tabIDForAutoFill = [(SFWebViewController *)self tabIDForAutoFill];
  webView = [(SFWebViewController *)self webView];
  v12 = [webView URL];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __114__SFWebViewController__webView_requestWebAuthenticationConditionalMediationRegistrationForUser_completionHandler___block_invoke;
  v14[3] = &unk_1E8492A48;
  v13 = handlerCopy;
  v15 = v13;
  [v9 canAutomaticallyRegisterPasskeyForUsername:userCopy inTabWithID:tabIDForAutoFill currentURL:v12 completionHandler:v14];
}

- (void)_webView:(id)view requestUserMediaAuthorizationForDevices:(unint64_t)devices url:(id)url mainFrameURL:(id)l decisionHandler:(id)handler
{
  urlCopy = url;
  lCopy = l;
  handlerCopy = handler;
  v13 = +[(WBSUserMediaPermissionController *)_SFUserMediaPermissionController];
  [v13 requestUserMediaAuthorizationForDevices:devices url:urlCopy mainFrameURL:lCopy decisionHandler:handlerCopy dialogPresenter:self];
}

- (void)_webView:(id)view checkUserMediaPermissionForURL:(id)l mainFrameURL:(id)rL frameIdentifier:(unint64_t)identifier decisionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  v12 = +[(WBSUserMediaPermissionController *)_SFUserMediaPermissionController];
  [v12 checkUserMediaPermissionForURL:lCopy mainFrameURL:rLCopy frameIdentifier:identifier decisionHandler:handlerCopy];
}

- (void)_webView:(id)view mediaCaptureStateDidChange:(unint64_t)change
{
  delegate = [(SFWebViewController *)self delegate];
  [delegate webViewController:self mediaCaptureStateDidChange:change];
}

- (void)_webView:(id)view queryPermission:(id)permission forOrigin:(id)origin completionHandler:(id)handler
{
  permissionCopy = permission;
  originCopy = origin;
  handlerCopy = handler;
  v11 = objc_alloc_init(MEMORY[0x1E696AF20]);
  protocol = [originCopy protocol];
  [v11 setScheme:protocol];

  host = [originCopy host];
  _webkit_decodeHostName = [host _webkit_decodeHostName];
  [v11 setHost:_webkit_decodeHostName];

  if ([originCopy port])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(originCopy, "port")}];
    [v11 setPort:v15];
  }

  host2 = [v11 host];
  if ([permissionCopy isEqualToString:@"geolocation"])
  {
    v17 = +[_SFGeolocationPermissionManager sharedManager];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__SFWebViewController__webView_queryPermission_forOrigin_completionHandler___block_invoke;
    v23[3] = &unk_1E8492A70;
    v24 = handlerCopy;
    [v17 getGeolocationSettingForDomain:host2 completionHandler:v23];
    v18 = &v24;
  }

  else
  {
    if (([permissionCopy isEqualToString:@"camera"] & 1) == 0 && (objc_msgSend(permissionCopy, "isEqualToString:", @"microphone") & 1) == 0)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
      goto LABEL_9;
    }

    v19 = +[(WBSUserMediaPermissionController *)_SFUserMediaPermissionController];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__SFWebViewController__webView_queryPermission_forOrigin_completionHandler___block_invoke_2;
    v20[3] = &unk_1E8492A98;
    v21 = permissionCopy;
    v22 = handlerCopy;
    [v19 getPermissionForOrigin:host2 topLevelOrigin:host2 completionHandler:v20];
    v18 = &v21;

    v17 = v22;
  }

LABEL_9:
}

uint64_t __76__SFWebViewController__webView_queryPermission_forOrigin_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = WBSUserMediaPermissionToWKPermissionDecision();
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __76__SFWebViewController__webView_queryPermission_forOrigin_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:@"camera"];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = WBSUserMediaPermissionToWKPermissionDecisionCamera();
  }

  else
  {
    v4 = WBSUserMediaPermissionToWKPermissionDecisionMicrophone();
  }

  v5 = *(v3 + 16);

  return v5(v3, v4);
}

- (BOOL)_webView:(id)view fileUploadPanelContentIsManagedWithInitiatingFrame:(id)frame
{
  frameCopy = frame;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  request = [frameCopy request];
  v7 = [request URL];
  safari_URLByNormalizingBlobURL = [v7 safari_URLByNormalizingBlobURL];
  v9 = [mEMORY[0x1E69ADFB8] isURLManaged:safari_URLByNormalizingBlobURL];

  return v9;
}

- (void)_webView:(id)view updatedAppBadge:(id)badge fromSecurityOrigin:(id)origin
{
  badgeCopy = badge;
  originCopy = origin;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self updatedAppBadge:badgeCopy fromSecurityOrigin:originCopy];
  }
}

- (int64_t)dialogController:(id)controller presentationPolicyForDialog:(id)dialog
{
  dialogCopy = dialog;
  if ([dialogCopy completionHandlerBlocksWebProcess] && self->_shouldSuppressDialogsThatBlockWebProcess)
  {
    v6 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained webViewController:self presentationPolicyForDialog:dialogCopy];
  }

  return v6;
}

- (void)dialogController:(id)controller willPresentDialog:(id)dialog
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewControllerWillPresentJavaScriptDialog:self];
}

- (id)permissionDialogThrottler
{
  permissionDialogThrottler = self->_permissionDialogThrottler;
  if (!permissionDialogThrottler)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C8FD8]);
    v5 = self->_permissionDialogThrottler;
    self->_permissionDialogThrottler = v4;

    permissionDialogThrottler = self->_permissionDialogThrottler;
  }

  return permissionDialogThrottler;
}

- (void)dialogController:(id)controller presentViewController:(id)viewController withAdditionalAnimations:(id)animations
{
  viewControllerCopy = viewController;
  animationsCopy = animations;
  [(SFWebViewController *)self presentViewController:viewControllerCopy animated:1 completion:0];
  [viewControllerCopy _sf_animateAlongsideTransitionOrPerform:animationsCopy];
}

- (void)dialogController:(id)controller dismissViewController:(id)viewController withAdditionalAnimations:(id)animations
{
  viewControllerCopy = viewController;
  animationsCopy = animations;
  [viewControllerCopy dismissViewControllerAnimated:1 completion:0];
  [viewControllerCopy _sf_animateAlongsideTransitionOrPerform:animationsCopy];
}

- (void)sfWebViewDidChangeSafeAreaInsets:(id)insets
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewControllerDidChangeSafeAreaInsets:self];
}

- (id)sfWebView:(id)view didStartDownload:(id)download
{
  downloadCopy = download;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained webViewController:self didStartDownload:downloadCopy];

  return v7;
}

- (BOOL)sfWebViewCanPromptForAccountSecurityRecommendation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained webViewControllerCanPromptForAccountSecurityRecommendation:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)sfWebViewShouldFillStringForFind:(id)find
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained webViewControllerShouldFillStringForFind:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)sfWebViewCanFindNextOrPrevious:(id)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained webViewControllerCanFindNextOrPrevious:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_webView:(id)view requestNotificationPermissionForSecurityOrigin:(id)origin decisionHandler:(id)handler
{
  originCopy = origin;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self requestNotificationPermissionForSecurityOrigin:originCopy decisionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (NSURL)url
{
  webView = [(SFWebViewController *)self webView];
  v3 = [webView URL];

  return v3;
}

- (SFWebViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end