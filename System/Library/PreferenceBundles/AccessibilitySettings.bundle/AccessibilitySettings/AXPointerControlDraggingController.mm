@interface AXPointerControlDraggingController
+ (id)localizedDescriptionForDoubleTapDragMode:(int64_t)a3;
+ (id)localizedNameForDoubleTapDragMode:(int64_t)a3;
- (id)globalDevicePreferences;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AXPointerControlDraggingController

+ (id)localizedNameForDoubleTapDragMode:(int64_t)a3
{
  if (a3 <= 2)
  {
    a1 = settingsLocString(*(&off_258C40 + a3), @"Accessibility-hello");
  }

  return a1;
}

+ (id)localizedDescriptionForDoubleTapDragMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = @"PointerDraggingWithoutDragLockDescription";
LABEL_5:
    v5 = settingsLocString(v4, @"Accessibility-hello");

    return v5;
  }

  if (a3 == 2)
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
  v3 = [v2 globalDevicePreferences];

  if (!v3)
  {
    v3 = [BKSMousePointerDevicePreferences defaultPreferencesForHardwareType:9];
  }

  return v3;
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
    v7 = [(AXPointerControlDraggingController *)self globalDevicePreferences];
    v8 = [v6 localizedDescriptionForDoubleTapDragMode:{objc_msgSend(v7, "doubleTapDragMode")}];
    [v5 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v4 addObject:v5];
    v19 = v5;
    objc_storeStrong(&self->_groupSpecifier, v5);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [objc_opt_class() doubleTapDragModes];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [objc_opt_class() localizedNameForDoubleTapDragMode:{objc_msgSend(v14, "integerValue")}];
          v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          [v16 setProperty:v14 forKey:@"_DoubleTapDragMode"];
          [v4 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = *&self->AXUISettingsBaseListController_opaque[v20];
    *&self->AXUISettingsBaseListController_opaque[v20] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v20];
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a4;
  v7 = [(AXPointerControlDraggingController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"_DoubleTapDragMode"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
    v11 = [(AXPointerControlDraggingController *)self globalDevicePreferences];
    [v12 setChecked:{v10 == objc_msgSend(v11, "doubleTapDragMode")}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = AXPointerControlDraggingController;
  [(AXPointerControlDraggingController *)&v37 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(AXPointerControlDraggingController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"_DoubleTapDragMode"];
  v10 = v9;
  if (v9)
  {
    v28 = v9;
    v29 = v8;
    v31 = v7;
    v11 = [v9 integerValue];
    v30 = self;
    v12 = [(AXPointerControlDraggingController *)self globalDevicePreferences];
    [v12 setDoubleTapDragMode:v11];
    if (v11)
    {
      [v12 setEnableTapToClick:1];
    }

    v13 = +[BKSMousePointerService sharedInstance];
    [v13 setGlobalDevicePreferences:v12];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = v6;
    v14 = [v6 visibleCells];
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          v20 = [v19 specifier];
          v21 = [v20 propertyForKey:@"_DoubleTapDragMode"];
          v22 = v21;
          if (v21)
          {
            [v19 setChecked:{objc_msgSend(v21, "integerValue") == objc_msgSend(v12, "doubleTapDragMode")}];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v16);
    }

    v7 = v31;
    v6 = v32;
    v8 = v29;
    self = v30;
    v10 = v28;
  }

  v23 = objc_opt_class();
  v24 = [(AXPointerControlDraggingController *)self globalDevicePreferences];
  v25 = [v23 localizedDescriptionForDoubleTapDragMode:{objc_msgSend(v24, "doubleTapDragMode")}];

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