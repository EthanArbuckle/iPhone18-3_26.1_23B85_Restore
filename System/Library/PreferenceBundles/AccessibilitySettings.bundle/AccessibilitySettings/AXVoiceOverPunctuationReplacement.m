@interface AXVoiceOverPunctuationReplacement
- (AXSSPunctuationEntry)punctuationEntry;
- (BOOL)_isValidPunctuationEntry;
- (id)_punctuation:(id)a3;
- (id)_replacement:(id)a3;
- (id)specifiers;
- (void)_punctuationPickerTapped:(id)a3;
- (void)_saveIfPossible;
- (void)_setPunctuation:(id)a3 specifier:(id)a4;
- (void)_setReplacement:(id)a3 specifier:(id)a4;
- (void)_updateSelectedRuleChoice;
- (void)_updateTextAttributes;
- (void)buttonPickerWantsToInsertText:(id)a3;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)reloadSpecifiers;
- (void)removeFromParentViewController;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation AXVoiceOverPunctuationReplacement

- (AXSSPunctuationEntry)punctuationEntry
{
  punctuationEntry = self->_punctuationEntry;
  if (!punctuationEntry)
  {
    v4 = [[AXSSPunctuationEntry alloc] init];
    v5 = self->_punctuationEntry;
    self->_punctuationEntry = v4;

    punctuationEntry = self->_punctuationEntry;
  }

  return punctuationEntry;
}

- (void)removeFromParentViewController
{
  v4.receiver = self;
  v4.super_class = AXVoiceOverPunctuationReplacement;
  [(AXVoiceOverPunctuationReplacement *)&v4 removeFromParentViewController];
  v3 = [(AXVoiceOverPunctuationReplacement *)self specifier];
  [v3 removePropertyForKey:@"PunctuationEntry"];
}

- (BOOL)_isValidPunctuationEntry
{
  v2 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  v3 = [v2 punctuation];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)_updateTextAttributes
{
  v3 = [(AXVoiceOverPunctuationReplacement *)self cellForSpecifierID:@"replacement"];
  v4 = [v3 editableTextField];
  v5 = [v4 text];
  v6 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  [v6 setReplacement:v5];

  v10 = [(AXVoiceOverPunctuationReplacement *)self cellForSpecifierID:@"punctuation"];
  v7 = [v10 editableTextField];
  v8 = [v7 text];
  v9 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  [v9 setPunctuation:v8];
}

- (void)_saveIfPossible
{
  [(AXVoiceOverPunctuationReplacement *)self _updateTextAttributes];
  v3 = [(AXVoiceOverPunctuationReplacement *)self punctuationGroup];
  if (([v3 inDatabase] & 1) == 0)
  {
    v4 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25[0] = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Group not in DB, adding: %@", &v24, 0xCu);
    }

    v5 = +[AXSSPunctuationManager sharedDatabase];
    [v5 updatePunctuationGroup:v3];
  }

  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(AXVoiceOverPunctuationReplacement *)self _isValidPunctuationEntry];
    v8 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    v24 = 67109378;
    LODWORD(v25[0]) = v7;
    WORD2(v25[0]) = 2112;
    *(v25 + 6) = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Adding entry: valid:%d - %@", &v24, 0x12u);
  }

  if ([(AXVoiceOverPunctuationReplacement *)self _isValidPunctuationEntry])
  {
    v9 = [v3 uuid];
    v10 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    [v10 setGroupUUID:v9];

    v11 = +[AXSSPunctuationManager sharedDatabase];
    v12 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    [v11 updateEntry:v12];

    v13 = [v3 entries];
    v14 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    v15 = [v13 containsObject:v14];

    if ((v15 & 1) == 0)
    {
      v16 = [v3 entries];
      if (v16)
      {
        v17 = [v3 entries];
        v18 = [v17 mutableCopy];
      }

      else
      {
        v18 = +[NSMutableArray array];
      }

      v19 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
      [v18 addObject:v19];

      [v3 setEntries:v18];
      v20 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v3 entries];
        v24 = 138412290;
        v25[0] = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Associating entry: %@", &v24, 0xCu);
      }

      v22 = +[AXSSPunctuationManager sharedDatabase];
      [v22 updatePunctuationGroup:v3];
    }

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 postNotificationName:@"AXVoiceOverPunctuationGroupChangedNotification" object:0];
  }
}

