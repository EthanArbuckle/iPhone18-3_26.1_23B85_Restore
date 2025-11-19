@interface SFWebViewController
- (BOOL)_webView:(id)a3 fileUploadPanelContentIsManagedWithInitiatingFrame:(id)a4;
- (BOOL)_webView:(id)a3 focusRequiresStrongPasswordAssistance:(id)a4;
- (BOOL)formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:(id)a3;
- (BOOL)sfWebViewCanFindNextOrPrevious:(id)a3;
- (BOOL)sfWebViewCanPromptForAccountSecurityRecommendation;
- (BOOL)sfWebViewShouldFillStringForFind:(id)a3;
- (NSURL)url;
- (SFWebViewController)initWithWebViewConfiguration:(id)a3 contentBlockerManager:(id)a4;
- (SFWebViewControllerDelegate)delegate;
- (WKWebView)webView;
- (id)_presentingViewControllerForWebView:(id)a3;
- (id)_webView:(id)a3 contextMenuContentPreviewForElement:(id)a4;
- (id)_webViewAdditionalContextForStrongPasswordAssistance:(id)a3;
- (id)formAutoFillControllerURLForFormAutoFill:(id)a3;
- (id)permissionDialogThrottler;
- (id)sfWebView:(id)a3 didStartDownload:(id)a4;
- (int64_t)_webView:(id)a3 decidePolicyForFocusedElement:(id)a4;
- (int64_t)dialogController:(id)a3 presentationPolicyForDialog:(id)a4;
- (void)_automaticPasswordInputViewAutoFillContextProviderRequiredNotification:(id)a3;
- (void)_automaticPasswordInputViewNotification:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_loadWebView;
- (void)_loadWebViewIfNeeded;
- (void)_userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:(id)a3;
- (void)_webView:(id)a3 authenticationChallenge:(id)a4 shouldAllowLegacyTLS:(id)a5;
- (void)_webView:(id)a3 checkUserMediaPermissionForURL:(id)a4 mainFrameURL:(id)a5 frameIdentifier:(unint64_t)a6 decisionHandler:(id)a7;
- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5;
- (void)_webView:(id)a3 contextMenuDidEndForElement:(id)a4;
- (void)_webView:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5;
- (void)_webView:(id)a3 contextMenuWillPresentForElement:(id)a4;
- (void)_webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6 completionHandler:(id)a7;
- (void)_webView:(id)a3 decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)a4 forExtension:(id)a5 completionHandler:(id)a6;
- (void)_webView:(id)a3 didChangeSafeAreaShouldAffectObscuredInsets:(BOOL)a4;
- (void)_webView:(id)a3 didFinishLoadForQuickLookDocumentInMainFrame:(id)a4;
- (void)_webView:(id)a3 didNegotiateModernTLSForURL:(id)a4;
- (void)_webView:(id)a3 didStartInputSession:(id)a4;
- (void)_webView:(id)a3 didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)a4 uti:(id)a5;
- (void)_webView:(id)a3 mediaCaptureStateDidChange:(unint64_t)a4;
- (void)_webView:(id)a3 navigation:(id)a4 didSameDocumentNavigation:(int64_t)a5;
- (void)_webView:(id)a3 navigationDidFinishDocumentLoad:(id)a4;
- (void)_webView:(id)a3 printFrame:(id)a4;
- (void)_webView:(id)a3 queryPermission:(id)a4 forOrigin:(id)a5 completionHandler:(id)a6;
- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4;
- (void)_webView:(id)a3 requestGeolocationAuthorizationForURL:(id)a4 frame:(id)a5 decisionHandler:(id)a6;
- (void)_webView:(id)a3 requestNotificationPermissionForSecurityOrigin:(id)a4 decisionHandler:(id)a5;
- (void)_webView:(id)a3 requestPresentingViewControllerWithCompletionHandler:(id)a4;
- (void)_webView:(id)a3 requestStorageAccessPanelForDomain:(id)a4 underCurrentDomain:(id)a5 completionHandler:(id)a6;
- (void)_webView:(id)a3 requestUserMediaAuthorizationForDevices:(unint64_t)a4 url:(id)a5 mainFrameURL:(id)a6 decisionHandler:(id)a7;
- (void)_webView:(id)a3 requestWebAuthenticationConditionalMediationRegistrationForUser:(id)a4 completionHandler:(id)a5;
- (void)_webView:(id)a3 setShouldKeepScreenAwake:(BOOL)a4;
- (void)_webView:(id)a3 shouldGoToBackForwardListItem:(id)a4 inPageCache:(BOOL)a5 completionHandler:(id)a6;
- (void)_webView:(id)a3 updatedAppBadge:(id)a4 fromSecurityOrigin:(id)a5;
- (void)_webView:(id)a3 willPerformClientRedirectToURL:(id)a4 delay:(double)a5;
- (void)_webView:(id)a3 willStartInputSession:(id)a4;
- (void)_webViewDidCancelClientRedirect:(id)a3;
- (void)_webViewDidEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4;
- (void)_webViewDidEnterFullscreen:(id)a3;
- (void)_webViewDidExitElementFullscreen:(id)a3;
- (void)_webViewDidExitFullscreen:(id)a3;
- (void)_webViewDidShowSafeBrowsingWarning:(id)a3;
- (void)_webViewWebProcessDidCrash:(id)a3;
- (void)_webViewWillEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4;
- (void)dealloc;
- (void)dialogController:(id)a3 dismissViewController:(id)a4 withAdditionalAnimations:(id)a5;
- (void)dialogController:(id)a3 presentViewController:(id)a4 withAdditionalAnimations:(id)a5;
- (void)dialogController:(id)a3 willPresentDialog:(id)a4;
- (void)formAutoFillControllerDidFocusSensitiveFormField:(id)a3;
- (void)formAutoFillControllerGetAuthenticationForAutoFill:(id)a3 completion:(id)a4;
- (void)formAutoFillControllerUserChoseToUseGeneratedPassword:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setLoading:(BOOL)a3;
- (void)sfWebViewDidChangeSafeAreaInsets:(id)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 preferences:(id)a5 decisionHandler:(id)a6;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didCommitNavigation:(id)a4;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webView:(id)a3 didReceiveServerRedirectForProvisionalNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
- (void)webView:(id)a3 navigationAction:(id)a4 didBecomeDownload:(id)a5;
- (void)webView:(id)a3 navigationResponse:(id)a4 didBecomeDownload:(id)a5;
- (void)webView:(id)a3 runJavaScriptAlertPanelWithMessage:(id)a4 initiatedByFrame:(id)a5 completionHandler:(id)a6;
- (void)webView:(id)a3 runJavaScriptConfirmPanelWithMessage:(id)a4 initiatedByFrame:(id)a5 completionHandler:(id)a6;
- (void)webView:(id)a3 runJavaScriptTextInputPanelWithPrompt:(id)a4 defaultText:(id)a5 initiatedByFrame:(id)a6 completionHandler:(id)a7;
- (void)webViewDidClose:(id)a3;
- (void)willRedirectToHostAppForNavigationWithCompletionHandler:(id)a3;
@end

