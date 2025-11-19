@interface VoiceOverActivityController
- (id)_activityName:(id)a3;
- (id)_appContexts:(id)a3;
- (id)_contexts:(id)a3;
- (id)_navigationStyle:(id)a3;
- (id)_newActivityName;
- (id)_punctuationName:(id)a3;
- (id)_speechVoice:(id)a3;
- (id)_stringOutputForFeedback:(id)a3 value:(id)a4;
- (id)_stringOutputForOnOffSwitch:(id)a3 value:(id)a4;
- (id)_stringValueForNumber:(id)a3;
- (id)_typingStyle:(id)a3;
- (id)activity;
- (id)audioDucking:(id)a3;
- (id)brailleAlerts:(id)a3;
- (id)brailleAutoAdvanceDuration:(id)a3;
- (id)brailleFormatting:(id)a3;
- (id)brailleInputStatus:(id)a3;
- (id)brailleOutputStatus:(id)a3;
- (id)brailleStartAutoActivateOnTextFields:(id)a3;
- (id)containerFeedback:(id)a3;
- (id)duckingAmount:(id)a3;
- (id)hintsEnabled:(id)a3;
- (id)imageDescriptions:(id)a3;
- (id)modifierKeys:(id)a3;
- (id)muteSound:(id)a3;
- (id)muteSpeech:(id)a3;
- (id)numberFeedbackString:(id)a3;
- (id)rowColumnNumbers:(id)a3;
- (id)speakEmojis:(id)a3;
- (id)specifiers;
- (id)speechRate:(id)a3;
- (id)statusCellGeneral:(id)a3;
- (id)statusCellText:(id)a3;
- (id)tableHeaders:(id)a3;
- (id)volume:(id)a3;
- (void)_save;
- (void)_setActivityName:(id)a3 specifier:(id)a4;
- (void)dealloc;
- (void)editingChanged:(id)a3;
- (void)observeChanges;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setActivity:(id)a3;
- (void)setAudioDucking:(id)a3 specifier:(id)a4;
- (void)setBrailleAlerts:(id)a3 specifier:(id)a4;
- (void)setBrailleFormatting:(id)a3 specifier:(id)a4;
- (void)setBrailleStartAutoActivateOnTextFields:(id)a3 specifier:(id)a4;
- (void)setDuckingAmount:(id)a3 specifier:(id)a4;
- (void)setHintsEnabled:(id)a3 specifier:(id)a4;
- (void)setImageDescriptions:(id)a3 specifier:(id)a4;
- (void)setMuteSound:(id)a3 specifier:(id)a4;
- (void)setMuteSpeech:(id)a3 specifier:(id)a4;
- (void)setNumberFeedback:(id)a3 specifier:(id)a4;
- (void)setRowColumNumbers:(id)a3 specifier:(id)a4;
- (void)setSpeakEmojis:(id)a3 specifier:(id)a4;
- (void)setSpeechRate:(id)a3 specifier:(id)a4;
- (void)setStatusCellGeneral:(id)a3 specifier:(id)a4;
- (void)setStatusCellText:(id)a3 specifier:(id)a4;
- (void)setTableHeaders:(id)a3 specifier:(id)a4;
- (void)setVolume:(id)a3 specifier:(id)a4;
- (void)stopObserving;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)useDefaultDuckingAmount:(id)a3;
- (void)useDefaultSpeechRate:(id)a3;
- (void)useDefaultVolume:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation VoiceOverActivityController

- (id)activity
{
  activity = self->_activity;
  if (!activity)
  {
    v4 = [(VoiceOverActivityController *)self specifier];
    v5 = [v4 propertyForKey:@"activity"];
    v6 = self->_activity;
    self->_activity = v5;

    activity = self->_activity;
    if (!activity)
    {
      v7 = objc_opt_new();
      v8 = self->_activity;
      self->_activity = v7;

      v9 = [(VoiceOverActivityController *)self _newActivityName];
      [(AXVoiceOverActivity *)self->_activity setName:v9];

      [(VoiceOverActivityController *)self _save];
      activity = self->_activity;
    }
  }

  v10 = activity;

  return v10;
}

- (id)_newActivityName
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverActivities];

  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) name];
        v10 = [NSScanner localizedScannerWithString:v9];

        v11 = +[NSCharacterSet decimalDigitCharacterSet];
        v12 = [v11 invertedSet];
        [v10 setCharactersToBeSkipped:v12];

        v17 = 0;
        [v10 scanInt:&v17];
        if (v6 <= v17)
        {
          v6 = v17;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
    v13 = v6 + 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = settingsLocString(@"VO_ACTIVITY_NEW_NAME_TEMPLATE", @"VoiceOverSettings");
  v15 = [NSString localizedStringWithFormat:v14, v13];

  return v15;
}

