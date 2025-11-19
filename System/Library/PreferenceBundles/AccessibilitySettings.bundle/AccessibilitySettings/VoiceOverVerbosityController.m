@interface VoiceOverVerbosityController
- (id)actionConfirmation:(id)a3;
- (id)actionsFeedbackString:(id)a3;
- (id)capitalLetterString:(id)a3;
- (id)containerFeedback:(id)a3;
- (id)customLabelsString:(id)a3;
- (id)deletionFeedbackString:(id)a3;
- (id)emojiSuffix:(id)a3;
- (id)emojisFeedback:(id)a3;
- (id)flashlightNotifications:(id)a3;
- (id)hintsEnabled:(id)a3;
- (id)linkFeedbackString:(id)a3;
- (id)listAnnotationString:(id)a3;
- (id)mediaDescriptionsString:(id)a3;
- (id)moreContentFeedback:(id)a3;
- (id)numberFeedbackString:(id)a3;
- (id)punctuationLevel:(id)a3;
- (id)rotorSummaryFeedback:(id)a3;
- (id)rowColumnNumbers:(id)a3;
- (id)sceneDescriptionsString:(id)a3;
- (id)speakNotifications:(id)a3;
- (id)specifiers;
- (id)tableHeaders:(id)a3;
- (id)traitFeedbackString:(id)a3;
- (id)voiceOverQuickNavAnnouncementFeedbackString:(id)a3;
- (void)setActionConfirmation:(id)a3 specifier:(id)a4;
- (void)setEmojiSuffixEnabled:(id)a3 specifier:(id)a4;
- (void)setHintsEnabled:(id)a3 specifier:(id)a4;
- (void)setRowColummNumbers:(id)a3 specifier:(id)a4;
- (void)setSpeakNotifications:(id)a3 specifier:(id)a4;
- (void)setTableHeaders:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation VoiceOverVerbosityController