- (void)viewDidLoad
{
  v3 = [(AXVoiceOverPunctuationReplacement *)self specifier];
  v4 = [v3 propertyForKey:@"PunctuationGroup"];
  if (v4)
  {
    v5 = v4;
    v6 = [(AXVoiceOverPunctuationReplacement *)self punctuationGroup];

    if (v6)
    {
      goto LABEL_5;
    }

    v3 = [(AXVoiceOverPunctuationReplacement *)self specifier];
    v7 = [v3 propertyForKey:@"PunctuationGroup"];
    [(AXVoiceOverPunctuationReplacement *)self setPunctuationGroup:v7];
  }

LABEL_5:
  v8 = [(AXVoiceOverPunctuationReplacement *)self specifier];
  v9 = [v8 propertyForKey:@"PunctuationEntry"];
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  punctuationEntry = self->_punctuationEntry;

  if (!punctuationEntry)
  {
    v8 = [(AXVoiceOverPunctuationReplacement *)self specifier];
    v11 = [v8 propertyForKey:@"PunctuationEntry"];
    [(AXVoiceOverPunctuationReplacement *)self setPunctuationEntry:v11];

    goto LABEL_8;
  }

LABEL_9:
  v12 = [(AXVoiceOverPunctuationReplacement *)self specifier];
  cachedSpecifier = self->_cachedSpecifier;
  self->_cachedSpecifier = v12;

  v14.receiver = self;
  v14.super_class = AXVoiceOverPunctuationReplacement;
  [(AXVoiceOverPunctuationReplacement *)&v14 viewDidLoad];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsListController_opaque[v3];
    *&self->AXUISettingsListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = settingsLocString(@"PUNCTUATION_GROUP_PUNCTUATION_LABEL", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_setPunctuation:specifier:" get:"_punctuation:" detail:0 cell:8 edit:0];

    v10 = PSIDKey;
    [v9 setObject:@"punctuation" forKeyedSubscript:PSIDKey];
    [v9 setKeyboardType:0 autoCaps:0 autoCorrection:1];
    [v7 addObject:v9];
    v11 = settingsLocString(@"PUNCTUATION_GROUP_REPLACEMENT_LABEL", @"VoiceOverSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"_setReplacement:specifier:" get:"_replacement:" detail:0 cell:8 edit:0];

    [v12 setObject:@"replacement" forKeyedSubscript:v10];
    [v12 setKeyboardType:0 autoCaps:2 autoCorrection:1];
    [v12 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v7 addObject:v12];
    v13 = settingsLocString(@"PUNCTUATION_GROUP_RULE_LABEL", @"VoiceOverSettings");
    v14 = [PSSpecifier groupSpecifierWithName:v13];

    v15 = settingsLocString(@"PUNCTUATION_RULE_FOOTER", @"VoiceOverSettings");
    [v14 setProperty:v15 forKey:PSFooterTextGroupKey];

    [v14 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v14 setProperty:@"RuleGroup" forKey:v10];
    [v7 addObject:v14];
    v16 = settingsLocString(@"PUNCTUATION_GROUP_RULE_IGNORE", @"VoiceOverSettings");
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setProperty:&off_27A860 forKey:@"RuleType"];
    [v17 setProperty:@"AXSSPunctuationEntryRuleIgnore" forKey:v10];
    [v7 addObject:v17];
    v18 = settingsLocString(@"PUNCTUATION_GROUP_RULE_REPLACE", @"VoiceOverSettings");
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v19 setProperty:&off_27A878 forKey:@"RuleType"];
    [v19 setProperty:@"AXSSPunctuationEntryRuleReplace" forKey:v10];
    [v7 addObject:v19];
    v20 = settingsLocString(@"PUNCTUATION_GROUP_RULE_REMOVE", @"VoiceOverSettings");
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v21 setProperty:&off_27A890 forKey:@"RuleType"];
    [v21 setProperty:@"AXSSPunctuationEntryRuleRemove" forKey:v10];
    [v7 addObject:v21];
    v22 = [v7 copy];
    v23 = *&self->AXUISettingsListController_opaque[v3];
    *&self->AXUISettingsListController_opaque[v3] = v22;

    v4 = *&self->AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)reloadSpecifiers
{
  [(AXVoiceOverPunctuationReplacement *)self setSpecifier:self->_cachedSpecifier];
  v3.receiver = self;
  v3.super_class = AXVoiceOverPunctuationReplacement;
  [(AXVoiceOverPunctuationReplacement *)&v3 reloadSpecifiers];
  [(AXVoiceOverPunctuationReplacement *)self _updateSelectedRuleChoice];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = AXVoiceOverPunctuationReplacement;
  [(AXVoiceOverPunctuationReplacement *)&v3 willBecomeActive];
  [(AXVoiceOverPunctuationReplacement *)self _updateSelectedRuleChoice];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXVoiceOverPunctuationReplacement;
  [(AXVoiceOverPunctuationReplacement *)&v4 viewWillAppear:a3];
  [(AXVoiceOverPunctuationReplacement *)self _updateSelectedRuleChoice];
}