@implementation SFWebViewController

- (SFWebViewController)initWithWebViewConfiguration:(id)a3 contentBlockerManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = SFWebViewController;
  v9 = [(SFWebViewController *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webViewConfiguration, a3);
    objc_storeStrong(&v10->_contentBlockerManager, a4);
    [(SFContentBlockerManager *)v10->_contentBlockerManager reloadUserContentControllerReadingStateFromDisk:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, contentBlockerDidChange, @"com.apple.SafariServices.ContentBlockerDidChange", 0, 1028);
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v10 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [v12 addObserver:v10 selector:sel__automaticPasswordInputViewNotification_ name:@"_SFAutomaticPasswordInputViewButtonPressedNotification" object:0];
    [v12 addObserver:v10 selector:sel__automaticPasswordInputViewAutoFillContextProviderRequiredNotification_ name:@"SFAutomaticPasswordInputViewAutoFillContextProviderRequiredNotification" object:0];
    v13 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v10->_UUID;
    v10->_UUID = v13;

    v15 = [MEMORY[0x1E696AFB0] UUID];
    tabIDForAutoFill = v10->_tabIDForAutoFill;
    v10->_tabIDForAutoFill = v15;

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
  v11 = [(_SFWebView *)v10 scrollView];
  [v11 setScrollsToTop:1];

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

- (id)_presentingViewControllerForWebView:(id)a3
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
  v3 = [(SFWebViewController *)self webView];
  [v3 setUIDelegate:0];
  [(SFDialogController *)self->_dialogController owningTabWillClose];
  v4 = [v3 scrollView];
  [v4 setDelegate:0];

  [v3 removeObserver:self forKeyPath:@"estimatedProgress" context:SFWebViewControllerObserverContext];
  [v3 removeObserver:self forKeyPath:@"URL" context:SFWebViewControllerObserverContext];
  [v3 removeObserver:self forKeyPath:@"hasOnlySecureContent" context:SFWebViewControllerObserverContext];
  [v3 removeObserver:self forKeyPath:@"_negotiatedLegacyTLS" context:SFWebViewControllerObserverContext];
  [v3 removeObserver:self forKeyPath:@"_webProcessIsResponsive" context:SFWebViewControllerObserverContext];
  [v3 removeObserver:self forKeyPath:@"themeColor" context:SFWebViewControllerObserverContext];
  [v3 removeObserver:self forKeyPath:@"underPageBackgroundColor" context:SFWebViewControllerObserverContext];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [v3 removeObserver:self forKeyPath:@"_sampledTopFixedPositionContentColor" context:SFWebViewControllerObserverContext];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(_SFFormAutoFillController *)self->_autoFillController invalidate];

  v6.receiver = self;
  v6.super_class = SFWebViewController;
  [(SFWebViewController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  if (self->_webView == a4)
  {
    v12 = v8;
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
      v10 = [(SFWebViewController *)self webView];
      v11 = [v10 _webProcessIsResponsive];

      if (v11)
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

    v8 = v12;
  }
}

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    self->_loading = a3;
    if (!a3)
    {
      self->_shouldSuppressDialogsThatBlockWebProcess = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained webViewControllerDidChangeLoadingState:self];
  }
}

