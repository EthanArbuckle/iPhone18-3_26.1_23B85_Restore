@interface UIWindowScene
@end

@implementation UIWindowScene

void __72__UIWindowScene_SafariServicesExtras___sf_openTelURL_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    [v6 setShowUIPrompt:0];
    if ([v6 isValid])
    {
      v3 = *(a1 + 40);
      v4 = [v6 URL];
      [v3 openURL:v4 options:0 completionHandler:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __85__UIWindowScene_SafariServicesExtras___sf_openFaceTimeMultiWayURL_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    [*(a1 + 32) setShowUIPrompt:0];
    v3 = *(a1 + 40);
    v5 = [*(a1 + 32) URL];
    [v3 openURL:v5 options:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void __55__UIWindowScene_SafariServicesExtras___sf_destroyScene__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXUserInterface();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_DEFAULT, "Scene destruction request, %@", &v4, 0xCu);
  }
}

@end