@interface SFFormAutoFillMultipleLoginsAlertController
+ (id)alertControllerWithMatchesFromFormProtectionSpace:(id)space matchesFromOtherProtectionSpaces:(id)spaces externalCredentials:(id)credentials preferredStyle:(int64_t)style formURL:(id)l completionHandler:(id)handler;
- (void)_sceneDidEnterBackground:(id)background;
- (void)setCancelsWhenAppEntersBackground:(BOOL)background;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFFormAutoFillMultipleLoginsAlertController

+ (id)alertControllerWithMatchesFromFormProtectionSpace:(id)space matchesFromOtherProtectionSpaces:(id)spaces externalCredentials:(id)credentials preferredStyle:(int64_t)style formURL:(id)l completionHandler:(id)handler
{
  v87 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  spacesCopy = spaces;
  credentialsCopy = credentials;
  lCopy = l;
  handlerCopy = handler;
  v17 = [self alertControllerWithTitle:0 message:0 preferredStyle:style];
  [v17 setImageIfNecessaryWithName:@"alert-passwords"];
  v61 = spaceCopy;
  if ([spaceCopy count] || objc_msgSend(spacesCopy, "count") || objc_msgSend(credentialsCopy, "count"))
  {
    v18 = _WBSLocalizedString();
    [v17 setTitle:v18];
  }

  v66 = v17;
  v59 = spacesCopy;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = credentialsCopy;
  v19 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v82;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v82 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v81 + 1) + 8 * i);
        v24 = [MEMORY[0x1E69C8E18] titleForCredentialIdentity:v23 formURL:{lCopy, v59}];
        user = [v23 user];
        v26 = [SFCredentialDisplayData descriptionForPasswordWithUser:user creationDate:0];

        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __191__SFFormAutoFillMultipleLoginsAlertController_alertControllerWithMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_externalCredentials_preferredStyle_formURL_completionHandler___block_invoke;
        v79[3] = &unk_1E8492AE8;
        v27 = handlerCopy;
        v79[4] = v23;
        v80 = v27;
        v28 = [SFMultipleLineAlertAction actionWithTitle:v26 detail:v24 handler:v79];
        [v66 addAction:v28];
      }

      v20 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
    }

    while (v20);
  }

  v29 = [v59 count];
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  enabledExtensions = [mEMORY[0x1E69C8DE0] enabledExtensions];
  v32 = [enabledExtensions count];

  shouldAutoFillPasswordsFromKeychain = 1;
  if (!v29 && v32 <= 1)
  {
    if (v32)
    {
      mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
      shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswordsFromKeychain];
    }

    else
    {
      shouldAutoFillPasswordsFromKeychain = 0;
    }
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v62 = [v61 arrayByAddingObjectsFromArray:{v59, v59}];
  v35 = [v62 countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v76;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v76 != v37)
        {
          objc_enumerationMutation(v62);
        }

        v39 = *(*(&v75 + 1) + 8 * j);
        match = [v39 match];
        user2 = [match user];
        creationDate = [v39 creationDate];
        v43 = [SFCredentialDisplayData descriptionForPasswordWithUser:user2 creationDate:creationDate];

        if (shouldAutoFillPasswordsFromKeychain)
        {
          detail = [v39 detail];
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __191__SFFormAutoFillMultipleLoginsAlertController_alertControllerWithMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_externalCredentials_preferredStyle_formURL_completionHandler___block_invoke_2;
          v72[3] = &unk_1E8492AE8;
          v45 = handlerCopy;
          v73 = match;
          v74 = v45;
          v46 = match;
          v47 = [SFMultipleLineAlertAction actionWithTitle:v43 detail:detail handler:v72];
          [v66 addAction:v47];

          v49 = &v73;
          v48 = &v74;
        }

        else
        {
          v50 = MEMORY[0x1E69DC648];
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = __191__SFFormAutoFillMultipleLoginsAlertController_alertControllerWithMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_externalCredentials_preferredStyle_formURL_completionHandler___block_invoke_3;
          v69[3] = &unk_1E8492AE8;
          v51 = handlerCopy;
          v70 = match;
          v71 = v51;
          v52 = match;
          detail = [v50 actionWithTitle:v43 style:0 handler:v69];
          [v66 addAction:detail];
          v49 = &v70;
          v48 = &v71;
        }
      }

      v36 = [v62 countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v36);
  }

  v53 = MEMORY[0x1E69DC648];
  v54 = _WBSLocalizedString();
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __191__SFFormAutoFillMultipleLoginsAlertController_alertControllerWithMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_externalCredentials_preferredStyle_formURL_completionHandler___block_invoke_4;
  v67[3] = &unk_1E8492B10;
  v68 = handlerCopy;
  v55 = handlerCopy;
  v56 = [v53 actionWithTitle:v54 style:1 handler:v67];

  [v66 addAction:v56];
  v57 = v66[166];
  v66[166] = v56;

  return v66;
}

- (void)setCancelsWhenAppEntersBackground:(BOOL)background
{
  if (self->_cancelsWhenAppEntersBackground != background)
  {
    self->_cancelsWhenAppEntersBackground = background;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = defaultCenter;
    if (background)
    {
      [defaultCenter addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
    }

    else
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE348] object:0];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SFFormAutoFillMultipleLoginsAlertController;
  [(SFFormAutoFillMultipleLoginsAlertController *)&v5 viewWillDisappear:disappear];
  if (self->_cancelsWhenAppEntersBackground || ([(SFFormAutoFillMultipleLoginsAlertController *)self isBeingDismissed]& 1) != 0 || [(SFFormAutoFillMultipleLoginsAlertController *)self isMovingFromParentViewController])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE348] object:0];
  }
}

- (void)_sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  viewIfLoaded = [(SFFormAutoFillMultipleLoginsAlertController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    object = [backgroundCopy object];

    if (windowScene == object)
    {
      [(SFFormAutoFillMultipleLoginsAlertController *)self _dismissWithAction:self->_cancelAction];
    }
  }
}

@end