- (void)_keyboardWillHide:(id)a3
{
  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {

    [(SFWebViewController *)self makeStrongPasswordFieldViewable:0];
  }
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v6 = a4;
  [(_SFFormAutoFillController *)self->_autoFillController offerToSaveUnsubmittedFormDataIfNeededWithCompletionHandler:&__block_literal_global_29];
  [(SFWebViewController *)self setLoading:1];
  self->_didFinishDocumentLoad = 0;
  self->_didFirstLayout = 0;
  self->_didFirstVisuallyNonEmptyLayout = 0;
  self->_didFirstPaint = 0;
  [(WBSPermissionDialogThrottler *)self->_permissionDialogThrottler willPerformUserInitiatedNavigation];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didStartProvisionalNavigation:v6];
}

- (void)webView:(id)a3 didReceiveServerRedirectForProvisionalNavigation:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didReceiveServerRedirectForProvisionalNavigation:v5];
}

- (void)_webView:(id)a3 willPerformClientRedirectToURL:(id)a4 delay:(double)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self willPerformClientRedirectToURL:v7 withDelay:a5];
}

- (void)_webViewDidCancelClientRedirect:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewControllerDidCancelClientRedirect:self];
}

- (void)webView:(id)a3 didCommitNavigation:(id)a4
{
  v13 = a3;
  v6 = a4;
  dialogController = self->_dialogController;
  v8 = [v13 URL];
  [(SFDialogController *)dialogController owningWebViewDidCommitNavigationWithURL:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didCommitNavigation:v6];

  [(_SFFormAutoFillController *)self->_autoFillController setLastFilledCreditCardData:0];
  v10 = [v13 URL];
  v11 = [v10 safari_userVisibleHostWithoutWWWSubdomain];

  if (([v11 isEqualToString:self->_domainWhereUserDeclinedAutomaticStrongPassword] & 1) == 0)
  {
    domainWhereUserDeclinedAutomaticStrongPassword = self->_domainWhereUserDeclinedAutomaticStrongPassword;
    self->_domainWhereUserDeclinedAutomaticStrongPassword = 0;
  }

  self->_hasFocusedInputFieldOnCurrentPage = 0;
  self->_shouldSuppressDialogsThatBlockWebProcess = 0;
  self->_hasFormControlInteraction = 0;
}

