@interface _SFPageLoadErrorController
+ (void)clearOldCertificateBypasses;
- (BOOL)updateCrashesAndShowCrashError:(id)a3 URLString:(id)a4;
- (SFDialogPresenting)dialogPresenter;
- (_SFPageLoadErrorController)initWithWebView:(id)a3 secIdentitiesCache:(id)a4;
- (_SFPageLoadErrorControllerDelegate)delegate;
- (id)_certificateWarningPagePresenterProxy;
- (id)_errorMessageForNSURLErrorDomain:(id)a3 url:(id)a4;
- (id)_firstItemWithUniqueURLInBackListFromURL:(id)a3;
- (id)_genericMessageForError:(id)a3;
- (id)_titleForError:(id)a3;
- (void)_clearCertificateWarningPageHandlerInterface;
- (void)_continueAfterCertificateAlertWithURL:(id)a3 trust:(__SecTrust *)a4 recoveryAttempter:(id)a5;
- (void)_continueWithoutCredentialsUsingAlertContext:(id)a3;
- (void)_dismissCertificateViewButtonTapped;
- (void)_fetchSpecializedMessageForError:(id)a3 URL:(id)a4 completionHandler:(id)a5;
- (void)_handleCertificateError:(id)a3 forURL:(id)a4 isMainFrame:(BOOL)a5 recoveryAttempter:(id)a6 completionHandler:(id)a7;
- (void)_handleFrameLoadError:(id)a3 forURL:(id)a4 recoveryAttempter:(id)a5;
- (void)_loadCertificateWarningPageForContext:(id)a3;
- (void)_reachabilityChanged:(id)a3;
- (void)_resetCrashCountNow;
- (void)_resetCrashCountSoon;
- (void)_setFailedRequest:(id)a3;
- (void)_setUpCertificateWarningPageHandlerInterface;
- (void)_showRepeatedWebProcessCrashError:(id)a3 URLString:(id)a4;
- (void)addAlert:(id)a3;
- (void)addAlertWithTitle:(id)a3 bodyText:(id)a4;
- (void)addDialog:(id)a3;
- (void)addDisallowedFileURLAlert;
- (void)addDisallowedUseOfJavaScriptAlert;
- (void)addDownloadFailedAlertWithDescription:(id)a3;
- (void)addFormAlertWithTitle:(id)a3 decisionHandler:(id)a4;
- (void)addInvalidProfileAlert;
- (void)addInvalidURLAlert;
- (void)clearCrashCountResetTimer;
- (void)dealloc;
- (void)goBackButtonClicked;
- (void)handleClientCertificateAuthenticationChallenge:(id)a3 completionHandler:(id)a4;
- (void)handleFrameLoadError:(id)a3;
- (void)handleLegacyTLSWithFailingURL:(id)a3 clickThroughURL:(id)a4 authenticationChallenge:(id)a5;
- (void)handleSubframeCertificateError:(id)a3;
- (void)invalidate;
- (void)openClockSettings;
- (void)performAction:(int)a3 forAlert:(id)a4;
- (void)reloadAfterError;
- (void)scheduleResetCrashCount;
- (void)showCertificateInformation;
- (void)showErrorPageWithTitle:(id)a3 bodyText:(id)a4 learnMoreLink:(id)a5 forError:(id)a6;
- (void)visitInsecureWebsite;
- (void)visitInsecureWebsiteWithTemporaryBypass;
- (void)visitWebsiteWithoutPrivateRelay;
- (void)webViewDidCommitErrorPagePreview:(id)a3;
@end

@implementation _SFPageLoadErrorController

- (void)_setUpCertificateWarningPageHandlerInterface
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5046A38];
  certificateWarningPageHandlerInterface = self->_certificateWarningPageHandlerInterface;
  self->_certificateWarningPageHandlerInterface = v3;

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v5 = [WeakRetained _remoteObjectRegistry];
  [v5 registerExportedObject:self interface:self->_certificateWarningPageHandlerInterface];
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

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

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

