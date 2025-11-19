@interface AXPronunciationEntryViewController
- (BOOL)_canSpeakSample;
- (BOOL)_save;
- (BOOL)_stopRecording;
- (BOOL)_supportsPronunciationDictation;
- (BOOL)_usingSupportedDictationLanguage;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (id)_appliesTo:(id)a3;
- (id)_assetUpdaterClient;
- (id)_ignoresCase:(id)a3;
- (id)_language;
- (id)_originalString:(id)a3;
- (id)_replacementString:(id)a3;
- (id)_selectedVoice:(id)a3;
- (id)appSpecifiers;
- (id)specifiers;
- (id)voicesSpecifier;
- (void)_calculateAndUpdateDictationStatus:(id)a3;
- (void)_dictateButtonTapped:(id)a3;
- (void)_handleViewHiddenStatus;
- (void)_hideAppCombinations;
- (void)_manageVoicesSelector;
- (void)_popSuggestionsController:(id)a3;
- (void)_setAppliesTo:(id)a3 specifier:(id)a4;
- (void)_setIgnoresCase:(id)a3 specifier:(id)a4;
- (void)_setOriginalString:(id)a3 specifier:(id)a4;
- (void)_setReplacementString:(id)a3 specifier:(id)a4;
- (void)_showAppCombinationsAnimated:(BOOL)a3;
- (void)_substitutionVoiceId:(id *)a3 andLanguage:(id *)a4;
- (void)_updateDictationViewWithStatus:(int64_t)a3 withCell:(id)a4;
- (void)_updatePlayButtonTraits;
- (void)assistantConnection:(id)a3 receivedCommand:(id)a4 completion:(id)a5;
- (void)assistantConnection:(id)a3 requestFailedWithError:(id)a4 requestClass:(id)a5;
- (void)dealloc;
- (void)editingChanged:(id)a3;
- (void)handlePlayButton:(id)a3;
- (void)manipulateDictationView:(int64_t)a3;
- (void)pronunciationLanguageListController:(id)a3 didSelectLanguages:(id)a4;
- (void)pronunciationSuggestionsViewController:(id)a3 didSelectPhonemes:(id)a4;
- (void)pronunciationVoiceListController:(id)a3 didSelectVoices:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation AXPronunciationEntryViewController

- (void)viewDidLoad
{
  if (viewDidLoad_onceToken != -1)
  {
    [AXPronunciationEntryViewController viewDidLoad];
  }

  v21.receiver = self;
  v21.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v21 viewDidLoad];
  v3 = objc_alloc_init(AXSpeechPronunciationHelper);
  pronunciationHelper = self->_pronunciationHelper;
  self->_pronunciationHelper = v3;

  v5 = objc_alloc_init(TTSSpeechManager);
  [(AXPronunciationEntryViewController *)self setSpeechManager:v5];

  v6 = [(AXPronunciationEntryViewController *)self speechManager];
  [v6 setUsesAuxiliarySession:1];

  v7 = [UIBarButtonItem alloc];
  v8 = settingsLocString(@"PLAY", @"Accessibility");
  v9 = [v7 initWithTitle:v8 style:2 target:self action:"handlePlayButton:"];

  v10 = [(AXPronunciationEntryViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];

  v11 = [(AXPronunciationEntryViewController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  [v12 setEnabled:0];

  v13 = [(AXPronunciationEntryViewController *)self specifier];
  v14 = [v13 propertyForKey:@"AXVocabularyListItem"];

  if (v14)
  {
    [(AXPronunciationEntryViewController *)self setUserSubstitution:v14];
    v15 = [(AXPronunciationEntryViewController *)self _canSpeakSample];
    v16 = [(AXPronunciationEntryViewController *)self navigationItem];
    v17 = [v16 rightBarButtonItem];
    [v17 setEnabled:v15];
  }

  else
  {
    v14 = objc_alloc_init(TTSSubstitution);
    v18 = +[AXLanguageManager sharedInstance];
    v19 = [v18 dialectForUserLocale];
    v16 = [v19 specificLanguageID];

    if (v16)
    {
      v20 = [NSSet setWithObject:v16];
      [v14 setLanguages:v20];
    }

    [(AXPronunciationEntryViewController *)self setUserSubstitution:v14];
  }

  [(AXPronunciationEntryViewController *)self _updatePlayButtonTraits];
}

void __49__AXPronunciationEntryViewController_viewDidLoad__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_337 withPreValidationHandler:&__block_literal_global_350 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_353];
}

BOOL __49__AXPronunciationEntryViewController_viewDidLoad__block_invoke_2(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 validateClass:@"UIDictationLayoutView" hasInstanceVariable:@"_endpointButton" withType:"UIButton"];
  [(AXValidationManager *)v2 validateClass:@"UIDictationLayoutView" hasInstanceVariable:@"_endpointButtonLandscape" withType:"UIButton"];
  [(AXValidationManager *)v2 validateClass:@"UIDictationLayoutView" hasInstanceMethod:@"finishReturnToKeyboard" withFullSignature:"@", 0];

  return 1;
}

- (void)_updatePlayButtonTraits
{
  v3 = [(AXPronunciationEntryViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];
  v5 = [v4 isEnabled];

  v6 = UIAccessibilityTraitStartsMediaSession | UIAccessibilityTraitButton;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = UIAccessibilityTraitNotEnabled;
  }

  v9 = [(AXPronunciationEntryViewController *)self navigationItem];
  v8 = [v9 rightBarButtonItem];
  [v8 setAccessibilityTraits:v6 | v7];
}

