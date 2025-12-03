@interface SFPrivacyReportOnboardingController
+ (id)_createEnableRecommendedProtectionControllerWithCompletionHandler:(id)handler;
+ (id)_createEnableTrackerProtectionControllerWithCompletionHandler:(id)handler;
+ (id)onboardingViewControllerWithCompletionHandler:(id)handler;
@end

@implementation SFPrivacyReportOnboardingController

+ (id)onboardingViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  if ([mEMORY[0x1E69C9808] isPrivacyProxyActive])
  {
    mEMORY[0x1E69C9808]2 = [MEMORY[0x1E69C9808] sharedManager];
    isPrivacyProxyOnForEitherTier = [mEMORY[0x1E69C9808]2 isPrivacyProxyOnForEitherTier];

    if (!isPrivacyProxyOnForEitherTier)
    {
      v8 = [self _createEnableRecommendedProtectionControllerWithCompletionHandler:handlerCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [self _createEnableTrackerProtectionControllerWithCompletionHandler:handlerCopy];
LABEL_6:
  v9 = v8;

  return v9;
}

+ (id)_createEnableTrackerProtectionControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"Shield"];
  v5 = objc_alloc(getOBWelcomeControllerClass());
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  v8 = [v5 initWithTitle:v6 detailText:v7 icon:v4];

  boldButton = [getOBBoldTrayButtonClass() boldButton];
  v10 = _WBSLocalizedString();
  [boldButton setTitle:v10 forState:0];

  v11 = MEMORY[0x1E69DC628];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__SFPrivacyReportOnboardingController__createEnableTrackerProtectionControllerWithCompletionHandler___block_invoke;
  v18[3] = &unk_1E8490140;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = [v11 actionWithTitle:&stru_1F4FE9E38 image:0 identifier:0 handler:v18];
  [boldButton addAction:v13 forControlEvents:0x2000];

  buttonTray = [v8 buttonTray];
  [buttonTray addButton:boldButton];

  buttonTray2 = [v8 buttonTray];
  v16 = createPromptCancelButtonWithCompletionHandler(v12);
  [buttonTray2 addButton:v16];

  return v8;
}

uint64_t __101__SFPrivacyReportOnboardingController__createEnableTrackerProtectionControllerWithCompletionHandler___block_invoke(uint64_t a1)
{
  enableTrackerProtection();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

+ (id)_createEnableRecommendedProtectionControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  [mEMORY[0x1E69C9808] isPrivacyProxyOnInICloudSettings];
  v5 = _WBSLocalizedString();

  v6 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"Shield"];
  v7 = objc_alloc(getOBWelcomeControllerClass());
  v8 = _WBSLocalizedString();
  v9 = [v7 initWithTitle:v8 detailText:v5 icon:v6];

  headerView = [v9 headerView];
  LODWORD(v11) = 1036831949;
  [headerView setTitleHyphenationFactor:v11];

  boldButton = [getOBBoldTrayButtonClass() boldButton];
  v13 = _WBSLocalizedString();
  [boldButton setTitle:v13 forState:0];

  v14 = MEMORY[0x1E69DC628];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105__SFPrivacyReportOnboardingController__createEnableRecommendedProtectionControllerWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E8490140;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = [v14 actionWithTitle:&stru_1F4FE9E38 image:0 identifier:0 handler:v21];
  [boldButton addAction:v16 forControlEvents:0x2000];

  buttonTray = [v9 buttonTray];
  [buttonTray addButton:boldButton];

  buttonTray2 = [v9 buttonTray];
  v19 = createPromptCancelButtonWithCompletionHandler(v15);
  [buttonTray2 addButton:v19];

  return v9;
}

uint64_t __105__SFPrivacyReportOnboardingController__createEnableRecommendedProtectionControllerWithCompletionHandler___block_invoke(uint64_t a1)
{
  enableTrackerProtection();
  v2 = [MEMORY[0x1E69C9808] sharedManager];
  [v2 setPrivacyProxyEnabled:1 completionHandler:&__block_literal_global_17];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

@end