- (_SFPageLoadErrorController)initWithWebView:(id)a3 secIdentitiesCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _SFPageLoadErrorController;
  v8 = [(_SFPageLoadErrorController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_webView, v6);
    objc_storeStrong(&v9->_secIdentitiesCache, a4);
    [(_SFPageLoadErrorController *)v9 _setUpCertificateWarningPageHandlerInterface];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v9 selector:sel__resetCrashCountDueToSuspendOrResume_ name:*MEMORY[0x1E69DE360] object:0];
    [v10 addObserver:v9 selector:sel__resetCrashCountDueToSuspendOrResume_ name:*MEMORY[0x1E69DE348] object:0];
    v11 = v9;
  }

  return v9;
}

- (void)_clearCertificateWarningPageHandlerInterface
{
  if (self->_certificateWarningPageHandlerInterface)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v5 = [WeakRetained _remoteObjectRegistry];

    [v5 unregisterExportedObject:self interface:self->_certificateWarningPageHandlerInterface];
    certificateWarningPageHandlerInterface = self->_certificateWarningPageHandlerInterface;
    self->_certificateWarningPageHandlerInterface = 0;
  }
}

- (void)_fetchSpecializedMessageForError:(id)a3 URL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 failingURL];
  if (!v11)
  {
    v11 = v9;
    v12 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_18:
      v10[2](v10, 0);
      goto LABEL_11;
    }

    [_SFPageLoadErrorController _fetchSpecializedMessageForError:v12 URL:v8 completionHandler:?];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if (![v8 safari_isPrivacyProxyError])
  {
    if ([v8 safari_isLocalNetworkContentFilteringError])
    {
      v14 = [v11 host];
      [v8 fetchLocalNetworkContentFilteringErrorMessageForFailingURLString:v14 withCompletionHandler:v10];
      goto LABEL_9;
    }

    if ([v8 _web_errorIsInDomain:*MEMORY[0x1E696A978]])
    {
      v13 = [(_SFPageLoadErrorController *)self _errorMessageForNSURLErrorDomain:v8 url:v11];
      goto LABEL_6;
    }

    if (![v8 _web_errorIsInDomain:*MEMORY[0x1E696A798]] || objc_msgSend(v8, "code") != 54)
    {
      v10[2](v10, 0);
      goto LABEL_10;
    }
  }

  v13 = _WBSLocalizedString();
LABEL_6:
  v14 = v13;
  v10[2](v10, v13);
LABEL_9:

LABEL_10:
LABEL_11:
}

- (id)_errorMessageForNSURLErrorDomain:(id)a3 url:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 userInfo];
  v8 = [v7 safari_URLForKey:*MEMORY[0x1E696A980]];
  v9 = [v8 absoluteString];
  v10 = [v9 stringByRemovingPercentEncoding];

  v11 = [v5 code];
  v12 = 0;
  if (v11 > -1103)
  {
    switch(v11)
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
        v18 = [v6 safari_userVisibleScheme];
        goto LABEL_19;
      default:
        if (v11 == -1102)
        {
          v20 = MEMORY[0x1E696AEC0];
          v16 = _WBSLocalizedString();
          v19 = [MEMORY[0x1E696AC08] defaultManager];
          v21 = [v6 path];
          v22 = [v19 displayNameAtPath:v21];
          v12 = [v20 stringWithFormat:v16, v22];

          goto LABEL_21;
        }

        if (v11 != -1100)
        {
          goto LABEL_24;
        }

        v17 = MEMORY[0x1E696AEC0];
        v16 = _WBSLocalizedString();
        v18 = [v6 path];
        break;
    }

    goto LABEL_19;
  }

  if (v11 > -1201)
  {
    if (v11 == -1200)
    {
      if (isDiffieHellmanError(v5))
      {
        v17 = MEMORY[0x1E696AEC0];
        v16 = _WBSLocalizedString();
        v18 = [v6 host];
LABEL_19:
        v19 = v18;
        v12 = [v17 stringWithFormat:v16, v18];
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (v11 != -1103)
    {
      goto LABEL_24;
    }
  }

  else if (v11 == -2000)
  {
LABEL_10:
    v13 = [MEMORY[0x1E69C8860] currentDevice];
    v14 = [v13 deviceClass];

    if (v14 == 3 && [v10 length])
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = _WBSLocalizedString();
      v12 = [v15 stringWithFormat:v16, v10];
LABEL_22:

      goto LABEL_24;
    }
  }

  else if (v11 != -1205)
  {
    goto LABEL_24;
  }

LABEL_23:
  v12 = _WBSLocalizedString();
LABEL_24:

  return v12;
}