- (void)_webView:(id)a3 navigation:(id)a4 didSameDocumentNavigation:(int64_t)a5
{
  v9 = a4;
  [(_SFFormAutoFillController *)self->_autoFillController offerToSaveUnsubmittedFormDataIfNeededInWebView:a3 fromSameDocumentNavigationOfType:a5 completionHandler:&__block_literal_global_43];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didSameDocumentNavigation:v9 ofType:a5];
}

- (void)_webView:(id)a3 authenticationChallenge:(id)a4 shouldAllowLegacyTLS:(id)a5
{
  v10 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self authenticationChallenge:v10 shouldAllowLegacyTLS:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)_webView:(id)a3 didNegotiateModernTLSForURL:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authenticationChallengeDidNegotiateModernTLS:v5];
}

- (void)_webView:(id)a3 decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)a4 forExtension:(id)a5 completionHandler:(id)a6
{
  v11 = a5;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self decidePolicyForSOAuthorizationLoadWithCurrentPolicy:a4 forExtension:v11 completionHandler:v9];
  }

  else
  {
    v9[2](v9, 1);
  }
}

- (void)_webViewWillEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self willEndNavigationGestureToBackForwardListItem:v5];
}

- (void)_webViewDidEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didEndNavigationGestureToBackForwardListItem:v5];
}

- (void)_webView:(id)a3 shouldGoToBackForwardListItem:(id)a4 inPageCache:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v13 = a4;
  v9 = a6;
  v10 = [v13 URL];
  v11 = [v10 safari_isJavaScriptURL];

  if (v11)
  {
    v9[2](v9, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained webViewController:self willGoToBackForwardListItem:v13 inPageCache:v7];
    }

    v9[2](v9, 1);
  }
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a4;
  [(SFWebViewController *)self setLoading:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFinishNavigation:v6];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 preferences:(id)a5 decisionHandler:(id)a6
{
  v11 = a4;
  v8 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self decidePolicyForNavigationAction:v11 decisionHandler:v8];
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0);
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v10 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self decidePolicyForNavigationResponse:v10 decisionHandler:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v9 = a4;
  v7 = a5;
  [(SFWebViewController *)self setLoading:0];
  self->_didFirstVisuallyNonEmptyLayout = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFailProvisionalNavigation:v9 withError:v7];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v9 = a4;
  v7 = a5;
  [(SFWebViewController *)self setLoading:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFailNavigation:v9 withError:v7];
}

- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4
{
  v4 = a4;
  v8 = a3;
  if (v4)
  {
    self->_didFirstLayout = 1;
    [(_SFFormAutoFillController *)self->_autoFillController prefillFormsSoonIfNeeded];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if ((v4 & 2) != 0)
  {
    self->_didFirstVisuallyNonEmptyLayout = 1;
    [WeakRetained webViewControllerDidFirstVisuallyNonEmptyLayout:self];
    [v7 webViewControllerUpdateNavigationBar:self];
  }

  if ((v4 & 0x40) != 0)
  {
    self->_didFirstPaint = 1;
    if (objc_opt_respondsToSelector())
    {
      [v7 webViewControllerDidFirstPaint:self];
    }
  }
}

- (void)_webView:(id)a3 navigationDidFinishDocumentLoad:(id)a4
{
  v6 = a4;
  self->_didFinishDocumentLoad = 1;
  [(_SFFormAutoFillController *)self->_autoFillController prefillFormsSoonIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFinishDocumentLoadForNavigation:v6];
}

- (void)_webViewWebProcessDidCrash:(id)a3
{
  [(SFDialogController *)self->_dialogController owningWebViewDidChangeProcessID];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewControllerWebProcessDidCrash:self];
}

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v10 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self didReceiveAuthenticationChallenge:v10 completionHandler:v7];
  }

  else
  {
    v7[2](v7, 2, 0);
  }
}

- (void)_webView:(id)a3 didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)a4 uti:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didStartLoadForQuickLookDocumentInMainFrameWithFileName:v8 uti:v7];
}

