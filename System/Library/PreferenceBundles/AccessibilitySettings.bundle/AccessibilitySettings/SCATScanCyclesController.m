@interface SCATScanCyclesController
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATScanCyclesController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = AXParameterizedLocalizedString();
    v8 = +[UIDevice currentDevice];
    v9 = [v8 localizedModel];
    v10 = [NSString stringWithFormat:v7, v9];
    [v6 setProperty:v10 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v11 = kAXSAssistiveTouchMaxScanCycleValue;
    if (kAXSAssistiveTouchMaxScanCycleValue)
    {
      v12 = 1;
      do
      {
        v13 = AXFormatInteger();
        v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

        v15 = [NSNumber numberWithUnsignedInteger:v12];
        [v14 setProperty:v15 forKey:@"ScanCyclesKey"];

        [v5 addObject:v14];
        ++v12;
      }

      while (v12 <= v11);
    }

    v16 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = SCATScanCyclesController;
  v4 = [(SCATScanCyclesController *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 specifier];
  v6 = [v5 propertyForKey:@"ScanCyclesKey"];
  v7 = [v6 integerValue];

  v8 = +[AXSettings sharedInstance];
  [v4 setChecked:{objc_msgSend(v8, "assistiveTouchScanCycles") == v7}];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = SCATScanCyclesController;
  v6 = a4;
  v7 = a3;
  v8 = [(SCATScanCyclesController *)&v13 tableView:v7 cellForRowAtIndexPath:v6];
  v9 = [v8 specifier];
  v10 = [v9 propertyForKey:@"ScanCyclesKey"];
  v11 = [v10 integerValue];

  v12 = +[AXSettings sharedInstance];
  [v12 setAssistiveTouchScanCycles:v11];
  [(SCATScanCyclesController *)self updateTableCheckedSelection:v6];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

@end