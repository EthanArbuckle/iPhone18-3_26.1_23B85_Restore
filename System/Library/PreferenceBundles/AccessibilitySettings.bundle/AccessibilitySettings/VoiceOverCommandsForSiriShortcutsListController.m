@interface VoiceOverCommandsForSiriShortcutsListController
- (id)specifiers;
@end

@implementation VoiceOverCommandsForSiriShortcutsListController

- (id)specifiers
{
  v2 = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v26 = objc_opt_new();
    v5 = OBJC_IVAR___PSViewController__specifier;
    v6 = [*&v2->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
    v25 = v5;
    v7 = [*&v2->AXUISettingsBaseListController_opaque[v5] voCommandResolver];
    v27 = v6;
    [v6 allSiriShortcutCommandsWithResolver:v7];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = v7;
      v22 = v3;
      v10 = 0;
      v24 = *v29;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * v11);
          v14 = [v13 localizedName];
          v15 = objc_opt_class();
          [*&v2->AXUISettingsBaseListController_opaque[v25] voCommandContext];
          v17 = v16 = v2;
          v18 = [v17 resolver];
          v10 = [PSSpecifier voCommandSubmenuWithTitle:v14 childViewControllerClass:v15 command:v13 commandManager:v27 resolver:v18];

          v2 = v16;
          [v26 addObject:v10];
          v11 = v11 + 1;
          v12 = v10;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v9);

      v7 = v21;
      v3 = v22;
    }

    v19 = *&v2->AXUISettingsBaseListController_opaque[v3];
    *&v2->AXUISettingsBaseListController_opaque[v3] = v26;

    v4 = *&v2->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

@end