- (id)_genericMessageForError:(id)a3
{
  v3 = [a3 _web_localizedDescription];
  if (!v3)
  {
    v3 = _WBSLocalizedString();
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  v6 = [v4 stringWithFormat:v5, v3];

  return v6;
}

- (void)addDialog:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);
  [WeakRetained presentDialog:v4 sender:self];

  v5 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v5 pageLoadErrorControllerDidAddAlert:self];
  }
}

- (void)addAlert:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69B1B00];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __39___SFPageLoadErrorController_addAlert___block_invoke;
  v11 = &unk_1E848FA28;
  v12 = v4;
  v13 = self;
  v6 = v4;
  v7 = [v5 dialogWithWebUIAlert:v6 completionHandler:&v8];
  [(_SFPageLoadErrorController *)self addDialog:v7, v8, v9, v10, v11];
}

- (void)_continueAfterCertificateAlertWithURL:(id)a3 trust:(__SecTrust *)a4 recoveryAttempter:(id)a5
{
  v11 = a5;
  v6 = [MEMORY[0x1E695DF70] array];
  if (a4)
  {
    CertificateCount = SecTrustGetCertificateCount(a4);
    if (CertificateCount >= 1)
    {
      v8 = CertificateCount;
      for (i = 0; i != v8; ++i)
      {
        CertificateAtIndex = SecTrustGetCertificateAtIndex(a4, i);
        if (CertificateAtIndex)
        {
          [v6 addObject:CertificateAtIndex];
        }
      }
    }
  }

  if (v11)
  {
    v11[2]();
  }
}

- (void)_continueWithoutCredentialsUsingAlertContext:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v8 = v3;
    v4 = [v3 objectForKey:@"reason"];
    v5 = [v4 isEqualToString:@"reasonAuthenticationChallenge"];

    v3 = v8;
    if (v5)
    {
      v6 = [v8 objectForKey:@"completionHandler"];
      v7 = v6;
      if (v6)
      {
        (*(v6 + 16))(v6, 3, 0);
      }

      v3 = v8;
    }
  }
}

- (void)performAction:(int)a3 forAlert:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 type];
  if (v7 == 4)
  {
    if (a3 != 4)
    {
      if (a3 != 5)
      {
        goto LABEL_19;
      }

      v10 = [v6 context];
      v11 = [v6 selectedIdentity];
      if (v11)
      {
        v12 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v6 identities];
          v26 = 134217984;
          v27 = [v14 count];
          _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_DEFAULT, "User has selected an identity out of %lu", &v26, 0xCu);
        }

        v15 = [v10 objectForKey:@"authenticationChallenge"];
        v16 = [v15 protectionSpace];
        v17 = [v16 safari_identityPreferenceDomain];
        [(_SFPageLoadErrorController *)self _cacheSecIdentityIfNeeded:v11 forIdentityDomain:v17];

        proceedWithClientCertificateIdentity(v11, v10);
        v18 = [v6 identities];
        v19 = [v18 count];

        if (v19 == 1)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v21 = [WeakRetained pageLoadErrorControllerGetSecIdentityPreferencesController:self];

          v22 = [v10 objectForKeyedSubscript:@"authenticationChallenge"];
          v23 = [v22 protectionSpace];
          v24 = [v23 _sf_highLevelDomainAndPort];
          [v21 saveShouldUseOnlyAvailableIdentityWithoutPrompting:1 forDomainAndPort:v24];
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
    v10 = [v6 context];
    [(_SFPageLoadErrorController *)self _continueWithoutCredentialsUsingAlertContext:v10];
    goto LABEL_18;
  }

  if (v7 != 3)
  {
    goto LABEL_19;
  }

  if (a3 == 4)
  {
    goto LABEL_17;
  }

  if (a3 == 5)
  {
    v8 = [v6 context];
    v9 = newAlertToListPossibleClientSideCertificatesWithContext(v8);

    [(_SFPageLoadErrorController *)self addAlert:v9];
  }

LABEL_19:
}

