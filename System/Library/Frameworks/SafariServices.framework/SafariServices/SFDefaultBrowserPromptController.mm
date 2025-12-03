@interface SFDefaultBrowserPromptController
+ (SFDefaultBrowserPromptController)sharedController;
+ (id)_directoryURLWithKey:(id)key;
+ (id)_fileURLWithKey:(id)key;
- (BOOL)_didStorePlistWithDictionary:(id)dictionary fileNameKey:(id)key shouldExcludeFromBackup:(BOOL)backup;
- (BOOL)_hasPerformedPromptCheck;
- (BOOL)didCompleteBrowserSheet;
- (BOOL)hasShownBrowserChoiceScreenOnOtherDevices;
- (BOOL)shouldPerformPromptCheck;
- (SFDefaultBrowserPromptController)init;
- (id)browserIconReplacementAlertController:(id)controller browserLocalizedName:(id)name completionHandler:(id)handler;
- (id)visualStyleForAlertControllerStyle:(int64_t)style traitCollection:(id)collection descriptor:(id)descriptor;
- (void)_connectToService;
- (void)determineIfBrowserSheetNeedsDisplayWithCompletionHandler:(id)handler;
- (void)serviceProxyWillQueueInvocation:(id)invocation;
@end

@implementation SFDefaultBrowserPromptController

+ (SFDefaultBrowserPromptController)sharedController
{
  if (sharedController_onceToken_1 != -1)
  {
    +[SFDefaultBrowserPromptController sharedController];
  }

  v3 = sharedController_sharedController_1;

  return v3;
}

void __52__SFDefaultBrowserPromptController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SFDefaultBrowserPromptController);
  v1 = sharedController_sharedController_1;
  sharedController_sharedController_1 = v0;
}

- (SFDefaultBrowserPromptController)init
{
  v7.receiver = self;
  v7.super_class = SFDefaultBrowserPromptController;
  v2 = [(SFDefaultBrowserPromptController *)&v7 init];
  if (v2)
  {
    v3 = [[SFQueueingServiceViewControllerProxy alloc] initWithProtocol:&unk_1F50C39F0];
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;

    [(SFDefaultBrowserPromptServiceProtocol *)v2->_serviceProxy setDelegate:v2];
    v5 = v2;
  }

  return v2;
}

- (BOOL)shouldPerformPromptCheck
{
  if (+[_SFFeatureAvailability isBrowserSelectionSheetEligible])
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    mEMORY[0x1E69ADFB8]2 = [MEMORY[0x1E69ADFB8] sharedConnection];
    isOnDeviceAppInstallationAllowed = [mEMORY[0x1E69ADFB8]2 isOnDeviceAppInstallationAllowed];

    if (isOnDeviceAppInstallationAllowed && ((objc_opt_respondsToSelector() & 1) == 0 || [mEMORY[0x1E69ADFB8] isDefaultBrowserPromptingAllowed]))
    {
      v6 = ![(SFDefaultBrowserPromptController *)self _hasPerformedPromptCheck];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)hasShownBrowserChoiceScreenOnOtherDevices
{
  v2 = [SFDefaultBrowserPromptController _fileURLWithKey:@"DefaultBrowserShownOnOtherDevices"];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v2];
  v4 = [v3 safari_BOOLForKey:@"DefaultBrowserShownOnOtherDevices"];

  return v4;
}

- (void)determineIfBrowserSheetNeedsDisplayWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = self->_serviceProxy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__SFDefaultBrowserPromptController_determineIfBrowserSheetNeedsDisplayWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E848FA50;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(SFDefaultBrowserPromptServiceProtocol *)serviceProxy determineIfBrowserSheetNeedsDisplayWithCompletionHandler:v7];
}

- (BOOL)didCompleteBrowserSheet
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"DefaultBrowserPromptVersion";
  v10[0] = &unk_1F50235A8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v4 = [(SFDefaultBrowserPromptController *)self _didStorePlistWithDictionary:v3 fileNameKey:@"DefaultBrowserPromptVersion" shouldExcludeFromBackup:1];

  v7 = @"DefaultBrowserShownOnOtherDevices";
  v8 = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  LOBYTE(self) = [(SFDefaultBrowserPromptController *)self _didStorePlistWithDictionary:v5 fileNameKey:@"DefaultBrowserShownOnOtherDevices" shouldExcludeFromBackup:0];

  return v4 & self;
}

