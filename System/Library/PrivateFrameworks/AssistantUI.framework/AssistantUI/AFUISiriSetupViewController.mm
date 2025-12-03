@interface AFUISiriSetupViewController
- (AFUISiriSetupViewController)init;
- (AFUISiriSetupViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_continueTapped:(id)tapped;
- (void)_continueWithLanguageCode:(id)code commitLanguageCodeToPreferences:(BOOL)preferences;
- (void)_fetchEnablementConfiguration;
- (void)_laterTapped:(id)tapped;
- (void)_presentDataSharingOptInViewController;
- (void)_setLoadingEnablementConfiguration:(BOOL)configuration;
- (void)aboutSelectedInTurnOnSiriView:(id)view;
- (void)animatedAppearanceWithFactory:(id)factory completion:(id)completion;
- (void)animatedDisappearanceWithFactory:(id)factory completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setLastTimeShown:(BOOL)shown;
- (void)siriDataSharingOptInViewControllerDidDismissFromPresenter:(id)presenter;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice;
@end

@implementation AFUISiriSetupViewController

- (AFUISiriSetupViewController)init
{
  v40 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = AFUISiriSetupViewController;
  v2 = [(AFUISiriSetupViewController *)&v29 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->_contentView)
    {
      v4 = objc_alloc(MEMORY[0x277D75D18]);
      v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      contentView = v3->_contentView;
      v3->_contentView = v5;

      [(UIView *)v3->_contentView setAutoresizingMask:18];
    }

    if (!v3->_setupView)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2050000000;
      v7 = getVTUITurnOnSiriViewClass_softClass;
      v38 = getVTUITurnOnSiriViewClass_softClass;
      if (!getVTUITurnOnSiriViewClass_softClass)
      {
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __getVTUITurnOnSiriViewClass_block_invoke;
        v33 = &unk_278CD54F0;
        v34 = &v35;
        __getVTUITurnOnSiriViewClass_block_invoke(&v30);
        v7 = v36[3];
      }

      v8 = v7;
      _Block_object_dispose(&v35, 8);
      v9 = [v7 alloc];
      v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      setupView = v3->_setupView;
      v3->_setupView = v10;

      [(VTUITurnOnSiriView *)v3->_setupView setStateViewDelegate:v3];
      [(VTUITurnOnSiriView *)v3->_setupView setAutoresizingMask:18];
      continueButton = [(VTUITurnOnSiriView *)v3->_setupView continueButton];

      if (continueButton)
      {
        continueButton2 = [(VTUITurnOnSiriView *)v3->_setupView continueButton];
        [continueButton2 addTarget:v3 action:sel__continueTapped_ forControlEvents:64];
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        continueButton2 = [(VTUITurnOnSiriView *)v3->_setupView continueButtons];
        v14 = [continueButton2 countByEnumeratingWithState:&v25 objects:v39 count:16];
        if (v14)
        {
          v15 = *v26;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(continueButton2);
              }

              [*(*(&v25 + 1) + 8 * i) addTarget:v3 action:sel__continueTapped_ forControlEvents:64];
            }

            v14 = [continueButton2 countByEnumeratingWithState:&v25 objects:v39 count:16];
          }

          while (v14);
        }
      }

      laterButton = [(VTUITurnOnSiriView *)v3->_setupView laterButton];
      [laterButton addTarget:v3 action:sel__laterTapped_ forControlEvents:64];

      [(UIView *)v3->_contentView addSubview:v3->_setupView];
      v18 = v3->_contentView;
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [(UIView *)v18 setBackgroundColor:systemBackgroundColor];

      [(AFUISiriSetupViewController *)v3 setSiriSetupView:v3->_setupView];
    }

    if (!v3->_dataSharingOptInPresenter)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2050000000;
      v20 = getVTUISiriDataSharingOptInPresenterClass_softClass;
      v38 = getVTUISiriDataSharingOptInPresenterClass_softClass;
      if (!getVTUISiriDataSharingOptInPresenterClass_softClass)
      {
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __getVTUISiriDataSharingOptInPresenterClass_block_invoke;
        v33 = &unk_278CD54F0;
        v34 = &v35;
        __getVTUISiriDataSharingOptInPresenterClass_block_invoke(&v30);
        v20 = v36[3];
      }

      v21 = v20;
      _Block_object_dispose(&v35, 8);
      v22 = objc_alloc_init(v20);
      dataSharingOptInPresenter = v3->_dataSharingOptInPresenter;
      v3->_dataSharingOptInPresenter = v22;

      [(VTUISiriDataSharingOptInPresenter *)v3->_dataSharingOptInPresenter setPresentationDelegate:v3];
      [(VTUISiriDataSharingOptInPresenter *)v3->_dataSharingOptInPresenter setSourceOfChange:7];
    }

    [(AFUISiriSetupViewController *)v3 _fetchEnablementConfiguration];
  }

  return v3;
}