- (void)_webView:(id)a3 didFinishLoadForQuickLookDocumentInMainFrame:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didFinishLoadForQuickLookDocumentInMainFrame:v5];
}

- (void)webView:(id)a3 navigationAction:(id)a4 didBecomeDownload:(id)a5
{
  v6 = a5;
  v5 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
  [v5 downloadDidStart:v6];
}

- (void)webView:(id)a3 navigationResponse:(id)a4 didBecomeDownload:(id)a5
{
  v6 = a5;
  v5 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
  [v5 downloadDidStart:v6];
}

- (void)willRedirectToHostAppForNavigationWithCompletionHandler:(id)a3
{
  v4 = a3;
  autoFillController = self->_autoFillController;
  v6 = v4;
  if (autoFillController)
  {
    [(_SFFormAutoFillController *)autoFillController offerToSaveUnsubmittedFormDataIfNeededWithCompletionHandler:v4];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

- (id)formAutoFillControllerURLForFormAutoFill:(id)a3
{
  v3 = [(SFWebViewController *)self webView];
  v4 = [v3 URL];

  return v4;
}

- (BOOL)formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:(id)a3
{
  v4 = [(SFWebViewController *)self webView];
  v5 = [v4 URL];
  v6 = [v5 safari_userVisibleHostWithoutWWWSubdomain];

  LOBYTE(v4) = [v6 isEqualToString:self->_domainWhereUserDeclinedAutomaticStrongPassword];
  return v4;
}

- (void)formAutoFillControllerUserChoseToUseGeneratedPassword:(id)a3
{
  domainWhereUserDeclinedAutomaticStrongPassword = self->_domainWhereUserDeclinedAutomaticStrongPassword;
  self->_domainWhereUserDeclinedAutomaticStrongPassword = 0;
}

- (void)formAutoFillControllerGetAuthenticationForAutoFill:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 authenticationContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__SFWebViewController_formAutoFillControllerGetAuthenticationForAutoFill_completion___block_invoke;
  v10[3] = &unk_1E8492A20;
  v8 = v6;
  v12 = v8;
  v9 = v5;
  v11 = v9;
  [v7 authenticateForClient:v9 userInitiated:1 completion:v10];
}

void __85__SFWebViewController_formAutoFillControllerGetAuthenticationForAutoFill_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v5 = [*(a1 + 32) authenticationContext];
  v4 = [v5 authenticatedContext];
  (*(v3 + 16))(v3, a2, v4);
}

- (void)_automaticPasswordInputViewNotification:(id)a3
{
  v10 = a3;
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  v5 = [v10 userInfo];
  v6 = [v5 objectForKey:@"SFAutoFillContextProviderIdentifierUserInfoKey"];
  v7 = [v4 initWithUUIDString:v6];

  v8 = [v10 userInfo];
  v9 = [v8 safari_numberForKey:@"_SFAutomaticPasswordInputViewNotificationPressedButtonUserInfoKey"];

  if (v9 && [v9 integerValue] == 1)
  {
    [(_SFFormAutoFillController *)self->_autoFillController removeAutomaticPasswordButtonInitiatedByUser:1];
    [(SFWebViewController *)self _userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:v7];
  }
}

- (void)_userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:(id)a3
{
  v8 = a3;
  v4 = [(SFWebViewController *)self webView];
  v5 = [v4 URL];
  v6 = [v5 safari_userVisibleHostWithoutWWWSubdomain];

  v7 = [(SFWebViewController *)self UUID];
  LODWORD(v5) = [v8 isEqual:v7];

  if (v5)
  {
    objc_storeStrong(&self->_domainWhereUserDeclinedAutomaticStrongPassword, v6);
  }
}

- (void)_automaticPasswordInputViewAutoFillContextProviderRequiredNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SFAutomaticPasswordInputViewControllerKey"];

  [v5 setAutoFillContextProvider:self];
}

- (void)formAutoFillControllerDidFocusSensitiveFormField:(id)a3
{
  hasFocusedInputFieldOnCurrentPage = self->_hasFocusedInputFieldOnCurrentPage;
  self->_hasFocusedInputFieldOnCurrentPage = 1;
  if (!hasFocusedInputFieldOnCurrentPage)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained webViewControllerUpdateNavigationBar:self];
  }
}

