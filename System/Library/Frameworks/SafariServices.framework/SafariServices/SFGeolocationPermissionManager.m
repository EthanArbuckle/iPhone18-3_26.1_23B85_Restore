@interface SFGeolocationPermissionManager
@end

@implementation SFGeolocationPermissionManager

void __48___SFGeolocationPermissionManager_sharedManager__block_invoke()
{
  v0 = [_SFGeolocationPermissionManager alloc];
  v3 = [MEMORY[0x1E69C8FC8] sharedStore];
  v1 = [(WBSGeolocationPreferenceManager *)v0 initWithPerSitePreferencesStore:v3];
  v2 = sharedManager_instance;
  sharedManager_instance = v1;
}

void __114___SFGeolocationPermissionManager_requestPermissionForURL_frame_dialogPresenter_browserPersona_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

LABEL_8:
      v11 = *(a1 + 64);
      WBSRespondWithRandomDelay();
      v3 = v11;
LABEL_14:

      return;
    }
  }

  else
  {
    if (a2 != 2 && a2 != 4)
    {
      if (a2 != 3)
      {
        return;
      }

      goto LABEL_8;
    }

    if (([MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari] & 1) == 0)
    {
      v10 = *(a1 + 64);
      WBSRespondWithRandomDelay();
      v3 = v10;
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);

  [v4 _showDialogRequestingPermissionForURL:v5 frame:v6 dialogPresenter:v7 browserPersona:v8 completionHandler:v9];
}

uint64_t __128___SFGeolocationPermissionManager__showDialogRequestingPermissionForURL_frame_dialogPresenter_browserPersona_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  [*(a1 + 32) didCompletePermissionDialog:a2];
  v4 = [*(a1 + 40) webView];
  if ([v4 webui_privateBrowsingEnabled])
  {
  }

  else
  {
    v5 = *(a1 + 48);

    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = *(*(a1 + 56) + 48);
      if (v2)
      {
        [v7 didAuthorizeGeolocationForPromptInfo:v6];
      }

      else
      {
        [v7 didDenyGeolocationForPromptInfo:v6];
      }
    }
  }

  v8 = *(*(a1 + 64) + 16);

  return v8();
}

void __128___SFGeolocationPermissionManager__showDialogRequestingPermissionForURL_frame_dialogPresenter_browserPersona_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x1E69B1B00] websiteLocationDialogForURL:*(a1 + 32) originUserVisibleName:*(a1 + 40) preciseLocation:objc_msgSend(*(a1 + 48) browserPersona:"hasPreciseLocationPermission") completionHandler:{*(a1 + 72), *(a1 + 64)}];
    [*(a1 + 56) presentDialog:v4 sender:*(a1 + 48)];
  }

  else
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }
}

@end