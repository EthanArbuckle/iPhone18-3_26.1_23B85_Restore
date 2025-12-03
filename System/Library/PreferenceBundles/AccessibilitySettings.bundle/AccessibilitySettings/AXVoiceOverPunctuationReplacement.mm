@interface AXVoiceOverPunctuationReplacement
- (AXSSPunctuationEntry)punctuationEntry;
- (BOOL)_isValidPunctuationEntry;
- (id)_punctuation:(id)_punctuation;
- (id)_replacement:(id)_replacement;
- (id)specifiers;
- (void)_punctuationPickerTapped:(id)tapped;
- (void)_saveIfPossible;
- (void)_setPunctuation:(id)punctuation specifier:(id)specifier;
- (void)_setReplacement:(id)replacement specifier:(id)specifier;
- (void)_updateSelectedRuleChoice;
- (void)_updateTextAttributes;
- (void)buttonPickerWantsToInsertText:(id)text;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)reloadSpecifiers;
- (void)removeFromParentViewController;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  specifier = [(AXVoiceOverPunctuationReplacement *)self specifier];
  [specifier removePropertyForKey:@"PunctuationEntry"];
}

- (BOOL)_isValidPunctuationEntry
{
  punctuationEntry = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  punctuation = [punctuationEntry punctuation];
  v4 = [punctuation length] != 0;

  return v4;
}

- (void)_updateTextAttributes
{
  v3 = [(AXVoiceOverPunctuationReplacement *)self cellForSpecifierID:@"replacement"];
  editableTextField = [v3 editableTextField];
  text = [editableTextField text];
  punctuationEntry = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  [punctuationEntry setReplacement:text];

  v10 = [(AXVoiceOverPunctuationReplacement *)self cellForSpecifierID:@"punctuation"];
  editableTextField2 = [v10 editableTextField];
  text2 = [editableTextField2 text];
  punctuationEntry2 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  [punctuationEntry2 setPunctuation:text2];
}

- (void)_saveIfPossible
{
  [(AXVoiceOverPunctuationReplacement *)self _updateTextAttributes];
  punctuationGroup = [(AXVoiceOverPunctuationReplacement *)self punctuationGroup];
  if (([punctuationGroup inDatabase] & 1) == 0)
  {
    v4 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25[0] = punctuationGroup;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Group not in DB, adding: %@", &v24, 0xCu);
    }

    v5 = +[AXSSPunctuationManager sharedDatabase];
    [v5 updatePunctuationGroup:punctuationGroup];
  }

  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    _isValidPunctuationEntry = [(AXVoiceOverPunctuationReplacement *)self _isValidPunctuationEntry];
    punctuationEntry = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    v24 = 67109378;
    LODWORD(v25[0]) = _isValidPunctuationEntry;
    WORD2(v25[0]) = 2112;
    *(v25 + 6) = punctuationEntry;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Adding entry: valid:%d - %@", &v24, 0x12u);
  }

  if ([(AXVoiceOverPunctuationReplacement *)self _isValidPunctuationEntry])
  {
    uuid = [punctuationGroup uuid];
    punctuationEntry2 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    [punctuationEntry2 setGroupUUID:uuid];

    v11 = +[AXSSPunctuationManager sharedDatabase];
    punctuationEntry3 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    [v11 updateEntry:punctuationEntry3];

    entries = [punctuationGroup entries];
    punctuationEntry4 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    v15 = [entries containsObject:punctuationEntry4];

    if ((v15 & 1) == 0)
    {
      entries2 = [punctuationGroup entries];
      if (entries2)
      {
        entries3 = [punctuationGroup entries];
        v18 = [entries3 mutableCopy];
      }

      else
      {
        v18 = +[NSMutableArray array];
      }

      punctuationEntry5 = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
      [v18 addObject:punctuationEntry5];

      [punctuationGroup setEntries:v18];
      v20 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        entries4 = [punctuationGroup entries];
        v24 = 138412290;
        v25[0] = entries4;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Associating entry: %@", &v24, 0xCu);
      }

      v22 = +[AXSSPunctuationManager sharedDatabase];
      [v22 updatePunctuationGroup:punctuationGroup];
    }

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 postNotificationName:@"AXVoiceOverPunctuationGroupChangedNotification" object:0];
  }
}