- (void)_substitutionVoiceId:(id *)a3 andLanguage:(id *)a4
{
  v7 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v8 = [v7 voiceIds];
  v9 = [v8 count];

  v10 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v28 = v10;
  if (v9 != &dword_0 + 1)
  {
    v12 = [v10 languages];
    v13 = [v12 anyObject];

    if (v13)
    {
      v14 = v13;
      v15 = v13;
    }

    else
    {
      v15 = +[AVSpeechSynthesisVoice currentLanguageCode];
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v13 = AXLanguageCanonicalFormToGeneralLanguage();
        v16 = v13;
      }

      else
      {
        v17 = v15;
        v13 = v15;
      }
    }

    *a4 = v13;
    v29 = 0;
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    v19 = &AXSpeechSourceKeyVoiceOver;
    if (!IsVoiceOverRunning)
    {
      v19 = &AXSpeechSourceKeySpeechFeatures;
    }

    v20 = *v19;
    v21 = +[AXSettings sharedInstance];
    v22 = [v21 speechVoiceIdentifierForLanguage:*a4 sourceKey:v20 exists:&v29];

    if (v29)
    {
      v23 = v22;
    }

    else
    {
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v24 = v15;
      }

      else
      {
        v24 = AXLanguageCanonicalFormToGeneralLanguage();
      }

      v25 = v24;
      v26 = +[AXSettings sharedInstance];
      v23 = [v26 speechVoiceIdentifierForLanguage:v25 sourceKey:v20 exists:&v29];

      v22 = v23;
      if ((v29 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v27 = v22;
    *a3 = v22;
LABEL_19:

    return;
  }

  v11 = [v10 voiceIds];
  *a3 = [v11 anyObject];
}

- (void)handlePlayButton:(id)a3
{
  v4 = +[AVAudioSession sharedInstance];
  [v4 setCategory:AVAudioSessionCategoryVoiceOver withOptions:2 error:0];

  v5 = +[AVAudioSession sharedInstance];
  [v5 setActive:1 error:0];

  v6 = objc_alloc_init(TTSSpeechAction);
  [v6 setShouldQueue:0];
  v24 = 0;
  v25 = 0;
  [(AXPronunciationEntryViewController *)self _substitutionVoiceId:&v25 andLanguage:&v24];
  v7 = v25;
  v8 = v24;
  [v6 setVoiceIdentifier:v7];
  [v6 setLanguage:v8];
  [v6 setIgnoreCustomSubstitutions:1];
  v9 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
  v10 = [v9 editableTextField];
  v11 = [v10 text];
  [v6 setString:v11];

  v12 = [v6 string];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v15 = [v14 phonemes];

    if (v15)
    {
      v26 = AVSpeechSynthesisIPANotationAttribute;
      v16 = [(AXPronunciationEntryViewController *)self userSubstitution];
      v17 = [v16 phonemes];
      v27 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    }

    else
    {
      v18 = 0;
    }

    v21 = [NSAttributedString alloc];
    v22 = [v6 string];
    v19 = [v21 initWithString:v22 attributes:v18];

    [v6 setAttributedString:v19];
  }

  else
  {
    v18 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
    v19 = [v18 editableTextField];
    v20 = [v19 text];
    [v6 setString:v20];
  }

  v23 = [(AXPronunciationEntryViewController *)self speechManager];
  [v23 dispatchSpeechAction:v6];

  [(AXPronunciationEntryViewController *)self setLastAction:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v7 viewWillAppear:a3];
  v4 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v5 = [v4 appliesToAllApps];

  if ((v5 & 1) == 0)
  {
    [(AXPronunciationEntryViewController *)self _showAppCombinationsAnimated:0];
  }

  v6 = settingsLocString(@"EDIT_PRONUNCIATION", @"VoiceOverSettings");
  [(AXPronunciationEntryViewController *)self setTitle:v6];

  [(AXPronunciationEntryViewController *)self _manageVoicesSelector];
}

- (id)voicesSpecifier
{
  v3 = settingsLocString(@"PRONUNCIATION_VOICES", @"VoiceOverSettings");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:"_selectedVoice:" detail:objc_opt_class() cell:2 edit:0];

  v5 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v6 = [v5 voiceIds];
  [v4 setObject:v6 forKeyedSubscript:@"VoiceIds"];

  v7 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v8 = [v7 languages];
  [v4 setObject:v8 forKeyedSubscript:@"Languages"];

  [v4 setObject:@"Voices" forKeyedSubscript:PSIDKey];

  return v4;
}

- (void)_manageVoicesSelector
{
  v9 = [(AXPronunciationEntryViewController *)self specifierForID:@"Voices"];
  v3 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v4 = [v3 languages];
  v5 = [v4 count];

  v6 = v9;
  if (v9)
  {
    if (v5)
    {
      goto LABEL_7;
    }

    [(AXPronunciationEntryViewController *)self removeSpecifier:v9 animated:0];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v7 = [(AXPronunciationEntryViewController *)self specifierForID:@"Languages"];
    v8 = [(AXPronunciationEntryViewController *)self voicesSpecifier];
    [(AXPronunciationEntryViewController *)self insertSpecifier:v8 afterSpecifier:v7];
  }

  v6 = v9;
LABEL_7:
}

- (id)_selectedVoice:(id)a3
{
  v4 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v5 = [v4 voiceIds];
  v6 = [v5 count];

  if (v6 == &dword_0 + 1)
  {
    v7 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v8 = [v7 voiceIds];
    v9 = [v8 anyObject];
    v10 = [AVSpeechSynthesisVoice _voiceFromInternalVoiceListWithIdentifier:v9];
    v11 = [v10 name];
  }

  else
  {
    v12 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v13 = [v12 voiceIds];
    v14 = [v13 count];

    if (v14)
    {
      v15 = @"PRONUNCIATION_MULTIPLE_LANGUAGES_SELECTED";
    }

    else
    {
      v15 = @"ALL_LANGUAGES";
    }

    v11 = settingsLocString(v15, @"VoiceOverSettings");
  }

  return v11;
}

- (BOOL)_supportsPronunciationDictation
{
  v3 = [(AXPronunciationEntryViewController *)self _usingSupportedDictationLanguage];
  if (v3)
  {
    pronunciationHelper = self->_pronunciationHelper;

    LOBYTE(v3) = [(AXSpeechPronunciationHelper *)pronunciationHelper supportsPronunciationSessions];
  }

  return v3;
}

- (BOOL)_usingSupportedDictationLanguage
{
  v3 = +[TTSSpeechSynthesizer supportedIPAPhonemeLanguages];
  v4 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v5 = [v4 languages];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v8 = [v7 languages];
    v9 = [v8 count];

    v14 = 0;
    if (v9 == &dword_0 + 1)
    {
      v10 = [(AXPronunciationEntryViewController *)self userSubstitution];
      v11 = [v10 languages];
      v12 = [v11 anyObject];
      v13 = [v3 containsObject:v12];

      if (v13)
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v15 = +[AXLanguageManager sharedInstance];
    v16 = [v15 dialectForUserLocale];
    v17 = [v16 specificLanguageID];
    v14 = [v3 containsObject:v17];
  }

  return v14;
}

