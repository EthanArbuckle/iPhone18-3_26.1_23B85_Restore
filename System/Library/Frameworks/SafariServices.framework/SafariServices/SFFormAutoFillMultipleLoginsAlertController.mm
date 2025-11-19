@interface SFFormAutoFillMultipleLoginsAlertController
+ (id)alertControllerWithMatchesFromFormProtectionSpace:(id)a3 matchesFromOtherProtectionSpaces:(id)a4 externalCredentials:(id)a5 preferredStyle:(int64_t)a6 formURL:(id)a7 completionHandler:(id)a8;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)setCancelsWhenAppEntersBackground:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFFormAutoFillMultipleLoginsAlertController

+ (id)alertControllerWithMatchesFromFormProtectionSpace:(id)a3 matchesFromOtherProtectionSpaces:(id)a4 externalCredentials:(id)a5 preferredStyle:(int64_t)a6 formURL:(id)a7 completionHandler:(id)a8
{
  v87 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v64 = a7;
  v65 = a8;
  v17 = [a1 alertControllerWithTitle:0 message:0 preferredStyle:a6];
  [v17 setImageIfNecessaryWithName:@"alert-passwords"];
  v61 = v14;
  if ([v14 count] || objc_msgSend(v15, "count") || objc_msgSend(v16, "count"))
  {
    v18 = _WBSLocalizedString();
    [v17 setTitle:v18];
  }

  v66 = v17;
  v59 = v15;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v16;
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
        v24 = [MEMORY[0x1E69C8E18] titleForCredentialIdentity:v23 formURL:{v64, v59}];
        v25 = [v23 user];
        v26 = [SFCredentialDisplayData descriptionForPasswordWithUser:v25 creationDate:0];

        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __191__SFFormAutoFillMultipleLoginsAlertController_alertControllerWithMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_externalCredentials_preferredStyle_formURL_completionHandler___block_invoke;
        v79[3] = &unk_1E8492AE8;
        v27 = v65;
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
  v30 = [MEMORY[0x1E69C8DE0] sharedManager];
  v31 = [v30 enabledExtensions];
  v32 = [v31 count];

  v33 = 1;
  if (!v29 && v32 <= 1)
  {
    if (v32)
    {
      v34 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
      v33 = [v34 shouldAutoFillPasswordsFromKeychain];
    }

    else
    {
      v33 = 0;
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
        v40 = [v39 match];
        v41 = [v40 user];
        v42 = [v39 creationDate];
        v43 = [SFCredentialDisplayData descriptionForPasswordWithUser:v41 creationDate:v42];

        if (v33)
        {
          v44 = [v39 detail];
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __191__SFFormAutoFillMultipleLoginsAlertController_alertControllerWithMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_externalCredentials_preferredStyle_formURL_completionHandler___block_invoke_2;
          v72[3] = &unk_1E8492AE8;
          v45 = v65;
          v73 = v40;
          v74 = v45;
          v46 = v40;
          v47 = [SFMultipleLineAlertAction actionWithTitle:v43 detail:v44 handler:v72];
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
          v51 = v65;
          v70 = v40;
          v71 = v51;
          v52 = v40;
          v44 = [v50 actionWithTitle:v43 style:0 handler:v69];
          [v66 addAction:v44];
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
  v68 = v65;
  v55 = v65;
  v56 = [v53 actionWithTitle:v54 style:1 handler:v67];

  [v66 addAction:v56];
  v57 = v66[166];
  v66[166] = v56;

  return v66;
}

- (void)setCancelsWhenAppEntersBackground:(BOOL)a3
{
  if (self->_cancelsWhenAppEntersBackground != a3)
  {
    self->_cancelsWhenAppEntersBackground = a3;
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = v6;
    if (a3)
    {
      [v6 addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
    }

    else
    {
      [v6 removeObserver:self name:*MEMORY[0x1E69DE348] object:0];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFFormAutoFillMultipleLoginsAlertController;
  [(SFFormAutoFillMultipleLoginsAlertController *)&v5 viewWillDisappear:a3];
  if (self->_cancelsWhenAppEntersBackground || ([(SFFormAutoFillMultipleLoginsAlertController *)self isBeingDismissed]& 1) != 0 || [(SFFormAutoFillMultipleLoginsAlertController *)self isMovingFromParentViewController])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x1E69DE348] object:0];
  }
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v8 = a3;
  v4 = [(SFFormAutoFillMultipleLoginsAlertController *)self viewIfLoaded];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  if (v6)
  {
    v7 = [v8 object];

    if (v6 == v7)
    {
      [(SFFormAutoFillMultipleLoginsAlertController *)self _dismissWithAction:self->_cancelAction];
    }
  }
}

@end