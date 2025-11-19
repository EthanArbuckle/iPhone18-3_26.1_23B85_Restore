@interface AFUISiriLanguage
- (AFUISiriLanguage)initWithDelegate:(id)a3;
- (AFUISiriLanguageDelegate)_delegate;
- (BOOL)_setupAssistantHasCompletedInitialRunAvailable;
- (id)_computeSpokenLanguageCode;
- (void)_setSpokenLanguageCode:(id)a3;
- (void)_updateSpokenLanguageCode;
- (void)dealloc;
@end

@implementation AFUISiriLanguage

- (id)_computeSpokenLanguageCode
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 languageCode];

  if (!v4)
  {
    v5 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v5 bestSupportedLanguageCodeForLanguageCode:0];

    if ([(AFUISiriLanguage *)self _setupAssistantHasCompletedInitialRunAvailable])
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v6 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
      v12 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
      if (!getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr)
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke;
        v8[3] = &unk_278CD54F0;
        v8[4] = &v9;
        __getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(v8);
        v6 = v10[3];
      }

      _Block_object_dispose(&v9, 8);
      if (!v6)
      {
        [AFUISiriLanguage _computeSpokenLanguageCode];
      }

      if ((v6() & 1) == 0)
      {
        VSPreferencesSetSpokenLanguageIdentifier();
      }
    }
  }

  return v4;
}

- (AFUISiriLanguage)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFUISiriLanguage;
  v5 = [(AFUISiriLanguage *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_setupAssistantHasCompletedInitialRunChecked = 0;
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [(AFUISiriLanguage *)v6 _computeSpokenLanguageCode];
    spokenLanguageCode = v6->_spokenLanguageCode;
    v6->_spokenLanguageCode = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v6 selector:sel__spokenLanguageDidChange_ name:*MEMORY[0x277CEF018] object:0];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v6 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AFUISiriLanguage;
  [(AFUISiriLanguage *)&v4 dealloc];
}

- (void)_updateSpokenLanguageCode
{
  v3 = [(AFUISiriLanguage *)self _computeSpokenLanguageCode];
  [(AFUISiriLanguage *)self _setSpokenLanguageCode:v3];
}

- (void)_setSpokenLanguageCode:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_spokenLanguageCode isEqualToString:?])
  {
    v4 = [v7 copy];
    spokenLanguageCode = self->_spokenLanguageCode;
    self->_spokenLanguageCode = v4;

    v6 = [(AFUISiriLanguage *)self _delegate];
    [v6 siriLanguageSpokenLanguageCodeDidChange:self];
  }
}

- (BOOL)_setupAssistantHasCompletedInitialRunAvailable
{
  if (self->_setupAssistantHasCompletedInitialRunChecked)
  {
    return self->_setupAssistantHasCompletedInitialRunAvailable;
  }

  else
  {
    v3 = SetupAssistantLibraryCore() != 0;
    self->_setupAssistantHasCompletedInitialRunAvailable = v3;
    self->_setupAssistantHasCompletedInitialRunChecked = 1;
  }

  return v3;
}

- (AFUISiriLanguageDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end