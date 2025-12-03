@interface VoiceOverActivityPunctuationSelector
- (id)activity;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation VoiceOverActivityPunctuationSelector

- (id)activity
{
  specifier = [(VoiceOverActivityPunctuationSelector *)self specifier];
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
    punctuationGroups = [v10 punctuationGroups];

    obj = punctuationGroups;
    v12 = [punctuationGroups countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          name = [v17 name];
          v9 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:3 edit:0];

          uuid = [v17 uuid];
          [v9 setProperty:uuid forKey:@"group"];

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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(VoiceOverActivityPunctuationSelector *)self specifierAtIndexPath:path];
  v8 = [v7 propertyForKey:@"group"];

  activity = [(VoiceOverActivityPunctuationSelector *)self activity];
  punctuationGroup = [activity punctuationGroup];
  v11 = [v8 isEqual:punctuationGroup];
  if ((v11 & 1) != 0 || v8)
  {
    [cellCopy setChecked:v11];
  }

  else
  {
    activity2 = [(VoiceOverActivityPunctuationSelector *)self activity];
    punctuationGroup2 = [activity2 punctuationGroup];
    [cellCopy setChecked:punctuationGroup2 == 0];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = VoiceOverActivityPunctuationSelector;
  [(VoiceOverActivityPunctuationSelector *)&v13 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(VoiceOverActivityPunctuationSelector *)self specifierAtIndexPath:pathCopy];
  v8 = [v7 propertyForKey:@"group"];

  activity = [(VoiceOverActivityPunctuationSelector *)self activity];
  [activity setPunctuationGroup:v8];

  v10 = VOTLogActivities();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    activity2 = [(VoiceOverActivityPunctuationSelector *)self activity];
    punctuationGroup = [activity2 punctuationGroup];
    *buf = 138412290;
    v15 = punctuationGroup;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Punctuation selected: %@", buf, 0xCu);
  }

  [(VoiceOverActivityPunctuationSelector *)self updateTableCheckedSelection:pathCopy];
}

@end