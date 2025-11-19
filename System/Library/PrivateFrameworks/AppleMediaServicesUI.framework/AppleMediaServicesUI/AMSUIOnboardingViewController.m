@interface AMSUIOnboardingViewController
+ (id)privacyLinkIdentifiersFromController:(id)a3;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 appName:(id)a5 features:(id)a6 primaryButtonText:(id)a7 privacyLinkBundleIdentifier:(id)a8;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 appName:(id)a6 primaryButtonText:(id)a7 privacyLinkBundleIdentifier:(id)a8;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 appName:(id)a6 primaryButtonText:(id)a7 privacyLinkController:(id)a8;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 appName:(id)a6 primaryButtonText:(id)a7 secondaryButtonText:(id)a8 privacyLinkController:(id)a9;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 primaryButtonText:(id)a6 privacyLinkBundleIdentifier:(id)a7;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 primaryButtonText:(id)a6 privacyLinkController:(id)a7;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 primaryButtonText:(id)a6 secondaryButtonText:(id)a7 privacyLinkController:(id)a8;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 features:(id)a5 primaryButtonText:(id)a6 privacyLinkBundleIdentifier:(id)a7;
- (AMSUIOnboardingViewController)initWithTitleText:(id)a3 appName:(id)a4 features:(id)a5 primaryButtonText:(id)a6 privacyLinkController:(id)a7;
- (AMSUIOnboardingViewController)initWithTitleText:(id)a3 features:(id)a4 primaryButtonText:(id)a5 privacyLinkController:(id)a6;
- (BOOL)isPresentedInFormSheet;
- (CGSize)preferredContentSize;
- (UITraitCollection)cappedTraitCollection;
- (id)childTraitCollectionForViewController:(id)a3;
- (id)keyCommands;
- (unint64_t)supportedInterfaceOrientations;
- (void)commonInitWithPrimaryButtonText:(id)a3 privacyLinkBundleIdentifier:(id)a4;
- (void)commonInitWithPrimaryButtonText:(id)a3 privacyLinkController:(id)a4;
- (void)commonSetupWithPrimaryButtonText:(id)a3 secondaryButtonText:(id)a4 privacyLinkBundleIdentifiers:(id)a5;
- (void)didTapPrimaryButton:(id)a3;
- (void)didTapSecondaryButton:(id)a3;
- (void)updateOverrideTraits;
- (void)viewDidLoad;
@end

