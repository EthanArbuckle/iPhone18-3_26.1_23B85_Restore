@interface _SFPageLoadErrorController
+ (void)clearOldCertificateBypasses;
- (BOOL)updateCrashesAndShowCrashError:(id)error URLString:(id)string;
- (SFDialogPresenting)dialogPresenter;
- (_SFPageLoadErrorController)initWithWebView:(id)view secIdentitiesCache:(id)cache;
- (_SFPageLoadErrorControllerDelegate)delegate;
- (id)_certificateWarningPagePresenterProxy;
- (id)_errorMessageForNSURLErrorDomain:(id)domain url:(id)url;
- (id)_firstItemWithUniqueURLInBackListFromURL:(id)l;
- (id)_genericMessageForError:(id)error;
- (id)_titleForError:(id)error;
- (void)_clearCertificateWarningPageHandlerInterface;
- (void)_continueAfterCertificateAlertWithURL:(id)l trust:(__SecTrust *)trust recoveryAttempter:(id)attempter;
- (void)_continueWithoutCredentialsUsingAlertContext:(id)context;
- (void)_dismissCertificateViewButtonTapped;
- (void)_fetchSpecializedMessageForError:(id)error URL:(id)l completionHandler:(id)handler;
- (void)_handleCertificateError:(id)error forURL:(id)l isMainFrame:(BOOL)frame recoveryAttempter:(id)attempter completionHandler:(id)handler;
- (void)_handleFrameLoadError:(id)error forURL:(id)l recoveryAttempter:(id)attempter;
- (void)_loadCertificateWarningPageForContext:(id)context;
- (void)_reachabilityChanged:(id)changed;
- (void)_resetCrashCountNow;
- (void)_resetCrashCountSoon;
- (void)_setFailedRequest:(id)request;
- (void)_setUpCertificateWarningPageHandlerInterface;
- (void)_showRepeatedWebProcessCrashError:(id)error URLString:(id)string;
- (void)addAlert:(id)alert;
- (void)addAlertWithTitle:(id)title bodyText:(id)text;
- (void)addDialog:(id)dialog;
- (void)addDisallowedFileURLAlert;
- (void)addDisallowedUseOfJavaScriptAlert;
- (void)addDownloadFailedAlertWithDescription:(id)description;
- (void)addFormAlertWithTitle:(id)title decisionHandler:(id)handler;
- (void)addInvalidProfileAlert;
- (void)addInvalidURLAlert;
- (void)clearCrashCountResetTimer;
- (void)dealloc;
- (void)goBackButtonClicked;
- (void)handleClientCertificateAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)handleFrameLoadError:(id)error;
- (void)handleLegacyTLSWithFailingURL:(id)l clickThroughURL:(id)rL authenticationChallenge:(id)challenge;
- (void)handleSubframeCertificateError:(id)error;
- (void)invalidate;
- (void)openClockSettings;
- (void)performAction:(int)action forAlert:(id)alert;
- (void)reloadAfterError;
- (void)scheduleResetCrashCount;
- (void)showCertificateInformation;
- (void)showErrorPageWithTitle:(id)title bodyText:(id)text learnMoreLink:(id)link forError:(id)error;
- (void)visitInsecureWebsite;
- (void)visitInsecureWebsiteWithTemporaryBypass;
- (void)visitWebsiteWithoutPrivateRelay;
- (void)webViewDidCommitErrorPagePreview:(id)preview;
@end

@implementation _SFPageLoadErrorController

- (void)_setUpCertificateWarningPageHandlerInterface
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5046A38];
  certificateWarningPageHandlerInterface = self->_certificateWarningPageHandlerInterface;
  self->_certificateWarningPageHandlerInterface = v3;

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self interface:self->_certificateWarningPageHandlerInterface];
}

- (void)invalidate
{
  if (!self->_certificateWarningPageHandlerInterfaceInvalidated)
  {
    self->_certificateWarningPageHandlerInterfaceInvalidated = 1;
    [(_SFPageLoadErrorController *)self _clearCertificateWarningPageHandlerInterface];
  }
}

- (void)clearCrashCountResetTimer
{
  [(NSTimer *)self->_crashCountResetTimer invalidate];
  crashCountResetTimer = self->_crashCountResetTimer;
  self->_crashCountResetTimer = 0;
}

- (void)dealloc
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(_SFPageLoadErrorController *)v3 dealloc];
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(_SFPageLoadErrorController *)self clearFailedRequest];
  certificateTrust = self->_certificateTrust;
  if (certificateTrust)
  {
    CFRelease(certificateTrust);
  }

  v6.receiver = self;
  v6.super_class = _SFPageLoadErrorController;
  [(_SFPageLoadErrorController *)&v6 dealloc];
}

- (_SFPageLoadErrorController)initWithWebView:(id)view secIdentitiesCache:(id)cache
{
  viewCopy = view;
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = _SFPageLoadErrorController;
  v8 = [(_SFPageLoadErrorController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_webView, viewCopy);
    objc_storeStrong(&v9->_secIdentitiesCache, cache);
    [(_SFPageLoadErrorController *)v9 _setUpCertificateWarningPageHandlerInterface];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__resetCrashCountDueToSuspendOrResume_ name:*MEMORY[0x1E69DE360] object:0];
    [defaultCenter addObserver:v9 selector:sel__resetCrashCountDueToSuspendOrResume_ name:*MEMORY[0x1E69DE348] object:0];
    v11 = v9;
  }

  return v9;
}

