@interface VoiceOverActivityController
- (id)_activityName:(id)name;
- (id)_appContexts:(id)contexts;
- (id)_contexts:(id)_contexts;
- (id)_navigationStyle:(id)style;
- (id)_newActivityName;
- (id)_punctuationName:(id)name;
- (id)_speechVoice:(id)voice;
- (id)_stringOutputForFeedback:(id)feedback value:(id)value;
- (id)_stringOutputForOnOffSwitch:(id)switch value:(id)value;
- (id)_stringValueForNumber:(id)number;
- (id)_typingStyle:(id)style;
- (id)activity;
- (id)audioDucking:(id)ducking;
- (id)brailleAlerts:(id)alerts;
- (id)brailleAutoAdvanceDuration:(id)duration;
- (id)brailleFormatting:(id)formatting;
- (id)brailleInputStatus:(id)status;
- (id)brailleOutputStatus:(id)status;
- (id)brailleStartAutoActivateOnTextFields:(id)fields;
- (id)containerFeedback:(id)feedback;
- (id)duckingAmount:(id)amount;
- (id)hintsEnabled:(id)enabled;
- (id)imageDescriptions:(id)descriptions;
- (id)modifierKeys:(id)keys;
- (id)muteSound:(id)sound;
- (id)muteSpeech:(id)speech;
- (id)numberFeedbackString:(id)string;
- (id)rowColumnNumbers:(id)numbers;
- (id)speakEmojis:(id)emojis;
- (id)specifiers;
- (id)speechRate:(id)rate;
- (id)statusCellGeneral:(id)general;
- (id)statusCellText:(id)text;
- (id)tableHeaders:(id)headers;
- (id)volume:(id)volume;
- (void)_save;
- (void)_setActivityName:(id)name specifier:(id)specifier;
- (void)dealloc;
- (void)editingChanged:(id)changed;
- (void)observeChanges;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setActivity:(id)activity;
- (void)setAudioDucking:(id)ducking specifier:(id)specifier;
- (void)setBrailleAlerts:(id)alerts specifier:(id)specifier;
- (void)setBrailleFormatting:(id)formatting specifier:(id)specifier;
- (void)setBrailleStartAutoActivateOnTextFields:(id)fields specifier:(id)specifier;
- (void)setDuckingAmount:(id)amount specifier:(id)specifier;
- (void)setHintsEnabled:(id)enabled specifier:(id)specifier;
- (void)setImageDescriptions:(id)descriptions specifier:(id)specifier;
- (void)setMuteSound:(id)sound specifier:(id)specifier;
- (void)setMuteSpeech:(id)speech specifier:(id)specifier;
- (void)setNumberFeedback:(id)feedback specifier:(id)specifier;
- (void)setRowColumNumbers:(id)numbers specifier:(id)specifier;
- (void)setSpeakEmojis:(id)emojis specifier:(id)specifier;
- (void)setSpeechRate:(id)rate specifier:(id)specifier;
- (void)setStatusCellGeneral:(id)general specifier:(id)specifier;
- (void)setStatusCellText:(id)text specifier:(id)specifier;
- (void)setTableHeaders:(id)headers specifier:(id)specifier;
- (void)setVolume:(id)volume specifier:(id)specifier;
- (void)stopObserving;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)useDefaultDuckingAmount:(id)amount;
- (void)useDefaultSpeechRate:(id)rate;
- (void)useDefaultVolume:(id)volume;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation VoiceOverActivityController