- (void)viewDidLoad
{
  v68.receiver = self;
  v68.super_class = VoiceOverVerbosityController;
  [(VoiceOverVerbosityController *)&v68 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke;
  v65[3] = &unk_255388;
  objc_copyWeak(&v66, &location);
  v4 = objc_loadWeakRetained(&location);
  [v3 registerUpdateBlock:v65 forRetrieveSelector:"voiceOverCapitalLetterFeedback" withListener:v4];

  objc_destroyWeak(&v66);
  v5 = +[AXSettings sharedInstance];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_2;
  v63[3] = &unk_255388;
  objc_copyWeak(&v64, &location);
  v6 = objc_loadWeakRetained(&location);
  [v5 registerUpdateBlock:v63 forRetrieveSelector:"voiceOverDeletionFeedback" withListener:v6];

  objc_destroyWeak(&v64);
  v7 = +[AXSettings sharedInstance];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_3;
  v61[3] = &unk_255388;
  objc_copyWeak(&v62, &location);
  v8 = objc_loadWeakRetained(&location);
  [v7 registerUpdateBlock:v61 forRetrieveSelector:"voiceOverPunctuationGroup" withListener:v8];

  objc_destroyWeak(&v62);
  v9 = +[AXSettings sharedInstance];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_4;
  v59[3] = &unk_255388;
  objc_copyWeak(&v60, &location);
  v10 = objc_loadWeakRetained(&location);
  [v9 registerUpdateBlock:v59 forRetrieveSelector:"voiceOverLinkFeedback" withListener:v10];

  objc_destroyWeak(&v60);
  v11 = +[AXSettings sharedInstance];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_5;
  v57[3] = &unk_255388;
  objc_copyWeak(&v58, &location);
  v12 = objc_loadWeakRetained(&location);
  [v11 registerUpdateBlock:v57 forRetrieveSelector:"voiceOverDescribedMedia" withListener:v12];

  objc_destroyWeak(&v58);
  v13 = +[AXSettings sharedInstance];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_6;
  v55[3] = &unk_255388;
  objc_copyWeak(&v56, &location);
  v14 = objc_loadWeakRetained(&location);
  [v13 registerUpdateBlock:v55 forRetrieveSelector:"voiceOverActionsFeedback" withListener:v14];

  objc_destroyWeak(&v56);
  v15 = +[AXSettings sharedInstance];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_7;
  v53[3] = &unk_255388;
  objc_copyWeak(&v54, &location);
  v16 = objc_loadWeakRetained(&location);
  [v15 registerUpdateBlock:v53 forRetrieveSelector:"voiceOverContainerOutputFeedback" withListener:v16];

  objc_destroyWeak(&v54);
  v17 = +[AXSettings sharedInstance];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_8;
  v51[3] = &unk_255388;
  objc_copyWeak(&v52, &location);
  v18 = objc_loadWeakRetained(&location);
  [v17 registerUpdateBlock:v51 forRetrieveSelector:"voiceOverQuickNavAnnouncementFeedback" withListener:v18];

  objc_destroyWeak(&v52);
  v19 = +[AXSettings sharedInstance];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_9;
  v49[3] = &unk_255388;
  objc_copyWeak(&v50, &location);
  v20 = objc_loadWeakRetained(&location);
  [v19 registerUpdateBlock:v49 forRetrieveSelector:"voiceOverMoreContentOutputFeedback" withListener:v20];

  objc_destroyWeak(&v50);
  v21 = +[AXSettings sharedInstance];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_10;
  v47[3] = &unk_255388;
  objc_copyWeak(&v48, &location);
  v22 = objc_loadWeakRetained(&location);
  [v21 registerUpdateBlock:v47 forRetrieveSelector:"voiceOverSceneDescriptionsEnabled" withListener:v22];

  objc_destroyWeak(&v48);
  v23 = +[AXSettings sharedInstance];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_11;
  v45[3] = &unk_255388;
  objc_copyWeak(&v46, &location);
  v24 = objc_loadWeakRetained(&location);
  [v23 registerUpdateBlock:v45 forRetrieveSelector:"voiceOverNumberFeedback" withListener:v24];

  objc_destroyWeak(&v46);
  v25 = +[AXSettings sharedInstance];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_12;
  v43[3] = &unk_255388;
  objc_copyWeak(&v44, &location);
  v26 = objc_loadWeakRetained(&location);
  [v25 registerUpdateBlock:v43 forRetrieveSelector:"voiceOverVerbosityEmojiFeedback" withListener:v26];

  objc_destroyWeak(&v44);
  v27 = +[AXSettings sharedInstance];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_13;
  v41[3] = &unk_255388;
  objc_copyWeak(&v42, &location);
  v28 = objc_loadWeakRetained(&location);
  [v27 registerUpdateBlock:v41 forRetrieveSelector:"voiceOverFlashlightNotificationsEnabled" withListener:v28];

  objc_destroyWeak(&v42);
  v29 = +[AXSettings sharedInstance];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_14;
  v39[3] = &unk_255388;
  objc_copyWeak(&v40, &location);
  v30 = objc_loadWeakRetained(&location);
  [v29 registerUpdateBlock:v39 forRetrieveSelector:"voiceOverTraitFeedback" withListener:v30];

  objc_destroyWeak(&v40);
  v31 = +[AXSettings sharedInstance];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_15;
  v37[3] = &unk_255388;
  objc_copyWeak(&v38, &location);
  v32 = objc_loadWeakRetained(&location);
  [v31 registerUpdateBlock:v37 forRetrieveSelector:"voiceOverListAnnotation" withListener:v32];

  objc_destroyWeak(&v38);
  v33 = +[AXSettings sharedInstance];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_16;
  v35[3] = &unk_255388;
  objc_copyWeak(&v36, &location);
  v34 = objc_loadWeakRetained(&location);
  [v33 registerUpdateBlock:v35 forRetrieveSelector:"voiceOverCustomLabels" withListener:v34];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverCapitalLetterFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverDeletionFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverPunctuationGroup"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverLinkFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverMediaDescriptions"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverActionsFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverContainerOutputFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverQuickNavAnnouncementFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverMoreContentOutputFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"sceneDescriptions"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverNumberFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverEmojiFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverFlashlightNotificationsEnabled"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverTraitFeedback"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"voiceOverListAnnotation"];
}

