@interface SFPageFormatMenuController
@end

@implementation SFPageFormatMenuController

void __89___SFPageFormatMenuController__updateSiriReaderPlaybackStateAndIdentifierWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89___SFPageFormatMenuController__updateSiriReaderPlaybackStateAndIdentifierWithCompletion___block_invoke_2;
  v3[3] = &unk_1E8493EC8;
  v4 = v2;
  v5 = *(a1 + 40);
  [v2 updateContentIdentifierOnQueue:MEMORY[0x1E69E96A0] completion:v3];
}

void __89___SFPageFormatMenuController__updateSiriReaderPlaybackStateAndIdentifierWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) setNowPlayingContentIdentifier:?];
  v3 = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
  v4 = [v3 activeSiriReaderSessionIdentifier];

  if (!v4 || (WBSIsEqual() & 1) == 0)
  {
    [*(a1 + 32) setCurrentPlaybackState:0];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __115___SFPageFormatMenuController__presentBrowsingAssistantFromViewController_withSourceInfo_fromSafariViewController___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) shouldPassthroughSuperview])
  {
    v4 = [v3 superview];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  v7[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [*(a1 + 40) setPassthroughViews:v6];
}

double __115___SFPageFormatMenuController__presentBrowsingAssistantFromViewController_withSourceInfo_fromSafariViewController___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained detentHeight];
    v7 = v6;
    [v3 maximumDetentValue];
    v9 = fmin(v7, v8);
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v10 = [*(a1 + 32) view];
      v11 = [v10 window];
      [v11 bounds];
      v9 = fmin(v9, v12 * 0.75);
    }
  }

  else
  {
    [v3 maximumDetentValue];
    v9 = v13;
  }

  return v9;
}

void __101___SFPageFormatMenuController_presentMenuFromViewController_withSourceInfo_fromSafariViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  if ([v4 shouldPassthroughSuperview])
  {
    v6 = [v5 superview];

    v5 = v6;
  }

  [v3 insertObject:v5 atIndex:0];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 48) popoverPresentationController];
  [v8 setPassthroughViews:v7];
}

id __46___SFPageFormatMenuController__extensionItems__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) webExtensionForExtension:a2];
  v4 = [v3 toolbarItem];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 alertItemForTab:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __51___SFPageFormatMenuController__siriReaderAlertItem__block_invoke(id *a1, void *a2)
{
  v3 = MEMORY[0x1E69B1B90];
  v4 = a2;
  v5 = [v3 sharedPlaybackController];
  [v5 setNowPlayingContentIdentifier:v4];

  v6 = [a1[4] siriReaderPlaybackStateForActiveTab];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v8 = [WeakRetained _titleForPlaybackState:v6];
    [v10[4] setTitle:v8];

    if ([a1[4] canReadActiveLanguage] && objc_msgSend(a1[5], "isReaderAvailable"))
    {
      v9 = [a1[6] isBlockedByScreenTime] ^ 1;
    }

    else
    {
      v9 = 0;
    }

    [v10[4] setEnabled:v9];
    [v10[4] notifyObserversItemDidUpdate];
    WeakRetained = v10;
  }
}

void __65___SFPageFormatMenuController__endListeningToSiriReaderAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained(WeakRetained + 17);
  v5 = [v4 activeDocument];
  [v5 dismissSiriReaderMediaSessionImmediately:1];

  [WeakRetained updateShouldShowListeningControls:0];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

uint64_t __53___SFPageFormatMenuController__moreControlsAlertItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateShouldShowListeningControls:0];
  v2 = *(a1 + 32);

  return [v2 reloadAlert];
}

uint64_t __58___SFPageFormatMenuController__listeningControlsAlertItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateShouldShowListeningControls:1];
  v2 = *(a1 + 32);

  return [v2 reloadAlert];
}

void __47___SFPageFormatMenuController__readerAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained browserContentController];
  [v4 toggleShowingReaderForUserAction];

  [v5 dismissViewControllerAnimated:1 completion:0];
}

void __72___SFPageFormatMenuController__siriReaderAlertItemWithState_identifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 siriReadThisMenuInvocation];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