- (void)_save
{
  v2 = [(VoiceOverActivityController *)self activity];
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverActivities];
  v5 = [v4 mutableCopy];

  v6 = [v5 indexOfObject:v2];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 addObject:v2];
  }

  else
  {
    [v5 replaceObjectAtIndex:v6 withObject:v2];
  }

  v7 = VOTLogActivities();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v2;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Saving activity: %@", &v11, 0xCu);
  }

  v8 = +[AXSettings sharedInstance];
  [v8 setVoiceOverActivities:v5];

  v9 = AXAssetAndDataClient();
  v10 = +[AXAccessQueue mainAccessQueue];
  [v9 sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:2 targetAccessQueue:v10 completion:0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    v179 = v3;
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = settingsLocString(@"PUNCTUATION_GROUP_NAME_LABEL", @"VoiceOverSettings");
    v9 = [PSTextFieldSpecifier preferenceSpecifierNamed:v8 target:self set:"_setActivityName:specifier:" get:"_activityName:" detail:0 cell:8 edit:0];

    v10 = PSIDKey;
    [v9 setObject:@"GroupName" forKeyedSubscript:PSIDKey];
    [v9 setKeyboardType:0 autoCaps:2 autoCorrection:1];
    v178 = v9;
    [v7 addObject:v9];
    v11 = +[PSSpecifier emptyGroupSpecifier];
    v12 = settingsLocString(@"ACTIVITY_SPEECH_GROUP_LABEL", @"VoiceOverSettings");
    [v11 setName:v12];

    v180 = v11;
    [v7 addObject:v11];
    v13 = settingsLocString(@"ACTIVITIES_SPEECH_VOICE", @"VoiceOverSettings");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"_speechVoice:" detail:0 cell:2 edit:0];

    v15 = [(VoiceOverActivityController *)self activity];
    [v14 setProperty:v15 forKey:@"activity"];

    [v14 setProperty:@"ACTIVITIES_SPEECH_VOICE" forKey:v10];
    v177 = v14;
    [v7 addObject:v14];
    v16 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setSpeechRate:specifier:" get:"speechRate:" detail:0 cell:5 edit:0];
    v17 = AXTortoiseImage();
    v18 = self;
    v19 = PSSliderLeftImageKey;
    [v16 setProperty:v17 forKey:PSSliderLeftImageKey];

    v20 = AXHareImage();
    v21 = PSSliderRightImageKey;
    [v16 setProperty:v20 forKey:PSSliderRightImageKey];

    v22 = PSControlMaximumKey;
    [v16 setProperty:&off_27D0A0 forKey:PSControlMaximumKey];
    v23 = PSControlMinimumKey;
    [v16 setProperty:&off_27D0B0 forKey:PSControlMinimumKey];
    v24 = AXParameterizedLocalizedString();
    [v16 setAccessibilityLabel:v24];

    v176 = v16;
    [v7 addObject:v16];
    v25 = settingsLocString(@"USE_DEFAULT_SPEECH_RATE", @"VoiceOverSettings");
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:v18 set:0 get:0 detail:0 cell:13 edit:0];

    [v26 setButtonAction:"useDefaultSpeechRate:"];
    [v26 setProperty:@"useDefaultSpeechRate" forKey:v10];
    v175 = v26;
    [v7 addObject:v26];
    v27 = [PSSpecifier preferenceSpecifierNamed:0 target:v18 set:"setVolume:specifier:" get:"volume:" detail:0 cell:5 edit:0];
    v28 = AXSpeakerMuteImage();
    v187 = v19;
    v29 = v19;
    v30 = v18;
    [v27 setProperty:v28 forKey:v29];

    v31 = AXSpeakerMaxImage();
    [v27 setProperty:v31 forKey:v21];

    v183 = v22;
    [v27 setProperty:&off_27D0A0 forKey:v22];
    [v27 setProperty:&off_27D0B0 forKey:v23];
    v32 = PSIconImageShouldFlipForRightToLeftKey;
    [v27 setProperty:&__kCFBooleanTrue forKey:PSIconImageShouldFlipForRightToLeftKey];
    v33 = settingsLocString(@"VO_VOLUME_SLIDER", @"VoiceOverSettings");
    [v27 setAccessibilityLabel:v33];

    v174 = v27;
    [v7 addObject:v27];
    v34 = settingsLocString(@"USE_DEFAULT_VOLUME", @"VoiceOverSettings");
    v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:v18 set:0 get:0 detail:0 cell:13 edit:0];

    v189 = v10;
    [v35 setProperty:@"useDefaultVolume" forKey:v10];
    [v35 setButtonAction:"useDefaultVolume:"];
    v36 = v7;
    v173 = v35;
    [v7 addObject:v35];
    objc_initWeak(location, v18);
    v37 = settingsLocString(@"MUTE_SPEECH", @"VoiceOverSettings");
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:v18 set:"setMuteSpeech:specifier:" get:"muteSpeech:" detail:objc_opt_class() cell:2 edit:0];

    v272[0] = _NSConcreteStackBlock;
    v272[1] = 3221225472;
    v272[2] = __41__VoiceOverActivityController_specifiers__block_invoke;
    v272[3] = &unk_255E10;
    objc_copyWeak(&v273, location);
    v39 = objc_retainBlock(v272);
    [v38 setProperty:v39 forKey:@"setValueSelectedBlock"];

    v270[0] = _NSConcreteStackBlock;
    v270[1] = 3221225472;
    v270[2] = __41__VoiceOverActivityController_specifiers__block_invoke_2;
    v270[3] = &unk_255E38;
    objc_copyWeak(&v271, location);
    v40 = objc_retainBlock(v270);
    [v38 setProperty:v40 forKey:@"getValueSelectedBlock"];

    v172 = v38;
    [v36 addObject:v38];
    v41 = settingsLocString(@"MUTE_SOUND", @"VoiceOverSettings");
    v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:v18 set:"setMuteSound:specifier:" get:"muteSound:" detail:objc_opt_class() cell:2 edit:0];

    v268[0] = _NSConcreteStackBlock;
    v268[1] = 3221225472;
    v268[2] = __41__VoiceOverActivityController_specifiers__block_invoke_3;
    v268[3] = &unk_255E10;
    objc_copyWeak(&v269, location);
    v43 = objc_retainBlock(v268);
    [v42 setProperty:v43 forKey:@"setValueSelectedBlock"];

    v266[0] = _NSConcreteStackBlock;
    v266[1] = 3221225472;
    v266[2] = __41__VoiceOverActivityController_specifiers__block_invoke_4;
    v266[3] = &unk_255E60;
    objc_copyWeak(&v267, location);
    v44 = objc_retainBlock(v266);
    [v42 setProperty:v44 forKey:@"getValueSelectedBlock"];

    v171 = v42;
    [v36 addObject:v42];
    v45 = settingsLocString(@"AUDIO_DUCKING", @"VoiceOverSettings");
    v46 = v36;
    v47 = [PSSpecifier preferenceSpecifierNamed:v45 target:v30 set:0 get:"audioDucking:" detail:objc_opt_class() cell:2 edit:0];

    v48 = [(VoiceOverActivityController *)v30 activity];
    [v47 setProperty:v48 forKey:@"activity"];

    [v36 addObject:v47];
    v170 = v47;
    v49 = [PSSpecifier preferenceSpecifierNamed:0 target:v30 set:"setDuckingAmount:specifier:" get:"duckingAmount:" detail:0 cell:5 edit:0];
    v50 = AXSpeakerMuteImage();
    [v49 setProperty:v50 forKey:v187];

    v51 = AXSpeakerMaxImage();
    [v49 setProperty:v51 forKey:v21];

    [v49 setProperty:&off_27D0A0 forKey:v183];
    [v49 setProperty:&off_27D0B0 forKey:v23];
    [v49 setProperty:&__kCFBooleanTrue forKey:v32];
    v52 = settingsLocString(@"DUCKING_AMOUNT", @"VoiceOverSettings");
    [v49 setAccessibilityLabel:v52];

    [v46 addObject:v49];
    v184 = v49;
    v53 = settingsLocString(@"USE_DEFAULT_DUCKING", @"VoiceOverSettings");
    v54 = [PSSpecifier preferenceSpecifierNamed:v53 target:v30 set:0 get:0 detail:0 cell:13 edit:0];

    [v54 setProperty:@"useDefaultDuckingAmount" forKey:v189];
    [v54 setButtonAction:"useDefaultDuckingAmount:"];
    [v46 addObject:v54];
    v55 = +[PSSpecifier emptyGroupSpecifier];

    v56 = settingsLocString(@"ACTIVITY_VERBOSITY_GROUP_LABEL", @"VoiceOverSettings");
    [v55 setName:v56];

    [v46 addObject:v55];
    v182 = v54;
    v57 = settingsLocString(@"ACTIVITIES_PUNCTUATION_GROUP", @"VoiceOverSettings");
    v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:v30 set:0 get:"_punctuationName:" detail:objc_opt_class() cell:2 edit:0];

    v59 = [(VoiceOverActivityController *)v30 activity];
    [v58 setProperty:v59 forKey:@"activity"];

    [v46 addObject:v58];
    v181 = v58;
    v60 = settingsLocString(@"EMOJIS", @"VoiceOverSettings");
    v61 = [PSSpecifier preferenceSpecifierNamed:v60 target:v30 set:"setSpeakEmojis:specifier:" get:"speakEmojis:" detail:objc_opt_class() cell:2 edit:0];

    v264[0] = _NSConcreteStackBlock;
    v264[1] = 3221225472;
    v264[2] = __41__VoiceOverActivityController_specifiers__block_invoke_5;
    v264[3] = &unk_255E10;
    objc_copyWeak(&v265, location);
    v62 = objc_retainBlock(v264);
    [v61 setProperty:v62 forKey:@"setValueSelectedBlock"];

    v262[0] = _NSConcreteStackBlock;
    v262[1] = 3221225472;
    v262[2] = __41__VoiceOverActivityController_specifiers__block_invoke_6;
    v262[3] = &unk_255E38;
    objc_copyWeak(&v263, location);
    v63 = objc_retainBlock(v262);
    [v61 setProperty:v63 forKey:@"getValueSelectedBlock"];

    [v46 addObject:v61];
    v64 = settingsLocString(@"CONTAINER_FEEDBACK", @"VoiceOverSettings");
    v65 = [PSSpecifier preferenceSpecifierNamed:v64 target:v30 set:0 get:"containerFeedback:" detail:objc_opt_class() cell:2 edit:0];

    v260[0] = _NSConcreteStackBlock;
    v260[1] = 3221225472;
    v260[2] = __41__VoiceOverActivityController_specifiers__block_invoke_7;
    v260[3] = &unk_255E88;
    objc_copyWeak(&v261, location);
    v66 = objc_retainBlock(v260);
    [v65 setProperty:v66 forKey:@"setValueSelectedBlock"];

    [v65 setProperty:&__kCFBooleanTrue forKey:@"showDefaultOption"];
    v258[0] = _NSConcreteStackBlock;
    v258[1] = 3221225472;
    v258[2] = __41__VoiceOverActivityController_specifiers__block_invoke_8;
    v258[3] = &unk_255EB0;
    objc_copyWeak(&v259, location);
    v67 = objc_retainBlock(v258);
    [v65 setProperty:v67 forKey:@"getValueSelectedBlock"];

    [v46 addObject:v65];
    v68 = settingsLocString(@"SPEAK_TABLE_HEADERS", @"VoiceOverSettings");
    v69 = [PSSpecifier preferenceSpecifierNamed:v68 target:v30 set:"setTableHeaders:specifier:" get:"tableHeaders:" detail:objc_opt_class() cell:2 edit:0];

    v256[0] = _NSConcreteStackBlock;
    v256[1] = 3221225472;
    v256[2] = __41__VoiceOverActivityController_specifiers__block_invoke_9;
    v256[3] = &unk_255E10;
    objc_copyWeak(&v257, location);
    v70 = objc_retainBlock(v256);
    [v69 setProperty:v70 forKey:@"setValueSelectedBlock"];

    v254[0] = _NSConcreteStackBlock;
    v254[1] = 3221225472;
    v254[2] = __41__VoiceOverActivityController_specifiers__block_invoke_10;
    v254[3] = &unk_255E38;
    objc_copyWeak(&v255, location);
    v71 = objc_retainBlock(v254);
    [v69 setProperty:v71 forKey:@"getValueSelectedBlock"];

    v169 = v69;
    [v46 addObject:v69];
    v72 = settingsLocString(@"SPEAK_TABLE_ROW_COLUMN", @"VoiceOverSettings");
    v73 = [PSSpecifier preferenceSpecifierNamed:v72 target:v30 set:"setRowColumNumbers:specifier:" get:"rowColumnNumbers:" detail:objc_opt_class() cell:2 edit:0];

    v252[0] = _NSConcreteStackBlock;
    v252[1] = 3221225472;
    v252[2] = __41__VoiceOverActivityController_specifiers__block_invoke_11;
    v252[3] = &unk_255E10;
    objc_copyWeak(&v253, location);
    v74 = objc_retainBlock(v252);
    [v73 setProperty:v74 forKey:@"setValueSelectedBlock"];

    v250[0] = _NSConcreteStackBlock;
    v250[1] = 3221225472;
    v250[2] = __41__VoiceOverActivityController_specifiers__block_invoke_12;
    v250[3] = &unk_255E38;
    objc_copyWeak(&v251, location);
    v75 = objc_retainBlock(v250);
    [v73 setProperty:v75 forKey:@"getValueSelectedBlock"];

    v168 = v73;
    [v46 addObject:v73];
    v76 = +[NSProcessInfo processInfo];
    if ([v76 physicalMemory] >= 0x77359400)
    {
      v77 = AXRuntimeCheck_HasANE();

      if (!v77)
      {
LABEL_6:
        v81 = settingsLocString(@"HINTS_TITLE", @"VoiceOverSettings");
        v82 = [PSSpecifier preferenceSpecifierNamed:v81 target:v30 set:"setHintsEnabled:specifier:" get:"hintsEnabled:" detail:objc_opt_class() cell:2 edit:0];

        v244[0] = _NSConcreteStackBlock;
        v244[1] = 3221225472;
        v244[2] = __41__VoiceOverActivityController_specifiers__block_invoke_15;
        v244[3] = &unk_255E10;
        objc_copyWeak(&v245, location);
        v83 = objc_retainBlock(v244);
        [v82 setProperty:v83 forKey:@"setValueSelectedBlock"];

        v242[0] = _NSConcreteStackBlock;
        v242[1] = 3221225472;
        v242[2] = __41__VoiceOverActivityController_specifiers__block_invoke_16;
        v242[3] = &unk_255E38;
        objc_copyWeak(&v243, location);
        v84 = objc_retainBlock(v242);
        [v82 setProperty:v84 forKey:@"getValueSelectedBlock"];

        v167 = v82;
        [v46 addObject:v82];
        v85 = settingsLocString(@"NUMBER_FEEDBACK", @"VoiceOverSettings");
        v86 = [PSSpecifier preferenceSpecifierNamed:v85 target:v30 set:0 get:"numberFeedbackString:" detail:objc_opt_class() cell:2 edit:0];

        v240[0] = _NSConcreteStackBlock;
        v240[1] = 3221225472;
        v240[2] = __41__VoiceOverActivityController_specifiers__block_invoke_17;
        v240[3] = &unk_255E10;
        objc_copyWeak(&v241, location);
        v87 = objc_retainBlock(v240);
        [v86 setProperty:v87 forKey:@"setValueSelectedBlock"];

        v238[0] = _NSConcreteStackBlock;
        v238[1] = 3221225472;
        v238[2] = __41__VoiceOverActivityController_specifiers__block_invoke_18;
        v238[3] = &unk_255E60;
        objc_copyWeak(&v239, location);
        v88 = objc_retainBlock(v238);
        [v86 setProperty:v88 forKey:@"getValueSelectedBlock"];
        v165 = v65;
        v166 = v61;

        [v86 setProperty:&__kCFBooleanTrue forKey:@"showDefault"];
        [v46 addObject:v86];
        v89 = +[PSSpecifier emptyGroupSpecifier];

        v90 = settingsLocString(@"ACTIVITY_TYPING_GROUP_LABEL", @"VoiceOverSettings");
        [v89 setName:v90];

        [v46 addObject:v89];
        v164 = v86;
        v91 = settingsLocString(@"TYPING_MODE_TITLE", @"VoiceOverSettings");
        v92 = [PSSpecifier preferenceSpecifierNamed:v91 target:v30 set:0 get:"_typingStyle:" detail:objc_opt_class() cell:2 edit:0];

        v93 = PSValidTitlesKey;
        [v92 setProperty:&off_27CA10 forKey:PSValidTitlesKey];
        v94 = PSStringsKey;
        [v92 setProperty:@"VoiceOverSettings" forKey:PSStringsKey];
        v95 = PSValidValuesKey;
        [v92 setProperty:&off_27CA28 forKey:PSValidValuesKey];
        v236[0] = _NSConcreteStackBlock;
        v236[1] = 3221225472;
        v236[2] = __41__VoiceOverActivityController_specifiers__block_invoke_496;
        v236[3] = &unk_255E60;
        objc_copyWeak(&v237, location);
        v96 = objc_retainBlock(v236);
        [v92 setProperty:v96 forKey:@"blockGetter"];

        objc_initWeak(&from, v92);
        v232[0] = _NSConcreteStackBlock;
        v232[1] = 3221225472;
        v232[2] = __41__VoiceOverActivityController_specifiers__block_invoke_2_500;
        v232[3] = &unk_255ED8;
        objc_copyWeak(&v233, location);
        objc_copyWeak(&v234, &from);
        v97 = objc_retainBlock(v232);
        [v92 setProperty:v97 forKey:@"blockSetter"];

        v188 = v92;
        [v92 setProperty:@"VoiceOverSettings" forKey:v94];
        [v92 setProperty:@"TYPING_MODE_TITLE" forKey:v189];
        v98 = [(VoiceOverActivityController *)v30 activity];
        [v92 setProperty:v98 forKey:@"activity"];

        [v46 addObject:v92];
        v99 = +[PSSpecifier emptyGroupSpecifier];

        v100 = settingsLocString(@"ACTIVITY_NAVIGATION_GROUP_LABEL", @"VoiceOverSettings");
        [v99 setName:v100];

        [v46 addObject:v99];
        v101 = settingsLocString(@"NavigationStyle", @"VoiceOverSettings");
        v102 = [PSSpecifier preferenceSpecifierNamed:v101 target:v30 set:0 get:"_navigationStyle:" detail:objc_opt_class() cell:2 edit:0];

        [v102 setProperty:&off_27CA40 forKey:v93];
        [v102 setProperty:@"VoiceOverSettings" forKey:v94];
        [v102 setProperty:&off_27CA58 forKey:v95];
        v230[0] = _NSConcreteStackBlock;
        v230[1] = 3221225472;
        v230[2] = __41__VoiceOverActivityController_specifiers__block_invoke_531;
        v230[3] = &unk_255E60;
        objc_copyWeak(&v231, location);
        v103 = objc_retainBlock(v230);
        [v102 setProperty:v103 forKey:@"blockGetter"];

        objc_initWeak(&v229, v102);
        v226[0] = _NSConcreteStackBlock;
        v226[1] = 3221225472;
        v226[2] = __41__VoiceOverActivityController_specifiers__block_invoke_2_532;
        v226[3] = &unk_255ED8;
        objc_copyWeak(&v227, location);
        objc_copyWeak(&v228, &v229);
        v104 = objc_retainBlock(v226);
        [v102 setProperty:v104 forKey:@"blockSetter"];

        [v102 setProperty:@"VoiceOverSettings" forKey:v94];
        [v102 setProperty:@"NAVIGATION_STYLE_TITLE" forKey:v189];
        v105 = [(VoiceOverActivityController *)v30 activity];
        [v102 setProperty:v105 forKey:@"activity"];

        [v46 addObject:v102];
        v185 = +[PSSpecifier emptyGroupSpecifier];

        v106 = settingsLocString(@"ACTIVITY_BRAILLE_LABEL", @"VoiceOverSettings");
        [v185 setName:v106];

        [v46 addObject:v185];
        v107 = settingsLocString(@"ACTIVITY_STATUS_CELL_GENERAL", @"VoiceOverSettings");
        v108 = [PSSpecifier preferenceSpecifierNamed:v107 target:v30 set:"setStatusCellGeneral:specifier:" get:"statusCellGeneral:" detail:objc_opt_class() cell:2 edit:0];

        v224[0] = _NSConcreteStackBlock;
        v224[1] = 3221225472;
        v224[2] = __41__VoiceOverActivityController_specifiers__block_invoke_3_546;
        v224[3] = &unk_255E10;
        objc_copyWeak(&v225, location);
        v109 = objc_retainBlock(v224);
        [v108 setProperty:v109 forKey:@"setValueSelectedBlock"];

        v222[0] = _NSConcreteStackBlock;
        v222[1] = 3221225472;
        v222[2] = __41__VoiceOverActivityController_specifiers__block_invoke_4_547;
        v222[3] = &unk_255E38;
        objc_copyWeak(&v223, location);
        v110 = objc_retainBlock(v222);
        [v108 setProperty:v110 forKey:@"getValueSelectedBlock"];

        [v46 addObject:v108];
        v111 = settingsLocString(@"ACTIVITY_STATUS_CELL_TEXT", @"VoiceOverSettings");
        v112 = [PSSpecifier preferenceSpecifierNamed:v111 target:v30 set:"setStatusCellText:specifier:" get:"statusCellText:" detail:objc_opt_class() cell:2 edit:0];

        v220[0] = _NSConcreteStackBlock;
        v220[1] = 3221225472;
        v220[2] = __41__VoiceOverActivityController_specifiers__block_invoke_5_555;
        v220[3] = &unk_255E10;
        objc_copyWeak(&v221, location);
        v113 = objc_retainBlock(v220);
        [v112 setProperty:v113 forKey:@"setValueSelectedBlock"];

        v218[0] = _NSConcreteStackBlock;
        v218[1] = 3221225472;
        v218[2] = __41__VoiceOverActivityController_specifiers__block_invoke_6_556;
        v218[3] = &unk_255E38;
        objc_copyWeak(&v219, location);
        v114 = objc_retainBlock(v218);
        [v112 setProperty:v114 forKey:@"getValueSelectedBlock"];

        [v46 addObject:v112];
        v163 = v112;
        v115 = settingsLocString(@"ACTIVITY_BRAILLE_OUTPUT", @"VoiceOverSettings");
        v116 = [PSSpecifier preferenceSpecifierNamed:v115 target:v30 set:0 get:"brailleOutputStatus:" detail:objc_opt_class() cell:2 edit:0];

        [v116 setProperty:@"brailleOutputStatus" forKey:v189];
        v162 = v108;
        v216[0] = _NSConcreteStackBlock;
        v216[1] = 3221225472;
        v216[2] = __41__VoiceOverActivityController_specifiers__block_invoke_7_566;
        v216[3] = &unk_255F00;
        objc_copyWeak(&v217, location);
        v117 = objc_retainBlock(v216);
        [v116 setProperty:v117 forKey:@"AXVOBrailleGetterBlockKey"];

        v214[0] = _NSConcreteStackBlock;
        v214[1] = 3221225472;
        v214[2] = __41__VoiceOverActivityController_specifiers__block_invoke_8_571;
        v214[3] = &unk_255F28;
        objc_copyWeak(&v215, location);
        v118 = objc_retainBlock(v214);
        [v116 setProperty:v118 forKey:@"AXVOBrailleSelectionBlock"];

        v212[0] = _NSConcreteStackBlock;
        v212[1] = 3221225472;
        v212[2] = __41__VoiceOverActivityController_specifiers__block_invoke_9_576;
        v212[3] = &unk_255F00;
        objc_copyWeak(&v213, location);
        v119 = objc_retainBlock(v212);
        [v116 setProperty:v119 forKey:@"AXVOBrailleTableGetterBlockKey"];
        v161 = v102;

        [v116 setProperty:@"VoiceOverBrailleActivityModeID" forKey:v189];
        [v46 addObject:v116];
        v160 = v116;
        v120 = settingsLocString(@"ACTIVITY_BRAILLE_INPUT", @"VoiceOverSettings");
        v121 = [PSSpecifier preferenceSpecifierNamed:v120 target:v30 set:0 get:"brailleInputStatus:" detail:objc_opt_class() cell:2 edit:0];

        [v121 setProperty:@"brailleInputStatus" forKey:v189];
        v210[0] = _NSConcreteStackBlock;
        v210[1] = 3221225472;
        v210[2] = __41__VoiceOverActivityController_specifiers__block_invoke_10_588;
        v210[3] = &unk_255F00;
        objc_copyWeak(&v211, location);
        v122 = objc_retainBlock(v210);
        [v121 setProperty:v122 forKey:@"AXVOBrailleGetterBlockKey"];

        v208[0] = _NSConcreteStackBlock;
        v208[1] = 3221225472;
        v208[2] = __41__VoiceOverActivityController_specifiers__block_invoke_11_589;
        v208[3] = &unk_255F00;
        objc_copyWeak(&v209, location);
        v123 = objc_retainBlock(v208);
        [v121 setProperty:v123 forKey:@"AXVOBrailleTableGetterBlockKey"];

        [v121 setProperty:@"VoiceOverBrailleActivityModeID" forKey:v189];
        v206[0] = _NSConcreteStackBlock;
        v206[1] = 3221225472;
        v206[2] = __41__VoiceOverActivityController_specifiers__block_invoke_12_590;
        v206[3] = &unk_255F28;
        objc_copyWeak(&v207, location);
        v124 = objc_retainBlock(v206);
        [v121 setProperty:v124 forKey:@"AXVOBrailleSelectionBlock"];

        [v46 addObject:v121];
        v125 = settingsLocString(@"ACTIVITY_BRAILLE_AUTO_ADVANCE", @"VoiceOverSettings");
        v126 = [PSSpecifier preferenceSpecifierNamed:v125 target:v30 set:0 get:"brailleAutoAdvanceDuration:" detail:objc_opt_class() cell:2 edit:0];

        v127 = [(VoiceOverActivityController *)v30 activity];
        [v126 setProperty:v127 forKey:@"activity"];

        [v46 addObject:v126];
        v128 = settingsLocString(@"ACTIVITY_BRAILLE_ALERTS", @"VoiceOverSettings");
        v129 = [PSSpecifier preferenceSpecifierNamed:v128 target:v30 set:"setBrailleAlerts:specifier:" get:"brailleAlerts:" detail:objc_opt_class() cell:2 edit:0];

        v204[0] = _NSConcreteStackBlock;
        v204[1] = 3221225472;
        v204[2] = __41__VoiceOverActivityController_specifiers__block_invoke_13_604;
        v204[3] = &unk_255E10;
        objc_copyWeak(&v205, location);
        v130 = objc_retainBlock(v204);
        [v129 setProperty:v130 forKey:@"setValueSelectedBlock"];

        v202[0] = _NSConcreteStackBlock;
        v202[1] = 3221225472;
        v202[2] = __41__VoiceOverActivityController_specifiers__block_invoke_14_605;
        v202[3] = &unk_255E38;
        objc_copyWeak(&v203, location);
        v131 = objc_retainBlock(v202);
        [v129 setProperty:v131 forKey:@"getValueSelectedBlock"];
        v159 = v126;

        [v46 addObject:v129];
        v158 = v129;
        v132 = settingsLocString(@"ACTIVITY_BRAILLE_FORMATTING", @"VoiceOverSettings");
        v133 = [PSSpecifier preferenceSpecifierNamed:v132 target:v30 set:"setBrailleFormatting:specifier:" get:"brailleFormatting:" detail:objc_opt_class() cell:2 edit:0];

        v200[0] = _NSConcreteStackBlock;
        v200[1] = 3221225472;
        v200[2] = __41__VoiceOverActivityController_specifiers__block_invoke_15_613;
        v200[3] = &unk_255E10;
        objc_copyWeak(&v201, location);
        v134 = objc_retainBlock(v200);
        [v133 setProperty:v134 forKey:@"setValueSelectedBlock"];

        v198[0] = _NSConcreteStackBlock;
        v198[1] = 3221225472;
        v198[2] = __41__VoiceOverActivityController_specifiers__block_invoke_16_614;
        v198[3] = &unk_255E38;
        objc_copyWeak(&v199, location);
        v135 = objc_retainBlock(v198);
        [v133 setProperty:v135 forKey:@"getValueSelectedBlock"];

        [v46 addObject:v133];
        v136 = settingsLocString(@"ACTIVITY_BRAILLE_AUTOSTART", @"VoiceOverSettings");
        v137 = [PSSpecifier preferenceSpecifierNamed:v136 target:v30 set:"setBrailleStartAutoActivateOnTextFields:specifier:" get:"brailleStartAutoActivateOnTextFields:" detail:objc_opt_class() cell:2 edit:0];

        v196[0] = _NSConcreteStackBlock;
        v196[1] = 3221225472;
        v196[2] = __41__VoiceOverActivityController_specifiers__block_invoke_17_622;
        v196[3] = &unk_255E10;
        objc_copyWeak(&v197, location);
        v138 = objc_retainBlock(v196);
        [v137 setProperty:v138 forKey:@"setValueSelectedBlock"];

        v194[0] = _NSConcreteStackBlock;
        v194[1] = 3221225472;
        v194[2] = __41__VoiceOverActivityController_specifiers__block_invoke_18_623;
        v194[3] = &unk_255E38;
        objc_copyWeak(&v195, location);
        v139 = objc_retainBlock(v194);
        [v137 setProperty:v139 forKey:@"getValueSelectedBlock"];

        [v46 addObject:v137];
        v140 = +[PSSpecifier emptyGroupSpecifier];

        v141 = settingsLocString(@"ACTIVITY_CONTEXT_SWITCH", @"VoiceOverSettings");
        [v140 setName:v141];

        v142 = settingsLocString(@"ACTIVITY_CONTEXT_SWITCH_FOOTER", @"VoiceOverSettings");
        [v140 setProperty:v142 forKey:PSFooterTextGroupKey];

        [v46 addObject:v140];
        v186 = v121;
        v143 = settingsLocString(@"ACTIVITIES_CONTEXT_APP", @"VoiceOverSettings");
        v144 = [PSSpecifier preferenceSpecifierNamed:v143 target:v30 set:0 get:"_appContexts:" detail:objc_opt_class() cell:2 edit:0];

        v145 = [(VoiceOverActivityController *)v30 activity];
        [v144 setProperty:v145 forKey:@"activity"];

        [v144 setProperty:@"apps" forKey:v189];
        [v46 addObject:v144];
        v146 = settingsLocString(@"ACTIVITIES_CONTEXTS", @"VoiceOverSettings");
        v147 = [PSSpecifier preferenceSpecifierNamed:v146 target:v30 set:0 get:"_contexts:" detail:objc_opt_class() cell:2 edit:0];

        v148 = [(VoiceOverActivityController *)v30 activity];
        [v147 setProperty:v148 forKey:@"activity"];

        [v147 setProperty:@"contexts" forKey:v189];
        [v46 addObject:v147];
        v149 = +[PSSpecifier emptyGroupSpecifier];

        v150 = settingsLocString(@"ACTIVITIES_INTERACTION", @"VoiceOverSettings");
        [v149 setName:v150];

        [v46 addObject:v149];
        v151 = settingsLocString(@"MODIFIER_KEYS", @"VoiceOverSettings");
        v152 = [PSSpecifier preferenceSpecifierNamed:v151 target:v30 set:0 get:"modifierKeys:" detail:objc_opt_class() cell:2 edit:0];

        [v152 setProperty:@"modifierKeys" forKey:v189];
        v192[0] = _NSConcreteStackBlock;
        v192[1] = 3221225472;
        v192[2] = __41__VoiceOverActivityController_specifiers__block_invoke_19;
        v192[3] = &unk_255E10;
        objc_copyWeak(&v193, location);
        v153 = objc_retainBlock(v192);
        [v152 setProperty:v153 forKey:@"AXVOModifierKeySelectionBlock"];

        v190[0] = _NSConcreteStackBlock;
        v190[1] = 3221225472;
        v190[2] = __41__VoiceOverActivityController_specifiers__block_invoke_20;
        v190[3] = &unk_255E60;
        objc_copyWeak(&v191, location);
        v154 = objc_retainBlock(v190);
        [v152 setProperty:v154 forKey:@"AXVOModifierKeyGetterBlock"];

        [v46 addObject:v152];
        v155 = [v46 copy];
        v156 = *&v30->AXUISettingsBaseListController_opaque[v179];
        *&v30->AXUISettingsBaseListController_opaque[v179] = v155;

        objc_destroyWeak(&v191);
        objc_destroyWeak(&v193);

        objc_destroyWeak(&v195);
        objc_destroyWeak(&v197);

        objc_destroyWeak(&v199);
        objc_destroyWeak(&v201);

        objc_destroyWeak(&v203);
        objc_destroyWeak(&v205);

        objc_destroyWeak(&v207);
        objc_destroyWeak(&v209);
        objc_destroyWeak(&v211);

        objc_destroyWeak(&v213);
        objc_destroyWeak(&v215);
        objc_destroyWeak(&v217);

        objc_destroyWeak(&v219);
        objc_destroyWeak(&v221);

        objc_destroyWeak(&v223);
        objc_destroyWeak(&v225);

        objc_destroyWeak(&v228);
        objc_destroyWeak(&v227);
        objc_destroyWeak(&v229);
        objc_destroyWeak(&v231);

        objc_destroyWeak(&v234);
        objc_destroyWeak(&v233);
        objc_destroyWeak(&from);
        objc_destroyWeak(&v237);

        objc_destroyWeak(&v239);
        objc_destroyWeak(&v241);

        objc_destroyWeak(&v243);
        objc_destroyWeak(&v245);

        objc_destroyWeak(&v251);
        objc_destroyWeak(&v253);

        objc_destroyWeak(&v255);
        objc_destroyWeak(&v257);

        objc_destroyWeak(&v259);
        objc_destroyWeak(&v261);

        objc_destroyWeak(&v263);
        objc_destroyWeak(&v265);

        objc_destroyWeak(&v267);
        objc_destroyWeak(&v269);

        objc_destroyWeak(&v271);
        objc_destroyWeak(&v273);

        objc_destroyWeak(location);
        v4 = *&v30->AXUISettingsBaseListController_opaque[v179];
        goto LABEL_7;
      }

      v78 = settingsLocString(@"IMAGE_DESCRIPTIONS_TITLE", @"VoiceOverSettings");
      v76 = [PSSpecifier preferenceSpecifierNamed:v78 target:v30 set:"setImageDescriptions:specifier:" get:"imageDescriptions:" detail:objc_opt_class() cell:2 edit:0];

      v248[0] = _NSConcreteStackBlock;
      v248[1] = 3221225472;
      v248[2] = __41__VoiceOverActivityController_specifiers__block_invoke_13;
      v248[3] = &unk_255E10;
      objc_copyWeak(&v249, location);
      v79 = objc_retainBlock(v248);
      [v76 setProperty:v79 forKey:@"setValueSelectedBlock"];

      v246[0] = _NSConcreteStackBlock;
      v246[1] = 3221225472;
      v246[2] = __41__VoiceOverActivityController_specifiers__block_invoke_14;
      v246[3] = &unk_255E38;
      objc_copyWeak(&v247, location);
      v80 = objc_retainBlock(v246);
      [v76 setProperty:v80 forKey:@"getValueSelectedBlock"];

      [v46 addObject:v76];
      objc_destroyWeak(&v247);
      objc_destroyWeak(&v249);
    }

    goto LABEL_6;
  }