void __43__VoiceOverVerbosityController_viewDidLoad__block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v87 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = settingsLocString(@"PUNCTUATION_GROUP_FOOTER", @"VoiceOverSettings");
    v89 = PSFooterTextGroupKey;
    [v5 setProperty:v6 forKey:?];

    v7 = AXInBuddySetupKey;
    [v5 setProperty:&__kCFBooleanFalse forKey:AXInBuddySetupKey];
    [v4 addObject:v5];
    v8 = settingsLocString(@"PUNCTUATION", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v10 = PSIDKey;
    [v9 setProperty:@"voiceOverPunctuationGroup" forKey:PSIDKey];
    [v9 setProperty:&__kCFBooleanFalse forKey:v7];
    [v4 addObject:v9];
    v11 = +[AXSettings sharedInstance];
    v12 = [v11 voiceOverCustomLabels];
    v13 = [v12 count];

    if (v13)
    {
      v14 = +[PSSpecifier emptyGroupSpecifier];

      [v4 addObject:v14];
      v15 = settingsLocString(@"CUSTOM_LABELS_HEADER", @"VoiceOverSettings");
      v9 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:"customLabelsString:" detail:objc_opt_class() cell:2 edit:0];

      [v9 setProperty:@"voiceOverCustomLabels" forKey:v10];
      [v9 setProperty:&__kCFBooleanFalse forKey:v7];
      [v4 addObject:v9];
    }

    v16 = +[PSSpecifier emptyGroupSpecifier];

    [v16 setProperty:&__kCFBooleanTrue forKey:v7];
    [v4 addObject:v16];
    v17 = v7;
    v18 = settingsLocString(@"HINTS_TITLE", @"VoiceOverSettings");
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setHintsEnabled:specifier:" get:"hintsEnabled:" detail:0 cell:6 edit:0];

    v20 = PSSpecifierIsSearchableKey;
    [v19 setProperty:&__kCFBooleanFalse forKey:PSSpecifierIsSearchableKey];
    [v19 setProperty:&__kCFBooleanTrue forKey:v17];
    [v4 addObject:v19];
    v21 = settingsLocString(@"TRAIT_FEEDBACK", @"VoiceOverSettings");
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:"traitFeedbackString:" detail:objc_opt_class() cell:2 edit:0];

    [v22 setProperty:&__block_literal_global_31 forKey:@"setValueSelectedBlock"];
    [v22 setProperty:&__block_literal_global_407_0 forKey:@"getValueSelectedBlock"];
    [v22 setProperty:@"voiceOverTraitFeedback" forKey:v10];
    [v22 setProperty:&__kCFBooleanFalse forKey:v20];
    [v22 setProperty:&__kCFBooleanTrue forKey:v17];
    [v4 addObject:v22];
    v23 = settingsLocString(@"ALWAYS_SPEAK_NOTIFICATIONS", @"VoiceOverSettings");
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v24 setProperty:&__kCFBooleanTrue forKey:v20];
    [v24 setProperty:@"SystemNotifications" forKey:v10];
    [v24 setProperty:&__kCFBooleanTrue forKey:v17];
    [v4 addObject:v24];
    v25 = settingsLocString(@"QUICKNAV_ANNOUNCEMENTS", @"VoiceOverSettings");
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:"voiceOverQuickNavAnnouncementFeedbackString:" detail:objc_opt_class() cell:2 edit:0];

    [v26 setProperty:&__block_literal_global_425 forKey:@"setValueSelectedBlock"];
    [v26 setProperty:&__block_literal_global_427 forKey:@"getValueSelectedBlock"];
    v90 = v20;
    [v26 setProperty:&__kCFBooleanFalse forKey:v20];
    v27 = v17;
    [v26 setProperty:&__kCFBooleanTrue forKey:v17];
    v91 = v10;
    [v26 setProperty:@"voiceOverQuickNavAnnouncementFeedback" forKey:v10];
    [v4 addObject:v26];
    if (MGGetBoolAnswer() && _os_feature_enabled_impl())
    {
      v28 = settingsLocString(@"FLASHLIGHT_NOTIFICATIONS", @"VoiceOverSettings");
      v29 = self;
      v30 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:"flashlightNotifications:" detail:objc_opt_class() cell:2 edit:0];

      [v30 setProperty:&__kCFBooleanFalse forKey:v90];
      [v30 setProperty:@"voiceOverFlashlightNotificationsEnabled" forKey:v10];
      [v30 setProperty:&__kCFBooleanTrue forKey:v27];
      [v30 setProperty:&__block_literal_global_441 forKey:@"getValueSelectedBlock"];
      [v30 setProperty:&__block_literal_global_445 forKey:@"setValueSelectedBlock"];
      v31 = v4;
      [v4 addObject:v30];
      v26 = v30;
    }

    else
    {
      v31 = v4;
      v29 = self;
    }

    v32 = +[PSSpecifier emptyGroupSpecifier];

    v33 = v27;
    [v32 setProperty:&__kCFBooleanTrue forKey:v27];
    [v31 addObject:v32];
    v34 = settingsLocString(@"CAPITAL_LETTER", @"VoiceOverSettings");
    v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:v29 set:0 get:"capitalLetterString:" detail:objc_opt_class() cell:2 edit:0];

    [v35 setProperty:@"voiceOverCapitalLetterFeedback" forKey:v91];
    [v35 setProperty:&__kCFBooleanFalse forKey:v90];
    [v35 setProperty:&__kCFBooleanTrue forKey:v33];
    [v31 addObject:v35];
    v36 = settingsLocString(@"DELETION_FEEDBACK", @"VoiceOverSettings");
    v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:v29 set:0 get:"deletionFeedbackString:" detail:objc_opt_class() cell:2 edit:0];

    [v37 setProperty:@"voiceOverDeletionFeedback" forKey:v91];
    [v37 setProperty:&__kCFBooleanFalse forKey:v90];
    v86 = v33;
    [v37 setProperty:&__kCFBooleanTrue forKey:v33];
    [v31 addObject:v37];
    v38 = settingsLocString(@"LINK_ATTACHMENT_FEEDBACK", @"VoiceOverSettings");
    v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:v29 set:0 get:"linkFeedbackString:" detail:objc_opt_class() cell:2 edit:0];

    [v39 setProperty:&__block_literal_global_464 forKey:@"setValueSelectedBlock"];
    [v39 setProperty:&__block_literal_global_466 forKey:@"getValueSelectedBlock"];
    [v39 setProperty:&__kCFBooleanTrue forKey:@"supportsPitchWithoutSpeak"];
    [v39 setProperty:@"voiceOverLinkFeedback" forKey:v91];
    [v39 setProperty:&__kCFBooleanFalse forKey:v90];
    [v39 setProperty:&__kCFBooleanTrue forKey:v33];
    [v31 addObject:v39];
    v40 = settingsLocString(@"ACTIONS_FEEDBACK", @"VoiceOverSettings");
    v41 = [PSSpecifier preferenceSpecifierNamed:v40 target:v29 set:0 get:"actionsFeedbackString:" detail:objc_opt_class() cell:2 edit:0];

    [v41 setProperty:&__block_literal_global_476 forKey:@"setValueSelectedBlock"];
    [v41 setProperty:&__block_literal_global_478 forKey:?];
    v42 = [[VOFeedbackExtraOnOffSwitch alloc] initWithTitle:&__block_literal_global_482 setter:&__block_literal_global_488 getter:&__block_literal_global_491];
    [v41 setProperty:v42 forKey:@"extraOnOffSwitchBlock"];

    [v41 setProperty:@"voiceOverActionsFeedback" forKey:v91];
    [v41 setProperty:&__kCFBooleanFalse forKey:v90];
    [v41 setProperty:&__kCFBooleanTrue forKey:v33];
    [v31 addObject:v41];
    v43 = settingsLocString(@"MORE_CONTENT_FEEDBACK", @"VoiceOverSettings");
    v44 = [PSSpecifier preferenceSpecifierNamed:v43 target:v29 set:0 get:"moreContentFeedback:" detail:objc_opt_class() cell:2 edit:0];

    [v44 setProperty:&__block_literal_global_501 forKey:@"setValueSelectedBlock"];
    [v44 setProperty:&__block_literal_global_503 forKey:@"getValueSelectedBlock"];
    [v44 setProperty:&__kCFBooleanTrue forKey:@"ignoreBrailleOption"];
    [v44 setProperty:@"voiceOverMoreContentOutputFeedback" forKey:v91];
    [v44 setProperty:&__kCFBooleanFalse forKey:v90];
    [v44 setProperty:&__kCFBooleanTrue forKey:v33];
    [v31 addObject:v44];
    v45 = settingsLocString(@"CONTAINER_FEEDBACK", @"VoiceOverSettings");
    v46 = [PSSpecifier preferenceSpecifierNamed:v45 target:v29 set:0 get:"containerFeedback:" detail:objc_opt_class() cell:2 edit:0];

    [v46 setProperty:&__block_literal_global_513 forKey:@"setValueSelectedBlock"];
    [v46 setProperty:&__block_literal_global_515 forKey:@"getValueSelectedBlock"];
    [v46 setProperty:@"voiceOverContainerOutputFeedback" forKey:v91];
    [v46 setProperty:&__kCFBooleanFalse forKey:v90];
    [v46 setProperty:&__kCFBooleanTrue forKey:v33];
    [v31 addObject:v46];
    v47 = settingsLocString(@"NUMBER_FEEDBACK", @"VoiceOverSettings");
    v48 = [PSSpecifier preferenceSpecifierNamed:v47 target:v29 set:0 get:"numberFeedbackString:" detail:objc_opt_class() cell:2 edit:0];

    [v48 setProperty:@"voiceOverNumberFeedback" forKey:v91];
    [v48 setProperty:&__kCFBooleanFalse forKey:v90];
    [v48 setProperty:? forKey:?];
    [v31 addObject:v48];
    v49 = settingsLocString(@"PREDICTIVE_TEXT_FEEDBACK", @"VoiceOverSettings");
    v88 = v29;
    v50 = [PSSpecifier preferenceSpecifierNamed:v49 target:v29 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v50 setProperty:@"PREDICTIVE_TEXT_FEEDBACK" forKey:v91];
    [v31 addObject:v50];
    v51 = settingsLocString(@"LIST_ANNOTATION", @"VoiceOverSettings");
    v52 = [PSSpecifier preferenceSpecifierNamed:v51 target:v29 set:0 get:"listAnnotationString:" detail:objc_opt_class() cell:2 edit:0];

    [v52 setProperty:&__kCFBooleanTrue forKey:@"ignoreSoundOption"];
    [v52 setProperty:&__kCFBooleanTrue forKey:@"ignorePitchOption"];
    [v52 setProperty:&__block_literal_global_538 forKey:@"setValueSelectedBlock"];
    [v52 setProperty:&__block_literal_global_540 forKey:@"getValueSelectedBlock"];
    [v52 setProperty:@"voiceOverListAnnotation" forKey:v91];
    [v52 setProperty:&__kCFBooleanFalse forKey:v90];
    [v52 setProperty:&__kCFBooleanTrue forKey:v33];
    v53 = v31;
    [v31 addObject:v52];
    v54 = settingsLocString(@"SPEAK_TABLE_HEADER", @"VoiceOverSettings");
    v55 = [PSSpecifier groupSpecifierWithName:v54];

    v56 = settingsLocString(@"SPEAK_TABLE_ROW_COLUMN_FOOTER", @"VoiceOverSettings");
    [v55 setProperty:v56 forKey:v89];

    [v55 setProperty:&__kCFBooleanFalse forKey:v90];
    [v55 setProperty:&__kCFBooleanTrue forKey:v86];
    [v31 addObject:v55];
    v57 = settingsLocString(@"SPEAK_TABLE_HEADERS", @"VoiceOverSettings");
    v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:v29 set:"setTableHeaders:specifier:" get:"tableHeaders:" detail:0 cell:6 edit:0];

    [v58 setProperty:@"speakTableHeader" forKey:v91];
    [v58 setProperty:&__kCFBooleanTrue forKey:v86];
    [v31 addObject:v58];
    v59 = settingsLocString(@"SPEAK_TABLE_ROW_COLUMN", @"VoiceOverSettings");
    v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:v29 set:"setRowColummNumbers:specifier:" get:"rowColumnNumbers:" detail:0 cell:6 edit:0];

    [v60 setProperty:&__kCFBooleanTrue forKey:v90];
    [v60 setProperty:&__kCFBooleanTrue forKey:v86];
    [v31 addObject:v60];
    v61 = settingsLocString(@"ROTOR_ACTIONS_HEADER", @"VoiceOverSettings");
    v62 = [PSSpecifier groupSpecifierWithName:v61];

    [v62 setProperty:&__kCFBooleanFalse forKey:v90];
    [v62 setProperty:&__kCFBooleanTrue forKey:v86];
    [v31 addObject:v62];
    v63 = settingsLocString(@"ACTION_CONFIRMATION", @"VoiceOverSettings");
    v64 = [PSSpecifier preferenceSpecifierNamed:v63 target:v29 set:"setActionConfirmation:specifier:" get:"actionConfirmation:" detail:0 cell:6 edit:0];

    [v64 setProperty:&__kCFBooleanTrue forKey:v86];
    [v64 setProperty:&__kCFBooleanTrue forKey:v90];
    [v31 addObject:v64];
    v65 = settingsLocString(@"ROTOR_SUMMARY", @"VoiceOverSettings");
    v66 = [PSSpecifier preferenceSpecifierNamed:v65 target:v29 set:0 get:"rotorSummaryFeedback:" detail:objc_opt_class() cell:2 edit:0];

    [v66 setProperty:&__block_literal_global_580 forKey:@"setValueSelectedBlock"];
    [v66 setProperty:&__block_literal_global_582_0 forKey:@"getValueSelectedBlock"];
    [v66 setProperty:@"voiceOverRotorSummaryFeedback" forKey:v91];
    [v66 setProperty:&__kCFBooleanFalse forKey:v90];
    [v66 setProperty:&__kCFBooleanTrue forKey:v86];
    [v66 setProperty:&__kCFBooleanTrue forKey:@"ignoreSoundOption"];
    [v66 setProperty:&__kCFBooleanTrue forKey:@"ignorePitchOption"];
    [v31 addObject:v66];
    v67 = +[PSSpecifier emptyGroupSpecifier];

    v68 = settingsLocString(@"EMOJI_SUFFIX_FOOTER", @"VoiceOverSettings");
    [v67 setProperty:v68 forKey:v89];

    [v67 setProperty:&__kCFBooleanTrue forKey:v86];
    [v67 setProperty:&__kCFBooleanFalse forKey:v90];
    [v31 addObject:v67];
    v69 = settingsLocString(@"EMOJIS", @"VoiceOverSettings");
    v70 = [PSSpecifier preferenceSpecifierNamed:v69 target:v29 set:0 get:"emojisFeedback:" detail:objc_opt_class() cell:2 edit:0];

    [v70 setProperty:&__block_literal_global_595 forKey:@"setValueSelectedBlock"];
    [v70 setProperty:&__block_literal_global_597 forKey:@"getValueSelectedBlock"];
    [v70 setProperty:&__kCFBooleanTrue forKey:@"ignoreSoundOption"];
    [v70 setProperty:&__kCFBooleanTrue forKey:@"ignorePitchOption"];
    [v70 setProperty:@"voiceOverEmojiFeedback" forKey:v91];
    [v70 setProperty:&__kCFBooleanFalse forKey:v90];
    [v70 setProperty:&__kCFBooleanTrue forKey:v86];
    [v31 addObject:v70];
    v71 = settingsLocString(@"EMOJI_SUFFIX", @"VoiceOverSettings");
    v72 = [PSSpecifier preferenceSpecifierNamed:v71 target:v29 set:"setEmojiSuffixEnabled:specifier:" get:"emojiSuffix:" detail:0 cell:6 edit:0];

    [v72 setProperty:&__kCFBooleanTrue forKey:v90];
    [v72 setProperty:&__kCFBooleanTrue forKey:v86];
    [v31 addObject:v72];
    v73 = +[PSSpecifier emptyGroupSpecifier];

    v74 = settingsLocString(@"MEDIA_DESC_FOOTER", @"VoiceOverSettings");
    [v73 setProperty:v74 forKey:v89];

    [v73 setProperty:&__kCFBooleanTrue forKey:v86];
    [v31 addObject:v73];
    v75 = +[NSProcessInfo processInfo];
    if ([v75 physicalMemory] > 0x773593FF && AXRuntimeCheck_HasANE())
    {

LABEL_13:
      v78 = v91;
LABEL_16:
      v81 = settingsLocString(@"MEDIA_DESC_TITLE", @"VoiceOverSettings");
      v82 = [PSSpecifier preferenceSpecifierNamed:v81 target:v88 set:0 get:"mediaDescriptionsString:" detail:objc_opt_class() cell:2 edit:0];

      [v82 setProperty:@"voiceOverMediaDescriptions" forKey:v78];
      [v82 setProperty:&__kCFBooleanTrue forKey:v86];
      [v53 addObject:v82];
      [(VoiceOverVerbosityController *)v88 filterBuddy:v53];
      v83 = [v53 copy];
      v84 = *&v88->AXUISettingsBaseListController_opaque[v87];
      *&v88->AXUISettingsBaseListController_opaque[v87] = v83;

      v3 = *&v88->AXUISettingsBaseListController_opaque[v87];
      goto LABEL_17;
    }

    v76 = +[NSProcessInfo processInfo];
    if ([v76 physicalMemory] <= 0x773593FF)
    {
    }

    else
    {
      v77 = AXRuntimeCheck_HasANE();

      if (v77)
      {
        goto LABEL_13;
      }
    }

    v79 = settingsLocString(@"VO_SCENE_DESCRIPTIONS", @"VoiceOverSettings");
    v80 = [PSSpecifier preferenceSpecifierNamed:v79 target:v88 set:0 get:"sceneDescriptionsString:" detail:objc_opt_class() cell:2 edit:0];

    v78 = v91;
    [v80 setProperty:@"sceneDescriptions" forKey:v91];
    [v80 setProperty:&__kCFBooleanTrue forKey:v86];
    [v53 addObject:v80];
    v73 = v80;
    goto LABEL_16;
  }

