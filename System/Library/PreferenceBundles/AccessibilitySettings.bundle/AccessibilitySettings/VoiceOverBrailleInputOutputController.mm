@interface VoiceOverBrailleInputOutputController
- (BOOL)_isActivityMode;
- (BOOL)_isDisplayInput;
- (BOOL)_isGesturesInput;
- (BOOL)_shouldShowAutoTranslate;
- (BOOL)_shouldShowEightDotBraille;
- (BRLTTableEnumerator)tableEnumerator;
- (id)autoActivateOnTextFields:(id)fields;
- (id)brailleGestureControl:(id)control;
- (id)brailleGesturesSoundOption:(id)option;
- (id)displaysEnteredText:(id)text;
- (id)gradeTwoAutoTranslatedEnabled:(id)enabled;
- (id)learnsDotPositionsEnabled:(id)enabled;
- (id)shouldReverseDotsEnabled:(id)enabled;
- (id)specifiers;
- (id)useActivationGestureEnabled:(id)enabled;
- (id)usesHapticFeedback:(id)feedback;
- (id)usesSingleHandDotNumbersFeedback:(id)feedback;
- (id)usesTypingSoundFeedback:(id)feedback;
- (void)jumpToVoiceOverCommandsSettings:(id)settings;
- (void)setAutoActivateOnTextFields:(id)fields specifier:(id)specifier;
- (void)setBrailleGestureControl:(id)control specifier:(id)specifier;
- (void)setDisplaysEnteredText:(id)text specifier:(id)specifier;
- (void)setGradeTwoAutoTransateEnabled:(id)enabled specifier:(id)specifier;
- (void)setLearnsDotPositions:(id)positions specifier:(id)specifier;
- (void)setShouldReverseDotsEnabled:(id)enabled specifier:(id)specifier;
- (void)setUseActivationGestureEnabled:(id)enabled specifier:(id)specifier;
- (void)setUsesHapticsFeedback:(id)feedback specifier:(id)specifier;
- (void)setUsesSingleHandDotNumbersFeedback:(id)feedback specifier:(id)specifier;
- (void)setUsesTypingSoundFeedback:(id)feedback specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation VoiceOverBrailleInputOutputController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = VoiceOverBrailleInputOutputController;
  [(VoiceOverBrailleInputOutputController *)&v12 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __52__VoiceOverBrailleInputOutputController_viewDidLoad__block_invoke;
  v9[3] = &unk_255388;
  objc_copyWeak(&v10, &location);
  v4 = objc_loadWeakRetained(&location);
  [v3 registerUpdateBlock:v9 forRetrieveSelector:"voiceOverTouchBrailleDisplayOutputMode" withListener:v4];

  objc_destroyWeak(&v10);
  v5 = +[AXSettings sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __52__VoiceOverBrailleInputOutputController_viewDidLoad__block_invoke_2;
  v7[3] = &unk_255388;
  objc_copyWeak(&v8, &location);
  v6 = objc_loadWeakRetained(&location);
  [v5 registerUpdateBlock:v7 forRetrieveSelector:"voiceOverTouchBrailleDisplayInputMode" withListener:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__VoiceOverBrailleInputOutputController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __52__VoiceOverBrailleInputOutputController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (BOOL)_isDisplayInput
{
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"BrailleDisplayInput"];

  return v4;
}

- (BOOL)_isActivityMode
{
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"VoiceOverBrailleActivityModeID"];

  return v4;
}

- (BOOL)_isGesturesInput
{
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v3 = [specifier propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"BrailleGesturesInput"];

  return v4;
}

- (BOOL)_shouldShowEightDotBraille
{
  if (![(VoiceOverBrailleInputOutputController *)self _isGesturesInput])
  {
    return 1;
  }

  return AXDeviceSupportsManyTouches();
}

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v98 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = AXValidationManager_ptr;
    v102 = selfCopy;
    v99 = v4;
    if (VOSCustomBrailleEnabled() && [(VoiceOverBrailleInputOutputController *)selfCopy _isGesturesInput])
    {
      v6 = [(VoiceOverBrailleInputOutputController *)selfCopy loadSpecifiersFromPlistName:@"BrailleScreenInput" target:selfCopy];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v107 objects:v112 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v108;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v108 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [v4 addObject:*(*(&v107 + 1) + 8 * i)];
          }

          v8 = [v6 countByEnumeratingWithState:&v107 objects:v112 count:16];
        }

        while (v8);
      }

      v11 = +[PSSpecifier emptyGroupSpecifier];
      v12 = AXLocStringForDeviceVariant();
      v13 = PSFooterTextGroupKey;
      [v11 setProperty:v12 forKey:PSFooterTextGroupKey];

      [v4 addObject:v11];
      v14 = settingsLocString(@"USE_ACTIVATION_GESTURES", @"BrailleScreenInput");
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:selfCopy set:"setUseActivationGestureEnabled:specifier:" get:"useActivationGestureEnabled:" detail:0 cell:6 edit:0];

      v16 = PSIDKey;
      [v15 setProperty:@"USE_ACTIVATION_GESTURES" forKey:PSIDKey];
      [v4 addObject:v15];
      v17 = +[PSSpecifier emptyGroupSpecifier];

      v18 = AXLocStringForDeviceVariant();
      [v17 setProperty:v18 forKey:v13];

      [v4 addObject:v17];
      v19 = settingsLocString(@"AUTO_ACTIVATE_ON_TEXT_FIELDS", @"BrailleScreenInput");
      v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:v102 set:"setAutoActivateOnTextFields:specifier:" get:"autoActivateOnTextFields:" detail:0 cell:6 edit:0];

      [v20 setProperty:@"AUTO_ACTIVATE_ON_TEXT_FIELDS" forKey:v16];
      [v99 addObject:v20];
      v21 = +[PSSpecifier emptyGroupSpecifier];

      v22 = settingsLocString(@"CONTROL_DEVICE_USING_BRAILLE_GESTURE_DESCRIPTION", @"VoiceOverBrailleOptions");
      [v21 setProperty:v22 forKey:v13];

      [v99 addObject:v21];
      v23 = settingsLocString(@"CONTROL_DEVICE_USING_BRAILLE_GESTURE", @"VoiceOverBrailleOptions");
      v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:v102 set:"setBrailleGestureControl:specifier:" get:"brailleGestureControl:" detail:0 cell:6 edit:0];

      [v24 setProperty:@"CONTROL_DEVICE_USING_BRAILLE_GESTURE" forKey:v16];
      [v99 addObject:v24];
      v25 = +[PSSpecifier emptyGroupSpecifier];

      [v99 addObject:v25];
      v26 = settingsLocString(@"CUSTOMIZE_BSI_COMMANDS", @"VoiceOverBrailleOptions");
      v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:v102 set:0 get:0 detail:0 cell:13 edit:0];

      [v27 setProperty:@"CUSTOMIZE_BSI_COMMANDS" forKey:v16];
      [v27 setButtonAction:"jumpToVoiceOverCommandsSettings:"];
      [v99 addObject:v27];
      v28 = +[PSSpecifier emptyGroupSpecifier];

      v29 = settingsLocString(@"LEARNS_DOT_POSITIONS_DESCRIPTION", @"VoiceOverBrailleOptions");
      [v28 setProperty:v29 forKey:v13];

      [v99 addObject:v28];
      v30 = settingsLocString(@"LEARNS_DOT_POSITIONS", @"VoiceOverBrailleOptions");
      v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:v102 set:"setLearnsDotPositions:specifier:" get:"learnsDotPositionsEnabled:" detail:0 cell:6 edit:0];

      [v31 setProperty:@"LEARNS_DOT_POSITIONS" forKey:v16];
      [v99 addObject:v31];
      v32 = +[PSSpecifier emptyGroupSpecifier];

      v33 = AXLocStringForDeviceVariant();
      [v32 setProperty:v33 forKey:v13];

      [v99 addObject:v32];
      v34 = settingsLocString(@"SHOULD_REVERSE_DOTS", @"VoiceOverBrailleOptions");
      v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:v102 set:"setShouldReverseDotsEnabled:specifier:" get:"shouldReverseDotsEnabled:" detail:0 cell:6 edit:0];

      selfCopy = v102;
      [v35 setProperty:@"SHOULD_REVERSE_DOTS" forKey:v16];
      [v99 addObject:v35];
      v36 = +[PSSpecifier emptyGroupSpecifier];

      v37 = AXLocStringForDeviceVariant();
      [v36 setProperty:v37 forKey:v13];

      [v99 addObject:v36];
      v38 = settingsLocString(@"DISPLAY_ENTERED_TEXT", @"BrailleScreenInput");
      v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:v102 set:"setDisplaysEnteredText:specifier:" get:"displaysEnteredText:" detail:0 cell:6 edit:0];

      [v39 setProperty:@"DISPLAY_ENTERED_TEXT" forKey:v16];
      [v99 addObject:v39];
      v40 = settingsLocString(@"TYPING_FEEDBACK", @"BrailleScreenInput");
      v41 = [PSSpecifier preferenceSpecifierNamed:v40 target:v102 set:0 get:0 detail:0 cell:0 edit:0];

      [v41 setProperty:@"TYPING_FEEDBACK" forKey:v16];
      [v99 addObject:v41];
      v42 = settingsLocString(@"USE_TYPING_SOUND_FEEDBACK", @"BrailleScreenInput");
      v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:v102 set:"setUsesTypingSoundFeedback:specifier:" get:"usesTypingSoundFeedback:" detail:0 cell:6 edit:0];

      [v43 setProperty:@"USE_TYPING_SOUND_FEEDBACK" forKey:v16];
      [v99 addObject:v43];
      if ((AXDeviceIsPad() & 1) == 0)
      {
        v44 = settingsLocString(@"USE_HAPTIC_FEEDBACK", @"BrailleScreenInput");
        v45 = [PSSpecifier preferenceSpecifierNamed:v44 target:v102 set:"setUsesHapticsFeedback:specifier:" get:"usesHapticFeedback:" detail:0 cell:6 edit:0];

        [v45 setProperty:@"USE_HAPTIC_FEEDBACK" forKey:v16];
        [v99 addObject:v45];
        v43 = v45;
      }

      if ((AXDeviceIsPad() & 1) == 0)
      {
        v46 = settingsLocString(@"USE_SINGLE_HAND_DOT_NUMBERS_FEEDBACK", @"BrailleScreenInput");
        v47 = [PSSpecifier preferenceSpecifierNamed:v46 target:v102 set:"setUsesSingleHandDotNumbersFeedback:specifier:" get:"usesSingleHandDotNumbersFeedback:" detail:0 cell:6 edit:0];

        [v47 setProperty:@"USE_SINGLE_HAND_DOT_NUMBERS_FEEDBACK" forKey:v16];
        [v99 addObject:v47];
        v48 = settingsLocString(@"SINGLE_HAND_STYLE", @"BrailleScreenInput");
        v49 = [PSSpecifier preferenceSpecifierNamed:v48 target:v102 set:0 get:0 detail:0 cell:0 edit:0];

        [v99 addObject:v49];
        v50 = settingsLocString(@"SINGLE_HAND_STYLE_INPUT_COLUMNS", @"BrailleScreenInput");
        v51 = [PSSpecifier preferenceSpecifierNamed:v50 target:v102 set:0 get:0 detail:0 cell:3 edit:0];

        [v51 setProperty:&off_279F30 forKey:@"AXSVoiceOverBrailleGesturesSingleHandStyle"];
        [v99 addObject:v51];
        v52 = settingsLocString(@"SINGLE_HAND_STYLE_INPUT_COLUMNS_LEFT", @"BrailleScreenInput");
        v53 = [PSSpecifier preferenceSpecifierNamed:v52 target:v102 set:0 get:0 detail:0 cell:3 edit:0];

        [v53 setProperty:&off_279F48 forKey:@"AXSVoiceOverBrailleGesturesSingleHandStyle"];
        [v99 addObject:v53];
        v54 = settingsLocString(@"SINGLE_HAND_STYLE_SLATE_AND_STYLUS", @"BrailleScreenInput");
        v55 = [PSSpecifier preferenceSpecifierNamed:v54 target:v102 set:0 get:0 detail:0 cell:3 edit:0];

        [v55 setProperty:&off_279F60 forKey:@"AXSVoiceOverBrailleGesturesSingleHandStyle"];
        [v99 addObject:v55];
        v56 = settingsLocString(@"SINGLE_HAND_STYLE_REVERSED_SLATE_AND_STYLUS", @"BrailleScreenInput");
        v43 = [PSSpecifier preferenceSpecifierNamed:v56 target:v102 set:0 get:0 detail:0 cell:3 edit:0];

        [v43 setProperty:&off_279F78 forKey:@"AXSVoiceOverBrailleGesturesSingleHandStyle"];
        [v99 addObject:v43];
      }

      v57 = settingsLocString(@"SOUND_OPTION", @"BrailleScreenInput");
      v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:v102 set:0 get:0 detail:0 cell:0 edit:0];

      [v99 addObject:v58];
      v59 = settingsLocString(@"SOUND_OPTION_SPEAK_AND_SOUND", @"BrailleScreenInput");
      v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:v102 set:0 get:0 detail:0 cell:3 edit:0];

      [v60 setProperty:&off_279F78 forKey:@"AXSVoiceOverTouchBrailleGesturesSoundOption"];
      [v99 addObject:v60];
      v61 = settingsLocString(@"SOUND_OPTION_SPEAK", @"BrailleScreenInput");
      v62 = [PSSpecifier preferenceSpecifierNamed:v61 target:v102 set:0 get:0 detail:0 cell:3 edit:0];

      [v62 setProperty:&off_279F30 forKey:@"AXSVoiceOverTouchBrailleGesturesSoundOption"];
      [v99 addObject:v62];
      v63 = settingsLocString(@"SOUND_OPTION_SOUND", @"BrailleScreenInput");
      v64 = [PSSpecifier preferenceSpecifierNamed:v63 target:v102 set:0 get:0 detail:0 cell:3 edit:0];

      [v64 setProperty:&off_279F60 forKey:@"AXSVoiceOverTouchBrailleGesturesSoundOption"];
      [v99 addObject:v64];

      v5 = AXValidationManager_ptr;
    }

    else if ([(VoiceOverBrailleInputOutputController *)selfCopy _isGesturesInput])
    {
      v65 = +[AXSettings sharedInstance];
      voiceOverBrailleGesturesEnabled = [v65 voiceOverBrailleGesturesEnabled];

      if ((voiceOverBrailleGesturesEnabled & 1) == 0)
      {
        v67 = +[PSSpecifier emptyGroupSpecifier];
        v68 = settingsLocString(@"BRAILLE_GESTURES_PROMPT", @"VoiceOverBrailleOptions");
        [v67 setProperty:v68 forKey:PSFooterTextGroupKey];

        [v4 addObject:v67];
      }
    }

    v100 = objc_opt_new();
    if ([(VoiceOverBrailleInputOutputController *)selfCopy _isGesturesInput])
    {
      v69 = settingsLocString(@"BSI_TABLES", @"VoiceOverBrailleOptions");
      v70 = [PSSpecifier preferenceSpecifierNamed:v69 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];

      [v70 setProperty:@"BSI_TABLES" forKey:PSIDKey];
      [v100 addObject:v70];
    }

    sharedInstance = [v5[375] sharedInstance];
    voiceOverBrailleLanguageRotorItems = [sharedInstance voiceOverBrailleLanguageRotorItems];

    v73 = +[AXLanguageManager sharedInstance];
    userLocale = [v73 userLocale];

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = voiceOverBrailleLanguageRotorItems;
    v75 = [obj countByEnumeratingWithState:&v103 objects:v111 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v104;
      do
      {
        for (j = 0; j != v76; j = j + 1)
        {
          if (*v104 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v79 = *(*(&v103 + 1) + 8 * j);
          v80 = [v79 objectForKeyedSubscript:@"Default"];
          bOOLValue = [v80 BOOLValue];

          if (bOOLValue)
          {
            v82 = [v79 objectForKeyedSubscript:@"LanguageDefaults"];
            localeIdentifier = [userLocale localeIdentifier];
            v84 = [v82 objectForKeyedSubscript:localeIdentifier];

            if (v84)
            {
              v85 = [[BRLTTable alloc] initWithIdentifier:v84];
            }

            else
            {
              tableEnumerator = [(VoiceOverBrailleInputOutputController *)v102 tableEnumerator];
              v85 = [objc_opt_class() defaultTableForLocale:userLocale];
            }
          }

          else
          {
            v86 = [BRLTTable alloc];
            v82 = [v79 objectForKeyedSubscript:@"RotorItem"];
            v85 = [v86 initWithIdentifier:v82];
          }

          replacements = [v85 replacements];
          v89 = [replacements count];

          if (!v89 && (-[VoiceOverBrailleInputOutputController _shouldShowEightDotBraille](v102, "_shouldShowEightDotBraille") || ([v85 supportsTranslationMode8Dot] & 1) == 0))
          {
            localizedNameWithService = [v85 localizedNameWithService];
            v91 = [PSSpecifier preferenceSpecifierNamed:localizedNameWithService target:v102 set:0 get:0 detail:0 cell:3 edit:0];

            [v91 setProperty:&__kCFBooleanTrue forKey:@"IsLanguage"];
            [v91 setProperty:v85 forKey:@"Table"];
            identifier = [v85 identifier];
            [v91 setProperty:identifier forKey:@"TableIdentifier"];

            [v100 addObject:v91];
          }
        }

        v76 = [obj countByEnumeratingWithState:&v103 objects:v111 count:16];
      }

      while (v76);
    }

    [v99 addObjectsFromArray:v100];
    [(VoiceOverBrailleInputOutputController *)v102 setDetailItems:v100];
    if ([(VoiceOverBrailleInputOutputController *)v102 _isDisplayInput])
    {
      v93 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleDisplaySyncInputOutputTables = [v93 voiceOverTouchBrailleDisplaySyncInputOutputTables];
    }

    else
    {
      voiceOverTouchBrailleDisplaySyncInputOutputTables = 0;
    }

    v95 = [(VoiceOverBrailleInputOutputController *)v102 specifiersByRemovingDetailItemsFromOriginalSpecifiers:v99 ifHidden:voiceOverTouchBrailleDisplaySyncInputOutputTables];
    v96 = *&v102->AXUISettingsBaseListController_opaque[v98];
    *&v102->AXUISettingsBaseListController_opaque[v98] = v95;

    v3 = *&v102->AXUISettingsBaseListController_opaque[v98];
  }

  return v3;
}

