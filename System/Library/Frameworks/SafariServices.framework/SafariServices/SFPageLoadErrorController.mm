@interface SFPageLoadErrorController
@end

@implementation SFPageLoadErrorController

uint64_t __39___SFPageLoadErrorController_addAlert___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) actionHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) actionHandler];
    v5[2](v5, *(a1 + 32), a2);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v6 performAction:a2 forAlert:v7];
}

void __85___SFPageLoadErrorController_showErrorPageWithTitle_bodyText_learnMoreLink_forError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  v2 = a1[5];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:{@"data:text/html, "}];
  [WeakRetained _loadAlternateHTMLString:v2 baseURL:v3 forUnreachableURL:a1[6]];
}

void __68___SFPageLoadErrorController__loadCertificateWarningPageForContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) failingURL];
  [WeakRetained _loadAlternateHTMLString:v2 baseURL:v3 forUnreachableURL:v4];
}

void __109___SFPageLoadErrorController__handleCertificateError_forURL_isMainFrame_recoveryAttempter_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 72) == 1)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    [a2 timeIntervalSinceNow];
    v5 = v4;
    v6 = [MEMORY[0x1E69C8EE8] certificateWarningCannotBeBypassedForTrust:*(*(a1 + 32) + 40)];
    v7 = [MEMORY[0x1E69C8EE8] certificateWarningCategoryForError:*(a1 + 40) trustIncludesRevokedCertificate:v6 clockSkew:*&v5];
    v8 = [MEMORY[0x1E69C8EE8] numberOfDaysBetweenCertificateValidityRangeAndNow:*(a1 + 48)];
    objc_initWeak(&location, *(a1 + 32));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109___SFPageLoadErrorController__handleCertificateError_forURL_isMainFrame_recoveryAttempter_completionHandler___block_invoke_2;
    block[3] = &unk_1E848FA78;
    objc_copyWeak(v12, &location);
    v11 = *(a1 + 64);
    v12[1] = v7;
    v10 = *(a1 + 56);
    v12[2] = v8;
    v12[3] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __109___SFPageLoadErrorController__handleCertificateError_forURL_isMainFrame_recoveryAttempter_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x1E69C8EE8]);
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = objc_loadWeakRetained(WeakRetained + 2);
    v7 = [v6 backForwardList];
    v8 = [v7 currentItem];
    v9 = [v2 initWithWarningCategory:v4 failingURL:v3 numberOfDaysInvalid:v5 canGoBack:v8 != 0 clockSkew:*(a1 + 72)];

    [WeakRetained _loadCertificateWarningPageForContext:v9];
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 1);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __77___SFPageLoadErrorController__handleFrameLoadError_forURL_recoveryAttempter___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (v3[112] == 1)
    {
      [v3 clearFailedRequest];
      *(*(a1 + 32) + 112) = 0;
    }

    else
    {
      if ([*(a1 + 40) _web_errorIsInDomain:*MEMORY[0x1E696A978]] && (*(a1 + 56) + 1009) <= 6)
      {
        v4 = 0x61u >> (*(a1 + 56) - 15);
      }

      else
      {
        v4 = 0;
      }

      if ([*(a1 + 40) _web_errorIsInDomain:@"WebKitServiceWorker"])
      {
        v5 = *(a1 + 56) == 0;
      }

      else
      {
        v5 = 0;
      }

      if ((v4 | v5))
      {
        v6 = *(a1 + 32);
        v7 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:*(a1 + 48)];
        [v6 _setFailedRequest:v7];
      }

      v8 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __77___SFPageLoadErrorController__handleFrameLoadError_forURL_recoveryAttempter___block_invoke_cold_1((a1 + 40), v8);
      }

      if (isDiffieHellmanError(*(a1 + 40)))
      {
        v9 = @"https://support.apple.com/kb/HT204937";
      }

      else
      {
        v9 = 0;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __77___SFPageLoadErrorController__handleFrameLoadError_forURL_recoveryAttempter___block_invoke_246;
      aBlock[3] = &unk_1E848FAC8;
      v10 = *(a1 + 40);
      aBlock[4] = *(a1 + 32);
      v20 = v10;
      v21 = v9;
      v11 = _Block_copy(aBlock);
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __77___SFPageLoadErrorController__handleFrameLoadError_forURL_recoveryAttempter___block_invoke_2;
      v16[3] = &unk_1E848FAF0;
      v16[4] = v13;
      v17 = v12;
      v18 = v11;
      v15 = v11;
      [v13 _fetchSpecializedMessageForError:v17 URL:v14 completionHandler:v16];
    }
  }
}

void __77___SFPageLoadErrorController__handleFrameLoadError_forURL_recoveryAttempter___block_invoke_246(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _titleForError:v4];
  [*(a1 + 32) showErrorPageWithTitle:v6 bodyText:v5 learnMoreLink:*(a1 + 48) forError:*(a1 + 40)];
}

void __77___SFPageLoadErrorController__handleFrameLoadError_forURL_recoveryAttempter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [*(a1 + 32) _genericMessageForError:*(a1 + 40)];
  }

  v4 = v3;
  (*(*(a1 + 48) + 16))();
}

void __100___SFPageLoadErrorController_handleLegacyTLSWithFailingURL_clickThroughURL_authenticationChallenge___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = objc_alloc(MEMORY[0x1E69C8EE8]);
    v4 = *(a1 + 32);
    v5 = objc_loadWeakRetained(v10 + 2);
    v6 = [v5 backForwardList];
    v7 = [v6 currentItem];
    v8 = [v3 initLegacyTLSWarningWithFailingURL:v4 canGoBack:v7 != 0];
    v9 = v10[6];
    v10[6] = v8;

    objc_storeStrong(v10 + 12, *(a1 + 40));
    [v10 _loadCertificateWarningPageForContext:v10[6]];
    WeakRetained = v10;
  }
}

void __50___SFPageLoadErrorController_visitInsecureWebsite__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8EE0] sharedManager];
  [v2 rememberCertificateBypassForProtectionSpace:*(*(a1 + 32) + 152) inPrivateBrowsing:0];

  [*(a1 + 32) _continueAfterCertificateAlertWithURL:*(*(a1 + 32) + 88) trust:*(*(a1 + 32) + 40) recoveryAttempter:*(*(a1 + 32) + 80)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = 0;
}

void __77___SFPageLoadErrorController__handleFrameLoadError_forURL_recoveryAttempter___block_invoke_cold_1(id *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [v3 safari_privacyPreservingDescription];
  v6 = [*a1 userInfo];
  v12 = [v6 objectForKeyedSubscript:@"networkTaskDescription"];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

@end