LABEL_17:

  return v3;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverTraitFeedback:a2];
}

int64_t __42__VoiceOverVerbosityController_specifiers__block_invoke_2(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverTraitFeedback];

  return v2;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_3(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverQuickNavAnnouncementFeedback:a2];
}

int64_t __42__VoiceOverVerbosityController_specifiers__block_invoke_4(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverQuickNavAnnouncementFeedback];

  return v2;
}

NSNumber *__cdecl __42__VoiceOverVerbosityController_specifiers__block_invoke_5(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 voiceOverFlashlightNotificationsEnabled]);

  return v2;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_6(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 BOOLValue];
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverFlashlightNotificationsEnabled:v2];
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_7(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverLinkFeedback:a2];
}

int64_t __42__VoiceOverVerbosityController_specifiers__block_invoke_8(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverLinkFeedback];

  return v2;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_9(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverActionsFeedback:a2];
}

int64_t __42__VoiceOverVerbosityController_specifiers__block_invoke_10(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverActionsFeedback];

  return v2;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_12(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverActionFeedbackFirstInListOnly:v2];
}

BOOL __42__VoiceOverVerbosityController_specifiers__block_invoke_13(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverActionFeedbackFirstInListOnly];

  return v2;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_14(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverMoreContentOutputFeedback:a2];
}

