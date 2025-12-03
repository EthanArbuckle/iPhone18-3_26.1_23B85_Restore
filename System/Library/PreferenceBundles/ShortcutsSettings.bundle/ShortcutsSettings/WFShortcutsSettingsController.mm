@interface WFShortcutsSettingsController
- (BOOL)isPrivateSharingEnabled;
- (id)OSSSpecifier;
- (id)advancedSettingsSpecifier;
- (id)privateSharingEnabled:(id)enabled;
- (id)privateSharingGroupSpecifier;
- (id)privateSharingSwitchSpecifier;
- (id)specifiers;
- (id)syncSpecifier;
- (void)setPrivateSharingEnabled:(id)enabled forSpecifier:(id)specifier;
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
    isChineseRegionDevice = [v9 isChineseRegionDevice];

    if (isChineseRegionDevice)
    {
      v11 = 33619972;
    }

    else
    {
      v11 = 33619968;
    }

    v12 = [(PSSystemPolicyForApp *)v8 specifiersForPolicyOptions:v11 force:0];
    v13 = [v12 mutableCopy];

    dummyGroupSpecifier = [(WFShortcutsSettingsController *)self dummyGroupSpecifier];
    [v13 addObject:dummyGroupSpecifier];

    syncSpecifier = [(WFShortcutsSettingsController *)self syncSpecifier];
    [v13 addObject:syncSpecifier];

    privateSharingGroupSpecifier = [(WFShortcutsSettingsController *)self privateSharingGroupSpecifier];
    [v13 addObject:privateSharingGroupSpecifier];

    privateSharingSwitchSpecifier = [(WFShortcutsSettingsController *)self privateSharingSwitchSpecifier];
    [v13 addObject:privateSharingSwitchSpecifier];

    dummyGroupSpecifier2 = [(WFShortcutsSettingsController *)self dummyGroupSpecifier];
    [v13 addObject:dummyGroupSpecifier2];

    advancedSettingsSpecifier = [(WFShortcutsSettingsController *)self advancedSettingsSpecifier];
    [v13 addObject:advancedSettingsSpecifier];

    dummyGroupSpecifier3 = [(WFShortcutsSettingsController *)self dummyGroupSpecifier];
    [v13 addObject:dummyGroupSpecifier3];

    oSSSpecifier = [(WFShortcutsSettingsController *)self OSSSpecifier];
    [v13 addObject:oSSSpecifier];

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

- (void)setPrivateSharingEnabled:(id)enabled forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [enabled BOOLValue];
  v8 = [specifierCopy propertyForKey:PSControlKey];

  [v8 setOn:bOOLValue animated:1];
  v7 = +[NSUserDefaults systemShortcutsUserDefaults];
  [v7 setBool:bOOLValue forKey:WFShortcutsPrivateSharingEnabledKey];
}

- (id)privateSharingEnabled:(id)enabled
{
  isPrivateSharingEnabled = [(WFShortcutsSettingsController *)self isPrivateSharingEnabled];

  return [NSNumber numberWithBool:isPrivateSharingEnabled];
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
  privateSharingGroupUntrustedShortcutsDescription = [(WFShortcutsSettingsController *)self privateSharingGroupUntrustedShortcutsDescription];
  sharingGroupAboutLinkText = [(WFShortcutsSettingsController *)self sharingGroupAboutLinkText];
  v6 = [NSString stringWithFormat:@"%@ %@", privateSharingGroupUntrustedShortcutsDescription, sharingGroupAboutLinkText];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v3 setProperty:v8 forKey:PSFooterCellClassGroupKey];

  [v3 setProperty:v6 forKey:PSFooterHyperlinkViewTitleKey];
  sharingGroupAboutLinkText2 = [(WFShortcutsSettingsController *)self sharingGroupAboutLinkText];
  v14.location = [v6 rangeOfString:sharingGroupAboutLinkText2];
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