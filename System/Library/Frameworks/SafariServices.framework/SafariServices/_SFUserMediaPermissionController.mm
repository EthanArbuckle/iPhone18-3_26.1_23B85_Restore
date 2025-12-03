@interface _SFUserMediaPermissionController
- (void)_didRetrieveUserMediaPermission:(unint64_t)permission forDevices:(unint64_t)devices url:(id)url mainFrameURL:(id)l decisionHandler:(id)handler dialogPresenter:(id)presenter;
- (void)requestUserMediaAuthorizationForDevices:(unint64_t)devices url:(id)url mainFrameURL:(id)l decisionHandler:(id)handler dialogPresenter:(id)presenter;
- (void)savePendingChanges;
@end

@implementation _SFUserMediaPermissionController

- (void)savePendingChanges
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54___SFUserMediaPermissionController_savePendingChanges__block_invoke;
  v6[3] = &unk_1E848F710;
  v6[4] = &v7;
  v4 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"com.apple.SafariServices.savePermissionsBackgroundTask" expirationHandler:v6];

  v8[3] = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___SFUserMediaPermissionController_savePendingChanges__block_invoke_2;
  v5[3] = &unk_1E848F710;
  v5[4] = &v7;
  [(WBSUserMediaPermissionController *)self savePendingChangesWithCompletionHandler:v5];
  _Block_object_dispose(&v7, 8);
}

- (void)requestUserMediaAuthorizationForDevices:(unint64_t)devices url:(id)url mainFrameURL:(id)l decisionHandler:(id)handler dialogPresenter:(id)presenter
{
  urlCopy = url;
  lCopy = l;
  handlerCopy = handler;
  presenterCopy = presenter;
  absoluteString = [urlCopy absoluteString];
  absoluteString2 = [lCopy absoluteString];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __125___SFUserMediaPermissionController_requestUserMediaAuthorizationForDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke;
  v22[3] = &unk_1E8491BD8;
  v22[4] = self;
  v23 = urlCopy;
  v26 = handlerCopy;
  devicesCopy = devices;
  v24 = lCopy;
  v25 = presenterCopy;
  v18 = presenterCopy;
  v19 = handlerCopy;
  v20 = lCopy;
  v21 = urlCopy;
  [(WBSUserMediaPermissionController *)self getPermissionForOrigin:absoluteString topLevelOrigin:absoluteString2 completionHandler:v22];
}

- (void)_didRetrieveUserMediaPermission:(unint64_t)permission forDevices:(unint64_t)devices url:(id)url mainFrameURL:(id)l decisionHandler:(id)handler dialogPresenter:(id)presenter
{
  devicesCopy = devices;
  urlCopy = url;
  lCopy = l;
  handlerCopy = handler;
  presenterCopy = presenter;
  absoluteString = [urlCopy absoluteString];
  absoluteString2 = [lCopy absoluteString];
  if (([lCopy safari_hasScheme:@"https"] & 1) == 0)
  {
    LODWORD(permission) = [(WBSUserMediaPermissionController *)self permissionForNonHTTPSOriginFromPermission:permission];
  }

  if ((devicesCopy & 1) != 0 && (permission & 2) != 0 || (v20 = devicesCopy & 2, (devicesCopy & 2) != 0) && (permission & 0x10) != 0)
  {
    v43[1] = MEMORY[0x1E69E9820];
    v43[2] = 3221225472;
    v43[3] = __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke;
    v43[4] = &unk_1E84909E8;
    v21 = &v44;
    v44 = handlerCopy;
  }

  else
  {
    v22 = devicesCopy & 1;
    v23 = v20 >> 1;
    if (v22)
    {
      v24 = (permission >> 2) & 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = (permission >> 5) & 1;
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
      v29 = lCopy;
      v30 = urlCopy;
      v26 = presenterCopy;
      v37 = v22;
      v38 = v23;
      v31 = v26;
      selfCopy = self;
      v33 = absoluteString;
      v34 = absoluteString2;
      v35 = handlerCopy;
      v36 = v27;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_9;
    }

    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __128___SFUserMediaPermissionController__didRetrieveUserMediaPermission_forDevices_url_mainFrameURL_decisionHandler_dialogPresenter___block_invoke_2;
    v42 = &unk_1E84909E8;
    v21 = v43;
    v43[0] = handlerCopy;
  }

  WBSRespondWithRandomDelay();
LABEL_9:
}

@end