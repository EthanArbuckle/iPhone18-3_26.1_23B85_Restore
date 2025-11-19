@interface CACGridOverlayMaxLevelController
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CACGridOverlayMaxLevelController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = settingsLocString(@"GRID_OVERLAY_MAX_LEVEL_FOOTER", @"CommandAndControlSettings");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    for (i = 1; i != 6; ++i)
    {
      v9 = AXFormatInteger();
      v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v11 = [NSNumber numberWithUnsignedInteger:i];
      [v10 setProperty:v11 forKey:@"GridOverlayMaxLevel"];

      [v5 addObject:v10];
    }

    v12 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = CACGridOverlayMaxLevelController;
  v6 = a4;
  v7 = [(CACGridOverlayMaxLevelController *)&v12 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(CACGridOverlayMaxLevelController *)self specifierAtIndexPath:v6, v12.receiver, v12.super_class];

  v9 = [v8 propertyForKey:@"GridOverlayMaxLevel"];
  v10 = +[CACPreferences sharedPreferences];
  [v7 setChecked:{objc_msgSend(v10, "gridOverlayMaxLevel") == objc_msgSend(v9, "integerValue")}];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = CACGridOverlayMaxLevelController;
  v6 = a4;
  [(CACGridOverlayMaxLevelController *)&v10 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(CACGridOverlayMaxLevelController *)self specifierAtIndexPath:v6, v10.receiver, v10.super_class];
  v8 = [v7 propertyForKey:@"GridOverlayMaxLevel"];
  v9 = +[CACPreferences sharedPreferences];
  [v9 setGridOverlayMaxLevel:{objc_msgSend(v8, "integerValue")}];

  [(CACGridOverlayMaxLevelController *)self updateTableCheckedSelection:v6];
}

@end