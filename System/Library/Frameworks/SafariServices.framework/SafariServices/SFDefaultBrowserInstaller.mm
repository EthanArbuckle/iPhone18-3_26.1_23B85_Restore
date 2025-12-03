@interface SFDefaultBrowserInstaller
+ (BOOL)isRestrictedToInstallBrowser:(id)browser withAgeRating:(id)rating;
- (BOOL)browserIsAlreadyInstalled:(id)installed;
- (BOOL)installBrowserFromLockup:(id)lockup shouldObserveProgress:(BOOL)progress ageRating:(id)rating;
- (SFDefaultBrowserInstaller)initWithPresentingViewController:(id)controller;
- (SFDefaultBrowserInstallerDelegate)delegate;
- (UIViewController)presentingViewController;
- (void)appQuery:(id)query resultsDidChange:(id)change;
- (void)enableDaemonNotification;
- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler;
- (void)handleDialogRequest:(id)request resultHandler:(id)handler;
- (void)handleEngagementRequest:(id)request resultHandler:(id)handler;
- (void)installAppStore;
- (void)stopQuerying;
@end

@implementation SFDefaultBrowserInstaller

- (SFDefaultBrowserInstaller)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SFDefaultBrowserInstaller;
  v6 = [(SFDefaultBrowserInstaller *)&v12 init];
  if (v6)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getASDNotificationCenterClass_softClass;
    v17 = getASDNotificationCenterClass_softClass;
    if (!getASDNotificationCenterClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getASDNotificationCenterClass_block_invoke;
      v13[3] = &unk_1E848F710;
      v13[4] = &v14;
      __getASDNotificationCenterClass_block_invoke(v13);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    defaultCenter = [v7 defaultCenter];
    [defaultCenter setDialogObserver:v6];

    objc_storeStrong(&v6->_amsRequestPresentingViewController, controller);
    [getASDInstallAppsClass() setShouldPostNotificationOnDefaultBrowserInstallation:0];
    v6->_lock._os_unfair_lock_opaque = 0;
    v10 = v6;
  }

  return v6;
}

- (void)enableDaemonNotification
{
  ASDInstallAppsClass = getASDInstallAppsClass();

  [ASDInstallAppsClass setShouldPostNotificationOnDefaultBrowserInstallation:1];
}

- (void)installAppStore
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getASDSystemAppMetadataClass_softClass;
  v12 = getASDSystemAppMetadataClass_softClass;
  if (!getASDSystemAppMetadataClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getASDSystemAppMetadataClass_block_invoke;
    v8[3] = &unk_1E848F710;
    v8[4] = &v9;
    __getASDSystemAppMetadataClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = [[v3 alloc] initWithBundleID:@"com.apple.AppStore"];
  [v5 setUserInitiated:1];
  ASDInstallAppsClass = getASDInstallAppsClass();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SFDefaultBrowserInstaller_installAppStore__block_invoke;
  v7[3] = &unk_1E8495520;
  v7[4] = self;
  [ASDInstallAppsClass installApp:v5 withCompletionHandler:v7];
}

void __44__SFDefaultBrowserInstaller_installAppStore__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v6 = WeakRetained;
  if (v4)
  {
    v7 = _WBSLocalizedString();
    [v6 browserInstallerDidFailWithError:v4 appName:v7 shouldDismissSheet:0];
  }

  else
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __44__SFDefaultBrowserInstaller_installAppStore__block_invoke_2;
    v15 = &unk_1E848F548;
    v16 = *(a1 + 32);
    v17 = WeakRetained;
    v8 = _Block_copy(&v12);
    os_unfair_lock_lock((*(a1 + 32) + 72));
    [*(*(a1 + 32) + 56) invalidate];
    v9 = [MEMORY[0x1E69C8F20] scheduledTimerWithInterval:1 repeats:v8 handler:5.0];
    v10 = *(a1 + 32);
    v11 = *(v10 + 56);
    *(v10 + 56) = v9;

    os_unfair_lock_unlock((*(a1 + 32) + 72));
  }
}

