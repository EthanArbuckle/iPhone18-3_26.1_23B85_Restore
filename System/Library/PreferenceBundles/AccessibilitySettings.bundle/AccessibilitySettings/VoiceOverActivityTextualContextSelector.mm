@interface VoiceOverActivityTextualContextSelector
- (id)activity;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation VoiceOverActivityTextualContextSelector

- (id)activity
{
  specifier = [(VoiceOverActivityTextualContextSelector *)self specifier];
  v3 = [specifier propertyForKey:@"activity"];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    v20 = v3;
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = AXSSVoiceOverAvailableTextualContextIdentifiers();
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      v12 = AXSSVoiceOverTextualContextFileSystem;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          if (([v14 isEqualToString:v12] & 1) == 0)
          {
            v15 = AXSSVoiceOverLocalizedNameForTextualContextIdentifier();
            v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

            [v16 setProperty:v14 forKey:@"context"];
            [v7 addObject:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v17 = [v7 copy];
    v18 = *&self->AXUISettingsBaseListController_opaque[v20];
    *&self->AXUISettingsBaseListController_opaque[v20] = v17;

    v4 = *&self->AXUISettingsBaseListController_opaque[v20];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(VoiceOverActivityTextualContextSelector *)self specifierAtIndexPath:path];
  v11 = [v8 propertyForKey:@"context"];

  activity = [(VoiceOverActivityTextualContextSelector *)self activity];
  textualContexts = [activity textualContexts];
  [cellCopy setChecked:{objc_msgSend(textualContexts, "containsObject:", v11)}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = VoiceOverActivityTextualContextSelector;
  viewCopy = view;
  [(VoiceOverActivityTextualContextSelector *)&v20 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(VoiceOverActivityTextualContextSelector *)self specifierAtIndexPath:pathCopy, v20.receiver, v20.super_class];
  v9 = [v8 propertyForKey:@"context"];

  activity = [(VoiceOverActivityTextualContextSelector *)self activity];
  textualContexts = [activity textualContexts];
  if (textualContexts)
  {
    activity2 = [(VoiceOverActivityTextualContextSelector *)self activity];
    textualContexts2 = [activity2 textualContexts];
    v14 = [textualContexts2 mutableCopy];
  }

  else
  {
    v14 = +[NSMutableSet set];
  }

  if ([v14 containsObject:v9])
  {
    [v14 removeObject:v9];
  }

  else
  {
    [v14 addObject:v9];
  }

  activity3 = [(VoiceOverActivityTextualContextSelector *)self activity];
  [activity3 setTextualContexts:v14];

  v16 = VOTLogActivities();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    activity4 = [(VoiceOverActivityTextualContextSelector *)self activity];
    textualContexts3 = [activity4 textualContexts];
    *buf = 138412290;
    v22 = textualContexts3;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Context selected: %@", buf, 0xCu);
  }

  v19 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v19 setChecked:{objc_msgSend(v14, "containsObject:", v9)}];
}

@end