@interface VoiceOverActivityPunctuationSelector
- (id)activity;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverActivityPunctuationSelector

- (id)activity
{
  v2 = [(VoiceOverActivityPunctuationSelector *)self specifier];
  v3 = [v2 propertyForKey:@"activity"];

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
    v23 = v3;
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = settingsLocString(@"DEFAULT", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v7 addObject:v9];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = +[AXSSPunctuationManager sharedDatabase];
    v11 = [v10 punctuationGroups];

    obj = v11;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        v15 = 0;
        v16 = v9;
        do
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v25 + 1) + 8 * v15);
          v18 = [v17 name];
          v9 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:3 edit:0];

          v19 = [v17 uuid];
          [v9 setProperty:v19 forKey:@"group"];

          [v7 addObject:v9];
          v15 = v15 + 1;
          v16 = v9;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v20 = [v7 copy];
    v21 = *&self->AXUISettingsBaseListController_opaque[v23];
    *&self->AXUISettingsBaseListController_opaque[v23] = v20;

    v4 = *&self->AXUISettingsBaseListController_opaque[v23];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a4;
  v7 = [(VoiceOverActivityPunctuationSelector *)self specifierAtIndexPath:a5];
  v8 = [v7 propertyForKey:@"group"];

  v9 = [(VoiceOverActivityPunctuationSelector *)self activity];
  v10 = [v9 punctuationGroup];
  v11 = [v8 isEqual:v10];
  if ((v11 & 1) != 0 || v8)
  {
    [v14 setChecked:v11];
  }

  else
  {
    v12 = [(VoiceOverActivityPunctuationSelector *)self activity];
    v13 = [v12 punctuationGroup];
    [v14 setChecked:v13 == 0];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = VoiceOverActivityPunctuationSelector;
  [(VoiceOverActivityPunctuationSelector *)&v13 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(VoiceOverActivityPunctuationSelector *)self specifierAtIndexPath:v6];
  v8 = [v7 propertyForKey:@"group"];

  v9 = [(VoiceOverActivityPunctuationSelector *)self activity];
  [v9 setPunctuationGroup:v8];

  v10 = VOTLogActivities();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(VoiceOverActivityPunctuationSelector *)self activity];
    v12 = [v11 punctuationGroup];
    *buf = 138412290;
    v15 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Punctuation selected: %@", buf, 0xCu);
  }

  [(VoiceOverActivityPunctuationSelector *)self updateTableCheckedSelection:v6];
}

@end