- (void)_clearCertificateWarningPageHandlerInterface
{
  if (self->_certificateWarningPageHandlerInterface)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];

    [_remoteObjectRegistry unregisterExportedObject:self interface:self->_certificateWarningPageHandlerInterface];
    certificateWarningPageHandlerInterface = self->_certificateWarningPageHandlerInterface;
    self->_certificateWarningPageHandlerInterface = 0;
  }
}

- (void)_fetchSpecializedMessageForError:(id)error URL:(id)l completionHandler:(id)handler
{
  errorCopy = error;
  lCopy = l;
  handlerCopy = handler;
  failingURL = [errorCopy failingURL];
  if (!failingURL)
  {
    failingURL = lCopy;
    v12 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (failingURL)
      {
        goto LABEL_4;
      }

LABEL_18:
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_11;
    }

    [_SFPageLoadErrorController _fetchSpecializedMessageForError:v12 URL:errorCopy completionHandler:?];
    if (!failingURL)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if (![errorCopy safari_isPrivacyProxyError])
  {
    if ([errorCopy safari_isLocalNetworkContentFilteringError])
    {
      host = [failingURL host];
      [errorCopy fetchLocalNetworkContentFilteringErrorMessageForFailingURLString:host withCompletionHandler:handlerCopy];
      goto LABEL_9;
    }

    if ([errorCopy _web_errorIsInDomain:*MEMORY[0x1E696A978]])
    {
      v13 = [(_SFPageLoadErrorController *)self _errorMessageForNSURLErrorDomain:errorCopy url:failingURL];
      goto LABEL_6;
    }

    if (![errorCopy _web_errorIsInDomain:*MEMORY[0x1E696A798]] || objc_msgSend(errorCopy, "code") != 54)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_10;
    }
  }

  v13 = _WBSLocalizedString();
LABEL_6:
  host = v13;
  handlerCopy[2](handlerCopy, v13);
LABEL_9:

LABEL_10:
LABEL_11:
}

- (id)_errorMessageForNSURLErrorDomain:(id)domain url:(id)url
{
  domainCopy = domain;
  urlCopy = url;
  userInfo = [domainCopy userInfo];
  v8 = [userInfo safari_URLForKey:*MEMORY[0x1E696A980]];
  absoluteString = [v8 absoluteString];
  stringByRemovingPercentEncoding = [absoluteString stringByRemovingPercentEncoding];

  code = [domainCopy code];
  v12 = 0;
  if (code > -1103)
  {
    switch(code)
    {
      case -1018:
      case -1014:
      case -1011:
      case -1010:
      case -1008:
      case -1007:
      case -1006:
      case -1005:
      case -1004:
      case -1003:
      case -1001:
      case -1000:
        goto LABEL_23;
      case -1017:
      case -1016:
      case -1015:
      case -1013:
      case -1012:
        goto LABEL_24;
      case -1009:
        goto LABEL_10;
      case -1002:
        v17 = MEMORY[0x1E696AEC0];
        v16 = _WBSLocalizedString();
        safari_userVisibleScheme = [urlCopy safari_userVisibleScheme];
        goto LABEL_19;
      default:
        if (code == -1102)
        {
          v20 = MEMORY[0x1E696AEC0];
          v16 = _WBSLocalizedString();
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          path = [urlCopy path];
          v22 = [defaultManager displayNameAtPath:path];
          v12 = [v20 stringWithFormat:v16, v22];

          goto LABEL_21;
        }

        if (code != -1100)
        {
          goto LABEL_24;
        }

        v17 = MEMORY[0x1E696AEC0];
        v16 = _WBSLocalizedString();
        safari_userVisibleScheme = [urlCopy path];
        break;
    }

    goto LABEL_19;
  }

  if (code > -1201)
  {
    if (code == -1200)
    {
      if (isDiffieHellmanError(domainCopy))
      {
        v17 = MEMORY[0x1E696AEC0];
        v16 = _WBSLocalizedString();
        safari_userVisibleScheme = [urlCopy host];
LABEL_19:
        defaultManager = safari_userVisibleScheme;
        v12 = [v17 stringWithFormat:v16, safari_userVisibleScheme];
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (code != -1103)
    {
      goto LABEL_24;
    }
  }

  else if (code == -2000)
  {
LABEL_10:
    currentDevice = [MEMORY[0x1E69C8860] currentDevice];
    deviceClass = [currentDevice deviceClass];

    if (deviceClass == 3 && [stringByRemovingPercentEncoding length])
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = _WBSLocalizedString();
      v12 = [v15 stringWithFormat:v16, stringByRemovingPercentEncoding];
LABEL_22:

      goto LABEL_24;
    }
  }

  else if (code != -1205)
  {
    goto LABEL_24;
  }

LABEL_23:
  v12 = _WBSLocalizedString();
LABEL_24:

  return v12;
}

- (id)_genericMessageForError:(id)error
{
  _web_localizedDescription = [error _web_localizedDescription];
  if (!_web_localizedDescription)
  {
    _web_localizedDescription = _WBSLocalizedString();
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  v6 = [v4 stringWithFormat:v5, _web_localizedDescription];

  return v6;
}

- (void)addDialog:(id)dialog
{
  dialogCopy = dialog;
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);
  [WeakRetained presentDialog:dialogCopy sender:self];

  v5 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v5 pageLoadErrorControllerDidAddAlert:self];
  }
}