LABEL_7:

  return v4;
}

void __41__VoiceOverActivityController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMuteSpeech:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained muteSpeech:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMuteSound:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained muteSound:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSpeakEmojis:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained speakEmojis:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_7(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [NSNumber numberWithInteger:a2];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained activity];
    [v5 setContainerFeedback:v3];
  }

  else
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    WeakRetained = [v3 activity];
    [WeakRetained setContainerFeedback:0];
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 reloadSpecifiers];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activity];
  v3 = [v2 containerFeedback];
  v4 = [v3 integerValue];

  return v4;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTableHeaders:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tableHeaders:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRowColumNumbers:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained rowColumnNumbers:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImageDescriptions:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained imageDescriptions:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHintsEnabled:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained hintsEnabled:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNumberFeedback:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activity];
  v3 = [v2 numberFeedback];

  return v3;
}

_UNKNOWN **__41__VoiceOverActivityController_specifiers__block_invoke_496(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained activity];
  v4 = [v3 typingStyle];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 activity];
    v7 = [v6 typingStyle];
  }

  else
  {
    v7 = &off_2799F0;
  }

  return v7;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_2_500(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 integerValue] == -1)
  {

    v7 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained activity];
  [v4 setTypingStyle:v7];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  [v5 reloadSpecifier:v6];
}