- (void)viewDidLoad
{
  specifier = [(AXVoiceOverPunctuationReplacement *)self specifier];
  v4 = [specifier propertyForKey:@"PunctuationGroup"];
  if (v4)
  {
    v5 = v4;
    punctuationGroup = [(AXVoiceOverPunctuationReplacement *)self punctuationGroup];

    if (punctuationGroup)
    {
      goto LABEL_5;
    }

    specifier = [(AXVoiceOverPunctuationReplacement *)self specifier];
    v7 = [specifier propertyForKey:@"PunctuationGroup"];
    [(AXVoiceOverPunctuationReplacement *)self setPunctuationGroup:v7];
  }

LABEL_5:
  specifier2 = [(AXVoiceOverPunctuationReplacement *)self specifier];
  v9 = [specifier2 propertyForKey:@"PunctuationEntry"];
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  punctuationEntry = self->_punctuationEntry;

  if (!punctuationEntry)
  {
    specifier2 = [(AXVoiceOverPunctuationReplacement *)self specifier];
    v11 = [specifier2 propertyForKey:@"PunctuationEntry"];
    [(AXVoiceOverPunctuationReplacement *)self setPunctuationEntry:v11];

    goto LABEL_8;
  }

LABEL_9:
  specifier3 = [(AXVoiceOverPunctuationReplacement *)self specifier];
  cachedSpecifier = self->_cachedSpecifier;
  self->_cachedSpecifier = specifier3;

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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXVoiceOverPunctuationReplacement;
  [(AXVoiceOverPunctuationReplacement *)&v4 viewWillAppear:appear];
  [(AXVoiceOverPunctuationReplacement *)self _updateSelectedRuleChoice];
}

- (void)_updateSelectedRuleChoice
{
  v10 = [(AXVoiceOverPunctuationReplacement *)self specifierForID:@"RuleGroup"];
  v3 = [(AXVoiceOverPunctuationReplacement *)self specifierForID:@"replacement"];
  punctuationEntry = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  rule = [punctuationEntry rule];

  if (!rule)
  {
    v6 = 0;
    v7 = @"AXSSPunctuationEntryRuleIgnore";
    goto LABEL_7;
  }

  if (rule == &dword_0 + 2)
  {
    v6 = 0;
    v7 = @"AXSSPunctuationEntryRuleRemove";
    goto LABEL_7;
  }

  if (rule == &dword_0 + 1)
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

- (void)_setReplacement:(id)replacement specifier:(id)specifier
{
  replacementCopy = replacement;
  punctuationEntry = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  [punctuationEntry setReplacement:replacementCopy];

  [(AXVoiceOverPunctuationReplacement *)self _saveIfPossible];
}

- (id)_replacement:(id)_replacement
{
  punctuationEntry = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  replacement = [punctuationEntry replacement];
  localizedCapitalizedString = [replacement localizedCapitalizedString];

  return localizedCapitalizedString;
}

- (void)_setPunctuation:(id)punctuation specifier:(id)specifier
{
  punctuationCopy = punctuation;
  punctuationEntry = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  [punctuationEntry setPunctuation:punctuationCopy];

  [(AXVoiceOverPunctuationReplacement *)self _saveIfPossible];
}

- (id)_punctuation:(id)_punctuation
{
  punctuationEntry = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
  punctuation = [punctuationEntry punctuation];

  if ([punctuation length] == &dword_0 + 1)
  {
    v5 = [[AXAttributedString alloc] initWithString:punctuation];
    v8 = UIAccessibilitySpeechAttributePunctuation;
    v9 = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v5 setAttributes:v6];

    punctuation = v5;
  }

  return punctuation;
}