- (void)addFormAlertWithTitle:(id)a3 decisionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69B1B00];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68___SFPageLoadErrorController_addFormAlertWithTitle_decisionHandler___block_invoke;
  v10[3] = &unk_1E848FA50;
  v11 = v6;
  v8 = v6;
  v9 = [v7 formSubmissionDialogWithMessage:a3 completionHandler:v10];
  [(_SFPageLoadErrorController *)self addDialog:v9];
}

- (void)addAlertWithTitle:(id)a3 bodyText:(id)a4
{
  v5 = [MEMORY[0x1E69B1B00] genericErrorDialogWithTitle:a3 message:a4 applicationModal:1];
  [(_SFPageLoadErrorController *)self addDialog:v5];
}

- (void)showErrorPageWithTitle:(id)a3 bodyText:(id)a4 learnMoreLink:(id)a5 forError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a6 failingURL];
  if (v13)
  {
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 pathForResource:@"StandardError" ofType:@"html"];

    if (v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v15 encoding:4 error:0];
      if (v16)
      {
        v17 = [v11 safari_stringByReplacingMarkupCharactersWithHTMLEntities];
        v18 = [v17 safari_stringByReplacingLastOccurrenceOfWhitespaceWithANonBreakingSpace];

        v19 = [v18 stringByReplacingOccurrencesOfString:@"\\n" withString:@"<br>"];

        v20 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"<br>"];

        v43 = v20;
        if (v20)
        {
          v41 = v16;
          if (v12)
          {
            v21 = MEMORY[0x1E696AEC0];
            v22 = _WBSLocalizedString();
            v23 = [v21 stringWithFormat:@" <a href=%@>%@</a>", v12, v22];
            v24 = [v43 stringByAppendingString:v23];

            v43 = v24;
          }

          v25 = [MEMORY[0x1E695DF58] preferredLanguages];
          v26 = [v25 firstObject];

          v27 = &stru_1F4FE9E38;
          v42 = v26;
          if (v26 && [MEMORY[0x1E695DF58] characterDirectionForLanguage:v26] == 2)
          {
            v27 = @"body { direction: rtl; }\n";
          }

          v28 = MEMORY[0x1E69C8860];
          v40 = v27;
          v29 = [v28 currentDevice];
          v30 = [v29 deviceClass];

          v31 = @"phone";
          if (v30 == 6)
          {
            v31 = @"watch";
          }

          if (v30 == 3)
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
          v37 = [v10 safari_stringByReplacingMarkupCharactersWithHTMLEntities];
          v38 = v36;
          v16 = v41;
          v39 = [v38 stringWithFormat:v41, v42, v40, v37, v32, v43];

          if (v39)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __85___SFPageLoadErrorController_showErrorPageWithTitle_bodyText_learnMoreLink_forError___block_invoke;
            block[3] = &unk_1E848F6B0;
            block[4] = self;
            v45 = v39;
            v46 = v13;
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
    v5 = [WeakRetained _remoteObjectRegistry];
    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50A2AA0];
    v7 = [v5 remoteObjectProxyWithInterface:v6];
    v8 = self->_certificateWarningPagePresenterProxy;
    self->_certificateWarningPagePresenterProxy = v7;

    certificateWarningPagePresenterProxy = self->_certificateWarningPagePresenterProxy;
  }

  return certificateWarningPagePresenterProxy;
}