void __51___SFPageFormatMenuController__mediaStateAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained browserContentController];
  v5 = [v4 activeDocument];
  [v5 toggleMediaStateMuted];

  [v6 dismissViewControllerAnimated:1 completion:0];
}

void __64___SFPageFormatMenuController__otherTabAudioMediaStateAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 toggleMediaStateMuted];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

void __50___SFPageFormatMenuController__downloadsAlertItem__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___SFPageFormatMenuController__downloadsAlertItem__block_invoke_2;
  v7[3] = &unk_1E848F8F0;
  objc_copyWeak(&v8, (a1 + 32));
  [v5 dismissViewControllerAnimated:1 completion:v7];
  objc_destroyWeak(&v8);
}

void __50___SFPageFormatMenuController__downloadsAlertItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained browserContentController];
  [v1 presentDownloadsViewController];
}

uint64_t __76___SFPageFormatMenuController__desktopMobileToggleAlertItemWithOrientation___block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {

    return [v3 requestStandardSite];
  }

  else
  {

    return [v3 requestDesktopSite];
  }
}

uint64_t __59___SFPageFormatMenuController__pauseAllAnimationsAlertItem__block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _pauseAllAnimationsWithCompletionHandler:0];
  }

  return result;
}

uint64_t __58___SFPageFormatMenuController__playAllAnimationsAlertItem__block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _playAllAnimationsWithCompletionHandler:0];
  }

  return result;
}

void __51___SFPageFormatMenuController__fullScreenAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _anchorInWindowCoordinatesForAlert:v4];
  [v4 dismissViewControllerAnimated:1 completion:0];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  [WeakRetained setKeepBarsMinimized:1];
}

void __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [_SFTranslationTargetLocaleAlertController translationAlertControllerWithTranslationContext:*(a1 + 32)];
  v6 = [v3 provenance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke_2;
  v15[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  v15[4] = v6;
  [v5 setAnalyticsHandler:v15];
  v7 = [v3 presentingViewController];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke_3;
  v11[3] = &unk_1E848F6B0;
  v12 = WeakRetained;
  v13 = v5;
  v14 = v7;
  v8 = v7;
  v9 = v5;
  v10 = WeakRetained;
  [v8 dismissViewControllerAnimated:1 completion:v11];
}

void __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 15;
  }

  else
  {
    v3 = 16;
  }

  v4 = [MEMORY[0x1E69C8810] sharedLogger];
  [v4 _sf_didPerformFormatMenuAction:v3 provenance:*(a1 + 32)];
}

uint64_t __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) configurePopoverWithSourceInfo:?];
  }

  v3 = *(a1 + 40);
  v2 = *(a1 + 48);

  return [v2 presentViewController:v3 animated:1 completion:0];
}

void __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [_SFTranslationTargetLocaleAlertController translationAlertControllerWithTranslationContext:*(a1 + 32)];
    v4 = [WeakRetained viewController];
    v5 = [v4 presentingViewController];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73___SFPageFormatMenuController__buildTranslationAlertItemsWithSourceInfo___block_invoke_5;
    v8[3] = &unk_1E848F548;
    v9 = v5;
    v10 = v3;
    v6 = v3;
    v7 = v5;
    [v7 dismissViewControllerAnimated:1 completion:v8];
  }
}

uint64_t __70___SFPageFormatMenuController__translateAlertItemForLocaleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 requestTranslatingWebpageToLocale:v4 completionHandler:0];
}

void __70___SFPageFormatMenuController__translateAlertItemForLocaleIdentifier___block_invoke_2(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70___SFPageFormatMenuController__translateAlertItemForLocaleIdentifier___block_invoke_3;
  v3[3] = &unk_1E848FD38;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __70___SFPageFormatMenuController__translateAlertItemForLocaleIdentifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setEnabled:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 notifyObserversItemDidUpdate];
}

uint64_t __56___SFPageFormatMenuController__exitTranslationAlertItem__block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v3 = *(a1 + 32);

  return [v3 reloadPageInOriginalLanguage];
}

void __70___SFPageFormatMenuController__internalTapToRadarTranslationAlertItem__block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v3 = *(a1 + 32);

  SFBrowserContentControllerFileTranslationRadar(v3);
}