- (id)activity
{
  activity = self->_activity;
  if (!activity)
  {
    specifier = [(VoiceOverActivityController *)self specifier];
    v5 = [specifier propertyForKey:@"activity"];
    v6 = self->_activity;
    self->_activity = v5;

    activity = self->_activity;
    if (!activity)
    {
      v7 = objc_opt_new();
      v8 = self->_activity;
      self->_activity = v7;

      _newActivityName = [(VoiceOverActivityController *)self _newActivityName];
      [(AXVoiceOverActivity *)self->_activity setName:_newActivityName];

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
  voiceOverActivities = [v2 voiceOverActivities];

  v4 = [voiceOverActivities countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(voiceOverActivities);
        }

        name = [*(*(&v18 + 1) + 8 * i) name];
        v10 = [NSScanner localizedScannerWithString:name];

        v11 = +[NSCharacterSet decimalDigitCharacterSet];
        invertedSet = [v11 invertedSet];
        [v10 setCharactersToBeSkipped:invertedSet];

        v17 = 0;
        [v10 scanInt:&v17];
        if (v6 <= v17)
        {
          v6 = v17;
        }
      }

      v5 = [voiceOverActivities countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  activity = [(VoiceOverActivityController *)self activity];
  v3 = +[AXSettings sharedInstance];
  voiceOverActivities = [v3 voiceOverActivities];
  v5 = [voiceOverActivities mutableCopy];

  v6 = [v5 indexOfObject:activity];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 addObject:activity];
  }

  else
  {
    [v5 replaceObjectAtIndex:v6 withObject:activity];
  }

  v7 = VOTLogActivities();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = activity;
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

    activity = [(VoiceOverActivityController *)self activity];
    [v14 setProperty:activity forKey:@"activity"];

    [v14 setProperty:@"ACTIVITIES_SPEECH_VOICE" forKey:v10];
    v177 = v14;
    [v7 addObject:v14];
    v16 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setSpeechRate:specifier:" get:"speechRate:" detail:0 cell:5 edit:0];
    v17 = AXTortoiseImage();
    selfCopy = self;
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
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

    [v26 setButtonAction:"useDefaultSpeechRate:"];
    [v26 setProperty:@"useDefaultSpeechRate" forKey:v10];
    v175 = v26;
    [v7 addObject:v26];
    v27 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:"setVolume:specifier:" get:"volume:" detail:0 cell:5 edit:0];
    v28 = AXSpeakerMuteImage();
    v187 = v19;
    v29 = v19;
    v30 = selfCopy;
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
    v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

    v189 = v10;
    [v35 setProperty:@"useDefaultVolume" forKey:v10];
    [v35 setButtonAction:"useDefaultVolume:"];
    v36 = v7;
    v173 = v35;
    [v7 addObject:v35];
    objc_initWeak(location, selfCopy);
    v37 = settingsLocString(@"MUTE_SPEECH", @"VoiceOverSettings");
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:selfCopy set:"setMuteSpeech:specifier:" get:"muteSpeech:" detail:objc_opt_class() cell:2 edit:0];

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
    v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:selfCopy set:"setMuteSound:specifier:" get:"muteSound:" detail:objc_opt_class() cell:2 edit:0];

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

    activity2 = [(VoiceOverActivityController *)v30 activity];
    [v47 setProperty:activity2 forKey:@"activity"];

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

    activity3 = [(VoiceOverActivityController *)v30 activity];
    [v58 setProperty:activity3 forKey:@"activity"];

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
        activity4 = [(VoiceOverActivityController *)v30 activity];
        [v92 setProperty:activity4 forKey:@"activity"];

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
        activity5 = [(VoiceOverActivityController *)v30 activity];
        [v102 setProperty:activity5 forKey:@"activity"];

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

        activity6 = [(VoiceOverActivityController *)v30 activity];
        [v126 setProperty:activity6 forKey:@"activity"];

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

        activity7 = [(VoiceOverActivityController *)v30 activity];
        [v144 setProperty:activity7 forKey:@"activity"];

        [v144 setProperty:@"apps" forKey:v189];
        [v46 addObject:v144];
        v146 = settingsLocString(@"ACTIVITIES_CONTEXTS", @"VoiceOverSettings");
        v147 = [PSSpecifier preferenceSpecifierNamed:v146 target:v30 set:0 get:"_contexts:" detail:objc_opt_class() cell:2 edit:0];

        activity8 = [(VoiceOverActivityController *)v30 activity];
        [v147 setProperty:activity8 forKey:@"activity"];

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