- (void)addAlert:(id)alert
{
  alertCopy = alert;
  v5 = MEMORY[0x1E69B1B00];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __39___SFPageLoadErrorController_addAlert___block_invoke;
  v11 = &unk_1E848FA28;
  v12 = alertCopy;
  selfCopy = self;
  v6 = alertCopy;
  v7 = [v5 dialogWithWebUIAlert:v6 completionHandler:&v8];
  [(_SFPageLoadErrorController *)self addDialog:v7, v8, v9, v10, v11];
}

- (void)_continueAfterCertificateAlertWithURL:(id)l trust:(__SecTrust *)trust recoveryAttempter:(id)attempter
{
  attempterCopy = attempter;
  array = [MEMORY[0x1E695DF70] array];
  if (trust)
  {
    CertificateCount = SecTrustGetCertificateCount(trust);
    if (CertificateCount >= 1)
    {
      v8 = CertificateCount;
      for (i = 0; i != v8; ++i)
      {
        CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, i);
        if (CertificateAtIndex)
        {
          [array addObject:CertificateAtIndex];
        }
      }
    }
  }

  if (attempterCopy)
  {
    attempterCopy[2]();
  }
}

- (void)_continueWithoutCredentialsUsingAlertContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v8 = contextCopy;
    v4 = [contextCopy objectForKey:@"reason"];
    v5 = [v4 isEqualToString:@"reasonAuthenticationChallenge"];

    contextCopy = v8;
    if (v5)
    {
      v6 = [v8 objectForKey:@"completionHandler"];
      v7 = v6;
      if (v6)
      {
        (*(v6 + 16))(v6, 3, 0);
      }

      contextCopy = v8;
    }
  }
}

- (void)performAction:(int)action forAlert:(id)alert
{
  v28 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  type = [alertCopy type];
  if (type == 4)
  {
    if (action != 4)
    {
      if (action != 5)
      {
        goto LABEL_19;
      }

      context = [alertCopy context];
      selectedIdentity = [alertCopy selectedIdentity];
      if (selectedIdentity)
      {
        v12 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          identities = [alertCopy identities];
          v26 = 134217984;
          v27 = [identities count];
          _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_DEFAULT, "User has selected an identity out of %lu", &v26, 0xCu);
        }

        v15 = [context objectForKey:@"authenticationChallenge"];
        protectionSpace = [v15 protectionSpace];
        safari_identityPreferenceDomain = [protectionSpace safari_identityPreferenceDomain];
        [(_SFPageLoadErrorController *)self _cacheSecIdentityIfNeeded:selectedIdentity forIdentityDomain:safari_identityPreferenceDomain];

        proceedWithClientCertificateIdentity(selectedIdentity, context);
        identities2 = [alertCopy identities];
        v19 = [identities2 count];

        if (v19 == 1)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v21 = [WeakRetained pageLoadErrorControllerGetSecIdentityPreferencesController:self];

          v22 = [context objectForKeyedSubscript:@"authenticationChallenge"];
          protectionSpace2 = [v22 protectionSpace];
          _sf_highLevelDomainAndPort = [protectionSpace2 _sf_highLevelDomainAndPort];
          [v21 saveShouldUseOnlyAvailableIdentityWithoutPrompting:1 forDomainAndPort:_sf_highLevelDomainAndPort];
        }
      }

LABEL_18:
      goto LABEL_19;
    }

    v25 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1D4644000, v25, OS_LOG_TYPE_DEFAULT, "User has cancelled identities picker", &v26, 2u);
    }

LABEL_17:
    context = [alertCopy context];
    [(_SFPageLoadErrorController *)self _continueWithoutCredentialsUsingAlertContext:context];
    goto LABEL_18;
  }

  if (type != 3)
  {
    goto LABEL_19;
  }

  if (action == 4)
  {
    goto LABEL_17;
  }

  if (action == 5)
  {
    context2 = [alertCopy context];
    v9 = newAlertToListPossibleClientSideCertificatesWithContext(context2);

    [(_SFPageLoadErrorController *)self addAlert:v9];
  }

LABEL_19:
}

- (void)addFormAlertWithTitle:(id)title decisionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E69B1B00];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68___SFPageLoadErrorController_addFormAlertWithTitle_decisionHandler___block_invoke;
  v10[3] = &unk_1E848FA50;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [v7 formSubmissionDialogWithMessage:title completionHandler:v10];
  [(_SFPageLoadErrorController *)self addDialog:v9];
}

- (void)addAlertWithTitle:(id)title bodyText:(id)text
{
  v5 = [MEMORY[0x1E69B1B00] genericErrorDialogWithTitle:title message:text applicationModal:1];
  [(_SFPageLoadErrorController *)self addDialog:v5];
}