@implementation AMSUIOnboardingViewController

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 primaryButtonText:(id)a6 secondaryButtonText:(id)a7 privacyLinkController:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  obj = a7;
  v18 = a7;
  v28.receiver = self;
  v28.super_class = AMSUIOnboardingViewController;
  v19 = a8;
  v20 = [(AMSUIOnboardingViewController *)&v28 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_titleText, a4);
    objc_storeStrong(&v21->_descriptionText, a5);
    objc_storeStrong(&v21->_primaryButtonText, a6);
    objc_storeStrong(&v21->_secondaryButtonText, obj);
    objc_storeStrong(&v21->_image, a3);
    v22 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v15 detailText:v16 icon:v14];
    welcomeController = v21->_welcomeController;
    v21->_welcomeController = v22;

    v24 = [objc_opt_class() privacyLinkIdentifiersFromController:v19];
    [(AMSUIOnboardingViewController *)v21 commonSetupWithPrimaryButtonText:v17 secondaryButtonText:v18 privacyLinkBundleIdentifiers:v24];
  }

  return v21;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 appName:(id)a6 primaryButtonText:(id)a7 secondaryButtonText:(id)a8 privacyLinkController:(id)a9
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v29.receiver = self;
  v29.super_class = AMSUIOnboardingViewController;
  v20 = [(AMSUIOnboardingViewController *)&v29 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_titleText, a4);
    objc_storeStrong(&v21->_descriptionText, a5);
    objc_storeStrong(&v21->_primaryButtonText, a7);
    objc_storeStrong(&v21->_secondaryButtonText, a8);
    objc_storeStrong(&v21->_image, a3);
    v22 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v27 detailText:v26 appName:v16 icon:v28];
    welcomeController = v21->_welcomeController;
    v21->_welcomeController = v22;

    v24 = [objc_opt_class() privacyLinkIdentifiersFromController:v19];
    [(AMSUIOnboardingViewController *)v21 commonSetupWithPrimaryButtonText:v17 secondaryButtonText:v18 privacyLinkBundleIdentifiers:v24];
  }

  return v21;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 primaryButtonText:(id)a6 privacyLinkController:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = AMSUIOnboardingViewController;
  v18 = [(AMSUIOnboardingViewController *)&v24 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleText, a4);
    objc_storeStrong(&v19->_descriptionText, a5);
    objc_storeStrong(&v19->_primaryButtonText, a6);
    objc_storeStrong(&v19->_image, a3);
    v20 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v14 detailText:v15 icon:v13];
    welcomeController = v19->_welcomeController;
    v19->_welcomeController = v20;

    v22 = [objc_opt_class() privacyLinkIdentifiersFromController:v17];
    [(AMSUIOnboardingViewController *)v19 commonSetupWithPrimaryButtonText:v16 privacyLinkBundleIdentifiers:v22];
  }

  return v19;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 appName:(id)a6 primaryButtonText:(id)a7 privacyLinkController:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a7;
  v28.receiver = self;
  v28.super_class = AMSUIOnboardingViewController;
  v20 = a8;
  v21 = [(AMSUIOnboardingViewController *)&v28 initWithNibName:0 bundle:0];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_titleText, a4);
    objc_storeStrong(&v22->_descriptionText, a5);
    objc_storeStrong(&v22->_primaryButtonText, v18);
    objc_storeStrong(&v22->_image, a3);
    v23 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v15 detailText:v16 appName:v17 icon:v14];
    welcomeController = v22->_welcomeController;
    v22->_welcomeController = v23;

    v25 = [objc_opt_class() privacyLinkIdentifiersFromController:v20];
    [(AMSUIOnboardingViewController *)v22 commonSetupWithPrimaryButtonText:v19 privacyLinkBundleIdentifiers:v25];
  }

  return v22;
}

- (AMSUIOnboardingViewController)initWithTitleText:(id)a3 features:(id)a4 primaryButtonText:(id)a5 privacyLinkController:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v39.receiver = self;
  v39.super_class = AMSUIOnboardingViewController;
  v15 = [(AMSUIOnboardingViewController *)&v39 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    v32 = v14;
    objc_storeStrong(&v15->_titleText, a3);
    objc_storeStrong(&v16->_primaryButtonText, a5);
    v34 = v11;
    v17 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v11 detailText:0 icon:0];
    welcomeController = v16->_welcomeController;
    v16->_welcomeController = v17;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = v12;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v35 + 1) + 8 * i);
          v25 = v16->_welcomeController;
          v26 = [v24 titleText];
          v27 = [v24 descriptionText];
          v28 = [v24 image];
          [(OBWelcomeController *)v25 addBulletedListItemWithTitle:v26 description:v27 image:v28];
        }

        v21 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v21);
    }

    v14 = v32;
    v29 = [objc_opt_class() privacyLinkIdentifiersFromController:v32];
    [(AMSUIOnboardingViewController *)v16 commonSetupWithPrimaryButtonText:v13 privacyLinkBundleIdentifiers:v29];

    v12 = v33;
    v11 = v34;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

