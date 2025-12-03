@interface AssistantController
+ (BOOL)_heySiriSupportedForLanguage:(id)language;
+ (BOOL)firstTimeAssistantLanguage:(id)language;
+ (id)bundle;
+ (id)shortTitlesForLanguageIdentifiers:(id)identifiers;
+ (void)setPendingURLResources:(id)resources;
- (AssistantController)init;
- (BOOL)_isCurrentSpecifierQuickTypeGesture;
- (BOOL)_isCurrentSpecifierVoiceActivation;
- (BOOL)_isIncompatibleWithWatchLanguage:(id)language;
- (BOOL)_isVoiceTriggerEnabled;
- (BOOL)_languageWillDisableHeySiri:(id)siri;
- (BOOL)_pairedWithRaiseToSpeakEnabledNanoHardware;
- (BOOL)_pairedWithSiriSpeaksEnabledNanoHardware;
- (BOOL)isFlexibleFollowupsSupported;
- (BOOL)shouldPromptForDisable;
- (BOOL)watchSupportsSiriLanguageCode:(id)code;
- (id)_createEnablementFlowControllerForConfiguration:(id)configuration recognitionLanguageCode:(id)code;
- (id)_createVoiceSelectionCompletionForSpecifier:(id)specifier recognitionLanguageCode:(id)code;
- (id)_createVoiceSelectionDismissalHandlerWithSpecifier:(id)specifier actionHandler:(id)handler;
- (id)_imageCreationAccessLabel;
- (id)_localizeTriggerString:(id)string;
- (id)_localizedStringWithFormattedIDTemplate:(id)template;
- (id)_specifiersToRemove:(id)remove;
- (id)accessibleFromLockScreen:(id)screen;
- (id)assistantEnabled:(id)enabled;
- (id)assistantVoice:(id)voice;
- (id)assistantVoiceLanguage:(id)language;
- (id)detailTextForLanguageSpecifierFromTitles:(id)titles;
- (id)hardwareButtonTrigger:(id)trigger;
- (id)isShowInAppLibraryEnabled:(id)enabled;
- (id)isShowInSpotlightEnabled;
- (id)isShowWhenListeningEnabled:(id)enabled;
- (id)isShowWhenSharingEnabled:(id)enabled;
- (id)isShowZKWRecentsEnabled:(id)enabled;
- (id)isShowZKWSuggestionsEnabled:(id)enabled;
- (id)meCard:(id)card;
- (id)siriInCallEnabled:(id)enabled;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)typeToSiriTrigger:(id)trigger;
- (id)voiceActivationSelection:(id)selection;
- (id)voiceTrigger:(id)trigger;
- (void)_addHyperlinkStyleToText:(id)text inString:(id)string action:(SEL)action forGroup:(id)group;
- (void)_askSiriUseDefaultFooterTextWithGroupSpecifier:(id)specifier;
- (void)_askSiriUseDownloadFinishedFooterTextWithGroupSpecifier:(id)specifier;
- (void)_askSiriUseDownloadReadyFooterTextWithGroupSpecifier:(id)specifier;
- (void)_askSiriUseDownloadingFooterTextWithGroupSpecifier:(id)specifier withProgress:(id)progress;
- (void)_askSiriUseOutOfSpaceFooterTextWithGroupSpecifier:(id)specifier withSpaceRequired:(id)required;
- (void)_askSiriUseRestrictedFooterWithGroupSpecifier:(id)specifier;
- (void)_fetchGMWaitListStatus;
- (void)_handleEnablementConfirmationForSpecifier:(id)specifier actionHandler:(id)handler;
- (void)_handleThemisEnablementConfirmationForSpecifier:(id)specifier presentingViewController:(id)controller actionHandler:(id)handler;
- (void)_insertSiriInCallSpecifier;
- (void)_insertTipSpecifiers;
- (void)_makeMeDeviceDetermination;
- (void)_presentSiriDataSharingOptInViewController;
- (void)_refreshAvailableLanguagesInTheHome;
- (void)_reloadSiriInCallSpecifier;
- (void)_removeSiriInCallSpecifier;
- (void)_removeTipSpecifiers;
- (void)_runEnablementFlowDismissalHandlersIfApplicable;
- (void)_runVoiceTriggerEnablementCompletionIfApplicable;
- (void)_setAccessibleFromLockScreen:(BOOL)screen;
- (void)_setAssistantEnabled:(id)enabled forSpecifier:(id)specifier presentingViewController:(id)controller actionHandler:(id)handler;
- (void)_setAssistantLanguage:(id)language forSpecifier:(id)specifier;
- (void)_setAssistantLanguageCancelled:(id)cancelled;
- (void)_setAssistantLanguageConfirmed:(id)confirmed;
- (void)_setAssistantLanguageHeySiriDisableConfirmed:(id)confirmed;
- (void)_setAssistantLanguageWatchMismatchConfirmed:(id)confirmed;
- (void)_showIncompatibleWatchLanguageAlert;
- (void)_updateSiriFooterGroup:(id)group withStatus:(id)status;
- (void)_updateSpecifiersForLanguage:(id)language;
- (void)_updateSpecifiersForSettingsTip;
- (void)_voiceSelectionCancelled;
- (void)assistantAboutDonePressed:(id)pressed;
- (void)assistantDisabledCancelled:(id)cancelled;
- (void)assistantDisabledConfirmed:(id)confirmed;
- (void)assistantEnabledCancelled:(id)cancelled;
- (void)assistantEnabledConfirmed:(id)confirmed;
- (void)cancelSetup:(id)setup;
- (void)configureApplicationListSpecifiersFor:(id)for;
- (void)configureExternalAIModelSettingsSpecifiersFor:(id)for;
- (void)configureSettingsForGM:(id)m;
- (void)configureSettingsForImageCreation:(id)creation;
- (void)configureSettingsTipForGrayMatter;
- (void)configureSiriRequestsSpecifiersFor:(id)for;
- (void)configureSuggestionsSpecifiersFor:(id)for;
- (void)confirmDisableForMultiUserVoiceIdentificationWithSpecifier:(id)specifier pairedWatch:(BOOL)watch presentingViewController:(id)controller actionHandler:(id)handler;
- (void)confirmDisableWithSpecifier:(id)specifier pairedWatch:(BOOL)watch presentingViewController:(id)controller actionHandler:(id)handler;
- (void)confirmResetHiddenSuggestions:(id)suggestions;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)continueSetup;
- (void)dealloc;
- (void)deleteHistorySuccessfulFromViewController:(id)controller;
- (void)didCancelEnteringPIN;
- (void)handleAssetStatusUpdated;
- (void)handleBuddyFlow;
- (void)handleGmCFU;
- (void)handlePendingURLResourcesChangedNotification;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)loadAppStorePageForBundleId:(id)id;
- (void)lowPowerModeChangedNotification:(id)notification;
- (void)managedConfigurationChanged;
- (void)openStorageManagement:(id)management;
- (void)preferencesDidChange;
- (void)prepareForSnapshot;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)registerUndoActionWithKey:(id)key urlString:(id)string undoAction:(id)action;
- (void)reloadSpecifierID:(id)d;
- (void)reloadSpecifiers;
- (void)resetZKWHiddenSuggestions:(id)suggestions;
- (void)saveSpotlightSettings;
- (void)setAccessibleFromLockScreen:(id)screen forSpecifier:(id)specifier;
- (void)setAssistantLanguage:(id)language;
- (void)setAssistantLanguage:(id)language forSpecifier:(id)specifier;
- (void)setHardwareButtonTrigger:(id)trigger forSpecifier:(id)specifier;
- (void)setShowInAppLibraryEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setShowInSpotlightEnabled:(id)enabled;
- (void)setShowWhenListeningEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setShowWhenSharingEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setShowZKWRecentsEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setShowZKWSuggestionsEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setTypeToSiriTrigger:(id)trigger forSpecifier:(id)specifier;
- (void)setVoiceActivation:(id)activation forSpecifier:(id)specifier withTrainingCompletionIfNecessary:(id)necessary;
- (void)setVoiceTrigger:(id)trigger forSpecifier:(id)specifier transitionWithNavControllerIfNecessary:(id)necessary;
- (void)showAssistantConfirmationViewForSpecifier:(id)specifier presentingViewController:(id)controller actionHandler:(id)handler;
- (void)showAssistantHistoryViewController:(id)controller;
- (void)showAssistantVoiceActivationController:(id)controller;
- (void)showLearnMore;
- (void)showMeCardPicker:(id)picker;
- (void)showOBKPrivacySheetWithIdentifier:(id)identifier;
- (void)showSafetyComplianceSheet:(id)sheet;
- (void)showUseCellularConfirmationForSiriAssets:(id)assets;
- (void)siriDataSharingOptInRequestsDismissalFromPresenter:(id)presenter;
- (void)siriUODAvailabilityDidChange:(BOOL)change;
- (void)skipSetup;
- (void)startEnrollment:(id)enrollment;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation AssistantController

+ (id)bundle
{
  v2 = bundle_sAssistantBundle_2;
  if (!bundle_sAssistantBundle_2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantBundle_2;
    bundle_sAssistantBundle_2 = v3;

    v2 = bundle_sAssistantBundle_2;
  }

  return v2;
}

+ (void)setPendingURLResources:(id)resources
{
  if (resources)
  {
    v4 = [resources copy];
    v5 = _pendingURLResources;
    _pendingURLResources = v4;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PendingURLResourcesDidChange" object:0];
    v6 = defaultCenter;
  }

  else
  {
    v6 = _pendingURLResources;
    _pendingURLResources = 0;
  }
}

- (void)handlePendingURLResourcesChangedNotification
{
  pendingURLResources = [objc_opt_class() pendingURLResources];

  if (pendingURLResources)
  {
    pendingURLResources2 = [objc_opt_class() pendingURLResources];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__AssistantController_handlePendingURLResourcesChangedNotification__block_invoke;
    v5[3] = &unk_278CD1548;
    v5[4] = self;
    [(AssistantController *)self handleURL:pendingURLResources2 withCompletion:v5];
  }
}

uint64_t __67__AssistantController_handlePendingURLResourcesChangedNotification__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 setPendingURLResources:0];
}

- (void)lowPowerModeChangedNotification:(id)notification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__AssistantController_lowPowerModeChangedNotification___block_invoke;
  block[3] = &unk_278CD1548;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AssistantController;
  [(AssistantController *)&v4 viewDidLoad];
  [(UAFAssetUtilities *)self->_assetUtils setDelegate:self];
  [(UAFAssetUtilities *)self->_assetUtils startObservers];
  [(UAFAssetUtilities *)self->_assetUtils downloadSiriAssets];
  [(UAFAssetUtilities *)self->_assetUtils setAutoRetryEnabled:1];
  v3 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  [v3 fetchStatusAndForceDownloadIfNeededWithPresenter:self];
}

+ (BOOL)_heySiriSupportedForLanguage:(id)language
{
  if (!language)
  {
    return 0;
  }

  languageCopy = language;
  v4 = AFPreferencesSupportedLanguages();
  v5 = [v4 containsObject:languageCopy];

  return v5;
}

- (void)willMoveToParentViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = AssistantController;
  [(AssistantController *)&v8 willMoveToParentViewController:?];
  if (!controller)
  {
    parentViewController = [(AssistantController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    [navigationItem setTitleView:0];

    navigationItem2 = [(AssistantController *)self navigationItem];
    [navigationItem2 setTitle:0];
  }
}

- (AssistantController)init
{
  v36.receiver = self;
  v36.super_class = AssistantController;
  v2 = [(AssistantController *)&v36 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D61A38]);
    settingsConnection = v2->_settingsConnection;
    v2->_settingsConnection = v3;

    v5 = objc_alloc_init(MEMORY[0x277CEF3A8]);
    AFSettingsConnection = v2->_AFSettingsConnection;
    v2->_AFSettingsConnection = v5;

    v7 = objc_alloc_init(MEMORY[0x277D77A10]);
    assetUtils = v2->_assetUtils;
    v2->_assetUtils = v7;

    v9 = objc_alloc_init(MEMORY[0x277CD4848]);
    passcodeService = v2->_passcodeService;
    v2->_passcodeService = v9;

    v11 = [[GMSpecifierProvider alloc] initWithPresenter:v2];
    gmSpecifierProvider = v2->_gmSpecifierProvider;
    v2->_gmSpecifierProvider = v11;

    v13 = objc_alloc_init(_TtC24AssistantSettingsSupport15GMFooterUtility);
    gmFooterUtility = v2->_gmFooterUtility;
    v2->_gmFooterUtility = v13;

    v15 = objc_alloc_init(GMAnalyticsProvider);
    gmAnalyticsProvider = v2->_gmAnalyticsProvider;
    v2->_gmAnalyticsProvider = v15;

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v17 = getVTUISiriDataSharingOptInPresenterClass_softClass;
    v41 = getVTUISiriDataSharingOptInPresenterClass_softClass;
    if (!getVTUISiriDataSharingOptInPresenterClass_softClass)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __getVTUISiriDataSharingOptInPresenterClass_block_invoke;
      v37[3] = &unk_278CD1658;
      v37[4] = &v38;
      __getVTUISiriDataSharingOptInPresenterClass_block_invoke(v37);
      v17 = v39[3];
    }

    v18 = v17;
    _Block_object_dispose(&v38, 8);
    v19 = objc_alloc_init(v17);
    siriDataSharingPresenter = v2->_siriDataSharingPresenter;
    v2->_siriDataSharingPresenter = v19;

    [(VTUISiriDataSharingOptInPresenter *)v2->_siriDataSharingPresenter setPresentationDelegate:v2];
    [(VTUISiriDataSharingOptInPresenter *)v2->_siriDataSharingPresenter setSourceOfChange:7];
    v21 = objc_opt_new();
    contactStore = v2->_contactStore;
    v2->_contactStore = v21;

    v23 = objc_alloc_init(_TtC24AssistantSettingsSupport19FindMyLocateSession);
    findMyLocateSession = v2->_findMyLocateSession;
    v2->_findMyLocateSession = v23;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_contactsDidChange name:*MEMORY[0x277CBD140] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_prepareForSnapshot name:*MEMORY[0x277D76660] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_outputVoiceDidChange name:*MEMORY[0x277CEF058] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel_languageCodeDidChange name:*MEMORY[0x277CEF018] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v2 selector:sel_preferencesDidChange name:*MEMORY[0x277CEF060] object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:v2 selector:sel_didBecomeActive name:*MEMORY[0x277D76648] object:0];

    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter7 addObserver:v2 selector:sel_preferencesDidChange name:*MEMORY[0x277D81D00] object:0];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter8 addObserver:v2 selector:sel_managedConfigurationChanged name:*MEMORY[0x277D25CA0] object:0];

    defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter9 addObserver:v2 selector:sel_handlePendingURLResourcesChangedNotification name:@"PendingURLResourcesDidChange" object:0];

    v34 = [(AssistantController *)v2 assistantVoiceLanguage:0];
    [(AssistantController *)v2 _updateSpecifiersForLanguage:v34];

    [(AssistantController *)v2 _makeMeDeviceDetermination];
    [(AssistantController *)v2 _refreshAvailableLanguagesInTheHome];
    v2->_imageGenWaitlistStatus = 0;
    [(AssistantController *)v2 _fetchGMWaitListStatus];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AssistantController;
  [(AssistantController *)&v4 dealloc];
}

- (void)prepareForSnapshot
{
  [(AssistantController *)self dismissConfirmationViewAnimated:0];

  [(AssistantController *)self reloadSpecifierID:@"ASSISTANT" animated:0];
}

- (void)preferencesDidChange
{
  [(AssistantController *)self _refreshAvailableLanguagesInTheHome];

  [(AssistantController *)self reloadSpecifiers];
}

- (void)managedConfigurationChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AssistantController_managedConfigurationChanged__block_invoke;
  block[3] = &unk_278CD1548;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)assistantAboutDonePressed:(id)pressed
{
  presentedViewController = [(AssistantController *)self presentedViewController];

  if (presentedViewController)
  {

    [(AssistantController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)showOBKPrivacySheetWithIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:identifier];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)showSafetyComplianceSheet:(id)sheet
{
  v4 = objc_alloc(MEMORY[0x277CDB700]);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com/uk/legal/online-safety/index.html"];
  v6 = [v4 initWithURL:v5];

  [v6 setModalPresentationStyle:2];
  [(AssistantController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)openStorageManagement:(id)management
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v9 = 0;
  v5 = [defaultWorkspace openSensitiveURL:v3 withOptions:MEMORY[0x277CBEC10] error:&v9];
  v6 = v9;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AssistantController *)v8 openStorageManagement:v6];
    }
  }
}

- (void)showUseCellularConfirmationForSiriAssets:(id)assets
{
  assetsCopy = assets;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D75110];
  v6 = +[AssistantController bundle];
  v7 = [v6 localizedStringForKey:@"SIRI_REQUEST_ASSETS_CONFIRMATION_TITLE" value:&stru_285317CF0 table:@"AssistantSettings"];
  v8 = +[AssistantController bundle];
  v9 = [v8 localizedStringForKey:@"SIRI_REQUEST_ASSETS_CONFIRMATION_PROMPT" value:&stru_285317CF0 table:@"AssistantSettings"];
  v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:0];

  v11 = MEMORY[0x277D750F8];
  v12 = +[AssistantController bundle];
  v13 = [v12 localizedStringForKey:@"SIRI_REQUEST_ASSETS_CONFIRMATION_DOWNLOAD" value:&stru_285317CF0 table:@"AssistantSettings"];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __64__AssistantController_showUseCellularConfirmationForSiriAssets___block_invoke;
  v22 = &unk_278CD14D0;
  objc_copyWeak(&v23, &location);
  v14 = [v11 actionWithTitle:v13 style:0 handler:&v19];
  [v10 addAction:{v14, v19, v20, v21, v22}];

  v15 = MEMORY[0x277D750F8];
  v16 = +[AssistantController bundle];
  v17 = [v16 localizedStringForKey:@"SIRI_REQUEST_ASSETS_CONFIRMATION_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
  v18 = [v15 actionWithTitle:v17 style:1 handler:0];
  [v10 addAction:v18];

  [(AssistantController *)self presentViewController:v10 animated:1 completion:0];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

void __64__AssistantController_showUseCellularConfirmationForSiriAssets___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startSiriAssetDownloadUsingCellular];
}

- (void)reloadSpecifiers
{
  assistantSettings = self->_assistantSettings;
  self->_assistantSettings = 0;

  disabledSpotlightDomains = self->_disabledSpotlightDomains;
  self->_disabledSpotlightDomains = 0;

  disabledSpotlightBundles = self->_disabledSpotlightBundles;
  self->_disabledSpotlightBundles = 0;

  v7.receiver = self;
  v7.super_class = AssistantController;
  [(AssistantController *)&v7 reloadSpecifiers];
  v6 = [(AssistantController *)self assistantVoiceLanguage:0];
  [(AssistantController *)self _updateSpecifiersForLanguage:v6];

  [(AssistantController *)self _updateSpecifiersForSettingsTip];
}