- (void)_fetchEnablementConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x277CEF298]);
  enablementConfigurationProvider = self->_enablementConfigurationProvider;
  self->_enablementConfigurationProvider = v3;

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v8 = [mEMORY[0x277CEF368] allSiriLanguageCodesForSystemLanguageCode:localeIdentifier isGoodFit:0];

  [(AFUISiriSetupViewController *)self _setLoadingEnablementConfiguration:1];
  objc_initWeak(&location, self);
  v9 = self->_enablementConfigurationProvider;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__AFUISiriSetupViewController__fetchEnablementConfiguration__block_invoke;
  v10[3] = &unk_278CD6BF8;
  objc_copyWeak(&v11, &location);
  [(AFEnablementFlowConfigurationProvider *)v9 configurationForEnablementFlow:5 recognitionLanguageCodes:v8 completion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __60__AFUISiriSetupViewController__fetchEnablementConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[AFUISiriSetupViewController _fetchEnablementConfiguration]_block_invoke";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 129, a2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__AFUISiriSetupViewController__fetchEnablementConfiguration__block_invoke_9;
    block[3] = &unk_278CD55A0;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v8);
  }
}

void __60__AFUISiriSetupViewController__fetchEnablementConfiguration__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setLoadingEnablementConfiguration:0];
}

- (void)_setLoadingEnablementConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v16 = *MEMORY[0x277D85DE8];
  continueButton = [(VTUITurnOnSiriView *)self->_setupView continueButton];
  [continueButton setEnabled:!configurationCopy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  continueButtons = [(VTUITurnOnSiriView *)self->_setupView continueButtons];
  v7 = [continueButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(continueButtons);
        }

        [*(*(&v11 + 1) + 8 * v10++) setEnabled:!configurationCopy];
      }

      while (v8 != v10);
      v8 = [continueButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  self->_isLoadingEnablementConfiguration = configurationCopy;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = AFUISiriSetupViewController;
  [(AFUISiriSetupViewController *)&v7 viewWillAppear:appear];
  navigationController = [(AFUISiriSetupViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  [navigationBar _setHidesShadow:1];
  v6 = objc_opt_new();
  [navigationBar setBackgroundImage:v6 forBarMetrics:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = AFUISiriSetupViewController;
  [(AFUISiriSetupViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AFUISiriSetupViewController;
  [(AFUISiriSetupViewController *)&v4 viewDidAppear:appear];
  [(AFUISiriSetupViewController *)self setVisible:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = AFUISiriSetupViewController;
  [(AFUISiriSetupViewController *)&v7 viewDidDisappear:disappear];
  [(AFUISiriSetupViewController *)self setVisible:0];
  siriSetupView = [(AFUISiriSetupViewController *)self siriSetupView];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v5;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [siriSetupView setTransform:v6];
}

- (void)animatedAppearanceWithFactory:(id)factory completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CF0D38];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__AFUISiriSetupViewController_animatedAppearanceWithFactory_completion___block_invoke;
  v11[3] = &unk_278CD5618;
  v11[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__AFUISiriSetupViewController_animatedAppearanceWithFactory_completion___block_invoke_2;
  v9[3] = &unk_278CD5938;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 animateWithFactory:factory actions:v11 completion:v9];
}

void __72__AFUISiriSetupViewController_animatedAppearanceWithFactory_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 updateHomeGestureSharingForSiriSetup:0];
  }
}

uint64_t __72__AFUISiriSetupViewController_animatedAppearanceWithFactory_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)animatedDisappearanceWithFactory:(id)factory completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CF0D38];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__AFUISiriSetupViewController_animatedDisappearanceWithFactory_completion___block_invoke;
  v11[3] = &unk_278CD5618;
  v11[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__AFUISiriSetupViewController_animatedDisappearanceWithFactory_completion___block_invoke_3;
  v9[3] = &unk_278CD5938;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 animateWithFactory:factory actions:v11 completion:v9];
}

