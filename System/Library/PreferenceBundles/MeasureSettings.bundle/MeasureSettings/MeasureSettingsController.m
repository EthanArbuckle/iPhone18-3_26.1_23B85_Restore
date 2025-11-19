@interface MeasureSettingsController
- (id)measureSettingsSpecifiers;
- (id)specifierIDForValue:(id)a3;
- (id)specifiers;
- (void)configureUnitsRadioSelector;
- (void)emitNavigationEvent;
- (void)setAppPolicy;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MeasureSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    [(MeasureSettingsController *)self setAppPolicy];
    v5 = [(MeasureSettingsController *)self measureSettingsSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

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
  v3 = [objc_opt_class() measureUnitsSpecifierID];
  v4 = [(MeasureSettingsController *)self indexOfSpecifierID:v3];

  v8 = [(MeasureSettingsController *)self specifierAtIndex:v4];
  [SharedDefaults setupSpecifier:v8];
  v5 = [(MeasureSettingsController *)self readPreferenceValue:v8];
  v6 = [(MeasureSettingsController *)self specifierIDForValue:v5];
  v7 = [(MeasureSettingsController *)self specifierForID:v6];
  [v8 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (id)specifierIDForValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    if (sub_1BAC())
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = @"Imperial";
    goto LABEL_6;
  }

  if (![v3 integerValue])
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = @"Metric";
LABEL_6:

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = MeasureSettingsController;
  v6 = a4;
  [(MeasureSettingsController *)&v13 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [objc_opt_class() measureUnitsSpecifierID];
  v8 = [(MeasureSettingsController *)self indexOfSpecifierID:v7];

  v9 = [(MeasureSettingsController *)self specifierAtIndex:v8];
  v10 = [(MeasureSettingsController *)self indexForIndexPath:v6];

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
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"MEASURE" table:@"MeasureSettings" locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"APPS" table:@"MeasureSettings" locale:v10 bundleURL:v12];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(MeasureSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.measure" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

@end