- (id)browserIconReplacementAlertController:(id)controller browserLocalizedName:(id)name completionHandler:(id)handler
{
  controllerCopy = controller;
  nameCopy = name;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E69C8DA8];
  if ([controllerCopy isEqualToString:*MEMORY[0x1E69C8DA8]])
  {
    v12 = 0;
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v13 = getSBSHomeScreenServiceClass_softClass;
    v39 = getSBSHomeScreenServiceClass_softClass;
    if (!getSBSHomeScreenServiceClass_softClass)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __getSBSHomeScreenServiceClass_block_invoke;
      v35[3] = &unk_1E848F710;
      v35[4] = &v36;
      __getSBSHomeScreenServiceClass_block_invoke(v35);
      v13 = v37[3];
    }

    v14 = v13;
    _Block_object_dispose(&v36, 8);
    v15 = objc_alloc_init(v13);
    if ([v15 canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:v11 withApplicationIconsWithWithBundleIdentifier:controllerCopy])
    {
      v16 = _WBSLocalizedString();
      _SFDeviceIsPad();
      v17 = MEMORY[0x1E696AEC0];
      v18 = _WBSLocalizedString();
      nameCopy = [v17 stringWithFormat:v18, nameCopy];

      v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v16 message:nameCopy preferredStyle:1];
      [v12 _setStyleProvider:self];
      v19 = MEMORY[0x1E69DC648];
      _WBSLocalizedString();
      v20 = v27 = v16;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __113__SFDefaultBrowserPromptController_browserIconReplacementAlertController_browserLocalizedName_completionHandler___block_invoke;
      v31[3] = &unk_1E8492E10;
      v32 = v15;
      v33 = controllerCopy;
      v21 = handlerCopy;
      v34 = v21;
      v22 = [v19 actionWithTitle:v20 style:0 handler:v31];

      v23 = MEMORY[0x1E69DC648];
      v24 = _WBSLocalizedString();
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __113__SFDefaultBrowserPromptController_browserIconReplacementAlertController_browserLocalizedName_completionHandler___block_invoke_2;
      v29[3] = &unk_1E8492B10;
      v30 = v21;
      v25 = [v23 actionWithTitle:v24 style:1 handler:v29];

      [v12 addAction:v22];
      [v12 addAction:v25];
      [v12 setPreferredAction:v22];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

uint64_t __113__SFDefaultBrowserPromptController_browserIconReplacementAlertController_browserLocalizedName_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) swapApplicationIconsInProminentPositionsWithBundleIdentifier:*MEMORY[0x1E69C8DA8] withApplicationIconsWithWithBundleIdentifier:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

+ (id)_directoryURLWithKey:(id)key
{
  keyCopy = key;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_mobileSafariGroupContainerDirectoryURL = [defaultManager safari_mobileSafariGroupContainerDirectoryURL];
  v6 = [safari_mobileSafariGroupContainerDirectoryURL URLByAppendingPathComponent:@"Library" isDirectory:1];

  v7 = [v6 URLByAppendingPathComponent:@"DefaultBrowserSelection" isDirectory:1];
  if ([keyCopy isEqualToString:@"DefaultBrowserPromptVersion"])
  {
    v8 = @"ExcludedFromBackup";
LABEL_5:
    v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"DefaultBrowserShownOnOtherDevices"])
  {
    v8 = @"RestoredFromBackup";
    goto LABEL_5;
  }

  v9 = v7;
LABEL_7:
  v10 = v9;

  return v10;
}

+ (id)_fileURLWithKey:(id)key
{
  keyCopy = key;
  v4 = [SFDefaultBrowserPromptController _directoryURLWithKey:keyCopy];
  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", keyCopy];

  v6 = [v4 URLByAppendingPathComponent:keyCopy isDirectory:0];

  return v6;
}

