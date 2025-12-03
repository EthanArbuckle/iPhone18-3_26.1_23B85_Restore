@interface AXVoiceOverPunctuationGroupController
- (AXSSPunctuationGroup)punctuationGroup;
- (BOOL)_isEditableTableCell:(id)cell;
- (BOOL)isSystemPunctuationGroup;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (NSUUID)punctuationGroupUUID;
- (id)_basePunctuationGroup:(id)group;
- (id)_entryNameValue:(id)value;
- (id)_pronunciationGroupName:(id)name;
- (id)localizedNameForCharacter:(unsigned __int16)character languageId:(id)id;
- (id)specifiers;
- (int64_t)baseGroupToVerbosenessLevel:(id)level;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_addDoneButton;
- (void)_configureEditButton;
- (void)_donePressed;
- (void)_editPressed;
- (void)_keyboardHidden:(id)hidden;
- (void)_keyboardShown:(id)shown;
- (void)_listenForNotifications;
- (void)_loadDefaultPunctuationReplacements;
- (void)_loadPunctuationReplacements;
- (void)_punctuationGroupChanged:(id)changed;
- (void)_punctuationGroupChangedFromCoreData:(id)data;
- (void)_save;
- (void)_setPronunciationGroupName:(id)name specifier:(id)specifier;
- (void)_sharePressed:(id)pressed;
- (void)_updateGroupEntries;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)removeFromParentViewController;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willResignActive;
@end

@implementation AXVoiceOverPunctuationGroupController

- (AXSSPunctuationGroup)punctuationGroup
{
  punctuationGroup = self->_punctuationGroup;
  if (!punctuationGroup)
  {
    v4 = [[AXSSPunctuationGroup alloc] init];
    v5 = self->_punctuationGroup;
    self->_punctuationGroup = v4;

    v6 = +[AXSSPunctuationManager sharedDatabase];
    nextDefaultGroupName = [v6 nextDefaultGroupName];
    [(AXSSPunctuationGroup *)self->_punctuationGroup setName:nextDefaultGroupName];

    specifier = [(AXVoiceOverPunctuationGroupController *)self specifier];
    v9 = [specifier propertyForKey:@"PunctuationBaseGroup"];
    [(AXSSPunctuationGroup *)self->_punctuationGroup setBasePunctuationUUID:v9];

    [(AXVoiceOverPunctuationGroupController *)self _save];
    v10 = +[AXSSPunctuationManager sharedDatabase];
    basePunctuationUUID = [(AXSSPunctuationGroup *)self->_punctuationGroup basePunctuationUUID];
    v12 = [v10 isBasePunctuationGroup:basePunctuationUUID];

    if ((v12 & 1) == 0)
    {
      v13 = +[NSMutableArray array];
      v14 = +[AXSSPunctuationManager sharedDatabase];
      basePunctuationUUID2 = [(AXSSPunctuationGroup *)self->_punctuationGroup basePunctuationUUID];
      v16 = [v14 punctuationGroupForUUID:basePunctuationUUID2];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      entries = [v16 entries];
      v18 = [entries countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(entries);
            }

            v22 = [*(*(&v30 + 1) + 8 * i) copy];
            v23 = +[NSUUID UUID];
            [v22 setUuid:v23];

            uuid = [(AXSSPunctuationGroup *)self->_punctuationGroup uuid];
            [v22 setGroupUUID:uuid];

            [v13 addObject:v22];
            v25 = +[AXSSPunctuationManager sharedDatabase];
            [v25 updateEntry:v22];
          }

          v19 = [entries countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v19);
      }

      v26 = +[AXSSPunctuationManager sharedDatabase];
      v27 = [v26 mostBasePunctuationGroupForGroup:v16];
      [(AXSSPunctuationGroup *)self->_punctuationGroup setBasePunctuationUUID:v27];

      [(AXSSPunctuationGroup *)self->_punctuationGroup setEntries:v13];
      [(AXVoiceOverPunctuationGroupController *)self _save];
    }

    punctuationGroup = self->_punctuationGroup;
  }

  v28 = punctuationGroup;

  return v28;
}