_UNKNOWN **__41__VoiceOverActivityController_specifiers__block_invoke_531(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained activity];
  v4 = [v3 navigationStyle];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 activity];
    v7 = [v6 navigationStyle];
  }

  else
  {
    v7 = &off_279A50;
  }

  return v7;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_2_532(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 integerValue] == -1)
  {

    v7 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained activity];
  [v4 setNavigationStyle:v7];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  [v5 reloadSpecifier:v6];
}

void __41__VoiceOverActivityController_specifiers__block_invoke_3_546(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStatusCellGeneral:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_4_547(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained statusCellGeneral:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_5_555(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStatusCellText:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_6_556(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained statusCellText:0];

  return v2;
}

id __41__VoiceOverActivityController_specifiers__block_invoke_7_566(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activity];
  v3 = [v2 brailleTable];

  return v3;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_8_571(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained activity];
  [v5 setBrailleTable:v3];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 reloadSpecifiers];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_9_576(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activity];
  v3 = [v2 brailleTable];

  return v3;
}

id __41__VoiceOverActivityController_specifiers__block_invoke_10_588(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activity];
  v3 = [v2 brailleInputTable];

  return v3;
}

id __41__VoiceOverActivityController_specifiers__block_invoke_11_589(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activity];
  v3 = [v2 brailleInputTable];

  return v3;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_12_590(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained activity];
  [v5 setBrailleInputTable:v3];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 reloadSpecifiers];
}