- (void)_loadCertificateWarningPageForContext:(id)a3
{
  v4 = a3;
  if (!self->_certificateWarningPageHandlerInterfaceInvalidated)
  {
    v5 = [(_SFPageLoadErrorController *)self _certificateWarningPagePresenterProxy];
    [v5 prepareCertificateWarningPage:v4];

    v6 = [MEMORY[0x1E696AAE8] safari_safariSharedBundle];
    v7 = [v6 URLForResource:@"CertificateWarningFall2023" withExtension:@"html"];

    v8 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v7 encoding:4 error:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68___SFPageLoadErrorController__loadCertificateWarningPageForContext___block_invoke;
    v11[3] = &unk_1E848F570;
    v11[4] = self;
    v12 = v8;
    v13 = v7;
    v14 = v4;
    v9 = v7;
    v10 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (void)_handleCertificateError:(id)a3 forURL:(id)a4 isMainFrame:(BOOL)a5 recoveryAttempter:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = [WeakRetained pageLoadErrorControllerShouldHandleCertificateError:self];

  if (v17)
  {
    if (v9 && [v12 safari_isPrivacyProxyFailClosedError])
    {
      v18 = [MEMORY[0x1E69C9808] sharedManager];
      v19 = [v18 isPrivacyProxySetToTrackersAndWebsites];

      v20 = objc_alloc(MEMORY[0x1E69C8EE8]);
      v21 = [(_SFPageLoadErrorController *)self _firstItemWithUniqueURLInBackListFromURL:v13];
      v22 = [v20 initPrivateRelayFailClosedNavigationWarningWithFailingURL:v13 isPrivateRelaySetToTrackersAndWebsites:v19 canGoBack:v21 != 0];
      [(_SFPageLoadErrorController *)self _loadCertificateWarningPageForContext:v22];

      if (v15)
      {
        v15[2](v15, 1);
      }

      goto LABEL_36;
    }

    if ([v12 _web_errorIsInDomain:*MEMORY[0x1E696A978]])
    {
      v23 = [v12 failingURL];
      v24 = [v23 host];

      v25 = [v12 code];
      v26 = v25;
      if ((v25 & 0xFFFFFFFFFFFFFFFCLL) != 0xFFFFFFFFFFFFFB4CLL && (v25 & 0xFFFFFFFFFFFFFFFELL) != 0xFFFFFFFFFFFFFB4ALL)
      {
        if (v15)
        {
          v15[2](v15, 0);
        }

        goto LABEL_35;
      }

      v27 = WBS_LOG_CHANNEL_PREFIXCertificates();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [_SFPageLoadErrorController _handleCertificateError:v27 forURL:v12 isMainFrame:? recoveryAttempter:? completionHandler:?];
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

        if (v15)
        {
          v15[2](v15, 1);
        }

        goto LABEL_35;
      }

      hostname = v24;
      v45 = [v12 userInfo];
      v30 = [v45 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
      v31 = [v12 userInfo];
      v32 = [v31 objectForKeyedSubscript:@"NSErrorPeerCertificateChainKey"];

      v44 = v30;
      v33 = [v30 userInfo];
      v34 = [v33 objectForKeyedSubscript:*MEMORY[0x1E695AE78]];

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
        if (v15)
        {
          v15[2](v15, 0);
        }

        goto LABEL_34;
      }

      v36 = objc_loadWeakRetained(&self->_delegate);
      v37 = [MEMORY[0x1E69C8EE0] sharedManager];
      v43 = v36;
      v38 = [v37 didInvalidCertificateExceptionsApplySuccessfullyForProtectionSpace:self->_protectionSpaceForInvalidCertificateBypass inPrivateBrowsing:{objc_msgSend(v36, "pageLoadErrorControllerShouldPermanentlyAcceptCertificate:", self)}];

      self->_certificateTrust = CFRetain(trust);
      v39 = _Block_copy(v14);
      certificateRecoveryAttempter = self->_certificateRecoveryAttempter;
      self->_certificateRecoveryAttempter = v39;

      objc_storeStrong(&self->_certificateFailingURL, a4);
      if (v9)
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
          v52 = v15;
          v49 = v12;
          v32 = certificates;
          v50 = certificates;
          v51 = v13;
          [v41 safari_dateFromNTPServerWithTimeout:v48 completionHandler:v42];

LABEL_33:
LABEL_34:

          v24 = hostname;
LABEL_35:

          goto LABEL_36;
        }

        [(_SFPageLoadErrorController *)self _continueAfterCertificateAlertWithURL:v13 trust:self->_certificateTrust recoveryAttempter:v14];
      }

      v32 = certificates;
      if (v15)
      {
        v15[2](v15, 1);
      }

      goto LABEL_33;
    }
  }

  if (v15)
  {
    v15[2](v15, 0);
  }

LABEL_36:
}

- (void)_reachabilityChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 safari_BOOLForKey:*MEMORY[0x1E698B610]];

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

- (void)_setFailedRequest:(id)a3
{
  v5 = a3;
  failedRequest = self->_failedRequest;
  v14 = v5;
  if (failedRequest != v5)
  {
    if (failedRequest)
    {
      v7 = [(NSURLRequest *)failedRequest URL];
      v8 = [v7 host];

      if (v8)
      {
        v9 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
        [v9 removeObserver:self forHostname:v8];
      }
    }

    objc_storeStrong(&self->_failedRequest, a3);
    self->_reloadAfterResume = 0;
    v10 = self->_failedRequest;
    if (v10)
    {
      v11 = [(NSURLRequest *)v10 URL];
      v12 = [v11 host];

      if (v12)
      {
        v13 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
        [v13 addObserver:self selector:sel__reachabilityChanged_ forHostname:v12];
      }
    }
  }
}