- (id)_stringOutputForFeedback:(id)feedback value:(id)value
{
  v4 = [(VoiceOverActivityController *)self activity:feedback];
  containerFeedback = [v4 containerFeedback];
  v6 = [AXVoiceOverFeedbackController descriptionForOption:containerFeedback];

  return v6;
}

- (id)_stringValueForNumber:(id)number
{
  if (number)
  {
    if ([number BOOLValue])
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

- (id)_stringOutputForOnOffSwitch:(id)switch value:(id)value
{
  valueCopy = value;
  v7 = valueCopy;
  if (switch)
  {
    v8 = [(VoiceOverActivityController *)self _stringValueForNumber:valueCopy];
  }

  else
  {
    v8 = valueCopy;
  }

  v9 = v8;

  return v9;
}

- (void)setAudioDucking:(id)ducking specifier:(id)specifier
{
  duckingCopy = ducking;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setAudioDucking:duckingCopy];
}

- (id)audioDucking:(id)ducking
{
  activity = [(VoiceOverActivityController *)self activity];
  audioDucking = [activity audioDucking];

  if (!audioDucking)
  {
    goto LABEL_6;
  }

  integerValue = [audioDucking integerValue];
  if (integerValue == &dword_0 + 2)
  {
    v6 = @"AUDIO_DUCKING_ALWAYS";
    goto LABEL_9;
  }

  if (integerValue == &dword_0 + 1)
  {
    v6 = @"AUDIO_DUCKING_ONLY_SPEAKING";
    goto LABEL_9;
  }

  if (integerValue)
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

- (void)setMuteSpeech:(id)speech specifier:(id)specifier
{
  speechCopy = speech;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setSpeechMuted:speechCopy];
}

- (id)muteSpeech:(id)speech
{
  speechCopy = speech;
  activity = [(VoiceOverActivityController *)self activity];
  speechMuted = [activity speechMuted];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:speechCopy value:speechMuted];

  return v7;
}

- (void)setMuteSound:(id)sound specifier:(id)specifier
{
  soundCopy = sound;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setSoundMuted:soundCopy];
}

- (id)muteSound:(id)sound
{
  soundCopy = sound;
  activity = [(VoiceOverActivityController *)self activity];
  soundMuted = [activity soundMuted];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:soundCopy value:soundMuted];

  return v7;
}

- (id)modifierKeys:(id)keys
{
  activity = [(VoiceOverActivityController *)self activity];
  modifierKeys = [activity modifierKeys];

  if (modifierKeys)
  {
    +[VoiceOverModifierKeyController modifierShortStringDescription:](VoiceOverModifierKeyController, "modifierShortStringDescription:", [modifierKeys intValue]);
  }

  else
  {
    settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }
  v5 = ;

  return v5;
}

- (id)brailleInputStatus:(id)status
{
  activity = [(VoiceOverActivityController *)self activity];
  brailleInputTable = [activity brailleInputTable];

  if (brailleInputTable)
  {
    v5 = [[BRLTTable alloc] initWithIdentifier:brailleInputTable];
    localizedNameWithService = [v5 localizedNameWithService];
  }

  else
  {
    localizedNameWithService = settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }

  return localizedNameWithService;
}

- (id)brailleOutputStatus:(id)status
{
  activity = [(VoiceOverActivityController *)self activity];
  brailleTable = [activity brailleTable];

  if (brailleTable)
  {
    v5 = [[BRLTTable alloc] initWithIdentifier:brailleTable];
    localizedNameWithService = [v5 localizedNameWithService];
  }

  else
  {
    localizedNameWithService = settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }

  return localizedNameWithService;
}

- (id)brailleAutoAdvanceDuration:(id)duration
{
  activity = [(VoiceOverActivityController *)self activity];
  brailleAutoAdvanceDuration = [activity brailleAutoAdvanceDuration];

  if (brailleAutoAdvanceDuration)
  {
    [brailleAutoAdvanceDuration doubleValue];
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    [v5 voiceOverBrailleAutoAdvanceDuration];
  }

  v6 = AXLocalizedTimeSummary();

  return v6;
}