void __41__VoiceOverActivityController_specifiers__block_invoke_13_604(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBrailleAlerts:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_14_605(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained brailleAlerts:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_15_613(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBrailleFormatting:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_16_614(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained brailleFormatting:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_17_622(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBrailleStartAutoActivateOnTextFields:v3 specifier:0];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_18_623(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained brailleStartAutoActivateOnTextFields:0];

  return v2;
}

void __41__VoiceOverActivityController_specifiers__block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained activity];
  [v5 setModifierKeys:v3];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 reloadSpecifiers];
}

id __41__VoiceOverActivityController_specifiers__block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activity];
  v3 = [v2 modifierKeys];

  return v3;
}

- (id)_stringOutputForFeedback:(id)a3 value:(id)a4
{
  v4 = [(VoiceOverActivityController *)self activity:a3];
  v5 = [v4 containerFeedback];
  v6 = [AXVoiceOverFeedbackController descriptionForOption:v5];

  return v6;
}

- (id)_stringValueForNumber:(id)a3
{
  if (a3)
  {
    if ([a3 BOOLValue])
    {
      v4 = @"ON";
    }

    else
    {
      v4 = @"OFF";
    }

    v3 = vars8;
  }

  else
  {
    v4 = @"DEFAULT";
  }

  return settingsLocString(v4, @"Accessibility");
}

