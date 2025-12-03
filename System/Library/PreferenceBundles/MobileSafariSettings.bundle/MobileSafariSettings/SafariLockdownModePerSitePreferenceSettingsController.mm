@interface SafariLockdownModePerSitePreferenceSettingsController
- (id)_lockdownModeStatusExplainerSpecifier;
- (id)confirmationPromptStringsForSpecifierChangeIfNeeded:(id)needed fromValue:(id)value toValue:(id)toValue;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle;
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
  preferenceManager = [(SafariLockdownModePerSitePreferenceSettingsController *)self preferenceManager];
  lockdownPreference = [preferenceManager lockdownPreference];

  return lockdownPreference;
}

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle
{
  bundleCopy = bundle;
  targetCopy = target;
  nameCopy = name;
  v11 = +[NSMutableArray array];
  v15.receiver = self;
  v15.super_class = SafariLockdownModePerSitePreferenceSettingsController;
  v12 = [(SafariPerSitePreferenceSettingsController *)&v15 loadSpecifiersFromPlistName:nameCopy target:targetCopy bundle:bundleCopy];

  _lockdownModeStatusExplainerSpecifier = [(SafariLockdownModePerSitePreferenceSettingsController *)self _lockdownModeStatusExplainerSpecifier];
  [v11 addObject:_lockdownModeStatusExplainerSpecifier];

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

- (id)confirmationPromptStringsForSpecifierChangeIfNeeded:(id)needed fromValue:(id)value toValue:(id)toValue
{
  neededCopy = needed;
  valueCopy = value;
  toValueCopy = toValue;
  if ([toValueCopy BOOLValue] & 1) != 0 || (WBSIsEqual())
  {
    v10 = 0;
  }

  else
  {
    v18[0] = PSConfirmationTitleKey;
    v11 = SafariSettingsLocalizedString(@"Turn Off Lockdown Mode Prompt Title %@", @"SafariLockdownMode");
    name = [neededCopy name];
    v13 = [NSString stringWithFormat:v11, name, v18[0]];
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