int64_t __42__VoiceOverVerbosityController_specifiers__block_invoke_15(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverMoreContentOutputFeedback];

  return v2;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_16(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverContainerOutputFeedback:a2];
}

int64_t __42__VoiceOverVerbosityController_specifiers__block_invoke_17(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverContainerOutputFeedback];

  return v2;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_18(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverListAnnotation:a2];
}

int64_t __42__VoiceOverVerbosityController_specifiers__block_invoke_19(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverListAnnotation];

  return v2;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_20(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverRotorSummaryFeedback:a2];
}

int64_t __42__VoiceOverVerbosityController_specifiers__block_invoke_21(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverRotorSummaryFeedback];

  return v2;
}

void __42__VoiceOverVerbosityController_specifiers__block_invoke_22(id a1, int64_t a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 setVoiceOverVerbosityEmojiFeedback:a2];
}

int64_t __42__VoiceOverVerbosityController_specifiers__block_invoke_23(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverVerbosityEmojiFeedback];

  return v2;
}

- (id)flashlightNotifications:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 voiceOverFlashlightNotificationsEnabled])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  return v5;
}

- (id)emojisFeedback:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverVerbosityEmojiFeedback]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

- (id)linkFeedbackString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverLinkFeedback]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

- (id)traitFeedbackString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverTraitFeedback]);
  v5 = [AXVoiceOverTraitFeedbackController descriptionForOption:v4];

  return v5;
}