- (void)manipulateDictationView:(int64_t)a3
{
  dictationView = self->_dictationView;
  if ((a3 - 3) > 1)
  {
    if (dictationView)
    {
      dictationBackgroundView = self->_dictationBackgroundView;

      [(UIView *)dictationBackgroundView removeFromSuperview];
    }
  }

  else if (!dictationView)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 window];

    v7 = +[UIKeyboardImpl sharedInstance];
    [v7 bounds];
    x = v8;
    y = v10;
    v13 = v12;
    v15 = v14;

    if (!v6)
    {
      v16 = [(AXPronunciationEntryViewController *)self view];
      v6 = [v16 window];

      x = CGPointZero.x;
      y = CGPointZero.y;
      v17 = +[UIKeyboard activeKeyboard];
      +[UIKeyboardImpl keyboardSizeForInterfaceOrientation:](UIKeyboardImpl, "keyboardSizeForInterfaceOrientation:", [v17 interfaceOrientation]);
      v13 = v18;
      v15 = v19;
    }

    v20 = [objc_alloc(+[UIDictationView dictationViewClass](UIDictationView "dictationViewClass"))];
    v21 = self->_dictationView;
    self->_dictationView = v20;

    [(UIDictationView *)self->_dictationView setDisplayDelegate:self];
    [(UIDictationView *)self->_dictationView setAccessibilityIdentifier:@"AXPronunciationDictationView"];
    objc_opt_class();
    v22 = [(UIDictationView *)self->_dictationView safeUIViewForKey:@"_endpointButton"];
    v23 = __UIAccessibilityCastAsClass();

    [v23 addTarget:self action:"doneButtonPressed" forControlEvents:64];
    objc_opt_class();
    v24 = [(UIDictationView *)self->_dictationView safeUIViewForKey:@"_endpointButtonLandscape"];
    v25 = __UIAccessibilityCastAsClass();

    [v25 addTarget:self action:"doneButtonPressed" forControlEvents:64];
    [(UIDictationView *)self->_dictationView frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [v6 bounds];
    v33 = [[UIView alloc] initWithFrame:{v27, v32 - v31, v29, v31}];
    v34 = self->_dictationBackgroundView;
    self->_dictationBackgroundView = v33;

    v35 = +[UIColor darkGrayColor];
    [(UIView *)self->_dictationBackgroundView setBackgroundColor:v35];

    [v6 addSubview:self->_dictationBackgroundView];
    [(UIView *)self->_dictationBackgroundView addSubview:self->_dictationView];
    AXPerformSafeBlock();
  }
}

id __62__AXPronunciationEntryViewController_manipulateDictationView___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 168) setState:1];
  [*(*(a1 + 32) + 168) show];
  v2 = *(*(a1 + 32) + 168);

  return [v2 setState:2];
}

- (void)_updateDictationViewWithStatus:(int64_t)a3 withCell:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v7 = [(AXPronunciationEntryViewController *)self specifierForID:@"InputCell"];
    v11 = [(AXPronunciationEntryViewController *)self cellForSpecifier:v7];

    if (!v11)
    {
      _AXAssert();
      v11 = 0;
    }
  }

  [(AXPronunciationEntryViewController *)self manipulateDictationView:a3];
  if (a3 <= 1)
  {
    v8 = v11;
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_18;
      }

      [v11 setShowsSpinner:0];
      [v11 setShowsDictationButton:0];
    }

    else
    {
      [v11 setShowsDictationButton:1];
      [v11 setShowsSpinner:0];
      [v11 setDictationButtonEnabled:0];
    }
  }

  else
  {
    v8 = v11;
    switch(a3)
    {
      case 2:
        [v11 setShowsSpinner:0];
        [v11 setDictationButtonEnabled:1];
        [v11 setShowsDictationButton:1];
        v9 = v11;
        v10 = 0;
        break;
      case 4:
        [v11 setShowsListeningState:0];
        [v11 setShowsSpinner:1];
        goto LABEL_17;
      case 3:
        [v11 setDictationButtonEnabled:0];
        v9 = v11;
        v10 = 1;
        break;
      default:
        goto LABEL_18;
    }

    [v9 setShowsListeningState:v10];
  }

LABEL_17:
  v8 = v11;
LABEL_18:
}

- (void)_calculateAndUpdateDictationStatus:(id)a3
{
  v11 = a3;
  if (self->_isRecording)
  {
    v4 = 3;
    goto LABEL_9;
  }

  if (![(AXPronunciationEntryViewController *)self _supportsPronunciationDictation])
  {
    v4 = 1;
    goto LABEL_9;
  }

  v5 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v6 = [v5 originalString];
  if ([v6 length])
  {

LABEL_8:
    v4 = 2;
    goto LABEL_9;
  }

  v7 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
  v8 = [v7 editableTextField];
  v9 = [v8 text];
  v10 = [v9 length];

  if (v10)
  {
    goto LABEL_8;
  }

  v4 = 0;
LABEL_9:
  [(AXPronunciationEntryViewController *)self _updateDictationViewWithStatus:v4 withCell:v11];
}

- (void)viewDidAppear:(BOOL)a3
{
  v18.receiver = self;
  v18.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v18 viewDidAppear:a3];
  v4 = [(AXPronunciationEntryViewController *)self specifierForID:@"OriginalString"];
  v5 = [(AXPronunciationEntryViewController *)self cellForSpecifier:v4];

  v6 = [v5 textField];
  [v6 setDelegate:self];

  v7 = [v5 textField];
  [v7 _accessibilitySetBoolValue:1 forKey:UIAccessibilityTokenIgnoreSubstitution];

  v8 = [v5 textField];
  [v8 addTarget:self action:"editingChanged:" forControlEvents:0x20000];

  v9 = [v5 textField];
  v10 = [v9 text];
  v11 = [v10 length];

  if (!v11)
  {
    [v5 becomeFirstResponder];
  }

  v12 = [(AXPronunciationEntryViewController *)self specifierForID:@"InputCell"];
  v13 = [(AXPronunciationEntryViewController *)self cellForSpecifier:v12];

  v14 = [v13 textField];
  [v14 setDelegate:self];

  v15 = [v13 textField];
  [v15 addTarget:self action:"editingChanged:" forControlEvents:0x20000];

  v16 = [(AXPronunciationEntryViewController *)self specifierForID:@"InputCell"];
  v17 = [(AXPronunciationEntryViewController *)self cellForSpecifier:v16];

  [v17 setListeningDuration:4.0];
}

