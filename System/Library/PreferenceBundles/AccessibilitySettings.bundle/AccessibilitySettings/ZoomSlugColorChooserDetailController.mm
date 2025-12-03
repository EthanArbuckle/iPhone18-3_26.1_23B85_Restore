@interface ZoomSlugColorChooserDetailController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation ZoomSlugColorChooserDetailController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ZoomSlugColorChooserDetailController;
  [(ZoomSlugColorChooserDetailController *)&v6 viewDidLoad];
  table = [(ZoomSlugColorChooserDetailController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXColorChooserCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v17 = OBJC_IVAR___PSListController__specifiers;
    v20 = objc_opt_new();
    v19 = PSCellClassKey;
    v18 = PSSpecifierIsSearchableKey;
    for (i = 1; i != 7; ++i)
    {
      v5 = AXLocalizedTitleForColor(i);
      v6 = AXUIZoomControllerColor();
      Components = CGColorGetComponents(v6);
      v8 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];
      [v8 setProperty:objc_opt_class() forKey:v19];
      v9 = [NSNumber numberWithDouble:*Components];
      v21[0] = v9;
      v10 = [NSNumber numberWithDouble:Components[1]];
      v21[1] = v10;
      v11 = [NSNumber numberWithDouble:Components[2]];
      v21[2] = v11;
      v12 = [NSNumber numberWithDouble:Components[3]];
      v21[3] = v12;
      v13 = [NSArray arrayWithObjects:v21 count:4];
      [v8 setProperty:v13 forKey:@"rgb"];

      [v8 setProperty:&off_27B5C8 forKey:@"colorType"];
      v14 = [NSNumber numberWithInteger:i];
      [v8 setProperty:v14 forKey:@"controllerColor"];

      [v8 setProperty:&__kCFBooleanFalse forKey:v18];
      [v8 setCellType:3];
      [v20 addObject:v8];
    }

    v15 = *&self->AXUISettingsBaseListController_opaque[v17];
    *&self->AXUISettingsBaseListController_opaque[v17] = v20;

    v3 = *&self->AXUISettingsBaseListController_opaque[v17];
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = ZoomSlugColorChooserDetailController;
  v4 = [(ZoomSlugColorChooserDetailController *)&v13 tableView:view cellForRowAtIndexPath:path];
  circle = [v4 circle];
  [circle setAccessibilityIgnoresInvertColors:1];

  specifier = [v4 specifier];
  v7 = [specifier propertyForKey:@"controllerColor"];
  integerValue = [v7 integerValue];

  if (integerValue == &dword_0 + 1 && _AXSInvertColorsEnabled())
  {
    circle2 = [v4 circle];
    v10 = +[UIColor whiteColor];
    [circle2 setColor:v10];
  }

  v11 = +[AXSettings sharedInstance];
  [v4 setChecked:{objc_msgSend(v11, "zoomControllerColor") == integerValue}];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = ZoomSlugColorChooserDetailController;
  pathCopy = path;
  viewCopy = view;
  v8 = [(ZoomSlugColorChooserDetailController *)&v13 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:@"controllerColor"];
  integerValue = [v10 integerValue];

  v12 = +[AXSettings sharedInstance];
  [v12 setZoomControllerColor:integerValue];

  [(ZoomSlugColorChooserDetailController *)self updateTableCheckedSelection:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end