- (BOOL)isSystemPunctuationGroup
{
  v3 = +[AXSSPunctuationManager sharedDatabase];
  punctuationGroupUUID = [(AXVoiceOverPunctuationGroupController *)self punctuationGroupUUID];
  v5 = [v3 isBasePunctuationGroup:punctuationGroupUUID];

  return v5;
}

- (NSUUID)punctuationGroupUUID
{
  punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
  uuid = [punctuationGroup uuid];

  return uuid;
}

- (void)_save
{
  v3 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
    v7 = 138412290;
    v8 = punctuationGroup;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Updating punctuation group from Prefs -> DB: %@", &v7, 0xCu);
  }

  v5 = +[AXSSPunctuationManager sharedDatabase];
  punctuationGroup2 = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
  [v5 updatePunctuationGroup:punctuationGroup2];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = AXVoiceOverPunctuationGroupController;
  [(AXVoiceOverPunctuationGroupController *)&v7 viewDidDisappear:disappear];
  view = [(AXVoiceOverPunctuationGroupController *)self view];
  window = [view window];

  if (!window)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self];

    [(AXVoiceOverPunctuationGroupController *)self setIsListeningForNotifications:0];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    if (![(AXVoiceOverPunctuationGroupController *)self isSystemPunctuationGroup])
    {
      v8 = settingsLocString(@"PUNCTUATION_GROUP_NAME_LABEL", @"VoiceOverSettings");
      v9 = [PSTextFieldSpecifier preferenceSpecifierNamed:v8 target:self set:"_setPronunciationGroupName:specifier:" get:"_pronunciationGroupName:" detail:0 cell:8 edit:0];

      v10 = PSIDKey;
      [v9 setObject:@"GroupName" forKeyedSubscript:PSIDKey];
      [v9 setKeyboardType:0 autoCaps:2 autoCorrection:1];
      [v7 addObject:v9];
      v11 = settingsLocString(@"BASE_GROUP_LABEL", @"VoiceOverSettings");
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:"_basePunctuationGroup:" detail:0 cell:4 edit:0];

      punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
      [v12 setProperty:punctuationGroup forKey:@"PunctuationGroup"];

      [v12 setProperty:@"AXBasePunctuationGroup" forKey:v10];
      [v7 addObject:v12];
    }

    if ([(AXVoiceOverPunctuationGroupController *)self isSystemPunctuationGroup])
    {
      v14 = PSIDKey;
    }

    else
    {
      v15 = settingsLocString(@"PUNCTUATION_REPLACEMENTS_CUSTOM", @"VoiceOverSettings");
      v16 = [PSSpecifier groupSpecifierWithName:v15];

      v14 = PSIDKey;
      [v16 setProperty:@"CustomPunctuationGroup" forKey:PSIDKey];
      [v7 addObject:v16];
      v17 = settingsLocString(@"CUSTOM_PUNCTUATION_ADD", @"VoiceOverSettings");
      v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v18 setProperty:@"AddEntry" forKey:v14];
      punctuationGroup2 = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
      [v18 setProperty:punctuationGroup2 forKey:@"PunctuationGroup"];

      [v7 addObject:v18];
    }

    v20 = settingsLocString(@"PUNCTUATION_REPLACEMENTS_DEFAULT", @"VoiceOverSettings");
    v21 = [PSSpecifier groupSpecifierWithName:v20];

    [v21 setProperty:@"DefaultPunctuationGroup" forKey:v14];
    [v7 addObject:v21];
    v22 = [v7 copy];
    v23 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v22;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)_basePunctuationGroup:(id)group
{
  punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
  basePunctuationUUID = [punctuationGroup basePunctuationUUID];

  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = AXSettingsNameForPunctuationGroupUUID(basePunctuationUUID);
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Retrieved group name: %@ %@", &v10, 0x16u);
  }

  v8 = AXSettingsNameForPunctuationGroupUUID(basePunctuationUUID);

  return v8;
}

