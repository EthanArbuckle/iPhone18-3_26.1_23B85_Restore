@interface SCATScanAfterTapLocationController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATScanAfterTapLocationController

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
    [v8 setProperty:@"ScanAfterTapFirst" forKey:PSIDKey];
    [v8 setProperty:&off_27B538 forKey:@"ScanAfterTapLocation"];
    v10 = AXParameterizedLocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:@"ScanAfterTapCurrent" forKey:v9];
    [v11 setProperty:&off_27B550 forKey:@"ScanAfterTapLocation"];
    v15[0] = v5;
    v15[1] = v8;
    v15[2] = v11;
    v12 = [NSArray arrayWithObjects:v15 count:3];
    v13 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v12;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = SCATScanAfterTapLocationController;
  pathCopy = path;
  v7 = [(SCATScanAfterTapLocationController *)&v13 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SCATScanAfterTapLocationController *)self specifierAtIndexPath:pathCopy, v13.receiver, v13.super_class];

  v9 = [v8 propertyForKey:@"ScanAfterTapLocation"];
  integerValue = [v9 integerValue];

  v11 = +[AXSettings sharedInstance];
  [v7 setChecked:{objc_msgSend(v11, "switchControlScanAfterTapLocation") == integerValue}];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = SCATScanAfterTapLocationController;
  pathCopy = path;
  [(SCATScanAfterTapLocationController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(SCATScanAfterTapLocationController *)self specifierAtIndexPath:pathCopy, v11.receiver, v11.super_class];
  v8 = [v7 propertyForKey:@"ScanAfterTapLocation"];
  integerValue = [v8 integerValue];

  v10 = +[AXSettings sharedInstance];
  [v10 setSwitchControlScanAfterTapLocation:integerValue];

  [(SCATScanAfterTapLocationController *)self updateTableCheckedSelection:pathCopy];
}

@end