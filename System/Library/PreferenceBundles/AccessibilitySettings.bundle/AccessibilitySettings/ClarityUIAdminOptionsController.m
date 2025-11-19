@interface ClarityUIAdminOptionsController
- (ClarityUIAdminOptionsController)init;
- (id)specifiers;
- (void)_showAdminPasscodeSetupController:(id)a3;
@end

@implementation ClarityUIAdminOptionsController

- (ClarityUIAdminOptionsController)init
{
  v9.receiver = self;
  v9.super_class = ClarityUIAdminOptionsController;
  v2 = [(ClarityUIAdminOptionsController *)&v9 init];
  if (v2)
  {
    v3 = settingsLocString(@"ADMIN_OPTIONS", @"ClarityUISettings");
    v4 = [(ClarityUIAdminOptionsController *)v2 navigationItem];
    [v4 setTitle:v3];

    v5 = objc_opt_new();
    setupNavigationController = v2->_setupNavigationController;
    v2->_setupNavigationController = v5;

    v7 = v2;
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = settingsLocString(@"CHANGE_ADMIN_PASSCODE", @"ClarityUISettings");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v7 setButtonAction:"_showAdminPasscodeSetupController:"];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    if (+[SFRestrictionsPasscodeController settingEnabled])
    {
      v8 = +[PSSpecifier emptyGroupSpecifier];
      v9 = settingsLocString(@"CHANGE_ADMIN_PASSCODE_FOOTER", @"ClarityUISettings");
      [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

      [v5 addObject:v8];
      [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:PSEnabledKey];
    }

    [v5 addObject:v7];
    v10 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_showAdminPasscodeSetupController:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __69__ClarityUIAdminOptionsController__showAdminPasscodeSetupController___block_invoke;
  v7[3] = &unk_2564C0;
  v7[4] = self;
  v4 = [[ClarityUIAdminPasscodeSetupController alloc] initWithCompletion:v7];
  v5 = [[ClarityOnboardingNavigationWrapperController alloc] initWithController:v4];
  setupNavigationController = self->_setupNavigationController;
  self->_setupNavigationController = v5;

  [(ClarityOnboardingNavigationWrapperController *)self->_setupNavigationController setModalPresentationStyle:5];
  [(ClarityUIAdminOptionsController *)self presentViewController:self->_setupNavigationController animated:0 completion:0];
}

@end