- (int64_t)baseGroupToVerbosenessLevel:(id)level
{
  levelCopy = level;
  if ([levelCopy isEqual:AXSSVoiceOverPunctuationGroupSome])
  {
    v4 = 1;
  }

  else if ([levelCopy isEqual:AXSSVoiceOverPunctuationGroupAll])
  {
    v4 = 0;
  }

  else if ([levelCopy isEqual:AXSSVoiceOverPunctuationGroupNone])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)localizedNameForCharacter:(unsigned __int16)character languageId:(id)id
{
  v4 = AXVOLocalizedStringForCharacter();
  if (!v4)
  {
    v4 = AXCopyUnicodeDescriptionStringForCharacter();
  }

  return v4;
}

- (void)_loadDefaultPunctuationReplacements
{
  v39 = +[NSMutableArray array];
  isSystemPunctuationGroup = [(AXVoiceOverPunctuationGroupController *)self isSystemPunctuationGroup];
  if (isSystemPunctuationGroup)
  {
    punctuationGroupUUID = [(AXVoiceOverPunctuationGroupController *)self punctuationGroupUUID];
  }

  else
  {
    v4 = +[AXSSPunctuationManager sharedDatabase];
    punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
    punctuationGroupUUID = [v4 mostBasePunctuationGroupForGroup:punctuationGroup];
  }

  v37 = punctuationGroupUUID;
  v6 = [(AXVoiceOverPunctuationGroupController *)self _systemReplacements:[(AXVoiceOverPunctuationGroupController *)self baseGroupToVerbosenessLevel:punctuationGroupUUID]];
  v7 = +[SCRCPunctuationVerboseness userExposedPunctuationCharacters];
  v8 = +[AXLanguageManager sharedInstance];
  dialectForSystemLanguage = [v8 dialectForSystemLanguage];
  specificLanguageID = [dialectForSystemLanguage specificLanguageID];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    v38 = v7;
    v41 = *v49;
    do
    {
      v13 = 0;
      v43 = v11;
      do
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * v13);
        if ([v7 containsObject:v14])
        {
          v47 = strtol([v14 UTF8String], 0, 16);
          v15 = [NSString stringWithCharacters:&v47 length:1];
          if ((isSystemPunctuationGroup & 1) == 0)
          {
            punctuationGroup2 = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
            entries = [punctuationGroup2 entries];
            if (entries)
            {
              v18 = entries;
              punctuationGroup3 = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
              entries2 = [punctuationGroup3 entries];
              v45[0] = _NSConcreteStackBlock;
              v45[1] = 3221225472;
              v45[2] = __76__AXVoiceOverPunctuationGroupController__loadDefaultPunctuationReplacements__block_invoke;
              v45[3] = &unk_255D80;
              v46 = v15;
              v21 = [entries2 indexOfObjectPassingTest:v45];

              v7 = v38;
              if (v21 != 0x7FFFFFFFFFFFFFFFLL)
              {
LABEL_31:

                v11 = v43;
                v12 = v41;
                goto LABEL_32;
              }
            }

            else
            {
            }
          }

          v22 = [[AXSSPunctuationEntry alloc] init];
          [v22 setReplacement:&stru_25D420];
          [v22 setPunctuation:v15];
          v23 = [obj objectForKeyedSubscript:v14];
          intValue = [v23 intValue];

          if (intValue - 1 < 3)
          {
            v25 = [(AXVoiceOverPunctuationGroupController *)self localizedNameForCharacter:v47 languageId:specificLanguageID];
            [v22 setReplacement:v25];

            v26 = 1;
            goto LABEL_21;
          }

          if (intValue)
          {
            if (intValue == 4)
            {
              v26 = 2;
              goto LABEL_21;
            }
          }

          else
          {
            v26 = 0;
LABEL_21:
            [v22 setRule:v26];
          }

          punctuation = [v22 punctuation];
          v28 = +[NSCharacterSet whitespaceNewlineAndSpecialCharacterSet];
          v29 = [v28 characterIsMember:v47];

          if (v29)
          {
            v30 = [(AXVoiceOverPunctuationGroupController *)self localizedNameForCharacter:v47 languageId:specificLanguageID];

            punctuation = v30;
          }

          if ([(AXVoiceOverPunctuationGroupController *)self isSystemPunctuationGroup])
          {
            v31 = 0;
          }

          else
          {
            v31 = objc_opt_class();
          }

          if ([(AXVoiceOverPunctuationGroupController *)self isSystemPunctuationGroup])
          {
            v32 = 4;
          }

          else
          {
            v32 = 2;
          }

          v33 = [PSSpecifier preferenceSpecifierNamed:punctuation target:self set:0 get:"_entryNameValue:" detail:v31 cell:v32 edit:0];
          [v33 setProperty:v22 forKey:@"PunctuationEntry"];
          [v33 setProperty:&__kCFBooleanTrue forKey:@"isSystemPunctuation"];
          punctuationGroup4 = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
          [v33 setProperty:punctuationGroup4 forKey:@"PunctuationGroup"];

          [(NSMutableArray *)v39 addObject:v33];
          goto LABEL_31;
        }

LABEL_32:
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v11);
  }

  defaultSpecs = self->_defaultSpecs;
  self->_defaultSpecs = v39;
  v36 = v39;

  [(AXVoiceOverPunctuationGroupController *)self insertContiguousSpecifiers:v36 afterSpecifierID:@"DefaultPunctuationGroup"];
}

