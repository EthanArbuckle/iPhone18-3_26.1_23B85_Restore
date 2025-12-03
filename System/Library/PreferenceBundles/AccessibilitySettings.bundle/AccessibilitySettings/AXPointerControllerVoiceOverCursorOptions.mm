@interface AXPointerControllerVoiceOverCursorOptions
+ (id)localizedNameForVoiceOverCursorOption:(int)option;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXPointerControllerVoiceOverCursorOptions

+ (id)localizedNameForVoiceOverCursorOption:(int)option
{
  if (option <= 2)
  {
    self = settingsLocString(*(&off_258C58 + option), @"Accessibility-hello");
  }

  return self;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __55__AXPointerControllerVoiceOverCursorOptions_specifiers__block_invoke;
    v13[3] = &unk_258BE8;
    v13[4] = self;
    v6 = objc_retainBlock(v13);
    v7 = (v6[2])(v6, 0);
    [v5 addObject:v7];

    v8 = (v6[2])(v6, 1);
    [v5 addObject:v8];

    v9 = (v6[2])(v6, 2);
    [v5 addObject:v9];

    v10 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;
    v11 = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

id __55__AXPointerControllerVoiceOverCursorOptions_specifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_class() localizedNameForVoiceOverCursorOption:a2];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];

  v6 = [NSNumber numberWithUnsignedInt:a2];
  [v5 setProperty:v6 forKey:@"CursorOptionKey"];

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(AXPointerControllerVoiceOverCursorOptions *)self specifierForIndexPath:path];
  v8 = [v7 propertyForKey:@"CursorOptionKey"];
  if (v8)
  {
    v9 = cellCopy;
    [v9 setChecked:{objc_msgSend(v8, "intValue") == _AXSPointerVoiceOverCursorOption()}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = AXPointerControllerVoiceOverCursorOptions;
  [(AXPointerControllerVoiceOverCursorOptions *)&v28 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(AXPointerControllerVoiceOverCursorOptions *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"CursorOptionKey"];
  v10 = v9;
  if (v9)
  {
    v21 = v8;
    v22 = pathCopy;
    intValue = [v9 intValue];
    _AXSPointerSetVoiceOverCursorOption();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = viewCopy;
    visibleCells = [viewCopy visibleCells];
    v13 = [visibleCells countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(visibleCells);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          specifier = [v17 specifier];
          v19 = [specifier propertyForKey:@"CursorOptionKey"];
          v20 = v19;
          if (v19)
          {
            [v17 setChecked:{objc_msgSend(v19, "intValue") == intValue}];
          }
        }

        v14 = [visibleCells countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    pathCopy = v22;
    viewCopy = v23;
    v8 = v21;
  }
}

@end