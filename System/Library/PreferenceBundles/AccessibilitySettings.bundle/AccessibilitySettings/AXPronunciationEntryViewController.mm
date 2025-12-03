@interface AXPronunciationEntryViewController
- (BOOL)_canSpeakSample;
- (BOOL)_save;
- (BOOL)_stopRecording;
- (BOOL)_supportsPronunciationDictation;
- (BOOL)_usingSupportedDictationLanguage;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (id)_appliesTo:(id)to;
- (id)_assetUpdaterClient;
- (id)_ignoresCase:(id)case;
- (id)_language;
- (id)_originalString:(id)string;
- (id)_replacementString:(id)string;
- (id)_selectedVoice:(id)voice;
- (id)appSpecifiers;
- (id)specifiers;
- (id)voicesSpecifier;
- (void)_calculateAndUpdateDictationStatus:(id)status;
- (void)_dictateButtonTapped:(id)tapped;
- (void)_handleViewHiddenStatus;
- (void)_hideAppCombinations;
- (void)_manageVoicesSelector;
- (void)_popSuggestionsController:(id)controller;
- (void)_setAppliesTo:(id)to specifier:(id)specifier;
- (void)_setIgnoresCase:(id)case specifier:(id)specifier;
- (void)_setOriginalString:(id)string specifier:(id)specifier;
- (void)_setReplacementString:(id)string specifier:(id)specifier;
- (void)_showAppCombinationsAnimated:(BOOL)animated;
- (void)_substitutionVoiceId:(id *)id andLanguage:(id *)language;
- (void)_updateDictationViewWithStatus:(int64_t)status withCell:(id)cell;
- (void)_updatePlayButtonTraits;
- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion;
- (void)assistantConnection:(id)connection requestFailedWithError:(id)error requestClass:(id)class;
- (void)dealloc;
- (void)editingChanged:(id)changed;
- (void)handlePlayButton:(id)button;
- (void)manipulateDictationView:(int64_t)view;
- (void)pronunciationLanguageListController:(id)controller didSelectLanguages:(id)languages;
- (void)pronunciationSuggestionsViewController:(id)controller didSelectPhonemes:(id)phonemes;
- (void)pronunciationVoiceListController:(id)controller didSelectVoices:(id)voices;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

  speechManager = [(AXPronunciationEntryViewController *)self speechManager];
  [speechManager setUsesAuxiliarySession:1];

  v7 = [UIBarButtonItem alloc];
  v8 = settingsLocString(@"PLAY", @"Accessibility");
  v9 = [v7 initWithTitle:v8 style:2 target:self action:"handlePlayButton:"];

  navigationItem = [(AXPronunciationEntryViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v9];

  navigationItem2 = [(AXPronunciationEntryViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  specifier = [(AXPronunciationEntryViewController *)self specifier];
  v14 = [specifier propertyForKey:@"AXVocabularyListItem"];

  if (v14)
  {
    [(AXPronunciationEntryViewController *)self setUserSubstitution:v14];
    _canSpeakSample = [(AXPronunciationEntryViewController *)self _canSpeakSample];
    navigationItem3 = [(AXPronunciationEntryViewController *)self navigationItem];
    rightBarButtonItem2 = [navigationItem3 rightBarButtonItem];
    [rightBarButtonItem2 setEnabled:_canSpeakSample];
  }

  else
  {
    v14 = objc_alloc_init(TTSSubstitution);
    v18 = +[AXLanguageManager sharedInstance];
    dialectForUserLocale = [v18 dialectForUserLocale];
    navigationItem3 = [dialectForUserLocale specificLanguageID];

    if (navigationItem3)
    {
      v20 = [NSSet setWithObject:navigationItem3];
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
  navigationItem = [(AXPronunciationEntryViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  isEnabled = [rightBarButtonItem isEnabled];

  v6 = UIAccessibilityTraitStartsMediaSession | UIAccessibilityTraitButton;
  if (isEnabled)
  {
    v7 = 0;
  }

  else
  {
    v7 = UIAccessibilityTraitNotEnabled;
  }

  navigationItem2 = [(AXPronunciationEntryViewController *)self navigationItem];
  rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem2 setAccessibilityTraits:v6 | v7];
}

- (void)_substitutionVoiceId:(id *)id andLanguage:(id *)language
{
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  voiceIds = [userSubstitution voiceIds];
  v9 = [voiceIds count];

  userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v28 = userSubstitution2;
  if (v9 != &dword_0 + 1)
  {
    languages = [userSubstitution2 languages];
    anyObject = [languages anyObject];

    if (anyObject)
    {
      v14 = anyObject;
      v15 = anyObject;
    }

    else
    {
      v15 = +[AVSpeechSynthesisVoice currentLanguageCode];
      if (UIAccessibilityIsVoiceOverRunning())
      {
        anyObject = AXLanguageCanonicalFormToGeneralLanguage();
        v16 = anyObject;
      }

      else
      {
        v17 = v15;
        anyObject = v15;
      }
    }

    *language = anyObject;
    v29 = 0;
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    v19 = &AXSpeechSourceKeyVoiceOver;
    if (!IsVoiceOverRunning)
    {
      v19 = &AXSpeechSourceKeySpeechFeatures;
    }

    v20 = *v19;
    v21 = +[AXSettings sharedInstance];
    v22 = [v21 speechVoiceIdentifierForLanguage:*language sourceKey:v20 exists:&v29];

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
    *id = v22;
LABEL_19:

    return;
  }

  voiceIds2 = [userSubstitution2 voiceIds];
  *id = [voiceIds2 anyObject];
}

- (void)handlePlayButton:(id)button
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
  editableTextField = [v9 editableTextField];
  text = [editableTextField text];
  [v6 setString:text];

  string = [v6 string];
  v13 = [string length];

  if (v13)
  {
    userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
    phonemes = [userSubstitution phonemes];

    if (phonemes)
    {
      v26 = AVSpeechSynthesisIPANotationAttribute;
      userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
      phonemes2 = [userSubstitution2 phonemes];
      v27 = phonemes2;
      v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    }

    else
    {
      v18 = 0;
    }

    v21 = [NSAttributedString alloc];
    string2 = [v6 string];
    editableTextField2 = [v21 initWithString:string2 attributes:v18];

    [v6 setAttributedString:editableTextField2];
  }

  else
  {
    v18 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
    editableTextField2 = [v18 editableTextField];
    text2 = [editableTextField2 text];
    [v6 setString:text2];
  }

  speechManager = [(AXPronunciationEntryViewController *)self speechManager];
  [speechManager dispatchSpeechAction:v6];

  [(AXPronunciationEntryViewController *)self setLastAction:v6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v7 viewWillAppear:appear];
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  appliesToAllApps = [userSubstitution appliesToAllApps];

  if ((appliesToAllApps & 1) == 0)
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

  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  voiceIds = [userSubstitution voiceIds];
  [v4 setObject:voiceIds forKeyedSubscript:@"VoiceIds"];

  userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
  languages = [userSubstitution2 languages];
  [v4 setObject:languages forKeyedSubscript:@"Languages"];

  [v4 setObject:@"Voices" forKeyedSubscript:PSIDKey];

  return v4;
}

- (void)_manageVoicesSelector
{
  v9 = [(AXPronunciationEntryViewController *)self specifierForID:@"Voices"];
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  languages = [userSubstitution languages];
  v5 = [languages count];

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
    voicesSpecifier = [(AXPronunciationEntryViewController *)self voicesSpecifier];
    [(AXPronunciationEntryViewController *)self insertSpecifier:voicesSpecifier afterSpecifier:v7];
  }

  v6 = v9;
LABEL_7:
}

- (id)_selectedVoice:(id)voice
{
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  voiceIds = [userSubstitution voiceIds];
  v6 = [voiceIds count];

  if (v6 == &dword_0 + 1)
  {
    userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
    voiceIds2 = [userSubstitution2 voiceIds];
    anyObject = [voiceIds2 anyObject];
    v10 = [AVSpeechSynthesisVoice _voiceFromInternalVoiceListWithIdentifier:anyObject];
    name = [v10 name];
  }

  else
  {
    userSubstitution3 = [(AXPronunciationEntryViewController *)self userSubstitution];
    voiceIds3 = [userSubstitution3 voiceIds];
    v14 = [voiceIds3 count];

    if (v14)
    {
      v15 = @"PRONUNCIATION_MULTIPLE_LANGUAGES_SELECTED";
    }

    else
    {
      v15 = @"ALL_LANGUAGES";
    }

    name = settingsLocString(v15, @"VoiceOverSettings");
  }

  return name;
}

- (BOOL)_supportsPronunciationDictation
{
  _usingSupportedDictationLanguage = [(AXPronunciationEntryViewController *)self _usingSupportedDictationLanguage];
  if (_usingSupportedDictationLanguage)
  {
    pronunciationHelper = self->_pronunciationHelper;

    LOBYTE(_usingSupportedDictationLanguage) = [(AXSpeechPronunciationHelper *)pronunciationHelper supportsPronunciationSessions];
  }

  return _usingSupportedDictationLanguage;
}

- (BOOL)_usingSupportedDictationLanguage
{
  v3 = +[TTSSpeechSynthesizer supportedIPAPhonemeLanguages];
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  languages = [userSubstitution languages];
  v6 = [languages count];

  if (v6)
  {
    userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
    languages2 = [userSubstitution2 languages];
    v9 = [languages2 count];

    v14 = 0;
    if (v9 == &dword_0 + 1)
    {
      userSubstitution3 = [(AXPronunciationEntryViewController *)self userSubstitution];
      languages3 = [userSubstitution3 languages];
      anyObject = [languages3 anyObject];
      v13 = [v3 containsObject:anyObject];

      if (v13)
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v15 = +[AXLanguageManager sharedInstance];
    dialectForUserLocale = [v15 dialectForUserLocale];
    specificLanguageID = [dialectForUserLocale specificLanguageID];
    v14 = [v3 containsObject:specificLanguageID];
  }

  return v14;
}

- (void)manipulateDictationView:(int64_t)view
{
  dictationView = self->_dictationView;
  if ((view - 3) > 1)
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
    window = [v5 window];

    v7 = +[UIKeyboardImpl sharedInstance];
    [v7 bounds];
    x = v8;
    y = v10;
    v13 = v12;
    v15 = v14;

    if (!window)
    {
      view = [(AXPronunciationEntryViewController *)self view];
      window = [view window];

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
    [window bounds];
    v33 = [[UIView alloc] initWithFrame:{v27, v32 - v31, v29, v31}];
    v34 = self->_dictationBackgroundView;
    self->_dictationBackgroundView = v33;

    v35 = +[UIColor darkGrayColor];
    [(UIView *)self->_dictationBackgroundView setBackgroundColor:v35];

    [window addSubview:self->_dictationBackgroundView];
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

- (void)_updateDictationViewWithStatus:(int64_t)status withCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    v11 = cellCopy;
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

  [(AXPronunciationEntryViewController *)self manipulateDictationView:status];
  if (status <= 1)
  {
    v8 = v11;
    if (status)
    {
      if (status != 1)
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
    switch(status)
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

- (void)_calculateAndUpdateDictationStatus:(id)status
{
  statusCopy = status;
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

  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  originalString = [userSubstitution originalString];
  if ([originalString length])
  {

LABEL_8:
    v4 = 2;
    goto LABEL_9;
  }

  v7 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
  editableTextField = [v7 editableTextField];
  text = [editableTextField text];
  v10 = [text length];

  if (v10)
  {
    goto LABEL_8;
  }

  v4 = 0;
LABEL_9:
  [(AXPronunciationEntryViewController *)self _updateDictationViewWithStatus:v4 withCell:statusCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v18 viewDidAppear:appear];
  v4 = [(AXPronunciationEntryViewController *)self specifierForID:@"OriginalString"];
  v5 = [(AXPronunciationEntryViewController *)self cellForSpecifier:v4];

  textField = [v5 textField];
  [textField setDelegate:self];

  textField2 = [v5 textField];
  [textField2 _accessibilitySetBoolValue:1 forKey:UIAccessibilityTokenIgnoreSubstitution];

  textField3 = [v5 textField];
  [textField3 addTarget:self action:"editingChanged:" forControlEvents:0x20000];

  textField4 = [v5 textField];
  text = [textField4 text];
  v11 = [text length];

  if (!v11)
  {
    [v5 becomeFirstResponder];
  }

  v12 = [(AXPronunciationEntryViewController *)self specifierForID:@"InputCell"];
  v13 = [(AXPronunciationEntryViewController *)self cellForSpecifier:v12];

  textField5 = [v13 textField];
  [textField5 setDelegate:self];

  textField6 = [v13 textField];
  [textField6 addTarget:self action:"editingChanged:" forControlEvents:0x20000];

  v16 = [(AXPronunciationEntryViewController *)self specifierForID:@"InputCell"];
  v17 = [(AXPronunciationEntryViewController *)self cellForSpecifier:v16];

  [v17 setListeningDuration:4.0];
}

- (void)_handleViewHiddenStatus
{
  speechManager = [(AXPronunciationEntryViewController *)self speechManager];
  [speechManager stopSpeaking];

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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(AXPronunciationEntryViewController *)self _handleViewHiddenStatus];
  v5.receiver = self;
  v5.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)dealloc
{
  speechManager = [(AXPronunciationEntryViewController *)self speechManager];
  [speechManager stopSpeaking];

  speechManager2 = [(AXPronunciationEntryViewController *)self speechManager];
  [speechManager2 tearDown];

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

    userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
    languages = [userSubstitution languages];
    [v15 setObject:languages forKeyedSubscript:@"Languages"];

    [v15 setObject:@"Languages" forKeyedSubscript:v10];
    [v5 addObject:v15];
    userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
    languages2 = [userSubstitution2 languages];
    v20 = [languages2 count];

    if (v20)
    {
      voicesSpecifier = [(AXPronunciationEntryViewController *)self voicesSpecifier];
      [v5 addObject:voicesSpecifier];
    }

    v22 = settingsLocString(@"PRONUNCIATION_IGNORE_CASE", @"VoiceOverSettings");
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"_setIgnoresCase:specifier:" get:"_ignoresCase:" detail:0 cell:6 edit:0];

    [v5 addObject:v23];
    v24 = settingsLocString(@"APPLIES_TO", @"VoiceOverSettings");
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"_setAppliesTo:specifier:" get:"_appliesTo:" detail:0 cell:6 edit:0];

    [v25 setObject:@"AppApplies" forKeyedSubscript:v10];
    [v5 addObject:v25];
    userSubstitution3 = [(AXPronunciationEntryViewController *)self userSubstitution];
    if (userSubstitution3)
    {
      v27 = userSubstitution3;
      userSubstitution4 = [(AXPronunciationEntryViewController *)self userSubstitution];
      appliesToAllApps = [userSubstitution4 appliesToAllApps];

      if ((appliesToAllApps & 1) == 0)
      {
        appSpecifiers = [(AXPronunciationEntryViewController *)self appSpecifiers];
        [v5 addObjectsFromArray:appSpecifiers];
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

- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  v7 = +[AXSubsystemPronunciations sharedInstance];
  ignoreLogging = [v7 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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

- (void)assistantConnection:(id)connection requestFailedWithError:(id)error requestClass:(id)class
{
  errorCopy = error;
  v7 = +[AXSubsystemPronunciations sharedInstance];
  ignoreLogging = [v7 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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

- (void)_popSuggestionsController:(id)controller
{
  controllerCopy = controller;
  v5 = +[AXSubsystemPronunciations sharedInstance];
  ignoreLogging = [v5 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v7 = +[AXSubsystemPronunciations identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v20 = controllerCopy;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v24 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([controllerCopy count] == &dword_0 + 1)
  {
    firstObject = [controllerCopy firstObject];
    [(AXPronunciationEntryViewController *)self pronunciationSuggestionsViewController:0 didSelectPhonemes:firstObject];
LABEL_11:

    goto LABEL_12;
  }

  if ([controllerCopy count] >= 2)
  {
    v21 = 0;
    v22 = 0;
    [(AXPronunciationEntryViewController *)self _substitutionVoiceId:&v22 andLanguage:&v21];
    firstObject = v22;
    v13 = v21;
    v14 = [[AXPronunciationSuggestionsViewController alloc] initWithSuggestions:controllerCopy];
    [(AXPronunciationSuggestionsViewController *)v14 setVoiceId:firstObject];
    [(AXPronunciationSuggestionsViewController *)v14 setLanguage:v13];

    [(AXPronunciationSuggestionsViewController *)v14 setDelegate:self];
    v15 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
    editableTextField = [v15 editableTextField];
    text = [editableTextField text];
    v18 = [PSSpecifier preferenceSpecifierNamed:text target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(AXPronunciationSuggestionsViewController *)v14 setSpecifier:v18];

    v19 = [[UINavigationController alloc] initWithRootViewController:v14];
    [(AXPronunciationEntryViewController *)self presentViewController:v19 animated:1 completion:0];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_dictateButtonTapped:(id)tapped
{
  tappedCopy = tapped;
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
    editableTextField = [v8 editableTextField];
    text = [editableTextField text];
    [v7 setOrthography:text];

    v11 = +[AXSubsystemPronunciations sharedInstance];
    LOBYTE(editableTextField) = [v11 ignoreLogging];

    if ((editableTextField & 1) == 0)
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

    userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
    languages = [userSubstitution languages];
    anyObject = [languages anyObject];
    [v7 setLanguage:anyObject];

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
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  originalString = [userSubstitution originalString];

  userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
  replacementString = [userSubstitution2 replacementString];

  userSubstitution3 = [(AXPronunciationEntryViewController *)self userSubstitution];
  phonemes = [userSubstitution3 phonemes];

  v7 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
  v8 = v7;
  if (v7)
  {
    editableTextField = [v7 editableTextField];
    text = [editableTextField text];
    userSubstitution4 = [(AXPronunciationEntryViewController *)self userSubstitution];
    [userSubstitution4 setOriginalString:text];
  }

  userSubstitution5 = [(AXPronunciationEntryViewController *)self userSubstitution];
  phonemes2 = [userSubstitution5 phonemes];

  if (phonemes2)
  {
    userSubstitution6 = [(AXPronunciationEntryViewController *)self userSubstitution];
    [userSubstitution6 setReplacementString:0];
  }

  else
  {
    v15 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
    userSubstitution6 = v15;
    if (v15)
    {
      editableTextField2 = [v15 editableTextField];
      text2 = [editableTextField2 text];
      userSubstitution7 = [(AXPronunciationEntryViewController *)self userSubstitution];
      [userSubstitution7 setReplacementString:text2];
    }
  }

  userSubstitution8 = [(AXPronunciationEntryViewController *)self userSubstitution];
  originalString2 = [userSubstitution8 originalString];
  v21 = [originalString2 length];

  v22 = +[AXSettings sharedInstance];
  customPronunciationSubstitutions = [v22 customPronunciationSubstitutions];
  v24 = [customPronunciationSubstitutions mutableCopy];

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

      userSubstitution9 = [(AXPronunciationEntryViewController *)self userSubstitution];
      [v24 addObject:userSubstitution9];
      goto LABEL_13;
    }
  }

  v27 = v25;
  if (v21)
  {
    userSubstitution9 = [(AXPronunciationEntryViewController *)self userSubstitution];
    [v24 replaceObjectAtIndex:v27 withObject:userSubstitution9];
LABEL_13:

    goto LABEL_21;
  }

  v28 = +[AXSubsystemPronunciations sharedInstance];
  ignoreLogging = [v28 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v30 = +[AXSubsystemPronunciations identifier];
    v31 = AXLoggerForFacility();

    v32 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = AXColorizeFormatLog();
      [(AXPronunciationEntryViewController *)self userSubstitution];
      v81 = userSubstitution15 = v27;
      v34 = _AXStringForArgs();

      if (os_log_type_enabled(v31, v32))
      {
        *buf = 138543362;
        v93 = v34;
        _os_log_impl(&dword_0, v31, v32, "%{public}@", buf, 0xCu);
      }
    }
  }

  [v24 removeObjectAtIndex:{v27, userSubstitution15, v81}];
LABEL_21:
  userSubstitution10 = [(AXPronunciationEntryViewController *)self userSubstitution];
  originalString3 = [userSubstitution10 originalString];
  v37 = [originalString isEqualToString:originalString3];

  userSubstitution11 = [(AXPronunciationEntryViewController *)self userSubstitution];
  replacementString2 = [userSubstitution11 replacementString];
  v84 = v8;
  if ([replacementString isEqualToString:replacementString2])
  {
    v40 = 0;
  }

  else
  {
    userSubstitution12 = [(AXPronunciationEntryViewController *)self userSubstitution];
    replacementString3 = [userSubstitution12 replacementString];
    v40 = [replacementString3 length] != 0;
  }

  v43 = replacementString;

  userSubstitution13 = [(AXPronunciationEntryViewController *)self userSubstitution];
  phonemes3 = [userSubstitution13 phonemes];
  if ([phonemes isEqualToString:phonemes3])
  {
    v46 = 0;
  }

  else
  {
    userSubstitution14 = [(AXPronunciationEntryViewController *)self userSubstitution];
    phonemes4 = [userSubstitution14 phonemes];
    v46 = [phonemes4 length] != 0;
  }

  v49 = &__NSDictionary0__struct;
  if ([originalString length])
  {
    v50 = (v37 ^ 1);
    v51 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
    if (v50 | v40 || v46)
    {
      v52 = +[AXSubsystemPronunciations sharedInstance];
      ignoreLogging2 = [v52 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        v54 = +[AXSubsystemPronunciations identifier];
        v55 = AXLoggerForFacility();

        v56 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = AXColorizeFormatLog();
          [(AXPronunciationEntryViewController *)self userSubstitution];
          v83 = v82 = v46;
          userSubstitution15 = v50;
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

      v89 = originalString;
      v90 = @"delete";
      v59 = [NSArray arrayWithObjects:&v89 count:1, userSubstitution15, v81, v82, v83];
      v91 = v59;
      v49 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    }
  }

  else
  {
    v51 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
  }

  sharedInstance = [v51[511] sharedInstance];
  ignoreLogging3 = [sharedInstance ignoreLogging];

  if ((ignoreLogging3 & 1) == 0)
  {
    identifier = [v51[511] identifier];
    v63 = AXLoggerForFacility();

    v64 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = AXColorizeFormatLog();
      userSubstitution15 = [(AXPronunciationEntryViewController *)self userSubstitution];
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

  sharedInstance2 = [v51[511] sharedInstance];
  ignoreLogging4 = [sharedInstance2 ignoreLogging];

  if ((ignoreLogging4 & 1) == 0)
  {
    identifier2 = [v51[511] identifier];
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

  _assetUpdaterClient = [(AXPronunciationEntryViewController *)self _assetUpdaterClient];
  v76 = +[AXAccessQueue mainAccessQueue];
  [_assetUpdaterClient sendAsynchronousMessage:v49 withIdentifier:1 targetAccessQueue:v76 completion:0];

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

- (void)_showAppCombinationsAnimated:(BOOL)animated
{
  if (!self->_appSpecifiers)
  {
    animatedCopy = animated;
    v6 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
    editableTextField = [v6 editableTextField];
    [editableTextField resignFirstResponder];

    v8 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
    editableTextField2 = [v8 editableTextField];
    [editableTextField2 resignFirstResponder];

    appSpecifiers = [(AXPronunciationEntryViewController *)self appSpecifiers];
    v10 = [(AXPronunciationEntryViewController *)self specifierForID:@"AppApplies"];
    [(AXPronunciationEntryViewController *)self insertContiguousSpecifiers:appSpecifiers afterSpecifier:v10 animated:animatedCopy];
  }
}

- (void)_hideAppCombinations
{
  [(AXPronunciationEntryViewController *)self removeContiguousSpecifiers:self->_appSpecifiers animated:1];
  appSpecifiers = self->_appSpecifiers;
  self->_appSpecifiers = 0;
}

- (void)_setOriginalString:(id)string specifier:(id)specifier
{
  stringCopy = string;
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  [userSubstitution setOriginalString:stringCopy];

  [(AXPronunciationEntryViewController *)self _save];
}

- (id)_originalString:(id)string
{
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  originalString = [userSubstitution originalString];

  return originalString;
}

- (void)_setReplacementString:(id)string specifier:(id)specifier
{
  stringCopy = string;
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  [userSubstitution setPhonemes:0];

  userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
  [userSubstitution2 setReplacementString:stringCopy];

  [(AXPronunciationEntryViewController *)self _save];
}

- (id)_replacementString:(id)string
{
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  phonemes = [userSubstitution phonemes];

  userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
  v7 = userSubstitution2;
  if (phonemes)
  {
    [userSubstitution2 phonemes];
  }

  else
  {
    [userSubstitution2 replacementString];
  }
  v8 = ;

  return v8;
}

- (void)_setIgnoresCase:(id)case specifier:(id)specifier
{
  bOOLValue = [case BOOLValue];
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  [userSubstitution setIgnoreCase:bOOLValue];

  [(AXPronunciationEntryViewController *)self _save];
}

- (id)_ignoresCase:(id)case
{
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userSubstitution ignoreCase]);

  return v4;
}

- (void)_setAppliesTo:(id)to specifier:(id)specifier
{
  toCopy = to;
  bOOLValue = [toCopy BOOLValue];
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  [userSubstitution setAppliesToAllApps:bOOLValue];

  LOBYTE(bOOLValue) = [toCopy BOOLValue];
  if (bOOLValue)
  {
    [(AXPronunciationEntryViewController *)self _hideAppCombinations];
  }

  else
  {
    [(AXPronunciationEntryViewController *)self _showAppCombinationsAnimated:1];
  }

  [(AXPronunciationEntryViewController *)self _save];
}

- (id)_appliesTo:(id)to
{
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userSubstitution appliesToAllApps]);

  return v4;
}

- (id)_language
{
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  languages = [userSubstitution languages];
  v5 = [languages count];

  if (v5 == &dword_0 + 1)
  {
    v6 = +[AXLanguageManager sharedInstance];
    userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
    languages2 = [userSubstitution2 languages];
    anyObject = [languages2 anyObject];
    v10 = [v6 dialectForLanguageID:anyObject];
    languageNameAndLocaleInCurrentLocale = [v10 languageNameAndLocaleInCurrentLocale];
  }

  else
  {
    userSubstitution3 = [(AXPronunciationEntryViewController *)self userSubstitution];
    languages3 = [userSubstitution3 languages];
    v14 = [languages3 count];

    if (v14)
    {
      v15 = @"PRONUNCIATION_MULTIPLE_LANGUAGES_SELECTED";
    }

    else
    {
      v15 = @"ALL_LANGUAGES";
    }

    languageNameAndLocaleInCurrentLocale = settingsLocString(v15, @"VoiceOverSettings");
  }

  return languageNameAndLocaleInCurrentLocale;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AXPronunciationEntryViewController *)self specifierForIndexPath:pathCopy];
  v9 = PSIDKey;
  v10 = [v8 objectForKeyedSubscript:PSIDKey];
  v11 = [v10 isEqualToString:@"Languages"];

  if (v11)
  {
    userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
    languages = [userSubstitution languages];
    [v8 setObject:languages forKeyedSubscript:@"Languages"];

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
    userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
    voiceIds = [userSubstitution2 voiceIds];
    [v8 setObject:voiceIds forKeyedSubscript:@"VoiceIds"];

    userSubstitution3 = [(AXPronunciationEntryViewController *)self userSubstitution];
    languages2 = [userSubstitution3 languages];
    [v8 setObject:languages2 forKeyedSubscript:@"Languages"];

    v14 = AXPronunciationVoiceListController;
    goto LABEL_5;
  }

  v27.receiver = self;
  v27.super_class = AXPronunciationEntryViewController;
  [(AXPronunciationEntryViewController *)&v27 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v21 = [v8 propertyForKey:@"BundleIdentifier"];
  if (v21)
  {
    userSubstitution4 = [(AXPronunciationEntryViewController *)self userSubstitution];
    bundleIdentifiers = [userSubstitution4 bundleIdentifiers];
    v24 = [bundleIdentifiers mutableCopy];

    if (!v24)
    {
      v24 = objc_alloc_init(NSMutableSet);
    }

    v25 = [viewCopy cellForRowAtIndexPath:pathCopy];
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

    userSubstitution5 = [(AXPronunciationEntryViewController *)self userSubstitution];
    [userSubstitution5 setBundleIdentifiers:v24];

    [(AXPronunciationEntryViewController *)self _save];
  }

LABEL_6:
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(AXPronunciationEntryViewController *)self specifierForIndexPath:path];
  v8 = [v7 propertyForKey:@"BundleIdentifier"];
  if (v8)
  {
    userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
    bundleIdentifiers = [userSubstitution bundleIdentifiers];
    [cellCopy setChecked:{objc_msgSend(bundleIdentifiers, "containsObject:", v8)}];
  }

  v11 = [v7 objectForKeyedSubscript:PSIDKey];
  v12 = [v11 isEqual:@"InputCell"];

  if (v12)
  {
    [cellCopy setAccessibilityTraits:UIAccessibilityTraitStartsMediaSession | UIAccessibilityTraitButton];
    v13 = settingsLocString(@"DICTATE_HINT", @"VoiceOverSettings");
    [cellCopy setAccessibilityHint:v13];

    v14 = cellCopy;
    dictateButton = [v14 dictateButton];
    [dictateButton addTarget:self action:"_dictateButtonTapped:" forControlEvents:64];

    [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus:v14];
  }

  else
  {
    [cellCopy setAccessibilityTraits:UIAccessibilityTraitButton];
  }
}

- (void)pronunciationSuggestionsViewController:(id)controller didSelectPhonemes:(id)phonemes
{
  phonemesCopy = phonemes;
  controllerCopy = controller;
  if ([phonemesCopy length])
  {
    userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
    [userSubstitution setPhonemes:phonemesCopy];

    [(AXPronunciationEntryViewController *)self _save];
    v9 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
    [v9 setShowsPhonemes:1];

    AXPerformBlockOnMainThreadAfterDelay();
  }

  _canSpeakSample = [(AXPronunciationEntryViewController *)self _canSpeakSample];
  navigationItem = [(AXPronunciationEntryViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:_canSpeakSample];

  [(AXPronunciationEntryViewController *)self _updatePlayButtonTraits];
  [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus];
  v13 = [(AXPronunciationEntryViewController *)self specifierForID:@"InputCell"];
  [(AXPronunciationEntryViewController *)self reloadSpecifier:v13 animated:1];

  v14 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
  [v14 layoutSubviews];

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)pronunciationVoiceListController:(id)controller didSelectVoices:(id)voices
{
  voicesCopy = voices;
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  [userSubstitution setVoiceIds:voicesCopy];
  v6 = [(AXPronunciationEntryViewController *)self specifierForID:@"Voices"];
  [v6 setProperty:voicesCopy forKey:@"VoiceIds"];

  [(AXPronunciationEntryViewController *)self reloadSpecifier:v6];
  [(AXPronunciationEntryViewController *)self _save];
}

- (void)pronunciationLanguageListController:(id)controller didSelectLanguages:(id)languages
{
  languagesCopy = languages;
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  if (![languagesCopy count])
  {
    [userSubstitution setVoiceIds:0];
  }

  [userSubstitution setLanguages:languagesCopy];
  originalString = [userSubstitution originalString];
  if (![originalString length])
  {

    goto LABEL_9;
  }

  phonemes = [userSubstitution phonemes];
  if ([phonemes length])
  {
  }

  else
  {
    replacementString = [userSubstitution replacementString];
    v9 = [replacementString length];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  _canSpeakSample = [(AXPronunciationEntryViewController *)self _canSpeakSample];
  navigationItem = [(AXPronunciationEntryViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:_canSpeakSample];

  [(AXPronunciationEntryViewController *)self _updatePlayButtonTraits];
LABEL_9:
  [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus];
  v13 = [(AXPronunciationEntryViewController *)self specifierForID:@"Languages"];
  [v13 setProperty:languagesCopy forKey:@"Languages"];
  [(AXPronunciationEntryViewController *)self reloadSpecifier:v13];
  [(AXPronunciationEntryViewController *)self _save];
}

- (void)editingChanged:(id)changed
{
  [(AXPronunciationEntryViewController *)self _save];

  [(AXPronunciationEntryViewController *)self _calculateAndUpdateDictationStatus];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  v11 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
  editableTextField = [v11 editableTextField];
  text = [editableTextField text];
  v33 = [text length] != 0;

  v14 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
  editableTextField2 = [v14 editableTextField];
  text2 = [editableTextField2 text];
  v17 = [text2 length] != 0;

  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  phonemes = [userSubstitution phonemes];
  v20 = [phonemes length];

  text3 = [fieldCopy text];
  v22 = [text3 stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  v23 = [v22 length] != 0;
  v24 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"OriginalString"];
  editableTextField3 = [v24 editableTextField];

  if (editableTextField3 != fieldCopy)
  {
    v26 = [(AXPronunciationEntryViewController *)self cellForSpecifierID:@"InputCell"];
    editableTextField4 = [v26 editableTextField];

    if (editableTextField4 == fieldCopy)
    {
      userSubstitution2 = [(AXPronunciationEntryViewController *)self userSubstitution];
      [userSubstitution2 setPhonemes:0];

      v17 = v23;
    }

    v23 = v33;
  }

  _canSpeakSample = 1;
  if (!v23 && !v17 && !v20)
  {
    _canSpeakSample = [(AXPronunciationEntryViewController *)self _canSpeakSample];
  }

  navigationItem = [(AXPronunciationEntryViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:_canSpeakSample];

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
  userSubstitution = [(AXPronunciationEntryViewController *)self userSubstitution];
  languages = [userSubstitution languages];

  v6 = [languages countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(languages);
        }

        v9 = [v3 resolvedVoiceIdentifierForLanguageCode:*(*(&v11 + 1) + 8 * i)];

        if (v9)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [languages countByEnumeratingWithState:&v11 objects:v15 count:16];
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