- (void)setImageDescriptions:(id)descriptions specifier:(id)specifier
{
  descriptionsCopy = descriptions;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setImageDescriptions:descriptionsCopy];
}

- (id)imageDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  activity = [(VoiceOverActivityController *)self activity];
  imageDescriptions = [activity imageDescriptions];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:descriptionsCopy value:imageDescriptions];

  return v7;
}

- (void)setSpeakEmojis:(id)emojis specifier:(id)specifier
{
  emojisCopy = emojis;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setSpeakEmojis:emojisCopy];
}

- (id)containerFeedback:(id)feedback
{
  feedbackCopy = feedback;
  activity = [(VoiceOverActivityController *)self activity];
  containerFeedback = [activity containerFeedback];
  v7 = [(VoiceOverActivityController *)self _stringOutputForFeedback:feedbackCopy value:containerFeedback];

  return v7;
}

- (id)speakEmojis:(id)emojis
{
  emojisCopy = emojis;
  activity = [(VoiceOverActivityController *)self activity];
  speakEmojis = [activity speakEmojis];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:emojisCopy value:speakEmojis];

  return v7;
}

- (id)_navigationStyle:(id)style
{
  activity = [(VoiceOverActivityController *)self activity];
  navigationStyle = [activity navigationStyle];
  if (!navigationStyle)
  {

    goto LABEL_7;
  }

  v6 = navigationStyle;
  activity2 = [(VoiceOverActivityController *)self activity];
  navigationStyle2 = [activity2 navigationStyle];
  intValue = [navigationStyle2 intValue];

  if (intValue == -1)
  {
    goto LABEL_7;
  }

  activity3 = [(VoiceOverActivityController *)self activity];
  navigationStyle3 = [activity3 navigationStyle];
  intValue2 = [navigationStyle3 intValue];

  if (intValue2 == 1)
  {
    v13 = @"NAVIGATION_STYLE_GROUPS";
    goto LABEL_9;
  }

  if (intValue2)
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

- (id)_typingStyle:(id)style
{
  activity = [(VoiceOverActivityController *)self activity];
  typingStyle = [activity typingStyle];
  if (!typingStyle)
  {

    goto LABEL_8;
  }

  v6 = typingStyle;
  activity2 = [(VoiceOverActivityController *)self activity];
  typingStyle2 = [activity2 typingStyle];
  intValue = [typingStyle2 intValue];

  if (intValue == -1)
  {
    goto LABEL_8;
  }

  activity3 = [(VoiceOverActivityController *)self activity];
  typingStyle3 = [activity3 typingStyle];
  intValue2 = [typingStyle3 intValue];

  if (intValue2 == 2)
  {
    v13 = @"TYPING_MODE_DIRECT_TOUCH";
    goto LABEL_11;
  }

  if (intValue2 == 1)
  {
    v13 = @"TYPING_MODE_TOUCH_TYPING";
    goto LABEL_11;
  }

  if (intValue2)
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

- (void)setNumberFeedback:(id)feedback specifier:(id)specifier
{
  feedbackCopy = feedback;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setNumberFeedback:feedbackCopy];
}

- (id)numberFeedbackString:(id)string
{
  activity = [(VoiceOverActivityController *)self activity];
  numberFeedback = [activity numberFeedback];

  if (!numberFeedback)
  {
    v9 = @"DEFAULT";
    v10 = @"Accessibility";
LABEL_8:
    v11 = settingsLocString(v9, v10);
    goto LABEL_10;
  }

  activity2 = [(VoiceOverActivityController *)self activity];
  numberFeedback2 = [activity2 numberFeedback];
  integerValue = [numberFeedback2 integerValue];

  if (integerValue == &dword_0 + 2)
  {
    v9 = @"NUMBER_FEEDBACK_DIGITS";
    goto LABEL_7;
  }

  if (integerValue == &dword_0 + 1)
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

- (void)setHintsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setHints:enabledCopy];
}