- (BOOL)_shouldShowAutoTranslate
{
  if ([(VoiceOverBrailleInputOutputController *)self _isActivityMode])
  {
    return 0;
  }

  v3 = VOSCustomBrailleEnabled();
  v4 = +[AXSettings sharedInstance];
  v5 = v4;
  if (v3)
  {
    voiceOverTouchBrailleDisplayInputTableIdentifier = [v4 voiceOverTouchBrailleDisplayInputTableIdentifier];

    v7 = [[BRLTTable alloc] initWithIdentifier:voiceOverTouchBrailleDisplayInputTableIdentifier];
    candidateSelectionLanguage = [v7 candidateSelectionLanguage];
    v2 = [candidateSelectionLanguage length] == 0;
  }

  else
  {
    voiceOverTouchBrailleDisplayInputMode = [v4 voiceOverTouchBrailleDisplayInputMode];

    return (voiceOverTouchBrailleDisplayInputMode & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  return v2;
}

- (id)gradeTwoAutoTranslatedEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverBrailleGradeTwoAutoTranslateEnabled]);

  return v4;
}

- (void)setGradeTwoAutoTransateEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverBrailleGradeTwoAutoTranslateEnabled:bOOLValue];
}

- (id)learnsDotPositionsEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleGesturesLearnsDotPositions]);

  return v4;
}