- (void)_updateSelectedRuleChoice
{
  v10 = [(AXVoiceOverPunctuationReplacement *)self specifierForID:@"RuleGroup"];
  v3 = [(AXVoiceOverPunctuationReplacement *)self specifierForID:@"replacement"];
  v4 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  v5 = [v4 rule];

  if (!v5)
  {
    v6 = 0;
    v7 = @"AXSSPunctuationEntryRuleIgnore";
    goto LABEL_7;
  }

  if (v5 == &dword_0 + 2)
  {
    v6 = 0;
    v7 = @"AXSSPunctuationEntryRuleRemove";
    goto LABEL_7;
  }

  if (v5 == &dword_0 + 1)
  {
    v6 = 1;
    v7 = @"AXSSPunctuationEntryRuleReplace";
LABEL_7:
    v8 = [(AXVoiceOverPunctuationReplacement *)self specifierForID:v7];
    goto LABEL_9;
  }

  v8 = 0;
  v6 = 1;
LABEL_9:
  v9 = [NSNumber numberWithBool:v6];
  [v3 setProperty:v9 forKey:PSEnabledKey];

  [v10 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
  [(AXVoiceOverPunctuationReplacement *)self beginUpdates];
  [(AXVoiceOverPunctuationReplacement *)self reloadSpecifier:v10 animated:1];
  [(AXVoiceOverPunctuationReplacement *)self reloadSpecifier:v3 animated:1];
  [(AXVoiceOverPunctuationReplacement *)self endUpdates];
}

- (void)_setReplacement:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  [v6 setReplacement:v5];

  [(AXVoiceOverPunctuationReplacement *)self _saveIfPossible];
}

- (id)_replacement:(id)a3
{
  v3 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  v4 = [v3 replacement];
  v5 = [v4 localizedCapitalizedString];

  return v5;
}

- (void)_setPunctuation:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  [v6 setPunctuation:v5];

  [(AXVoiceOverPunctuationReplacement *)self _saveIfPossible];
}

- (id)_punctuation:(id)a3
{
  v3 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  v4 = [v3 punctuation];

  if ([v4 length] == &dword_0 + 1)
  {
    v5 = [[AXAttributedString alloc] initWithString:v4];
    v8 = UIAccessibilitySpeechAttributePunctuation;
    v9 = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v5 setAttributes:v6];

    v4 = v5;
  }

  return v4;
}

