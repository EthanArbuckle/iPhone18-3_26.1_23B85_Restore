@interface SFLinkPreviewHelper
@end

@implementation SFLinkPreviewHelper

void __51___SFLinkPreviewHelper_commitPreviewViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ((a2 + 1) >= 4)
  {
    if (a2 == 3)
    {
      v2 = *(*(a1 + 32) + 8);
      v5 = *MEMORY[0x1E69D43A0];
      v6[0] = MEMORY[0x1E695E118];
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
      [v2 openExternallyWithWebBrowserState:v3 referrerURL:0 completionHandler:0];
    }
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51___SFLinkPreviewHelper_commitPreviewViewController__block_invoke_2;
    v4[3] = &unk_1E8490658;
    v4[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void __51___SFLinkPreviewHelper_commitPreviewViewController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained linkPreviewHelper:*(a1 + 32) commitPreviewViewControllerForAction:2 withTabOrder:0];
}

id __52___SFLinkPreviewHelper_makeContextMenuConfiguration__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) menuWithSuggestedActions:a2];

  return v2;
}

void __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke_3;
  v5[3] = &unk_1E8492198;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  [v4 disableWithCompletionHandler:v5];
}

void __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained linkPreviewHelperWillOpenUniversalLinkLocally:*(a1 + 32)];
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      v3 = *(a1 + 48);
    }

    [*(a1 + 32) openURL:v3 forAction:2 withTabOrder:0];
  }

  else
  {
    v4 = WBS_LOG_CHANNEL_PREFIXUniversalLinks();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "Unable to disable App Link, won't navigate to URL from long press on link", buf, 2u);
    }
  }
}

void __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke_2_207(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  v3 = *MEMORY[0x1E69D43A0];
  v4[0] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  [v1 openExternallyWithWebBrowserState:v2 referrerURL:0 completionHandler:0];
}

void __72___SFLinkPreviewHelper_openActionForRedirectToExternalNavigationResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained linkPreviewHelper:*(a1 + 32) redirectToExternalNavigationResult:*(a1 + 40)];
}

void __95___SFLinkPreviewHelper_openActionForSettingUpOneTimeCodeGeneratorWithExternalNavigationResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained(WeakRetained + 4);
  [v2 linkPreviewHelper:WeakRetained redirectToExternalNavigationResult:*(a1 + 32)];
}

void __79___SFLinkPreviewHelper_openInNewTabActionForURL_withTabOrder_preActionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 48);
  if (!v3 || ((*(v3 + 16))() & 1) != 0)
  {
    v4 = [*(a1 + 32) _previewViewControllerIsLinkPreview];
    v5 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(v5 + 4);
      [WeakRetained linkPreviewHelper:*(a1 + 32) commitPreviewViewControllerForAction:3 withTabOrder:*(a1 + 56)];
    }

    else
    {
      [v5 openURL:*(a1 + 40) forAction:3 withTabOrder:*(a1 + 56)];
    }
  }
}

uint64_t __78___SFLinkPreviewHelper_openInTabGroupActionForURL_shouldPerformActionHandler___block_invoke(uint64_t *a1)
{
  v2 = a1[7];
  if (!v2 || (result = (*(v2 + 16))(), result))
  {
    if ([a1[4] _previewViewControllerIsLinkPreview])
    {
      v5 = a1[4];
      v4 = a1[5];

      return [v4 linkPreviewHelper:v5 commitPreviewViewControllerForAction:3 withTabOrder:1];
    }

    else
    {
      v6 = a1[4];
      v7 = a1[6];

      return [v6 openURL:v7 forAction:3 withTabOrder:1];
    }
  }

  return result;
}

void __52___SFLinkPreviewHelper_openInNewWindowActionForURL___block_invoke(void *a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEFAULT, "Open new window via long-press on link", v7, 2u);
  }

  v3 = [MEMORY[0x1E69B1C50] builderWithModifierFlags:0];
  [v3 setPrefersOpenInNewWindow:1];
  v4 = a1[4];
  v5 = a1[5];
  v6 = [v3 navigationIntentWithURL:a1[6]];
  [v4 linkPreviewHelper:v5 didProduceNavigationIntent:v6 forAction:4];
}

void __45___SFLinkPreviewHelper_downloadActionForURL___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEFAULT, "Started a file download via long-press on link", v6, 2u);
  }

  [*(a1 + 32) linkPreviewHelperWillBeginDownload:*(a1 + 40)];
  v3 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
  v4 = [v3 startDownloadFromWebView:*(*(a1 + 40) + 80) URL:*(a1 + 48)];

  [v4 setExplicitlySaved:1];
  v5 = +[_SFDownloadManager sharedManager];
  [v4 setDelegate:v5];
}

@end