void __64___SFPageFormatMenuController__userFeedbackTranslationAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 presentingViewController];

  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64___SFPageFormatMenuController__userFeedbackTranslationAlertItem__block_invoke_2;
    v6[3] = &unk_1E848F810;
    v6[4] = *(a1 + 32);
    [v3 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
    SFBrowserContentControllerRequestTranslationFeedback(WeakRetained);
  }
}

void __64___SFPageFormatMenuController__userFeedbackTranslationAlertItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  SFBrowserContentControllerRequestTranslationFeedback(WeakRetained);
}

void __65___SFPageFormatMenuController__translationAvailabilityDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v3 = [*(a1 + 40) object];
  v4 = [WeakRetained activeDocument];
  v5 = [v4 translationContext];

  if (v3 == v5)
  {
    v6 = [*(a1 + 40) userInfo];
    v7 = [v6 safari_stringForKey:*MEMORY[0x1E69C9A20]];
    if ([v7 length])
    {
      v8 = [WeakRetained activeDocument];
      v9 = [v8 translationContext];

      v10 = [v9 availableTargetLocaleIdentifiers];
      if (([v9 hasStartedTranslating] & 1) == 0 && objc_msgSend(*(*(a1 + 32) + 24), "count") && objc_msgSend(v10, "count") == 1)
      {
        v11 = [v10 firstObject];
        if (v11)
        {
          v12 = [WeakRetained activeDocument];
          v13 = [v12 translationContext];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __65___SFPageFormatMenuController__translationAvailabilityDidChange___block_invoke_2;
          v14[3] = &unk_1E848FA00;
          v14[4] = *(a1 + 32);
          [v13 validateTargetLocale:v11 completionHandler:v14];
        }
      }
    }
  }
}

void __65___SFPageFormatMenuController__translationAvailabilityDidChange___block_invoke_2(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65___SFPageFormatMenuController__translationAvailabilityDidChange___block_invoke_3;
  v2[3] = &unk_1E848FD38;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __65___SFPageFormatMenuController__translationAvailabilityDidChange___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 24) firstObject];
  [v2 setEnabled:v1];
}

void __61___SFPageFormatMenuController__userFeedbackAutofillAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 presentingViewController];

  if (v4)
  {
    v5 = [v3 presentingViewController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61___SFPageFormatMenuController__userFeedbackAutofillAlertItem__block_invoke_2;
    v7[3] = &unk_1E848F810;
    v7[4] = *(a1 + 32);
    [v5 dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
    SFBrowserContentControllerReportAutoFillIssue(WeakRetained);
  }
}

void __61___SFPageFormatMenuController__userFeedbackAutofillAlertItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  SFBrowserContentControllerReportAutoFillIssue(WeakRetained);
}

void __52___SFPageFormatMenuController__readerThemeAlertItem__block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) setReaderTheme:objc_msgSend(a2 forAppearance:{"selectedTheme"), objc_msgSend(*(a1 + 32), "currentAppearance")}];
  v3 = [MEMORY[0x1E69C8810] sharedLogger];
  [v3 _sf_didPerformFormatMenuAction:8 provenance:*(a1 + 40)];
}

