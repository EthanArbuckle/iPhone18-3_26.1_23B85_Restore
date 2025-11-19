@interface VoiceOverAllCommandsListController
- (id)specifiers;
@end

@implementation VoiceOverAllCommandsListController

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v29 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_opt_new();
    v5 = self;
    v6 = OBJC_IVAR___PSViewController__specifier;
    v33 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
    v28 = +[PSSpecifier emptyGroupSpecifier];
    [v4 addObject:?];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = +[VOSCommandCategory allCategories];
    v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    v32 = v4;
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v35;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * v11);
          v14 = [*&v5->AXUISettingsBaseListController_opaque[v6] voCommandContext];
          v15 = [v14 resolver];
          v9 = [PSSpecifier voSubmenuForCommandCategory:v13 commandManager:v33 resolver:v15];

          v4 = v32;
          [v32 addObject:v9];
          v11 = v11 + 1;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v16 = v5;
    v17 = [*&v5->AXUISettingsBaseListController_opaque[v6] voCommandResolver];
    v18 = [v33 allSiriShortcutCommandsWithResolver:v17];
    if ([v18 count])
    {
      obja = +[PSSpecifier emptyGroupSpecifier];

      [v4 addObject:obja];
      v19 = settingsLocString(@"vo.siri.shortcuts", @"VoiceOverSettings");
      v20 = objc_opt_class();
      v21 = [*&v16->AXUISettingsBaseListController_opaque[v6] voCommandContext];
      [v21 resolver];
      v23 = v22 = v17;
      v24 = [PSSpecifier voGenericSubmenuWithTitle:v19 childViewControllerClass:v20 commandManager:v33 resolver:v23];

      v17 = v22;
      v4 = v32;

      [v32 addObject:v24];
      v9 = v24;
      v25 = obja;
    }

    else
    {
      v25 = v28;
    }

    v26 = *&v16->AXUISettingsBaseListController_opaque[v29];
    *&v16->AXUISettingsBaseListController_opaque[v29] = v4;

    v3 = *&v16->AXUISettingsBaseListController_opaque[v29];
  }

  return v3;
}

@end