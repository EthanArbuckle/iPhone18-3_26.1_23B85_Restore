@interface MeasureSettingsController
- (id)measureSettingsSpecifiers;
- (id)specifierIDForValue:(id)value;
- (id)specifiers;
- (void)configureUnitsRadioSelector;
- (void)emitNavigationEvent;
- (void)setAppPolicy;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation MeasureSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    [(MeasureSettingsController *)self setAppPolicy];
    measureSettingsSpecifiers = [(MeasureSettingsController *)self measureSettingsSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = measureSettingsSpecifiers;

    [(MeasureSettingsController *)self configureUnitsRadioSelector];
    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setAppPolicy
{
  v3 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.measure"];
  policy = self->_policy;
  self->_policy = v3;

  _objc_release_x1();
}

- (id)measureSettingsSpecifiers
{
  v3 = [(MeasureSettingsController *)self loadSpecifiersFromPlistName:@"MeasureSettings" target:self];
  v4 = [(PSSystemPolicyForApp *)self->_policy specifiersForPolicyOptions:42008576 force:0];
  v5 = [v4 arrayByAddingObjectsFromArray:v3];

  return v5;
}

- (void)configureUnitsRadioSelector
{
  measureUnitsSpecifierID = [objc_opt_class() measureUnitsSpecifierID];
  v4 = [(MeasureSettingsController *)self indexOfSpecifierID:measureUnitsSpecifierID];

  v8 = [(MeasureSettingsController *)self specifierAtIndex:v4];
  [SharedDefaults setupSpecifier:v8];
  v5 = [(MeasureSettingsController *)self readPreferenceValue:v8];
  v6 = [(MeasureSettingsController *)self specifierIDForValue:v5];
  v7 = [(MeasureSettingsController *)self specifierForID:v6];
  [v8 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (id)specifierIDForValue:(id)value
{
  valueCopy = value;
  v4 = valueCopy;
  if (!valueCopy)
  {
    if (sub_1BAC())
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = @"Imperial";
    goto LABEL_6;
  }

  if (![valueCopy integerValue])
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = @"Metric";
LABEL_6:

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = MeasureSettingsController;
  pathCopy = path;
  [(MeasureSettingsController *)&v13 tableView:view didSelectRowAtIndexPath:pathCopy];
  measureUnitsSpecifierID = [objc_opt_class() measureUnitsSpecifierID];
  v8 = [(MeasureSettingsController *)self indexOfSpecifierID:measureUnitsSpecifierID];

  v9 = [(MeasureSettingsController *)self specifierAtIndex:v8];
  v10 = [(MeasureSettingsController *)self indexForIndexPath:pathCopy];

  v11 = [(MeasureSettingsController *)self specifierAtIndex:v10];
  v12 = [v11 propertyForKey:PSValueKey];
  [(MeasureSettingsController *)self setPreferenceValue:v12 specifier:v9];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.measure"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"MEASURE" table:@"MeasureSettings" locale:v5 bundleURL:bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"APPS" table:@"MeasureSettings" locale:v10 bundleURL:bundleURL2];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(MeasureSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.measure" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

@end