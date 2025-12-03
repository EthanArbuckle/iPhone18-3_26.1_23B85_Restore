@interface AXVoiceOverPunctuationBaseChooserViewController
- (id)punctuationGroup;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXVoiceOverPunctuationBaseChooserViewController

- (id)punctuationGroup
{
  specifier = [(AXVoiceOverPunctuationBaseChooserViewController *)self specifier];
  v3 = [specifier propertyForKey:@"PunctuationGroup"];

  return v3;
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v29 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = settingsLocString(@"PUNCTUATION_ALL", @"VoiceOverSettings");
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v6 setProperty:AXSSVoiceOverPunctuationGroupAll forKey:@"punctuationGroupUUID"];
    [v4 addObject:v6];
    v7 = settingsLocString(@"PUNCTUATION_SOME", @"VoiceOverSettings");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v8 setProperty:AXSSVoiceOverPunctuationGroupSome forKey:@"punctuationGroupUUID"];
    [v4 addObject:v8];
    v9 = settingsLocString(@"PUNCTUATION_NONE", @"VoiceOverSettings");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v10 setProperty:AXSSVoiceOverPunctuationGroupNone forKey:@"punctuationGroupUUID"];
    v30 = v4;
    [v4 addObject:v10];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = +[AXSSPunctuationManager sharedDatabase];
    punctuationGroups = [v11 punctuationGroups];

    obj = punctuationGroups;
    v13 = [punctuationGroups countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          uuid = [v17 uuid];
          punctuationGroup = [(AXVoiceOverPunctuationBaseChooserViewController *)self punctuationGroup];
          uuid2 = [punctuationGroup uuid];
          v21 = [uuid isEqual:uuid2];

          if ((v21 & 1) == 0)
          {
            name = [v17 name];
            v23 = [PSSpecifier preferenceSpecifierNamed:name target:0 set:0 get:0 detail:0 cell:3 edit:0];

            punctuationGroup2 = [(AXVoiceOverPunctuationBaseChooserViewController *)self punctuationGroup];
            uuid3 = [punctuationGroup2 uuid];
            [v23 setProperty:uuid3 forKey:@"punctuationGroupUUID"];

            [v30 addObject:v23];
            v10 = v23;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    v26 = [v30 copy];
    v27 = *&self->AXUISettingsBaseListController_opaque[v29];
    *&self->AXUISettingsBaseListController_opaque[v29] = v26;

    v3 = *&self->AXUISettingsBaseListController_opaque[v29];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(AXVoiceOverPunctuationBaseChooserViewController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"punctuationGroupUUID"];
  punctuationGroup = [(AXVoiceOverPunctuationBaseChooserViewController *)self punctuationGroup];
  [punctuationGroup setBasePunctuationUUID:v9];

  v11 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    punctuationGroup2 = [(AXVoiceOverPunctuationBaseChooserViewController *)self punctuationGroup];
    *buf = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = punctuationGroup2;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Set base punctuation group: %@ for %@", buf, 0x16u);
  }

  v13 = +[AXSSPunctuationManager sharedDatabase];
  punctuationGroup3 = [(AXVoiceOverPunctuationBaseChooserViewController *)self punctuationGroup];
  [v13 updatePunctuationGroup:punctuationGroup3];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 postNotificationName:@"AXVoiceOverPunctuationGroupChangedNotification" object:0];

  v16.receiver = self;
  v16.super_class = AXVoiceOverPunctuationBaseChooserViewController;
  [(AXVoiceOverPunctuationBaseChooserViewController *)&v16 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];

  [(AXVoiceOverPunctuationBaseChooserViewController *)self updateTableCheckedSelection:pathCopy];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v12 = [(AXVoiceOverPunctuationBaseChooserViewController *)self specifierForIndexPath:path];
  v8 = [v12 propertyForKey:@"punctuationGroupUUID"];
  punctuationGroup = [(AXVoiceOverPunctuationBaseChooserViewController *)self punctuationGroup];
  basePunctuationUUID = [punctuationGroup basePunctuationUUID];
  v11 = [basePunctuationUUID isEqual:v8];

  [cellCopy setChecked:v11];
}

@end