void __59___SFPageFormatMenuController__privateRelayToggleAlertItem__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 webView];
    v6 = [v5 _committedURL];
    v7 = [v6 safari_highLevelDomain];

    v8 = objc_alloc_init(MEMORY[0x1E69DC650]);
    v9 = objc_alloc(MEMORY[0x1E696AD40]);
    v10 = MEMORY[0x1E696AEC0];
    v11 = _WBSLocalizedString();
    v12 = [v10 stringWithFormat:v11, v7];
    v13 = [v9 initWithString:v12];

    v14 = *MEMORY[0x1E69DB648];
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v13 addAttribute:v14 value:v15 range:{0, objc_msgSend(v13, "length")}];

    [v8 _setAttributedTitle:v13];
    v16 = MEMORY[0x1E696AEC0];
    v17 = _WBSLocalizedString();
    v18 = [v16 stringWithFormat:v17, v7];
    [v8 setMessage:v18];

    [v8 setPreferredStyle:1];
    v19 = MEMORY[0x1E69DC648];
    v20 = _WBSLocalizedString();
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __59___SFPageFormatMenuController__privateRelayToggleAlertItem__block_invoke_2;
    v32[3] = &unk_1E84940E8;
    v33 = *(a1 + 32);
    v34 = *(a1 + 48);
    v21 = [v19 actionWithTitle:v20 style:0 handler:v32];
    [v8 addAction:v21];

    v22 = MEMORY[0x1E69DC648];
    v23 = _WBSLocalizedString();
    v24 = [v22 actionWithTitle:v23 style:1 handler:0];
    [v8 addAction:v24];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __59___SFPageFormatMenuController__privateRelayToggleAlertItem__block_invoke_3;
    v29[3] = &unk_1E848F548;
    v30 = *(a1 + 40);
    v31 = v8;
    v25 = v8;
    [v4 dismissViewControllerAnimated:1 completion:v29];
  }

  else
  {
    v26 = a2;
    [v26 dismissViewControllerAnimated:1 completion:0];

    v27 = *(a1 + 32);
    v28 = *(a1 + 48);

    [v27 reloadEnablingDowngradedPrivateRelay:v28];
  }
}

void __59___SFPageFormatMenuController__privateRelayToggleAlertItem__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) viewControllerToPresentFrom];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

uint64_t __62___SFPageFormatMenuController__contentBlockersToggleAlertItem__block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 reloadDisablingContentBlockers:v4];
}

uint64_t __82___SFPageFormatMenuController__advancedPrivateBrowsingPrivacyProtectionsAlertItem__block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:v4];
}

void __56___SFPageFormatMenuController__websiteSettingsAlertItem__block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v3 = [WeakRetained activeDocument];
  [v3 perSiteSettingsUIPresentSettings];
}

void __49___SFPageFormatMenuController__scribbleAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49___SFPageFormatMenuController__scribbleAlertItem__block_invoke_2;
  v3[3] = &unk_1E848F810;
  v4 = *(a1 + 32);
  [a2 dismissViewControllerAnimated:1 completion:v3];
}

void __49___SFPageFormatMenuController__scribbleAlertItem__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) sfScribbleController];
  [v1 startScribbling];
}

void __51___SFPageFormatMenuController__clearEditsAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51___SFPageFormatMenuController__clearEditsAlertItem__block_invoke_2;
  v3[3] = &unk_1E848F810;
  v4 = *(a1 + 32);
  [a2 dismissViewControllerAnimated:1 completion:v3];
}

void __51___SFPageFormatMenuController__clearEditsAlertItem__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) sfScribbleController];
  [v1 clearEdits];
}

void __55___SFPageFormatMenuController__reportScribbleIssueItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldLaunchFeedbackAppForScribble] && (objc_msgSend(MEMORY[0x1E695E000], "safari_browserDefaults"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "safari_BOOLForKey:defaultValue:", *MEMORY[0x1E69C99D8], 0), v4, (v5 & 1) == 0))
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
    WeakRetained = [*(a1 + 40) sfScribbleController];
    [WeakRetained openFeedbackAppForScribbleReportIssueCategory:3];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
    v7 = [[_SFReportScribbleIssueCollectionViewController alloc] initWithBrowserContentController:WeakRetained];
    v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
    [v8 setModalPresentationStyle:1];
    v9 = [v3 presentingViewController];

    if (v9)
    {
      v10 = [v3 presentingViewController];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55___SFPageFormatMenuController__reportScribbleIssueItem__block_invoke_2;
      v11[3] = &unk_1E848F548;
      v12 = WeakRetained;
      v13 = v8;
      [v10 dismissViewControllerAnimated:1 completion:v11];
    }

    else
    {
      [WeakRetained presentModalViewController:v8 completion:0];
    }
  }
}

void __74___SFPageFormatMenuController__reportWebCompatibilityIssueItemWithAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v2 = [[_SFReportWebCompatibilityIssueCollectionViewController alloc] initWithBrowserContentController:WeakRetained];
  v3 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v2];
  v4 = [WeakRetained viewControllerToPresentFromNavigationBar];
  [v3 setModalPresentationStyle:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74___SFPageFormatMenuController__reportWebCompatibilityIssueItemWithAction___block_invoke_2;
  v7[3] = &unk_1E848F548;
  v8 = WeakRetained;
  v9 = v3;
  v5 = v3;
  v6 = WeakRetained;
  [v4 dismissViewControllerAnimated:1 completion:v7];
}