- (void)_handleViewHiddenStatus
{
  v3 = [(AXPronunciationEntryViewController *)self speechManager];
  [v3 stopSpeaking];

  [(AXPronunciationEntryViewController *)self _stopRecording];
  if (![(AXPronunciationEntryViewController *)self _save])
  {
    _AXLogWithFacility();
  }
}

- (void)willResignActive
{
  [(AXPronunciationEntryViewController *)self _handleViewHiddenStatus];
  v3.receiver = self;
  v3.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v3 willResignActive];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(AXPronunciationEntryViewController *)self _handleViewHiddenStatus];
  v5.receiver = self;
  v5.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v5 viewWillDisappear:v3];
}

- (void)dealloc
{
  v3 = [(AXPronunciationEntryViewController *)self speechManager];
  [v3 stopSpeaking];

  v4 = [(AXPronunciationEntryViewController *)self speechManager];
  [v4 tearDown];

  [(UIView *)self->_dictationBackgroundView removeFromSuperview];
  v5.receiver = self;
  v5.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v5 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = settingsLocString(@"PRONUNCIATION_DICTATE_HELP", @"VoiceOverSettings");
    [v6 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = settingsLocString(@"PRONUNCIATION_ORIGINAL_STRING", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_setOriginalString:specifier:" get:"_originalString:" detail:0 cell:8 edit:0];

    v10 = PSIDKey;
    [v9 setObject:@"OriginalString" forKeyedSubscript:PSIDKey];
    [v9 setKeyboardType:0 autoCaps:2 autoCorrection:1];
    [v5 addObject:v9];
    v11 = settingsLocString(@"PRONUNCIATION_REPLACEMENT_STRING", @"VoiceOverSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"_setReplacementString:specifier:" get:"_replacementString:" detail:0 cell:8 edit:0];

    [v12 setObject:@"InputCell" forKeyedSubscript:v10];
    [v12 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
    [v12 setKeyboardType:0 autoCaps:2 autoCorrection:1];
    [v5 addObject:v12];
    v13 = +[PSSpecifier emptyGroupSpecifier];

    [v5 addObject:v13];
    v14 = settingsLocString(@"PRONUNCIATION_LANGUAGE", @"VoiceOverSettings");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"_language" detail:objc_opt_class() cell:2 edit:0];

    v16 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v17 = [v16 languages];
    [v15 setObject:v17 forKeyedSubscript:@"Languages"];

    [v15 setObject:@"Languages" forKeyedSubscript:v10];
    [v5 addObject:v15];
    v18 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v19 = [v18 languages];
    v20 = [v19 count];

    if (v20)
    {
      v21 = [(AXPronunciationEntryViewController *)self voicesSpecifier];
      [v5 addObject:v21];
    }

    v22 = settingsLocString(@"PRONUNCIATION_IGNORE_CASE", @"VoiceOverSettings");
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"_setIgnoresCase:specifier:" get:"_ignoresCase:" detail:0 cell:6 edit:0];

    [v5 addObject:v23];
    v24 = settingsLocString(@"APPLIES_TO", @"VoiceOverSettings");
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"_setAppliesTo:specifier:" get:"_appliesTo:" detail:0 cell:6 edit:0];

    [v25 setObject:@"AppApplies" forKeyedSubscript:v10];
    [v5 addObject:v25];
    v26 = [(AXPronunciationEntryViewController *)self userSubstitution];
    if (v26)
    {
      v27 = v26;
      v28 = [(AXPronunciationEntryViewController *)self userSubstitution];
      v29 = [v28 appliesToAllApps];

      if ((v29 & 1) == 0)
      {
        v30 = [(AXPronunciationEntryViewController *)self appSpecifiers];
        [v5 addObjectsFromArray:v30];
      }
    }

    v31 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (BOOL)_stopRecording
{
  isRecording = self->_isRecording;
  if (isRecording)
  {
    self->_isRecording = 0;
    [(AXSpeechPronunciationHelper *)self->_pronunciationHelper cancelPronunciationSession];
    [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus];
  }

  return isRecording;
}

- (void)assistantConnection:(id)a3 receivedCommand:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = +[AXSubsystemPronunciations sharedInstance];
  v8 = [v7 ignoreLogging];

  if ((v8 & 1) == 0)
  {
    v9 = +[AXSubsystemPronunciations identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v13 = _AXStringForArgs();
      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v15 = v13;
        _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  self->_isRecording = 0;
}

- (void)assistantConnection:(id)a3 requestFailedWithError:(id)a4 requestClass:(id)a5
{
  v6 = a4;
  v7 = +[AXSubsystemPronunciations sharedInstance];
  v8 = [v7 ignoreLogging];

  if ((v8 & 1) == 0)
  {
    v9 = +[AXSubsystemPronunciations identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v13 = _AXStringForArgs();
      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v21 = v13;
        _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_isRecording)
  {
    self->_isRecording = 0;
    v14 = settingsLocString(@"DICTATE_ERROR_TITLE", @"VoiceOverSettings");
    v15 = settingsLocString(@"DICTATE_TIMEOUT_MESSAGE", @"VoiceOverSettings");
    v16 = [UIAlertController alertControllerWithTitle:v14 message:v15 preferredStyle:1];

    v17 = settingsLocString(@"DICTATE_TIMEOUT_TRY_AGAIN", @"VoiceOverSettings");
    v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:0];
    [v16 addAction:v18];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __94__AXPronunciationEntryViewController_assistantConnection_requestFailedWithError_requestClass___block_invoke;
    v19[3] = &unk_2553B0;
    v19[4] = self;
    [(AXPronunciationEntryViewController *)self presentViewController:v16 animated:1 completion:v19];
  }
}

- (void)_popSuggestionsController:(id)a3
{
  v4 = a3;
  v5 = +[AXSubsystemPronunciations sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = +[AXSubsystemPronunciations identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v20 = v4;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v24 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([v4 count] == &dword_0 + 1)
  {
    v12 = [v4 firstObject];
    [(AXPronunciationEntryViewController *)self pronunciationSuggestionsViewController:0 didSelectPhonemes:v12];
LABEL_11:

    goto LABEL_12;
  }

  if ([v4 count] >= 2)
  {
    v21 = 0;
    v22 = 0;
    [(AXPronunciationEntryViewController *)self _substitutionVoiceId:&v22 andLanguage:&v21];
    v12 = v22;
    v13 = v21;
    v14 = [[AXPronunciationSuggestionsViewController alloc] initWithSuggestions:v4];
    [(AXPronunciationSuggestionsViewController *)v14 setVoiceId:v12];
    [(AXPronunciationSuggestionsViewController *)v14 setLanguage:v13];

    [(AXPronunciationSuggestionsViewController *)v14 setDelegate:self];
    v15 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
    v16 = [v15 editableTextField];
    v17 = [v16 text];
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(AXPronunciationSuggestionsViewController *)v14 setSpecifier:v18];

    v19 = [[UINavigationController alloc] initWithRootViewController:v14];
    [(AXPronunciationEntryViewController *)self presentViewController:v19 animated:1 completion:0];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_dictateButtonTapped:(id)a3
{
  v4 = a3;
  if (self->_isRecording)
  {
    self->_isRecording = 0;
    [(AXSpeechPronunciationHelper *)self->_pronunciationHelper stopPronunciationSession];
    [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus];
  }

  else
  {
    v5 = [(AXPronunciationEntryViewController *)self specifierForID:@"InputCell"];
    v6 = [(AXPronunciationEntryViewController *)self cellForSpecifier:v5];

    [v6 setListeningDuration:4.0];
    v7 = objc_opt_new();
    v8 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
    v9 = [v8 editableTextField];
    v10 = [v9 text];
    [v7 setOrthography:v10];

    v11 = +[AXSubsystemPronunciations sharedInstance];
    LOBYTE(v9) = [v11 ignoreLogging];

    if ((v9 & 1) == 0)
    {
      v12 = +[AXSubsystemPronunciations identifier];
      v13 = AXLoggerForFacility();

      v14 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = AXColorizeFormatLog();
        v22 = v7;
        v16 = _AXStringForArgs();
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 138543362;
          v27 = v16;
          _os_log_impl(&dword_0, v13, v14, "%{public}@", buf, 0xCu);
        }
      }
    }

    v17 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v18 = [v17 languages];
    v19 = [v18 anyObject];
    [v7 setLanguage:v19];

    objc_initWeak(buf, self);
    pronunciationHelper = self->_pronunciationHelper;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __59__AXPronunciationEntryViewController__dictateButtonTapped___block_invoke;
    v23[3] = &unk_2565C8;
    v23[4] = self;
    objc_copyWeak(&v25, buf);
    v21 = v7;
    v24 = v21;
    [(AXSpeechPronunciationHelper *)pronunciationHelper startPronunciationSession:v21 resultCallback:v23];
    self->_isRecording = 1;
    [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __59__AXPronunciationEntryViewController__dictateButtonTapped___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v31 = a3;
  v6 = *(a1 + 32);
  v30 = *(v6 + 153);
  *(v6 + 153) = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v5;
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = +[NSCharacterSet whitespaceCharacterSet];
        v14 = [v12 stringByTrimmingCharactersInSet:v13];
        v15 = [v14 length] != 0;

        v8 |= v15;
      }

      v9 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v9);
  }

  v16 = +[AXSubsystemPronunciations sharedInstance];
  v17 = [v16 ignoreLogging];

  if ((v17 & 1) == 0)
  {
    v18 = +[AXSubsystemPronunciations identifier];
    v19 = AXLoggerForFacility();

    v20 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = AXColorizeFormatLog();
      v22 = _AXStringForArgs();
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 138543362;
        v46 = v22;
        _os_log_impl(&dword_0, v19, v20, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (((v31 == 0) & v8) == 1)
  {
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = __59__AXPronunciationEntryViewController__dictateButtonTapped___block_invoke_515;
    v38 = &unk_255818;
    objc_copyWeak(&v40, (a1 + 48));
    v39 = v7;
    AXPerformBlockAsynchronouslyOnMainThread();

    objc_destroyWeak(&v40);
  }

  else
  {
    v23 = +[AXSubsystemPronunciations sharedInstance];
    v24 = [v23 ignoreLogging];

    if ((v24 & 1) == 0)
    {
      v25 = +[AXSubsystemPronunciations identifier];
      v26 = AXLoggerForFacility();

      v27 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = AXColorizeFormatLog();
        v29 = _AXStringForArgs();
        if (os_log_type_enabled(v26, v27))
        {
          *buf = 138543362;
          v46 = v29;
          _os_log_impl(&dword_0, v26, v27, "%{public}@", buf, 0xCu);
        }
      }
    }

    v34 = v30;
    v32 = *(a1 + 40);
    objc_copyWeak(&v33, (a1 + 48));
    AXPerformBlockAsynchronouslyOnMainThread();
    objc_destroyWeak(&v33);
  }
}

void __59__AXPronunciationEntryViewController__dictateButtonTapped___block_invoke_515(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _popSuggestionsController:*(a1 + 32)];
}

void __59__AXPronunciationEntryViewController__dictateButtonTapped___block_invoke_519(uint64_t a1)
{
  v2 = +[AXSubsystemPronunciations sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemPronunciations identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v20 = v8;
        _os_log_impl(&dword_0, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (*(a1 + 48) == 1)
  {
    v9 = settingsLocString(@"DICTATE_ERROR_MESSAGE", @"VoiceOverSettings");
    v10 = [*(a1 + 32) orthography];
    v11 = [NSString stringWithFormat:v9, v10];

    v12 = settingsLocString(@"DICTATE_ERROR_TITLE", @"VoiceOverSettings");
    v13 = [UIAlertController alertControllerWithTitle:v12 message:v11 preferredStyle:1];

    v14 = settingsLocString(@"OK", @"Accessibility");
    v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:0];
    [v13 addAction:v15];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __59__AXPronunciationEntryViewController__dictateButtonTapped___block_invoke_530;
    v17[3] = &unk_255388;
    objc_copyWeak(&v18, (a1 + 40));
    [WeakRetained presentViewController:v13 animated:1 completion:v17];

    objc_destroyWeak(&v18);
  }
}

void __59__AXPronunciationEntryViewController__dictateButtonTapped___block_invoke_530(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _calculateAndUpdateDictationStatus];
}

- (id)_assetUpdaterClient
{
  if (_assetUpdaterClient_onceToken != -1)
  {
    [AXPronunciationEntryViewController _assetUpdaterClient];
  }

  v3 = _assetUpdaterClient_Client;

  return v3;
}

void __57__AXPronunciationEntryViewController__assetUpdaterClient__block_invoke(id a1)
{
  v1 = [AXUIClient alloc];
  v5 = [NSNumber numberWithInt:getpid()];
  v2 = [NSString stringWithFormat:@"AXAssetClient-pronunciation-%@", v5];
  v3 = [v1 initWithIdentifier:v2 serviceBundleName:@"AXAssetAndDataServer"];
  v4 = _assetUpdaterClient_Client;
  _assetUpdaterClient_Client = v3;
}

- (BOOL)_save
{
  v3 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v86 = [v3 originalString];

  v4 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v5 = [v4 replacementString];

  v6 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v85 = [v6 phonemes];

  v7 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 editableTextField];
    v10 = [v9 text];
    v11 = [(AXPronunciationEntryViewController *)self userSubstitution];
    [v11 setOriginalString:v10];
  }

  v12 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v13 = [v12 phonemes];

  if (v13)
  {
    v14 = [(AXPronunciationEntryViewController *)self userSubstitution];
    [v14 setReplacementString:0];
  }

  else
  {
    v15 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
    v14 = v15;
    if (v15)
    {
      v16 = [v15 editableTextField];
      v17 = [v16 text];
      v18 = [(AXPronunciationEntryViewController *)self userSubstitution];
      [v18 setReplacementString:v17];
    }
  }

  v19 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v20 = [v19 originalString];
  v21 = [v20 length];

  v22 = +[AXSettings sharedInstance];
  v23 = [v22 customPronunciationSubstitutions];
  v24 = [v23 mutableCopy];

  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = __43__AXPronunciationEntryViewController__save__block_invoke;
  v88[3] = &unk_256610;
  v88[4] = self;
  v25 = [v24 indexOfObjectPassingTest:v88];
  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = __43__AXPronunciationEntryViewController__save__block_invoke_2;
    v87[3] = &unk_256610;
    v87[4] = self;
    v25 = [v24 indexOfObjectPassingTest:v87];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!v21)
      {
        goto LABEL_21;
      }

      v26 = [(AXPronunciationEntryViewController *)self userSubstitution];
      [v24 addObject:v26];
      goto LABEL_13;
    }
  }

  v27 = v25;
  if (v21)
  {
    v26 = [(AXPronunciationEntryViewController *)self userSubstitution];
    [v24 replaceObjectAtIndex:v27 withObject:v26];
LABEL_13:

    goto LABEL_21;
  }

  v28 = +[AXSubsystemPronunciations sharedInstance];
  v29 = [v28 ignoreLogging];

  if ((v29 & 1) == 0)
  {
    v30 = +[AXSubsystemPronunciations identifier];
    v31 = AXLoggerForFacility();

    v32 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = AXColorizeFormatLog();
      [(AXPronunciationEntryViewController *)self userSubstitution];
      v81 = v79 = v27;
      v34 = _AXStringForArgs();

      if (os_log_type_enabled(v31, v32))
      {
        *buf = 138543362;
        v93 = v34;
        _os_log_impl(&dword_0, v31, v32, "%{public}@", buf, 0xCu);
      }
    }
  }

  [v24 removeObjectAtIndex:{v27, v79, v81}];