- (id)containerFeedback:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverContainerOutputFeedback]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

- (id)rotorSummaryFeedback:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverRotorSummaryFeedback]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

- (id)listAnnotationString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverListAnnotation]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

- (id)moreContentFeedback:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverMoreContentOutputFeedback]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

- (id)numberFeedbackString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverNumberFeedback];

  if (v4 == &dword_0 + 1)
  {
    v5 = @"NUMBER_FEEDBACK_WORDS";
    goto LABEL_5;
  }

  if (v4 == &dword_0 + 2)
  {
    v5 = @"NUMBER_FEEDBACK_DIGITS";
LABEL_5:
    v6 = settingsLocString(v5, @"VoiceOverSettings");
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)actionsFeedbackString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverActionsFeedback]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

- (id)deletionFeedbackString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverDeletionFeedback];

  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = settingsLocString(*(&off_257558 + v4), @"VoiceOverSettings");
  }

  return v5;
}

- (id)punctuationLevel:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverPunctuationGroup];
  v5 = AXSettingsNameForPunctuationGroupUUID(v4);

  return v5;
}

- (id)capitalLetterString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverCapitalLetterFeedback];

  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = settingsLocString(*(&off_257578 + v4), @"VoiceOverSettings");
  }

  return v5;
}

- (void)setActionConfirmation:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSpeakActionConfirmation:v4];
}