- (void)buttonPickerWantsToInsertText:(id)a3
{
  v4 = a3;
  v5 = [(AXVoiceOverPunctuationReplacement *)self cellForSpecifierID:@"punctuation"];
  v6 = [v5 editableTextField];
  [v6 setText:v4];

  v7 = [(AXVoiceOverPunctuationReplacement *)self specifierForID:@"punctuation"];
  [(AXVoiceOverPunctuationReplacement *)self _setPunctuation:v4 specifier:v7];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v23 = a4;
  v7 = [(AXVoiceOverPunctuationReplacement *)self specifierAtIndexPath:a5];
  v8 = [v7 propertyForKey:PSIDKey];
  v9 = [v8 isEqualToString:@"punctuation"];

  v10 = v23;
  if (v9)
  {
    v11 = [v23 editableTextField];
    v12 = [v11 rightView];

    if (!v12)
    {
      [v11 setRightViewMode:3];
      v13 = [AXVoiceOverPunctuationPickerButtonSet alloc];
      [v11 bounds];
      v14 = [(AXVoiceOverPunctuationPickerButtonSet *)v13 initWithFrame:0.0, 0.0, 100.0];
      [(AXVoiceOverPunctuationPickerButtonSet *)v14 layoutSubviews];
      [(AXVoiceOverPunctuationPickerButtonSet *)v14 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(AXVoiceOverPunctuationPickerButtonSet *)v14 circle];
      BoundingBox = CGPathGetBoundingBox([v21 path]);
      width = BoundingBox.size.width;

      [(AXVoiceOverPunctuationPickerButtonSet *)v14 setFrame:v16, v18, width, v20];
      [(AXVoiceOverPunctuationPickerButtonSet *)v14 addTarget:self action:"_punctuationPickerTapped:" forControlEvents:64];
      [v11 setRightView:v14];
    }

    v10 = v23;
  }
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  [*a5 frame];
  AX_CGRectGetCenter();
  a4->origin.x = v6;
  a4->origin.y = v7;
}

- (void)_punctuationPickerTapped:(id)a3
{
  v4 = a3;
  v5 = [(AXVoiceOverPunctuationReplacement *)self view];
  v6 = [v5 window];
  v7 = [v6 firstResponder];
  [v7 resignFirstResponder];

  v15 = objc_alloc_init(AXVoiceOverPunctuationSelectionPicker);
  [(AXVoiceOverPunctuationSelectionPicker *)v15 setDelegate:self];
  [(AXVoiceOverPunctuationSelectionPicker *)v15 setModalPresentationStyle:7];
  v8 = [(AXVoiceOverPunctuationSelectionPicker *)v15 popoverPresentationController];
  [v8 setDelegate:self];
  [v8 setPermittedArrowDirections:1];
  v9 = [v4 label];
  [v8 setSourceView:v9];

  v10 = [v4 label];
  [v10 bounds];
  v12 = v11;
  v13 = [v4 label];

  [v13 bounds];
  [v8 setSourceRect:{v12, v14, 1.0, 1.0}];

  [v8 setCanOverlapSourceViewRect:0];
  [(AXVoiceOverPunctuationReplacement *)self presentViewController:v15 animated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXVoiceOverPunctuationReplacement *)self specifierForIndexPath:v6];
  v13.receiver = self;
  v13.super_class = AXVoiceOverPunctuationReplacement;
  [(AXVoiceOverPunctuationReplacement *)&v13 tableView:v7 didSelectRowAtIndexPath:v6];

  v9 = [v8 propertyForKey:@"RuleType"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
    v12 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    [v12 setRule:v11];

    [(AXVoiceOverPunctuationReplacement *)self _saveIfPossible];
    [(AXVoiceOverPunctuationReplacement *)self _updateSelectedRuleChoice];
  }
}

@end