LABEL_21:
  v35 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v36 = [v35 originalString];
  v37 = [v86 isEqualToString:v36];

  v38 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v39 = [v38 replacementString];
  v84 = v8;
  if ([v5 isEqualToString:v39])
  {
    v40 = 0;
  }

  else
  {
    v41 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v42 = [v41 replacementString];
    v40 = [v42 length] != 0;
  }

  v43 = v5;

  v44 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v45 = [v44 phonemes];
  if ([v85 isEqualToString:v45])
  {
    v46 = 0;
  }

  else
  {
    v47 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v48 = [v47 phonemes];
    v46 = [v48 length] != 0;
  }

  v49 = &__NSDictionary0__struct;
  if ([v86 length])
  {
    v50 = (v37 ^ 1);
    v51 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
    if (v50 | v40 || v46)
    {
      v52 = +[AXSubsystemPronunciations sharedInstance];
      v53 = [v52 ignoreLogging];

      if ((v53 & 1) == 0)
      {
        v54 = +[AXSubsystemPronunciations identifier];
        v55 = AXLoggerForFacility();

        v56 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = AXColorizeFormatLog();
          [(AXPronunciationEntryViewController *)self userSubstitution];
          v83 = v82 = v46;
          v79 = v50;
          v81 = v40;
          v58 = _AXStringForArgs();

          if (os_log_type_enabled(v55, v56))
          {
            *buf = 138543362;
            v93 = v58;
            _os_log_impl(&dword_0, v55, v56, "%{public}@", buf, 0xCu);
          }

          v51 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
        }
      }

      v89 = v86;
      v90 = @"delete";
      v59 = [NSArray arrayWithObjects:&v89 count:1, v79, v81, v82, v83];
      v91 = v59;
      v49 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    }
  }

  else
  {
    v51 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
  }

  v60 = [v51[511] sharedInstance];
  v61 = [v60 ignoreLogging];

  if ((v61 & 1) == 0)
  {
    v62 = [v51[511] identifier];
    v63 = AXLoggerForFacility();

    v64 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = AXColorizeFormatLog();
      v79 = [(AXPronunciationEntryViewController *)self userSubstitution];
      v66 = _AXStringForArgs();

      if (os_log_type_enabled(v63, v64))
      {
        *buf = 138543362;
        v93 = v66;
        _os_log_impl(&dword_0, v63, v64, "%{public}@", buf, 0xCu);
      }
    }

    v51 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
  }

  v67 = [v51[511] sharedInstance];
  v68 = [v67 ignoreLogging];

  if ((v68 & 1) == 0)
  {
    v69 = [v51[511] identifier];
    v70 = AXLoggerForFacility();

    v71 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = AXColorizeFormatLog();
      v80 = v24;
      v73 = _AXStringForArgs();
      if (os_log_type_enabled(v70, v71))
      {
        *buf = 138543362;
        v93 = v73;
        _os_log_impl(&dword_0, v70, v71, "%{public}@", buf, 0xCu);
      }
    }
  }

  v74 = +[AXSettings sharedInstance];
  [v74 setCustomPronunciationSubstitutions:v24];

  v75 = [(AXPronunciationEntryViewController *)self _assetUpdaterClient];
  v76 = +[AXAccessQueue mainAccessQueue];
  [v75 sendAsynchronousMessage:v49 withIdentifier:1 targetAccessQueue:v76 completion:0];

  v77 = +[NSNotificationCenter defaultCenter];
  [v77 postNotificationName:@"AXVoiceOverReloadPronunciations" object:0];

  return 1;
}

