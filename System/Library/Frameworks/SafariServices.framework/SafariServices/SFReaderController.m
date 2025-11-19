@interface SFReaderController
@end

@implementation SFReaderController

void __65___SFReaderController_prepareReaderPrintingIFrameWithCompletion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a2)
  {
    v5 = [WeakRetained readerControllerProxy];
    [v5 prepareReaderContentForPrinting];
  }

  else
  {
    if (WeakRetained)
    {
      v6 = WeakRetained[6];
      WeakRetained[6] = 0;
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __65___SFReaderController_setUpReaderWebViewIfNeededAndPerformBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __65___SFReaderController_collectReaderContentForMailWithCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _collectReaderContentForMailWithCompletion:*(a1 + 32)];
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

void __44___SFReaderController_setReaderLanguageTag___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = [WeakRetained possibleFonts];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __44___SFReaderController_setReaderLanguageTag___block_invoke_2;
        v8[3] = &unk_1E8491050;
        objc_copyWeak(&v9, (a1 + 40));
        v8[4] = v7;
        [v7 isInstalledWithCompletionHandler:v8];
        objc_destroyWeak(&v9);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __44___SFReaderController_setReaderLanguageTag___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __44___SFReaderController_setReaderLanguageTag___block_invoke_3;
    v3[3] = &unk_1E8490298;
    objc_copyWeak(&v4, (a1 + 40));
    v3[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(&v4);
  }
}

void __44___SFReaderController_setReaderLanguageTag___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) familyName];
  [WeakRetained activateFont:v2];
}

uint64_t __48___SFReaderController_didRequestOnDeviceSummary__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_INFO, "Safari did begin summarization animation", v4, 2u);
  }

  return [*(*(a1 + 32) + 80) summarizeArticleText:*(*(a1 + 32) + 144)];
}

uint64_t __70___SFReaderController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:*MEMORY[0x1E69B1F00]];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 _updateJavaScriptEnabled];
  }

  return result;
}

@end