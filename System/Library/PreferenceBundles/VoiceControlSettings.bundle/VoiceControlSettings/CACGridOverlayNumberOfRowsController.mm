@interface CACGridOverlayNumberOfRowsController
- (CACGridOverlayNumberOfRowsController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CACGridOverlayNumberOfRowsController

- (CACGridOverlayNumberOfRowsController)init
{
  v5.receiver = self;
  v5.super_class = CACGridOverlayNumberOfRowsController;
  v2 = [(CACGridOverlayNumberOfRowsController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_2F04, @"CACNotificationGridOverlaySettingsChanged", 0, 1028);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CACNotificationGridOverlaySettingsChanged", 0);
  v4.receiver = self;
  v4.super_class = CACGridOverlayNumberOfRowsController;
  [(CACGridOverlayNumberOfRowsController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v14 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:?];
    v6 = settingsLocString(@"FEATURE_AUTO", @"CommandAndControlSettings");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v7 setProperty:&off_2AA68 forKey:@"GridOverlayNumberOfRows"];
    [v5 addObject:v7];
    if (+[CACLabeledGridOverlayManager maxNumberOfRowsForDevice])
    {
      v8 = 1;
      do
      {
        v9 = AXFormatInteger();
        v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

        v11 = [NSNumber numberWithUnsignedInteger:v8];
        [v10 setProperty:v11 forKey:@"GridOverlayNumberOfRows"];

        [v5 addObject:v10];
        ++v8;
      }

      while (v8 <= +[CACLabeledGridOverlayManager maxNumberOfRowsForDevice]);
    }

    v12 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = CACGridOverlayNumberOfRowsController;
  pathCopy = path;
  v7 = [(CACGridOverlayNumberOfRowsController *)&v16 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(CACGridOverlayNumberOfRowsController *)self specifierAtIndexPath:pathCopy, v16.receiver, v16.super_class];

  v9 = [v8 propertyForKey:@"GridOverlayNumberOfRows"];
  v10 = +[CACPreferences sharedPreferences];
  gridOverlayCustomRowsEnabled = [v10 gridOverlayCustomRowsEnabled];

  if ([v9 integerValue])
  {
    if (gridOverlayCustomRowsEnabled)
    {
      v12 = +[CACPreferences sharedPreferences];
      [v7 setChecked:{objc_msgSend(v12, "gridOverlayCustomRowsCount") == objc_msgSend(v9, "integerValue")}];

      goto LABEL_7;
    }

    v14 = v7;
    v13 = 0;
  }

  else
  {
    v13 = gridOverlayCustomRowsEnabled ^ 1;
    v14 = v7;
  }

  [v14 setChecked:v13];
LABEL_7:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = CACGridOverlayNumberOfRowsController;
  [(CACGridOverlayNumberOfRowsController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(CACGridOverlayNumberOfRowsController *)self specifierAtIndexPath:pathCopy];
  v8 = [v7 propertyForKey:@"GridOverlayNumberOfRows"];
  integerValue = [v8 integerValue];
  v10 = +[CACPreferences sharedPreferences];
  v11 = v10;
  if (integerValue)
  {
    [v10 setGridOverlayCustomRowsEnabled:1];

    v11 = +[CACPreferences sharedPreferences];
    [v11 setGridOverlayCustomRowsCount:{objc_msgSend(v8, "integerValue")}];
  }

  else
  {
    [v10 setGridOverlayCustomRowsEnabled:0];
  }

  [(CACGridOverlayNumberOfRowsController *)self updateTableCheckedSelection:pathCopy];
}

@end