id __43__AXPronunciationEntryViewController__save__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) userSubstitution];
  v5 = [v4 uuid];
  v6 = [v3 isEqual:v5];

  return v6;
}

id __43__AXPronunciationEntryViewController__save__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 originalString];
  v4 = [*(a1 + 32) userSubstitution];
  v5 = [v4 originalString];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (id)appSpecifiers
{
  appSpecifiers = self->_appSpecifiers;
  if (!appSpecifiers)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = self->_appSpecifiers;
    self->_appSpecifiers = v4;

    AXGenerateAppNameSpecifiers(self, self->_appSpecifiers, 1);
    appSpecifiers = self->_appSpecifiers;
  }

  return appSpecifiers;
}

- (void)_showAppCombinationsAnimated:(BOOL)a3
{
  if (!self->_appSpecifiers)
  {
    v4 = a3;
    v6 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
    v7 = [v6 editableTextField];
    [v7 resignFirstResponder];

    v8 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
    v9 = [v8 editableTextField];
    [v9 resignFirstResponder];

    v11 = [(AXPronunciationEntryViewController *)self appSpecifiers];
    v10 = [(AXPronunciationEntryViewController *)self specifierForID:@"AppApplies"];
    [(AXPronunciationEntryViewController *)self insertContiguousSpecifiers:v11 afterSpecifier:v10 animated:v4];
  }
}

