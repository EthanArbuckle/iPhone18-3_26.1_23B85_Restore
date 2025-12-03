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
    selfCopy = self;
    v6 = OBJC_IVAR___PSViewController__specifier;
    voCommandManager = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
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
          voCommandContext = [*&selfCopy->AXUISettingsBaseListController_opaque[v6] voCommandContext];
          resolver = [voCommandContext resolver];
          v9 = [PSSpecifier voSubmenuForCommandCategory:v13 commandManager:voCommandManager resolver:resolver];

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

    v16 = selfCopy;
    voCommandResolver = [*&selfCopy->AXUISettingsBaseListController_opaque[v6] voCommandResolver];
    v18 = [voCommandManager allSiriShortcutCommandsWithResolver:voCommandResolver];
    if ([v18 count])
    {
      obja = +[PSSpecifier emptyGroupSpecifier];

      [v4 addObject:obja];
      v19 = settingsLocString(@"vo.siri.shortcuts", @"VoiceOverSettings");
      v20 = objc_opt_class();
      voCommandContext2 = [*&v16->AXUISettingsBaseListController_opaque[v6] voCommandContext];
      [voCommandContext2 resolver];
      v23 = v22 = voCommandResolver;
      v24 = [PSSpecifier voGenericSubmenuWithTitle:v19 childViewControllerClass:v20 commandManager:voCommandManager resolver:v23];

      voCommandResolver = v22;
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