- (void)setLearnsDotPositions:(id)positions specifier:(id)specifier
{
  positionsCopy = positions;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [positionsCopy BOOLValue];

  [v6 setVoiceOverTouchBrailleGesturesLearnsDotPositions:bOOLValue];
}

- (id)shouldReverseDotsEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleShouldReverseDots]);

  return v4;
}

- (void)setShouldReverseDotsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setVoiceOverTouchBrailleShouldReverseDots:bOOLValue];
}

- (id)useActivationGestureEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleGesturesActivationGestureEnabled]);

  return v4;
}

- (void)setUseActivationGestureEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setVoiceOverTouchBrailleGesturesActivationGestureEnabled:bOOLValue];
}

- (id)brailleGestureControl:(id)control
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleGestureControl]);

  return v4;
}

- (void)setBrailleGestureControl:(id)control specifier:(id)specifier
{
  bOOLValue = [control BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleGestureControl:bOOLValue];
}

- (id)usesHapticFeedback:(id)feedback
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleGesturesUsesHapticFeedback]);

  return v4;
}

- (void)setUsesHapticsFeedback:(id)feedback specifier:(id)specifier
{
  bOOLValue = [feedback BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleGesturesUsesHapticFeedback:bOOLValue];
}

- (id)usesSingleHandDotNumbersFeedback:(id)feedback
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback]);

  return v4;
}