- (AMSUIOnboardingViewController)initWithTitleText:(id)a3 appName:(id)a4 features:(id)a5 primaryButtonText:(id)a6 privacyLinkController:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v43.receiver = self;
  v43.super_class = AMSUIOnboardingViewController;
  v18 = [(AMSUIOnboardingViewController *)&v43 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    v35 = v17;
    objc_storeStrong(&v18->_titleText, a3);
    objc_storeStrong(&v19->_primaryButtonText, a6);
    v37 = v14;
    v38 = v13;
    v20 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v13 detailText:0 appName:v14 icon:0];
    welcomeController = v19->_welcomeController;
    v19->_welcomeController = v20;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v15;
    v22 = v15;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          v28 = v19->_welcomeController;
          v29 = [v27 titleText];
          v30 = [v27 descriptionText];
          v31 = [v27 image];
          [(OBWelcomeController *)v28 addBulletedListItemWithTitle:v29 description:v30 image:v31];
        }

        v24 = [v22 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v24);
    }

    v17 = v35;
    v32 = [objc_opt_class() privacyLinkIdentifiersFromController:v35];
    [(AMSUIOnboardingViewController *)v19 commonSetupWithPrimaryButtonText:v16 privacyLinkBundleIdentifiers:v32];

    v14 = v37;
    v13 = v38;
    v15 = v36;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v19;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 primaryButtonText:(id)a6 privacyLinkBundleIdentifier:(id)a7
{
  v26[1] = *MEMORY[0x1E69E9840];
  v24 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = AMSUIOnboardingViewController;
  v17 = [(AMSUIOnboardingViewController *)&v25 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_titleText, a4);
    objc_storeStrong(&v18->_descriptionText, a5);
    objc_storeStrong(&v18->_primaryButtonText, a6);
    objc_storeStrong(&v18->_image, a3);
    v19 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v13 detailText:v14 icon:v24];
    welcomeController = v18->_welcomeController;
    v18->_welcomeController = v19;

    v26[0] = v16;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(AMSUIOnboardingViewController *)v18 commonSetupWithPrimaryButtonText:v15 privacyLinkBundleIdentifiers:v21];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v18;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 appName:(id)a6 primaryButtonText:(id)a7 privacyLinkBundleIdentifier:(id)a8
{
  v30[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a7;
  v29.receiver = self;
  v29.super_class = AMSUIOnboardingViewController;
  v20 = a8;
  v21 = [(AMSUIOnboardingViewController *)&v29 initWithNibName:0 bundle:0];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_titleText, a4);
    objc_storeStrong(&v22->_descriptionText, a5);
    objc_storeStrong(&v22->_primaryButtonText, v18);
    objc_storeStrong(&v22->_image, a3);
    v23 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v15 detailText:v16 appName:v17 icon:v14];
    welcomeController = v22->_welcomeController;
    v22->_welcomeController = v23;

    v30[0] = v20;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [(AMSUIOnboardingViewController *)v22 commonSetupWithPrimaryButtonText:v19 privacyLinkBundleIdentifiers:v25];
  }

  v26 = *MEMORY[0x1E69E9840];
  return v22;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 features:(id)a5 primaryButtonText:(id)a6 privacyLinkBundleIdentifier:(id)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v43.receiver = self;
  v43.super_class = AMSUIOnboardingViewController;
  v18 = [(AMSUIOnboardingViewController *)&v43 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    v35 = v17;
    objc_storeStrong(&v18->_titleText, a4);
    objc_storeStrong(&v19->_primaryButtonText, a6);
    objc_storeStrong(&v19->_image, a3);
    v37 = v14;
    v38 = v13;
    v20 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v14 detailText:0 icon:v13];
    welcomeController = v19->_welcomeController;
    v19->_welcomeController = v20;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v15;
    v22 = v15;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          v28 = v19->_welcomeController;
          v29 = [v27 titleText];
          v30 = [v27 descriptionText];
          v31 = [v27 image];
          [(OBWelcomeController *)v28 addBulletedListItemWithTitle:v29 description:v30 image:v31];
        }

        v24 = [v22 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v24);
    }

    v17 = v35;
    v44 = v35;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    [(AMSUIOnboardingViewController *)v19 commonSetupWithPrimaryButtonText:v16 privacyLinkBundleIdentifiers:v32];

    v14 = v37;
    v13 = v38;
    v15 = v36;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v19;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 appName:(id)a5 features:(id)a6 primaryButtonText:(id)a7 privacyLinkBundleIdentifier:(id)a8
{
  v50 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v47.receiver = self;
  v47.super_class = AMSUIOnboardingViewController;
  v20 = [(AMSUIOnboardingViewController *)&v47 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    v37 = v19;
    objc_storeStrong(&v20->_titleText, a4);
    objc_storeStrong(&v21->_primaryButtonText, a7);
    objc_storeStrong(&v21->_image, a3);
    v39 = v16;
    v40 = v15;
    obja = v14;
    v22 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:v15 detailText:0 appName:v16 icon:v14];
    welcomeController = v21->_welcomeController;
    v21->_welcomeController = v22;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v17;
    v24 = v17;
    v25 = [v24 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v44;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v43 + 1) + 8 * i);
          v30 = v21->_welcomeController;
          v31 = [v29 titleText];
          v32 = [v29 descriptionText];
          v33 = [v29 image];
          [(OBWelcomeController *)v30 addBulletedListItemWithTitle:v31 description:v32 image:v33];
        }

        v26 = [v24 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v26);
    }

    v19 = v37;
    v48 = v37;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    [(AMSUIOnboardingViewController *)v21 commonSetupWithPrimaryButtonText:v18 privacyLinkBundleIdentifiers:v34];

    v15 = v40;
    v14 = obja;
    v17 = v38;
    v16 = v39;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)commonSetupWithPrimaryButtonText:(id)a3 secondaryButtonText:(id)a4 privacyLinkBundleIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_queue_create("com.apple.AppleMediaServicesUI.onboardingMetrics", 0);
  metricsQueue = self->_metricsQueue;
  self->_metricsQueue = v11;

  if (v10)
  {
    v13 = [(AMSUIOnboardingViewController *)self welcomeController];
    v14 = [v13 buttonTray];
    [v14 addPrivacyLinkForBundles:v10];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v15 = getOBBoldTrayButtonClass_softClass;
  v33 = getOBBoldTrayButtonClass_softClass;
  if (!getOBBoldTrayButtonClass_softClass)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __getOBBoldTrayButtonClass_block_invoke;
    v28 = &unk_1E7F241B0;
    v29 = &v30;
    __getOBBoldTrayButtonClass_block_invoke(&v25);
    v15 = v31[3];
  }

  v16 = v15;
  _Block_object_dispose(&v30, 8);
  v17 = [v15 boldButton];
  [v17 setTitle:v8 forState:0];
  [v17 setAccessibilityIdentifier:@"amsui.onboarding.primaryButton"];
  [v17 addTarget:self action:sel_didTapPrimaryButton_ forControlEvents:64];
  v18 = [(AMSUIOnboardingViewController *)self welcomeController];
  v19 = [v18 buttonTray];
  [v19 addButton:v17];

  if (v9)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v20 = getOBLinkTrayButtonClass_softClass;
    v33 = getOBLinkTrayButtonClass_softClass;
    if (!getOBLinkTrayButtonClass_softClass)
    {
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __getOBLinkTrayButtonClass_block_invoke;
      v28 = &unk_1E7F241B0;
      v29 = &v30;
      __getOBLinkTrayButtonClass_block_invoke(&v25);
      v20 = v31[3];
    }

    v21 = v20;
    _Block_object_dispose(&v30, 8);
    v22 = [v20 linkButton];
    [v22 setTitle:v9 forState:0];
    [v17 setAccessibilityIdentifier:@"amsui.onboarding.secondaryButton"];
    [v22 addTarget:self action:sel_didTapSecondaryButton_ forControlEvents:64];
    v23 = [(AMSUIOnboardingViewController *)self welcomeController];
    v24 = [v23 buttonTray];
    [v24 addButton:v22];
  }
}