- (void)reloadSpecifierID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy isEqual:@"IMAGE_CREATION"])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[AssistantController reloadSpecifierID:]";
      _os_log_impl(&dword_2413B9000, v5, OS_LOG_TYPE_INFO, "%s Entered reload specifier for image creation", buf, 0xCu);
    }

    [(AssistantController *)self _fetchGMWaitListStatus];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AssistantController;
    [(AssistantController *)&v7 reloadSpecifierID:dCopy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(AssistantController *)self loadSpecifiersFromPlistName:@"AssistantSettings" target:self];
    [(AssistantController *)self configureSettingsForGM:v5];
    [(AssistantController *)self configureSettingsForImageCreation:v5];
    [(AssistantController *)self configureSiriRequestsSpecifiersFor:v5];
    [(AssistantController *)self configureExternalAIModelSettingsSpecifiersFor:v5];
    [(AssistantController *)self configureSuggestionsSpecifiersFor:v5];
    [(AssistantController *)self configureApplicationListSpecifiersFor:v5];
    [(AssistantController *)self configureSettingsTipForGrayMatter];
    v6 = [v5 copy];
    v7 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_refreshAvailableLanguagesInTheHome
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__AssistantController__refreshAvailableLanguagesInTheHome__block_invoke;
  v3[3] = &unk_278CD1520;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __58__AssistantController__refreshAvailableLanguagesInTheHome__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 207);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__AssistantController__refreshAvailableLanguagesInTheHome__block_invoke_2;
    v5[3] = &unk_278CD1A78;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 availableLanguagesInTheHome:v5];
    objc_destroyWeak(&v6);
  }
}

void __58__AssistantController__refreshAvailableLanguagesInTheHome__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __58__AssistantController__refreshAvailableLanguagesInTheHome__block_invoke_2_cold_1();
      }
    }

    else
    {
      v8 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
      v9 = WeakRetained[217];
      WeakRetained[217] = v8;
    }
  }
}

- (void)configureSettingsForGM:(id)m
{
  mCopy = m;
  v4 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v4 deviceSupported];

  if (deviceSupported)
  {
    v6 = [(GMSpecifierProvider *)self->_gmSpecifierProvider fetchGMRampSpecifierWith:mCopy];
    if (v6)
    {
      v7 = [mCopy specifierForID:@"ASSISTANT_PLACARD"];
      [mCopy ps_insertObject:v6 afterObject:v7];
    }

    v8 = [mCopy specifierForID:@"ASSISTANT_PLACARD_GROUP"];
    [(GMFooterUtility *)self->_gmFooterUtility updateFooterWithSpecifier:v8 settings:self];
  }
}

- (id)_imageCreationAccessLabel
{
  v2 = +[AssistantController bundle];
  v3 = [v2 localizedStringForKey:@"IMAGE_CREATION_ACCESS" value:&stru_285317CF0 table:@"AssistantSettings"];

  return v3;
}

- (void)_fetchGMWaitListStatus
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D0E530];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__AssistantController__fetchGMWaitListStatus__block_invoke;
  v3[3] = &unk_278CD1AC8;
  objc_copyWeak(&v4, &location);
  [v2 getWaitlistWithUseCaseIdentifier:@"com.apple.Settings.AppleIntelligence.Diffusion" completionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __45__AssistantController__fetchGMWaitListStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __45__AssistantController__fetchGMWaitListStatus__block_invoke_cold_1(v6, v5);
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__AssistantController__fetchGMWaitListStatus__block_invoke_260;
    v7[3] = &unk_278CD1AA0;
    objc_copyWeak(v8, (a1 + 32));
    v8[1] = a2;
    dispatch_async(MEMORY[0x277D85CD0], v7);
    objc_destroyWeak(v8);
  }
}

void __45__AssistantController__fetchGMWaitListStatus__block_invoke_260(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 222) = *(a1 + 40);
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v7 = 136315394;
      v8 = "[AssistantController _fetchGMWaitListStatus]_block_invoke";
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_2413B9000, v4, OS_LOG_TYPE_INFO, "%s Current ADM Waitlist Status is: %ld", &v7, 0x16u);
    }

    [v3 reloadSpecifiers];
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __45__AssistantController__fetchGMWaitListStatus__block_invoke_260_cold_1();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)configureSettingsForImageCreation:(id)creation
{
  creationCopy = creation;
  if (![(GMSpecifierProvider *)self->_gmSpecifierProvider fetchGMCapability])
  {
    goto LABEL_9;
  }

  v4 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v4 deviceSupported];

  if (!deviceSupported)
  {
    goto LABEL_9;
  }

  imageGenWaitlistStatus = self->_imageGenWaitlistStatus;
  v7 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  if ([v7 eligibility] == 17)
  {
    goto LABEL_8;
  }

  v8 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  if ([v8 eligibility] == 15)
  {
LABEL_7:

LABEL_8:
LABEL_9:
    v10 = [creationCopy specifierForID:@"IMAGE_CREATION"];
    [creationCopy removeObject:v10];
    goto LABEL_10;
  }

  v9 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  if ([v9 eligibility] == 16)
  {

    goto LABEL_7;
  }

  v11 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  eligibility = [v11 eligibility];

  if (eligibility == 14)
  {
    goto LABEL_9;
  }

  if (imageGenWaitlistStatus != 1)
  {
    goto LABEL_9;
  }

  v13 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  optedIn = [v13 optedIn];

  if (!optedIn)
  {
    goto LABEL_9;
  }

  v15 = MEMORY[0x277D3FAD8];
  v16 = +[AssistantController bundle];
  v17 = [v16 localizedStringForKey:@"IMAGE_CREATION_NAME" value:&stru_285317CF0 table:@"AssistantSettings"];
  v10 = [v15 preferenceSpecifierNamed:v17 target:self set:0 get:sel__imageCreationAccessLabel detail:0 cell:4 edit:0];

  [v10 setIdentifier:@"ImageCreation"];
  v18 = [creationCopy specifierForID:@"IMAGE_CREATION"];
  [creationCopy ps_insertObject:v10 afterObject:v18];
  v19 = [(AssistantController *)self _localizedStringWithFormattedIDTemplate:@"IMAGE_CREATION_FOOTER_TEXT{DEVICE}{CHINA}"];
  [v18 setProperty:v19 forKey:*MEMORY[0x277D3FF88]];

LABEL_10:
}

- (void)configureSiriRequestsSpecifiersFor:(id)for
{
  forCopy = for;
  v5 = [forCopy specifierForID:@"ASSISTANT_LOCK_SCREEN_ACCESS"];
  lockScreenSpecifier = self->_lockScreenSpecifier;
  self->_lockScreenSpecifier = v5;

  v7 = self->_lockScreenSpecifier;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{+[AssistantUtilities isAssistantLockScreenAccessRestricted](AssistantUtilities, "isAssistantLockScreenAccessRestricted") ^ 1}];
  v9 = *MEMORY[0x277D3FF38];
  [(PSSpecifier *)v7 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

  v10 = self->_lockScreenSpecifier;
  v11 = [(AssistantController *)self _localizeTriggerString:@"ASSISTANT_LOCK_SCREEN_ACCESS"];
  [(PSSpecifier *)v10 setName:v11];

  v12 = [forCopy specifierForID:@"ACTIVATION"];
  v13 = [(AssistantController *)self _localizeTriggerString:@"ACTIVATION"];
  v78 = v12;
  [v12 setName:v13];

  v14 = [forCopy specifierForID:@"ACTIVATION_COMPACT_ID"];
  v15 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  LODWORD(v12) = [v15 activeEnabled];

  if (v12 && !+[AssistantUtilities deviceIsVision])
  {
    v16 = [(AssistantController *)self _localizeTriggerString:@"ACTIVATION_COMPACT_ALT"];
    [v14 setName:v16];
  }

  v17 = [(AssistantController *)self _specifiersToRemove:forCopy];
  assistantSettings = self->_assistantSettings;
  self->_assistantSettings = v17;

  currentSiriActivationSpecifier = self->_currentSiriActivationSpecifier;
  if (currentSiriActivationSpecifier)
  {
    v20 = 1504;
    if (currentSiriActivationSpecifier == self->_voiceActivationSpecifier)
    {
      v21 = @"ACTIVATION";
    }

    else
    {
      v20 = 1512;
      if (currentSiriActivationSpecifier != self->_voiceActivationSettingsSpecifier)
      {
        goto LABEL_12;
      }

      v21 = @"ACTIVATION_COMPACT_ID";
    }

    v26 = [forCopy specifierForID:v21];
    v27 = *(&self->super.super.super.super.super.isa + v20);
    *(&self->super.super.super.super.super.isa + v20) = v26;

    v28 = *(&self->super.super.super.super.super.isa + v20);
    voiceActivationSpecifier = self->_currentSiriActivationSpecifier;
    self->_currentSiriActivationSpecifier = v28;
  }

  else
  {
    v22 = [forCopy specifierForID:@"ACTIVATION_COMPACT_ID"];
    voiceActivationSettingsSpecifier = self->_voiceActivationSettingsSpecifier;
    self->_voiceActivationSettingsSpecifier = v22;

    v24 = [forCopy specifierForID:@"ACTIVATION"];
    voiceActivationSpecifier = self->_voiceActivationSpecifier;
    self->_voiceActivationSpecifier = v24;
  }

LABEL_12:
  v77 = v14;
  if (AFAssistantRestricted())
  {
    [(PSSpecifier *)self->_voiceActivationSettingsSpecifier setProperty:MEMORY[0x277CBEC28] forKey:v9];
  }

  v29 = objc_alloc_init(MEMORY[0x277CF3580]);
  effectiveGlobalAnnounceSetting = [v29 effectiveGlobalAnnounceSetting];

  v31 = [forCopy specifierForID:@"ANNOUNCE_MESSAGES"];
  announceMessagesSpecifier = self->_announceMessagesSpecifier;
  self->_announceMessagesSpecifier = v31;

  v33 = self->_announceMessagesSpecifier;
  v34 = MEMORY[0x277D40000];
  v35 = MEMORY[0x277D3FE00];
  if (effectiveGlobalAnnounceSetting == -1)
  {
    [forCopy removeObject:self->_announceMessagesSpecifier];
    v41 = self->_announceMessagesSpecifier;
    self->_announceMessagesSpecifier = 0;
  }

  else
  {
    v36 = PSBundlePathForPreferenceBundle();
    [(PSSpecifier *)v33 setProperty:v36 forKey:*v34];

    v37 = MEMORY[0x277CCA8D8];
    v38 = PSBundlePathForPreferenceBundle();
    v40 = v39 = v38;
    v41 = [v37 bundleWithPath:v40];

    infoDictionary = [v41 infoDictionary];
    v43 = [infoDictionary objectForKey:@"NCHasSettingsPaneDefinitionForAnnounceNotifications"];

    if (v43)
    {
      [(PSSpecifier *)self->_announceMessagesSpecifier setProperty:@"AnnounceNotifications" forKey:@"SettingsPaneRecipeContentIdentifier"];
    }

    [(PSSpecifier *)self->_announceMessagesSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*v35];
    [(PSSpecifier *)self->_announceMessagesSpecifier setControllerLoadAction:sel_lazyLoadBundle_];
  }

  v44 = [forCopy specifierForID:@"MESSAGE_WITHOUT_CONFIRMATION"];
  if (_os_feature_enabled_impl())
  {
    v45 = PSBundlePathForPreferenceBundle();
    [v44 setProperty:v45 forKey:*v34];

    v46 = MEMORY[0x277CBEC38];
    [v44 setProperty:MEMORY[0x277CBEC38] forKey:*v35];
    [v44 setProperty:v46 forKey:*MEMORY[0x277D3FD80]];
    [v44 setControllerLoadAction:sel_lazyLoadBundle_];
  }

  else
  {
    [forCopy removeObject:v44];

    v44 = 0;
  }

  v47 = [forCopy specifierForID:@"ACTIVATION"];
  [forCopy removeObject:v47];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v48 = [forCopy specifierForID:@"ANNOUNCE_CALLS"];
    [forCopy removeObject:v48];
  }

  v49 = [(AssistantController *)self assistantEnabled:0];
  bOOLValue = [v49 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [forCopy removeObjectsInArray:self->_assistantSettings];
    [forCopy removeObject:v44];

    v44 = 0;
  }

  v51 = [forCopy specifierForID:@"SIRI_IN_CALL_ID"];
  siriInCallSpecifier = self->_siriInCallSpecifier;
  self->_siriInCallSpecifier = v51;

  v53 = self->_siriInCallSpecifier;
  v54 = +[AssistantSiriInCallController localizedSettingName];
  [(PSSpecifier *)v53 setName:v54];

  if (!+[AssistantSiriInCallController isSettingSupported])
  {
    [forCopy removeObject:self->_siriInCallSpecifier];
  }

  v55 = [forCopy specifierForID:@"SIRI_REQUESTS_GROUP"];
  v56 = objc_opt_class();
  v57 = NSStringFromClass(v56);
  [v55 setProperty:v57 forKey:*MEMORY[0x277D3FF48]];

  [v55 removePropertyForKey:*MEMORY[0x277D3FF60]];
  [(AssistantController *)self _askSiriUseDefaultFooterTextWithGroupSpecifier:v55];
  objc_initWeak(&location, self);
  v58 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__AssistantController_configureSiriRequestsSpecifiersFor___block_invoke;
  block[3] = &unk_278CD1AF0;
  objc_copyWeak(&v83, &location);
  v59 = v55;
  v82 = v59;
  dispatch_async(v58, block);

  assistantLanguageTitlesDictionary = [MEMORY[0x277D61A38] assistantLanguageTitlesDictionary];
  v76 = v59;
  allKeys = [assistantLanguageTitlesDictionary allKeys];
  v62 = [allKeys mutableCopy];

  v63 = [(AssistantController *)self detailTextForLanguageSpecifierFromTitles:assistantLanguageTitlesDictionary];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __58__AssistantController_configureSiriRequestsSpecifiersFor___block_invoke_3;
  v79[3] = &unk_278CD18D8;
  v64 = assistantLanguageTitlesDictionary;
  v80 = v64;
  [v62 sortUsingComparator:v79];
  v65 = [forCopy specifierForID:@"LANGUAGE_ID"];
  languageSpecifier = self->_languageSpecifier;
  self->_languageSpecifier = v65;

  [(PSSpecifier *)self->_languageSpecifier setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [(PSSpecifier *)self->_languageSpecifier setValues:v62];
  [(PSSpecifier *)self->_languageSpecifier setTitleDictionary:v64];
  [(PSSpecifier *)self->_languageSpecifier setShowContentString:1];
  if (v63 && [v63 length])
  {
    [(PSSpecifier *)self->_languageSpecifier setProperty:v63 forKey:*MEMORY[0x277D40160]];
  }

  else
  {
    [(PSSpecifier *)self->_languageSpecifier removePropertyForKey:*MEMORY[0x277D40160]];
  }

  onlineSafetyCountryCodes = [(AssistantController *)self onlineSafetyCountryCodes];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];
  v70 = [onlineSafetyCountryCodes containsObject:countryCode];

  if (v70)
  {
    v71 = MEMORY[0x277D3FAD8];
    v72 = +[AssistantController bundle];
    v73 = [v72 localizedStringForKey:@"SAFETY_COMPLIANCE_BUTTON" value:&stru_285317CF0 table:@"AssistantSettings"];
    v74 = [v71 preferenceSpecifierNamed:v73 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v74 setButtonAction:sel_showSafetyComplianceSheet_];
    [forCopy addObject:v74];
  }

  if (_os_feature_enabled_impl())
  {
    v75 = [forCopy specifierForID:@"VOICE_FEEDBACK_ID"];
    [v75 setDetailControllerClass:objc_opt_class()];
  }

  objc_destroyWeak(&v83);
  objc_destroyWeak(&location);
}