void __75__AFUISiriSetupViewController_animatedDisappearanceWithFactory_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) siriSetupView];
  v2 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__AFUISiriSetupViewController_animatedDisappearanceWithFactory_completion___block_invoke_2;
  v4[3] = &unk_278CD5618;
  v5 = v1;
  v3 = v1;
  [v2 animateWithDuration:v4 animations:0.5];
}

uint64_t __75__AFUISiriSetupViewController_animatedDisappearanceWithFactory_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 32) frame];
  return [*(a1 + 32) setFrame:{0.0, 0.0}];
}

uint64_t __75__AFUISiriSetupViewController_animatedDisappearanceWithFactory_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setLastTimeShown:(BOOL)shown
{
  self->_lastTimeShown = shown;
  if (shown)
  {
    [(VTUITurnOnSiriView *)self->_setupView prepareForLastTimeShown];
  }
}

- (void)_continueTapped:(id)tapped
{
  tappedCopy = tapped;
  ADClientAddValueForScalarKey();
  continueButtons = [(VTUITurnOnSiriView *)self->_setupView continueButtons];
  v6 = [continueButtons containsObject:tappedCopy];

  if (v6)
  {
    v7 = [(VTUITurnOnSiriView *)self->_setupView languageSelectionOfContinueButton:tappedCopy];
    selectedRecognitionLanguageCode = self->_selectedRecognitionLanguageCode;
    self->_selectedRecognitionLanguageCode = v7;
  }

  v9 = self->_selectedRecognitionLanguageCode;
  if (!v9)
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    v11 = [mEMORY[0x277CEF368] bestSupportedLanguageCodeForLanguageCode:0];
    v12 = self->_selectedRecognitionLanguageCode;
    self->_selectedRecognitionLanguageCode = v11;

    v9 = self->_selectedRecognitionLanguageCode;
  }

  if ([(AFEnablementConfiguration *)self->_enablementConfiguration requiresVoiceSelectionForRecognitionLanguage:v9])
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 assistantUILocalizedStringFromSystemLanguageForKey:@"ASSISTANT_ENABLE_DONE" table:@"Localizable"];
    if ([(VTUISiriDataSharingOptInPresenter *)self->_dataSharingOptInPresenter shouldShowSiriDataSharingOptInView])
    {
      v15 = [v13 assistantUILocalizedStringFromSystemLanguageForKey:@"ASSISTANT_ENABLE_NEXT" table:@"Localizable"];

      v14 = v15;
    }

    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v14 style:0 target:0 action:0];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v17 = getVTUIVoiceSelectionViewControllerClass_softClass;
    v27 = getVTUIVoiceSelectionViewControllerClass_softClass;
    if (!getVTUIVoiceSelectionViewControllerClass_softClass)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __getVTUIVoiceSelectionViewControllerClass_block_invoke;
      v23[3] = &unk_278CD54F0;
      v23[4] = &v24;
      __getVTUIVoiceSelectionViewControllerClass_block_invoke(v23);
      v17 = v25[3];
    }

    v18 = v17;
    _Block_object_dispose(&v24, 8);
    v19 = [[v17 alloc] initWithRecognitionLanguage:self->_selectedRecognitionLanguageCode allowsRandomSelection:-[AFEnablementConfiguration voiceSelectionAllowsRandomSelection](self->_enablementConfiguration barButtonItemForContinue:"voiceSelectionAllowsRandomSelection") customVoicePreviewer:v16 delegate:{0, self}];
    navigationItem = [v19 navigationItem];
    [navigationItem setRightBarButtonItem:v16];

    navigationItem2 = [v19 navigationItem];
    [navigationItem2 setHidesBackButton:1];

    navigationController = [(AFUISiriSetupViewController *)self navigationController];
    [navigationController pushViewController:v19 animated:1];
  }

  else
  {
    [(AFUISiriSetupViewController *)self _continueWithLanguageCode:self->_selectedRecognitionLanguageCode commitLanguageCodeToPreferences:1];
  }
}

