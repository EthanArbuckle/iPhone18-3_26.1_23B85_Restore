@interface AXPointerControlDraggingController
+ (id)localizedDescriptionForDoubleTapDragMode:(int64_t)mode;
+ (id)localizedNameForDoubleTapDragMode:(int64_t)mode;
- (id)globalDevicePreferences;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXPointerControlDraggingController

+ (id)localizedNameForDoubleTapDragMode:(int64_t)mode
{
  if (mode <= 2)
  {
    self = settingsLocString(*(&off_258C40 + mode), @"Accessibility-hello");
  }

  return self;
}

+ (id)localizedDescriptionForDoubleTapDragMode:(int64_t)mode
{
  if (mode == 1)
  {
    v4 = @"PointerDraggingWithoutDragLockDescription";
LABEL_5:
    v5 = settingsLocString(v4, @"Accessibility-hello");

    return v5;
  }

  if (mode == 2)
  {
    v4 = @"PointerDraggingWithDragLockDescription";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)globalDevicePreferences
{
  v2 = +[BKSMousePointerService sharedInstance];
  globalDevicePreferences = [v2 globalDevicePreferences];

  if (!globalDevicePreferences)
  {
    globalDevicePreferences = [BKSMousePointerDevicePreferences defaultPreferencesForHardwareType:9];
  }

  return globalDevicePreferences;
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v20 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = objc_opt_class();
    globalDevicePreferences = [(AXPointerControlDraggingController *)self globalDevicePreferences];
    v8 = [v6 localizedDescriptionForDoubleTapDragMode:{objc_msgSend(globalDevicePreferences, "doubleTapDragMode")}];
    [v5 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v4 addObject:v5];
    v19 = v5;
    objc_storeStrong(&self->_groupSpecifier, v5);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    doubleTapDragModes = [objc_opt_class() doubleTapDragModes];
    v10 = [doubleTapDragModes countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(doubleTapDragModes);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [objc_opt_class() localizedNameForDoubleTapDragMode:{objc_msgSend(v14, "integerValue")}];
          v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          [v16 setProperty:v14 forKey:@"_DoubleTapDragMode"];
          [v4 addObject:v16];
        }

        v11 = [doubleTapDragModes countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = *&self->AXUISettingsBaseListController_opaque[v20];
    *&self->AXUISettingsBaseListController_opaque[v20] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v20];
  }

  return v3;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(AXPointerControlDraggingController *)self specifierForIndexPath:path];
  v8 = [v7 propertyForKey:@"_DoubleTapDragMode"];
  v9 = v8;
  if (v8)
  {
    integerValue = [v8 integerValue];
    globalDevicePreferences = [(AXPointerControlDraggingController *)self globalDevicePreferences];
    [cellCopy setChecked:{integerValue == objc_msgSend(globalDevicePreferences, "doubleTapDragMode")}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v37.receiver = self;
  v37.super_class = AXPointerControlDraggingController;
  [(AXPointerControlDraggingController *)&v37 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(AXPointerControlDraggingController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"_DoubleTapDragMode"];
  v10 = v9;
  if (v9)
  {
    v28 = v9;
    v29 = v8;
    v31 = pathCopy;
    integerValue = [v9 integerValue];
    selfCopy = self;
    globalDevicePreferences = [(AXPointerControlDraggingController *)self globalDevicePreferences];
    [globalDevicePreferences setDoubleTapDragMode:integerValue];
    if (integerValue)
    {
      [globalDevicePreferences setEnableTapToClick:1];
    }

    v13 = +[BKSMousePointerService sharedInstance];
    [v13 setGlobalDevicePreferences:globalDevicePreferences];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = viewCopy;
    visibleCells = [viewCopy visibleCells];
    v15 = [visibleCells countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(visibleCells);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          specifier = [v19 specifier];
          v21 = [specifier propertyForKey:@"_DoubleTapDragMode"];
          v22 = v21;
          if (v21)
          {
            [v19 setChecked:{objc_msgSend(v21, "integerValue") == objc_msgSend(globalDevicePreferences, "doubleTapDragMode")}];
          }
        }

        v16 = [visibleCells countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v16);
    }

    pathCopy = v31;
    viewCopy = v32;
    v8 = v29;
    self = selfCopy;
    v10 = v28;
  }

  v23 = objc_opt_class();
  globalDevicePreferences2 = [(AXPointerControlDraggingController *)self globalDevicePreferences];
  v25 = [v23 localizedDescriptionForDoubleTapDragMode:{objc_msgSend(globalDevicePreferences2, "doubleTapDragMode")}];

  v26 = [v25 length];
  groupSpecifier = self->_groupSpecifier;
  if (v26)
  {
    [(PSSpecifier *)groupSpecifier setProperty:v25 forKey:PSFooterTextGroupKey];
  }

  else
  {
    [(PSSpecifier *)groupSpecifier removePropertyForKey:PSFooterTextGroupKey];
  }

  [(AXPointerControlDraggingController *)self reloadSpecifier:self->_groupSpecifier];
}

@end