id __76__AXVoiceOverPunctuationGroupController__loadDefaultPunctuationReplacements__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 punctuation];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_loadPunctuationReplacements
{
  v29 = +[NSMutableArray array];
  v3 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
    entries = [punctuationGroup entries];
    *buf = 138412290;
    v36 = entries;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Have entries: %@", buf, 0xCu);
  }

  v6 = +[AXLanguageManager sharedInstance];
  dialectForSystemLanguage = [v6 dialectForSystemLanguage];
  specificLanguageID = [dialectForSystemLanguage specificLanguageID];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  punctuationGroup2 = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
  entries2 = [punctuationGroup2 entries];

  obj = entries2;
  v10 = [entries2 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        punctuation = [v14 punctuation];
        punctuation2 = [v14 punctuation];
        v17 = [punctuation2 length];

        if (v17)
        {
          punctuation3 = [v14 punctuation];
          v19 = [punctuation3 characterAtIndex:0];

          v20 = +[NSCharacterSet whitespaceNewlineAndSpecialCharacterSet];
          v21 = [v20 characterIsMember:v19];

          if (v21)
          {
            v22 = [(AXVoiceOverPunctuationGroupController *)self localizedNameForCharacter:v19 languageId:specificLanguageID];

            punctuation = v22;
          }

          v23 = [PSSpecifier preferenceSpecifierNamed:punctuation target:self set:0 get:"_entryNameValue:" detail:objc_opt_class() cell:2 edit:0];
          [v23 setProperty:v14 forKey:@"PunctuationEntry"];
          punctuationGroup3 = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
          [v23 setProperty:punctuationGroup3 forKey:@"PunctuationGroup"];

          [(NSMutableArray *)v29 addObject:v23];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  replacementSpecs = self->_replacementSpecs;
  self->_replacementSpecs = v29;
  v26 = v29;

  [(AXVoiceOverPunctuationGroupController *)self insertContiguousSpecifiers:v26 afterSpecifierID:@"CustomPunctuationGroup"];
}

- (id)_entryNameValue:(id)value
{
  v3 = [value propertyForKey:@"PunctuationEntry"];
  rule = [v3 rule];
  if (rule == &dword_0 + 2)
  {
    v5 = @"PUNCTUATION_GROUP_RULE_REMOVE";
    goto LABEL_7;
  }

  if (rule == &dword_0 + 1)
  {
    replacement = [v3 replacement];
    localizedCapitalizedString = [replacement localizedCapitalizedString];

    goto LABEL_9;
  }

  if (!rule)
  {
    v5 = @"PUNCTUATION_GROUP_RULE_IGNORE";
LABEL_7:
    localizedCapitalizedString = settingsLocString(v5, @"VoiceOverSettings");
    goto LABEL_9;
  }

  localizedCapitalizedString = 0;
LABEL_9:

  return localizedCapitalizedString;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXVoiceOverPunctuationGroupController;
  [(AXVoiceOverPunctuationGroupController *)&v4 dealloc];
}

- (void)_updateGroupEntries
{
  [(AXVoiceOverPunctuationGroupController *)self removeContiguousSpecifiers:self->_replacementSpecs];
  [(AXVoiceOverPunctuationGroupController *)self removeContiguousSpecifiers:self->_defaultSpecs];
  [(AXVoiceOverPunctuationGroupController *)self _loadPunctuationReplacements];

  [(AXVoiceOverPunctuationGroupController *)self _loadDefaultPunctuationReplacements];
}

- (void)_punctuationGroupChanged:(id)changed
{
  changedCopy = changed;
  v3 = changedCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __66__AXVoiceOverPunctuationGroupController__punctuationGroupChanged___block_invoke(uint64_t a1)
{
  v2 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Group changed: %@", buf, 0xCu);
  }

  [*(a1 + 40) beginUpdates];
  v4 = *(a1 + 40);
  v5 = [v4 specifierForID:@"GroupName"];
  [v4 reloadSpecifier:v5 animated:1];

  [*(a1 + 40) _updateGroupEntries];
  v6 = [*(a1 + 40) specifierForID:@"AXBasePunctuationGroup"];
  [*(a1 + 40) reloadSpecifier:v6 animated:1];
  v7 = [*(a1 + 40) specifierForID:@"AutoSwitch"];
  [*(a1 + 40) reloadSpecifier:v7 animated:1];
  [*(a1 + 40) endUpdates];
  v8 = [*(a1 + 40) table];
  v9 = [*(a1 + 40) indexPathForSpecifier:v6];
  v10 = [*(a1 + 40) indexPathForSpecifier:v7];
  v11 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v9, v10];
  [v8 reloadRowsAtIndexPaths:v11 withRowAnimation:5];
}