- (void)_webView:(id)a3 requestPresentingViewControllerWithCompletionHandler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self requestPresentingViewControllerWithCompletionHandler:v6];
  }
}

- (void)_webViewDidExitElementFullscreen:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewControllerDidExitElementFullscreen:self];
  }
}

- (void)_webView:(id)a3 willStartInputSession:(id)a4
{
  v6 = a4;
  v5 = [[_SFFormAutoFillInputSession alloc] initWithFormInputSession:v6];
  if (![v6 requiresStrongPasswordAssistance] || (-[_SFFormAutoFillController prepareForShowingAutomaticStrongPasswordWithInputSession:](self->_autoFillController, "prepareForShowingAutomaticStrongPasswordWithInputSession:", v5), (objc_msgSend(MEMORY[0x1E69C8880], "isPasswordsAppInstalled") & 1) != 0))
  {
    [(_SFFormAutoFillController *)self->_autoFillController fieldWillFocusWithInputSession:v5];
  }
}

- (void)_webView:(id)a3 didStartInputSession:(id)a4
{
  if (([a4 requiresStrongPasswordAssistance] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      -[_SFFormAutoFillController setShouldAutofillESimInformation:](self->_autoFillController, "setShouldAutofillESimInformation:", [WeakRetained webViewControllerShouldAutofillESimInformation:self]);
    }

    [(_SFFormAutoFillController *)self->_autoFillController fieldDidFocus];
  }
}

- (void)_webView:(id)a3 setShouldKeepScreenAwake:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [WeakRetained webViewController:self setShouldKeepScreenAwake:v4];
  }
}

- (void)_webViewDidShowSafeBrowsingWarning:(id)a3
{
  v3 = [MEMORY[0x1E69C8810] sharedLogger];
  [v3 didShowSafeBrowsingWarningWithSource:0];
}

- (int64_t)_webView:(id)a3 decidePolicyForFocusedElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_SFFormAutoFillController *)self->_autoFillController elementIsBeingFocusedForStreamlinedLogin:v7])
  {
    v8 = [(SFWebViewController *)self presentedViewController];
    if (v8)
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
    v8 = [v6 URL];
    v10 = [v6 _committedURL];
    if ([v8 isEqual:v10])
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

- (BOOL)_webView:(id)a3 focusRequiresStrongPasswordAssistance:(id)a4
{
  v5 = a4;
  autoFillController = self->_autoFillController;
  v7 = [[_SFFormAutoFillInputSession alloc] initWithFocusedElement:v5];
  v8 = [(_SFFormAutoFillController *)autoFillController beginAutomaticPasswordInteractionWithInputSession:v7];
  LOBYTE(autoFillController) = v8 != 0;

  return autoFillController;
}

- (id)_webViewAdditionalContextForStrongPasswordAssistance:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"SFAutoFillContextProviderIdentifierUserInfoKey";
  v3 = [(NSUUID *)self->_UUID UUIDString];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)webView:(id)a3 runJavaScriptAlertPanelWithMessage:(id)a4 initiatedByFrame:(id)a5 completionHandler:(id)a6
{
  dialogController = self->_dialogController;
  v7 = [MEMORY[0x1E69B1B00] javaScriptAlertDialogWithMessage:a4 completionHandler:{a6, a5}];
  [(SFDialogController *)dialogController presentDialog:?];
}

- (void)webView:(id)a3 runJavaScriptConfirmPanelWithMessage:(id)a4 initiatedByFrame:(id)a5 completionHandler:(id)a6
{
  dialogController = self->_dialogController;
  v7 = [MEMORY[0x1E69B1B00] javaScriptConfirmDialogWithMessage:a4 completionHandler:{a6, a5}];
  [(SFDialogController *)dialogController presentDialog:?];
}