void __58__AssistantController_configureSiriRequestsSpecifiersFor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[215] currentAssetStatus];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__AssistantController_configureSiriRequestsSpecifiersFor___block_invoke_2;
    block[3] = &unk_278CD1928;
    block[4] = v3;
    v7 = *(a1 + 32);
    v8 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __58__AssistantController_configureSiriRequestsSpecifiersFor___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (id)_specifiersToRemove:(id)remove
{
  v24 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_285320118];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  outputVoice = [mEMORY[0x277CEF368] outputVoice];

  if (!outputVoice)
  {
    [v4 addObject:@"VOICE_ID"];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [removeCopy specifierForID:{*(*(&v19 + 1) + 8 * i), v19}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v14 deviceSupported];

  if ((deviceSupported & 1) == 0)
  {
    v16 = [removeCopy specifierForID:@"LANGUAGE_ID"];
    [v7 addObject:v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)configureSettingsTipForGrayMatter
{
  v3 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v3 deviceSupported];

  if (deviceSupported)
  {
    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
    settingsTipGroupSpecifier = self->_settingsTipGroupSpecifier;
    self->_settingsTipGroupSpecifier = v5;

    [(PSSpecifier *)self->_settingsTipGroupSpecifier setIdentifier:@"ASSISTANT_TIP_GROUP"];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"ASSISTANT_TIP" target:self set:0 get:0 detail:0 cell:-1 edit:0];
    settingsTipSpecifier = self->_settingsTipSpecifier;
    self->_settingsTipSpecifier = v7;

    [(PSSpecifier *)self->_settingsTipSpecifier setObject:NSClassFromString(&cfstr_Assistantsetti_1.isa) forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v9 = +[_TtC24AssistantSettingsSupport11TipsManager shared];
    [v9 configureTipsWithController:self];
  }
}

- (void)_updateSiriFooterGroup:(id)group withStatus:(id)status
{
  groupCopy = group;
  statusCopy = status;
  if (groupCopy)
  {
    [groupCopy removePropertyForKey:*MEMORY[0x277D3FF60]];
    value = [statusCopy value];
    state = [statusCopy state];
    if (state <= 3)
    {
      if (state != 2)
      {
        if (state != 3)
        {
LABEL_15:
          [(AssistantController *)self _askSiriUseDefaultFooterTextWithGroupSpecifier:groupCopy];
          goto LABEL_16;
        }

        [(AssistantController *)self _askSiriUseDownloadingFooterTextWithGroupSpecifier:groupCopy withProgress:value];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      if (state == 6)
      {
        [(AssistantController *)self _askSiriUseOutOfSpaceFooterTextWithGroupSpecifier:groupCopy withSpaceRequired:value];
        goto LABEL_16;
      }

      if (state == 5)
      {
        [(AssistantController *)self _askSiriUseDownloadFinishedFooterTextWithGroupSpecifier:groupCopy];
        goto LABEL_16;
      }

      if (state != 4)
      {
        goto LABEL_15;
      }
    }

    [(AssistantController *)self _askSiriUseDownloadReadyFooterTextWithGroupSpecifier:groupCopy];
    goto LABEL_16;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [AssistantController _updateSiriFooterGroup:withStatus:];
  }

LABEL_17:
}

- (void)_askSiriUseRestrictedFooterWithGroupSpecifier:(id)specifier
{
  v19 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v5 = +[AssistantController bundle];
  v6 = [v5 localizedStringForKey:@"SIRI_REQUESTS_ABOUT_LINK_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v5) = [currentDevice sf_isiPad];
  v8 = +[AssistantController bundle];
  v9 = v8;
  if (v5)
  {
    v10 = @"SIRI_RESTRICTED_FOOTER_IPAD";
  }

  else
  {
    v10 = @"SIRI_RESTRICTED_FOOTER_IPHONE";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_285317CF0 table:@"AssistantSettings"];

  v12 = [v11 stringByAppendingFormat:@" %@", v6];
  [specifierCopy setProperty:v12 forKey:*MEMORY[0x277D3FF88]];
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[AssistantController _askSiriUseRestrictedFooterWithGroupSpecifier:]";
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_2413B9000, v13, OS_LOG_TYPE_INFO, "%s #settings Changing Siri text to %@", buf, 0x16u);
  }

  [(AssistantController *)self _addHyperlinkStyleToText:v6 inString:v12 action:sel_showAboutAssistantSheet_ forGroup:specifierCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_askSiriUseDefaultFooterTextWithGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (AFAssistantRestricted())
  {
    [(AssistantController *)self _askSiriUseRestrictedFooterWithGroupSpecifier:specifierCopy];
  }

  else
  {
    [(AssistantController *)self _askSiriUseDownloadFinishedFooterTextWithGroupSpecifier:specifierCopy];
  }
}

- (void)_askSiriUseDownloadReadyFooterTextWithGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [(AssistantController *)self _localizedStringWithFormattedIDTemplate:@"SIRI_REQUESTS_ASSET_DOWNLOAD_FOOTER_TEXT{DEVICE}{CHINA}"];
  if ([(AssistantController *)self isFlexibleFollowupsSupported])
  {
    v6 = [(AssistantController *)self _localizedStringWithFormattedIDTemplate:@"SIRI_REQUESTS_ONDEVICE_ASSET_DOWNLOAD_FOOTER_TEXT{CHINA}"];

    v5 = v6;
  }

  v7 = +[AssistantController bundle];
  v8 = [v7 localizedStringForKey:@"SIRI_REQUESTS_ABOUT_LINK_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

  v9 = sel_showAboutAssistantSheet_;
  if (+[ASTNetworkReachability hasNetworkConnection](ASTNetworkReachability, "hasNetworkConnection") && +[ASTNetworkReachability hasExpensiveCellOnlyNetworkConnection])
  {
    v10 = +[AssistantController bundle];
    v11 = [v10 localizedStringForKey:@"SIRI_REQUESTS_ASSET_DOWNLOAD_CELLULAR_LINK_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

    v9 = sel_showUseCellularConfirmationForSiriAssets_;
    v8 = v11;
  }

  v12 = [v5 stringByAppendingFormat:@" %@", v8];

  [specifierCopy setProperty:v12 forKey:*MEMORY[0x277D3FF88]];
  [(AssistantController *)self _addHyperlinkStyleToText:v8 inString:v12 action:v9 forGroup:specifierCopy];
}

- (void)_askSiriUseDownloadingFooterTextWithGroupSpecifier:(id)specifier withProgress:(id)progress
{
  progressCopy = progress;
  specifierCopy = specifier;
  v8 = [(AssistantController *)self _localizedStringWithFormattedIDTemplate:@"SIRI_REQUESTS_ASSET_DOWNLOADING_FOOTER_TEXT{DEVICE}"];
  if ([(AssistantController *)self isFlexibleFollowupsSupported])
  {
    v9 = [(AssistantController *)self _localizedStringWithFormattedIDTemplate:@"SIRI_REQUESTS_ONDEVICE_ASSET_DOWNLOADING_FOOTER_TEXT"];

    v8 = v9;
  }

  v10 = +[AssistantController bundle];
  v11 = [v10 localizedStringForKey:@"SIRI_REQUESTS_ABOUT_LINK_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

  v22 = [v8 stringByAppendingFormat:@" %@", v11];

  unsignedIntegerValue = [progressCopy unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    v14 = MEMORY[0x277CCABB8];
    *&v13 = unsignedIntegerValue / 100.0;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    v16 = [v14 localizedStringFromNumber:v15 numberStyle:3];

    v17 = MEMORY[0x277CCACA8];
    v18 = +[AssistantController bundle];
    v19 = [v18 localizedStringForKey:@"SIRI_REQUESTS_DOWNLOAD_PERCENT_COMPLETE_FOOTER" value:&stru_285317CF0 table:@"AssistantSettings"];
    v20 = [v17 stringWithFormat:v19, v16];

    v21 = [v22 stringByAppendingString:@"\n\n"];

    v22 = [v21 stringByAppendingString:v20];
  }

  [specifierCopy setProperty:v22 forKey:*MEMORY[0x277D3FF88]];
  [(AssistantController *)self _addHyperlinkStyleToText:v11 inString:v22 action:sel_showAboutAssistantSheet_ forGroup:specifierCopy];
}

- (void)_askSiriUseDownloadFinishedFooterTextWithGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  siriDataSharingOptInStatus = [mEMORY[0x277CEF368] siriDataSharingOptInStatus];

  if (siriDataSharingOptInStatus == 1)
  {
    v6 = [(AssistantController *)self _localizedStringWithFormattedIDTemplate:@"SIRI_REQUESTS_DEVICE_PROCESSING_SHARING_FOOTER_TEXT"];
    v7 = +[AssistantController bundle];
    v8 = [v7 localizedStringForKey:@"SIRI_REQUESTS_IMPROVE_DICTATION_LINK_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

    v9 = [v6 stringByAppendingFormat:@" %@", v8];

    [specifierCopy setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
    [(AssistantController *)self _addHyperlinkStyleToText:v8 inString:v9 action:sel_showAboutImproveDictationSheet_ forGroup:specifierCopy];
    goto LABEL_12;
  }

  v9 = [(AssistantController *)self assistantLanguage:specifierCopy];
  if (![v9 isEqual:@"ko-KR"])
  {
    v12 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
    if ([v12 deviceSupported])
    {
      v13 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
      optedIn = [v13 optedIn];

      if (optedIn)
      {
        v15 = @"SIRI_REQUESTS_DEVICE_PROCESSING_GM_FOOTER_TEXT{DEVICE}";
LABEL_10:
        v11 = [(AssistantController *)self _localizedStringWithFormattedIDTemplate:v15];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v15 = @"SIRI_REQUESTS_DEVICE_PROCESSING_FOOTER_TEXT{DEVICE}";
    goto LABEL_10;
  }

  v10 = +[AssistantController bundle];
  v11 = [v10 localizedStringForKey:@"SIRI_REQUESTS_DEFAULT_FOOTER_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

LABEL_11:
  v16 = +[AssistantController bundle];
  v17 = [v16 localizedStringForKey:@"SIRI_REQUESTS_ABOUT_LINK_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

  v8 = [v11 stringByAppendingFormat:@" %@", v17];

  [specifierCopy setProperty:v8 forKey:*MEMORY[0x277D3FF88]];
  [(AssistantController *)self _addHyperlinkStyleToText:v17 inString:v8 action:sel_showAboutAssistantSheet_ forGroup:specifierCopy];

LABEL_12:
}

- (void)_askSiriUseOutOfSpaceFooterTextWithGroupSpecifier:(id)specifier withSpaceRequired:(id)required
{
  requiredCopy = required;
  specifierCopy = specifier;
  v8 = [(AssistantController *)self _localizedStringWithFormattedIDTemplate:@"SIRI_REQUESTS_OUT_OF_SPACE_FOOTER_TEXT{DEVICE}"];
  if ([(AssistantController *)self isFlexibleFollowupsSupported])
  {
    v9 = [(AssistantController *)self _localizedStringWithFormattedIDTemplate:@"SIRI_REQUESTS_ONDEVICE_ASSET_OUT_OF_SPACE_FOOTER_TEXT"];

    v8 = v9;
  }

  v10 = +[AssistantController bundle];
  v11 = [v10 localizedStringForKey:@"SIRI_REQUESTS_ABOUT_LINK_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

  v12 = [v8 stringByAppendingFormat:@" %@", v11];

  longLongValue = [requiredCopy longLongValue];
  if (longLongValue >= 1)
  {
    v14 = longLongValue;
  }

  else
  {
    v14 = 996147200;
  }

  v15 = [MEMORY[0x277CCA8E8] stringFromByteCount:v14 countStyle:3];
  v16 = MEMORY[0x277CCACA8];
  v17 = +[AssistantController bundle];
  v18 = [v17 localizedStringForKey:@"SIRI_REQUESTS_SPACE_REQUIRED_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];
  v19 = [v16 stringWithFormat:v18, v15];

  v20 = +[AssistantController bundle];
  v21 = [v20 localizedStringForKey:@"SIRI_REQUESTS_MANAGE_STORAGE_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

  v22 = [v12 stringByAppendingFormat:@"\n\n%@ %@", v19, v21];

  [specifierCopy setProperty:v22 forKey:*MEMORY[0x277D3FF88]];
  [(AssistantController *)self _addHyperlinkStyleToText:v11 inString:v22 action:sel_showAboutAssistantSheet_ forGroup:specifierCopy];
  [(AssistantController *)self _addHyperlinkStyleToText:v21 inString:v22 action:sel_openStorageManagement_ forGroup:specifierCopy];
}

- (id)_localizedStringWithFormattedIDTemplate:(id)template
{
  v3 = MEMORY[0x277D75418];
  templateCopy = template;
  currentDevice = [v3 currentDevice];
  sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];

  if (sf_isChinaRegionCellularDevice)
  {
    v7 = @"_CHINA";
  }

  else
  {
    v7 = &stru_285317CF0;
  }

  v8 = [templateCopy stringByReplacingOccurrencesOfString:@"{CHINA}" withString:v7];

  v9 = MEMORY[0x277CCACA8];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  sf_deviceType = [currentDevice2 sf_deviceType];
  uppercaseString = [sf_deviceType uppercaseString];
  v13 = [v9 stringWithFormat:@"_%@", uppercaseString];

  v14 = [v8 stringByReplacingOccurrencesOfString:@"{DEVICE}" withString:v13];
  v15 = +[AssistantController bundle];
  v16 = [v15 localizedStringForKey:v14 value:&stru_285317CF0 table:@"AssistantSettings"];

  if (sf_isChinaRegionCellularDevice)
  {
    v17 = +[AssistantController bundle];
    v18 = [v17 localizedStringForKey:@"SIRI_REQUESTS_CHINA_REGULATORY_TEXT" value:&stru_285317CF0 table:@"AssistantSettings"];
    v19 = [v16 stringByAppendingFormat:@" %@", v18];

    v16 = v19;
  }

  return v16;
}

- (void)_addHyperlinkStyleToText:(id)text inString:(id)string action:(SEL)action forGroup:(id)group
{
  textCopy = text;
  stringCopy = string;
  groupCopy = group;
  v12 = [groupCopy propertyForKey:*MEMORY[0x277D3FF48]];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v12 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = *MEMORY[0x277CBE658];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v16 raise:v17 format:{@"Group must use %@ as footer cell class", v19}];
  }

  v20 = [stringCopy rangeOfString:textCopy];
  if (v21)
  {
    [groupCopy addFooterHyperlinkWithRange:v20 target:v21 action:{self, action}];
  }
}

- (void)confirmResetHiddenSuggestions:(id)suggestions
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15[0] = *MEMORY[0x277D3FE98];
  v4 = +[AssistantController bundle];
  v5 = [v4 localizedStringForKey:@"SUGGESTIONS_RESET_HIDDEN_TITLE" value:&stru_285317CF0 table:@"AssistantSettings"];
  v16[0] = v5;
  v15[1] = *MEMORY[0x277D3FE90];
  v6 = +[AssistantController bundle];
  v7 = [v6 localizedStringForKey:@"SUGGESTIONS_RESET_HIDDEN_PROMPT" value:&stru_285317CF0 table:@"AssistantSettings"];
  v16[1] = v7;
  v15[2] = *MEMORY[0x277D3FE88];
  v8 = +[AssistantController bundle];
  v9 = [v8 localizedStringForKey:@"SUGGESTIONS_RESET_HIDDEN_TITLE" value:&stru_285317CF0 table:@"AssistantSettings"];
  v16[2] = v9;
  v15[3] = *MEMORY[0x277D3FE78];
  v10 = +[AssistantController bundle];
  v11 = [v10 localizedStringForKey:@"SUGGESTIONS_RESET_HIDDEN_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
  v16[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  [v3 setupWithDictionary:v12];

  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE80]];
  [v3 setTarget:self];
  [v3 setConfirmationAction:sel_resetZKWHiddenSuggestions_];
  [(AssistantController *)self showConfirmationViewForSpecifier:v3];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)configureExternalAIModelSettingsSpecifiersFor:(id)for
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v5 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  optedIn = [v5 optedIn];

  if (optedIn)
  {
    v7 = [[_TtC24AssistantSettingsSupport25ExternalAISettingsManager alloc] initWithParentController:self settings:forCopy];
    externalAISettingsManager = self->_externalAISettingsManager;
    self->_externalAISettingsManager = v7;
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
      eligibility = [v11 eligibility];
      v13 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
      v15 = 136315650;
      v16 = "[AssistantController configureExternalAIModelSettingsSpecifiersFor:]";
      v17 = 2048;
      v18 = eligibility;
      v19 = 2048;
      requestState = [v13 requestState];
      _os_log_impl(&dword_2413B9000, v10, OS_LOG_TYPE_DEFAULT, "%s User is either not opted in or still on waitlist. Will not configure ExternalAIModelSettingsSpecifiers. eligibility: %ld, status: %ld", &v15, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)configureSuggestionsSpecifiersFor:(id)for
{
  v4 = MEMORY[0x277D3FAD8];
  forCopy = for;
  v6 = +[AssistantController bundle];
  v7 = [v6 localizedStringForKey:@"SUGGESTIONS_GROUP" value:? table:?];
  v38 = [v4 groupSpecifierWithName:v7];

  v8 = +[AssistantController bundle];
  v37 = [v8 localizedStringForKey:@"SUGGESTIONS_FOOTER" value:&stru_285317CF0 table:@"AssistantSettings"];

  [v38 setProperty:v37 forKey:*MEMORY[0x277D3FF88]];
  [forCopy addObject:v38];
  v9 = MEMORY[0x277D3FAD8];
  v10 = +[AssistantController bundle];
  v11 = [v10 localizedStringForKey:@"SUGGESTIONS_SHOW_BEFORE_SEARCHING" value:&stru_285317CF0 table:@"AssistantSettings"];
  v36 = [v9 preferenceSpecifierNamed:v11 target:self set:sel_setShowZKWSuggestionsEnabled_forSpecifier_ get:sel_isShowZKWSuggestionsEnabled_ detail:0 cell:6 edit:0];

  v12 = *MEMORY[0x277D3FF38];
  v13 = MEMORY[0x277CBEC38];
  [v36 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  v14 = *MEMORY[0x277D3FD80];
  [v36 setProperty:v13 forKey:*MEMORY[0x277D3FD80]];
  [forCopy addObject:v36];
  v15 = MEMORY[0x277D3FAD8];
  v16 = +[AssistantController bundle];
  v17 = [v16 localizedStringForKey:@"SUGGESTIONS_RESET_HIDDEN_NAME" value:&stru_285317CF0 table:@"AssistantSettings"];
  v35 = [v15 preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v35 setButtonAction:sel_confirmResetHiddenSuggestions_];
  [forCopy addObject:v35];
  v18 = objc_opt_new();
  suggestionsFromAppleAllowNotificationsController = self->_suggestionsFromAppleAllowNotificationsController;
  self->_suggestionsFromAppleAllowNotificationsController = v18;

  specifier = [(ASTLockScreenSuggestionsGlobalController *)self->_suggestionsFromAppleAllowNotificationsController specifier];
  [forCopy addObject:specifier];

  v21 = MEMORY[0x277D3FAD8];
  v22 = +[AssistantController bundle];
  v23 = [v22 localizedStringForKey:@"SUGGESTIONS_SHOW_IN_APPLIBRARY" value:&stru_285317CF0 table:@"AssistantSettings"];
  v24 = [v21 preferenceSpecifierNamed:v23 target:self set:sel_setShowInAppLibraryEnabled_forSpecifier_ get:sel_isShowInAppLibraryEnabled_ detail:0 cell:6 edit:0];

  v25 = MEMORY[0x277CBEC38];
  [v24 setProperty:MEMORY[0x277CBEC38] forKey:v12];
  [v24 setProperty:v25 forKey:v14];
  [forCopy addObject:v24];
  v26 = MEMORY[0x277D3FAD8];
  v27 = +[AssistantController bundle];
  v28 = [v27 localizedStringForKey:@"SUGGESTIONS_SHOW_WHEN_SHARING" value:&stru_285317CF0 table:@"AssistantSettings"];
  v29 = [v26 preferenceSpecifierNamed:v28 target:self set:sel_setShowWhenSharingEnabled_forSpecifier_ get:sel_isShowWhenSharingEnabled_ detail:0 cell:6 edit:0];

  [v29 setProperty:v25 forKey:v12];
  v30 = v25;
  [v29 setProperty:v25 forKey:v14];
  [forCopy addObject:v29];
  v31 = MEMORY[0x277D3FAD8];
  v32 = +[AssistantController bundle];
  v33 = [v32 localizedStringForKey:@"SUGGESTIONS_SHOW_WHEN_LISTENING" value:&stru_285317CF0 table:@"AssistantSettings"];
  v34 = [v31 preferenceSpecifierNamed:v33 target:self set:sel_setShowWhenListeningEnabled_forSpecifier_ get:sel_isShowWhenListeningEnabled_ detail:0 cell:6 edit:0];

  [v34 setProperty:v30 forKey:v12];
  [v34 setProperty:v30 forKey:v14];
  [forCopy addObject:v34];
}

- (void)configureApplicationListSpecifiersFor:(id)for
{
  forCopy = for;
  v4 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  if ([v4 deviceSupported])
  {
    v5 = +[AssistantController bundle];
    v31 = [v5 localizedStringForKey:@"GM_APP_ACCESS_GROUP" value:&stru_285317CF0 table:@"AssistantSettings-GM"];
  }

  else
  {
    v31 = @"APP_ACCESS_GROUP";
  }

  v6 = MEMORY[0x277D3FAD8];
  v7 = +[AssistantController bundle];
  v8 = [v7 localizedStringForKey:v31 value:&stru_285317CF0 table:@"AssistantSettings"];
  v9 = [v6 groupSpecifierWithName:v8];

  [forCopy addObject:v9];
  v10 = MEMORY[0x277D3FAD8];
  v11 = +[AssistantController bundle];
  v12 = [v11 localizedStringForKey:@"APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  v13 = [v10 preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  [v13 setDetailControllerClass:objc_opt_class()];
  [v13 setIdentifier:@"ASSISTANT_APP_CLIPS_SETTINGS_ID"];
  v14 = *MEMORY[0x277D40020];
  v15 = MEMORY[0x277CBEC38];
  [v13 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v16 = *MEMORY[0x277D3FFD8];
  [v13 setProperty:@"com.apple.graphic-icon.app-clips" forKey:*MEMORY[0x277D3FFD8]];
  [forCopy addObject:v13];
  v17 = MEMORY[0x277D3FAD8];
  v18 = +[AssistantController bundle];
  v19 = [v18 localizedStringForKey:@"APPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  v20 = [v17 preferenceSpecifierNamed:v19 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  [v20 setDetailControllerClass:objc_opt_class()];
  [v20 setIdentifier:@"ASSISTANT_APPS_SETTINGS_ID"];
  [v20 setProperty:v15 forKey:v14];
  [v20 setProperty:@"com.apple.graphic-icon.home-screen" forKey:v16];
  [forCopy addObject:v20];

  v21 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v21 deviceSupported];

  if (deviceSupported)
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v9 setProperty:v24 forKey:*MEMORY[0x277D3FF48]];

    [v9 removePropertyForKey:*MEMORY[0x277D3FF60]];
    v25 = +[AssistantController bundle];
    v26 = [v25 localizedStringForKey:@"GM_PRIVACY_FOOTER_TEXT" value:&stru_285317CF0 table:@"AssistantSettings-GM"];

    v27 = +[AssistantController bundle];
    v28 = [v27 localizedStringForKey:@"GM_PRIVACY_FOOTER_LINK_TEXT" value:&stru_285317CF0 table:@"AssistantSettings-GM"];

    v29 = [v26 stringByAppendingFormat:@" %@", v28];

    [v9 setProperty:v29 forKey:*MEMORY[0x277D3FF88]];
    [(AssistantController *)self _addHyperlinkStyleToText:v28 inString:v29 action:sel_showAboutAppleIntelligenceSheet_ forGroup:v9];
  }
}

- (void)saveSpotlightSettings
{
  v2 = *MEMORY[0x277CEF618];
  allObjects = [(NSMutableSet *)self->_disabledSpotlightDomains allObjects];
  v4 = *MEMORY[0x277CEF630];
  CFPreferencesSetAppValue(v2, allObjects, *MEMORY[0x277CEF630]);
  CFPreferencesSynchronize(v4, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v5 = *MEMORY[0x277CEF638];

  notify_post(v5);
}

+ (id)shortTitlesForLanguageIdentifiers:(id)identifiers
{
  v3 = MEMORY[0x277CBEAF8];
  identifiersCopy = identifiers;
  _deviceLanguage = [v3 _deviceLanguage];
  v6 = [v3 localeWithLocaleIdentifier:_deviceLanguage];

  v7 = [MEMORY[0x277D61A38] shortTitlesForLanguageIdentifiers:identifiersCopy deviceLanguageLocale:v6];

  return v7;
}

- (void)_updateSpecifiersForLanguage:(id)language
{
  v16 = AFOutputVoiceLanguageForRecognitionLanguage();
  v4 = [(SUICAssistantVoiceSettingsConnection *)self->_settingsConnection languageHasVoiceSelection:?];
  v5 = [(AssistantController *)self specifierForID:@"VOICE_ID"];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
    }

    else
    {
      v7 = [(AssistantController *)self specifierForID:@"ACTIVATION_COMPACT_ID"];

      if (v7)
      {
        [(AssistantController *)self insertSpecifier:self->_voiceSpecifier afterSpecifierID:@"ACTIVATION_COMPACT_ID" animated:1];
      }
    }
  }

  else
  {

    if (v6)
    {
      [(AssistantController *)self removeSpecifier:self->_voiceSpecifier animated:1];
    }
  }

  v8 = [(AssistantController *)self specifierForID:@"ACTIVATION"];
  v9 = [(AssistantController *)self _localizeTriggerString:@"ACTIVATION"];
  [v8 setName:v9];

  if ([(AssistantController *)self _isHeySiriAlwaysOn])
  {
    [v8 setProperty:&unk_285320100 forKey:*MEMORY[0x277D3FF38]];
  }

  [(AssistantController *)self reloadSpecifier:v8];
  v10 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v10 deviceSupported];

  if (deviceSupported)
  {
    v12 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
    if ([v12 eligibility] == 17)
    {
LABEL_14:

LABEL_15:
      [(GMAnalyticsProvider *)self->_gmAnalyticsProvider sendAction:12];
      goto LABEL_16;
    }

    v13 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
    if ([v13 eligibility] == 15)
    {

      goto LABEL_14;
    }

    v14 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
    eligibility = [v14 eligibility];

    if (eligibility == 16)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (id)assistantVoice:(id)voice
{
  v4 = [(AssistantController *)self specifierForID:@"VOICE_ID"];

  localizedDisplayWithRegion = &stru_285317CF0;
  if (v4)
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    outputVoice = [mEMORY[0x277CEF368] outputVoice];

    name = [outputVoice name];
    if (![name length])
    {
      mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
      languageCode = [outputVoice languageCode];
      v11 = [mEMORY[0x277CEF2D8] voiceNamesForOutputLanguageCode:languageCode gender:{objc_msgSend(outputVoice, "gender")}];
      firstObject = [v11 firstObject];

      name = firstObject;
    }

    mEMORY[0x277CEF2D8]2 = [MEMORY[0x277CEF2D8] sharedInstance];
    languageCode2 = [outputVoice languageCode];
    v15 = [mEMORY[0x277CEF2D8]2 outputVoiceDescriptorForOutputLanguageCode:languageCode2 voiceName:name];

    if (v15)
    {
      localizedDisplayWithRegion = [v15 localizedDisplayWithRegion];
    }

    else
    {
      settingsConnection = self->_settingsConnection;
      languageCode3 = [outputVoice languageCode];
      v18 = [(SUICAssistantVoiceSettingsConnection *)settingsConnection getAvailableDialectsForLanguage:languageCode3];
      if ([v18 count] < 2)
      {
        v21 = 0;
      }

      else
      {
        v19 = self->_settingsConnection;
        languageCode4 = [outputVoice languageCode];
        v21 = [(SUICAssistantVoiceSettingsConnection *)v19 dialectForLanguageIdentifier:languageCode4];
      }

      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = &stru_285317CF0;
      }

      localizedDisplayWithRegion = v22;
    }
  }

  return localizedDisplayWithRegion;
}

- (id)voiceActivationSelection:(id)selection
{
  v4 = [(AssistantController *)self specifierForID:@"ACTIVATION_COMPACT_ID"];

  if (!v4 || ([(AssistantController *)self _isVoiceTriggerEnabled]|| +[AssistantUtilities isQuickTypeGestureEnabled](AssistantUtilities, "isQuickTypeGestureEnabled") || +[AssistantUtilities isHardwareButtonTrigger]) && !AFAssistantRestricted())
  {
    v6 = &stru_285317CF0;
  }

  else
  {
    v5 = +[AssistantController bundle];
    v6 = [v5 localizedStringForKey:@"ACTIVATION_OFF" value:&stru_285317CF0 table:@"AssistantSettings"];
  }

  return v6;
}

- (id)_localizeTriggerString:(id)string
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF368];
  stringCopy = string;
  sharedPreferences = [v3 sharedPreferences];
  languageCode = [sharedPreferences languageCode];

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  v8 = [mEMORY[0x277D7A8D0] localizedTriggerPhraseForLanguageCode:languageCode];

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[AssistantController _localizeTriggerString:]";
    v19 = 2112;
    v20 = languageCode;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_2413B9000, v9, OS_LOG_TYPE_DEFAULT, "%s languageCode: %@, triggerPhrase: %@", buf, 0x20u);
  }

  v10 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  v11 = MEMORY[0x277CCACA8];
  v12 = +[AssistantController bundle];
  v13 = [v12 localizedStringForKey:stringCopy value:&stru_285317CF0 table:@"AssistantSettings"];

  v14 = [v11 stringWithFormat:v13, v10];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)watchSupportsSiriLanguageCode:(id)code
{
  codeCopy = code;
  sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
  getActivePairedDevice = [sharedInstance getActivePairedDevice];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v6 = getNRDevicePropertySystemNameSymbolLoc_ptr;
  v15 = getNRDevicePropertySystemNameSymbolLoc_ptr;
  if (!getNRDevicePropertySystemNameSymbolLoc_ptr)
  {
    v7 = NanoRegistryLibrary();
    v13[3] = dlsym(v7, "NRDevicePropertySystemName");
    getNRDevicePropertySystemNameSymbolLoc_ptr = v13[3];
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v6)
  {
    [AssistantController watchSupportsSiriLanguageCode:];
  }

  v8 = [getActivePairedDevice valueForProperty:*v6];
  v9 = getNRDevicePropertySystemVersion();
  v10 = [getActivePairedDevice valueForProperty:v9];

  LOBYTE(v9) = [MEMORY[0x277CEF218] siriIsSupportedForLanguageCode:codeCopy productName:v8 productVersion:v10 error:0];
  return v9;
}

- (void)_setAssistantEnabled:(id)enabled forSpecifier:(id)specifier presentingViewController:(id)controller actionHandler:(id)handler
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  controllerCopy = controller;
  handlerCopy = handler;
  sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
  isPaired = [sharedInstance isPaired];

  if ([enabledCopy BOOLValue])
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    languageCode = [mEMORY[0x277CEF368] languageCode];

    if ([languageCode length])
    {
      if (!isPaired)
      {
        goto LABEL_8;
      }
    }

    else
    {
      mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
      v20 = [mEMORY[0x277CEF368]2 bestSupportedLanguageCodeForLanguageCode:0];

      languageCode = v20;
      if (!isPaired)
      {
        goto LABEL_8;
      }
    }

    if (![(AssistantController *)self watchSupportsSiriLanguageCode:languageCode])
    {
      v21 = MEMORY[0x277D750F8];
      v22 = +[AssistantController bundle];
      v23 = [v22 localizedStringForKey:@"ASSISTANT_ENABLE_CONTINUE" value:&stru_285317CF0 table:@"AssistantSettings"];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __96__AssistantController__setAssistantEnabled_forSpecifier_presentingViewController_actionHandler___block_invoke;
      v46[3] = &unk_278CD1B20;
      v46[4] = self;
      v24 = specifierCopy;
      v47 = v24;
      v36 = controllerCopy;
      v48 = v36;
      v49 = handlerCopy;
      v35 = [v21 actionWithTitle:v23 style:0 handler:v46];

      v25 = MEMORY[0x277D750F8];
      v26 = +[AssistantController bundle];
      v27 = [v26 localizedStringForKey:@"ASSISTANT_ENABLE_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __96__AssistantController__setAssistantEnabled_forSpecifier_presentingViewController_actionHandler___block_invoke_2;
      v44[3] = &unk_278CD1B48;
      v44[4] = self;
      v45 = v24;
      v34 = [v25 actionWithTitle:v27 style:1 handler:v44];

      v33 = MEMORY[0x277D75110];
      v28 = +[AssistantController bundle];
      v29 = [v28 localizedStringForKey:@"ASSISTANT_ENABLE_TITLE_WATCH_UNAVAILABLE" value:&stru_285317CF0 table:@"AssistantSettings"];
      v30 = +[AssistantController bundle];
      v31 = [v30 localizedStringForKey:@"ASSISTANT_ENABLE_WATCH_UNAVAILABLE" value:&stru_285317CF0 table:@"AssistantSettings"];
      v32 = [v33 alertControllerWithTitle:v29 message:v31 preferredStyle:0];

      [v32 addAction:v35];
      [v32 addAction:v34];
      if (v36)
      {
        [v36 presentViewController:v32 animated:1 completion:0];
      }

      goto LABEL_12;
    }

LABEL_8:
    [(AssistantController *)self showAssistantConfirmationViewForSpecifier:specifierCopy presentingViewController:controllerCopy actionHandler:handlerCopy];
LABEL_12:

    goto LABEL_13;
  }

  objc_initWeak(&location, self);
  AFSettingsConnection = self->_AFSettingsConnection;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __96__AssistantController__setAssistantEnabled_forSpecifier_presentingViewController_actionHandler___block_invoke_3;
  v37[3] = &unk_278CD1B98;
  objc_copyWeak(&v41, &location);
  v38 = specifierCopy;
  v42 = isPaired;
  v39 = controllerCopy;
  v40 = handlerCopy;
  [AFSettingsConnection fetchMultiUserVoiceIdentificationSetting:v37];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
LABEL_13:
}

void __96__AssistantController__setAssistantEnabled_forSpecifier_presentingViewController_actionHandler___block_invoke_3(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__AssistantController__setAssistantEnabled_forSpecifier_presentingViewController_actionHandler___block_invoke_4;
  block[3] = &unk_278CD1B70;
  v8 = a2;
  objc_copyWeak(&v7, (a1 + 56));
  v4 = *(a1 + 32);
  v9 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v7);
}

void __96__AssistantController__setAssistantEnabled_forSpecifier_presentingViewController_actionHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 64) == 1 && !+[AssistantUtilities deviceIsVision])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained confirmDisableForMultiUserVoiceIdentificationWithSpecifier:*(a1 + 32) pairedWatch:*(a1 + 65) presentingViewController:*(a1 + 40) actionHandler:*(a1 + 48)];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained confirmDisableWithSpecifier:*(a1 + 32) pairedWatch:*(a1 + 65) presentingViewController:*(a1 + 40) actionHandler:*(a1 + 48)];
  }
}