- (void)showErrorPageWithTitle:(id)title bodyText:(id)text learnMoreLink:(id)link forError:(id)error
{
  titleCopy = title;
  textCopy = text;
  linkCopy = link;
  failingURL = [error failingURL];
  if (failingURL)
  {
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 pathForResource:@"StandardError" ofType:@"html"];

    if (v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v15 encoding:4 error:0];
      if (v16)
      {
        safari_stringByReplacingMarkupCharactersWithHTMLEntities = [textCopy safari_stringByReplacingMarkupCharactersWithHTMLEntities];
        safari_stringByReplacingLastOccurrenceOfWhitespaceWithANonBreakingSpace = [safari_stringByReplacingMarkupCharactersWithHTMLEntities safari_stringByReplacingLastOccurrenceOfWhitespaceWithANonBreakingSpace];

        v19 = [safari_stringByReplacingLastOccurrenceOfWhitespaceWithANonBreakingSpace stringByReplacingOccurrencesOfString:@"\\n" withString:@"<br>"];

        v20 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"<br>"];

        v43 = v20;
        if (v20)
        {
          v41 = v16;
          if (linkCopy)
          {
            v21 = MEMORY[0x1E696AEC0];
            v22 = _WBSLocalizedString();
            v23 = [v21 stringWithFormat:@" <a href=%@>%@</a>", linkCopy, v22];
            v24 = [v43 stringByAppendingString:v23];

            v43 = v24;
          }

          preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
          firstObject = [preferredLanguages firstObject];

          v27 = &stru_1F4FE9E38;
          v42 = firstObject;
          if (firstObject && [MEMORY[0x1E695DF58] characterDirectionForLanguage:firstObject] == 2)
          {
            v27 = @"body { direction: rtl; }\n";
          }

          v28 = MEMORY[0x1E69C8860];
          v40 = v27;
          currentDevice = [v28 currentDevice];
          deviceClass = [currentDevice deviceClass];

          v31 = @"phone";
          if (deviceClass == 6)
          {
            v31 = @"watch";
          }

          if (deviceClass == 3)
          {
            v31 = @"pad";
          }

          v32 = v31;
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v34 = [WeakRetained pageLoadErrorControllerIsInPreviewMode:self];

          if (v34)
          {
            v35 = [(__CFString *)v32 stringByAppendingFormat:@" %@", @"preview"];

            v32 = v35;
          }

          v36 = MEMORY[0x1E696AEC0];
          safari_stringByReplacingMarkupCharactersWithHTMLEntities2 = [titleCopy safari_stringByReplacingMarkupCharactersWithHTMLEntities];
          v38 = v36;
          v16 = v41;
          v39 = [v38 stringWithFormat:v41, v42, v40, safari_stringByReplacingMarkupCharactersWithHTMLEntities2, v32, v43];

          if (v39)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __85___SFPageLoadErrorController_showErrorPageWithTitle_bodyText_learnMoreLink_forError___block_invoke;
            block[3] = &unk_1E848F6B0;
            block[4] = self;
            v45 = v39;
            v46 = failingURL;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }
        }
      }
    }
  }
}

- (id)_certificateWarningPagePresenterProxy
{
  certificateWarningPagePresenterProxy = self->_certificateWarningPagePresenterProxy;
  if (!certificateWarningPagePresenterProxy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];
    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50A2AA0];
    v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
    v8 = self->_certificateWarningPagePresenterProxy;
    self->_certificateWarningPagePresenterProxy = v7;

    certificateWarningPagePresenterProxy = self->_certificateWarningPagePresenterProxy;
  }

  return certificateWarningPagePresenterProxy;
}