- (void)commonInitWithPrimaryButtonText:(id)a3 privacyLinkBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [getOBPrivacyLinkControllerClass() linkWithBundleIdentifier:v6];

  [(AMSUIOnboardingViewController *)self commonInitWithPrimaryButtonText:v7 privacyLinkController:v8];
}

- (void)commonInitWithPrimaryButtonText:(id)a3 privacyLinkController:(id)a4
{
  v5 = dispatch_queue_create("com.apple.AppleMediaServicesUI.onboardingMetrics", 0);
  metricsQueue = self->_metricsQueue;
  self->_metricsQueue = v5;

  MEMORY[0x1EEE66BB8]();
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = AMSUIOnboardingViewController;
  [(AMSUIOnboardingViewController *)&v27 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(AMSUIOnboardingViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(AMSUIOnboardingViewController *)self welcomeController];

  if (v5)
  {
    v6 = [(AMSUIOnboardingViewController *)self welcomeController];
    [(AMSUIOnboardingViewController *)self addChildViewController:v6];

    v7 = [(AMSUIOnboardingViewController *)self welcomeController];
    [v7 setModalPresentationStyle:2];

    v8 = [(AMSUIOnboardingViewController *)self welcomeController];
    v9 = [v8 view];
    [v9 setAutoresizingMask:18];

    v10 = [(AMSUIOnboardingViewController *)self view];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(AMSUIOnboardingViewController *)self welcomeController];
    v20 = [v19 view];
    [v20 setFrame:{v12, v14, v16, v18}];

    v21 = [(AMSUIOnboardingViewController *)self welcomeController];
    v22 = [v21 view];
    [v22 setAccessibilityIdentifier:@"amsui.onboarding"];

    v23 = [(AMSUIOnboardingViewController *)self view];
    v24 = [(AMSUIOnboardingViewController *)self welcomeController];
    v25 = [v24 view];
    [v23 addSubview:v25];

    v26 = [(AMSUIOnboardingViewController *)self welcomeController];
    [v26 didMoveToParentViewController:self];
  }
}

