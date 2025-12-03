@interface AXPronunciationSuggestionsViewController
- (AXPronunciationSuggestionsViewController)initWithSuggestions:(id)suggestions;
- (AXPronunciationSuggestionsViewControllerDelegate)delegate;
- (id)specifiers;
- (void)cleanupSynthesizer;
- (void)dealloc;
- (void)handleCancelButtonTapped:(id)tapped;
- (void)handleDoneButtonTapped:(id)tapped;
- (void)speakPhonemes:(id)phonemes;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AXPronunciationSuggestionsViewController

- (AXPronunciationSuggestionsViewController)initWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if (![suggestionsCopy count])
  {
    _AXAssert();
  }

  v13.receiver = self;
  v13.super_class = AXPronunciationSuggestionsViewController;
  v5 = [(AXPronunciationSuggestionsViewController *)&v13 init];
  if (v5)
  {
    v6 = [NSSet setWithArray:suggestionsCopy];
    allObjects = [v6 allObjects];
    [(AXPronunciationSuggestionsViewController *)v5 setSuggestions:allObjects];

    v8 = objc_alloc_init(TTSSpeechManager);
    [(AXPronunciationSuggestionsViewController *)v5 setSpeechManager:v8];

    speechManager = [(AXPronunciationSuggestionsViewController *)v5 speechManager];
    [speechManager setUsesAuxiliarySession:1];

    speechManager2 = [(AXPronunciationSuggestionsViewController *)v5 speechManager];
    audioSession = [speechManager2 audioSession];
    [audioSession setCategory:AVAudioSessionCategoryVoiceOver withOptions:2 error:0];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = AXPronunciationSuggestionsViewController;
  [(AXPronunciationSuggestionsViewController *)&v12 viewWillAppear:appear];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"handleCancelButtonTapped:"];
  navigationItem = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v4];

  navigationItem2 = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setEnabled:1];

  v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"handleDoneButtonTapped:"];
  navigationItem3 = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v8];

  navigationItem4 = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem4 rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];
}

- (void)cleanupSynthesizer
{
  speechManager = [(AXPronunciationSuggestionsViewController *)self speechManager];
  [speechManager stopSpeaking];

  speechManager2 = [(AXPronunciationSuggestionsViewController *)self speechManager];
  [speechManager2 tearDown];

  [(AXPronunciationSuggestionsViewController *)self setSpeechManager:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AXPronunciationSuggestionsViewController;
  [(AXPronunciationSuggestionsViewController *)&v4 viewWillDisappear:disappear];
  [(AXPronunciationSuggestionsViewController *)self cleanupSynthesizer];
}

- (void)dealloc
{
  [(AXPronunciationSuggestionsViewController *)self cleanupSynthesizer];
  v3.receiver = self;
  v3.super_class = AXPronunciationSuggestionsViewController;
  [(AXPronunciationSuggestionsViewController *)&v3 dealloc];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v15 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v14 = +[PSSpecifier emptyGroupSpecifier];
    [v4 addObject:?];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(AXPronunciationSuggestionsViewController *)self suggestions];
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      v8 = PSEnabledKey;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:-1 edit:0];
          [v11 setObject:v10 forKeyedSubscript:@"phonemes"];
          [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:v8];
          [v4 addObject:v11];

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v12 = *&self->AXUISettingsBaseListController_opaque[v15];
    *&self->AXUISettingsBaseListController_opaque[v15] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v15];
  }

  return v3;
}

- (void)speakPhonemes:(id)phonemes
{
  phonemesCopy = phonemes;
  v5 = objc_alloc_init(TTSSpeechAction);
  [v5 setShouldQueue:1];
  language = [(AXPronunciationSuggestionsViewController *)self language];
  [v5 setLanguage:language];

  voiceId = [(AXPronunciationSuggestionsViewController *)self voiceId];
  [v5 setVoiceIdentifier:voiceId];

  v8 = [NSAttributedString alloc];
  v12 = AVSpeechSynthesisIPANotationAttribute;
  v13 = phonemesCopy;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v10 = [v8 initWithString:@"_" attributes:v9];
  [v5 setAttributedString:v10];
  speechManager = [(AXPronunciationSuggestionsViewController *)self speechManager];
  [speechManager dispatchSpeechAction:v5];
}

- (void)handleCancelButtonTapped:(id)tapped
{
  delegate = [(AXPronunciationSuggestionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AXPronunciationSuggestionsViewController *)self delegate];
    [delegate2 pronunciationSuggestionsViewController:self didSelectPhonemes:0];
  }
}

- (void)handleDoneButtonTapped:(id)tapped
{
  delegate = [(AXPronunciationSuggestionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AXPronunciationSuggestionsViewController *)self delegate];
    selectedPhonemes = [(AXPronunciationSuggestionsViewController *)self selectedPhonemes];
    [delegate2 pronunciationSuggestionsViewController:self didSelectPhonemes:selectedPhonemes];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = AXPronunciationSuggestionsViewController;
  pathCopy = path;
  [(AXPronunciationSuggestionsViewController *)&v13 tableView:view didSelectRowAtIndexPath:pathCopy];
  [(AXPronunciationSuggestionsViewController *)self updateTableCheckedSelection:pathCopy, v13.receiver, v13.super_class];
  v7 = [(AXPronunciationSuggestionsViewController *)self specifierForIndexPath:pathCopy];

  v8 = [v7 objectForKeyedSubscript:@"phonemes"];
  [(AXPronunciationSuggestionsViewController *)self setSelectedPhonemes:v8];

  selectedPhonemes = [(AXPronunciationSuggestionsViewController *)self selectedPhonemes];
  [(AXPronunciationSuggestionsViewController *)self speakPhonemes:selectedPhonemes];

  v10 = [(AXPronunciationSuggestionsViewController *)self cellForSpecifier:v7];
  [v10 setAccessoryType:3];
  navigationItem = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(AXPronunciationSuggestionsViewController *)self specifierForIndexPath:path];
  v9 = [v8 objectForKeyedSubscript:@"phonemes"];
  specifier = [(AXPronunciationSuggestionsViewController *)self specifier];
  name = [specifier name];
  v12 = [AXAttributedString axAttributedStringWithString:name];

  v16 = UIAccessibilitySpeechAttributeIPANotation;
  v17 = v9;
  v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v12 setAttributes:v13];

  [cellCopy setAccessibilityLabel:v12];
  selectedPhonemes = [(AXPronunciationSuggestionsViewController *)self selectedPhonemes];
  LODWORD(v13) = [v9 isEqualToString:selectedPhonemes];

  if (v13)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [cellCopy setAccessoryType:v15];
}

- (AXPronunciationSuggestionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end