void __57___SFPageFormatMenuController__manageExtensionsAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 136));
  v6 = MEMORY[0x1E69B1B30];
  v7 = *(a1 + 32);
  v8 = [WeakRetained activeDocument];
  v9 = [v6 createManageExtensionsNavigationControllerFromPageFormatMenu:v7 activeDocument:v8];

  [v9 setModalPresentationStyle:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57___SFPageFormatMenuController__manageExtensionsAlertItem__block_invoke_2;
  v12[3] = &unk_1E848F548;
  v13 = WeakRetained;
  v14 = v9;
  v10 = v9;
  v11 = WeakRetained;
  [v4 dismissViewControllerAnimated:1 completion:v12];
}

void __52___SFPageFormatMenuController__editToolbarAlertItem__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52___SFPageFormatMenuController__editToolbarAlertItem__block_invoke_2;
  v3[3] = &unk_1E848F810;
  v4 = *(a1 + 32);
  [a2 dismissViewControllerAnimated:1 completion:v3];
}

void __43___SFPageFormatMenuController__entityItems__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained viewController];
    [v5 dismissViewControllerAnimated:1 completion:0];

    if ([v7 _sf_canOpenInBrowser])
    {
      v6 = objc_loadWeakRetained(v4 + 17);
      [v6 handleSearchResult:v7];
    }
  }
}

void __50___SFPageFormatMenuController__makeItemForAction___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_2;
  v3[3] = &unk_1E848F810;
  v4 = *(a1 + 32);
  [a2 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __50___SFPageFormatMenuController__makeItemForAction___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v3 = *(a1 + 32);

  return [v3 togglePinningCurrentTab];
}

void __50___SFPageFormatMenuController__makeItemForAction___block_invoke_4(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_5;
  v3[3] = &unk_1E848F810;
  v4 = *(a1 + 32);
  [a2 dismissViewControllerAnimated:1 completion:v3];
}

void __50___SFPageFormatMenuController__makeItemForAction___block_invoke_6(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_7;
  v3[3] = &unk_1E848F810;
  v4 = *(a1 + 32);
  [a2 dismissViewControllerAnimated:1 completion:v3];
}

void __50___SFPageFormatMenuController__makeItemForAction___block_invoke_8(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_9;
  v3[3] = &unk_1E848F810;
  v4 = *(a1 + 32);
  [a2 dismissViewControllerAnimated:1 completion:v3];
}

void __50___SFPageFormatMenuController__makeItemForAction___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewController];
  v2 = [v1 presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

void __50___SFPageFormatMenuController__makeItemForAction___block_invoke_12(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50___SFPageFormatMenuController__makeItemForAction___block_invoke_13;
  v3[3] = &unk_1E848F810;
  v4 = *(a1 + 32);
  [a2 dismissViewControllerAnimated:1 completion:v3];
}

void __50___SFPageFormatMenuController__makeItemForAction___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
    v4 = [v3 currentPlaybackState];

    WeakRetained = v6;
    if (*(a1 + 48) != v4)
    {
      [v6 reloadAlert];
      v5 = [*(a1 + 32) activeDocument];
      [v5 updateShowsSiriReaderPlayingIcon];

      WeakRetained = v6;
    }
  }
}

void __76___SFPageFormatMenuController__updateListenToPageButtonAvailabilityForCard___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invokeListenToPage];
    WeakRetained = v2;
  }
}

void __49___SFPageFormatMenuController__readerOptionsCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _hideReader];
    WeakRetained = v2;
  }
}

void __49___SFPageFormatMenuController__readerOptionsCard__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invokeListenToPage];
    WeakRetained = v2;
  }
}

void __49___SFPageFormatMenuController__readerOptionsCard__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
    [v4 setNowPlayingContentIdentifier:v5];

    [WeakRetained _updateListenToPageButtonAvailabilityForCard:WeakRetained[12]];
  }
}

void __42___SFPageFormatMenuController__readerCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showReader];
    WeakRetained = v2;
  }
}

