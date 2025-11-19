@interface SafariDeveloperSettingsController
- (BOOL)isBlockAllNewWebsiteDataRestricted:(id)a3;
- (BOOL)isJavaScriptRestricted:(id)a3;
- (SafariDeveloperSettingsController)init;
- (id)_automationController;
- (id)_enhancedPrivacyPreference;
- (id)_privacySpecifiers;
- (id)_remoteAutomationEnabled:(id)a3;
- (id)blockAllNewWebsiteDataEnabled;
- (id)isJavaScriptEnabled:(id)a3;
- (id)remoteInspectorEnabled:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_cancelBlockAllCookiesPrompt:(id)a3;
- (void)_confirmBlockAllCookies:(id)a3;
- (void)_setEnhancedPrivacyPreference:(id)a3 forSpecifier:(id)a4;
- (void)_setSafariAcceptCookiesForPolicy:(unint64_t)a3;
- (void)_synchronizeNanoUserDefaults;
- (void)safariToggleBlockAllNewWebsiteData:(id)a3 forSpecifier:(id)a4;
- (void)setCookieStoragePolicy:(unint64_t)a3;
- (void)setRemoteAutomationEnabled:(id)a3 specifier:(id)a4;
- (void)setRemoteInspectorEnabled:(id)a3 specifier:(id)a4;
- (void)showPrivacyExplanationSheet:(id)a3;
@end

@implementation SafariDeveloperSettingsController

- (SafariDeveloperSettingsController)init
{
  v7.receiver = self;
  v7.super_class = SafariDeveloperSettingsController;
  v2 = [(SafariDeveloperSettingsController *)&v7 init];
  if (v2)
  {
    v3 = +[MCProfileConnection sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = v3;

    v5 = v2;
  }

  return v2;
}

- (id)_privacySpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = SafariSettingsLocalizedString(@"Advanced Privacy Protections label", @"Developer");
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"_setEnhancedPrivacyPreference:forSpecifier:" get:"_enhancedPrivacyPreference" detail:objc_opt_class() cell:2 edit:0];

  v13[0] = PSAllowMultilineTitleKey;
  v13[1] = PSPrioritizeValueTextDisplayKey;
  v14[0] = &__kCFBooleanTrue;
  v14[1] = &__kCFBooleanTrue;
  v13[2] = PSUseModernLayoutKey;
  v14[2] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v5 setProperties:v6];

  [v3 addObject:v5];
  v7 = SafariSettingsLocalizedString(@"Off (Advanced Privacy Protections)", @"Developer");
  v12[0] = v7;
  v8 = SafariSettingsLocalizedString(@"Private Browsing Only (Advanced Privacy Protections)", @"Developer");
  v12[1] = v8;
  v9 = SafariSettingsLocalizedString(@"All Browsing (Advanced Privacy Protections)", @"Developer");
  v12[2] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:3];
  [v5 setValues:&off_90D58 titles:v10];

  return v3;
}

- (id)_enhancedPrivacyPreference
{
  v2 = +[NSUserDefaults safari_browserDefaults];
  if ([v2 BOOLForKey:WBSEnableEnhancedPrivacyInPrivateBrowsingPreferenceKey])
  {
    if ([v2 BOOLForKey:WBSEnableEnhancedPrivacyInRegularBrowsingPreferenceKey])
    {
      v3 = &off_90B68;
    }

    else
    {
      v3 = &off_90B50;
    }
  }

  else
  {
    v3 = &off_90B38;
  }

  return v3;
}

- (void)_setEnhancedPrivacyPreference:(id)a3 forSpecifier:(id)a4
{
  v4 = a3;
  v9 = +[NSUserDefaults safari_browserDefaults];
  v5 = [v4 integerValue];

  v6 = 0;
  v7 = &WBSEnableEnhancedPrivacyInPrivateBrowsingPreferenceKey;
  if (v5)
  {
    v8 = v9;
    if (v5 != &dword_0 + 1)
    {
      if (v5 != &dword_0 + 2)
      {
        goto LABEL_7;
      }

      v6 = 1;
    }

    [v9 setBool:1 forKey:WBSEnableEnhancedPrivacyInPrivateBrowsingPreferenceKey];
    v7 = &WBSEnableEnhancedPrivacyInRegularBrowsingPreferenceKey;
  }

  [v9 setBool:v6 forKey:*v7];
  v8 = v9;
LABEL_7:
}

