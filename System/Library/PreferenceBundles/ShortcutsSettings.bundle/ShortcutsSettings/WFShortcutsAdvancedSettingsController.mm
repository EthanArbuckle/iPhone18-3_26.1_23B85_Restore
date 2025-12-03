@interface WFShortcutsAdvancedSettingsController
- (id)allowDeletingLargeAmountOfDataSwitchSpecifier;
- (id)allowDeletingWithoutConfirmationSwitchSpecifier;
- (id)allowSharingLargeAmountOfDataSwitchSpecifier;
- (id)scriptingGroupSpecifier;
- (id)scriptingSwitchSpecifier;
- (id)specifiers;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation WFShortcutsAdvancedSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    scriptingGroupSpecifier = [(WFShortcutsAdvancedSettingsController *)self scriptingGroupSpecifier];
    scriptingSwitchSpecifier = [(WFShortcutsAdvancedSettingsController *)self scriptingSwitchSpecifier];
    v15[1] = scriptingSwitchSpecifier;
    defaultGroupSpecifier = [(WFShortcutsAdvancedSettingsController *)self defaultGroupSpecifier];
    v15[2] = defaultGroupSpecifier;
    allowSharingLargeAmountOfDataSwitchSpecifier = [(WFShortcutsAdvancedSettingsController *)self allowSharingLargeAmountOfDataSwitchSpecifier];
    v15[3] = allowSharingLargeAmountOfDataSwitchSpecifier;
    defaultGroupSpecifier2 = [(WFShortcutsAdvancedSettingsController *)self defaultGroupSpecifier];
    v15[4] = defaultGroupSpecifier2;
    allowDeletingWithoutConfirmationSwitchSpecifier = [(WFShortcutsAdvancedSettingsController *)self allowDeletingWithoutConfirmationSwitchSpecifier];
    v15[5] = allowDeletingWithoutConfirmationSwitchSpecifier;
    allowDeletingLargeAmountOfDataSwitchSpecifier = [(WFShortcutsAdvancedSettingsController *)self allowDeletingLargeAmountOfDataSwitchSpecifier];
    v15[6] = allowDeletingLargeAmountOfDataSwitchSpecifier;
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

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = WFShortcutsAdvancedSettingsController;
  specifierCopy = specifier;
  [(WFShortcutsAdvancedSettingsController *)&v9 setPreferenceValue:value specifier:specifierCopy];
  v6 = [specifierCopy propertyForKey:{PSKeyNameKey, v9.receiver, v9.super_class}];

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