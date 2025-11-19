@interface AXPronunciationSuggestionsViewController
- (AXPronunciationSuggestionsViewController)initWithSuggestions:(id)a3;
- (AXPronunciationSuggestionsViewControllerDelegate)delegate;
- (id)specifiers;
- (void)cleanupSynthesizer;
- (void)dealloc;
- (void)handleCancelButtonTapped:(id)a3;
- (void)handleDoneButtonTapped:(id)a3;
- (void)speakPhonemes:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AXPronunciationSuggestionsViewController

- (AXPronunciationSuggestionsViewController)initWithSuggestions:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    _AXAssert();
  }

  v13.receiver = self;
  v13.super_class = AXPronunciationSuggestionsViewController;
  v5 = [(AXPronunciationSuggestionsViewController *)&v13 init];
  if (v5)
  {
    v6 = [NSSet setWithArray:v4];
    v7 = [v6 allObjects];
    [(AXPronunciationSuggestionsViewController *)v5 setSuggestions:v7];

    v8 = objc_alloc_init(TTSSpeechManager);
    [(AXPronunciationSuggestionsViewController *)v5 setSpeechManager:v8];

    v9 = [(AXPronunciationSuggestionsViewController *)v5 speechManager];
    [v9 setUsesAuxiliarySession:1];

    v10 = [(AXPronunciationSuggestionsViewController *)v5 speechManager];
    v11 = [v10 audioSession];
    [v11 setCategory:AVAudioSessionCategoryVoiceOver withOptions:2 error:0];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = AXPronunciationSuggestionsViewController;
  [(AXPronunciationSuggestionsViewController *)&v12 viewWillAppear:a3];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"handleCancelButtonTapped:"];
  v5 = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];

  v6 = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  v7 = [v6 leftBarButtonItem];
  [v7 setEnabled:1];

  v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"handleDoneButtonTapped:"];
  v9 = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

  v10 = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  v11 = [v10 rightBarButtonItem];
  [v11 setEnabled:1];
}

- (void)cleanupSynthesizer
{
  v3 = [(AXPronunciationSuggestionsViewController *)self speechManager];
  [v3 stopSpeaking];

  v4 = [(AXPronunciationSuggestionsViewController *)self speechManager];
  [v4 tearDown];

  [(AXPronunciationSuggestionsViewController *)self setSpeechManager:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXPronunciationSuggestionsViewController;
  [(AXPronunciationSuggestionsViewController *)&v4 viewWillDisappear:a3];
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

- (void)speakPhonemes:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TTSSpeechAction);
  [v5 setShouldQueue:1];
  v6 = [(AXPronunciationSuggestionsViewController *)self language];
  [v5 setLanguage:v6];

  v7 = [(AXPronunciationSuggestionsViewController *)self voiceId];
  [v5 setVoiceIdentifier:v7];

  v8 = [NSAttributedString alloc];
  v12 = AVSpeechSynthesisIPANotationAttribute;
  v13 = v4;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v10 = [v8 initWithString:@"_" attributes:v9];
  [v5 setAttributedString:v10];
  v11 = [(AXPronunciationSuggestionsViewController *)self speechManager];
  [v11 dispatchSpeechAction:v5];
}

- (void)handleCancelButtonTapped:(id)a3
{
  v4 = [(AXPronunciationSuggestionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AXPronunciationSuggestionsViewController *)self delegate];
    [v6 pronunciationSuggestionsViewController:self didSelectPhonemes:0];
  }
}

- (void)handleDoneButtonTapped:(id)a3
{
  v4 = [(AXPronunciationSuggestionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(AXPronunciationSuggestionsViewController *)self delegate];
    v6 = [(AXPronunciationSuggestionsViewController *)self selectedPhonemes];
    [v7 pronunciationSuggestionsViewController:self didSelectPhonemes:v6];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = AXPronunciationSuggestionsViewController;
  v6 = a4;
  [(AXPronunciationSuggestionsViewController *)&v13 tableView:a3 didSelectRowAtIndexPath:v6];
  [(AXPronunciationSuggestionsViewController *)self updateTableCheckedSelection:v6, v13.receiver, v13.super_class];
  v7 = [(AXPronunciationSuggestionsViewController *)self specifierForIndexPath:v6];

  v8 = [v7 objectForKeyedSubscript:@"phonemes"];
  [(AXPronunciationSuggestionsViewController *)self setSelectedPhonemes:v8];

  v9 = [(AXPronunciationSuggestionsViewController *)self selectedPhonemes];
  [(AXPronunciationSuggestionsViewController *)self speakPhonemes:v9];

  v10 = [(AXPronunciationSuggestionsViewController *)self cellForSpecifier:v7];
  [v10 setAccessoryType:3];
  v11 = [(AXPronunciationSuggestionsViewController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  [v12 setEnabled:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = [(AXPronunciationSuggestionsViewController *)self specifierForIndexPath:a5];
  v9 = [v8 objectForKeyedSubscript:@"phonemes"];
  v10 = [(AXPronunciationSuggestionsViewController *)self specifier];
  v11 = [v10 name];
  v12 = [AXAttributedString axAttributedStringWithString:v11];

  v16 = UIAccessibilitySpeechAttributeIPANotation;
  v17 = v9;
  v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v12 setAttributes:v13];

  [v7 setAccessibilityLabel:v12];
  v14 = [(AXPronunciationSuggestionsViewController *)self selectedPhonemes];
  LODWORD(v13) = [v9 isEqualToString:v14];

  if (v13)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v7 setAccessoryType:v15];
}

- (AXPronunciationSuggestionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end