@interface SCATHeadMovementController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATHeadMovementController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = AXParameterizedLocalizedString();
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = SCATLocalizedHeadMovementSummary();
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v9 setProperty:&off_27A770 forKey:@"SensitivityKey"];
    [v5 addObject:v9];
    v10 = SCATLocalizedHeadMovementSummary();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&off_27A788 forKey:@"SensitivityKey"];
    [v5 addObject:v11];
    v12 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = SCATHeadMovementController;
  v4 = [(SCATHeadMovementController *)&v10 tableView:view cellForRowAtIndexPath:path];
  specifier = [v4 specifier];
  v6 = [specifier propertyForKey:@"SensitivityKey"];
  integerValue = [v6 integerValue];

  v8 = +[AXSettings sharedInstance];
  [v4 setChecked:{objc_msgSend(v8, "assistiveTouchHeadMovementSensitivity") == integerValue}];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = SCATHeadMovementController;
  pathCopy = path;
  viewCopy = view;
  v8 = [(SCATHeadMovementController *)&v14 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:@"SensitivityKey"];
  integerValue = [v10 integerValue];

  v12 = +[AXSettings sharedInstance];
  [v12 setAssistiveTouchHeadMovementSensitivity:integerValue];
  [(SCATHeadMovementController *)self updateTableCheckedSelection:pathCopy];
  v13.receiver = self;
  v13.super_class = SCATHeadMovementController;
  [(SCATHeadMovementController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

@end