- (id)_titleForError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  if (v4 != -1205 && v4 != -1102 && v4 != -1100)
  {
    isDiffieHellmanError(v3);
  }

  v5 = _WBSLocalizedString();

  return v5;
}

- (void)_handleFrameLoadError:(id)a3 forURL:(id)a4 recoveryAttempter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 code];
  if ((![v8 _web_errorIsInDomain:*MEMORY[0x1E69E3000]] || v11 != 102) && (!objc_msgSend(v8, "_web_errorIsInDomain:", *MEMORY[0x1E696A978]) || v11 != -1012 && v11 != -999))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77___SFPageLoadErrorController__handleFrameLoadError_forURL_recoveryAttempter___block_invoke;
    v12[3] = &unk_1E848FB18;
    v12[4] = self;
    v13 = v8;
    v15 = v11;
    v14 = v9;
    [(_SFPageLoadErrorController *)self _handleCertificateError:v13 forURL:v14 isMainFrame:1 recoveryAttempter:v10 completionHandler:v12];
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

- (void)handleFrameLoadError:(id)a3
{
  v4 = a3;
  v5 = [v4 failingURL];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___SFPageLoadErrorController_handleFrameLoadError___block_invoke;
  v7[3] = &unk_1E848FB40;
  v8 = v4;
  v6 = v4;
  [(_SFPageLoadErrorController *)self _handleFrameLoadError:v6 forURL:v5 recoveryAttempter:v7];
}

- (void)handleSubframeCertificateError:(id)a3
{
  v4 = a3;
  v5 = [v4 failingURL];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___SFPageLoadErrorController_handleSubframeCertificateError___block_invoke;
  v7[3] = &unk_1E848FB40;
  v8 = v4;
  v6 = v4;
  [(_SFPageLoadErrorController *)self _handleCertificateError:v6 forURL:v5 isMainFrame:0 recoveryAttempter:v7 completionHandler:0];
}

- (void)handleLegacyTLSWithFailingURL:(id)a3 clickThroughURL:(id)a4 authenticationChallenge:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100___SFPageLoadErrorController_handleLegacyTLSWithFailingURL_clickThroughURL_authenticationChallenge___block_invoke;
  v11[3] = &unk_1E848FB68;
  objc_copyWeak(&v14, &location);
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)handleClientCertificateAuthenticationChallenge:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained pageLoadErrorControllerGetSecIdentityPreferencesController:self];

  v10 = [v6 protectionSpace];
  v11 = [v10 _sf_highLevelDomainAndPort];

  v12 = [v9 shouldUseOnlyAvailableIdentityWithoutPromptingForDomainAndPort:v11];
  v13 = WBS_LOG_CHANNEL_PREFIXClientAuthentication();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v28 = v11;
    v29 = 1024;
    v30 = v12;
    _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_DEFAULT, "Received challenge for domain: %{sensitive}@, use only available identity without prompt: %d", buf, 0x12u);
  }

  v26[0] = v6;
  v26[1] = @"reasonAuthenticationChallenge";
  v14 = [v7 copy];

  v26[2] = v14;
  v25[3] = @"useOnlyAvailableIdentityWithoutPrompting";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v12];
  v26[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];

  secIdentitiesCache = self->_secIdentitiesCache;
  v18 = [v6 protectionSpace];
  v19 = [v18 safari_identityPreferenceDomain];
  v20 = [(WBSSecIdentitiesCache *)secIdentitiesCache secIdentityForDomain:v19];

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

- (void)addDownloadFailedAlertWithDescription:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = _WBSLocalizedString();
  }

  v8 = v4;
  v5 = MEMORY[0x1E69B1B00];
  v6 = _WBSLocalizedString();
  v7 = [v5 genericErrorDialogWithTitle:v6 message:v8 applicationModal:0];
  [(_SFPageLoadErrorController *)self addDialog:v7];
}

