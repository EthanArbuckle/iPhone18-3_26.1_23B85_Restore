@interface WFShortcutsAdvancedSettingsController
- (id)allowDeletingLargeAmountOfDataSwitchSpecifier;
- (id)allowDeletingWithoutConfirmationSwitchSpecifier;
- (id)allowSharingLargeAmountOfDataSwitchSpecifier;
- (id)scriptingGroupSpecifier;
- (id)scriptingSwitchSpecifier;
- (id)specifiers;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFShortcutsAdvancedSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(WFShortcutsAdvancedSettingsController *)self scriptingGroupSpecifier];
    v6 = [(WFShortcutsAdvancedSettingsController *)self scriptingSwitchSpecifier];
    v15[1] = v6;
    v7 = [(WFShortcutsAdvancedSettingsController *)self defaultGroupSpecifier];
    v15[2] = v7;
    v8 = [(WFShortcutsAdvancedSettingsController *)self allowSharingLargeAmountOfDataSwitchSpecifier];
    v15[3] = v8;
    v9 = [(WFShortcutsAdvancedSettingsController *)self defaultGroupSpecifier];
    v15[4] = v9;
    v10 = [(WFShortcutsAdvancedSettingsController *)self allowDeletingWithoutConfirmationSwitchSpecifier];
    v15[5] = v10;
    v11 = [(WFShortcutsAdvancedSettingsController *)self allowDeletingLargeAmountOfDataSwitchSpecifier];
    v15[6] = v11;
    v12 = [NSArray arrayWithObjects:v15 count:7];
    v13 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v12;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)allowDeletingLargeAmountOfDataSwitchSpecifier
{
  v3 = WFShortcutsSettingsGetValueForKey(@"ALLOW_DELETING_LARGE_AMOUNT_OF_DATA_SWITCH_LABEL", @"ShortcutsAdvancedSettings");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v4 setProperty:@"com.apple.siri.shortcuts" forKey:PSDefaultsKey];
  [v4 setProperty:WFAllowDeletingLargeAmountsOfDataKey forKey:PSKeyNameKey];
  [v4 setProperty:&__kCFBooleanFalse forKey:PSDefaultValueKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v4;
}

- (id)allowDeletingWithoutConfirmationSwitchSpecifier
{
  v3 = WFShortcutsSettingsGetValueForKey(@"ALLOW_DELETING_WITHOUT_CONFIRMATION_SWITCH_LABEL", @"ShortcutsAdvancedSettings");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v4 setProperty:@"com.apple.siri.shortcuts" forKey:PSDefaultsKey];
  [v4 setProperty:WFAllowDeletingWithoutConfirmationKey forKey:PSKeyNameKey];
  [v4 setProperty:&__kCFBooleanFalse forKey:PSDefaultValueKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v4;
}

- (id)allowSharingLargeAmountOfDataSwitchSpecifier
{
  v3 = WFShortcutsSettingsGetValueForKey(@"ALLOW_SHARING_LARGE_AMOUNT_OF_DATA_SWITCH_LABEL", @"ShortcutsAdvancedSettings");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v4 setProperty:@"com.apple.siri.shortcuts" forKey:PSDefaultsKey];
  [v4 setProperty:WFAllowSharingLargeAmountsOfDataKey forKey:PSKeyNameKey];
  [v4 setProperty:&__kCFBooleanFalse forKey:PSDefaultValueKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v4;
}

- (id)scriptingSwitchSpecifier
{
  v3 = WFShortcutsSettingsGetValueForKey(@"SCRIPTING_SWITCH_LABEL", @"ShortcutsAdvancedSettings");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v4 setProperty:@"com.apple.siri.shortcuts" forKey:PSDefaultsKey];
  [v4 setProperty:WFScriptingActionEnabledKey forKey:PSKeyNameKey];
  [v4 setProperty:&__kCFBooleanFalse forKey:PSDefaultValueKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v4;
}

- (id)scriptingGroupSpecifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:0 edit:0];
  v3 = WFShortcutsSettingsGetValueForKey(@"SCRIPTING_GROUP_FOOTER", @"ShortcutsAdvancedSettings");
  [v2 setProperty:v3 forKey:PSFooterTextGroupKey];

  return v2;
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = WFShortcutsAdvancedSettingsController;
  v5 = a4;
  [(WFShortcutsAdvancedSettingsController *)&v9 setPreferenceValue:a3 specifier:v5];
  v6 = [v5 propertyForKey:{PSKeyNameKey, v9.receiver, v9.super_class}];

  v7 = objc_opt_new();
  v8 = [NSSet setWithObject:v6];
  [v7 synchronizeUserDefaultsDomain:@"com.apple.siri.shortcuts" keys:v8];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFShortcutsAdvancedSettingsController;
  [(WFShortcutsAdvancedSettingsController *)&v4 viewDidLoad];
  v3 = WFShortcutsSettingsLocalizedString(@"Advanced");
  [(WFShortcutsAdvancedSettingsController *)self setTitle:v3];
}

@end