- (id)_stringOutputForOnOffSwitch:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v8 = [(VoiceOverActivityController *)self _stringValueForNumber:v6];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (void)setAudioDucking:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setAudioDucking:v5];
}

- (id)audioDucking:(id)a3
{
  v3 = [(VoiceOverActivityController *)self activity];
  v4 = [v3 audioDucking];

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v4 integerValue];
  if (v5 == &dword_0 + 2)
  {
    v6 = @"AUDIO_DUCKING_ALWAYS";
    goto LABEL_9;
  }

  if (v5 == &dword_0 + 1)
  {
    v6 = @"AUDIO_DUCKING_ONLY_SPEAKING";
    goto LABEL_9;
  }

  if (v5)
  {
LABEL_6:
    v6 = @"DEFAULT";
    v7 = @"Accessibility";
    goto LABEL_10;
  }

  v6 = @"AUDIO_DUCKING_OFF";
LABEL_9:
  v7 = @"VoiceOverSettings";
LABEL_10:
  v8 = settingsLocString(v6, v7);

  return v8;
}

- (void)setMuteSpeech:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setSpeechMuted:v5];
}

- (id)muteSpeech:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 speechMuted];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (void)setMuteSound:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setSoundMuted:v5];
}

- (id)muteSound:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 soundMuted];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (id)modifierKeys:(id)a3
{
  v3 = [(VoiceOverActivityController *)self activity];
  v4 = [v3 modifierKeys];

  if (v4)
  {
    +[VoiceOverModifierKeyController modifierShortStringDescription:](VoiceOverModifierKeyController, "modifierShortStringDescription:", [v4 intValue]);
  }

  else
  {
    settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }
  v5 = ;

  return v5;
}

- (id)brailleInputStatus:(id)a3
{
  v3 = [(VoiceOverActivityController *)self activity];
  v4 = [v3 brailleInputTable];

  if (v4)
  {
    v5 = [[BRLTTable alloc] initWithIdentifier:v4];
    v6 = [v5 localizedNameWithService];
  }

  else
  {
    v6 = settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }

  return v6;
}