- (void)buttonPickerWantsToInsertText:(id)text
{
  textCopy = text;
  v5 = [(AXVoiceOverPunctuationReplacement *)self cellForSpecifierID:@"punctuation"];
  editableTextField = [v5 editableTextField];
  [editableTextField setText:textCopy];

  v7 = [(AXVoiceOverPunctuationReplacement *)self specifierForID:@"punctuation"];
  [(AXVoiceOverPunctuationReplacement *)self _setPunctuation:textCopy specifier:v7];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(AXVoiceOverPunctuationReplacement *)self specifierAtIndexPath:path];
  v8 = [v7 propertyForKey:PSIDKey];
  v9 = [v8 isEqualToString:@"punctuation"];

  v10 = cellCopy;
  if (v9)
  {
    editableTextField = [cellCopy editableTextField];
    rightView = [editableTextField rightView];

    if (!rightView)
    {
      [editableTextField setRightViewMode:3];
      v13 = [AXVoiceOverPunctuationPickerButtonSet alloc];
      [editableTextField bounds];
      v14 = [(AXVoiceOverPunctuationPickerButtonSet *)v13 initWithFrame:0.0, 0.0, 100.0];
      [(AXVoiceOverPunctuationPickerButtonSet *)v14 layoutSubviews];
      [(AXVoiceOverPunctuationPickerButtonSet *)v14 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      circle = [(AXVoiceOverPunctuationPickerButtonSet *)v14 circle];
      BoundingBox = CGPathGetBoundingBox([circle path]);
      width = BoundingBox.size.width;

      [(AXVoiceOverPunctuationPickerButtonSet *)v14 setFrame:v16, v18, width, v20];
      [(AXVoiceOverPunctuationPickerButtonSet *)v14 addTarget:self action:"_punctuationPickerTapped:" forControlEvents:64];
      [editableTextField setRightView:v14];
    }

    v10 = cellCopy;
  }
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  [*view frame];
  AX_CGRectGetCenter();
  rect->origin.x = v6;
  rect->origin.y = v7;
}

- (void)_punctuationPickerTapped:(id)tapped
{
  tappedCopy = tapped;
  view = [(AXVoiceOverPunctuationReplacement *)self view];
  window = [view window];
  firstResponder = [window firstResponder];
  [firstResponder resignFirstResponder];

  v15 = objc_alloc_init(AXVoiceOverPunctuationSelectionPicker);
  [(AXVoiceOverPunctuationSelectionPicker *)v15 setDelegate:self];
  [(AXVoiceOverPunctuationSelectionPicker *)v15 setModalPresentationStyle:7];
  popoverPresentationController = [(AXVoiceOverPunctuationSelectionPicker *)v15 popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  [popoverPresentationController setPermittedArrowDirections:1];
  label = [tappedCopy label];
  [popoverPresentationController setSourceView:label];

  label2 = [tappedCopy label];
  [label2 bounds];
  v12 = v11;
  label3 = [tappedCopy label];

  [label3 bounds];
  [popoverPresentationController setSourceRect:{v12, v14, 1.0, 1.0}];

  [popoverPresentationController setCanOverlapSourceViewRect:0];
  [(AXVoiceOverPunctuationReplacement *)self presentViewController:v15 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(AXVoiceOverPunctuationReplacement *)self specifierForIndexPath:pathCopy];
  v13.receiver = self;
  v13.super_class = AXVoiceOverPunctuationReplacement;
  [(AXVoiceOverPunctuationReplacement *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];

  v9 = [v8 propertyForKey:@"RuleType"];
  v10 = v9;
  if (v9)
  {
    integerValue = [v9 integerValue];
    punctuationEntry = [(AXVoiceOverPunctuationReplacement *)self punctuationEntry];
    [punctuationEntry setRule:integerValue];

    [(AXVoiceOverPunctuationReplacement *)self _saveIfPossible];
    [(AXVoiceOverPunctuationReplacement *)self _updateSelectedRuleChoice];
  }
}

@end