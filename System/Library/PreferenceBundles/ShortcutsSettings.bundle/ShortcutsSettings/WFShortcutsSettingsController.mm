@interface WFShortcutsSettingsController
- (BOOL)isPrivateSharingEnabled;
- (id)OSSSpecifier;
- (id)advancedSettingsSpecifier;
- (id)privateSharingEnabled:(id)a3;
- (id)privateSharingGroupSpecifier;
- (id)privateSharingSwitchSpecifier;
- (id)specifiers;
- (id)syncSpecifier;
- (void)setPrivateSharingEnabled:(id)a3 forSpecifier:(id)a4;
- (void)showShortcutsSharingAndPrivacy;
- (void)viewDidLoad;
@end

@implementation WFShortcutsSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [PSSystemPolicyForApp alloc];
    v6 = [v5 initWithBundleIdentifier:VCBundleIdentifierShortcutsiOS];
    policy = self->_policy;
    self->_policy = v6;
    v8 = v6;

    v9 = +[WFDevice currentDevice];
    v10 = [v9 isChineseRegionDevice];

    if (v10)
    {
      v11 = 33619972;
    }

    else
    {
      v11 = 33619968;
    }

    v12 = [(PSSystemPolicyForApp *)v8 specifiersForPolicyOptions:v11 force:0];
    v13 = [v12 mutableCopy];

    v14 = [(WFShortcutsSettingsController *)self dummyGroupSpecifier];
    [v13 addObject:v14];

    v15 = [(WFShortcutsSettingsController *)self syncSpecifier];
    [v13 addObject:v15];

    v16 = [(WFShortcutsSettingsController *)self privateSharingGroupSpecifier];
    [v13 addObject:v16];

    v17 = [(WFShortcutsSettingsController *)self privateSharingSwitchSpecifier];
    [v13 addObject:v17];

    v18 = [(WFShortcutsSettingsController *)self dummyGroupSpecifier];
    [v13 addObject:v18];

    v19 = [(WFShortcutsSettingsController *)self advancedSettingsSpecifier];
    [v13 addObject:v19];

    v20 = [(WFShortcutsSettingsController *)self dummyGroupSpecifier];
    [v13 addObject:v20];

    v21 = [(WFShortcutsSettingsController *)self OSSSpecifier];
    [v13 addObject:v21];

    v22 = [v13 copy];
    v23 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v22;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)OSSSpecifier
{
  v3 = WFShortcutsSettingsLocalizedString(@"Legal Notices");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:objc_opt_class() cell:2 edit:0];

  [v4 setProperty:@"ShortcutsLegalNotices" forKey:PSIDKey];

  return v4;
}

- (id)advancedSettingsSpecifier
{
  v3 = WFShortcutsSettingsLocalizedString(@"Advanced");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:objc_opt_class() cell:2 edit:0];

  [v4 setProperty:@"ShortcutsAdvancedSettings" forKey:PSIDKey];

  return v4;
}

- (void)showShortcutsSharingAndPrivacy
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.shortcutssharing"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)setPrivateSharingEnabled:(id)a3 forSpecifier:(id)a4
{
  v5 = a4;
  v6 = [a3 BOOLValue];
  v8 = [v5 propertyForKey:PSControlKey];

  [v8 setOn:v6 animated:1];
  v7 = +[NSUserDefaults systemShortcutsUserDefaults];
  [v7 setBool:v6 forKey:WFShortcutsPrivateSharingEnabledKey];
}

- (id)privateSharingEnabled:(id)a3
{
  v3 = [(WFShortcutsSettingsController *)self isPrivateSharingEnabled];

  return [NSNumber numberWithBool:v3];
}

- (BOOL)isPrivateSharingEnabled
{
  v2 = +[NSUserDefaults systemShortcutsUserDefaults];
  v3 = [v2 BOOLForKey:WFShortcutsPrivateSharingEnabledKey];

  return v3;
}

- (id)privateSharingSwitchSpecifier
{
  v3 = WFShortcutsSettingsLocalizedString(@"Private Sharing");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPrivateSharingEnabled:forSpecifier:" get:"privateSharingEnabled:" detail:0 cell:6 edit:0];

  return v4;
}

- (id)privateSharingGroupSpecifier
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:0 edit:0];
  v4 = [(WFShortcutsSettingsController *)self privateSharingGroupUntrustedShortcutsDescription];
  v5 = [(WFShortcutsSettingsController *)self sharingGroupAboutLinkText];
  v6 = [NSString stringWithFormat:@"%@ %@", v4, v5];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v3 setProperty:v8 forKey:PSFooterCellClassGroupKey];

  [v3 setProperty:v6 forKey:PSFooterHyperlinkViewTitleKey];
  v9 = [(WFShortcutsSettingsController *)self sharingGroupAboutLinkText];
  v14.location = [v6 rangeOfString:v9];
  v10 = NSStringFromRange(v14);
  [v3 setProperty:v10 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v11 = [NSValue valueWithNonretainedObject:self];
  [v3 setProperty:v11 forKey:PSFooterHyperlinkViewTargetKey];

  [v3 setProperty:@"showShortcutsSharingAndPrivacy" forKey:PSFooterHyperlinkViewActionKey];

  return v3;
}

- (id)syncSpecifier
{
  v3 = WFShortcutsSettingsLocalizedString(@"iCloud Sync");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v4 setProperty:@"group.is.workflow.my.app" forKey:PSDefaultsKey];
  [v4 setProperty:WFCloudKitSyncEnabledKey forKey:PSKeyNameKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFShortcutsSettingsController;
  [(WFShortcutsSettingsController *)&v4 viewDidLoad];
  v3 = WFShortcutsSettingsLocalizedString(@"Shortcuts");
  [(WFShortcutsSettingsController *)self setTitle:v3];
}

@end