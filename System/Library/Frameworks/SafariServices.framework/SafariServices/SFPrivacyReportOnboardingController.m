@interface SFPrivacyReportOnboardingController
+ (id)_createEnableRecommendedProtectionControllerWithCompletionHandler:(id)a3;
+ (id)_createEnableTrackerProtectionControllerWithCompletionHandler:(id)a3;
+ (id)onboardingViewControllerWithCompletionHandler:(id)a3;
@end

@implementation SFPrivacyReportOnboardingController

+ (id)onboardingViewControllerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C9808] sharedManager];
  if ([v5 isPrivacyProxyActive])
  {
    v6 = [MEMORY[0x1E69C9808] sharedManager];
    v7 = [v6 isPrivacyProxyOnForEitherTier];

    if (!v7)
    {
      v8 = [a1 _createEnableRecommendedProtectionControllerWithCompletionHandler:v4];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [a1 _createEnableTrackerProtectionControllerWithCompletionHandler:v4];
LABEL_6:
  v9 = v8;

  return v9;
}

+ (id)_createEnableTrackerProtectionControllerWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"Shield"];
  v5 = objc_alloc(getOBWelcomeControllerClass());
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  v8 = [v5 initWithTitle:v6 detailText:v7 icon:v4];

  v9 = [getOBBoldTrayButtonClass() boldButton];
  v10 = _WBSLocalizedString();
  [v9 setTitle:v10 forState:0];

  v11 = MEMORY[0x1E69DC628];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__SFPrivacyReportOnboardingController__createEnableTrackerProtectionControllerWithCompletionHandler___block_invoke;
  v18[3] = &unk_1E8490140;
  v19 = v3;
  v12 = v3;
  v13 = [v11 actionWithTitle:&stru_1F4FE9E38 image:0 identifier:0 handler:v18];
  [v9 addAction:v13 forControlEvents:0x2000];

  v14 = [v8 buttonTray];
  [v14 addButton:v9];

  v15 = [v8 buttonTray];
  v16 = createPromptCancelButtonWithCompletionHandler(v12);
  [v15 addButton:v16];

  return v8;
}

uint64_t __101__SFPrivacyReportOnboardingController__createEnableTrackerProtectionControllerWithCompletionHandler___block_invoke(uint64_t a1)
{
  enableTrackerProtection();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

+ (id)_createEnableRecommendedProtectionControllerWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69C9808] sharedManager];
  [v4 isPrivacyProxyOnInICloudSettings];
  v5 = _WBSLocalizedString();

  v6 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"Shield"];
  v7 = objc_alloc(getOBWelcomeControllerClass());
  v8 = _WBSLocalizedString();
  v9 = [v7 initWithTitle:v8 detailText:v5 icon:v6];

  v10 = [v9 headerView];
  LODWORD(v11) = 1036831949;
  [v10 setTitleHyphenationFactor:v11];

  v12 = [getOBBoldTrayButtonClass() boldButton];
  v13 = _WBSLocalizedString();
  [v12 setTitle:v13 forState:0];

  v14 = MEMORY[0x1E69DC628];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105__SFPrivacyReportOnboardingController__createEnableRecommendedProtectionControllerWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E8490140;
  v22 = v3;
  v15 = v3;
  v16 = [v14 actionWithTitle:&stru_1F4FE9E38 image:0 identifier:0 handler:v21];
  [v12 addAction:v16 forControlEvents:0x2000];

  v17 = [v9 buttonTray];
  [v17 addButton:v12];

  v18 = [v9 buttonTray];
  v19 = createPromptCancelButtonWithCompletionHandler(v15);
  [v18 addButton:v19];

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