- (void)_punctuationGroupChangedFromCoreData:(id)data
{
  dataCopy = data;
  v3 = dataCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

id __78__AXVoiceOverPunctuationGroupController__punctuationGroupChangedFromCoreData___block_invoke(uint64_t a1)
{
  v2 = +[AXSSPunctuationManager sharedDatabase];
  v3 = [*(*(a1 + 32) + 176) uuid];
  v4 = [v2 punctuationGroupForUUID:v3];
  v5 = *(*(a1 + 32) + 176);
  *(*(a1 + 32) + 176) = v4;

  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __78__AXVoiceOverPunctuationGroupController__punctuationGroupChangedFromCoreData___block_invoke_cold_1((a1 + 32), 176, v6);
  }

  return [*(a1 + 32) _punctuationGroupChanged:*(a1 + 40)];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AXVoiceOverPunctuationGroupController;
  [(AXVoiceOverPunctuationGroupController *)&v5 viewDidLoad];
  specifier = [(AXVoiceOverPunctuationGroupController *)self specifier];
  cachedSpecifier = self->_cachedSpecifier;
  self->_cachedSpecifier = specifier;

  [(AXVoiceOverPunctuationGroupController *)self _listenForNotifications];
  [(AXVoiceOverPunctuationGroupController *)self _updateGroupEntries];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXVoiceOverPunctuationGroupController;
  [(AXVoiceOverPunctuationGroupController *)&v4 viewWillAppear:appear];
  [(AXVoiceOverPunctuationGroupController *)self _listenForNotifications];
  [(AXVoiceOverPunctuationGroupController *)self _configureEditButton];
}

