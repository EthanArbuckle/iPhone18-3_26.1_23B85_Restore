@interface AUDeveloperSettingsLearnMoreController
- (AUDeveloperSettingsLearnMoreController)init;
- (void)donePressed;
@end

@implementation AUDeveloperSettingsLearnMoreController

- (AUDeveloperSettingsLearnMoreController)init
{
  v25[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = AUDeveloperSettingsLearnMoreController;
  v2 = [(AUDeveloperSettingsLearnMoreController *)&v19 init];
  if (v2)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v3 = getOBTextWelcomeControllerClass_softClass;
    v24 = getOBTextWelcomeControllerClass_softClass;
    if (!getOBTextWelcomeControllerClass_softClass)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __getOBTextWelcomeControllerClass_block_invoke;
      v20[3] = &unk_278BD0C78;
      v20[4] = &v21;
      __getOBTextWelcomeControllerClass_block_invoke(v20);
      v3 = v22[3];
    }

    v4 = v3;
    _Block_object_dispose(&v21, 8);
    v5 = [v3 alloc];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"LEGAL_CONSENT_TITLE" value:&stru_284F76208 table:@"AUDeveloperSettings"];
    v8 = [v5 initWithTitle:v7 detailText:0 symbolName:0];
    [(AUDeveloperSettingsLearnMoreController *)v2 setController:v8];

    controller = [(AUDeveloperSettingsLearnMoreController *)v2 controller];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"LEGAL_CONSENT_TEXT" value:&stru_284F76208 table:@"AUDeveloperSettings"];
    [controller addSectionWithHeader:0 content:v11];

    controller2 = [(AUDeveloperSettingsLearnMoreController *)v2 controller];
    v25[0] = controller2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [(AUDeveloperSettingsLearnMoreController *)v2 setViewControllers:v13];

    v14 = [objc_alloc(MEMORY[0x277D751E8]) initWithBarButtonSystemItem:0 target:v2 action:sel_donePressed];
    controller3 = [(AUDeveloperSettingsLearnMoreController *)v2 controller];
    navigationItem = [controller3 navigationItem];
    [navigationItem setRightBarButtonItem:v14];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)donePressed
{
  controller = [(AUDeveloperSettingsLearnMoreController *)self controller];
  presentingViewController = [controller presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end