- (CGSize)preferredContentSize
{
  v2 = [(AMSUIOnboardingViewController *)self welcomeController];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(AMSUIOnboardingViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (UITraitCollection)cappedTraitCollection
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (cappedTraitCollection_onceToken != -1)
  {
    [AMSUIOnboardingViewController cappedTraitCollection];
  }

  v3 = [(AMSUIOnboardingViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v5 = cappedTraitCollection_cappedSizes;
    v6 = [(AMSUIOnboardingViewController *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    LODWORD(v5) = [v5 containsObject:v7];

    if (v5)
    {
      v8 = MEMORY[0x1E69DD1B8];
      v9 = [(AMSUIOnboardingViewController *)self traitCollection];
      v15[0] = v9;
      v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC38]];
      v15[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      v12 = [v8 traitCollectionWithTraitsFromCollections:v11];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_8:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __54__AMSUIOnboardingViewController_cappedTraitCollection__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC28];
  v4[0] = *MEMORY[0x1E69DDC30];
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E69DDC20];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = cappedTraitCollection_cappedSizes;
  cappedTraitCollection_cappedSizes = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)childTraitCollectionForViewController:(id)a3
{
  v4 = a3;
  getOBPrivacyLinkControllerClass();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(AMSUIOnboardingViewController *)self cappedTraitCollection];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateOverrideTraits
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(AMSUIOnboardingViewController *)self childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(AMSUIOnboardingViewController *)self childTraitCollectionForViewController:v8];
        [(AMSUIOnboardingViewController *)self setOverrideTraitCollection:v9 forChildViewController:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)keyCommands
{
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_didTapPrimaryButton_];
  v4 = [(AMSUIOnboardingViewController *)self primaryButtonText];
  [v3 setTitle:v4];

  v11.receiver = self;
  v11.super_class = AMSUIOnboardingViewController;
  v5 = [(AMSUIOnboardingViewController *)&v11 keyCommands];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v8 arrayByAddingObject:v3];

  return v9;
}

- (void)didTapSecondaryButton:(id)a3
{
  v4 = [(AMSUIOnboardingViewController *)self secondaryButtonCallback];

  if (v4)
  {
    v5 = [(AMSUIOnboardingViewController *)self secondaryButtonCallback];
    v5[2](v5, self);
  }
}

- (void)didTapPrimaryButton:(id)a3
{
  v4 = [(AMSUIOnboardingViewController *)self primaryButtonCallback];

  if (v4)
  {
    v5 = [(AMSUIOnboardingViewController *)self primaryButtonCallback];
    v5[2](v5, self);
  }
}

- (BOOL)isPresentedInFormSheet
{
  v3 = [(AMSUIOnboardingViewController *)self navigationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  v7 = [(AMSUIOnboardingViewController *)v6 presentationController];

  v8 = [v7 _activePresentationController];
  v9 = [v8 presentationStyle] == 2;

  return v9;
}

+ (id)privacyLinkIdentifiersFromController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 bundles];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) identifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end