- (void)_listenForNotifications
{
  if (![(AXVoiceOverPunctuationGroupController *)self isListeningForNotifications])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_punctuationGroupChanged:" name:@"AXVoiceOverPunctuationGroupChangedNotification" object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_punctuationGroupChangedFromCoreData:" name:AXSSVoiceOverPunctuationGroupsChangedNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_keyboardShown:" name:UIKeyboardDidShowNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_keyboardHidden:" name:UIKeyboardDidHideNotification object:0];

    [(AXVoiceOverPunctuationGroupController *)self setIsListeningForNotifications:1];

    [(AXVoiceOverPunctuationGroupController *)self _punctuationGroupChanged:0];
  }
}

- (void)_keyboardShown:(id)shown
{
  userInfo = [shown userInfo];
  v4 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;
  table = [(AXVoiceOverPunctuationGroupController *)self table];
  [table setContentInset:{0.0, 0.0, v6, 0.0}];
}

- (void)_keyboardHidden:(id)hidden
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  table = [(AXVoiceOverPunctuationGroupController *)self table];
  [table setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)reloadSpecifiers
{
  [(AXVoiceOverPunctuationGroupController *)self setSpecifier:self->_cachedSpecifier];
  v3.receiver = self;
  v3.super_class = AXVoiceOverPunctuationGroupController;
  [(AXVoiceOverPunctuationGroupController *)&v3 reloadSpecifiers];
  [(AXVoiceOverPunctuationGroupController *)self _updateGroupEntries];
}

- (void)removeFromParentViewController
{
  v4.receiver = self;
  v4.super_class = AXVoiceOverPunctuationGroupController;
  [(AXVoiceOverPunctuationGroupController *)&v4 removeFromParentViewController];
  specifier = [(AXVoiceOverPunctuationGroupController *)self specifier];
  [specifier removePropertyForKey:@"PunctuationGroup"];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = AXVoiceOverPunctuationGroupController;
  pathCopy = path;
  [(AXVoiceOverPunctuationGroupController *)&v10 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXVoiceOverPunctuationGroupController *)self specifierAtIndexPath:pathCopy, v10.receiver, v10.super_class];

  v8 = [v7 propertyForKey:PSIDKey];
  v9 = [v8 isEqualToString:@"AddEntry"];

  if (v9)
  {
    [v7 removePropertyForKey:@"PunctuationEntry"];
  }
}

- (void)_setPronunciationGroupName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = +[AXSSPunctuationManager sharedDatabase];
  punctuationGroups = [v6 punctuationGroups];

  v8 = [punctuationGroups countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(punctuationGroups);
        }

        name = [*(*(&v20 + 1) + 8 * v11) name];
        v13 = [nameCopy isEqualToString:name];

        if (v13)
        {
          v15 = settingsLocString(@"PUNCTUATION", @"VoiceOverSettings");
          v16 = settingsLocString(@"PUNCTUATON_NAME_IN_USE", @"VoiceOverSettings");
          v17 = [UIAlertController alertControllerWithTitle:v15 message:v16 preferredStyle:1];

          v18 = settingsLocString(@"OK", @"Accessibility");
          v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:0];

          [v17 addAction:v19];
          [(AXVoiceOverPunctuationGroupController *)self presentViewController:v17 animated:1 completion:0];

          goto LABEL_12;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [punctuationGroups countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if ([nameCopy length])
  {
    punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
    [punctuationGroup setName:nameCopy];

    [(AXVoiceOverPunctuationGroupController *)self _save];
  }

LABEL_12:
}

- (id)_pronunciationGroupName:(id)name
{
  if ([(AXVoiceOverPunctuationGroupController *)self isSystemPunctuationGroup])
  {
    punctuationGroupUUID = [(AXVoiceOverPunctuationGroupController *)self punctuationGroupUUID];
    name = AXSettingsNameForPunctuationGroupUUID(punctuationGroupUUID);
  }

  else
  {
    v6 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(AXVoiceOverPunctuationGroupController *)self _pronunciationGroupName:v6];
    }

    punctuationGroupUUID = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
    name = [punctuationGroupUUID name];
  }

  v7 = name;

  return v7;
}