void __44__SFDefaultBrowserInstaller_installAppStore__block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3 < 8)
  {
    *(v2 + 64) = v3 + 1;
    ASDAppQueryClass = getASDAppQueryClass();
    v14[0] = @"com.apple.AppStore";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v6 = [ASDAppQueryClass queryForBundleIDs:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__SFDefaultBrowserInstaller_installAppStore__block_invoke_4;
    v10[3] = &unk_1E84954F8;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v6 executeQueryWithResultHandler:v10];
  }

  else
  {
    *(v2 + 64) = 0;
    os_unfair_lock_lock((*(a1 + 32) + 72));
    [*(*(a1 + 32) + 56) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    os_unfair_lock_unlock((*(a1 + 32) + 72));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SFDefaultBrowserInstaller_installAppStore__block_invoke_3;
    block[3] = &unk_1E848F810;
    v13 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = v13;
  }
}

void __44__SFDefaultBrowserInstaller_installAppStore__block_invoke_3(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v3 = MEMORY[0x1E696AEC0];
  v4 = _WBSLocalizedString();
  v5 = [v3 stringWithFormat:v4, 0x4046800000000000, v10];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v2 errorWithDomain:@"SFDefaultBrowserInstallerErrorDomain" code:0 userInfo:v6];

  v8 = *(a1 + 32);
  v9 = _WBSLocalizedString();
  [v8 browserInstallerDidFailWithError:v7 appName:v9 shouldDismissSheet:0];
}

void __44__SFDefaultBrowserInstaller_installAppStore__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__SFDefaultBrowserInstaller_installAppStore__block_invoke_4_cold_1(v6, v5);
    }
  }

  else
  {
    v7 = [a2 firstObject];
    v8 = [v7 isInstalled];

    if (v8)
    {
      os_unfair_lock_lock((*(a1 + 32) + 72));
      [*(*(a1 + 32) + 56) invalidate];
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = 0;

      os_unfair_lock_unlock((*(a1 + 32) + 72));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__SFDefaultBrowserInstaller_installAppStore__block_invoke_14;
      block[3] = &unk_1E848F810;
      v12 = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

+ (BOOL)isRestrictedToInstallBrowser:(id)browser withAgeRating:(id)rating
{
  browserCopy = browser;
  ratingCopy = rating;
  bundleID = [browserCopy bundleID];
  v8 = [bundleID isEqualToString:*MEMORY[0x1E69C8DA8]];

  if (v8)
  {
    ams_isManagedAppleID = 0;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v10 = getAMSDeviceClass_softClass;
    v28 = getAMSDeviceClass_softClass;
    if (!getAMSDeviceClass_softClass)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __getAMSDeviceClass_block_invoke;
      v23 = &unk_1E848F710;
      v24 = &v25;
      __getAMSDeviceClass_block_invoke(&v20);
      v10 = v26[3];
    }

    v11 = v10;
    _Block_object_dispose(&v25, 8);
    if ([v10 isRunningInStoreDemoMode])
    {
      ams_isManagedAppleID = 1;
    }

    else
    {
      mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
      v13 = [mEMORY[0x1E69ADFB8] effectiveValueForSetting:*MEMORY[0x1E69ADED0]];
      unsignedIntegerValue = [ratingCopy unsignedIntegerValue];
      if (unsignedIntegerValue <= [v13 unsignedIntegerValue])
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x2050000000;
        v15 = getACAccountStoreClass_softClass;
        v28 = getACAccountStoreClass_softClass;
        if (!getACAccountStoreClass_softClass)
        {
          v20 = MEMORY[0x1E69E9820];
          v21 = 3221225472;
          v22 = __getACAccountStoreClass_block_invoke;
          v23 = &unk_1E848F710;
          v24 = &v25;
          __getACAccountStoreClass_block_invoke(&v20);
          v15 = v26[3];
        }

        v16 = v15;
        _Block_object_dispose(&v25, 8);
        ams_sharedAccountStore = [v15 ams_sharedAccountStore];
        ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
        ams_isManagedAppleID = [ams_activeiTunesAccount ams_isManagedAppleID];
      }

      else
      {
        ams_isManagedAppleID = 1;
      }
    }
  }

  return ams_isManagedAppleID;
}