- (void)webView:(id)a3 runJavaScriptTextInputPanelWithPrompt:(id)a4 defaultText:(id)a5 initiatedByFrame:(id)a6 completionHandler:(id)a7
{
  dialogController = self->_dialogController;
  v8 = [MEMORY[0x1E69B1B00] javaScriptPromptDialogWithMessage:a4 defaultText:a5 completionHandler:{a7, a6}];
  [(SFDialogController *)dialogController presentDialog:?];
}

- (void)_webView:(id)a3 requestStorageAccessPanelForDomain:(id)a4 underCurrentDomain:(id)a5 completionHandler:(id)a6
{
  dialogController = self->_dialogController;
  v7 = [MEMORY[0x1E69B1B00] requestStorageAccessDialogForDomain:a4 underCurrentDomain:a5 extensionsController:0 completionHandler:a6];
  [(SFDialogController *)dialogController presentDialog:?];
}

- (void)webViewDidClose:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self webViewDidClose:v4];
}

- (void)_webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6 completionHandler:(id)a7
{
  v14 = a4;
  v10 = a5;
  v11 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained webViewController:self createWebViewWithConfiguration:v14 forNavigationAction:v10 completionHandler:v11];
  }

  else
  {
    v11[2](v11, 0);
  }
}

- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5
{
  v9 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self contextMenuConfigurationForElement:v9 completionHandler:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)_webView:(id)a3 contextMenuWillPresentForElement:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self contextMenuWillPresentForElement:v6];
  }
}

- (id)_webView:(id)a3 contextMenuContentPreviewForElement:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained webViewController:self contextMenuContentPreviewForElement:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_webView:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5
{
  v9 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self contextMenuForElement:v9 willCommitWithAnimator:v7];
  }
}

- (void)_webView:(id)a3 contextMenuDidEndForElement:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self contextMenuDidEndForElement:v6];
  }
}

- (void)_webView:(id)a3 printFrame:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self printFrame:v5];
}

- (void)_webViewDidEnterFullscreen:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didChangeFullScreen:1];
}

- (void)_webViewDidExitFullscreen:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewController:self didChangeFullScreen:0];
}

- (void)_webView:(id)a3 requestGeolocationAuthorizationForURL:(id)a4 frame:(id)a5 decisionHandler:(id)a6
{
  v14 = a4;
  v9 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained browserPersonaForWebViewController:self];

  v13 = +[_SFGeolocationPermissionManager sharedManager];
  [v13 requestPermissionForURL:v14 frame:v9 dialogPresenter:self browserPersona:v12 completionHandler:v10];
}

- (void)_webView:(id)a3 didChangeSafeAreaShouldAffectObscuredInsets:(BOOL)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewControllerDidChangeSafeAreaShouldAffectObscuredInsets:self];
}

- (void)_webView:(id)a3 requestWebAuthenticationConditionalMediationRegistrationForUser:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[_SFFormDataController sharedController];
  v10 = [(SFWebViewController *)self tabIDForAutoFill];
  v11 = [(SFWebViewController *)self webView];
  v12 = [v11 URL];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __114__SFWebViewController__webView_requestWebAuthenticationConditionalMediationRegistrationForUser_completionHandler___block_invoke;
  v14[3] = &unk_1E8492A48;
  v13 = v8;
  v15 = v13;
  [v9 canAutomaticallyRegisterPasskeyForUsername:v7 inTabWithID:v10 currentURL:v12 completionHandler:v14];
}

- (void)_webView:(id)a3 requestUserMediaAuthorizationForDevices:(unint64_t)a4 url:(id)a5 mainFrameURL:(id)a6 decisionHandler:(id)a7
{
  v14 = a5;
  v11 = a6;
  v12 = a7;
  v13 = +[(WBSUserMediaPermissionController *)_SFUserMediaPermissionController];
  [v13 requestUserMediaAuthorizationForDevices:a4 url:v14 mainFrameURL:v11 decisionHandler:v12 dialogPresenter:self];
}

- (void)_webView:(id)a3 checkUserMediaPermissionForURL:(id)a4 mainFrameURL:(id)a5 frameIdentifier:(unint64_t)a6 decisionHandler:(id)a7
{
  v13 = a4;
  v10 = a5;
  v11 = a7;
  v12 = +[(WBSUserMediaPermissionController *)_SFUserMediaPermissionController];
  [v12 checkUserMediaPermissionForURL:v13 mainFrameURL:v10 frameIdentifier:a6 decisionHandler:v11];
}