- (void)_hideAppCombinations
{
  [(AXPronunciationEntryViewController *)self removeContiguousSpecifiers:self->_appSpecifiers animated:1];
  appSpecifiers = self->_appSpecifiers;
  self->_appSpecifiers = 0;
}

- (void)_setOriginalString:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(AXPronunciationEntryViewController *)self userSubstitution];
  [v6 setOriginalString:v5];

  [(AXPronunciationEntryViewController *)self _save];
}

- (id)_originalString:(id)a3
{
  v3 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v4 = [v3 originalString];

  return v4;
}

- (void)_setReplacementString:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(AXPronunciationEntryViewController *)self userSubstitution];
  [v6 setPhonemes:0];

  v7 = [(AXPronunciationEntryViewController *)self userSubstitution];
  [v7 setReplacementString:v5];

  [(AXPronunciationEntryViewController *)self _save];
}

- (id)_replacementString:(id)a3
{
  v4 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v5 = [v4 phonemes];

  v6 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v7 = v6;
  if (v5)
  {
    [v6 phonemes];
  }

  else
  {
    [v6 replacementString];
  }
  v8 = ;

  return v8;
}

- (void)_setIgnoresCase:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [(AXPronunciationEntryViewController *)self userSubstitution];
  [v6 setIgnoreCase:v5];

  [(AXPronunciationEntryViewController *)self _save];
}

- (id)_ignoresCase:(id)a3
{
  v3 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 ignoreCase]);

  return v4;
}

- (void)_setAppliesTo:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [v5 BOOLValue];
  v7 = [(AXPronunciationEntryViewController *)self userSubstitution];
  [v7 setAppliesToAllApps:v6];

  LOBYTE(v6) = [v5 BOOLValue];
  if (v6)
  {
    [(AXPronunciationEntryViewController *)self _hideAppCombinations];
  }

  else
  {
    [(AXPronunciationEntryViewController *)self _showAppCombinationsAnimated:1];
  }

  [(AXPronunciationEntryViewController *)self _save];
}

- (id)_appliesTo:(id)a3
{
  v3 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 appliesToAllApps]);

  return v4;
}

- (id)_language
{
  v3 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v4 = [v3 languages];
  v5 = [v4 count];

  if (v5 == &dword_0 + 1)
  {
    v6 = +[AXLanguageManager sharedInstance];
    v7 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v8 = [v7 languages];
    v9 = [v8 anyObject];
    v10 = [v6 dialectForLanguageID:v9];
    v11 = [v10 languageNameAndLocaleInCurrentLocale];
  }

  else
  {
    v12 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v13 = [v12 languages];
    v14 = [v13 count];

    if (v14)
    {
      v15 = @"PRONUNCIATION_MULTIPLE_LANGUAGES_SELECTED";
    }

    else
    {
      v15 = @"ALL_LANGUAGES";
    }

    v11 = settingsLocString(v15, @"VoiceOverSettings");
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXPronunciationEntryViewController *)self specifierForIndexPath:v7];
  v9 = PSIDKey;
  v10 = [v8 objectForKeyedSubscript:PSIDKey];
  v11 = [v10 isEqualToString:@"Languages"];

  if (v11)
  {
    v12 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v13 = [v12 languages];
    [v8 setObject:v13 forKeyedSubscript:@"Languages"];

    v14 = AXPronunciationLanguageListController;
LABEL_5:
    v21 = objc_alloc_init(v14);
    [v21 setSpecifier:v8];
    [v21 setDelegate:self];
    [(AXPronunciationEntryViewController *)self showController:v21];
    goto LABEL_6;
  }

  v15 = [v8 objectForKeyedSubscript:v9];
  v16 = [v15 isEqualToString:@"Voices"];

  if (v16)
  {
    v17 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v18 = [v17 voiceIds];
    [v8 setObject:v18 forKeyedSubscript:@"VoiceIds"];

    v19 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v20 = [v19 languages];
    [v8 setObject:v20 forKeyedSubscript:@"Languages"];

    v14 = AXPronunciationVoiceListController;
    goto LABEL_5;
  }

  v27.receiver = self;
  v27.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v27 tableView:v6 didSelectRowAtIndexPath:v7];
  v21 = [v8 propertyForKey:@"BundleIdentifier"];
  if (v21)
  {
    v22 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v23 = [v22 bundleIdentifiers];
    v24 = [v23 mutableCopy];

    if (!v24)
    {
      v24 = objc_alloc_init(NSMutableSet);
    }

    v25 = [v6 cellForRowAtIndexPath:v7];
    if ([v24 containsObject:v21])
    {
      [v25 setChecked:0];
      [v24 removeObject:v21];
    }

    else
    {
      [v25 setChecked:1];
      [v24 addObject:v21];
    }

    v26 = [(AXPronunciationEntryViewController *)self userSubstitution];
    [v26 setBundleIdentifiers:v24];

    [(AXPronunciationEntryViewController *)self _save];
  }