- (void)confirmDisableForMultiUserVoiceIdentificationWithSpecifier:(id)specifier pairedWatch:(BOOL)watch presentingViewController:(id)controller actionHandler:(id)handler
{
  specifierCopy = specifier;
  controllerCopy = controller;
  handlerCopy = handler;
  objc_initWeak(location, self);
  v13 = MEMORY[0x277D750F8];
  v14 = +[AssistantController bundle];
  v15 = [v14 localizedStringForKey:@"ASSISTANT_DISABLE_MULTI_USER_ENABLED_OK" value:&stru_285317CF0 table:@"AssistantSettings"];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __133__AssistantController_confirmDisableForMultiUserVoiceIdentificationWithSpecifier_pairedWatch_presentingViewController_actionHandler___block_invoke;
  v37[3] = &unk_278CD1BC0;
  objc_copyWeak(&v41, location);
  v16 = specifierCopy;
  v38 = v16;
  watchCopy = watch;
  v17 = controllerCopy;
  v39 = v17;
  v18 = handlerCopy;
  v40 = v18;
  v19 = [v13 actionWithTitle:v15 style:0 handler:v37];

  v20 = MEMORY[0x277D750F8];
  v21 = +[AssistantController bundle];
  v22 = [v21 localizedStringForKey:@"ASSISTANT_DISABLE_MULTI_USER_ENABLED_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __133__AssistantController_confirmDisableForMultiUserVoiceIdentificationWithSpecifier_pairedWatch_presentingViewController_actionHandler___block_invoke_2;
  v33 = &unk_278CD1BE8;
  objc_copyWeak(&v36, location);
  v23 = v16;
  v34 = v23;
  v24 = v18;
  v35 = v24;
  v25 = [v20 actionWithTitle:v22 style:1 handler:&v30];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v20) = [currentDevice sf_isiPad];

  v27 = +[AssistantController bundle];
  v28 = [v27 localizedStringForKey:@"ASSISTANT_DISABLE_WARNING_MULTI_USER_ENABLED" value:&stru_285317CF0 table:@"AssistantSettings"];

  v29 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v28 preferredStyle:v20];
  [v29 addAction:v19];
  [v29 addAction:v25];
  [v17 presentViewController:v29 animated:1 completion:0];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v41);
  objc_destroyWeak(location);
}

void __133__AssistantController_confirmDisableForMultiUserVoiceIdentificationWithSpecifier_pairedWatch_presentingViewController_actionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained confirmDisableWithSpecifier:*(a1 + 32) pairedWatch:*(a1 + 64) presentingViewController:*(a1 + 40) actionHandler:*(a1 + 48)];
}

uint64_t __133__AssistantController_confirmDisableForMultiUserVoiceIdentificationWithSpecifier_pairedWatch_presentingViewController_actionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained assistantDisabledCancelled:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)confirmDisableWithSpecifier:(id)specifier pairedWatch:(BOOL)watch presentingViewController:(id)controller actionHandler:(id)handler
{
  watchCopy = watch;
  specifierCopy = specifier;
  controllerCopy = controller;
  handlerCopy = handler;
  objc_initWeak(location, self);
  v12 = MEMORY[0x277D750F8];
  v13 = +[AssistantController bundle];
  v14 = [v13 localizedStringForKey:@"ASSISTANT_DISABLE_OK" value:&stru_285317CF0 table:@"AssistantSettings"];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __102__AssistantController_confirmDisableWithSpecifier_pairedWatch_presentingViewController_actionHandler___block_invoke;
  v53[3] = &unk_278CD1BE8;
  objc_copyWeak(&v56, location);
  v15 = specifierCopy;
  v54 = v15;
  v16 = handlerCopy;
  v55 = v16;
  v48 = [v12 actionWithTitle:v14 style:0 handler:v53];

  v17 = MEMORY[0x277D750F8];
  v18 = +[AssistantController bundle];
  v19 = [v18 localizedStringForKey:@"ASSISTANT_DISABLE_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __102__AssistantController_confirmDisableWithSpecifier_pairedWatch_presentingViewController_actionHandler___block_invoke_2;
  v49[3] = &unk_278CD1BE8;
  objc_copyWeak(&v52, location);
  v20 = v15;
  v50 = v20;
  v21 = v16;
  v51 = v21;
  v22 = [v17 actionWithTitle:v19 style:1 handler:v49];

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  dictationIsEnabled = [mEMORY[0x277CEF368] dictationIsEnabled];
  v25 = @"ASSISTANT_DISABLE_WARNING_DICTATION_DISABLED";
  if (dictationIsEnabled)
  {
    v25 = @"ASSISTANT_DISABLE_WARNING_DICTATION_ENABLED";
  }

  v26 = v25;

  v27 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  activeEnabled = [v27 activeEnabled];

  if (activeEnabled)
  {
    v29 = [(__CFString *)v26 stringByAppendingString:@"_GM"];

    v30 = +[AssistantController bundle];
    v31 = [v30 localizedStringForKey:v29 value:&stru_285317CF0 table:@"AssistantSettings-GM"];
  }

  else
  {
    v32 = watchCopy;
    sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
    getPairedDevices = [sharedInstance getPairedDevices];
    v35 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_6];
    v36 = [getPairedDevices filteredArrayUsingPredicate:v35];
    v37 = [v36 count];

    if (v32 && v37)
    {
      v38 = MEMORY[0x277D75418];
      v39 = [(__CFString *)v26 stringByAppendingString:@"_WATCH"];
      v29 = [v38 modelSpecificLocalizedStringKeyForKey:v39];
    }

    else
    {
      v29 = v26;
    }

    v30 = +[AssistantController bundle];
    v31 = [v30 localizedStringForKey:v29 value:&stru_285317CF0 table:@"AssistantSettings"];
  }

  v40 = v31;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isiPad])
  {
    v42 = +[AssistantController bundle];
    [v42 localizedStringForKey:@"ASSISTANT_DISABLE_TITLE_IPAD" value:&stru_285317CF0 table:@"AssistantSettings"];
  }

  else
  {
    v42 = +[AssistantController bundle];
    [v42 localizedStringForKey:@"ASSISTANT_DISABLE_TITLE_IPHONE" value:&stru_285317CF0 table:@"AssistantSettings"];
  }
  v43 = ;

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice2 sf_isiPad];

  v46 = [MEMORY[0x277D75110] alertControllerWithTitle:v43 message:v40 preferredStyle:sf_isiPad];
  [v46 addAction:v48];
  [v46 addAction:v22];
  [controllerCopy presentViewController:v46 animated:1 completion:0];

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v56);
  objc_destroyWeak(location);
}

uint64_t __102__AssistantController_confirmDisableWithSpecifier_pairedWatch_presentingViewController_actionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained assistantDisabledConfirmed:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __102__AssistantController_confirmDisableWithSpecifier_pairedWatch_presentingViewController_actionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained assistantDisabledCancelled:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

BOOL __102__AssistantController_confirmDisableWithSpecifier_pairedWatch_presentingViewController_actionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = getNRDevicePropertySystemVersion();
  v4 = [v2 valueForProperty:v3];

  v5 = [v4 integerValue] < 6;
  return v5;
}