- (void)_webView:(id)a3 mediaCaptureStateDidChange:(unint64_t)a4
{
  v6 = [(SFWebViewController *)self delegate];
  [v6 webViewController:self mediaCaptureStateDidChange:a4];
}

- (void)_webView:(id)a3 queryPermission:(id)a4 forOrigin:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v12 = [v9 protocol];
  [v11 setScheme:v12];

  v13 = [v9 host];
  v14 = [v13 _webkit_decodeHostName];
  [v11 setHost:v14];

  if ([v9 port])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "port")}];
    [v11 setPort:v15];
  }

  v16 = [v11 host];
  if ([v8 isEqualToString:@"geolocation"])
  {
    v17 = +[_SFGeolocationPermissionManager sharedManager];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__SFWebViewController__webView_queryPermission_forOrigin_completionHandler___block_invoke;
    v23[3] = &unk_1E8492A70;
    v24 = v10;
    [v17 getGeolocationSettingForDomain:v16 completionHandler:v23];
    v18 = &v24;
  }

  else
  {
    if (([v8 isEqualToString:@"camera"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"microphone") & 1) == 0)
    {
      (*(v10 + 2))(v10, 0);
      goto LABEL_9;
    }

    v19 = +[(WBSUserMediaPermissionController *)_SFUserMediaPermissionController];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__SFWebViewController__webView_queryPermission_forOrigin_completionHandler___block_invoke_2;
    v20[3] = &unk_1E8492A98;
    v21 = v8;
    v22 = v10;
    [v19 getPermissionForOrigin:v16 topLevelOrigin:v16 completionHandler:v20];
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

- (BOOL)_webView:(id)a3 fileUploadPanelContentIsManagedWithInitiatingFrame:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v6 = [v4 request];
  v7 = [v6 URL];
  v8 = [v7 safari_URLByNormalizingBlobURL];
  v9 = [v5 isURLManaged:v8];

  return v9;
}

- (void)_webView:(id)a3 updatedAppBadge:(id)a4 fromSecurityOrigin:(id)a5
{
  v9 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self updatedAppBadge:v9 fromSecurityOrigin:v7];
  }
}

- (int64_t)dialogController:(id)a3 presentationPolicyForDialog:(id)a4
{
  v5 = a4;
  if ([v5 completionHandlerBlocksWebProcess] && self->_shouldSuppressDialogsThatBlockWebProcess)
  {
    v6 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained webViewController:self presentationPolicyForDialog:v5];
  }

  return v6;
}

- (void)dialogController:(id)a3 willPresentDialog:(id)a4
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

- (void)dialogController:(id)a3 presentViewController:(id)a4 withAdditionalAnimations:(id)a5
{
  v8 = a4;
  v7 = a5;
  [(SFWebViewController *)self presentViewController:v8 animated:1 completion:0];
  [v8 _sf_animateAlongsideTransitionOrPerform:v7];
}

- (void)dialogController:(id)a3 dismissViewController:(id)a4 withAdditionalAnimations:(id)a5
{
  v7 = a4;
  v6 = a5;
  [v7 dismissViewControllerAnimated:1 completion:0];
  [v7 _sf_animateAlongsideTransitionOrPerform:v6];
}

- (void)sfWebViewDidChangeSafeAreaInsets:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webViewControllerDidChangeSafeAreaInsets:self];
}

- (id)sfWebView:(id)a3 didStartDownload:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained webViewController:self didStartDownload:v5];

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

- (BOOL)sfWebViewShouldFillStringForFind:(id)a3
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

- (BOOL)sfWebViewCanFindNextOrPrevious:(id)a3
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

- (void)_webView:(id)a3 requestNotificationPermissionForSecurityOrigin:(id)a4 decisionHandler:(id)a5
{
  v9 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained webViewController:self requestNotificationPermissionForSecurityOrigin:v9 decisionHandler:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (NSURL)url
{
  v2 = [(SFWebViewController *)self webView];
  v3 = [v2 URL];

  return v3;
}

- (SFWebViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end