- (void)_loadCertificateWarningPageForContext:(id)context
{
  contextCopy = context;
  if (!self->_certificateWarningPageHandlerInterfaceInvalidated)
  {
    _certificateWarningPagePresenterProxy = [(_SFPageLoadErrorController *)self _certificateWarningPagePresenterProxy];
    [_certificateWarningPagePresenterProxy prepareCertificateWarningPage:contextCopy];

    safari_safariSharedBundle = [MEMORY[0x1E696AAE8] safari_safariSharedBundle];
    v7 = [safari_safariSharedBundle URLForResource:@"CertificateWarningFall2023" withExtension:@"html"];

    v8 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v7 encoding:4 error:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68___SFPageLoadErrorController__loadCertificateWarningPageForContext___block_invoke;
    v11[3] = &unk_1E848F570;
    v11[4] = self;
    v12 = v8;
    v13 = v7;
    v14 = contextCopy;
    v9 = v7;
    v10 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (void)_handleCertificateError:(id)error forURL:(id)l isMainFrame:(BOOL)frame recoveryAttempter:(id)attempter completionHandler:(id)handler
{
  frameCopy = frame;
  errorCopy = error;
  lCopy = l;
  attempterCopy = attempter;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = [WeakRetained pageLoadErrorControllerShouldHandleCertificateError:self];

  if (v17)
  {
    if (frameCopy && [errorCopy safari_isPrivacyProxyFailClosedError])
    {
      mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
      isPrivacyProxySetToTrackersAndWebsites = [mEMORY[0x1E69C9808] isPrivacyProxySetToTrackersAndWebsites];

      v20 = objc_alloc(MEMORY[0x1E69C8EE8]);
      v21 = [(_SFPageLoadErrorController *)self _firstItemWithUniqueURLInBackListFromURL:lCopy];
      v22 = [v20 initPrivateRelayFailClosedNavigationWarningWithFailingURL:lCopy isPrivateRelaySetToTrackersAndWebsites:isPrivacyProxySetToTrackersAndWebsites canGoBack:v21 != 0];
      [(_SFPageLoadErrorController *)self _loadCertificateWarningPageForContext:v22];

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 1);
      }

      goto LABEL_36;
    }

    if ([errorCopy _web_errorIsInDomain:*MEMORY[0x1E696A978]])
    {
      failingURL = [errorCopy failingURL];
      host = [failingURL host];

      code = [errorCopy code];
      v26 = code;
      if ((code & 0xFFFFFFFFFFFFFFFCLL) != 0xFFFFFFFFFFFFFB4CLL && (code & 0xFFFFFFFFFFFFFFFELL) != 0xFFFFFFFFFFFFFB4ALL)
      {
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }

        goto LABEL_35;
      }

      v27 = WBS_LOG_CHANNEL_PREFIXCertificates();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [_SFPageLoadErrorController _handleCertificateError:v27 forURL:errorCopy isMainFrame:? recoveryAttempter:? completionHandler:?];
      }

      if ((v26 & 0xFFFFFFFFFFFFFB4ELL) == 0xFFFFFFFFFFFFFB4ALL)
      {
        v28 = newAlertToHandleClientSideCertificateErrorCode(v26, 0);
        v29 = v28;
        if (v28)
        {
          [v28 setHideAction:4];
          [(_SFPageLoadErrorController *)self addAlert:v29];
        }

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 1);
        }

        goto LABEL_35;
      }

      hostname = host;
      userInfo = [errorCopy userInfo];
      v30 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
      userInfo2 = [errorCopy userInfo];
      v32 = [userInfo2 objectForKeyedSubscript:@"NSErrorPeerCertificateChainKey"];

      v44 = v30;
      userInfo3 = [v30 userInfo];
      v34 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E695AE78]];

      trust = v34;
      certificates = v32;
      if (!v34 && v32)
      {
        SSL = SecPolicyCreateSSL(1u, hostname);
        SecTrustCreateWithCertificates(v32, SSL, &trust);
        CFRelease(SSL);
        CFAutorelease(trust);
        v34 = trust;
      }

      if (!v34)
      {
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }

        goto LABEL_34;
      }

      v36 = objc_loadWeakRetained(&self->_delegate);
      mEMORY[0x1E69C8EE0] = [MEMORY[0x1E69C8EE0] sharedManager];
      v43 = v36;
      v38 = [mEMORY[0x1E69C8EE0] didInvalidCertificateExceptionsApplySuccessfullyForProtectionSpace:self->_protectionSpaceForInvalidCertificateBypass inPrivateBrowsing:{objc_msgSend(v36, "pageLoadErrorControllerShouldPermanentlyAcceptCertificate:", self)}];

      self->_certificateTrust = CFRetain(trust);
      v39 = _Block_copy(attempterCopy);
      certificateRecoveryAttempter = self->_certificateRecoveryAttempter;
      self->_certificateRecoveryAttempter = v39;

      objc_storeStrong(&self->_certificateFailingURL, l);
      if (frameCopy)
      {
        if (!v38)
        {
          v41 = MEMORY[0x1E695DF00];
          v42 = *MEMORY[0x1E69C93C0];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __109___SFPageLoadErrorController__handleCertificateError_forURL_isMainFrame_recoveryAttempter_completionHandler___block_invoke;
          v48[3] = &unk_1E848FAA0;
          v48[4] = self;
          v52 = handlerCopy;
          v49 = errorCopy;
          v32 = certificates;
          v50 = certificates;
          v51 = lCopy;
          [v41 safari_dateFromNTPServerWithTimeout:v48 completionHandler:v42];

LABEL_33:
LABEL_34:

          host = hostname;
LABEL_35:

          goto LABEL_36;
        }

        [(_SFPageLoadErrorController *)self _continueAfterCertificateAlertWithURL:lCopy trust:self->_certificateTrust recoveryAttempter:attempterCopy];
      }

      v32 = certificates;
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 1);
      }

      goto LABEL_33;
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_36:
}

- (void)_reachabilityChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo safari_BOOLForKey:*MEMORY[0x1E698B610]];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained pageLoadErrorControllerShouldReloadAfterError:self];

    if (v7)
    {

      [(_SFPageLoadErrorController *)self reloadAfterError];
    }

    else
    {
      self->_reloadAfterResume = 1;
    }
  }
}

- (void)_setFailedRequest:(id)request
{
  requestCopy = request;
  failedRequest = self->_failedRequest;
  v14 = requestCopy;
  if (failedRequest != requestCopy)
  {
    if (failedRequest)
    {
      v7 = [(NSURLRequest *)failedRequest URL];
      host = [v7 host];

      if (host)
      {
        mEMORY[0x1E698B6A0] = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
        [mEMORY[0x1E698B6A0] removeObserver:self forHostname:host];
      }
    }

    objc_storeStrong(&self->_failedRequest, request);
    self->_reloadAfterResume = 0;
    v10 = self->_failedRequest;
    if (v10)
    {
      v11 = [(NSURLRequest *)v10 URL];
      host2 = [v11 host];

      if (host2)
      {
        mEMORY[0x1E698B6A0]2 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
        [mEMORY[0x1E698B6A0]2 addObserver:self selector:sel__reachabilityChanged_ forHostname:host2];
      }
    }
  }
}