- (id)brailleOutputStatus:(id)a3
{
  v3 = [(VoiceOverActivityController *)self activity];
  v4 = [v3 brailleTable];

  if (v4)
  {
    v5 = [[BRLTTable alloc] initWithIdentifier:v4];
    v6 = [v5 localizedNameWithService];
  }

  else
  {
    v6 = settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }

  return v6;
}

- (id)brailleAutoAdvanceDuration:(id)a3
{
  v3 = [(VoiceOverActivityController *)self activity];
  v4 = [v3 brailleAutoAdvanceDuration];

  if (v4)
  {
    [v4 doubleValue];
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    [v5 voiceOverBrailleAutoAdvanceDuration];
  }

  v6 = AXLocalizedTimeSummary();

  return v6;
}

- (void)setImageDescriptions:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setImageDescriptions:v5];
}

- (id)imageDescriptions:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 imageDescriptions];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (void)setSpeakEmojis:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setSpeakEmojis:v5];
}

- (id)containerFeedback:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 containerFeedback];
  v7 = [(VoiceOverActivityController *)self _stringOutputForFeedback:v4 value:v6];

  return v7;
}

- (id)speakEmojis:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 speakEmojis];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (id)_navigationStyle:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  v5 = [v4 navigationStyle];
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = [(VoiceOverActivityController *)self activity];
  v8 = [v7 navigationStyle];
  v9 = [v8 intValue];

  if (v9 == -1)
  {
    goto LABEL_7;
  }

  v10 = [(VoiceOverActivityController *)self activity];
  v11 = [v10 navigationStyle];
  v12 = [v11 intValue];

  if (v12 == 1)
  {
    v13 = @"NAVIGATION_STYLE_GROUPS";
    goto LABEL_9;
  }

  if (v12)
  {
LABEL_7:
    v13 = @"DEFAULT";
    v14 = @"Accessibility";
    goto LABEL_10;
  }

  v13 = @"NAVIGATION_STYLE_FLAT";
LABEL_9:
  v14 = @"VoiceOverSettings";
LABEL_10:
  v15 = settingsLocString(v13, v14);

  return v15;
}

- (id)_typingStyle:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  v5 = [v4 typingStyle];
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = v5;
  v7 = [(VoiceOverActivityController *)self activity];
  v8 = [v7 typingStyle];
  v9 = [v8 intValue];

  if (v9 == -1)
  {
    goto LABEL_8;
  }

  v10 = [(VoiceOverActivityController *)self activity];
  v11 = [v10 typingStyle];
  v12 = [v11 intValue];

  if (v12 == 2)
  {
    v13 = @"TYPING_MODE_DIRECT_TOUCH";
    goto LABEL_11;
  }

  if (v12 == 1)
  {
    v13 = @"TYPING_MODE_TOUCH_TYPING";
    goto LABEL_11;
  }

  if (v12)
  {
LABEL_8:
    v13 = @"DEFAULT";
    v14 = @"Accessibility";
    goto LABEL_12;
  }

  v13 = @"TYPING_MODE_STANDARD";
LABEL_11:
  v14 = @"VoiceOverSettings";
LABEL_12:
  v15 = settingsLocString(v13, v14);

  return v15;
}

- (void)setNumberFeedback:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setNumberFeedback:v5];
}

- (id)numberFeedbackString:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  v5 = [v4 numberFeedback];

  if (!v5)
  {
    v9 = @"DEFAULT";
    v10 = @"Accessibility";
LABEL_8:
    v11 = settingsLocString(v9, v10);
    goto LABEL_10;
  }

  v6 = [(VoiceOverActivityController *)self activity];
  v7 = [v6 numberFeedback];
  v8 = [v7 integerValue];

  if (v8 == &dword_0 + 2)
  {
    v9 = @"NUMBER_FEEDBACK_DIGITS";
    goto LABEL_7;
  }

  if (v8 == &dword_0 + 1)
  {
    v9 = @"NUMBER_FEEDBACK_WORDS";
LABEL_7:
    v10 = @"VoiceOverSettings";
    goto LABEL_8;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)setHintsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setHints:v5];
}

- (id)hintsEnabled:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 hints];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (void)setRowColumNumbers:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setTableRowAndColumn:v5];
}

- (id)rowColumnNumbers:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 tableRowAndColumn];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (void)setTableHeaders:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setTableHeaders:v5];
}

- (id)tableHeaders:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 tableHeaders];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (id)brailleFormatting:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 brailleFormatting];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (void)setBrailleFormatting:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setBrailleFormatting:v5];
}

- (id)brailleStartAutoActivateOnTextFields:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 brailleStartAutoActivateOnTextFields];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (void)setBrailleStartAutoActivateOnTextFields:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setBrailleStartAutoActivateOnTextFields:v5];
}

- (id)brailleAlerts:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 brailleAlerts];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (void)setBrailleAlerts:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setBrailleAlerts:v5];
}

- (id)statusCellText:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 brailleStatusCellText];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (void)setStatusCellText:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setBrailleStatusCellText:v5];
}

- (id)statusCellGeneral:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverActivityController *)self activity];
  v6 = [v5 brailleStatusCellGeneral];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:v4 value:v6];

  return v7;
}

- (void)setStatusCellGeneral:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setBrailleStatusCellGeneral:v5];
}

- (id)_appContexts:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  v5 = [v4 appIdentifiers];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(VoiceOverActivityController *)self activity];
    v8 = [v7 appIdentifiers];
    v9 = [v8 ax_filteredSetUsingBlock:&__block_literal_global_7];
    v10 = [v9 ax_mappedSetUsingBlock:&__block_literal_global_697];
    v11 = [v10 allObjects];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_700];
    v13 = [v12 componentsJoinedByString:{@", "}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL __44__VoiceOverActivityController__appContexts___block_invoke(id a1, NSString *a2, BOOL *a3)
{
  v3 = AXAppNameForBundleId();
  v4 = v3 != 0;

  return v4;
}

- (id)_contexts:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  v5 = [v4 textualContexts];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(VoiceOverActivityController *)self activity];
    v8 = [v7 textualContexts];
    v9 = [v8 ax_mappedSetUsingBlock:&__block_literal_global_705];
    v10 = [v9 allObjects];
    v11 = [v10 componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = VoiceOverActivityController;
  [(VoiceOverActivityController *)&v3 viewDidLoad];
  [(VoiceOverActivityController *)self observeChanges];
}

- (void)observeChanges
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = +[AXVoiceOverActivity observerKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(VoiceOverActivityController *)self activity];
        [v9 addObserver:self forKeyPath:v8 options:1 context:0];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(VoiceOverActivityController *)self setObservingKeyValueChanges:1];
}

- (void)stopObserving
{
  if ([(VoiceOverActivityController *)self observingKeyValueChanges])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = +[AXVoiceOverActivity observerKeys];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          v9 = [(VoiceOverActivityController *)self activity];
          [v9 removeObserver:self forKeyPath:v8 context:0];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(VoiceOverActivityController *)self setObservingKeyValueChanges:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = VOTLogActivities();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Activity changed: %@", &v11, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(VoiceOverActivityController *)self _save];
    if (([v8 isEqualToString:@"name"] & 1) == 0)
    {
      [(VoiceOverActivityController *)self reloadSpecifiers];
    }
  }
}

