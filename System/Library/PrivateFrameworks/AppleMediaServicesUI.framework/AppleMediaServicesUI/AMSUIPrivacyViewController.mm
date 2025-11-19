@interface AMSUIPrivacyViewController
+ (id)privacyControllerWithIdentifier:(id)a3 acknowledgementHandler:(id)a4;
@end

@implementation AMSUIPrivacyViewController

+ (id)privacyControllerWithIdentifier:(id)a3 acknowledgementHandler:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = getOBBundleClass[0];
    v8 = a3;
    v26 = [(objc_class *)v7() bundleWithIdentifier:v8];

    v9 = [v26 privacyFlow];
    v10 = [v9 localizedTitle];
    v11 = [v9 localizedButtonCaption];
    v12 = [a1 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

    v13 = [AMSUIPrivacyIconViewController alloc];
    v14 = [v9 buttonIcon];
    v15 = [(AMSUIPrivacyIconViewController *)v13 initWithImage:v14];
    [v12 _setHeaderContentViewController:v15];

    v16 = MEMORY[0x1E69DC648];
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v18 = AMSUILocalizedStringFromBundle(@"PRIVACY_VIEW_CONTROLLER_CONTINUE", 0, v17);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __85__AMSUIPrivacyViewController_privacyControllerWithIdentifier_acknowledgementHandler___block_invoke;
    v29[3] = &unk_1E7F25900;
    v19 = v6;
    v30 = v19;
    v20 = [v16 actionWithTitle:v18 style:0 handler:v29];

    v21 = MEMORY[0x1E69DC648];
    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v23 = AMSUILocalizedStringFromBundle(@"PRIVACY_VIEW_CONTROLLER_LEARN_MORE", 0, v22);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __85__AMSUIPrivacyViewController_privacyControllerWithIdentifier_acknowledgementHandler___block_invoke_2;
    v27[3] = &unk_1E7F25900;
    v28 = v19;
    v24 = [v21 actionWithTitle:v23 style:1 handler:v27];

    [v12 addAction:v20];
    [v12 addAction:v24];
    [v12 setPreferredAction:v20];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __85__AMSUIPrivacyViewController_privacyControllerWithIdentifier_acknowledgementHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __85__AMSUIPrivacyViewController_privacyControllerWithIdentifier_acknowledgementHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

@end