- (void)setUsesSingleHandDotNumbersFeedback:(id)feedback specifier:(id)specifier
{
  bOOLValue = [feedback BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback:bOOLValue];
}

- (id)usesTypingSoundFeedback:(id)feedback
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleGesturesUsesTypingSoundFeedback]);

  return v4;
}

- (void)setUsesTypingSoundFeedback:(id)feedback specifier:(id)specifier
{
  bOOLValue = [feedback BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleGesturesUsesTypingSoundFeedback:bOOLValue];
}

- (id)displaysEnteredText:(id)text
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleGesturesDisplaysEnteredText]);

  return v4;
}

- (void)setDisplaysEnteredText:(id)text specifier:(id)specifier
{
  bOOLValue = [text BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleGesturesDisplaysEnteredText:bOOLValue];
}

- (id)autoActivateOnTextFields:(id)fields
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleGesturesAutoActivateOnTextFields]);

  return v4;
}

- (void)setAutoActivateOnTextFields:(id)fields specifier:(id)specifier
{
  bOOLValue = [fields BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverTouchBrailleGesturesAutoActivateOnTextFields:bOOLValue];
}

- (id)brailleGesturesSoundOption:(id)option
{
  v3 = +[AXSettings sharedInstance];
  voiceOverTouchBrailleGesturesSoundOption = [v3 voiceOverTouchBrailleGesturesSoundOption];

  v5 = @"SOUND_OPTION_SPEAK_AND_SOUND";
  if (voiceOverTouchBrailleGesturesSoundOption == &dword_0 + 1)
  {
    v5 = @"SOUND_OPTION_SOUND";
  }

  if (voiceOverTouchBrailleGesturesSoundOption)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"SOUND_OPTION_SPEAK";
  }

  v7 = settingsLocString(v6, @"BrailleScreenInput");

  return v7;
}