- (id)specifiers
{
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v40 = OBJC_IVAR___PSListController__specifiers;
    v4 = [(SafariDeveloperSettingsController *)self loadSpecifiersFromPlistName:@"Developer" target:self];
    v5 = SafariSettingsLocalizedString(@"REMOTE_INSPECTOR_INSTRUCTIONS_TEXT", @"Developer");
    v6 = +[UIDevice currentDevice];
    v7 = [v6 localizedModel];
    v39 = [NSString stringWithFormat:v5, v7];

    v8 = [v4 specifierForID:@"REMOTE_INSPECTOR_ID"];
    [v8 setProperty:v39 forKey:PSFooterTextGroupKey];

    v9 = SafariSettingsLocalizedString(@"Web Inspector (Switch Label)", @"Developer");
    v38 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setRemoteInspectorEnabled:specifier:" get:"remoteInspectorEnabled:" detail:0 cell:6 edit:0];

    v10 = PSIDKey;
    v11 = PSDefaultValueKey;
    v43[0] = PSIDKey;
    v43[1] = PSDefaultValueKey;
    v44[0] = @"REMOTE_INSPECTOR_ENABLED";
    v44[1] = &__kCFBooleanFalse;
    v12 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v38 setProperties:v12];

    [v4 insertObject:v38 atIndex:{objc_msgSend(v4, "indexOfSpecifierWithID:", @"REMOTE_INSPECTOR_ID"}];
    v13 = SafariSettingsLocalizedString(@"Remote Automation (Switch Label)", @"Developer");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setRemoteAutomationEnabled:specifier:" get:"_remoteAutomationEnabled:" detail:0 cell:6 edit:0];

    v41[0] = v10;
    v41[1] = v11;
    v42[0] = @"REMOTE_AUTOMATION_ENABLED";
    v42[1] = &__kCFBooleanFalse;
    v15 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
    v37 = v14;
    [v14 setProperties:v15];

    [v4 insertObject:v14 atIndex:{objc_msgSend(v4, "indexOfSpecifierWithID:", @"REMOTE_AUTOMATION_ID"}];
    v16 = [v4 indexOfSpecifierWithID:@"BLOCK_ALL_NEW_COOKIES"];
    v17 = [(SafariDeveloperSettingsController *)self _privacySpecifiers];
    v18 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v16, [v17 count]);
    [v4 insertObjects:v17 atIndexes:v18];

    v19 = [v4 objectAtIndexedSubscript:{objc_msgSend(v4, "indexOfSpecifierWithID:", @"PRIVACY_SETTINGS"}];
    v20 = SafariSettingsLocalizedString(@"Advanced Privacy Section Title", @"Developer");
    [v19 setName:v20];

    v21 = SafariSettingsLocalizedString(@"Privacy Explanation Footer Description", @"Safari");
    v22 = [OBBundle bundleWithIdentifier:@"com.apple.onboarding.safari"];
    v23 = [v22 privacyFlow];
    v24 = [v23 localizedButtonTitle];

    v25 = [NSString stringWithFormat:@"%@\n%@", v21, v24];
    [v19 setProperty:v25 forKey:PSFooterHyperlinkViewTitleKey];
    v26 = [v21 length];
    v46.length = [v24 length];
    v46.location = v26 + 1;
    v27 = NSStringFromRange(v46);
    [v19 setProperty:v27 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v28 = [NSValue valueWithNonretainedObject:self];
    [v19 setProperty:v28 forKey:PSFooterHyperlinkViewTargetKey];

    [v19 setProperty:@"showPrivacyExplanationSheet:" forKey:PSFooterHyperlinkViewActionKey];
    v29 = [v4 specifierForID:@"BLOCK_ALL_NEW_COOKIES"];
    v30 = SafariSettingsLocalizedString(@"Block All Cookies", @"Safari");
    [v29 setName:v30];

    v31 = [v4 specifierForID:@"PRIVATE_CLICK_MEASUREMENT"];
    v32 = SafariSettingsLocalizedString(@"Privacy Preserving Ad Measurement", @"Safari");
    [v31 setName:v32];

    v33 = [v4 specifierForID:@"APPLE_PAY_DISCLOSURE_ALLOWED"];
    v34 = SafariSettingsLocalizedString(@"Check for Apple Pay", @"Safari");
    [v33 setName:v34];

    [(SafariSettingsListController *)self updateRestrictionsForSpecifiers:v4];
    v35 = *&self->super.PSListController_opaque[v40];
    *&self->super.PSListController_opaque[v40] = v4;

    v3 = *&self->super.PSListController_opaque[v40];
  }

  return v3;
}

- (BOOL)isJavaScriptRestricted:(id)a3
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 isBoolSettingLockedDownByRestrictions:MCFeatureSafariJavaScriptAllowed];

  return v4;
}

- (id)isJavaScriptEnabled:(id)a3
{
  v3 = +[NSUserDefaults safari_browserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 safari_isJavaScriptEnabled]);

  return v4;
}

- (id)remoteInspectorEnabled:(id)a3
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.webinspectord"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 BOOLForKey:@"RemoteInspectorEnabled"]);

  return v4;
}

- (void)setRemoteInspectorEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];

  [(SafariDeveloperSettingsController *)self _setRemoteInspectorEnabled:v5];
}

- (void)setRemoteAutomationEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];

  [(SafariDeveloperSettingsController *)self _setRemoteAutomationEnabled:v5];
}

