@interface _SFUserMediaPermissionController
- (void)_didRetrieveUserMediaPermission:(unint64_t)a3 forDevices:(unint64_t)a4 url:(id)a5 mainFrameURL:(id)a6 decisionHandler:(id)a7 dialogPresenter:(id)a8;
- (void)requestUserMediaAuthorizationForDevices:(unint64_t)a3 url:(id)a4 mainFrameURL:(id)a5 decisionHandler:(id)a6 dialogPresenter:(id)a7;
- (void)savePendingChanges;
@end

@implementation _SFUserMediaPermissionController

- (void)savePendingChanges
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54___SFUserMediaPermissionController_savePendingChanges__block_invoke;
  v6[3] = &unk_1E848F710;
  v6[4] = &v7;
  v4 = [v3 beginBackgroundTaskWithName:@"com.apple.SafariServices.savePermissionsBackgroundTask" expirationHandler:v6];

  v8[3] = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___SFUserMediaPermissionController_savePendingChanges__block_invoke_2;
  v5[3] = &unk_1E848F710;
  v5[4] = &v7;
  [(WBSUserMediaPermissionController *)self savePendingChangesWithCompletionHandler:v5];
  _Block_object_dispose(&v7, 8);
}

- (void)requestUserMediaAuthorizationForDevices:(unint64_t)a3 url:(id)a4 mainFrameURL:(id)a5 decisionHandler:(id)a6 dialogPresenter:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v12 absoluteString];
  v17 = [v13 absoluteString];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __125___SFUserMediaPermissionController_requestUserMediaAuthorizationForDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke;
  v22[3] = &unk_1E8491BD8;
  v22[4] = self;
  v23 = v12;
  v26 = v14;
  v27 = a3;
  v24 = v13;
  v25 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  [(WBSUserMediaPermissionController *)self getPermissionForOrigin:v16 topLevelOrigin:v17 completionHandler:v22];
}

- (void)_didRetrieveUserMediaPermission:(unint64_t)a3 forDevices:(unint64_t)a4 url:(id)a5 mainFrameURL:(id)a6 decisionHandler:(id)a7 dialogPresenter:(id)a8
{
  v11 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v14 absoluteString];
  v19 = [v15 absoluteString];
  if (([v15 safari_hasScheme:@"https"] & 1) == 0)
  {
    LODWORD(a3) = [(WBSUserMediaPermissionController *)self permissionForNonHTTPSOriginFromPermission:a3];
  }

  if ((v11 & 1) != 0 && (a3 & 2) != 0 || (v20 = v11 & 2, (v11 & 2) != 0) && (a3 & 0x10) != 0)
  {
    v43[1] = MEMORY[0x1E69E9820];
    v43[2] = 3221225472;
    v43[3] = __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke;
    v43[4] = &unk_1E84909E8;
    v21 = &v44;
    v44 = v16;
  }

  else
  {
    v22 = v11 & 1;
    v23 = v20 >> 1;
    if (v22)
    {
      v24 = (a3 >> 2) & 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = (a3 >> 5) & 1;
    if (!v20)
    {
      v25 = 0;
    }

    if (v24 != v22 || v25 != v23)
    {
      v27 = v20 | v22;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_3;
      block[3] = &unk_1E8491C50;
      v21 = &v29;
      v29 = v15;
      v30 = v14;
      v26 = v17;
      v37 = v22;
      v38 = v23;
      v31 = v26;
      v32 = self;
      v33 = v18;
      v34 = v19;
      v35 = v16;
      v36 = v27;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_9;
    }

    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_2;
    v42 = &unk_1E84909E8;
    v21 = v43;
    v43[0] = v16;
  }

  WBSRespondWithRandomDelay();
LABEL_9:
}

@end