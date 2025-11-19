@interface SFUserMediaPermissionController
@end

@implementation SFUserMediaPermissionController

void __54___SFUserMediaPermissionController_savePendingChanges__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXUserMediaCapture();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54___SFUserMediaPermissionController_savePendingChanges__block_invoke_cold_1(v2);
  }

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void __54___SFUserMediaPermissionController_savePendingChanges__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safari_userVisibleString];
  v3 = [v2 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

  if ([*(a1 + 32) safari_isSafariWebExtensionURL])
  {
    v4 = [*(a1 + 40) safari_userVisibleHostOrExtensionDisplayName];

    v3 = v4;
  }

  v5 = [*(a1 + 48) permissionDialogThrottler];
  if (v5)
  {
    v6 = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_4;
    aBlock[3] = &unk_1E8491C00;
    v27 = *(a1 + 96);
    v16 = *(a1 + 56);
    v7 = *(&v16 + 1);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v25 = v16;
    v26 = v10;
    v11 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_5;
    v17[3] = &unk_1E8491C28;
    v22 = v11;
    v18 = *(a1 + 48);
    v19 = v3;
    v23 = *(a1 + 88);
    v12 = *(a1 + 56);
    v20 = v6;
    v21 = v12;
    v13 = v6;
    v14 = v3;
    v15 = v11;
    [v13 requestPermissionDialogPresentation:v17];
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_4(uint64_t a1, int a2)
{
  v3 = 2;
  if (a2)
  {
    v3 = 4;
  }

  v4 = 16;
  if (a2)
  {
    v4 = 32;
  }

  if (!*(a1 + 64))
  {
    v3 = 0;
  }

  if (*(a1 + 65))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 32) setPermission:v5 | v3 expirationPolicy:0 forOrigin:*(a1 + 40) topLevelOrigin:*(a1 + 48)];
  v6 = *(*(a1 + 56) + 16);

  return v6();
}

void __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_5(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69B1B00];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 72);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_6;
    v12 = &unk_1E8490C40;
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v7 = [v3 userMediaPermissionDialogWithHost:v5 permissions:v6 completionHandler:&v9];
    [v4 presentDialog:v7 sender:{*(a1 + 56), v9, v10, v11, v12}];
  }

  else
  {
    v8 = *(*(a1 + 64) + 16);

    v8();
  }
}

uint64_t __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) didCompletePermissionDialog:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

@end