@interface AFUISiriLanguage
- (AFUISiriLanguage)initWithDelegate:(id)delegate;
- (AFUISiriLanguageDelegate)_delegate;
- (BOOL)_setupAssistantHasCompletedInitialRunAvailable;
- (id)_computeSpokenLanguageCode;
- (void)_setSpokenLanguageCode:(id)code;
- (void)_updateSpokenLanguageCode;
- (void)dealloc;
@end

@implementation AFUISiriLanguage

- (id)_computeSpokenLanguageCode
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  if (!languageCode)
  {
    mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
    languageCode = [mEMORY[0x277CEF368]2 bestSupportedLanguageCodeForLanguageCode:0];

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

  return languageCode;
}

- (AFUISiriLanguage)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = AFUISiriLanguage;
  v5 = [(AFUISiriLanguage *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_setupAssistantHasCompletedInitialRunChecked = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
    _computeSpokenLanguageCode = [(AFUISiriLanguage *)v6 _computeSpokenLanguageCode];
    spokenLanguageCode = v6->_spokenLanguageCode;
    v6->_spokenLanguageCode = _computeSpokenLanguageCode;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__spokenLanguageDidChange_ name:*MEMORY[0x277CEF018] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AFUISiriLanguage;
  [(AFUISiriLanguage *)&v4 dealloc];
}

- (void)_updateSpokenLanguageCode
{
  _computeSpokenLanguageCode = [(AFUISiriLanguage *)self _computeSpokenLanguageCode];
  [(AFUISiriLanguage *)self _setSpokenLanguageCode:_computeSpokenLanguageCode];
}

- (void)_setSpokenLanguageCode:(id)code
{
  codeCopy = code;
  if (![(NSString *)self->_spokenLanguageCode isEqualToString:?])
  {
    v4 = [codeCopy copy];
    spokenLanguageCode = self->_spokenLanguageCode;
    self->_spokenLanguageCode = v4;

    _delegate = [(AFUISiriLanguage *)self _delegate];
    [_delegate siriLanguageSpokenLanguageCodeDidChange:self];
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