- (id)actionConfirmation:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSpeakActionConfirmation]);

  return v4;
}

- (id)sceneDescriptionsString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 voiceOverSceneDescriptionsEnabled])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  return v5;
}

- (id)mediaDescriptionsString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverDescribedMedia];
  v4 = AXVoiceOverMediaDescriptionLocString();

  return v4;
}

- (void)setSpeakNotifications:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSpeakNotificationsEnabled:v4];
}

- (id)speakNotifications:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSpeakNotificationsEnabled]);

  return v4;
}

- (id)voiceOverQuickNavAnnouncementFeedbackString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceOverQuickNavAnnouncementFeedback]);
  v5 = [AXVoiceOverFeedbackController descriptionForOption:v4];

  return v5;
}

- (void)setHintsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverHintsEnabled:v4];
}

- (id)hintsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverHintsEnabled]);

  return v4;
}

- (void)setEmojiSuffixEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverVerbosityEmojiSuffixEnabled:v4];
}

- (id)emojiSuffix:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverVerbosityEmojiSuffixEnabled]);

  return v4;
}

- (void)setTableHeaders:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSpeakTableHeaders:v4];
}

- (id)tableHeaders:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSpeakTableHeaders]);

  return v4;
}

- (void)setRowColummNumbers:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSpeakTableColumnRowInformation:v4];
}

- (id)rowColumnNumbers:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSpeakTableColumnRowInformation]);

  return v4;
}

- (id)customLabelsString:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverCustomLabels];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
  v6 = AXFormatNumber();

  return v6;
}

@end