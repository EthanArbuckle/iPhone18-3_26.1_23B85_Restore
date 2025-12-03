@interface AXPointerControllerZoomOptionsController
+ (id)currentZoomStyleTitle;
+ (id)localizedDescriptionForPanningStyle:(unint64_t)style;
+ (id)localizedTitleForPanningStyle:(unint64_t)style;
+ (unint64_t)currentZoomPanningStyle;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AXPointerControllerZoomOptionsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithID:@"kAXZoomGroupSpecifierId"];
    v7 = objc_opt_class();
    v8 = [v7 localizedDescriptionForPanningStyle:{objc_msgSend(objc_opt_class(), "currentZoomPanningStyle")}];
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v9 = kAXSZWPanningStyleFirst;
    v10 = kAXSZWPanningStyleLast;
    while (v9 <= v10)
    {
      v11 = [objc_opt_class() localizedTitleForPanningStyle:v9];
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v5 addObject:v12];
      ++v9;
    }

    v13 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

+ (id)currentZoomStyleTitle
{
  currentZoomPanningStyle = [self currentZoomPanningStyle];

  return [self localizedTitleForPanningStyle:currentZoomPanningStyle];
}

+ (unint64_t)currentZoomPanningStyle
{
  v2 = +[AXSettings sharedInstance];
  laserZoomPanningStyle = [v2 laserZoomPanningStyle];

  return laserZoomPanningStyle;
}

+ (id)localizedTitleForPanningStyle:(unint64_t)style
{
  if (style <= 2)
  {
    self = settingsLocString(*(&off_258C70 + style), @"Accessibility-hello");
  }

  return self;
}

+ (id)localizedDescriptionForPanningStyle:(unint64_t)style
{
  if (style <= 2)
  {
    self = settingsLocString(*(&off_258C88 + style), @"Accessibility-hello");
  }

  return self;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = AXPointerControllerZoomOptionsController;
  pathCopy = path;
  v7 = [(AXPointerControllerZoomOptionsController *)&v10 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(AXPointerControllerZoomOptionsController *)self _panningStyleForIndexPath:pathCopy, v10.receiver, v10.super_class];

  [v7 setChecked:{v8 == objc_msgSend(objc_opt_class(), "currentZoomPanningStyle")}];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(AXPointerControllerZoomOptionsController *)self _panningStyleForIndexPath:pathCopy];
  v9 = +[AXSettings sharedInstance];
  [v9 setLaserZoomPanningStyle:v8];

  [(AXPointerControllerZoomOptionsController *)self updateTableCheckedSelection:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  v11 = [(AXPointerControllerZoomOptionsController *)self specifierForID:@"kAXZoomGroupSpecifierId"];
  v10 = [objc_opt_class() localizedDescriptionForPanningStyle:v8];
  [v11 setProperty:v10 forKey:PSFooterTextGroupKey];

  [(AXPointerControllerZoomOptionsController *)self reloadSpecifier:v11 animated:0];
}

@end