- (void)setActivity:(id)a3
{
  v4 = a3;
  [(VoiceOverActivityController *)self stopObserving];
  activity = self->_activity;
  self->_activity = v4;

  [(VoiceOverActivityController *)self observeChanges];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(VoiceOverActivityController *)self stopObserving];
  v4.receiver = self;
  v4.super_class = VoiceOverActivityController;
  [(VoiceOverActivityController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = VoiceOverActivityController;
  [(VoiceOverActivityController *)&v8 viewDidAppear:a3];
  v4 = [(VoiceOverActivityController *)self specifierForID:@"GroupName"];
  v5 = [(VoiceOverActivityController *)self cellForSpecifier:v4];

  v6 = [v5 textField];
  [v6 setDelegate:self];

  v7 = [v5 textField];
  [v7 addTarget:self action:"editingChanged:" forControlEvents:0x20000];
}

- (id)volume:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  v5 = [v4 volume];

  if (v5)
  {
    v6 = [(VoiceOverActivityController *)self activity];
    [v6 volume];
  }

  else
  {
    v6 = +[AXSettings sharedInstance];
    [v6 voiceOverEffectiveSpeakingVolume];
    [NSNumber numberWithFloat:?];
  }
  v7 = ;

  return v7;
}

- (void)setVolume:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setVolume:v5];

  [(VoiceOverActivityController *)self _save];
}

- (void)useDefaultVolume:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  [v4 setVolume:0];

  [(VoiceOverActivityController *)self _save];

  [(VoiceOverActivityController *)self reloadSpecifiers];
}

- (id)speechRate:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  v5 = [v4 speechRate];

  if (v5)
  {
    v6 = [(VoiceOverActivityController *)self activity];
    [v6 speechRate];
  }

  else
  {
    v6 = +[AXSettings sharedInstance];
    [v6 voiceOverEffectiveSpeakingRate];
    [NSNumber numberWithFloat:?];
  }
  v7 = ;

  return v7;
}

- (void)setSpeechRate:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setSpeechRate:v5];

  [(VoiceOverActivityController *)self _save];
}

- (void)useDefaultSpeechRate:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  [v4 setSpeechRate:0];

  [(VoiceOverActivityController *)self _save];

  [(VoiceOverActivityController *)self reloadSpecifiers];
}

- (id)duckingAmount:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  v5 = [v4 audioDuckingAmount];

  if (v5)
  {
    v6 = [(VoiceOverActivityController *)self activity];
    [v6 audioDuckingAmount];
  }

  else
  {
    v6 = +[AXSettings sharedInstance];
    [v6 voiceOverMediaDuckingAmount];
    [NSNumber numberWithDouble:?];
  }
  v7 = ;

  return v7;
}

- (void)setDuckingAmount:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(VoiceOverActivityController *)self activity];
  [v6 setAudioDuckingAmount:v5];

  [(VoiceOverActivityController *)self _save];
}

- (void)useDefaultDuckingAmount:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  [v4 setAudioDuckingAmount:0];

  [(VoiceOverActivityController *)self _save];

  [(VoiceOverActivityController *)self reloadSpecifiers];
}

- (id)_punctuationName:(id)a3
{
  v4 = [(VoiceOverActivityController *)self activity];
  v5 = [v4 punctuationGroup];

  if (v5)
  {
    v6 = +[AXSSPunctuationManager sharedDatabase];
    v7 = [(VoiceOverActivityController *)self activity];
    v8 = [v7 punctuationGroup];
    v9 = [v6 punctuationGroupForUUID:v8];
    v10 = [v9 name];
  }

  else
  {
    v10 = settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }

  return v10;
}

- (id)_speechVoice:(id)a3
{
  v3 = [(VoiceOverActivityController *)self activity];
  v4 = [v3 voiceIdentifier];

  if (v4)
  {
    v5 = [TTSSpeechSynthesizer voiceForIdentifier:v4];
    v6 = [v5 name];
  }

  else
  {
    v6 = settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }

  return v6;
}

- (void)editingChanged:(id)a3
{
  v5 = [a3 text];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [(VoiceOverActivityController *)self _setActivityName:v5 specifier:v4];
}

- (void)_setActivityName:(id)a3 specifier:(id)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v5 = [(VoiceOverActivityController *)self activity];
    [v5 setName:v6];

    [(VoiceOverActivityController *)self _save];
  }
}

- (id)_activityName:(id)a3
{
  v3 = [(VoiceOverActivityController *)self activity];
  v4 = [v3 name];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  v10 = PSIDKey;
  v11 = [v9 propertyForKey:PSIDKey];
  v12 = [v11 isEqualToString:@"ACTIVITIES_SPEECH_VOICE"];

  if (v12)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __65__VoiceOverActivityController_tableView_didSelectRowAtIndexPath___block_invoke;
    v29[3] = &unk_256030;
    v29[4] = self;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __65__VoiceOverActivityController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v28[3] = &unk_256058;
    v28[4] = self;
    v13 = [_TtC21AccessibilitySettings27VoiceOverActivityViewBridge makeViewControllerWithGet:v29 set:v28];
    v14 = settingsLocString(@"ACTIVITIES_SPEECH_VOICE", @"VoiceOverSettings");
    [(VoiceOverBrailleAllLanguagesController *)v13 setTitle:v14];

    [(VoiceOverActivityController *)self showController:v13];
  }

  else
  {
    v15 = [v9 propertyForKey:v10];
    v16 = [v15 isEqualToString:@"brailleTable"];

    if (v16)
    {
      v13 = objc_alloc_init(VoiceOverBrailleAllLanguagesController);
      [(VoiceOverBrailleAllLanguagesController *)v13 setModalPresentationStyle:2];
      [(VoiceOverBrailleAllLanguagesController *)v13 setSpecifier:v9];
      v17 = [[UINavigationController alloc] initWithRootViewController:v13];
      [(VoiceOverActivityController *)self presentViewController:v17 withTransition:8 completion:0];
      [v6 deselectRowAtIndexPath:v7 animated:1];
    }

    else
    {
      v18 = [v9 propertyForKey:v10];
      v19 = [v18 isEqualToString:@"apps"];

      if (!v19)
      {
        v22.receiver = self;
        v22.super_class = VoiceOverActivityController;
        [(VoiceOverActivityController *)&v22 tableView:v6 didSelectRowAtIndexPath:v7];
        goto LABEL_9;
      }

      v13 = objc_alloc_init(AXAppSelectionController);
      v20 = [(VoiceOverActivityController *)self rootController];
      [(VoiceOverBrailleAllLanguagesController *)v13 setRootController:v20];

      [(VoiceOverBrailleAllLanguagesController *)v13 setSpecifier:v9];
      [(VoiceOverBrailleAllLanguagesController *)v13 setParentController:self];
      [(VoiceOverBrailleAllLanguagesController *)v13 setIncludesHomeScreen:1];
      [(VoiceOverActivityController *)self activity];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = __65__VoiceOverActivityController_tableView_didSelectRowAtIndexPath___block_invoke_3;
      v21 = v26[3] = &unk_256080;
      v27 = v21;
      [(VoiceOverBrailleAllLanguagesController *)v13 setGetSelectedApps:v26];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __65__VoiceOverActivityController_tableView_didSelectRowAtIndexPath___block_invoke_4;
      v23[3] = &unk_2560A8;
      v24 = v21;
      v25 = self;
      v17 = v21;
      [(VoiceOverBrailleAllLanguagesController *)v13 setSetSelectedApps:v23];
      [(VoiceOverActivityController *)self showController:v13 animate:1];
    }
  }

LABEL_9:
}

id __65__VoiceOverActivityController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setActivity:a2];
  [*(a1 + 32) _save];
  v3 = *(a1 + 32);

  return [v3 reloadSpecifiers];
}

id __65__VoiceOverActivityController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appIdentifiers];
  if (v2)
  {
    [*(a1 + 32) appIdentifiers];
  }

  else
  {
    +[NSSet set];
  }
  v3 = ;

  return v3;
}

id __65__VoiceOverActivityController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAppIdentifiers:a2];
  v3 = VOTLogActivities();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) appIdentifiers];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Set apps: %@", &v6, 0xCu);
  }

  return [*(a1 + 40) _save];
}

@end