- (BOOL)_isEditableTableCell:(id)cell
{
  cellCopy = cell;
  v4 = [cellCopy propertyForKey:@"PunctuationEntry"];
  if (v4)
  {
    v5 = [cellCopy propertyForKey:@"isSystemPunctuation"];
    if ([v5 BOOLValue])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = [cellCopy propertyForKey:PSIDKey];
      v6 = [v7 isEqualToString:@"AddEntry"] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = [(AXVoiceOverPunctuationGroupController *)self specifierAtIndexPath:path];
  LOBYTE(selfCopy) = [(AXVoiceOverPunctuationGroupController *)selfCopy _isEditableTableCell:v5];

  return selfCopy;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(AXVoiceOverPunctuationGroupController *)self specifierAtIndexPath:path];
  v6 = [(AXVoiceOverPunctuationGroupController *)self _isEditableTableCell:v5];

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v6 = [(AXVoiceOverPunctuationGroupController *)self specifierAtIndexPath:path];
    v7 = [v6 propertyForKey:@"PunctuationEntry"];
    if (v7)
    {
      punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
      entries = [punctuationGroup entries];
      v10 = [entries mutableCopy];

      [v10 removeObject:v7];
      punctuationGroup2 = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
      [punctuationGroup2 setEntries:v10];

      v12 = +[AXSSPunctuationManager sharedDatabase];
      [v12 removeEntry:v7];

      [(AXVoiceOverPunctuationGroupController *)self _save];
      v13 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Remove entry: %@", &v15, 0xCu);
      }

      v14 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Remaining entries: %@", &v15, 0xCu);
      }

      [(AXVoiceOverPunctuationGroupController *)self beginUpdates];
      [(AXVoiceOverPunctuationGroupController *)self removeSpecifier:v6 animated:1];
      [(NSMutableArray *)self->_replacementSpecs removeObject:v6];
      [(AXVoiceOverPunctuationGroupController *)self endUpdates];
    }
  }
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  [(AXVoiceOverPunctuationGroupController *)self setEditing:1 animated:1];

  [(AXVoiceOverPunctuationGroupController *)self _configureEditButton];
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  [(AXVoiceOverPunctuationGroupController *)self setEditing:0 animated:1];

  [(AXVoiceOverPunctuationGroupController *)self _configureEditButton];
}

- (void)_sharePressed:(id)pressed
{
  pressedCopy = pressed;
  punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
  jsonRepresentation = [punctuationGroup jsonRepresentation];

  v7 = [AXVoiceOverPunctuationShareSource alloc];
  punctuationGroup2 = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
  name = [punctuationGroup2 name];
  v10 = [(AXVoiceOverPunctuationShareSource *)v7 initWithData:jsonRepresentation fileName:name];

  if (v10)
  {
    if (_AXSInUnitTestMode())
    {
      shareDataCallback = [(AXVoiceOverPunctuationGroupController *)self shareDataCallback];

      if (shareDataCallback)
      {
        shareDataCallback2 = [(AXVoiceOverPunctuationGroupController *)self shareDataCallback];
        path = [(AXVoiceOverPunctuationShareSource *)v10 path];
        (shareDataCallback2)[2](shareDataCallback2, path);
      }
    }

    else
    {
      v14 = [UIActivityViewController alloc];
      v20 = v10;
      v15 = [NSArray arrayWithObjects:&v20 count:1];
      v16 = [v14 initWithActivityItems:v15 applicationActivities:0];

      v19[0] = UIActivityTypePrint;
      v19[1] = UIActivityTypeMarkupAsPDF;
      v19[2] = UIActivityTypeAssignToContact;
      v19[3] = UIActivityTypeSaveToCameraRoll;
      v19[4] = UIActivityTypeAddToReadingList;
      v19[5] = UIActivityTypeOpenInIBooks;
      v17 = [NSArray arrayWithObjects:v19 count:6];
      [v16 setExcludedActivityTypes:v17];

      popoverPresentationController = [v16 popoverPresentationController];
      [popoverPresentationController setBarButtonItem:pressedCopy];

      [(AXVoiceOverPunctuationGroupController *)self presentViewController:v16 animated:1 completion:&__block_literal_global_6];
    }
  }
}