- (void)_continueWithLanguageCode:(id)code commitLanguageCodeToPreferences:(BOOL)preferences
{
  preferencesCopy = preferences;
  v28 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  if (preferencesCopy)
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    [mEMORY[0x277CEF368] setLanguageCode:codeCopy];
  }

  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[AFUISiriSetupViewController _continueWithLanguageCode:commitLanguageCodeToPreferences:]";
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s Enabling assistant and starting Siri", &buf, 0xCu);
  }

  mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
  [mEMORY[0x277CEF368]2 setAssistantIsEnabled:1];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v10 = getBYFlowSkipControllerClass_softClass;
  v23 = getBYFlowSkipControllerClass_softClass;
  if (!getBYFlowSkipControllerClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v25 = __getBYFlowSkipControllerClass_block_invoke;
    v26 = &unk_278CD54F0;
    v27 = &v20;
    __getBYFlowSkipControllerClass_block_invoke(&buf);
    v10 = v21[3];
  }

  v11 = v10;
  _Block_object_dispose(&v20, 8);
  sharedInstance = [v10 sharedInstance];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v13 = getBYFlowSkipIdentifierSiriSymbolLoc_ptr;
  v23 = getBYFlowSkipIdentifierSiriSymbolLoc_ptr;
  if (!getBYFlowSkipIdentifierSiriSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v25 = __getBYFlowSkipIdentifierSiriSymbolLoc_block_invoke;
    v26 = &unk_278CD54F0;
    v27 = &v20;
    v14 = SetupAssistantLibrary();
    v15 = dlsym(v14, "BYFlowSkipIdentifierSiri");
    *(v27[1] + 24) = v15;
    getBYFlowSkipIdentifierSiriSymbolLoc_ptr = *(v27[1] + 24);
    v13 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v13)
  {
    [AFUISiriSetupViewController _continueWithLanguageCode:commitLanguageCodeToPreferences:];
  }

  [sharedInstance didCompleteFlow:{*v13, v20}];

  if ([(VTUISiriDataSharingOptInPresenter *)self->_dataSharingOptInPresenter shouldShowSiriDataSharingOptInView])
  {
    [(AFUISiriSetupViewController *)self _presentDataSharingOptInViewController];
  }

  else
  {
    delegate = [(AFUISiriSetupViewController *)self delegate];
    [delegate openSiriRequestedBySiriSetupViewController:self];
  }

  delegate2 = [(AFUISiriSetupViewController *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate3 = [(AFUISiriSetupViewController *)self delegate];
    [delegate3 updateHomeGestureSharingForSiriSetup:1];
  }
}