void __42___SFPageFormatMenuController__readerCard__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained viewController];
    [v3 dismissViewControllerAnimated:1 completion:0];

    [*(a1 + 32) siriReadThisMenuInvocation];
    WeakRetained = v4;
  }
}

void __42___SFPageFormatMenuController__readerCard__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
    [v4 setNowPlayingContentIdentifier:v5];

    [WeakRetained _updateListenToPageButtonAvailabilityForCard:WeakRetained[11]];
  }
}

void __42___SFPageFormatMenuController__readerCard__block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) cachedReaderArticleTitle];
    v5 = [v4 isEqualToString:v7];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) setCachedReaderArticleTitle:v7];
      if (([v7 isEqualToString:*(a1 + 40)] & 1) == 0)
      {
        v6 = WeakRetained[11];
        [v6 setTitle:v7];
        [v6 notifyObserverCardDidUpdate];
      }
    }
  }
}

void __58___SFPageFormatMenuController__updateListenToPageIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = [MEMORY[0x1E69B1B98] sharedVoiceUtilities];
    v4 = [v3 activeSiriReaderSessionIdentifier];

    v5 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
    v6 = [v5 nowPlayingContentIdentifier];

    if (!v4 || (WBSIsEqual() & 1) == 0)
    {
      v7 = v11[10];
      if (v7)
      {
        v11[10] = 0;

        [v11 reloadBrowsingAssistantIfNeeded];
      }
    }

    if (*(a1 + 48) != [v11 _listenToPageActionStateForActiveTab])
    {
      v8 = v11[10];
      v11[10] = 0;

      v9 = v11;
      if (v11[11])
      {
        [v11 _updateListenToPageButtonAvailabilityForCard:?];
        v9 = v11;
      }

      if (v9[12])
      {
        [v9 _updateListenToPageButtonAvailabilityForCard:?];
        v9 = v11;
      }

      [v9 reloadBrowsingAssistantIfNeeded];
      v10 = [*(a1 + 32) activeDocument];
      [v10 updateShowsSiriReaderPlayingIcon];
    }

    WeakRetained = v11;
  }
}

void __43___SFPageFormatMenuController__consentCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [MEMORY[0x1E69C8EC8] setUserConsentState:2];
    [v2 _clearCachedCardItems];
    [v2 reloadBrowsingAssistantIfNeeded];
    WeakRetained = v2;
  }
}

void __43___SFPageFormatMenuController__consentCard__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [MEMORY[0x1E69C8EC8] setUserConsentState:1];
    [v2 _clearCachedCardItems];
    [v2 reloadBrowsingAssistantIfNeeded];
    WeakRetained = v2;
  }
}

void __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke(uint64_t a1, void *a2, int a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setHintText:v7];
    if ([v6 isFocusedInPageMenu])
    {
      if (a3)
      {
        [v6 blink];
        [v6 pulse];
      }
    }
  }
}

void __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [MEMORY[0x1E69C8810] sharedLogger];
    [v3 didClickZoomOutSBA];

    [a1[4] decrementValue:v5];
    v4 = objc_loadWeakRetained(a1 + 6);
    [v4 _didTapButtonInStepper:v5];

    WeakRetained = v5;
  }
}

void __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [MEMORY[0x1E69C8810] sharedLogger];
    [v3 didClickZoomInSBA];

    [a1[4] incrementValue:v5];
    v4 = objc_loadWeakRetained(a1 + 6);
    [v4 _didTapButtonInStepper:v5];

    WeakRetained = v5;
  }
}

void __57___SFPageFormatMenuController_configureMainHeaderFooter___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapFindOnPage];
}

void __59___SFPageFormatMenuController_configureReaderButtonFooter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showReader];
    WeakRetained = v2;
  }
}

void __59___SFPageFormatMenuController_configureReaderButtonFooter___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _hideReader];
    WeakRetained = v2;
  }
}

uint64_t __54___SFPageFormatMenuController__didTapButtonInStepper___block_invoke(void *a1)
{
  *(a1[4] + 128) = 0;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[6];

    return [v3 takeOwnershipOfStepperContainer:v4];
  }

  return result;
}

@end