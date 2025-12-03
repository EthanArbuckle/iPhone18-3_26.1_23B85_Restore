@interface ASTMouseZoomOptionsController
- (id)_localizedDescriptionForPanningStyle:(unint64_t)style;
- (id)_localizedTitleForPanningStyle:(unint64_t)style;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (unint64_t)_currentStyle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ASTMouseZoomOptionsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithID:@"GROUP_SPECIFIER"];
    v7 = [(ASTMouseZoomOptionsController *)self _localizedDescriptionForPanningStyle:[(ASTMouseZoomOptionsController *)self _currentStyle]];
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = kAXSZWPanningStyleFirst;
    v9 = kAXSZWPanningStyleLast;
    while (v8 <= v9)
    {
      v10 = [(ASTMouseZoomOptionsController *)self _localizedTitleForPanningStyle:v8];
      v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v5 addObject:v11];
      ++v8;
    }

    v12 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (unint64_t)_currentStyle
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchMouseZoomPanningStyle = [v2 assistiveTouchMouseZoomPanningStyle];

  return assistiveTouchMouseZoomPanningStyle;
}

- (id)_localizedTitleForPanningStyle:(unint64_t)style
{
  if (style <= 2)
  {
    self = settingsLocString(off_258F90[style], @"HandSettings");
  }

  return self;
}

- (id)_localizedDescriptionForPanningStyle:(unint64_t)style
{
  if (style <= 2)
  {
    self = settingsLocString(off_258FA8[style], @"HandSettings");
  }

  return self;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = ASTMouseZoomOptionsController;
  pathCopy = path;
  v7 = [(ASTMouseZoomOptionsController *)&v10 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(ASTMouseZoomOptionsController *)self _panningStyleForIndexPath:pathCopy, v10.receiver, v10.super_class];

  [v7 setChecked:{v8 == -[ASTMouseZoomOptionsController _currentStyle](self, "_currentStyle")}];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(ASTMouseZoomOptionsController *)self _panningStyleForIndexPath:pathCopy];
  v9 = +[AXSettings sharedInstance];
  [v9 setAssistiveTouchMouseZoomPanningStyle:v8];

  [(ASTMouseZoomOptionsController *)self updateTableCheckedSelection:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  v11 = [(ASTMouseZoomOptionsController *)self specifierForID:@"GROUP_SPECIFIER"];
  v10 = [(ASTMouseZoomOptionsController *)self _localizedDescriptionForPanningStyle:v8];
  [v11 setProperty:v10 forKey:PSFooterTextGroupKey];

  [(ASTMouseZoomOptionsController *)self reloadSpecifier:v11 animated:1];
}

@end