- (id)hintsEnabled:(id)enabled
{
  enabledCopy = enabled;
  activity = [(VoiceOverActivityController *)self activity];
  hints = [activity hints];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:enabledCopy value:hints];

  return v7;
}

- (void)setRowColumNumbers:(id)numbers specifier:(id)specifier
{
  numbersCopy = numbers;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setTableRowAndColumn:numbersCopy];
}

- (id)rowColumnNumbers:(id)numbers
{
  numbersCopy = numbers;
  activity = [(VoiceOverActivityController *)self activity];
  tableRowAndColumn = [activity tableRowAndColumn];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:numbersCopy value:tableRowAndColumn];

  return v7;
}

- (void)setTableHeaders:(id)headers specifier:(id)specifier
{
  headersCopy = headers;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setTableHeaders:headersCopy];
}

- (id)tableHeaders:(id)headers
{
  headersCopy = headers;
  activity = [(VoiceOverActivityController *)self activity];
  tableHeaders = [activity tableHeaders];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:headersCopy value:tableHeaders];

  return v7;
}

- (id)brailleFormatting:(id)formatting
{
  formattingCopy = formatting;
  activity = [(VoiceOverActivityController *)self activity];
  brailleFormatting = [activity brailleFormatting];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:formattingCopy value:brailleFormatting];

  return v7;
}

- (void)setBrailleFormatting:(id)formatting specifier:(id)specifier
{
  formattingCopy = formatting;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setBrailleFormatting:formattingCopy];
}

- (id)brailleStartAutoActivateOnTextFields:(id)fields
{
  fieldsCopy = fields;
  activity = [(VoiceOverActivityController *)self activity];
  brailleStartAutoActivateOnTextFields = [activity brailleStartAutoActivateOnTextFields];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:fieldsCopy value:brailleStartAutoActivateOnTextFields];

  return v7;
}

- (void)setBrailleStartAutoActivateOnTextFields:(id)fields specifier:(id)specifier
{
  fieldsCopy = fields;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setBrailleStartAutoActivateOnTextFields:fieldsCopy];
}

- (id)brailleAlerts:(id)alerts
{
  alertsCopy = alerts;
  activity = [(VoiceOverActivityController *)self activity];
  brailleAlerts = [activity brailleAlerts];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:alertsCopy value:brailleAlerts];

  return v7;
}

- (void)setBrailleAlerts:(id)alerts specifier:(id)specifier
{
  alertsCopy = alerts;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setBrailleAlerts:alertsCopy];
}

- (id)statusCellText:(id)text
{
  textCopy = text;
  activity = [(VoiceOverActivityController *)self activity];
  brailleStatusCellText = [activity brailleStatusCellText];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:textCopy value:brailleStatusCellText];

  return v7;
}

- (void)setStatusCellText:(id)text specifier:(id)specifier
{
  textCopy = text;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setBrailleStatusCellText:textCopy];
}

- (id)statusCellGeneral:(id)general
{
  generalCopy = general;
  activity = [(VoiceOverActivityController *)self activity];
  brailleStatusCellGeneral = [activity brailleStatusCellGeneral];
  v7 = [(VoiceOverActivityController *)self _stringOutputForOnOffSwitch:generalCopy value:brailleStatusCellGeneral];

  return v7;
}

- (void)setStatusCellGeneral:(id)general specifier:(id)specifier
{
  generalCopy = general;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setBrailleStatusCellGeneral:generalCopy];
}

