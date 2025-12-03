@interface CACGridOverlayNumberOfColumnsController
- (CACGridOverlayNumberOfColumnsController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CACGridOverlayNumberOfColumnsController

- (CACGridOverlayNumberOfColumnsController)init
{
  v5.receiver = self;
  v5.super_class = CACGridOverlayNumberOfColumnsController;
  v2 = [(CACGridOverlayNumberOfColumnsController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_9E00, @"CACNotificationGridOverlaySettingsChanged", 0, 1028);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CACNotificationGridOverlaySettingsChanged", 0);
  v4.receiver = self;
  v4.super_class = CACGridOverlayNumberOfColumnsController;
  [(CACGridOverlayNumberOfColumnsController *)&v4 dealloc];
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

    [v7 setProperty:&off_2AA98 forKey:@"GridOverlayNumberOfColumns"];
    [v5 addObject:v7];
    if (+[CACLabeledGridOverlayManager maxNumberOfColumnsForDevice])
    {
      v8 = 1;
      do
      {
        v9 = AXFormatInteger();
        v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

        v11 = [NSNumber numberWithUnsignedInteger:v8];
        [v10 setProperty:v11 forKey:@"GridOverlayNumberOfColumns"];

        [v5 addObject:v10];
        ++v8;
      }

      while (v8 <= +[CACLabeledGridOverlayManager maxNumberOfColumnsForDevice]);
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
  v16.super_class = CACGridOverlayNumberOfColumnsController;
  pathCopy = path;
  v7 = [(CACGridOverlayNumberOfColumnsController *)&v16 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(CACGridOverlayNumberOfColumnsController *)self specifierAtIndexPath:pathCopy, v16.receiver, v16.super_class];

  v9 = [v8 propertyForKey:@"GridOverlayNumberOfColumns"];
  v10 = +[CACPreferences sharedPreferences];
  gridOverlayCustomColumnsEnabled = [v10 gridOverlayCustomColumnsEnabled];

  if ([v9 integerValue])
  {
    if (gridOverlayCustomColumnsEnabled)
    {
      v12 = +[CACPreferences sharedPreferences];
      [v7 setChecked:{objc_msgSend(v12, "gridOverlayCustomColumnsCount") == objc_msgSend(v9, "integerValue")}];

      goto LABEL_7;
    }

    v14 = v7;
    v13 = 0;
  }

  else
  {
    v13 = gridOverlayCustomColumnsEnabled ^ 1;
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
  v12.super_class = CACGridOverlayNumberOfColumnsController;
  [(CACGridOverlayNumberOfColumnsController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(CACGridOverlayNumberOfColumnsController *)self specifierAtIndexPath:pathCopy];
  v8 = [v7 propertyForKey:@"GridOverlayNumberOfColumns"];
  integerValue = [v8 integerValue];
  v10 = +[CACPreferences sharedPreferences];
  v11 = v10;
  if (integerValue)
  {
    [v10 setGridOverlayCustomColumnsEnabled:1];

    v11 = +[CACPreferences sharedPreferences];
    [v11 setGridOverlayCustomColumnsCount:{objc_msgSend(v8, "integerValue")}];
  }

  else
  {
    [v10 setGridOverlayCustomColumnsEnabled:0];
  }

  [(CACGridOverlayNumberOfColumnsController *)self updateTableCheckedSelection:pathCopy];
}

@end