- (void)jumpToVoiceOverCommandsSettings:(id)settings
{
  v4 = [NSURL URLWithString:@"prefs:root=ACCESSIBILITY&path=VOICEOVER_TITLE/CustomizeCommands/BrailleKeyboardInput"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(VoiceOverBrailleInputOutputController *)self specifierForIndexPath:path];
  specifier = [cellCopy specifier];
  v9 = [specifier propertyForKey:@"AXSVoiceOverBrailleGesturesSingleHandStyle"];

  if (v9)
  {
    v10 = +[AXSettings sharedInstance];
    voiceOverTouchBrailleGesturesSingleHandStyle = [v10 voiceOverTouchBrailleGesturesSingleHandStyle];

    [cellCopy setChecked:{objc_msgSend(v9, "integerValue") == voiceOverTouchBrailleGesturesSingleHandStyle}];
  }

  else
  {
    specifier2 = [cellCopy specifier];
    v13 = [specifier2 propertyForKey:@"AXSVoiceOverTouchBrailleGesturesSoundOption"];

    if (v13)
    {
      v14 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleGesturesSoundOption = [v14 voiceOverTouchBrailleGesturesSoundOption];

      [cellCopy setChecked:{objc_msgSend(v13, "integerValue") == voiceOverTouchBrailleGesturesSoundOption}];
    }

    else
    {
      v16 = [v7 propertyForKey:@"TableIdentifier"];
      if ([(VoiceOverBrailleInputOutputController *)self _isDisplayInput])
      {
        v17 = +[AXSettings sharedInstance];
        voiceOverTouchBrailleDisplayInputTableIdentifier = [v17 voiceOverTouchBrailleDisplayInputTableIdentifier];
      }

      else
      {
        _isGesturesInput = [(VoiceOverBrailleInputOutputController *)self _isGesturesInput];
        v20 = +[AXSettings sharedInstance];
        v17 = v20;
        if (_isGesturesInput)
        {
          [v20 voiceOverTouchBrailleGesturesInputTableIdentifier];
        }

        else
        {
          [v20 voiceOverTouchBrailleDisplayOutputTableIdentifier];
        }
        voiceOverTouchBrailleDisplayInputTableIdentifier = ;
      }

      v21 = voiceOverTouchBrailleDisplayInputTableIdentifier;

      if (v21 && ([v16 isEqualToString:v21] & 1) != 0)
      {
        v22 = 3;
      }

      else
      {
        v22 = 0;
      }

      [cellCopy setAccessoryType:v22];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v22.receiver = self;
  v22.super_class = VoiceOverBrailleInputOutputController;
  pathCopy = path;
  [(VoiceOverBrailleInputOutputController *)&v22 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(VoiceOverBrailleInputOutputController *)self specifierForIndexPath:pathCopy, v22.receiver, v22.super_class];

  v8 = [v7 propertyForKey:@"AXSVoiceOverBrailleGesturesSingleHandStyle"];
  v9 = v8;
  if (!v8)
  {
    v12 = [v7 propertyForKey:@"AXSVoiceOverTouchBrailleGesturesSoundOption"];
    v13 = v12;
    if (v12)
    {
      integerValue = [v12 integerValue];
      v15 = +[AXSettings sharedInstance];
      [v15 setVoiceOverTouchBrailleGesturesSoundOption:integerValue];

      [(VoiceOverBrailleInputOutputController *)self reload];
LABEL_11:

      goto LABEL_12;
    }

    v16 = [v7 propertyForKey:@"TableIdentifier"];
    if (![(VoiceOverBrailleInputOutputController *)self _isDisplayInput])
    {
      _isGesturesInput = [(VoiceOverBrailleInputOutputController *)self _isGesturesInput];
      v19 = +[AXSettings sharedInstance];
      v17 = v19;
      if (_isGesturesInput)
      {
        [v19 setVoiceOverTouchBrailleGesturesInputTableIdentifier:v16];
        goto LABEL_9;
      }

      [v19 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:v16];

      v20 = +[AXSettings sharedInstance];
      voiceOverTouchBrailleDisplaySyncInputOutputTables = [v20 voiceOverTouchBrailleDisplaySyncInputOutputTables];

      if (!voiceOverTouchBrailleDisplaySyncInputOutputTables)
      {
        goto LABEL_10;
      }
    }

    v17 = +[AXSettings sharedInstance];
    [v17 setVoiceOverTouchBrailleDisplayInputTableIdentifier:v16];
LABEL_9:

LABEL_10:
    [(VoiceOverBrailleInputOutputController *)self reload];

    goto LABEL_11;
  }

  integerValue2 = [v8 integerValue];
  v11 = +[AXSettings sharedInstance];
  [v11 setVoiceOverTouchBrailleGesturesSingleHandStyle:integerValue2];

  [(VoiceOverBrailleInputOutputController *)self reload];
LABEL_12:
}

- (BRLTTableEnumerator)tableEnumerator
{
  tableEnumerator = self->_tableEnumerator;
  if (!tableEnumerator)
  {
    v4 = +[BRLTTableEnumerator tableEnumeratorWithSystemBundlePath];
    v5 = self->_tableEnumerator;
    self->_tableEnumerator = v4;

    tableEnumerator = self->_tableEnumerator;
  }

  return tableEnumerator;
}

@end