- (id)_titleForError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  if (code != -1205 && code != -1102 && code != -1100)
  {
    isDiffieHellmanError(errorCopy);
  }

  v5 = _WBSLocalizedString();

  return v5;
}

- (void)_handleFrameLoadError:(id)error forURL:(id)l recoveryAttempter:(id)attempter
{
  errorCopy = error;
  lCopy = l;
  attempterCopy = attempter;
  code = [errorCopy code];
  if ((![errorCopy _web_errorIsInDomain:*MEMORY[0x1E69E3000]] || code != 102) && (!objc_msgSend(errorCopy, "_web_errorIsInDomain:", *MEMORY[0x1E696A978]) || code != -1012 && code != -999))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77___SFPageLoadErrorController__handleFrameLoadError_forURL_recoveryAttempter___block_invoke;
    v12[3] = &unk_1E848FB18;
    v12[4] = self;
    v13 = errorCopy;
    v15 = code;
    v14 = lCopy;
    [(_SFPageLoadErrorController *)self _handleCertificateError:v13 forURL:v14 isMainFrame:1 recoveryAttempter:attempterCopy completionHandler:v12];
  }
}

- (void)addDisallowedUseOfJavaScriptAlert
{
  v4 = _WBSLocalizedString();
  v3 = _WBSLocalizedString();
  [(_SFPageLoadErrorController *)self addAlertWithTitle:v4 bodyText:v3];
}

- (void)addDisallowedFileURLAlert
{
  v3 = MEMORY[0x1E69B1B00];
  v5 = _WBSLocalizedString();
  v4 = [v3 pageLoadErrorWithMessage:v5];
  [(_SFPageLoadErrorController *)self addDialog:v4];
}

- (void)reloadAfterError
{
  self->_failedRequest;
  self->_reloadingFailedRequest = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pageLoadErrorController:self loadFailedRequestAfterError:self->_failedRequest];
}

- (void)handleFrameLoadError:(id)error
{
  errorCopy = error;
  failingURL = [errorCopy failingURL];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___SFPageLoadErrorController_handleFrameLoadError___block_invoke;
  v7[3] = &unk_1E848FB40;
  v8 = errorCopy;
  v6 = errorCopy;
  [(_SFPageLoadErrorController *)self _handleFrameLoadError:v6 forURL:failingURL recoveryAttempter:v7];
}

- (void)handleSubframeCertificateError:(id)error
{
  errorCopy = error;
  failingURL = [errorCopy failingURL];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___SFPageLoadErrorController_handleSubframeCertificateError___block_invoke;
  v7[3] = &unk_1E848FB40;
  v8 = errorCopy;
  v6 = errorCopy;
  [(_SFPageLoadErrorController *)self _handleCertificateError:v6 forURL:failingURL isMainFrame:0 recoveryAttempter:v7 completionHandler:0];
}

- (void)handleLegacyTLSWithFailingURL:(id)l clickThroughURL:(id)rL authenticationChallenge:(id)challenge
{
  lCopy = l;
  rLCopy = rL;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100___SFPageLoadErrorController_handleLegacyTLSWithFailingURL_clickThroughURL_authenticationChallenge___block_invoke;
  v11[3] = &unk_1E848FB68;
  objc_copyWeak(&v14, &location);
  v12 = lCopy;
  v13 = rLCopy;
  v9 = rLCopy;
  v10 = lCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)handleClientCertificateAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  challengeCopy = challenge;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained pageLoadErrorControllerGetSecIdentityPreferencesController:self];

  protectionSpace = [challengeCopy protectionSpace];
  _sf_highLevelDomainAndPort = [protectionSpace _sf_highLevelDomainAndPort];

  v12 = [v9 shouldUseOnlyAvailableIdentityWithoutPromptingForDomainAndPort:_sf_highLevelDomainAndPort];
  v13 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v28 = _sf_highLevelDomainAndPort;
    v29 = 1024;
    v30 = v12;
    _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_DEFAULT, "Received challenge for domain: %{sensitive}@, use only available identity without prompt: %d", buf, 0x12u);
  }

  v26[0] = challengeCopy;
  v26[1] = @"reasonAuthenticationChallenge";
  v14 = [handlerCopy copy];

  v26[2] = v14;
  v25[3] = @"useOnlyAvailableIdentityWithoutPrompting";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v12];
  v26[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];

  secIdentitiesCache = self->_secIdentitiesCache;
  protectionSpace2 = [challengeCopy protectionSpace];
  safari_identityPreferenceDomain = [protectionSpace2 safari_identityPreferenceDomain];
  v20 = [(WBSSecIdentitiesCache *)secIdentitiesCache secIdentityForDomain:safari_identityPreferenceDomain];

  v21 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v21, OS_LOG_TYPE_DEFAULT, "Found a preferred identity to skip prompting", buf, 2u);
    }

    proceedWithClientCertificateIdentity(v20, v16);
  }

  else
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v21, OS_LOG_TYPE_DEFAULT, "Could not find a preferred identity to skip prompting", buf, 2u);
    }

    v23 = newAlertToHandleClientSideCertificateErrorCode(-1206, v16);
    v24 = v23;
    if (v23)
    {
      [v23 setHideAction:4];
      [v24 setContext:v16];
      [(_SFPageLoadErrorController *)self addAlert:v24];
    }
  }
}

