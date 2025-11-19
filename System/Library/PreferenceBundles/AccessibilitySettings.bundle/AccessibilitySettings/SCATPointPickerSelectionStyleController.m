@interface SCATPointPickerSelectionStyleController
- (double)maximumValueForSpecifier:(id)a3;
- (double)minimumValueForSpecifier:(id)a3;
- (double)stepValueForSpecifier:(id)a3;
- (double)valueForSpecifier:(id)a3;
- (id)pointPickerEnabled:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setPointPickerEnabled:(id)a3 specifier:(id)a4;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SCATPointPickerSelectionStyleController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SCATPointPickerSelectionStyleController;
  [(SCATPointPickerSelectionStyleController *)&v6 viewDidLoad];
  v3 = [(SCATPointPickerSelectionStyleController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
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

- (id)pointPickerEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchScannerPointPickerModeEnabled]);

  return v4;
}

- (void)setPointPickerEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchScannerPointPickerModeEnabled:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = SCATPointPickerSelectionStyleController;
  v6 = a4;
  v7 = [(SCATPointPickerSelectionStyleController *)&v14 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(SCATPointPickerSelectionStyleController *)self specifierForIndexPath:v6, v14.receiver, v14.super_class];

  v9 = [v8 propertyForKey:@"PointPickerSelectionStyle"];
  if (v9)
  {
    v10 = [v8 propertyForKey:@"PointPickerSelectionStyle"];
    v11 = [v10 integerValue];

    v12 = +[AXSettings sharedInstance];
    [v7 setChecked:{objc_msgSend(v12, "switchControlPointPickerSelectionStyle") == v11}];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SCATPointPickerSelectionStyleController;
  [(SCATPointPickerSelectionStyleController *)&v12 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(SCATPointPickerSelectionStyleController *)self specifierForIndexPath:v6];
  v8 = [v7 propertyForKey:@"PointPickerSelectionStyle"];
  if (v8)
  {
    v9 = [v7 propertyForKey:@"PointPickerSelectionStyle"];
    v10 = [v9 integerValue];

    v11 = +[AXSettings sharedInstance];
    [v11 setSwitchControlPointPickerSelectionStyle:v10];

    [(SCATPointPickerSelectionStyleController *)self updateTableCheckedSelection:v6];
  }
}

- (double)valueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
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

- (void)specifier:(id)a3 setValue:(double)a4
{
  v4 = [a3 propertyForKey:PSIDKey];
  v5 = [v4 isEqualToString:@"AxisSweepTimeStepper"];

  if (v5)
  {
    assistiveTouchXYScannerSpeedForNormalizedUserPreference();
    v7 = v6;
    v8 = +[AXSettings sharedInstance];
    [v8 setAssistiveTouchAxisSweepSpeed:v7];
  }
}

- (double)stepValueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"AxisSweepTimeStepper"];

  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

- (double)minimumValueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"AxisSweepTimeStepper"];

  result = kAXSAssistiveTouchAxisSweepSpeedMinUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumValueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"AxisSweepTimeStepper"];

  result = kAXSAssistiveTouchAxisSweepSpeedMaxUserPreference;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (id)stringValueForSpecifier:(id)a3
{
  [(SCATPointPickerSelectionStyleController *)self valueForSpecifier:a3];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end