- (void)_showRepeatedWebProcessCrashError:(id)a3 URLString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = _WBSLocalizedString();
  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  v10 = [v8 stringWithFormat:v9, v6];

  [(_SFPageLoadErrorController *)self showErrorPageWithTitle:v11 bodyText:v10 forError:v7];
}

- (void)_resetCrashCountSoon
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_DEFAULT, "%p: resetting WebContent crash count soon", &v6, 0xCu);
  }

  [(_SFPageLoadErrorController *)self clearCrashCountResetTimer];
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__resetCrashCount_ selector:0 userInfo:0 repeats:30.0];
  crashCountResetTimer = self->_crashCountResetTimer;
  self->_crashCountResetTimer = v4;
}

- (BOOL)updateCrashesAndShowCrashError:(id)a3 URLString:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69C75D0] currentProcess];
  v9 = [v8 activeLimitations];
  [v9 runTime];
  v11 = v10;
  v12 = *MEMORY[0x1E69C7698];

  if (v11 != v12)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218243;
      v19 = self;
      v20 = 2117;
      v21 = v7;
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
    v19 = self;
    v20 = 2117;
    v21 = v7;
    v22 = 2048;
    v23 = crashesSinceLastSuccessfulLoad;
    _os_log_error_impl(&dword_1D4644000, v14, OS_LOG_TYPE_ERROR, "%p: WebContent for %{sensitive}@ crashed, crash count: %zu", &v18, 0x20u);
  }

  if (self->_crashesSinceLastSuccessfulLoad < 2)
  {
    goto LABEL_8;
  }

  self->_crashesSinceLastSuccessfulLoad = 0;
  [(_SFPageLoadErrorController *)self _showRepeatedWebProcessCrashError:v6 URLString:v7];
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

- (void)webViewDidCommitErrorPagePreview:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"document.body.classList.remove('%@')", @"preview"];
  [v4 evaluateJavaScript:v5 completionHandler:0];
}

- (void)goBackButtonClicked
{
  protectionSpaceForInvalidCertificateBypass = self->_protectionSpaceForInvalidCertificateBypass;
  self->_protectionSpaceForInvalidCertificateBypass = 0;

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v4 = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained backForwardList];
  v6 = [v5 currentItem];
  v7 = [v6 URL];

  v8 = [WeakRetained backForwardList];
  v9 = [v8 backItem];
  v10 = [v9 URL];

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
    v13 = [WeakRetained goBack];
  }

  else
  {
    [v4 pageLoadErrorControllerClosePage:self];
  }
}

- (id)_firstItemWithUniqueURLInBackListFromURL:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v6 = [WeakRetained backForwardList];
  v7 = [v6 backList];

  v8 = [WeakRetained backForwardList];
  v9 = [v8 currentItem];

  v10 = [v9 URL];
  v11 = [v4 safari_isEqualToURL:v10];

  if (v11)
  {
    v23 = v7;
    v24 = v4;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v7 reverseObjectEnumerator];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [v9 URL];
          v19 = [v17 URL];
          v20 = [v18 safari_isEqualToURL:v19];

          if (!v20)
          {
            v21 = v17;

            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_13:
    v7 = v23;
    v4 = v24;
  }

  else
  {
    v21 = v9;
  }

  return v21;
}

- (void)visitInsecureWebsiteWithTemporaryBypass
{
  v3 = [MEMORY[0x1E69C8EE0] sharedManager];
  [v3 rememberCertificateBypassForProtectionSpace:self->_protectionSpaceForInvalidCertificateBypass inPrivateBrowsing:1];

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
    v5 = [(WBSCertificateWarningPageContext *)legacyTLSWarningPageContext failingURL];
    [WeakRetained pageLoadErrorController:self allowLegacyTLSConnectionForURL:v5 navigateToURL:self->_clickThroughURL];

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
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=DATE_AND_TIME"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

+ (void)clearOldCertificateBypasses
{
  v2 = [MEMORY[0x1E6993C28] defaultTrustManager];
  [v2 removeAllTrusts];
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
  v10 = [v5 navigationItem];
  [v10 setRightBarButtonItem:v9];

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
  if (a1)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = a1;
      _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEFAULT, "%p: reset WebContent crash count", &v3, 0xCu);
    }

    *(a1 + 136) = 0;
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