- (id)_appContexts:(id)contexts
{
  activity = [(VoiceOverActivityController *)self activity];
  appIdentifiers = [activity appIdentifiers];
  v6 = [appIdentifiers count];

  if (v6)
  {
    activity2 = [(VoiceOverActivityController *)self activity];
    appIdentifiers2 = [activity2 appIdentifiers];
    v9 = [appIdentifiers2 ax_filteredSetUsingBlock:&__block_literal_global_7];
    v10 = [v9 ax_mappedSetUsingBlock:&__block_literal_global_697];
    allObjects = [v10 allObjects];
    v12 = [allObjects sortedArrayUsingComparator:&__block_literal_global_700];
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

- (id)_contexts:(id)_contexts
{
  activity = [(VoiceOverActivityController *)self activity];
  textualContexts = [activity textualContexts];
  v6 = [textualContexts count];

  if (v6)
  {
    activity2 = [(VoiceOverActivityController *)self activity];
    textualContexts2 = [activity2 textualContexts];
    v9 = [textualContexts2 ax_mappedSetUsingBlock:&__block_literal_global_705];
    allObjects = [v9 allObjects];
    v11 = [allObjects componentsJoinedByString:{@", "}];
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
        activity = [(VoiceOverActivityController *)self activity];
        [activity addObserver:self forKeyPath:v8 options:1 context:0];

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
          activity = [(VoiceOverActivityController *)self activity];
          [activity removeObserver:self forKeyPath:v8 context:0];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  v10 = VOTLogActivities();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = objectCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Activity changed: %@", &v11, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(VoiceOverActivityController *)self _save];
    if (([pathCopy isEqualToString:@"name"] & 1) == 0)
    {
      [(VoiceOverActivityController *)self reloadSpecifiers];
    }
  }
}

- (void)setActivity:(id)activity
{
  activityCopy = activity;
  [(VoiceOverActivityController *)self stopObserving];
  activity = self->_activity;
  self->_activity = activityCopy;

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

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = VoiceOverActivityController;
  [(VoiceOverActivityController *)&v8 viewDidAppear:appear];
  v4 = [(VoiceOverActivityController *)self specifierForID:@"GroupName"];
  v5 = [(VoiceOverActivityController *)self cellForSpecifier:v4];

  textField = [v5 textField];
  [textField setDelegate:self];

  textField2 = [v5 textField];
  [textField2 addTarget:self action:"editingChanged:" forControlEvents:0x20000];
}

- (id)volume:(id)volume
{
  activity = [(VoiceOverActivityController *)self activity];
  volume = [activity volume];

  if (volume)
  {
    activity2 = [(VoiceOverActivityController *)self activity];
    [activity2 volume];
  }

  else
  {
    activity2 = +[AXSettings sharedInstance];
    [activity2 voiceOverEffectiveSpeakingVolume];
    [NSNumber numberWithFloat:?];
  }
  v7 = ;

  return v7;
}

- (void)setVolume:(id)volume specifier:(id)specifier
{
  volumeCopy = volume;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setVolume:volumeCopy];

  [(VoiceOverActivityController *)self _save];
}

- (void)useDefaultVolume:(id)volume
{
  activity = [(VoiceOverActivityController *)self activity];
  [activity setVolume:0];

  [(VoiceOverActivityController *)self _save];

  [(VoiceOverActivityController *)self reloadSpecifiers];
}

- (id)speechRate:(id)rate
{
  activity = [(VoiceOverActivityController *)self activity];
  speechRate = [activity speechRate];

  if (speechRate)
  {
    activity2 = [(VoiceOverActivityController *)self activity];
    [activity2 speechRate];
  }

  else
  {
    activity2 = +[AXSettings sharedInstance];
    [activity2 voiceOverEffectiveSpeakingRate];
    [NSNumber numberWithFloat:?];
  }
  v7 = ;

  return v7;
}

- (void)setSpeechRate:(id)rate specifier:(id)specifier
{
  rateCopy = rate;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setSpeechRate:rateCopy];

  [(VoiceOverActivityController *)self _save];
}

- (void)useDefaultSpeechRate:(id)rate
{
  activity = [(VoiceOverActivityController *)self activity];
  [activity setSpeechRate:0];

  [(VoiceOverActivityController *)self _save];

  [(VoiceOverActivityController *)self reloadSpecifiers];
}