- (void)_connectToService
{
  invoke = [(_UIAsyncInvocation *)self->_cancelViewServiceRequest invoke];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SFDefaultBrowserPromptController__connectToService__block_invoke;
  v6[3] = &unk_1E8492C38;
  v6[4] = self;
  v4 = [SFDefaultBrowserPromptRemoteViewController requestViewControllerWithConnectionHandler:v6];
  cancelViewServiceRequest = self->_cancelViewServiceRequest;
  self->_cancelViewServiceRequest = v4;
}

void __53__SFDefaultBrowserPromptController__connectToService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;

  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    v10 = [v6 serviceViewControllerProxy];
    [*(*(a1 + 32) + 24) setTarget:v10];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __53__SFDefaultBrowserPromptController__connectToService__block_invoke_cold_1(v7, v11);
    }
  }
}

- (BOOL)_hasPerformedPromptCheck
{
  v2 = [SFDefaultBrowserPromptController _fileURLWithKey:@"DefaultBrowserPromptVersion"];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v2];
  v4 = [v3 safari_numberForKey:@"DefaultBrowserPromptVersion"];
  v5 = [v4 integerValue] != 0;

  return v5;
}

- (BOOL)_didStorePlistWithDictionary:(id)dictionary fileNameKey:(id)key shouldExcludeFromBackup:(BOOL)backup
{
  backupCopy = backup;
  dictionaryCopy = dictionary;
  keyCopy = key;
  v9 = [SFDefaultBrowserPromptController _directoryURLWithKey:keyCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v22 = 0;
  v11 = [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v22];
  v12 = v22;

  if (v11)
  {
    v13 = [SFDefaultBrowserPromptController _fileURLWithKey:keyCopy];
    v14 = [dictionaryCopy writeToURL:v13 atomically:0];
    if (v14 && backupCopy)
    {
      v15 = *MEMORY[0x1E695DB80];
      v21 = v12;
      v16 = [v9 setResourceValue:MEMORY[0x1E695E118] forKey:v15 error:&v21];
      v17 = v21;

      if (v16)
      {
        LOBYTE(v14) = 1;
      }

      else
      {
        v19 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [SFDefaultBrowserPromptController _didStorePlistWithDictionary:keyCopy fileNameKey:v19 shouldExcludeFromBackup:v17];
        }

        LOBYTE(v14) = 0;
      }
    }

    else
    {
      v17 = v12;
    }

    v12 = v17;
  }

  else
  {
    v18 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SFDefaultBrowserPromptController _didStorePlistWithDictionary:v18 fileNameKey:v12 shouldExcludeFromBackup:?];
    }

    LOBYTE(v14) = 0;
  }

  return v14;
}

- (void)serviceProxyWillQueueInvocation:(id)invocation
{
  if (!self->_cancelViewServiceRequest)
  {
    [(SFDefaultBrowserPromptController *)self _connectToService];
  }
}

- (id)visualStyleForAlertControllerStyle:(int64_t)style traitCollection:(id)collection descriptor:(id)descriptor
{
  collectionCopy = collection;
  descriptorCopy = descriptor;
  if (style == 1)
  {
    visualStyle = self->_visualStyle;
    if (!visualStyle)
    {
      v11 = objc_alloc_init(SFDefaultBrowserAlertControllerVisualStyle);
      v12 = self->_visualStyle;
      self->_visualStyle = v11;

      visualStyle = self->_visualStyle;
    }

    v13 = visualStyle;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __53__SFDefaultBrowserPromptController__connectToService__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Failed to get prompt remote view controller with error: %{public}@", &v2, 0xCu);
}

- (void)_didStorePlistWithDictionary:(void *)a1 fileNameKey:(void *)a2 shouldExcludeFromBackup:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to create directory: %{public}@", &v5, 0xCu);
}

- (void)_didStorePlistWithDictionary:(uint64_t)a1 fileNameKey:(void *)a2 shouldExcludeFromBackup:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "Failed to set NSURLIsExcludedFromBackupKey on %{public}@: %{public}@", &v7, 0x16u);
}

@end