- (BOOL)browserIsAlreadyInstalled:(id)installed
{
  v3 = MEMORY[0x1E69635F8];
  installedCopy = installed;
  v5 = [v3 alloc];
  bundleID = [installedCopy bundleID];

  v7 = [v5 initWithBundleIdentifier:bundleID allowPlaceholder:0 error:0];
  LOBYTE(v5) = v7 != 0;

  return v5;
}

- (BOOL)installBrowserFromLockup:(id)lockup shouldObserveProgress:(BOOL)progress ageRating:(id)rating
{
  lockupCopy = lockup;
  if ([SFDefaultBrowserInstaller isRestrictedToInstallBrowser:lockupCopy withAgeRating:rating]|| [(SFDefaultBrowserInstaller *)self browserIsAlreadyInstalled:lockupCopy]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = 0;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke;
    v11[3] = &unk_1E8495598;
    v11[4] = self;
    v12 = lockupCopy;
    progressCopy = progress;
    [v12 _buyParamsWithCompletionBlock:v11];

    v9 = 1;
  }

  return v9;
}

void __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v8 = *(a1 + 40);
  if (v6)
  {
    v9 = [v8 title];
    [WeakRetained browserInstallerDidFailWithError:v6 appName:v9 shouldDismissSheet:0];
  }

  else
  {
    v10 = [v8 id];
    v11 = [v10 numberValue];

    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v12 = getASDPurchaseClass_softClass;
    v34 = getASDPurchaseClass_softClass;
    if (!getASDPurchaseClass_softClass)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getASDPurchaseClass_block_invoke;
      v29 = &unk_1E848F710;
      v30 = &v31;
      __getASDPurchaseClass_block_invoke(&v26);
      v12 = v32[3];
    }

    v13 = v12;
    _Block_object_dispose(&v31, 8);
    v14 = objc_alloc_init(v12);
    [v14 setItemID:v11];
    [v14 setIsDefaultBrowser:1];
    [v14 setBuyParameters:v5];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v15 = getASDPurchaseManagerClass_softClass;
    v34 = getASDPurchaseManagerClass_softClass;
    if (!getASDPurchaseManagerClass_softClass)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getASDPurchaseManagerClass_block_invoke;
      v29 = &unk_1E848F710;
      v30 = &v31;
      __getASDPurchaseManagerClass_block_invoke(&v26);
      v15 = v32[3];
    }

    v16 = v15;
    _Block_object_dispose(&v31, 8);
    v17 = [v15 sharedManager];
    v35[0] = v14;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke_2;
    v21[3] = &unk_1E8495570;
    v21[4] = *(a1 + 32);
    v22 = WeakRetained;
    v19 = *(a1 + 40);
    v25 = *(a1 + 48);
    v23 = v19;
    v24 = v11;
    v20 = v11;
    [v17 processPurchases:v18 withResponseHandler:v21];
  }
}

void __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke_3;
  v9[3] = &unk_1E8495548;
  objc_copyWeak(&v15, &location);
  v10 = v6;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v5;
  v16 = *(a1 + 64);
  v14 = *(a1 + 56);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke_3(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 48) title];
      [v4 browserInstallerDidFailWithError:v3 appName:v5 shouldDismissSheet:0];
    }

    else
    {
      v6 = [*(a1 + 56) items];
      v7 = [v6 firstObject];
      v8 = [v7 error];

      if (v8)
      {
        v9 = [v8 code];
        if (v9 == 6 || v9 == 511 || v9 == 508)
        {
          [*(a1 + 40) browserInstallerDidCancelInstallation];
        }

        else
        {
          v15 = *(a1 + 40);
          v16 = [*(a1 + 48) title];
          [v15 browserInstallerDidFailWithError:v8 appName:v16 shouldDismissSheet:0];
        }
      }

      else
      {
        if (*(a1 + 80) == 1)
        {
          ASDAppQueryClass = getASDAppQueryClass();
          v23[0] = *(a1 + 64);
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
          v12 = [ASDAppQueryClass queryForStoreItemIDs:v11];
          v13 = WeakRetained[1];
          WeakRetained[1] = v12;

          [WeakRetained[1] setObserver:WeakRetained];
          v14 = WeakRetained[1];
          v17 = MEMORY[0x1E69E9820];
          v18 = 3221225472;
          v19 = __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke_4;
          v20 = &unk_1E84954F8;
          v21 = *(a1 + 40);
          v22 = *(a1 + 48);
          [v14 executeQueryWithResultHandler:&v17];
        }

        [*(a1 + 40) browserInstallerDidStartInstallation];
      }
    }
  }
}