- (void)showAssistantConfirmationViewForSpecifier:(id)specifier presentingViewController:(id)controller actionHandler:(id)handler
{
  specifierCopy = specifier;
  controllerCopy = controller;
  handlerCopy = handler;
  sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
  isPaired = [sharedInstance isPaired];

  objc_initWeak(location, self);
  v13 = MEMORY[0x277D750F8];
  v14 = +[AssistantController bundle];
  v15 = [v14 localizedStringForKey:@"ASSISTANT_ENABLE_OK" value:&stru_285317CF0 table:@"AssistantSettings"];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __104__AssistantController_showAssistantConfirmationViewForSpecifier_presentingViewController_actionHandler___block_invoke;
  v48[3] = &unk_278CD1C30;
  objc_copyWeak(&v52, location);
  v16 = specifierCopy;
  v49 = v16;
  v43 = controllerCopy;
  v50 = v43;
  v17 = handlerCopy;
  v51 = v17;
  v44 = [v13 actionWithTitle:v15 style:0 handler:v48];

  v18 = MEMORY[0x277D750F8];
  v19 = +[AssistantController bundle];
  v20 = [v19 localizedStringForKey:@"ASSISTANT_ENABLE_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __104__AssistantController_showAssistantConfirmationViewForSpecifier_presentingViewController_actionHandler___block_invoke_2;
  v45[3] = &unk_278CD1C58;
  v45[4] = self;
  v21 = v16;
  v46 = v21;
  v41 = v17;
  v47 = v41;
  v42 = [v18 actionWithTitle:v20 style:1 handler:v45];

  sharedInstance2 = [getNRPairedDeviceRegistryClass() sharedInstance];
  getPairedDevices = [sharedInstance2 getPairedDevices];
  v24 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_600];
  v25 = [getPairedDevices filteredArrayUsingPredicate:v24];
  v26 = [v25 count];

  if (v26)
  {
    v27 = isPaired;
  }

  else
  {
    v27 = 0;
  }

  v39 = v21;
  if (v27 == 1)
  {
    v28 = MEMORY[0x277D75418];
    v29 = [@"ASSISTANT_ENABLE_WARNING" stringByAppendingString:{@"_WATCH", v21}];
    v30 = [v28 modelSpecificLocalizedStringKeyForKey:v29];
  }

  else
  {
    v30 = @"ASSISTANT_ENABLE_WARNING";
  }

  v31 = MEMORY[0x277D75110];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isiPad])
  {
    v33 = +[AssistantController bundle];
    [v33 localizedStringForKey:@"ASSISTANT_ENABLE_TITLE_IPAD" value:&stru_285317CF0 table:@"AssistantSettings"];
  }

  else
  {
    v33 = +[AssistantController bundle];
    [v33 localizedStringForKey:@"ASSISTANT_ENABLE_TITLE_IPHONE" value:&stru_285317CF0 table:@"AssistantSettings"];
  }
  v34 = ;
  v35 = +[AssistantController bundle];
  v36 = [v35 localizedStringForKey:v30 value:&stru_285317CF0 table:@"AssistantSettings"];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  v38 = [v31 alertControllerWithTitle:v34 message:v36 preferredStyle:{objc_msgSend(currentDevice2, "sf_isiPad")}];

  [v38 addAction:v44];
  [v38 addAction:v42];
  [v43 presentViewController:v38 animated:1 completion:0];

  objc_destroyWeak(&v52);
  objc_destroyWeak(location);
}

void __104__AssistantController_showAssistantConfirmationViewForSpecifier_presentingViewController_actionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleThemisEnablementConfirmationForSpecifier:*(a1 + 32) presentingViewController:*(a1 + 40) actionHandler:*(a1 + 48)];
}

uint64_t __104__AssistantController_showAssistantConfirmationViewForSpecifier_presentingViewController_actionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) assistantEnabledCancelled:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

BOOL __104__AssistantController_showAssistantConfirmationViewForSpecifier_presentingViewController_actionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = getNRDevicePropertySystemVersion();
  v4 = [v2 valueForProperty:v3];

  v5 = [v4 integerValue] < 6;
  return v5;
}

- (void)_handleEnablementConfirmationForSpecifier:(id)specifier actionHandler:(id)handler
{
  handlerCopy = handler;
  currentSiriActivationSpecifier = specifier;
  [(AssistantController *)self assistantEnabledConfirmed:currentSiriActivationSpecifier];
  if ([(AssistantController *)self _isCurrentSpecifierVoiceActivation])
  {
    [(AssistantController *)self setVoiceTrigger:MEMORY[0x277CBEC38] forSpecifier:currentSiriActivationSpecifier];
    v7 = @"HeySiri";
  }

  else
  {
    [(AssistantController *)self setHardwareButtonTrigger:MEMORY[0x277CBEC38] forSpecifier:currentSiriActivationSpecifier];

    currentSiriActivationSpecifier = self->_currentSiriActivationSpecifier;
    self->_currentSiriActivationSpecifier = 0;
    v7 = @"HardwareButton";
  }

  [AssistantMetrics didEnableSiriConfirmed:1 source:v7];
  if ([(VTUISiriDataSharingOptInPresenter *)self->_siriDataSharingPresenter shouldShowSiriDataSharingOptInView])
  {
    [(AssistantController *)self _presentSiriDataSharingOptInViewController];
  }

  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
    v8 = handlerCopy;
  }
}

- (BOOL)_isCurrentSpecifierVoiceActivation
{
  voiceActivationSpecifier = self->_voiceActivationSpecifier;
  if (voiceActivationSpecifier && self->_currentSiriActivationSpecifier == voiceActivationSpecifier)
  {
    return 1;
  }

  voiceActivationSettingsSpecifier = self->_voiceActivationSettingsSpecifier;
  currentSiriActivationSpecifier = self->_currentSiriActivationSpecifier;
  if (voiceActivationSettingsSpecifier && currentSiriActivationSpecifier == voiceActivationSettingsSpecifier)
  {
    return 1;
  }

  name = [(PSSpecifier *)currentSiriActivationSpecifier name];
  v7 = [name isEqualToString:@"ACTIVATION_CONFIRMATION"];

  return v7;
}

- (BOOL)_isCurrentSpecifierQuickTypeGesture
{
  name = [(PSSpecifier *)self->_currentSiriActivationSpecifier name];
  v3 = [name isEqualToString:@"ACTIVATION_DOUBLE_TAP_ID"];

  return v3;
}

- (void)_handleThemisEnablementConfirmationForSpecifier:(id)specifier presentingViewController:(id)controller actionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  controllerCopy = controller;
  handlerCopy = handler;
  if (!self->_enablementConfigurationProvider)
  {
    v11 = objc_alloc_init(MEMORY[0x277CEF298]);
    enablementConfigurationProvider = self->_enablementConfigurationProvider;
    self->_enablementConfigurationProvider = v11;
  }

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  v14 = [mEMORY[0x277CEF368] bestSupportedLanguageCodeForLanguageCode:0];

  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[AssistantController _handleThemisEnablementConfirmationForSpecifier:presentingViewController:actionHandler:]";
    _os_log_impl(&dword_2413B9000, v15, OS_LOG_TYPE_DEFAULT, "%s Fetching Enablement Configuration", buf, 0xCu);
  }

  v16 = self->_enablementConfigurationProvider;
  v28 = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __110__AssistantController__handleThemisEnablementConfirmationForSpecifier_presentingViewController_actionHandler___block_invoke;
  v23[3] = &unk_278CD1CA8;
  v23[4] = self;
  v24 = v14;
  v26 = controllerCopy;
  v27 = handlerCopy;
  v25 = specifierCopy;
  v18 = controllerCopy;
  v19 = handlerCopy;
  v20 = specifierCopy;
  v21 = v14;
  [(AFEnablementFlowConfigurationProvider *)v16 configurationForEnablementFlow:6 recognitionLanguageCodes:v17 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __110__AssistantController__handleThemisEnablementConfirmationForSpecifier_presentingViewController_actionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__AssistantController__handleThemisEnablementConfirmationForSpecifier_presentingViewController_actionHandler___block_invoke_2;
  block[3] = &unk_278CD1C80;
  v11 = v3;
  v9 = *(a1 + 32);
  v4 = *(&v9 + 1);
  v5 = *(a1 + 48);
  v14 = *(a1 + 64);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __110__AssistantController__handleThemisEnablementConfirmationForSpecifier_presentingViewController_actionHandler___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v22 = 136315394;
    v23 = "[AssistantController _handleThemisEnablementConfirmationForSpecifier:presentingViewController:actionHandler:]_block_invoke_2";
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2413B9000, v3, OS_LOG_TYPE_DEFAULT, "%s Enablement Configuration %@", &v22, 0x16u);
  }

  objc_storeStrong((*(a1 + 40) + 1688), *(a1 + 32));
  v5 = [*(a1 + 32) requiresVoiceSelectionForRecognitionLanguage:*(a1 + 48)];
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  if (v5)
  {
    v9 = [v6 _createVoiceSelectionDismissalHandlerWithSpecifier:v7 actionHandler:v8];
    v10 = *(a1 + 40);
    v11 = *(v10 + 1712);
    *(v10 + 1712) = v9;

    v12 = [*(a1 + 40) _createVoiceSelectionCompletionForSpecifier:*(a1 + 56) recognitionLanguageCode:*(a1 + 48)];
    v13 = *(a1 + 40);
    v14 = *(v13 + 1704);
    *(v13 + 1704) = v12;

    v15 = [*(a1 + 40) _createEnablementFlowControllerForConfiguration:*(a1 + 32) recognitionLanguageCode:*(a1 + 48)];
    v16 = *(a1 + 40);
    v17 = *(v16 + 1696);
    *(v16 + 1696) = v15;

    v18 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      v22 = 136315394;
      v23 = "[AssistantController _handleThemisEnablementConfirmationForSpecifier:presentingViewController:actionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_2413B9000, v18, OS_LOG_TYPE_DEFAULT, "%s Presenting Voice selection for %@", &v22, 0x16u);
    }

    result = [*(a1 + 64) presentViewController:*(*(a1 + 40) + 1696) animated:1 completion:0];
  }

  else
  {
    result = [v6 _handleEnablementConfirmationForSpecifier:v7 actionHandler:v8];
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_createEnablementFlowControllerForConfiguration:(id)configuration recognitionLanguageCode:(id)code
{
  configurationCopy = configuration;
  codeCopy = code;
  if ([(AssistantController *)self _isCurrentSpecifierVoiceActivation])
  {
    mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
    v9 = [mEMORY[0x277D653F8] isSATEnrolledForSiriProfileId:0 forLanguageCode:codeCopy];

    shouldShowSiriDataSharingOptInView = v9 ^ 1;
  }

  else
  {
    shouldShowSiriDataSharingOptInView = [(VTUISiriDataSharingOptInPresenter *)self->_siriDataSharingPresenter shouldShowSiriDataSharingOptInView];
  }

  v11 = +[AssistantController bundle];
  v12 = [v11 localizedStringForKey:@"ASSISTANT_ENABLE_DONE" value:&stru_285317CF0 table:@"AssistantSettings"];

  if (shouldShowSiriDataSharingOptInView)
  {
    v13 = +[AssistantController bundle];
    v14 = [v13 localizedStringForKey:@"ASSISTANT_ENABLE_NEXT" value:&stru_285317CF0 table:@"AssistantSettings"];

    v12 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v12 style:2 target:0 action:0];
  v16 = objc_alloc(MEMORY[0x277D751E0]);
  v17 = +[AssistantController bundle];
  v18 = [v17 localizedStringForKey:@"ASSISTANT_ENABLE_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
  v19 = [v16 initWithTitle:v18 style:2 target:self action:sel__voiceSelectionCancelled];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v20 = getVTUIVoiceSelectionViewControllerClass_softClass;
  v38 = getVTUIVoiceSelectionViewControllerClass_softClass;
  if (!getVTUIVoiceSelectionViewControllerClass_softClass)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __getVTUIVoiceSelectionViewControllerClass_block_invoke;
    v34[3] = &unk_278CD1658;
    v34[4] = &v35;
    __getVTUIVoiceSelectionViewControllerClass_block_invoke(v34);
    v20 = v36[3];
  }

  v21 = v20;
  _Block_object_dispose(&v35, 8);
  v22 = [[v20 alloc] initWithRecognitionLanguage:codeCopy allowsRandomSelection:objc_msgSend(configurationCopy barButtonItemForContinue:"voiceSelectionAllowsRandomSelection") customVoicePreviewer:v15 delegate:{0, self}];
  v23 = [(PSRootController *)[PSVoiceTriggerRootController alloc] initWithRootViewController:v22];
  enablementFlowNavigationController = self->_enablementFlowNavigationController;
  self->_enablementFlowNavigationController = &v23->super;

  [(PSRootController *)self->_enablementFlowNavigationController setModalPresentationStyle:2];
  presentationController = [(PSRootController *)self->_enablementFlowNavigationController presentationController];
  [presentationController setDelegate:self];

  navigationItem = [v22 navigationItem];
  [navigationItem setRightBarButtonItem:v15];

  navigationItem2 = [v22 navigationItem];
  [navigationItem2 setLeftBarButtonItem:v19];

  navigationBar = [(PSRootController *)self->_enablementFlowNavigationController navigationBar];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [navigationBar setBackgroundColor:systemBackgroundColor];

  [navigationBar _setHidesShadow:1];
  v30 = objc_opt_new();
  [navigationBar setBackgroundImage:v30 forBarMetrics:0];

  v31 = self->_enablementFlowNavigationController;
  v32 = v31;

  return v31;
}

- (id)_createVoiceSelectionCompletionForSpecifier:(id)specifier recognitionLanguageCode:(id)code
{
  specifierCopy = specifier;
  codeCopy = code;
  v8 = self->_voiceActivationSpecifier == specifierCopy || self->_voiceActivationSettingsSpecifier == specifierCopy;
  identifier = [(PSSpecifier *)specifierCopy identifier];
  v10 = [identifier isEqualToString:@"ACTIVATION_LONG_PRESS_ID"];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__AssistantController__createVoiceSelectionCompletionForSpecifier_recognitionLanguageCode___block_invoke;
  aBlock[3] = &unk_278CD1CD0;
  objc_copyWeak(&v18, &location);
  v16 = codeCopy;
  v17 = specifierCopy;
  v19 = v8;
  v20 = v10;
  v11 = specifierCopy;
  v12 = codeCopy;
  v13 = _Block_copy(aBlock);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v13;
}

void __91__AssistantController__createVoiceSelectionCompletionForSpecifier_recognitionLanguageCode___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = MEMORY[0x277CEF098];
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 136315650;
      v26 = "[AssistantController _createVoiceSelectionCompletionForSpecifier:recognitionLanguageCode:]_block_invoke";
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v3;
      _os_log_impl(&dword_2413B9000, v6, OS_LOG_TYPE_DEFAULT, "%s Setting Language code %@, output voice: %@", buf, 0x20u);
    }

    v8 = [MEMORY[0x277CEF368] sharedPreferences];
    [v8 setLanguageCode:*(a1 + 32) outputVoice:v3];

    [WeakRetained assistantEnabledConfirmed:*(a1 + 40)];
    v9 = [MEMORY[0x277D653F8] sharedInstance];
    v10 = [v9 isSpeakerRecognitionAvailable];

    if (*(a1 + 56) == 1)
    {
      v11 = *(a1 + 40);
      if (v10)
      {
        [WeakRetained setVoiceTrigger:MEMORY[0x277CBEC38] forSpecifier:v11 transitionWithNavControllerIfNecessary:WeakRetained[212]];
      }

      else
      {
        [WeakRetained setVoiceTrigger:MEMORY[0x277CBEC38] forSpecifier:v11];
      }

      v13 = @"HeySiri";
    }

    else
    {
      if (*(a1 + 57) != 1)
      {
        v18 = WeakRetained[212];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __91__AssistantController__createVoiceSelectionCompletionForSpecifier_recognitionLanguageCode___block_invoke_629;
        v23[3] = &unk_278CD1520;
        objc_copyWeak(&v24, (a1 + 48));
        [v18 dismissViewControllerAnimated:1 completion:v23];
        objc_destroyWeak(&v24);
        goto LABEL_21;
      }

      [WeakRetained setHardwareButtonTrigger:MEMORY[0x277CBEC38] forSpecifier:*(a1 + 40)];
      v12 = WeakRetained[190];
      WeakRetained[190] = 0;

      v13 = @"HardwareButton";
    }

    [AssistantMetrics didEnableSiriConfirmed:1 source:v13];
    if (*(a1 + 56))
    {
      if (v10)
      {
        goto LABEL_21;
      }
    }

    else if ((*(a1 + 57) & 1) == 0 && ((v10 ^ 1) & 1) == 0)
    {
      goto LABEL_21;
    }

    if ([WeakRetained[202] shouldShowSiriDataSharingOptInView])
    {
      v14 = [WeakRetained[202] dataSharingOptInTextWelcomeControllerForViewStyle:0];
      v15 = WeakRetained[203];
      WeakRetained[203] = v14;

      v16 = [WeakRetained[203] navigationItem];
      [v16 setHidesBackButton:1];

      v17 = WeakRetained[203];
      if (v17)
      {
        [WeakRetained[212] pushViewController:v17 animated:1];
      }

      else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        __91__AssistantController__createVoiceSelectionCompletionForSpecifier_recognitionLanguageCode___block_invoke_cold_1();
      }
    }

    else
    {
      v19 = WeakRetained[212];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __91__AssistantController__createVoiceSelectionCompletionForSpecifier_recognitionLanguageCode___block_invoke_631;
      v21[3] = &unk_278CD1520;
      objc_copyWeak(&v22, (a1 + 48));
      [v19 dismissViewControllerAnimated:1 completion:v21];
      objc_destroyWeak(&v22);
    }
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
}

void __91__AssistantController__createVoiceSelectionCompletionForSpecifier_recognitionLanguageCode___block_invoke_629(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runEnablementFlowDismissalHandlersIfApplicable];
}

void __91__AssistantController__createVoiceSelectionCompletionForSpecifier_recognitionLanguageCode___block_invoke_631(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runEnablementFlowDismissalHandlersIfApplicable];
}

- (id)_createVoiceSelectionDismissalHandlerWithSpecifier:(id)specifier actionHandler:(id)handler
{
  specifierCopy = specifier;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__AssistantController__createVoiceSelectionDismissalHandlerWithSpecifier_actionHandler___block_invoke;
  v12[3] = &unk_278CD1CF8;
  objc_copyWeak(&v15, &location);
  v13 = specifierCopy;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = specifierCopy;
  v10 = _Block_copy(v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

void __88__AssistantController__createVoiceSelectionDismissalHandlerWithSpecifier_actionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained[213];
    WeakRetained[213] = 0;
    v13 = WeakRetained;

    v4 = [MEMORY[0x277CEF368] sharedPreferences];
    v5 = [v4 assistantIsEnabled];

    if (v5)
    {
      v6 = *(a1 + 40);
      if (!v6)
      {
LABEL_10:
        v12 = v13[211];
        v13[211] = 0;

        WeakRetained = v13;
        goto LABEL_11;
      }

      v7 = *(v6 + 16);
    }

    else
    {
      v8 = v13;
      v9 = v13[211];
      if (v9)
      {
        v10 = [v9 completionLoggingBlock];
        v10[2](v10, 0);

        v8 = v13;
      }

      [v8 assistantEnabledCancelled:*(a1 + 32)];
      v11 = *(a1 + 40);
      if (!v11)
      {
        goto LABEL_10;
      }

      v7 = *(v11 + 16);
    }

    v7();
    goto LABEL_10;
  }

LABEL_11:
}

- (id)isShowInSpotlightEnabled
{
  if (([(NSMutableSet *)self->_disabledSpotlightDomains containsObject:@"DOMAIN_ZKWS"]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableSet *)self->_disabledSpotlightDomains containsObject:@"DOMAIN_PARSEC"]^ 1;
  }

  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithBool:v3];
}

- (void)setShowInSpotlightEnabled:(id)enabled
{
  enabledCopy = enabled;
  intValue = [enabledCopy intValue];
  disabledSpotlightDomains = self->_disabledSpotlightDomains;
  if (intValue)
  {
    [(NSMutableSet *)disabledSpotlightDomains removeObject:@"DOMAIN_ZKWS"];
    [(NSMutableSet *)self->_disabledSpotlightDomains removeObject:@"DOMAIN_PARSEC"];
  }

  else
  {
    [(NSMutableSet *)disabledSpotlightDomains addObject:@"DOMAIN_ZKWS"];
    [(NSMutableSet *)self->_disabledSpotlightDomains addObject:@"DOMAIN_PARSEC"];
  }

  [(AssistantController *)self saveSpotlightSettings];
  bOOLValue = [enabledCopy BOOLValue];

  [AssistantMetrics didToggle:@"Search" on:bOOLValue];
}

- (id)isShowZKWSuggestionsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWEnabled", @"com.apple.suggestions");
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return [v3 numberWithBool:bOOLValue];
}