- (void)_configureEditButton
{
  punctuationGroup = [(AXVoiceOverPunctuationGroupController *)self punctuationGroup];
  isSystemPunctuationGroup = [punctuationGroup isSystemPunctuationGroup];

  v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:9 target:self action:"_sharePressed:"];
  specifiers = [(AXVoiceOverPunctuationGroupController *)self specifiers];
  v7 = [specifiers ax_filteredArrayUsingBlock:&__block_literal_global_407];
  v8 = [v7 count];

  if (v8 < 1)
  {
    if ((isSystemPunctuationGroup & 1) == 0)
    {
      navigationItem = [(AXVoiceOverPunctuationGroupController *)self navigationItem];
      [navigationItem setRightBarButtonItem:v5];
    }

    [(AXVoiceOverPunctuationGroupController *)self setEditing:0 animated:1];
  }

  else if (([(AXVoiceOverPunctuationGroupController *)self isEditing]& 1) != 0)
  {
    [(AXVoiceOverPunctuationGroupController *)self _addDoneButton];
  }

  else
  {
    v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:2 target:self action:"_editPressed"];
    if ((isSystemPunctuationGroup & 1) == 0)
    {
      navigationItem2 = [(AXVoiceOverPunctuationGroupController *)self navigationItem];
      v13[0] = v5;
      v13[1] = v10;
      v12 = [NSArray arrayWithObjects:v13 count:2];
      [navigationItem2 setRightBarButtonItems:v12];
    }
  }
}

BOOL __61__AXVoiceOverPunctuationGroupController__configureEditButton__block_invoke(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 propertyForKey:@"PunctuationEntry", a4];
  v5 = v4 != 0;

  return v5;
}

- (void)_addDoneButton
{
  v3 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
  navigationItem = [(AXVoiceOverPunctuationGroupController *)self navigationItem];
  v6 = v3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [navigationItem setRightBarButtonItems:v5];
}

- (void)_editPressed
{
  [(AXVoiceOverPunctuationGroupController *)self setEditing:1 animated:1];

  [(AXVoiceOverPunctuationGroupController *)self _addDoneButton];
}

- (void)_donePressed
{
  [(AXVoiceOverPunctuationGroupController *)self setEditing:0 animated:1];

  [(AXVoiceOverPunctuationGroupController *)self _configureEditButton];
}

- (void)willResignActive
{
  v3.receiver = self;
  v3.super_class = AXVoiceOverPunctuationGroupController;
  [(AXVoiceOverPunctuationGroupController *)&v3 willResignActive];
  if ([(AXVoiceOverPunctuationGroupController *)self isEditing])
  {
    [(AXVoiceOverPunctuationGroupController *)self _donePressed];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v11.receiver = self;
  v11.super_class = AXVoiceOverPunctuationGroupController;
  [AXVoiceOverPunctuationGroupController setEditing:"setEditing:animated:" animated:?];
  v7 = [(AXVoiceOverPunctuationGroupController *)self specifierForID:@"AddEntry"];
  v8 = [NSNumber numberWithInt:!editingCopy];
  [v7 setProperty:v8 forKey:PSEnabledKey];

  [(AXVoiceOverPunctuationGroupController *)self reloadSpecifier:v7 animated:animatedCopy];
  if (!editingCopy)
  {
    v9 = [(AXVoiceOverPunctuationGroupController *)self cellForSpecifierID:@"GroupName"];
    editableTextField = [v9 editableTextField];
    [editableTextField resignFirstResponder];
  }
}

void __78__AXVoiceOverPunctuationGroupController__punctuationGroupChangedFromCoreData___block_invoke_cold_1(void *a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + a2);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Re-retrieved group: %@", &v4, 0xCu);
}

- (void)_pronunciationGroupName:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 punctuationGroup];
  v4 = [v3 name];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Retrieve group name: %@", &v5, 0xCu);
}

@end