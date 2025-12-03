@interface VoiceOverCommandsForCategoryListController
- (id)specifiers;
@end

@implementation VoiceOverCommandsForCategoryListController

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v29 = OBJC_IVAR___PSListController__specifiers;
    v33 = objc_opt_new();
    v4 = OBJC_IVAR___PSViewController__specifier;
    voCommandManager = [*&selfCopy->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
    voCommandResolver = [*&selfCopy->AXUISettingsBaseListController_opaque[v4] voCommandResolver];
    v32 = v4;
    voCommandContext = [*&selfCopy->AXUISettingsBaseListController_opaque[v4] voCommandContext];
    commandCategory = [voCommandContext commandCategory];
    commands = [commandCategory commands];
    v10 = [commands sortedArrayUsingComparator:&__block_literal_global_12];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v37;
      v30 = *v37;
      v31 = voCommandResolver;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          if ([voCommandManager availabilityForCommand:v16 withResolver:voCommandResolver] != &dword_0 + 1)
          {
            [v16 localizedName];
            v17 = v35 = v13;
            v18 = v12;
            v19 = voCommandManager;
            v20 = objc_opt_class();
            voCommandContext2 = [*&selfCopy->AXUISettingsBaseListController_opaque[v32] voCommandContext];
            [voCommandContext2 resolver];
            v23 = v22 = selfCopy;
            v24 = v20;
            voCommandManager = v19;
            v12 = v18;
            v25 = [PSSpecifier voCommandSubmenuWithTitle:v17 childViewControllerClass:v24 command:v16 commandManager:voCommandManager resolver:v23];

            selfCopy = v22;
            v14 = v30;

            voCommandResolver = v31;
            [v33 addObject:v25];
            v13 = v25;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v26 = *&selfCopy->AXUISettingsBaseListController_opaque[v29];
    *&selfCopy->AXUISettingsBaseListController_opaque[v29] = v33;
    v27 = v33;

    v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v29];
  }

  return v3;
}

int64_t __56__VoiceOverCommandsForCategoryListController_specifiers__block_invoke(id a1, VOSCommand *a2, VOSCommand *a3)
{
  v4 = a3;
  v5 = [(VOSCommand *)a2 localizedName];
  v6 = [(VOSCommand *)v4 localizedName];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

@end