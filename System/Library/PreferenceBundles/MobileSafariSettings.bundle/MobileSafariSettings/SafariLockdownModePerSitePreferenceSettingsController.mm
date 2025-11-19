@interface SafariLockdownModePerSitePreferenceSettingsController
- (id)_lockdownModeStatusExplainerSpecifier;
- (id)confirmationPromptStringsForSpecifierChangeIfNeeded:(id)a3 fromValue:(id)a4 toValue:(id)a5;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5;
- (id)preference;
- (id)preferenceManager;
@end

@implementation SafariLockdownModePerSitePreferenceSettingsController

- (id)preferenceManager
{
  lockdownModePreferenceManager = self->_lockdownModePreferenceManager;
  if (!lockdownModePreferenceManager)
  {
    v4 = [WBSLockdownModePreferenceManager alloc];
    v5 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
    v6 = [v4 initWithPerSitePreferenceStore:v5];
    v7 = self->_lockdownModePreferenceManager;
    self->_lockdownModePreferenceManager = v6;

    lockdownModePreferenceManager = self->_lockdownModePreferenceManager;
  }

  return lockdownModePreferenceManager;
}

- (id)preference
{
  v2 = [(SafariLockdownModePerSitePreferenceSettingsController *)self preferenceManager];
  v3 = [v2 lockdownPreference];

  return v3;
}

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSMutableArray array];
  v15.receiver = self;
  v15.super_class = SafariLockdownModePerSitePreferenceSettingsController;
  v12 = [(SafariPerSitePreferenceSettingsController *)&v15 loadSpecifiersFromPlistName:v10 target:v9 bundle:v8];

  v13 = [(SafariLockdownModePerSitePreferenceSettingsController *)self _lockdownModeStatusExplainerSpecifier];
  [v11 addObject:v13];

  [v11 addObjectsFromArray:v12];

  return v11;
}

- (id)_lockdownModeStatusExplainerSpecifier
{
  v2 = [PSSpecifier groupSpecifierWithID:@"LOCKDOWN_MODE_STATUS_EXPLAINER_ID"];
  IsPad = _SFDeviceIsPad();
  v4 = @"iPhone";
  if (IsPad)
  {
    v4 = @"iPad";
  }

  v5 = v4;
  if (+[WBSUIFeatureAvailability isLockdownModeEnabledForSafari])
  {
    v6 = @"Lockdown Mode Explainer On %@";
  }

  else
  {
    v6 = @"Lockdown Mode Explainer Off %@";
  }

  v7 = [NSString stringWithFormat:v6, v5];

  v8 = SafariSettingsLocalizedString(v7, @"SafariLockdownMode");
  [v2 setProperty:v8 forKey:PSFooterTextGroupKey];

  return v2;
}

- (id)confirmationPromptStringsForSpecifierChangeIfNeeded:(id)a3 fromValue:(id)a4 toValue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 BOOLValue] & 1) != 0 || (WBSIsEqual())
  {
    v10 = 0;
  }

  else
  {
    v18[0] = PSConfirmationTitleKey;
    v11 = SafariSettingsLocalizedString(@"Turn Off Lockdown Mode Prompt Title %@", @"SafariLockdownMode");
    v12 = [v7 name];
    v13 = [NSString stringWithFormat:v11, v12, v18[0]];
    v19[0] = v13;
    v18[1] = PSConfirmationPromptKey;
    v14 = SafariSettingsLocalizedString(@"Turn Off Lockdown Mode Prompt Detail", @"SafariLockdownMode");
    v19[1] = v14;
    v18[2] = PSConfirmationOKKey;
    v15 = SafariSettingsLocalizedString(@"Turn Off Title", @"SafariLockdownMode");
    v19[2] = v15;
    v18[3] = PSConfirmationCancelKey;
    v16 = SafariSettingsLocalizedString(@"Cancel", @"SafariLockdownMode");
    v19[3] = v16;
    v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  }

  return v10;
}

@end