@interface SCATScanningStyleController
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATScanningStyleController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = AXParameterizedLocalizedString();
    [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

    v7 = AXParameterizedLocalizedString();
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v9 = PSIDKey;
    [v8 setProperty:@"AUTO_SCANNING_LABEL" forKey:PSIDKey];
    [v8 setProperty:&off_27A458 forKey:@"ScanningStyle"];
    v10 = AXParameterizedLocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:@"MANUAL_SCANNING_LABEL" forKey:v9];
    [v11 setProperty:&off_27A470 forKey:@"ScanningStyle"];
    v12 = AXParameterizedLocalizedString();
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:@"DWELL_SCANNING_LABEL" forKey:v9];
    [v13 setProperty:&off_27A488 forKey:@"ScanningStyle"];
    v17[0] = v5;
    v17[1] = v8;
    v17[2] = v11;
    v17[3] = v13;
    v14 = [NSArray arrayWithObjects:v17 count:4];
    v15 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v14;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = SCATScanningStyleController;
  v6 = a4;
  v7 = [(SCATScanningStyleController *)&v13 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(SCATScanningStyleController *)self specifierAtIndexPath:v6, v13.receiver, v13.super_class];

  v9 = [v8 propertyForKey:@"ScanningStyle"];
  v10 = [v9 integerValue];

  v11 = +[AXSettings sharedInstance];
  [v7 setChecked:{objc_msgSend(v11, "switchControlScanningStyle") == v10}];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = SCATScanningStyleController;
  v6 = a4;
  [(SCATScanningStyleController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(SCATScanningStyleController *)self specifierAtIndexPath:v6, v11.receiver, v11.super_class];
  v8 = [v7 propertyForKey:@"ScanningStyle"];
  v9 = [v8 integerValue];

  v10 = +[AXSettings sharedInstance];
  [v10 setSwitchControlScanningStyle:v9];

  [(SCATScanningStyleController *)self updateTableCheckedSelection:v6];
}

@end