void __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke_5;
    block[3] = &unk_1E848F6B0;
    v6 = *(a1 + 32);
    v7 = v4;
    v8 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __86__SFDefaultBrowserInstaller_installBrowserFromLockup_shouldObserveProgress_ageRating___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) title];
  [v1 browserInstallerDidFailWithError:v2 appName:v3 shouldDismissSheet:1];
}

- (void)stopQuerying
{
  [(ASDAppQuery *)self->_query setObserver:0];
  query = self->_query;
  self->_query = 0;
}

- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v8 = getAMSUIAuthenticateTaskClass_softClass;
  v18 = getAMSUIAuthenticateTaskClass_softClass;
  if (!getAMSUIAuthenticateTaskClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getAMSUIAuthenticateTaskClass_block_invoke;
    v14[3] = &unk_1E848F710;
    v14[4] = &v15;
    __getAMSUIAuthenticateTaskClass_block_invoke(v14);
    v8 = v16[3];
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);
  v10 = [[v8 alloc] initWithRequest:requestCopy presentingViewController:self->_amsRequestPresentingViewController];
  authenticateTask = self->_authenticateTask;
  self->_authenticateTask = v10;

  performAuthentication = [(AMSUIAuthenticateTask *)self->_authenticateTask performAuthentication];
  pendingResult = self->_pendingResult;
  self->_pendingResult = performAuthentication;

  [(AMSPromise *)self->_pendingResult addFinishBlock:handlerCopy];
}

- (void)handleDialogRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v8 = getAMSSystemAlertDialogTaskClass_softClass;
  v17 = getAMSSystemAlertDialogTaskClass_softClass;
  if (!getAMSSystemAlertDialogTaskClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getAMSSystemAlertDialogTaskClass_block_invoke;
    v13[3] = &unk_1E848F710;
    v13[4] = &v14;
    __getAMSSystemAlertDialogTaskClass_block_invoke(v13);
    v8 = v15[3];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);
  v10 = [[v8 alloc] initWithRequest:requestCopy];
  dialogTask = self->_dialogTask;
  self->_dialogTask = v10;

  present = [(AMSSystemAlertDialogTask *)self->_dialogTask present];
  [present addFinishBlock:handlerCopy];
}

- (void)handleEngagementRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v8 = objc_alloc(getAMSUIEngagementTaskClass());
  createBagForSubProfile = [getAMSUIEngagementTaskClass() createBagForSubProfile];
  v10 = [v8 initWithRequest:requestCopy bag:createBagForSubProfile presentingViewController:self->_amsRequestPresentingViewController];

  engagementTask = self->_engagementTask;
  self->_engagementTask = v10;

  presentEngagement = [(AMSUIEngagementTask *)self->_engagementTask presentEngagement];
  [presentEngagement addFinishBlock:handlerCopy];
}

- (void)appQuery:(id)query resultsDidChange:(id)change
{
  firstObject = [change firstObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFDefaultBrowserInstaller_appQuery_resultsDidChange___block_invoke;
  v7[3] = &unk_1E848F548;
  v7[4] = self;
  v8 = firstObject;
  v6 = firstObject;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __55__SFDefaultBrowserInstaller_appQuery_resultsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v2 = [*(a1 + 40) installError];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 installError];
    v5 = [*(a1 + 40) localizedName];
    [WeakRetained browserInstallerDidFailWithError:v4 appName:v5 shouldDismissSheet:0];
  }

  else
  {
    v6 = [v3 progress];

    v7 = *(a1 + 40);
    if (v6)
    {
      v8 = [v7 progress];
      [WeakRetained browserInstallerDownloadWithProgress:v8];
    }

    else if ([v7 isInstalled])
    {
      [WeakRetained browserInstallerDidCompleteInstallation];
    }
  }
}

- (SFDefaultBrowserInstallerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

void __44__SFDefaultBrowserInstaller_installAppStore__block_invoke_4_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to execute query for App Store intallation with error: %{public}@", &v5, 0xCu);
}

@end