- (void)_laterTapped:(id)tapped
{
  v10 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[AFUISiriSetupViewController _laterTapped:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s Later Tapped, dismissing", &v8, 0xCu);
  }

  delegate = [(AFUISiriSetupViewController *)self delegate];
  [delegate dismissSiriSetupViewController:self];

  if (self->_lastTimeShown)
  {
    delegate2 = [(AFUISiriSetupViewController *)self delegate];
    [delegate2 disableSiriActivationRequestedBySiriSetupViewController:self];
  }
}

- (void)aboutSelectedInTurnOnSiriView:(id)view
{
  v20 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[AFUISiriSetupViewController aboutSelectedInTurnOnSiriView:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s About Selected, showing siri privacy splash page", &buf, 0xCu);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v6 = getOBPrivacyPresenterClass_softClass;
  v15 = getOBPrivacyPresenterClass_softClass;
  if (!getOBPrivacyPresenterClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v17 = __getOBPrivacyPresenterClass_block_invoke;
    v18 = &unk_278CD54F0;
    v19 = &v12;
    __getOBPrivacyPresenterClass_block_invoke(&buf);
    v6 = v13[3];
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);
  v8 = [v6 presenterForPrivacySplashWithIdentifer:{@"com.apple.onboarding.siri", v12}];
  [v8 setPresentingViewController:self];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v10 = [currentDevice userInterfaceIdiom] == 1;

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 7;
  }

  [v8 setModalPresentationStyle:v11];
  [v8 present];
}

- (void)_presentDataSharingOptInViewController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[AFUISiriSetupViewController _presentDataSharingOptInViewController]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #siriDataSharingOptIn: Displaying DataSharingOptIn", &v8, 0xCu);
  }

  v4 = [(VTUISiriDataSharingOptInPresenter *)self->_dataSharingOptInPresenter dataSharingOptInTextWelcomeControllerForViewStyle:0];
  dataSharingOptInViewController = self->_dataSharingOptInViewController;
  self->_dataSharingOptInViewController = v4;

  navigationItem = [(OBWelcomeController *)self->_dataSharingOptInViewController navigationItem];
  [navigationItem setHidesBackButton:1];

  navigationController = [(AFUISiriSetupViewController *)self navigationController];
  [navigationController pushViewController:self->_dataSharingOptInViewController animated:1];
}

- (void)siriDataSharingOptInViewControllerDidDismissFromPresenter:(id)presenter
{
  delegate = [(AFUISiriSetupViewController *)self delegate];
  [delegate openSiriRequestedBySiriSetupViewController:self];

  dataSharingOptInViewController = self->_dataSharingOptInViewController;
  self->_dataSharingOptInViewController = 0;

  dataSharingOptInPresenter = self->_dataSharingOptInPresenter;
  self->_dataSharingOptInPresenter = 0;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SiriUIIsAllOrientationsSupported())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4 = [(AFUISiriSetupViewController *)self view:coordinator];
  [v4 layoutSubviews];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

  if ((assistantIsEnabled & 1) == 0)
  {
    delegate = [(AFUISiriSetupViewController *)self delegate];
    [delegate dismissSiriSetupViewController:self];
  }

  completionLoggingBlock = [(AFEnablementConfiguration *)self->_enablementConfiguration completionLoggingBlock];
  mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
  completionLoggingBlock[2](completionLoggingBlock, [mEMORY[0x277CEF368]2 assistantIsEnabled]);
}

- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice
{
  v5 = MEMORY[0x277CEF368];
  voiceCopy = voice;
  sharedPreferences = [v5 sharedPreferences];
  [sharedPreferences setLanguageCode:self->_selectedRecognitionLanguageCode outputVoice:voiceCopy];

  selectedRecognitionLanguageCode = self->_selectedRecognitionLanguageCode;

  [(AFUISiriSetupViewController *)self _continueWithLanguageCode:selectedRecognitionLanguageCode commitLanguageCodeToPreferences:0];
}

- (AFUISiriSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end