- (void)setShowZKWSuggestionsEnabled:(id)enabled forSpecifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  CFPreferencesSetAppValue(@"SuggestionsSpotlightZKWEnabled", [MEMORY[0x277CCABB0] numberWithBool:bOOLValue], @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (id)isShowZKWRecentsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWRecentsEnabled", @"com.apple.suggestions");
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return [v3 numberWithBool:bOOLValue];
}

- (void)setShowZKWRecentsEnabled:(id)enabled forSpecifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  CFPreferencesSetAppValue(@"SuggestionsSpotlightZKWRecentsEnabled", [MEMORY[0x277CCABB0] numberWithBool:bOOLValue], @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (id)isShowInAppLibraryEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return [v3 numberWithBool:bOOLValue];
}

- (void)setShowInAppLibraryEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  bOOLValue = [enabledCopy BOOLValue];
  CFPreferencesSetAppValue(@"SuggestionsAppLibraryEnabled", [MEMORY[0x277CCABB0] numberWithBool:bOOLValue], @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
  bOOLValue2 = [enabledCopy BOOLValue];

  [AssistantMetrics didToggle:@"HomeScreen" on:bOOLValue2];
}

- (id)isShowWhenSharingEnabled:(id)enabled
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEF620]];
  v5 = [v4 BOOLForKey:*MEMORY[0x277CEF628]];

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v5 ^ 1u];
}

- (void)setShowWhenSharingEnabled:(id)enabled forSpecifier:(id)specifier
{
  v4 = MEMORY[0x277CBEBD0];
  enabledCopy = enabled;
  v6 = [v4 alloc];
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CEF620]];
  LODWORD(v4) = [enabledCopy BOOLValue];

  [v7 setBool:v4 ^ 1 forKey:*MEMORY[0x277CEF628]];
}

- (id)isShowWhenListeningEnabled:(id)enabled
{
  v3 = CFPreferencesCopyAppValue(@"ShowWhenListeningEnabled", @"com.apple.suggestions");
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEC38];
  }

  v6 = v5;

  return v5;
}

- (void)setShowWhenListeningEnabled:(id)enabled forSpecifier:(id)specifier
{
  CFPreferencesSetAppValue(@"ShowWhenListeningEnabled", enabled, @"com.apple.suggestions");
  CFPreferencesSynchronize(@"com.apple.suggestions", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (void)resetZKWHiddenSuggestions:(id)suggestions
{
  v3 = objc_opt_new();
  [v3 clearHiddenSuggestions];
}

- (id)assistantEnabled:(id)enabled
{
  if (+[AssistantUtilities assistantEnabled])
  {
    v3 = AFAssistantRestricted() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithBool:v3];
}

- (void)assistantEnabledConfirmed:(id)confirmed
{
  confirmedCopy = confirmed;
  [confirmedCopy setConfirmationAction:0];
  [confirmedCopy setConfirmationCancelAction:0];

  [(AssistantController *)self setAssistantEnabled:1];
  [(AssistantController *)self _runVoiceTriggerEnablementCompletionIfApplicable];
  enablementConfiguration = self->_enablementConfiguration;
  if (enablementConfiguration)
  {
    completionLoggingBlock = [(AFEnablementConfiguration *)enablementConfiguration completionLoggingBlock];
    completionLoggingBlock[2](completionLoggingBlock, 1);
  }
}

- (void)assistantEnabledCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  v4 = [cancelledCopy propertyForKey:*MEMORY[0x277D3FEB0]];
  [v4 setOn:0 animated:1];
  [cancelledCopy setConfirmationAction:0];
  [cancelledCopy setConfirmationCancelAction:0];
  [(AssistantController *)self setAssistantEnabled:0];
  [(AssistantController *)self _runVoiceTriggerEnablementCompletionIfApplicable];
  if ([(AssistantController *)self _isCurrentSpecifierVoiceActivation])
  {
    [AssistantMetrics didEnableSiriConfirmed:0 source:@"HeySiri"];
  }

  else
  {
    identifier = [cancelledCopy identifier];
    if ([identifier isEqualToString:@"ACTIVATION_LONG_PRESS_ID"])
    {
      v6 = @"HardwareButton";
    }

    else
    {
      v6 = @"Unknown";
    }

    [AssistantMetrics didEnableSiriConfirmed:0 source:v6];
  }
}

- (void)assistantDisabledConfirmed:(id)confirmed
{
  confirmedCopy = confirmed;
  [confirmedCopy setConfirmationAction:0];
  [confirmedCopy setConfirmationCancelAction:0];
  [(AssistantController *)self setAssistantEnabled:0];
  mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
  [mEMORY[0x277D653F8] deleteAllVoiceProfilesForAppDomain:*MEMORY[0x277D65458]];

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  [mEMORY[0x277D7A8D0] setVoiceTriggerEnabled:0];

  if (+[AssistantUtilities shouldShowCompactVoiceTriggerSpecifier])
  {
    v6 = @"ACTIVATION_COMPACT_ID";
  }

  else
  {
    v6 = @"ACTIVATION";
  }

  [(AssistantController *)self reloadSpecifierID:v6];
  if ([(AssistantController *)self _isCurrentSpecifierVoiceActivation])
  {
    [(AssistantController *)self setVoiceTrigger:MEMORY[0x277CBEC28] forSpecifier:confirmedCopy];
    v7 = @"HeySiri";
  }

  else if ([(AssistantController *)self _isCurrentSpecifierQuickTypeGesture])
  {
    [(AssistantController *)self setTypeToSiriTrigger:MEMORY[0x277CBEC28] forSpecifier:confirmedCopy];
    v7 = @"QuickType";
  }

  else
  {
    [(AssistantController *)self setHardwareButtonTrigger:MEMORY[0x277CBEC28] forSpecifier:confirmedCopy];
    currentSiriActivationSpecifier = self->_currentSiriActivationSpecifier;
    self->_currentSiriActivationSpecifier = 0;

    v7 = @"HardwareButton";
  }

  [AssistantMetrics didDisableSiriConfirmed:1 source:v7];
  [(AssistantController *)self _runVoiceTriggerEnablementCompletionIfApplicable];
  if (_AXSHomeButtonAssistant() == 2)
  {
    _AXSSetHomeButtonAssistant();
  }
}

- (void)assistantDisabledCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  v4 = [cancelledCopy propertyForKey:*MEMORY[0x277D3FEB0]];
  [v4 setOn:1 animated:1];
  [cancelledCopy setConfirmationAction:0];
  [cancelledCopy setConfirmationCancelAction:0];
  [(AssistantController *)self setAssistantEnabled:1];
  [(AssistantController *)self _runVoiceTriggerEnablementCompletionIfApplicable];
  if ([(AssistantController *)self _isCurrentSpecifierVoiceActivation])
  {
    [AssistantMetrics didDisableSiriConfirmed:0 source:@"HeySiri"];
  }

  else
  {
    identifier = [cancelledCopy identifier];
    if ([identifier isEqualToString:@"ACTIVATION_LONG_PRESS_ID"])
    {
      v6 = @"HardwareButton";
    }

    else
    {
      v6 = @"Unknown";
    }

    [AssistantMetrics didDisableSiriConfirmed:0 source:v6];
  }
}

- (void)setAssistantLanguage:(id)language
{
  languageCopy = language;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  [mEMORY[0x277CEF368] setLanguageCode:languageCopy];

  if ([objc_opt_class() _heySiriSupportedForLanguage:languageCopy])
  {
    VSPreferencesSetSpokenLanguageIdentifier();
  }
}

- (void)setAssistantLanguage:(id)language forSpecifier:(id)specifier
{
  languageCopy = language;
  specifierCopy = specifier;
  v8 = +[AssistantUtilities assistantLanguage];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__AssistantController_setAssistantLanguage_forSpecifier___block_invoke;
  v13[3] = &unk_278CD1928;
  v13[4] = self;
  v14 = v8;
  v15 = specifierCopy;
  v9 = specifierCopy;
  v10 = v8;
  [(AssistantController *)self registerUndoActionWithKey:@"LANGUAGE" urlString:@"prefs:root=SIRI&path=LANGUAGE_ID" undoAction:v13];
  pendingLanguage = self->_pendingLanguage;
  self->_pendingLanguage = languageCopy;
  v12 = languageCopy;

  [(AssistantController *)self _setAssistantLanguage:self->_pendingLanguage forSpecifier:v9];
  [(AssistantController *)self reloadSpecifiers];
}

uint64_t __57__AssistantController_setAssistantLanguage_forSpecifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setAssistantLanguage:*(a1 + 40) forSpecifier:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

- (void)_setAssistantLanguage:(id)language forSpecifier:(id)specifier
{
  if ([(AssistantController *)self _isIncompatibleWithWatchLanguage:self->_pendingLanguage, specifier])
  {

    [(AssistantController *)self _showIncompatibleWatchLanguageAlert];
  }

  else
  {

    [(AssistantController *)self _setAssistantLanguageWatchMismatchConfirmed:0];
  }
}

- (BOOL)_isIncompatibleWithWatchLanguage:(id)language
{
  languageCopy = language;
  sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
  isPaired = [sharedInstance isPaired];

  if (isPaired)
  {
    v7 = ![(AssistantController *)self watchSupportsSiriLanguageCode:languageCopy];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_languageWillDisableHeySiri:(id)siri
{
  siriCopy = siri;
  if ([objc_opt_class() _heySiriSupportedForLanguage:siriCopy])
  {
    mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
    v6 = [(AssistantController *)self assistantLanguage:0];
    v7 = [mEMORY[0x277D653F8] isSATEnrolledForSiriProfileId:0 forLanguageCode:v6];

    mEMORY[0x277D653F8]2 = [MEMORY[0x277D653F8] sharedInstance];
    LOBYTE(mEMORY[0x277D653F8]) = [mEMORY[0x277D653F8]2 isSATEnrolledForSiriProfileId:0 forLanguageCode:siriCopy];

    v9 = v7 & (mEMORY[0x277D653F8] ^ 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_showIncompatibleWatchLanguageAlert
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyName(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:136 description:{@"%s", dlerror()}];

  __break(1u);
}

- (BOOL)_pairedWithSiriSpeaksEnabledNanoHardware
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
  getAllDevices = [sharedInstance getAllDevices];

  v4 = [getAllDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(getAllDevices);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BFF435BD-ACFF-4AD8-9CC4-4DEA6D51BB3A"];
        LOBYTE(v8) = [v8 supportsCapability:v9];

        if (v8)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [getAllDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_pairedWithRaiseToSpeakEnabledNanoHardware
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
  getAllDevices = [sharedInstance getAllDevices];

  v4 = [getAllDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(getAllDevices);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68E9D2AF-A820-45FC-8FB3-92A04428CBF8"];
        LOBYTE(v8) = [v8 supportsCapability:v9];

        if (v8)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [getAllDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_setAssistantLanguageWatchMismatchConfirmed:(id)confirmed
{
  confirmedCopy = confirmed;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];
  v7 = [languageCode isEqualToString:self->_pendingLanguage];

  if (v7)
  {
    [(AssistantController *)self _setAssistantLanguageConfirmed:confirmedCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    AFSettingsConnection = self->_AFSettingsConnection;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__AssistantController__setAssistantLanguageWatchMismatchConfirmed___block_invoke;
    v9[3] = &unk_278CD1D48;
    objc_copyWeak(&v11, &location);
    v10 = confirmedCopy;
    [AFSettingsConnection fetchSupportedMultiUserLanguageCodes:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __67__AssistantController__setAssistantLanguageWatchMismatchConfirmed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__AssistantController__setAssistantLanguageWatchMismatchConfirmed___block_invoke_2;
  v9[3] = &unk_278CD1D20;
  v10 = v6;
  v7 = v6;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = *(a1 + 32);
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __67__AssistantController__setAssistantLanguageWatchMismatchConfirmed___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = MEMORY[0x277CEF098];
  if (*(a1 + 32) && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __67__AssistantController__setAssistantLanguageWatchMismatchConfirmed___block_invoke_2_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[184])
    {
      if ([WeakRetained[217] count] && (objc_msgSend(v5[217], "containsObject:", v5[184]) & 1) == 0)
      {
        v6 = *(v5 + 1744);
      }

      else
      {
        v6 = 0;
      }

      v7 = [*(a1 + 40) containsObject:v5[184]] ^ 1 | v6;
      v8 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = v8;
        v11 = [v9 numberWithBool:v7 & 1];
        v12 = [MEMORY[0x277CCABB0] numberWithBool:v6 & 1];
        v19 = 136315650;
        v20 = "[AssistantController _setAssistantLanguageWatchMismatchConfirmed:]_block_invoke";
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_2413B9000, v10, OS_LOG_TYPE_DEFAULT, "%s #settings Multi user enabled fetch complete. State for current language: %@ (home:%@)", &v19, 0x20u);
      }

      v13 = [v5 _languageWillDisableHeySiri:v5[184]];
      v14 = v5[184];
      if (AFGryphonAssetsExistForLanguage())
      {
        v15 = 0;
      }

      else
      {
        v15 = [v5 _pairedWithSiriSpeaksEnabledNanoHardware];
      }

      v16 = v5[184];
      if (AFRaiseToSpeakSupportedForLanguage())
      {
        v17 = 0;
      }

      else
      {
        v17 = [v5 _pairedWithRaiseToSpeakEnabledNanoHardware];
      }

      if (+[AssistantUtilities deviceIsVision]|| ((v13 | v7 | v15 | v17) & 1) == 0)
      {
        [v5 _setAssistantLanguageConfirmed:*(a1 + 48)];
      }

      else
      {
        [v5 _showWillDisableAlertWillDisableHeySiri:v13 disableMultiUser:v7 & 1 disableSpokenFeedbackOnWatch:v15 disableRaiseToSpeak:v17];
      }
    }

    else if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      __67__AssistantController__setAssistantLanguageWatchMismatchConfirmed___block_invoke_2_cold_2();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_setAssistantLanguageHeySiriDisableConfirmed:(id)confirmed
{
  v9 = *MEMORY[0x277D85DE8];
  confirmedCopy = confirmed;
  if ([(NSArray *)self->_languagesInHome count]&& ![(NSArray *)self->_languagesInHome containsObject:self->_pendingLanguage]&& self->_thisIsMeDevice)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[AssistantController _setAssistantLanguageHeySiriDisableConfirmed:]";
      _os_log_impl(&dword_2413B9000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings Turning off recognize my voice in the home due to language change", &v7, 0xCu);
    }

    [self->_AFSettingsConnection setRecognizeMyVoiceEnabled:0];
  }

  [(AssistantController *)self _setAssistantLanguageConfirmed:confirmedCopy];

  v6 = *MEMORY[0x277D85DE8];
}

+ (BOOL)firstTimeAssistantLanguage:(id)language
{
  v48 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  if ([languageCopy isEqualToString:@"vi-VN"])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.voiceservices"];
    v5 = [v4 dictionaryForKey:@"subscribedPreviousAssets"];
    v6 = [v5 objectForKeyedSubscript:&stru_285317CF0];

    v7 = 0x277CBE000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 objectForKeyedSubscript:@"com.apple.AssistantServices"];
      v9 = 0x277CBE000uLL;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v11)
        {
          v36 = *v43;
          v37 = v11;
          v32 = v6;
          v33 = v4;
          v31 = v8;
          v35 = v10;
          do
          {
            v12 = 0;
            v13 = v36;
            v14 = v37;
            do
            {
              if (*v43 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v42 + 1) + 8 * v12);
              v16 = *(v7 + 2752);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = [v15 objectForKeyedSubscript:@"Languages"];
                v18 = *(v9 + 2656);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v40 = 0u;
                  v41 = 0u;
                  v38 = 0u;
                  v39 = 0u;
                  v34 = v17;
                  v19 = v17;
                  v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
                  if (v20)
                  {
                    v21 = v20;
                    v22 = *v39;
                    while (2)
                    {
                      for (i = 0; i != v21; ++i)
                      {
                        if (*v39 != v22)
                        {
                          objc_enumerationMutation(v19);
                        }

                        v24 = *(*(&v38 + 1) + 8 * i);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
                          v26 = [mEMORY[0x277CEF2D8] getBaseLocale:v24];
                          v27 = [v26 isEqualToString:languageCopy];

                          if (v27)
                          {

                            v28 = 0;
                            v6 = v32;
                            v4 = v33;
                            v8 = v31;
                            v10 = v35;
                            goto LABEL_30;
                          }
                        }
                      }

                      v21 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
                      if (v21)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v7 = 0x277CBE000;
                  v9 = 0x277CBE000;
                  v10 = v35;
                  v13 = v36;
                  v14 = v37;
                  v17 = v34;
                }
              }

              ++v12;
            }

            while (v12 != v14);
            v28 = 1;
            v6 = v32;
            v4 = v33;
            v8 = v31;
            v37 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v37);
        }

        else
        {
          v28 = 1;
        }

LABEL_30:
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)_setAssistantLanguageConfirmed:(id)confirmed
{
  v27 = *MEMORY[0x277D85DE8];
  if ([AssistantController firstTimeAssistantLanguage:self->_pendingLanguage])
  {
    if (!self->_enablementConfigurationProvider)
    {
      v4 = objc_alloc_init(MEMORY[0x277CEF298]);
      enablementConfigurationProvider = self->_enablementConfigurationProvider;
      self->_enablementConfigurationProvider = v4;
    }

    v6 = self->_pendingLanguage;
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[AssistantController _setAssistantLanguageConfirmed:]";
      _os_log_impl(&dword_2413B9000, v7, OS_LOG_TYPE_DEFAULT, "%s Fetching Enablement Configuration", buf, 0xCu);
    }

    v8 = self->_enablementConfigurationProvider;
    v24 = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__AssistantController__setAssistantLanguageConfirmed___block_invoke;
    v22[3] = &unk_278CD1D70;
    v22[4] = self;
    v23 = v6;
    v10 = v6;
    [(AFEnablementFlowConfigurationProvider *)v8 configurationForEnablementFlow:6 recognitionLanguageCodes:v9 completion:v22];

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    multilingualResponseLanguageVariants = [(AssistantController *)self multilingualResponseLanguageVariants];
    v13 = [multilingualResponseLanguageVariants containsObject:self->_pendingLanguage];

    if (v13)
    {
      mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
      [mEMORY[0x277CEF368] setMultilingualResponseEnabled:-[AssistantController selectedLanguageWantsMultilingualEnabled](self forLanguage:{"selectedLanguageWantsMultilingualEnabled"), self->_pendingLanguage}];
    }

    [(AssistantController *)self setAssistantLanguage:self->_pendingLanguage];
    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    voiceTriggerEnabled = [mEMORY[0x277D7A8D0] voiceTriggerEnabled];

    if (voiceTriggerEnabled)
    {
      mEMORY[0x277D7A8D0]2 = [MEMORY[0x277D7A8D0] sharedPreferences];
      mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
      [mEMORY[0x277D7A8D0]2 setVoiceTriggerEnabled:{objc_msgSend(mEMORY[0x277D653F8], "isSATEnrolledForSiriProfileId:forLanguageCode:", 0, self->_pendingLanguage)}];
    }

    v19 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:0];
    [(AssistantController *)self reloadSpecifier:v19];

    [(AssistantController *)self reloadSpecifiers];
    [(AssistantController *)self reloadSpecifierID:@"ACTIVATION"];
    [(AssistantController *)self _updateSpecifiersForLanguage:self->_pendingLanguage];
    pendingLanguage = self->_pendingLanguage;
    self->_pendingLanguage = 0;
    v21 = *MEMORY[0x277D85DE8];
  }
}

void __54__AssistantController__setAssistantLanguageConfirmed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AssistantController__setAssistantLanguageConfirmed___block_invoke_2;
  block[3] = &unk_278CD1928;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __54__AssistantController__setAssistantLanguageConfirmed___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v18 = 136315394;
    v19 = "[AssistantController _setAssistantLanguageConfirmed:]_block_invoke_2";
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2413B9000, v3, OS_LOG_TYPE_DEFAULT, "%s Enablement Configuration %@", &v18, 0x16u);
  }

  objc_storeStrong((*(a1 + 40) + 1688), *(a1 + 32));
  v5 = [*(a1 + 40) _createVoiceSelectionDismissalHandlerWithSpecifier:0 actionHandler:0];
  v6 = *(a1 + 40);
  v7 = *(v6 + 1712);
  *(v6 + 1712) = v5;

  v8 = [*(a1 + 40) _createVoiceSelectionCompletionForSpecifier:0 recognitionLanguageCode:*(a1 + 48)];
  v9 = *(a1 + 40);
  v10 = *(v9 + 1704);
  *(v9 + 1704) = v8;

  v11 = [*(a1 + 40) _createEnablementFlowControllerForConfiguration:*(a1 + 32) recognitionLanguageCode:*(a1 + 48)];
  v12 = *(a1 + 40);
  v13 = *(v12 + 1696);
  *(v12 + 1696) = v11;

  v14 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    v18 = 136315394;
    v19 = "[AssistantController _setAssistantLanguageConfirmed:]_block_invoke";
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_2413B9000, v14, OS_LOG_TYPE_DEFAULT, "%s Presenting Voice selection for %@", &v18, 0x16u);
  }

  result = [*(a1 + 40) presentViewController:*(*(a1 + 40) + 1696) animated:1 completion:0];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setAssistantLanguageCancelled:(id)cancelled
{
  v4 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:0];
  [(AssistantController *)self reloadSpecifier:v4];

  [(AssistantController *)self reloadSpecifiers];
  pendingLanguage = self->_pendingLanguage;
  self->_pendingLanguage = 0;
}