- (id)_automationController
{
  v2 = _automationController_controller;
  if (!_automationController_controller)
  {
    v3 = objc_alloc_init(_SFAutomationController);
    v4 = _automationController_controller;
    _automationController_controller = v3;

    v2 = _automationController_controller;
  }

  return v2;
}

- (id)_remoteAutomationEnabled:(id)a3
{
  v3 = [(SafariDeveloperSettingsController *)self _automationController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowsRemoteAutomation]);

  return v4;
}

- (BOOL)isBlockAllNewWebsiteDataRestricted:(id)a3
{
  v3 = [(MCProfileConnection *)self->_profileConnection valueRestrictionForFeature:MCFeatureSafariAcceptCookies];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5 == 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)blockAllNewWebsiteDataEnabled
{
  v2 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  v3 = [v2 webui_safariCookieAcceptPolicyEnumValue];

  return [NSNumber numberWithInt:v3 == &dword_0 + 1];
}

- (void)safariToggleBlockAllNewWebsiteData:(id)a3 forSpecifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_8BB60 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    v11[0] = PSConfirmationTitleKey;
    v6 = SafariSettingsLocalizedString(@"Are you sure you want to block all cookies?", @"Safari");
    v12[0] = v6;
    v11[1] = PSConfirmationPromptKey;
    v7 = SafariSettingsLocalizedString(@"Websites may not work if you do this. It will remove existing cookies and website data. Safari will quit and your tabs will be reloaded.", @"Safari");
    v12[1] = v7;
    v11[2] = PSConfirmationOKKey;
    v8 = SafariSettingsLocalizedString(@"Block All", @"Safari");
    v12[2] = v8;
    v11[3] = PSConfirmationCancelKey;
    v9 = SafariSettingsLocalizedString(@"Cancel", @"Safari");
    v12[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    [v5 setupWithDictionary:v10];

    [v5 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
    [v5 setConfirmationAction:"_confirmBlockAllCookies:"];
    [v5 setConfirmationCancelAction:"_cancelBlockAllCookiesPrompt:"];
    [(SafariDeveloperSettingsController *)self showConfirmationViewForSpecifier:v5 useAlert:1];
  }

  else
  {

    [(SafariDeveloperSettingsController *)self _updateBlockAllNewWebsiteDataPolicyToBlockAllWebsiteData:0];
  }
}

- (void)_confirmBlockAllCookies:(id)a3
{
  [(SafariDeveloperSettingsController *)self _updateBlockAllNewWebsiteDataPolicyToBlockAllWebsiteData:1];
  v3 = WBAllWebsiteDataProfileIdentifier;

  [SafariStorageSettingsController deleteAllDataForProfileWithIdentifier:v3];
}

- (void)_cancelBlockAllCookiesPrompt:(id)a3
{
  v4 = [(SafariDeveloperSettingsController *)self specifierForID:@"BLOCK_ALL_NEW_COOKIES"];
  [(SafariDeveloperSettingsController *)self reloadSpecifier:v4];
}

- (void)_synchronizeNanoUserDefaults
{
  if (!_synchronizeNanoUserDefaults_syncManager)
  {
    v3 = objc_alloc_init(NPSManager);
    v4 = _synchronizeNanoUserDefaults_syncManager;
    _synchronizeNanoUserDefaults_syncManager = v3;
  }

  [(SafariSettingsListController *)self synchronizeSafariDefaults];
  v5 = _synchronizeNanoUserDefaults_syncManager;
  v6 = [NSSet setWithObjects:_SFNanoBlockAllCookiesEnabledKey, _SFWarnAboutFraudulentWebsitesDefaultsKey, 0];
  [v5 synchronizeUserDefaultsDomain:@"com.apple.mobilesafari" keys:v6 container:@"com.apple.mobilesafari"];
}

- (void)_setSafariAcceptCookiesForPolicy:(unint64_t)a3
{
  v3 = 0.0;
  if (a3 == 2)
  {
    *&v3 = 1.5;
  }

  if (!a3)
  {
    *&v3 = 2.0;
  }

  profileConnection = self->_profileConnection;
  v5 = [NSNumber numberWithFloat:v3];
  [(MCProfileConnection *)profileConnection setValue:v5 forSetting:MCFeatureSafariAcceptCookies];
}

- (void)setCookieStoragePolicy:(unint64_t)a3
{
  [(SafariDeveloperSettingsController *)self _setSafariAcceptCookiesForPolicy:a3];
  v4 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  [v4 webui_applySafariCookieAcceptPolicy];

  v5 = webuiCookieAcceptPolicyPreferencesKey;

  [(SafariSettingsListController *)self postDistributedNotificationNamed:v5];
}

- (void)showPrivacyExplanationSheet:(id)a3
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.safari"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = SafariDeveloperSettingsController;
  v4 = [(SafariDeveloperSettingsController *)&v11 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  v6 = [v4 textLabel];
  LODWORD(v7) = 1132068864;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];

  v8 = [v4 detailTextLabel];
  LODWORD(v9) = 1144750080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];

  return v4;
}

@end