- (id)duckingAmount:(id)amount
{
  activity = [(VoiceOverActivityController *)self activity];
  audioDuckingAmount = [activity audioDuckingAmount];

  if (audioDuckingAmount)
  {
    activity2 = [(VoiceOverActivityController *)self activity];
    [activity2 audioDuckingAmount];
  }

  else
  {
    activity2 = +[AXSettings sharedInstance];
    [activity2 voiceOverMediaDuckingAmount];
    [NSNumber numberWithDouble:?];
  }
  v7 = ;

  return v7;
}

- (void)setDuckingAmount:(id)amount specifier:(id)specifier
{
  amountCopy = amount;
  activity = [(VoiceOverActivityController *)self activity];
  [activity setAudioDuckingAmount:amountCopy];

  [(VoiceOverActivityController *)self _save];
}

- (void)useDefaultDuckingAmount:(id)amount
{
  activity = [(VoiceOverActivityController *)self activity];
  [activity setAudioDuckingAmount:0];

  [(VoiceOverActivityController *)self _save];

  [(VoiceOverActivityController *)self reloadSpecifiers];
}

- (id)_punctuationName:(id)name
{
  activity = [(VoiceOverActivityController *)self activity];
  punctuationGroup = [activity punctuationGroup];

  if (punctuationGroup)
  {
    v6 = +[AXSSPunctuationManager sharedDatabase];
    activity2 = [(VoiceOverActivityController *)self activity];
    punctuationGroup2 = [activity2 punctuationGroup];
    v9 = [v6 punctuationGroupForUUID:punctuationGroup2];
    name = [v9 name];
  }

  else
  {
    name = settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }

  return name;
}

- (id)_speechVoice:(id)voice
{
  activity = [(VoiceOverActivityController *)self activity];
  voiceIdentifier = [activity voiceIdentifier];

  if (voiceIdentifier)
  {
    v5 = [TTSSpeechSynthesizer voiceForIdentifier:voiceIdentifier];
    name = [v5 name];
  }

  else
  {
    name = settingsLocString(@"VOICEOVER_ACTIVITIES_DEFAULT", @"VoiceOverSettings");
  }

  return name;
}

- (void)editingChanged:(id)changed
{
  text = [changed text];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [(VoiceOverActivityController *)self _setActivityName:text specifier:v4];
}

- (void)_setActivityName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  if ([nameCopy length])
  {
    activity = [(VoiceOverActivityController *)self activity];
    [activity setName:nameCopy];

    [(VoiceOverActivityController *)self _save];
  }
}

- (id)_activityName:(id)name
{
  activity = [(VoiceOverActivityController *)self activity];
  name = [activity name];

  return name;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = PSIDKey;
  v11 = [specifier propertyForKey:PSIDKey];
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
    v15 = [specifier propertyForKey:v10];
    v16 = [v15 isEqualToString:@"brailleTable"];

    if (v16)
    {
      v13 = objc_alloc_init(VoiceOverBrailleAllLanguagesController);
      [(VoiceOverBrailleAllLanguagesController *)v13 setModalPresentationStyle:2];
      [(VoiceOverBrailleAllLanguagesController *)v13 setSpecifier:specifier];
      v17 = [[UINavigationController alloc] initWithRootViewController:v13];
      [(VoiceOverActivityController *)self presentViewController:v17 withTransition:8 completion:0];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }

    else
    {
      v18 = [specifier propertyForKey:v10];
      v19 = [v18 isEqualToString:@"apps"];

      if (!v19)
      {
        v22.receiver = self;
        v22.super_class = VoiceOverActivityController;
        [(VoiceOverActivityController *)&v22 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
        goto LABEL_9;
      }

      v13 = objc_alloc_init(AXAppSelectionController);
      rootController = [(VoiceOverActivityController *)self rootController];
      [(VoiceOverBrailleAllLanguagesController *)v13 setRootController:rootController];

      [(VoiceOverBrailleAllLanguagesController *)v13 setSpecifier:specifier];
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
      selfCopy = self;
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