- (id)detailTextForLanguageSpecifierFromTitles:(id)titles
{
  titlesCopy = titles;
  v5 = [(AssistantController *)self assistantLanguage:0];
  if (![MEMORY[0x277CEF2A8] isMultilingualResponseVariantSelectorEnabled])
  {
    goto LABEL_6;
  }

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  v7 = [mEMORY[0x277CEF368] multilingualResponseEnabledForLanguage:v5];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"MULTILINGUAL_DETAIL_TOP_LEVEL_MIXED_%@", v5, 0];
  v9 = +[AssistantController bundle];
  v10 = [v9 localizedStringForKey:v8 value:&stru_285317CF0 table:@"AssistantSettings"];

  if (!v10 || ([v10 isEqualToString:v8] & 1) != 0)
  {

LABEL_6:
    v10 = [titlesCopy objectForKey:v5];
    goto LABEL_7;
  }

LABEL_7:

  return v10;
}

- (id)assistantVoiceLanguage:(id)language
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  outputVoice = [mEMORY[0x277CEF368] outputVoice];

  languageCode = [outputVoice languageCode];

  return languageCode;
}

- (BOOL)isFlexibleFollowupsSupported
{
  mEMORY[0x277D01508] = [MEMORY[0x277D01508] sharedPreferences];
  isFlexibleFollowupsSupported = [mEMORY[0x277D01508] isFlexibleFollowupsSupported];

  return isFlexibleFollowupsSupported;
}

- (void)didCancelEnteringPIN
{
  v2 = [(PSSpecifier *)self->_lockScreenSpecifier propertyForKey:*MEMORY[0x277D3FEB0]];
  [v2 setOn:0 animated:1];
}

- (id)accessibleFromLockScreen:(id)screen
{
  v3 = MEMORY[0x277CCABB0];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [v3 numberWithInt:{objc_msgSend(mEMORY[0x277CEF368], "disableAssistantWhilePasscodeLocked") ^ 1}];

  return v5;
}

- (void)_setAccessibleFromLockScreen:(BOOL)screen
{
  screenCopy = screen;
  v5 = objc_alloc_init(MEMORY[0x277CF3580]);
  effectiveGlobalSpokenNotificationSetting = [v5 effectiveGlobalSpokenNotificationSetting];
  v7 = objc_alloc_init(MEMORY[0x277D6EF58]);
  if ([v7 announceCalls])
  {
    v8 = _os_feature_enabled_impl();
    v9 = @"ASSISTANT_LOCK_SCREEN_DISABLE_ANNOUNCE_MESSAGES";
    if (((effectiveGlobalSpokenNotificationSetting == 2) & v8) != 0)
    {
      v9 = @"ASSISTANT_LOCK_SCREEN_DISABLE_ANNOUNCE_CALLS_MESSAGES";
    }

    if (effectiveGlobalSpokenNotificationSetting == 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"ASSISTANT_LOCK_SCREEN_DISABLE_ANNOUNCE_CALLS";
    }

    v11 = (effectiveGlobalSpokenNotificationSetting != 2) | v8;
    if (effectiveGlobalSpokenNotificationSetting != 2 && (v8 & 1) == 0)
    {
      v11 = 0;
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
    if (effectiveGlobalSpokenNotificationSetting != 2)
    {
      goto LABEL_13;
    }

    v10 = @"ASSISTANT_LOCK_SCREEN_DISABLE_ANNOUNCE_MESSAGES";
  }

  v12 = +[AssistantController bundle];
  v13 = [v12 localizedStringForKey:v10 value:&stru_285317CF0 table:@"AssistantSettings"];

LABEL_14:
  if (!((effectiveGlobalSpokenNotificationSetting == 2) | v11 & 1) || screenCopy)
  {
    [(AssistantController *)self setDisabledFromLockScreen:!screenCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D750F8];
    v15 = +[AssistantController bundle];
    v16 = [v15 localizedStringForKey:@"ASSISTANT_LOCK_SCREEN_DISABLE_OK" value:&stru_285317CF0 table:@"AssistantSettings"];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__AssistantController__setAccessibleFromLockScreen___block_invoke;
    v28[3] = &unk_278CD1D98;
    objc_copyWeak(&v31, &location);
    v32 = screenCopy;
    v29 = v5;
    v30 = v7;
    v17 = [v14 actionWithTitle:v16 style:0 handler:v28];

    v18 = MEMORY[0x277D750F8];
    v19 = +[AssistantController bundle];
    v20 = [v19 localizedStringForKey:@"ASSISTANT_LOCK_SCREEN_DISABLE_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __52__AssistantController__setAccessibleFromLockScreen___block_invoke_2;
    v26[3] = &unk_278CD1DC0;
    objc_copyWeak(&v27, &location);
    v26[4] = self;
    v21 = [v18 actionWithTitle:v20 style:1 handler:v26];

    v22 = MEMORY[0x277D75110];
    v23 = +[AssistantController bundle];
    v24 = [v23 localizedStringForKey:@"ASSISTANT_LOCK_SCREEN_DISABLE_TITLE" value:&stru_285317CF0 table:@"AssistantSettings"];
    v25 = [v22 alertControllerWithTitle:v24 message:v13 preferredStyle:0];

    [v25 addAction:v17];
    [v25 addAction:v21];
    [(AssistantController *)self presentViewController:v25 animated:1 completion:0];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

void __52__AssistantController__setAccessibleFromLockScreen___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setDisabledFromLockScreen:(*(a1 + 56) & 1) == 0];
  [*(a1 + 32) setEffectiveGlobalSpokenNotificationSetting:1];
  [*(a1 + 40) setAnnounceCalls:0];
}

void __52__AssistantController__setAccessibleFromLockScreen___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[191] propertyForKey:*MEMORY[0x277D3FEB0]];
  [v2 setOn:1 animated:1];
  [*(a1 + 32) reloadSpecifier:WeakRetained[191] animated:1];
}

- (void)setAccessibleFromLockScreen:(id)screen forSpecifier:(id)specifier
{
  screenCopy = screen;
  specifierCopy = specifier;
  v8 = [(AssistantController *)self accessibleFromLockScreen:specifierCopy];
  bOOLValue = [v8 BOOLValue];

  bOOLValue2 = [screenCopy BOOLValue];
  if (!bOOLValue2 || (bOOLValue & 1) != 0)
  {
    [(AssistantController *)self _setAccessibleFromLockScreen:bOOLValue2];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CD4850]);
    name = [specifierCopy name];
    [v11 setTitle:name];

    objc_initWeak(&location, self);
    passcodeService = self->_passcodeService;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__AssistantController_setAccessibleFromLockScreen_forSpecifier___block_invoke;
    v14[3] = &unk_278CD1DE8;
    objc_copyWeak(&v15, &location);
    [(LAPasscodeVerificationService *)passcodeService startInParentVC:self options:v11 completion:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __64__AssistantController_setAccessibleFromLockScreen_forSpecifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a3)
  {
    [WeakRetained didCancelEnteringPIN];
  }

  else
  {
    [WeakRetained didAcceptEnteredPIN];
  }
}

- (BOOL)_isVoiceTriggerEnabled
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  voiceTriggerEnabled = [mEMORY[0x277D7A8D0] voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

- (id)voiceTrigger:(id)trigger
{
  v3 = MEMORY[0x277CCABB0];
  _isVoiceTriggerEnabled = [(AssistantController *)self _isVoiceTriggerEnabled];

  return [v3 numberWithBool:_isVoiceTriggerEnabled];
}

- (void)setVoiceTrigger:(id)trigger forSpecifier:(id)specifier transitionWithNavControllerIfNecessary:(id)necessary
{
  specifierCopy = specifier;
  necessaryCopy = necessary;
  bOOLValue = [trigger BOOLValue];
  if (!+[AssistantUtilities assistantEnabled])
  {
    if (!bOOLValue)
    {
      +[AssistantUtilities disableVoiceTriggerAndSiriEnrollmentForCurrentLanguage];
      goto LABEL_15;
    }

    objc_storeStrong(&self->_currentSiriActivationSpecifier, specifier);
    v14 = MEMORY[0x277CBEC38];
LABEL_9:
    [(AssistantController *)self _setAssistantEnabled:v14 forSpecifier:specifierCopy presentingViewController:self actionHandler:0];
    goto LABEL_16;
  }

  v11 = +[AssistantUtilities isHardwareButtonTrigger];
  if (bOOLValue)
  {
    if (!v11)
    {
      objc_storeStrong(&self->_currentSiriActivationSpecifier, specifier);
    }

    if ([AssistantUtilities needsTrainingData:1])
    {
      getVTUIEnrollTrainingViewControllerClass();
      v12 = objc_opt_new();
      enrollmentController = self->_enrollmentController;
      self->_enrollmentController = v12;

      [(VTUIEnrollTrainingViewController *)self->_enrollmentController setDelegate:self];
      +[AssistantUtilities disableVoiceTrigger];
      [(AssistantController *)self startEnrollment:necessaryCopy];
      goto LABEL_16;
    }

    +[AssistantUtilities enableVoiceTrigger];
    goto LABEL_15;
  }

  if (!v11 && !+[AssistantUtilities isQuickTypeGestureEnabled])
  {
    objc_storeStrong(&self->_currentSiriActivationSpecifier, specifier);
    v14 = MEMORY[0x277CBEC28];
    goto LABEL_9;
  }

  +[AssistantUtilities disableVoiceTriggerAndSiriEnrollmentForCurrentLanguage];
  [(AssistantController *)self _reloadSiriInCallSpecifier];
LABEL_15:
  [(AssistantController *)self _runVoiceTriggerEnablementCompletionIfApplicable];
LABEL_16:
  [AssistantMetrics didToggle:@"HeySiri" on:bOOLValue];
}

- (void)startEnrollment:(id)enrollment
{
  if (enrollment)
  {
    [enrollment pushViewController:self->_enrollmentController animated:1];
    navigationItem = [(VTUIEnrollTrainingViewController *)self->_enrollmentController navigationItem];
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelSetup_];
    [navigationItem setLeftBarButtonItem:v4];
  }

  else
  {
    v5 = [(PSRootController *)[PSVoiceTriggerRootController alloc] initWithRootViewController:self->_enrollmentController];
    navigationBar = [(PSVoiceTriggerRootController *)v5 navigationBar];
    [navigationBar _setHidesShadow:1];
    v7 = objc_opt_new();
    [navigationBar setBackgroundImage:v7 forBarMetrics:0];

    navigationItem2 = [(VTUIEnrollTrainingViewController *)self->_enrollmentController navigationItem];
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelSetup_];
    [navigationItem2 setLeftBarButtonItem:v9];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__AssistantController_startEnrollment___block_invoke;
    v11[3] = &unk_278CD1548;
    v11[4] = self;
    [(AssistantController *)self presentViewController:v5 animated:1 completion:v11];
  }
}

uint64_t __39__AssistantController_startEnrollment___block_invoke(uint64_t a1)
{
  v2 = +[AssistantUtilities shouldShowCompactVoiceTriggerSpecifier];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = @"ACTIVATION_COMPACT_ID";
  }

  else
  {
    v4 = @"ACTIVATION";
  }

  v5 = *(a1 + 32);

  return [v5 reloadSpecifierID:v4];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  viewIfLoaded = [(AssistantController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    v10 = [lCopy objectForKey:@"path"];
    v11 = [lCopy objectForKey:@"shortcutsBundleID"];
    if ([v10 isEqualToString:@"heysirisetupflow"])
    {
      [(AssistantController *)self setVoiceTrigger:MEMORY[0x277CBEC38] forSpecifier:0];
    }

    else if ([v10 isEqualToString:@"buddyFlowSetup"])
    {
      [(AssistantController *)self handleBuddyFlow];
    }

    else if ([v10 isEqualToString:@"gmCFU"])
    {
      [(AssistantController *)self handleGmCFU];
    }

    else if ([v10 isEqualToString:@"appleIntelligenceCFU"])
    {
      [(AssistantController *)self clearGMCFU];
    }

    else
    {
      if (![v10 hasPrefix:@"ExternalAIModel"])
      {
        if (v11)
        {
          v12 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v11];
          appState = [v12 appState];
          isInstalled = [appState isInstalled];

          if (isInstalled)
          {
            v16.receiver = self;
            v16.super_class = AssistantController;
            [(AssistantController *)&v16 handleURL:lCopy withCompletion:completionCopy];
          }

          else
          {
            [(AssistantController *)self loadAppStorePageForBundleId:v11];
            if (completionCopy)
            {
              completionCopy[2](completionCopy);
            }
          }
        }

        else
        {
          [(AssistantController *)&v15 handleURL:lCopy withCompletion:completionCopy, self, AssistantController];
        }

        goto LABEL_13;
      }

      if (![(ExternalAISettingsManager *)self->_externalAISettingsManager handleURL:lCopy])
      {
        v17.receiver = self;
        v17.super_class = AssistantController;
        [(AssistantController *)&v17 handleURL:lCopy withCompletion:completionCopy, v15.receiver, v15.super_class];
LABEL_13:

        goto LABEL_14;
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_13;
  }

  v18.receiver = self;
  v18.super_class = AssistantController;
  [(AssistantController *)&v18 handleURL:lCopy withCompletion:completionCopy];
LABEL_14:
}

- (void)loadAppStorePageForBundleId:(id)id
{
  v23[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = MEMORY[0x277CEE408];
  bagKeySet = [MEMORY[0x277CEE510] bagKeySet];
  bagSubProfile = [MEMORY[0x277CEE510] bagSubProfile];
  bagSubProfileVersion = [MEMORY[0x277CEE510] bagSubProfileVersion];
  [v5 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v9 = MEMORY[0x277CEE3F8];
  bagSubProfile2 = [MEMORY[0x277CEE510] bagSubProfile];
  bagSubProfileVersion2 = [MEMORY[0x277CEE510] bagSubProfileVersion];
  v12 = [v9 bagForProfile:bagSubProfile2 profileVersion:bagSubProfileVersion2];

  v13 = objc_alloc(MEMORY[0x277CEE510]);
  v14 = [v13 initWithBag:v12 caller:idCopy keyProfile:*MEMORY[0x277CEE1E8]];
  v23[0] = idCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v16 = [v14 performLookupWithBundleIdentifiers:v15 itemIdentifiers:0];

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__AssistantController_loadAppStorePageForBundleId___block_invoke;
  v19[3] = &unk_278CD1E10;
  objc_copyWeak(&v21, &location);
  v17 = idCopy;
  v20 = v17;
  [v16 addFinishBlock:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x277D85DE8];
}

void __51__AssistantController_loadAppStorePageForBundleId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = [v5 allItems];
    v9 = [v8 firstObject];

    if (v6)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __51__AssistantController_loadAppStorePageForBundleId___block_invoke_cold_1();
      }
    }

    else
    {
      v10 = *MEMORY[0x277CEF098];
      v11 = *MEMORY[0x277CEF098];
      if (v9)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 32);
          v16 = 136315394;
          v17 = "[AssistantController loadAppStorePageForBundleId:]_block_invoke";
          v18 = 2112;
          v19 = v12;
          _os_log_impl(&dword_2413B9000, v10, OS_LOG_TYPE_INFO, "%s Successfully retrieved store info for %@", &v16, 0x16u);
        }

        v13 = [MEMORY[0x277D75128] sharedApplication];
        v14 = [v9 productPageURL];
        [v13 openURL:v14 withCompletionHandler:0];
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __51__AssistantController_loadAppStorePageForBundleId___block_invoke_cold_2();
      }
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __51__AssistantController_loadAppStorePageForBundleId___block_invoke_cold_3();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)showAssistantVoiceActivationController:(id)controller
{
  v4 = objc_alloc_init(AssistantActivationController);
  [(AssistantActivationController *)v4 setDelegate:self];
  [(AssistantController *)self showController:v4 animate:1];
}

- (void)handleBuddyFlow
{
  v3 = +[AssistantUtilities shouldShowCompactVoiceTriggerSpecifier];
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  v5 = [mEMORY[0x277D7A8D0] setUserPreferredVoiceTriggerPhraseType:v3 sender:self deviceType:0 endpointId:0];

  v7 = objc_alloc_init(MEMORY[0x277D3F9C8]);
  [v7 setName:@"BUDDY_FLOW_CONFIRMATION"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [(AssistantController *)self setVoiceActivation:v6 forSpecifier:v7 withTrainingCompletionIfNecessary:0];
}

- (void)handleGmCFU
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v3 deviceSupported];

  if (deviceSupported)
  {
    v5 = +[AssistantUtilities shouldShowCompactVoiceTriggerSpecifier];
    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    v7 = [mEMORY[0x277D7A8D0] setUserPreferredVoiceTriggerPhraseType:v5 sender:self deviceType:0 endpointId:0];

    v8 = [objc_alloc(getVTUIEnrollTrainingViewControllerClass()) init:7];
    enrollmentController = self->_enrollmentController;
    self->_enrollmentController = v8;

    [(VTUIEnrollTrainingViewController *)self->_enrollmentController setDelegate:self];
    [(AssistantController *)self startEnrollment:0];
    [MEMORY[0x277CFB460] setHasEngagedWithCFU:1];
    v10 = *MEMORY[0x277D85DE8];

    [(AssistantController *)self clearGMCFU];
  }

  else
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[AssistantController handleGmCFU]";
      _os_log_impl(&dword_2413B9000, v11, OS_LOG_TYPE_INFO, "%s GM Deeplink was invoked from ineligible hardware. Bailing!", &v13, 0xCu);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)shouldPromptForDisable
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{-[AssistantController _isVoiceTriggerEnabled](self, "_isVoiceTriggerEnabled")}];
  intValue = [v2 intValue];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{+[AssistantUtilities isHardwareButtonTrigger](AssistantUtilities, "isHardwareButtonTrigger")}];
  v5 = [v4 intValue] + intValue;

  v6 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  activeEnabled = [v6 activeEnabled];

  if (activeEnabled)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{+[AssistantUtilities isQuickTypeGestureEnabled](AssistantUtilities, "isQuickTypeGestureEnabled")}];
    v5 += [v8 intValue];
  }

  return v5 == 1;
}

