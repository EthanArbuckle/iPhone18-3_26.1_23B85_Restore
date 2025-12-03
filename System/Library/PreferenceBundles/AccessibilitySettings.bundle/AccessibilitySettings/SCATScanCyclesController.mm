@interface SCATScanCyclesController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
    localizedModel = [v8 localizedModel];
    v10 = [NSString stringWithFormat:v7, localizedModel];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = SCATScanCyclesController;
  v4 = [(SCATScanCyclesController *)&v10 tableView:view cellForRowAtIndexPath:path];
  specifier = [v4 specifier];
  v6 = [specifier propertyForKey:@"ScanCyclesKey"];
  integerValue = [v6 integerValue];

  v8 = +[AXSettings sharedInstance];
  [v4 setChecked:{objc_msgSend(v8, "assistiveTouchScanCycles") == integerValue}];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = SCATScanCyclesController;
  pathCopy = path;
  viewCopy = view;
  v8 = [(SCATScanCyclesController *)&v13 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:@"ScanCyclesKey"];
  integerValue = [v10 integerValue];

  v12 = +[AXSettings sharedInstance];
  [v12 setAssistiveTouchScanCycles:integerValue];
  [(SCATScanCyclesController *)self updateTableCheckedSelection:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end