- (void)addInvalidURLAlert
{
  v3 = MEMORY[0x1E69B1B00];
  v5 = _WBSLocalizedString();
  v4 = [v3 pageLoadErrorWithMessage:v5];
  [(_SFPageLoadErrorController *)self addDialog:v4];
}

- (void)addInvalidProfileAlert
{
  v3 = MEMORY[0x1E69B1B00];
  v6 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = [v3 genericErrorDialogWithTitle:v6 message:v4 applicationModal:0];
  [(_SFPageLoadErrorController *)self addDialog:v5];
}

- (void)addDownloadFailedAlertWithDescription:(id)description
{
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    descriptionCopy = _WBSLocalizedString();
  }

  v8 = descriptionCopy;
  v5 = MEMORY[0x1E69B1B00];
  v6 = _WBSLocalizedString();
  v7 = [v5 genericErrorDialogWithTitle:v6 message:v8 applicationModal:0];
  [(_SFPageLoadErrorController *)self addDialog:v7];
}

- (void)_showRepeatedWebProcessCrashError:(id)error URLString:(id)string
{
  stringCopy = string;
  errorCopy = error;
  v11 = _WBSLocalizedString();
  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  stringCopy = [v8 stringWithFormat:v9, stringCopy];

  [(_SFPageLoadErrorController *)self showErrorPageWithTitle:v11 bodyText:stringCopy forError:errorCopy];
}

- (void)_resetCrashCountSoon
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_DEFAULT, "%p: resetting WebContent crash count soon", &v6, 0xCu);
  }

  [(_SFPageLoadErrorController *)self clearCrashCountResetTimer];
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__resetCrashCount_ selector:0 userInfo:0 repeats:30.0];
  crashCountResetTimer = self->_crashCountResetTimer;
  self->_crashCountResetTimer = v4;
}

- (BOOL)updateCrashesAndShowCrashError:(id)error URLString:(id)string
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  stringCopy = string;
  currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
  activeLimitations = [currentProcess activeLimitations];
  [activeLimitations runTime];
  v11 = v10;
  v12 = *MEMORY[0x1E69C7698];

  if (v11 != v12)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218243;
      selfCopy2 = self;
      v20 = 2117;
      v21 = stringCopy;
      _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_DEFAULT, "%p: ignoring WebContent crash for %{sensitive}@ since app is about to suspend", &v18, 0x16u);
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  ++self->_crashesSinceLastSuccessfulLoad;
  v14 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    crashesSinceLastSuccessfulLoad = self->_crashesSinceLastSuccessfulLoad;
    v18 = 134218499;
    selfCopy2 = self;
    v20 = 2117;
    v21 = stringCopy;
    v22 = 2048;
    v23 = crashesSinceLastSuccessfulLoad;
    _os_log_error_impl(&dword_1D4644000, v14, OS_LOG_TYPE_ERROR, "%p: WebContent for %{sensitive}@ crashed, crash count: %zu", &v18, 0x20u);
  }

  if (self->_crashesSinceLastSuccessfulLoad < 2)
  {
    goto LABEL_8;
  }

  self->_crashesSinceLastSuccessfulLoad = 0;
  [(_SFPageLoadErrorController *)self _showRepeatedWebProcessCrashError:errorCopy URLString:stringCopy];
  v15 = 1;
LABEL_9:

  return v15;
}

- (void)scheduleResetCrashCount
{
  if (self->_crashesSinceLastSuccessfulLoad)
  {
    [(_SFPageLoadErrorController *)self _resetCrashCountSoon];
  }
}

- (void)webViewDidCommitErrorPagePreview:(id)preview
{
  v3 = MEMORY[0x1E696AEC0];
  previewCopy = preview;
  v5 = [v3 stringWithFormat:@"document.body.classList.remove('%@')", @"preview"];
  [previewCopy evaluateJavaScript:v5 completionHandler:0];
}

- (void)goBackButtonClicked
{
  protectionSpaceForInvalidCertificateBypass = self->_protectionSpaceForInvalidCertificateBypass;
  self->_protectionSpaceForInvalidCertificateBypass = 0;

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v4 = objc_loadWeakRetained(&self->_delegate);
  backForwardList = [WeakRetained backForwardList];
  currentItem = [backForwardList currentItem];
  v7 = [currentItem URL];

  backForwardList2 = [WeakRetained backForwardList];
  backItem = [backForwardList2 backItem];
  v10 = [backItem URL];

  if ([v7 safari_isEqualToURL:v10])
  {
    v11 = [(_SFPageLoadErrorController *)self _firstItemWithUniqueURLInBackListFromURL:v7];
    if (v11)
    {
      v12 = [WeakRetained goToBackForwardListItem:v11];
    }

    else
    {
      [v4 pageLoadErrorControllerClosePage:self];
    }
  }

  else if ([WeakRetained canGoBack])
  {
    goBack = [WeakRetained goBack];
  }

  else
  {
    [v4 pageLoadErrorControllerClosePage:self];
  }
}