- (id)hardwareButtonTrigger:(id)trigger
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[AssistantUtilities isHardwareButtonTrigger];

  return [v3 numberWithBool:v4];
}

- (void)setHardwareButtonTrigger:(id)trigger forSpecifier:(id)specifier
{
  triggerCopy = trigger;
  specifierCopy = specifier;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

  bOOLValue = [triggerCopy BOOLValue];
  if (assistantIsEnabled)
  {
    if (!bOOLValue && [(AssistantController *)self shouldPromptForDisable])
    {
      objc_storeStrong(&self->_currentSiriActivationSpecifier, specifier);
      v10 = MEMORY[0x277CBEC28];
      goto LABEL_8;
    }
  }

  else if (bOOLValue)
  {
    objc_storeStrong(&self->_currentSiriActivationSpecifier, specifier);
    v10 = MEMORY[0x277CBEC38];
LABEL_8:
    [(AssistantController *)self _setAssistantEnabled:v10 forSpecifier:specifierCopy presentingViewController:self actionHandler:0];
    goto LABEL_10;
  }

  _AXSSetHomeButtonAssistant();
LABEL_10:
  +[AssistantMetrics didToggle:on:](AssistantMetrics, "didToggle:on:", @"HardwareButton", [triggerCopy BOOLValue]);
}

- (id)typeToSiriTrigger:(id)trigger
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[AssistantUtilities isQuickTypeGestureEnabled];

  return [v3 numberWithBool:v4];
}

- (void)setTypeToSiriTrigger:(id)trigger forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [trigger BOOLValue];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];
  v10 = assistantIsEnabled;
  v11 = assistantIsEnabled ^ 1;

  if (bOOLValue)
  {
    if ((v10 & 1) == 0)
    {
LABEL_3:
      objc_storeStrong(&self->_currentSiriActivationSpecifier, specifier);
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v11 & bOOLValue];
      [(AssistantController *)self _setAssistantEnabled:v12 forSpecifier:specifierCopy presentingViewController:self actionHandler:0];

      goto LABEL_6;
    }
  }

  else if (([(AssistantController *)self shouldPromptForDisable]| v11))
  {
    goto LABEL_3;
  }

  [AssistantUtilities setQuickTypeGestureEnabled:bOOLValue];
LABEL_6:
  [AssistantMetrics didToggle:@"QuickType" on:bOOLValue];
}

- (void)continueSetup
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  [mEMORY[0x277D7A8D0] setVoiceTriggerEnabled:1];

  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __36__AssistantController_continueSetup__block_invoke;
  v8 = &unk_278CD1520;
  objc_copyWeak(&v9, &location);
  [(AssistantController *)self dismissViewControllerAnimated:1 completion:&v5];
  [(AssistantController *)self _runVoiceTriggerEnablementCompletionIfApplicable:v5];
  if ([(AssistantController *)self _isCurrentSpecifierVoiceActivation])
  {
    _AXSSetHomeButtonAssistant();
  }

  currentSiriActivationSpecifier = self->_currentSiriActivationSpecifier;
  self->_currentSiriActivationSpecifier = 0;

  [AssistantMetrics didStartEnrollment:1];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __36__AssistantController_continueSetup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _runEnablementFlowDismissalHandlersIfApplicable];
    v2 = v3[201];
    v3[201] = 0;

    WeakRetained = v3;
  }
}

- (void)cancelSetup:(id)setup
{
  setupCopy = setup;
  [(VTUIEnrollTrainingViewController *)self->_enrollmentController cancelTraining];
  if ([(AssistantController *)self _isCurrentSpecifierVoiceActivation])
  {
    [(AssistantController *)self setAssistantEnabled:0];
    currentSiriActivationSpecifier = self->_currentSiriActivationSpecifier;
    self->_currentSiriActivationSpecifier = 0;
  }

  [(AssistantController *)self _runVoiceTriggerEnablementCompletionIfApplicable];
  [AssistantMetrics didStartEnrollment:0];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__AssistantController_cancelSetup___block_invoke;
  v6[3] = &unk_278CD1520;
  objc_copyWeak(&v7, &location);
  [(AssistantController *)self dismissViewControllerAnimated:1 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __35__AssistantController_cancelSetup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _runEnablementFlowDismissalHandlersIfApplicable];
    v2 = v3[201];
    v3[201] = 0;

    WeakRetained = v3;
  }
}

- (void)skipSetup
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showLearnMore
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v3 setPresentingViewController:self->_enrollmentController];
  [v3 present];
}

- (void)_reloadSiriInCallSpecifier
{
  if (+[AssistantSiriInCallController isSettingSupported])
  {

    [(AssistantController *)self _insertSiriInCallSpecifier];
  }

  else
  {

    [(AssistantController *)self _removeSiriInCallSpecifier];
  }
}

- (void)_removeSiriInCallSpecifier
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_siriInCallSpecifier && [(AssistantController *)self containsSpecifier:?])
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[AssistantController _removeSiriInCallSpecifier]";
      _os_log_impl(&dword_2413B9000, v3, OS_LOG_TYPE_INFO, "%s Removing in-call setting", &v5, 0xCu);
    }

    [(AssistantController *)self removeSpecifier:self->_siriInCallSpecifier animated:1];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_insertSiriInCallSpecifier
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_siriInCallSpecifier && ([(AssistantController *)self containsSpecifier:?]& 1) == 0)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[AssistantController _insertSiriInCallSpecifier]";
      _os_log_impl(&dword_2413B9000, v3, OS_LOG_TYPE_INFO, "%s Inserting in-call setting", &v5, 0xCu);
    }

    [(AssistantController *)self insertSpecifier:self->_siriInCallSpecifier afterSpecifierID:@"VOICE_FEEDBACK_ID" animated:1];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)siriInCallEnabled:(id)enabled
{
  v3 = +[AssistantSiriInCallController isSettingEnabled];
  v4 = +[AssistantController bundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_285317CF0 table:@"AssistantSettings"];

  return v7;
}

- (void)showMeCardPicker:(id)picker
{
  v4 = [objc_alloc(MEMORY[0x277CBDC18]) initWithNibName:0 bundle:0];
  peoplePicker = self->_peoplePicker;
  self->_peoplePicker = v4;

  [(CNContactPickerViewController *)self->_peoplePicker setDelegate:self];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if (sf_isiPad)
  {
    v8 = [(AssistantController *)self specifierForID:@"MY_INFO"];
    v9 = [v8 propertyForKey:*MEMORY[0x277D40148]];
    if (v9)
    {
      [(CNContactPickerViewController *)self->_peoplePicker setModalPresentationStyle:7];
      popoverPresentationController = [(CNContactPickerViewController *)self->_peoplePicker popoverPresentationController];
      [popoverPresentationController setSourceView:v9];

      popoverPresentationController2 = [(CNContactPickerViewController *)self->_peoplePicker popoverPresentationController];
      [popoverPresentationController2 setPermittedArrowDirections:12];
    }
  }

  v12 = self->_peoplePicker;

  [(AssistantController *)self presentViewController:v12 animated:1 completion:0];
}

- (id)meCard:(id)card
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = +[AssistantController bundle];
  v4 = [v3 localizedStringForKey:@"None" value:&stru_285317CF0 table:@"AssistantSettings"];

  v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  if (v5)
  {
    v6 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v15[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v14 = 0;
    v8 = [v5 _ios_meContactWithKeysToFetch:v7 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = objc_opt_new();
      [v10 setStyle:0];
      v11 = [v10 stringFromContact:v8];

      v4 = v11;
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_makeMeDeviceDetermination
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__AssistantController__makeMeDeviceDetermination__block_invoke;
  v3[3] = &unk_278CD1520;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __49__AssistantController__makeMeDeviceDetermination__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 197);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__AssistantController__makeMeDeviceDetermination__block_invoke_2;
    v5[3] = &unk_278CD1E38;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 getActiveLocationSharingDeviceWithCompletionHandler:v5];
    objc_destroyWeak(&v6);
  }
}

void __49__AssistantController__makeMeDeviceDetermination__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v10 = 136315394;
        v11 = "[AssistantController _makeMeDeviceDetermination]_block_invoke_2";
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_2413B9000, v8, OS_LOG_TYPE_INFO, "%s #settings Failed to fetch active location sharing device: %@", &v10, 0x16u);
      }

      WeakRetained[1744] = 0;
    }

    else
    {
      WeakRetained[1744] = [v5 isThisDevice];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAssetStatusUpdated
{
  if ((AFAssistantRestricted() & 1) == 0)
  {
    currentAssetStatus = [(UAFAssetUtilities *)self->_assetUtils currentAssetStatus];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__AssistantController_handleAssetStatusUpdated__block_invoke;
    v5[3] = &unk_278CD1708;
    v5[4] = self;
    v6 = currentAssetStatus;
    v4 = currentAssetStatus;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __47__AssistantController_handleAssetStatusUpdated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) specifiers];
  v3 = [v2 specifierForID:@"SIRI_REQUESTS_GROUP"];

  [*(a1 + 32) _updateSiriFooterGroup:v3 withStatus:*(a1 + 40)];
  [*(a1 + 32) reloadSpecifier:v3 animated:0];
}

- (void)siriUODAvailabilityDidChange:(BOOL)change
{
  if (change)
  {
    [(AssistantController *)self handleAssetStatusUpdated];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = AssistantController;
  pathCopy = path;
  [(AssistantController *)&v8 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AssistantController *)self specifierAtIndexPath:pathCopy, v8.receiver, v8.super_class];

  if (v7 == self->_voiceSpecifier)
  {
    ADClientAddValueForScalarKey();
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = AssistantController;
  pathCopy = path;
  v7 = [(AssistantController *)&v15 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(AssistantController *)self specifierAtIndexPath:pathCopy, v15.receiver, v15.super_class];

  v9 = *MEMORY[0x277D3FE58];
  v10 = [v8 propertyForKey:*MEMORY[0x277D3FE58]];
  if ([v10 isEqual:objc_opt_class()])
  {
  }

  else
  {
    v11 = [v8 propertyForKey:v9];
    v12 = [v11 isEqual:objc_opt_class()];

    if (!v12)
    {
      goto LABEL_5;
    }
  }

  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setNumberOfLines:0];

LABEL_5:

  return v7;
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  if (contact)
  {
    contactStore = self->_contactStore;
    v6 = 0;
    [(CNContactStore *)contactStore setMeContact:contact error:&v6];
    [(AssistantController *)self reloadSpecifierID:@"MY_INFO" animated:0];
  }

  [(AssistantController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_presentSiriDataSharingOptInViewController
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)siriDataSharingOptInRequestsDismissalFromPresenter:(id)presenter
{
  presenterCopy = presenter;
  objc_initWeak(&location, self);
  siriDataSharingOptInViewController = self->_siriDataSharingOptInViewController;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__AssistantController_siriDataSharingOptInRequestsDismissalFromPresenter___block_invoke;
  v6[3] = &unk_278CD1520;
  objc_copyWeak(&v7, &location);
  [(UIViewController *)siriDataSharingOptInViewController dismissViewControllerAnimated:1 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __74__AssistantController_siriDataSharingOptInRequestsDismissalFromPresenter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[203];
    WeakRetained[203] = 0;
    v4 = WeakRetained;

    v3 = v4[202];
    v4[202] = 0;

    [v4 _runEnablementFlowDismissalHandlersIfApplicable];
    WeakRetained = v4;
  }
}

- (void)showAssistantHistoryViewController:(id)controller
{
  v4 = objc_alloc_init(AssistantHistoryViewController);
  [(AssistantHistoryViewController *)v4 setDelegate:self];
  [(AssistantController *)self showController:v4 animate:1];
}

- (void)deleteHistorySuccessfulFromViewController:(id)controller
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__AssistantController_deleteHistorySuccessfulFromViewController___block_invoke;
  v3[3] = &unk_278CD1520;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __65__AssistantController_deleteHistorySuccessfulFromViewController___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained navigationController];
    v4 = [v3 popViewControllerAnimated:1];

    if (+[AssistantUtilities isRpiOnDeviceDeletionEnabled])
    {
      v5 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "[AssistantController deleteHistorySuccessfulFromViewController:]_block_invoke";
        _os_log_impl(&dword_2413B9000, v5, OS_LOG_TYPE_INFO, "%s #RPI on-device Siri History Deletion Request successful. Skipping showing alert.", &v16, 0xCu);
      }
    }

    else
    {
      v6 = +[AssistantController bundle];
      v7 = [v6 localizedStringForKey:@"DELETE_SIRI_HISTORY_ALERT_SUCCESS_TITLE" value:&stru_285317CF0 table:@"AssistantSettings"];

      v8 = +[AssistantController bundle];
      v9 = [v8 localizedStringForKey:@"DELETE_SIRI_HISTORY_ALERT_SUCCESS_MESSAGE" value:&stru_285317CF0 table:@"AssistantSettings"];

      v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v9 preferredStyle:1];
      v11 = MEMORY[0x277D750F8];
      v12 = +[AssistantController bundle];
      v13 = [v12 localizedStringForKey:@"DELETE_SIRI_HISTORY_ALERT_DISMISS" value:&stru_285317CF0 table:@"AssistantSettings"];
      v14 = [v11 actionWithTitle:v13 style:0 handler:0];

      [v10 addAction:v14];
      [v10 setPreferredAction:v14];
      [v2 presentViewController:v10 animated:1 completion:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setVoiceActivation:(id)activation forSpecifier:(id)specifier withTrainingCompletionIfNecessary:(id)necessary
{
  activationCopy = activation;
  specifierCopy = specifier;
  v9 = _Block_copy(necessary);
  voiceTriggerEnablementCompletion = self->_voiceTriggerEnablementCompletion;
  self->_voiceTriggerEnablementCompletion = v9;

  v11 = specifierCopy;
  name = [v11 name];
  if ([name isEqualToString:@"ACTIVATION_CONFIRMATION"])
  {
  }

  else
  {
    name2 = [v11 name];
    v14 = [name2 isEqualToString:@"BUDDY_FLOW_CONFIRMATION"];

    v15 = v11;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  v15 = self->_voiceActivationSettingsSpecifier;

LABEL_5:
  [(AssistantController *)self setVoiceTrigger:activationCopy forSpecifier:v15 transitionWithNavControllerIfNecessary:0];
}

- (void)_runVoiceTriggerEnablementCompletionIfApplicable
{
  voiceTriggerEnablementCompletion = self->_voiceTriggerEnablementCompletion;
  if (voiceTriggerEnablementCompletion)
  {
    voiceTriggerEnablementCompletion[2](voiceTriggerEnablementCompletion, a2);
    v4 = self->_voiceTriggerEnablementCompletion;
    self->_voiceTriggerEnablementCompletion = 0;
  }
}

- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice
{
  voiceSelectionCompletion = self->_voiceSelectionCompletion;
  if (voiceSelectionCompletion)
  {
    voiceSelectionCompletion[2](voiceSelectionCompletion, voice);
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  enablementFlowNavigationController = self->_enablementFlowNavigationController;

  if (presentedViewController == enablementFlowNavigationController)
  {

    [(AssistantController *)self _runEnablementFlowDismissalHandlersIfApplicable];
  }
}

- (void)_voiceSelectionCancelled
{
  enablementFlowNavigationController = self->_enablementFlowNavigationController;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__AssistantController__voiceSelectionCancelled__block_invoke;
  v3[3] = &unk_278CD1548;
  v3[4] = self;
  [(PSRootController *)enablementFlowNavigationController dismissViewControllerAnimated:1 completion:v3];
}

- (void)_runEnablementFlowDismissalHandlersIfApplicable
{
  voiceSelectionFlowDismissalHandler = self->_voiceSelectionFlowDismissalHandler;
  if (voiceSelectionFlowDismissalHandler)
  {
    voiceSelectionFlowDismissalHandler[2](voiceSelectionFlowDismissalHandler, a2);
    v4 = self->_voiceSelectionFlowDismissalHandler;
    self->_voiceSelectionFlowDismissalHandler = 0;
  }
}

- (void)registerUndoActionWithKey:(id)key urlString:(id)string undoAction:(id)action
{
  v8 = MEMORY[0x277CCAEB8];
  actionCopy = action;
  stringCopy = string;
  keyCopy = key;
  v12 = [v8 alloc];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v14 bundleURL];
  v17 = [v12 initWithKey:keyCopy table:@"AssistantSettings" locale:currentLocale bundleURL:bundleURL];

  v16 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];

  [(AssistantController *)self pe_registerUndoActionName:v17 associatedDeepLink:v16 undoAction:actionCopy];
}

- (void)_updateSpecifiersForSettingsTip
{
  v3 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v3 deviceSupported];

  if (deviceSupported)
  {
    v5 = +[_TtC24AssistantSettingsSupport11TipsManager shared];
    shouldShowTip = [v5 shouldShowTip];

    if (shouldShowTip)
    {

      [(AssistantController *)self _insertTipSpecifiers];
    }

    else
    {

      [(AssistantController *)self _removeTipSpecifiers];
    }
  }
}

- (void)_removeTipSpecifiers
{
  if (self->_settingsTipSpecifier && [(AssistantController *)self containsSpecifier:?])
  {
    [(AssistantController *)self removeSpecifier:self->_settingsTipSpecifier animated:1];
  }

  if (self->_settingsTipGroupSpecifier && [(AssistantController *)self containsSpecifier:?])
  {
    settingsTipGroupSpecifier = self->_settingsTipGroupSpecifier;

    [(AssistantController *)self removeSpecifier:settingsTipGroupSpecifier animated:1];
  }
}

- (void)_insertTipSpecifiers
{
  if (self->_settingsTipGroupSpecifier && ([(AssistantController *)self containsSpecifier:?]& 1) == 0)
  {
    [(AssistantController *)self insertSpecifier:self->_settingsTipGroupSpecifier atEndOfGroup:0 animated:1];
  }

  if (self->_settingsTipSpecifier && ([(AssistantController *)self containsSpecifier:?]& 1) == 0)
  {
    settingsTipSpecifier = self->_settingsTipSpecifier;

    [(AssistantController *)self insertSpecifier:settingsTipSpecifier afterSpecifierID:@"ASSISTANT_TIP_GROUP" animated:1];
  }
}

- (void)openStorageManagement:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 description];
  [v4 UTF8String];
  OUTLINED_FUNCTION_3(&dword_2413B9000, v5, v6, "%s %s", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

void __58__AssistantController__refreshAvailableLanguagesInTheHome__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__AssistantController__fetchGMWaitListStatus__block_invoke_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_2413B9000, v5, v6, "%s error fetching ADM waitlist status: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

void __45__AssistantController__fetchGMWaitListStatus__block_invoke_260_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateSiriFooterGroup:withStatus:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)watchSupportsSiriLanguageCode:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertySystemName(void)"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:134 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)setAssistantEnabled:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getBYFlowSkipIdentifierSiri(void)"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:145 description:{@"%s", dlerror()}];

  __break(1u);
}

void __91__AssistantController__createVoiceSelectionCompletionForSpecifier_recognitionLanguageCode___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)confirmationSpecifierWillDisableHeySiri:(uint64_t *)a1 disableMultiUser:disableSpokenFeedbackOnWatch:disableRaiseToSpeak:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __67__AssistantController__setAssistantLanguageWatchMismatchConfirmed___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __67__AssistantController__setAssistantLanguageWatchMismatchConfirmed___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__AssistantController_loadAppStorePageForBundleId___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__AssistantController_loadAppStorePageForBundleId___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__AssistantController_loadAppStorePageForBundleId___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end