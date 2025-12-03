@interface SCATPointPickerSelectionStyleController
- (double)maximumValueForSpecifier:(id)specifier;
- (double)minimumValueForSpecifier:(id)specifier;
- (double)stepValueForSpecifier:(id)specifier;
- (double)valueForSpecifier:(id)specifier;
- (id)pointPickerEnabled:(id)enabled;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)setPointPickerEnabled:(id)enabled specifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SCATPointPickerSelectionStyleController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SCATPointPickerSelectionStyleController;
  [(SCATPointPickerSelectionStyleController *)&v6 viewDidLoad];
  table = [(SCATPointPickerSelectionStyleController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v24 = OBJC_IVAR___PSListController__specifiers;
    v4 = AXParameterizedLocalizedString();
    v23 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setPointPickerEnabled:specifier:" get:"pointPickerEnabled:" detail:0 cell:6 edit:0];

    v5 = AXParameterizedLocalizedString();
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    v7 = AXParameterizedLocalizedString();
    v8 = PSFooterTextGroupKey;
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    v9 = PSIDKey;
    [v6 setProperty:@"SelectionStyleGroup" forKey:PSIDKey];
    v10 = AXParameterizedLocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&off_27A4E8 forKey:@"PointPickerSelectionStyle"];
    [v11 setProperty:@"SelectionStyleRefined" forKey:v9];
    v12 = AXParameterizedLocalizedString();
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&off_27A500 forKey:@"PointPickerSelectionStyle"];
    [v13 setProperty:@"SelectionStyleSingle" forKey:v9];
    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v15 setProperty:&off_27A518 forKey:@"PointPickerSelectionStyle"];
    [v15 setProperty:@"SelectionStylePrecise" forKey:v9];
    v16 = AXParameterizedLocalizedString();
    v17 = [PSSpecifier groupSpecifierWithName:v16];

    v18 = AXParameterizedLocalizedString();
    [v17 setProperty:v18 forKey:v8];

    [v17 setProperty:@"AxisSweepSpeed" forKey:v9];
    v19 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [v19 setProperty:@"AxisSweepTimeStepper" forKey:v9];
    v25[0] = v23;
    v25[1] = v6;
    v25[2] = v13;
    v25[3] = v11;
    v25[4] = v15;
    v25[5] = v17;
    v25[6] = v19;
    v20 = [NSArray arrayWithObjects:v25 count:7];
    v21 = *&self->AXUISettingsBaseListController_opaque[v24];
    *&self->AXUISettingsBaseListController_opaque[v24] = v20;

    v3 = *&self->AXUISettingsBaseListController_opaque[v24];
  }

  return v3;
}

- (id)pointPickerEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchScannerPointPickerModeEnabled]);

  return v4;
}

- (void)setPointPickerEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchScannerPointPickerModeEnabled:bOOLValue];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = SCATPointPickerSelectionStyleController;
  pathCopy = path;
  v7 = [(SCATPointPickerSelectionStyleController *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SCATPointPickerSelectionStyleController *)self specifierForIndexPath:pathCopy, v14.receiver, v14.super_class];

  v9 = [v8 propertyForKey:@"PointPickerSelectionStyle"];
  if (v9)
  {
    v10 = [v8 propertyForKey:@"PointPickerSelectionStyle"];
    integerValue = [v10 integerValue];

    v12 = +[AXSettings sharedInstance];
    [v7 setChecked:{objc_msgSend(v12, "switchControlPointPickerSelectionStyle") == integerValue}];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = SCATPointPickerSelectionStyleController;
  [(SCATPointPickerSelectionStyleController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(SCATPointPickerSelectionStyleController *)self specifierForIndexPath:pathCopy];
  v8 = [v7 propertyForKey:@"PointPickerSelectionStyle"];
  if (v8)
  {
    v9 = [v7 propertyForKey:@"PointPickerSelectionStyle"];
    integerValue = [v9 integerValue];

    v11 = +[AXSettings sharedInstance];
    [v11 setSwitchControlPointPickerSelectionStyle:integerValue];

    [(SCATPointPickerSelectionStyleController *)self updateTableCheckedSelection:pathCopy];
  }
}

- (double)valueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"AxisSweepTimeStepper"];

  v5 = 0.0;
  if (v4)
  {
    v6 = +[AXSettings sharedInstance];
    [v6 assistiveTouchAxisSweepSpeed];
    v5 = assistiveTouchXYScannerNormalizedUserPreferenceForSpeed();
  }

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v4 = [specifier propertyForKey:PSIDKey];
  v5 = [v4 isEqualToString:@"AxisSweepTimeStepper"];

  if (v5)
  {
    assistiveTouchXYScannerSpeedForNormalizedUserPreference();
    v7 = v6;
    v8 = +[AXSettings sharedInstance];
    [v8 setAssistiveTouchAxisSweepSpeed:v7];
  }
}

- (double)stepValueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"AxisSweepTimeStepper"];

  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

- (double)minimumValueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"AxisSweepTimeStepper"];

  result = kAXSAssistiveTouchAxisSweepSpeedMinUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumValueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"AxisSweepTimeStepper"];

  result = kAXSAssistiveTouchAxisSweepSpeedMaxUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(SCATPointPickerSelectionStyleController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end