- (id)_firstItemWithUniqueURLInBackListFromURL:(id)l
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  backForwardList = [WeakRetained backForwardList];
  backList = [backForwardList backList];

  backForwardList2 = [WeakRetained backForwardList];
  currentItem = [backForwardList2 currentItem];

  v10 = [currentItem URL];
  v11 = [lCopy safari_isEqualToURL:v10];

  if (v11)
  {
    v23 = backList;
    v24 = lCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    reverseObjectEnumerator = [backList reverseObjectEnumerator];
    v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [currentItem URL];
          v19 = [v17 URL];
          v20 = [v18 safari_isEqualToURL:v19];

          if (!v20)
          {
            v21 = v17;

            goto LABEL_13;
          }
        }

        v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_13:
    backList = v23;
    lCopy = v24;
  }

  else
  {
    v21 = currentItem;
  }

  return v21;
}

- (void)visitInsecureWebsiteWithTemporaryBypass
{
  mEMORY[0x1E69C8EE0] = [MEMORY[0x1E69C8EE0] sharedManager];
  [mEMORY[0x1E69C8EE0] rememberCertificateBypassForProtectionSpace:self->_protectionSpaceForInvalidCertificateBypass inPrivateBrowsing:1];

  [(_SFPageLoadErrorController *)self _continueAfterCertificateAlertWithURL:self->_certificateFailingURL trust:self->_certificateTrust recoveryAttempter:self->_certificateRecoveryAttempter];
  protectionSpaceForInvalidCertificateBypass = self->_protectionSpaceForInvalidCertificateBypass;
  self->_protectionSpaceForInvalidCertificateBypass = 0;
}

- (void)visitInsecureWebsite
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  legacyTLSWarningPageContext = self->_legacyTLSWarningPageContext;
  if (legacyTLSWarningPageContext)
  {
    failingURL = [(WBSCertificateWarningPageContext *)legacyTLSWarningPageContext failingURL];
    [WeakRetained pageLoadErrorController:self allowLegacyTLSConnectionForURL:failingURL navigateToURL:self->_clickThroughURL];

    v6 = self->_legacyTLSWarningPageContext;
    self->_legacyTLSWarningPageContext = 0;

    clickThroughURL = self->_clickThroughURL;
    self->_clickThroughURL = 0;
  }

  else if ([WeakRetained pageLoadErrorControllerShouldPermanentlyAcceptCertificate:self])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___SFPageLoadErrorController_visitInsecureWebsite__block_invoke;
    v9[3] = &unk_1E848F810;
    v9[4] = self;
    v8 = [MEMORY[0x1E69B1B00] permanentlyAcceptCertificateDialogWithAcceptanceHandler:v9];
    [(_SFPageLoadErrorController *)self addDialog:v8];
  }

  else
  {
    [(_SFPageLoadErrorController *)self visitInsecureWebsiteWithTemporaryBypass];
  }
}

- (void)openClockSettings
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=DATE_AND_TIME"];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

+ (void)clearOldCertificateBypasses
{
  defaultTrustManager = [MEMORY[0x1E6993C28] defaultTrustManager];
  [defaultTrustManager removeAllTrusts];
}

- (void)showCertificateInformation
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v3 = getCertificateViewControllerClass_softClass;
  v18 = getCertificateViewControllerClass_softClass;
  if (!getCertificateViewControllerClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getCertificateViewControllerClass_block_invoke;
    v14[3] = &unk_1E848F710;
    v14[4] = &v15;
    __getCertificateViewControllerClass_block_invoke(v14);
    v3 = v16[3];
  }

  v4 = v3;
  _Block_object_dispose(&v15, 8);
  v5 = [[v3 alloc] initWithTrust:self->_certificateTrust action:2];
  v6 = _WBSLocalizedString();
  [v5 setTitle:v6];

  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = _WBSLocalizedString();
  v9 = [v7 initWithTitle:v8 style:2 target:self action:sel__dismissCertificateViewButtonTapped];
  navigationItem = [v5 navigationItem];
  [navigationItem setRightBarButtonItem:v9];

  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  certificateNavigationViewController = self->_certificateNavigationViewController;
  self->_certificateNavigationViewController = v11;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pageLoadErrorController:self presentViewController:self->_certificateNavigationViewController];
}

- (void)_dismissCertificateViewButtonTapped
{
  [(UINavigationController *)self->_certificateNavigationViewController dismissViewControllerAnimated:1 completion:0];
  certificateNavigationViewController = self->_certificateNavigationViewController;
  self->_certificateNavigationViewController = 0;
}

- (void)visitWebsiteWithoutPrivateRelay
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pageLoadErrorControllerReloadWithoutPrivateRelay:self];
}

- (_SFPageLoadErrorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFDialogPresenting)dialogPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);

  return WeakRetained;
}

- (void)_resetCrashCountNow
{
  v5 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEFAULT, "%p: reset WebContent crash count", &v3, 0xCu);
    }

    *(self + 136) = 0;
  }
}

- (void)_fetchSpecializedMessageForError:(void *)a1 URL:(void *)a2 completionHandler:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_handleCertificateError:(void *)a1 forURL:(void *)a2 isMainFrame:recoveryAttempter:completionHandler:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = [a2 userInfo];
  v6 = [v5 safari_numberForKey:*MEMORY[0x1E695AD28]];
  [v6 intValue];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x12u);
}

@end