LABEL_6:
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v16 = a4;
  v7 = [(AXPronunciationEntryViewController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"BundleIdentifier"];
  if (v8)
  {
    v9 = [(AXPronunciationEntryViewController *)self userSubstitution];
    v10 = [v9 bundleIdentifiers];
    [v16 setChecked:{objc_msgSend(v10, "containsObject:", v8)}];
  }

  v11 = [v7 objectForKeyedSubscript:PSIDKey];
  v12 = [v11 isEqual:@"InputCell"];

  if (v12)
  {
    [v16 setAccessibilityTraits:UIAccessibilityTraitStartsMediaSession | UIAccessibilityTraitButton];
    v13 = settingsLocString(@"DICTATE_HINT", @"VoiceOverSettings");
    [v16 setAccessibilityHint:v13];

    v14 = v16;
    v15 = [v14 dictateButton];
    [v15 addTarget:self action:"_dictateButtonTapped:" forControlEvents:64];

    [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus:v14];
  }

  else
  {
    [v16 setAccessibilityTraits:UIAccessibilityTraitButton];
  }
}

- (void)pronunciationSuggestionsViewController:(id)a3 didSelectPhonemes:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 length])
  {
    v8 = [(AXPronunciationEntryViewController *)self userSubstitution];
    [v8 setPhonemes:v6];

    [(AXPronunciationEntryViewController *)self _save];
    v9 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
    [v9 setShowsPhonemes:1];

    AXPerformBlockOnMainThreadAfterDelay();
  }

  v10 = [(AXPronunciationEntryViewController *)self _canSpeakSample];
  v11 = [(AXPronunciationEntryViewController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  [v12 setEnabled:v10];

  [(AXPronunciationEntryViewController *)self _updatePlayButtonTraits];
  [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus];
  v13 = [(AXPronunciationEntryViewController *)self specifierForID:@"InputCell"];
  [(AXPronunciationEntryViewController *)self reloadSpecifier:v13 animated:1];

  v14 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
  [v14 layoutSubviews];

  [v7 dismissViewControllerAnimated:1 completion:0];
}

- (void)pronunciationVoiceListController:(id)a3 didSelectVoices:(id)a4
{
  v5 = a4;
  v7 = [(AXPronunciationEntryViewController *)self userSubstitution];
  [v7 setVoiceIds:v5];
  v6 = [(AXPronunciationEntryViewController *)self specifierForID:@"Voices"];
  [v6 setProperty:v5 forKey:@"VoiceIds"];

  [(AXPronunciationEntryViewController *)self reloadSpecifier:v6];
  [(AXPronunciationEntryViewController *)self _save];
}

- (void)pronunciationLanguageListController:(id)a3 didSelectLanguages:(id)a4
{
  v14 = a4;
  v5 = [(AXPronunciationEntryViewController *)self userSubstitution];
  if (![v14 count])
  {
    [v5 setVoiceIds:0];
  }

  [v5 setLanguages:v14];
  v6 = [v5 originalString];
  if (![v6 length])
  {

    goto LABEL_9;
  }

  v7 = [v5 phonemes];
  if ([v7 length])
  {
  }

  else
  {
    v8 = [v5 replacementString];
    v9 = [v8 length];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = [(AXPronunciationEntryViewController *)self _canSpeakSample];
  v11 = [(AXPronunciationEntryViewController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  [v12 setEnabled:v10];

  [(AXPronunciationEntryViewController *)self _updatePlayButtonTraits];
LABEL_9:
  [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus];
  v13 = [(AXPronunciationEntryViewController *)self specifierForID:@"Languages"];
  [v13 setProperty:v14 forKey:@"Languages"];
  [(AXPronunciationEntryViewController *)self reloadSpecifier:v13];
  [(AXPronunciationEntryViewController *)self _save];
}

- (void)editingChanged:(id)a3
{
  [(AXPronunciationEntryViewController *)self _save];

  [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
  v12 = [v11 editableTextField];
  v13 = [v12 text];
  v33 = [v13 length] != 0;

  v14 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
  v15 = [v14 editableTextField];
  v16 = [v15 text];
  v17 = [v16 length] != 0;

  v18 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v19 = [v18 phonemes];
  v20 = [v19 length];

  v21 = [v9 text];
  v22 = [v21 stringByReplacingCharactersInRange:location withString:{length, v10}];

  v23 = [v22 length] != 0;
  v24 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
  v25 = [v24 editableTextField];

  if (v25 != v9)
  {
    v26 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
    v27 = [v26 editableTextField];

    if (v27 == v9)
    {
      v28 = [(AXPronunciationEntryViewController *)self userSubstitution];
      [v28 setPhonemes:0];

      v17 = v23;
    }

    v23 = v33;
  }

  v29 = 1;
  if (!v23 && !v17 && !v20)
  {
    v29 = [(AXPronunciationEntryViewController *)self _canSpeakSample];
  }

  v30 = [(AXPronunciationEntryViewController *)self navigationItem];
  v31 = [v30 rightBarButtonItem];
  [v31 setEnabled:v29];

  [(AXPronunciationEntryViewController *)self _updatePlayButtonTraits];
  return 1;
}

- (BOOL)_canSpeakSample
{
  v3 = objc_alloc_init(TTSSpeechSynthesizer);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v5 = [v4 languages];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v3 resolvedVoiceIdentifierForLanguageCode:*(*(&v11 + 1) + 8 * i)];

        if (v9)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end