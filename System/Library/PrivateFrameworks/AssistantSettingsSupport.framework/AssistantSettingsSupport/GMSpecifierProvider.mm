@interface GMSpecifierProvider
- (BOOL)fetchGMCapability;
- (GMSpecifierProvider)initWithPresenter:(id)presenter;
- (GMSpecifierProvider)initWithPresenter:(id)presenter eligibilityProvider:(id)provider;
- (id)_configuredGMSpecifier;
- (id)_downloadingSpecifier;
- (id)_rampedPreparingSpecifier;
- (id)_rampedSpecifier;
- (id)fetchGMRampSpecifierWith:(id)with;
- (id)gmUserOptInStatus:(id)status;
- (id)valueForGMPreparingSpecifier:(id)specifier;
- (id)valueForGMRampSpecifier:(id)specifier;
- (void)GMJoinWaitlistTapped:(id)tapped;
- (void)dismissGMIntroViewController;
- (void)fetchGMRampStatus;
- (void)presentGMEnrollmentView;
- (void)presentToggleOffAlert;
- (void)reloadADMSpecifier;
- (void)reloadGMSpecifier;
- (void)setGMUserOptInStatus:(id)status;
- (void)showNetworkUnavailableAlert;
- (void)siriGMIntroViewControllerContinuePressed:(id)pressed;
- (void)siriGMIntroViewControllerNotNowPressed:(id)pressed;
- (void)siriGMIntroViewControllerPresented:(id)presented withEnrollmentType:(unint64_t)type;
- (void)turnOnGmTapped:(id)tapped;
- (void)updateADMState;
- (void)updateWithContext:(int64_t)context;
@end

@implementation GMSpecifierProvider

- (GMSpecifierProvider)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v5 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  v6 = [(GMSpecifierProvider *)self initWithPresenter:presenterCopy eligibilityProvider:v5];

  return v6;
}

- (GMSpecifierProvider)initWithPresenter:(id)presenter eligibilityProvider:(id)provider
{
  presenterCopy = presenter;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = GMSpecifierProvider;
  v8 = [(GMSpecifierProvider *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listController, presenterCopy);
    v9->_requestState = 0;
    objc_storeStrong(&v9->_gmEligibilityProvider, provider);
    gmSpecifierController = [(GMEligibilityProviderProtocol *)v9->_gmEligibilityProvider gmSpecifierController];
    gmSpecifierController = v9->_gmSpecifierController;
    v9->_gmSpecifierController = gmSpecifierController;

    v9->_gmEligibilityContext = 0;
    v12 = objc_alloc_init(GMAnalyticsProvider);
    gmAnalyticsProvider = v9->_gmAnalyticsProvider;
    v9->_gmAnalyticsProvider = v12;
  }

  return v9;
}

- (id)_configuredGMSpecifier
{
  v3 = 0;
  v16 = *MEMORY[0x277D85DE8];
  switch(self->_gmEligibilityContext)
  {
    case 3:
    case 0xBLL:
    case 0x16:
      v5 = 1;
      goto LABEL_8;
    case 4:
    case 0xALL:
    case 0x17:
      v6 = 1;
      goto LABEL_6;
    case 5:
    case 0xCLL:
    case 0x15:
    case 0x19:
    case 0x1ALL:
      _rampedSpecifier = [(GMSpecifierProvider *)self _rampedSpecifier];
      goto LABEL_9;
    case 7:
      v6 = 0;
LABEL_6:
      _rampedSpecifier = [(GMSpecifierProvider *)self _inWaitlistSpecifierWithEnablement:v6];
      goto LABEL_9;
    case 8:
      v5 = 0;
LABEL_8:
      _rampedSpecifier = [(GMSpecifierProvider *)self _joinWaitlistSpecifierWithEnablement:v5];
      goto LABEL_9;
    case 9:
      _rampedSpecifier = [(GMSpecifierProvider *)self _rampedSpecifierWithEnablement:0];
      goto LABEL_9;
    case 0x18:
      _rampedSpecifier = [(GMSpecifierProvider *)self _downloadingSpecifier];
LABEL_9:
      v3 = _rampedSpecifier;
      break;
    default:
      break;
  }

  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    gmEligibilityProvider = self->_gmEligibilityProvider;
    v9 = v7;
    v12 = 136315394;
    v13 = "[GMSpecifierProvider _configuredGMSpecifier]";
    v14 = 2048;
    eligibility = [(GMEligibilityProviderProtocol *)gmEligibilityProvider eligibility];
    _os_log_impl(&dword_2413B9000, v9, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment returning specifier for context %ld", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_rampedSpecifier
{
  if (([(GMSpecifierControllerProcotol *)self->_gmSpecifierController wasEverAvailable]& 1) != 0 || [(GMSpecifierControllerProcotol *)self->_gmSpecifierController featureOptInStatus])
  {
    v3 = [(GMSpecifierProvider *)self _rampedSpecifierWithEnablement:1];
  }

  else
  {
    v3 = [(GMSpecifierProvider *)self _rampedSpecifierWithButton:1];
  }

  return v3;
}

- (id)_downloadingSpecifier
{
  if ([(GMSpecifierControllerProcotol *)self->_gmSpecifierController hasEngagedCFU])
  {
    [(GMSpecifierProvider *)self _rampedSpecifierWithEnablement:1];
  }

  else
  {
    [(GMSpecifierProvider *)self _rampedPreparingSpecifier];
  }
  v3 = ;

  return v3;
}

- (id)_rampedPreparingSpecifier
{
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_285317CF0 target:self set:0 get:sel_valueForGMPreparingSpecifier_ detail:0 cell:-1 edit:0];
  v3 = +[AssistantController bundle];
  v4 = [v3 localizedStringForKey:@"GM_RAMP_SPECIFIER_TITLE" value:&stru_285317CF0 table:@"AssistantSettings-GM"];
  [v2 setName:v4];

  [v2 setProperty:@"GM_RAMP_PREPARING_SPECIFIER" forKey:*MEMORY[0x277D3FFB8]];
  [v2 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [v2 setCellType:-1];

  return v2;
}

- (BOOL)fetchGMCapability
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(GMEligibilityProviderProtocol *)self->_gmEligibilityProvider eligibility]== 18 || ([(GMSpecifierControllerProcotol *)self->_gmSpecifierController gmFFEnabled]& 1) == 0)
  {
    v4 = *MEMORY[0x277CEF098];
    v5 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      gmEligibilityProvider = self->_gmEligibilityProvider;
      v7 = v4;
      LODWORD(gmEligibilityProvider) = [(GMEligibilityProviderProtocol *)gmEligibilityProvider eligibility]== 18;
      gmFFEnabled = [(GMSpecifierControllerProcotol *)self->_gmSpecifierController gmFFEnabled];
      v10 = 136315650;
      v11 = "[GMSpecifierProvider fetchGMCapability]";
      v12 = 1024;
      v13 = gmEligibilityProvider;
      v14 = 1024;
      v15 = gmFFEnabled;
      _os_log_impl(&dword_2413B9000, v7, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment GMEligibilityContextDeviceNotCapable: %d and CSFAnyFFEnabled: %d", &v10, 0x18u);

      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)fetchGMRampSpecifierWith:(id)with
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(GMEligibilityProviderProtocol *)self->_gmEligibilityProvider eligibility]== 18 || ([(GMSpecifierControllerProcotol *)self->_gmSpecifierController gmFFEnabled]& 1) == 0)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      gmEligibilityProvider = self->_gmEligibilityProvider;
      v8 = v6;
      LODWORD(gmEligibilityProvider) = [(GMEligibilityProviderProtocol *)gmEligibilityProvider eligibility]== 18;
      gmFFEnabled = [(GMSpecifierControllerProcotol *)self->_gmSpecifierController gmFFEnabled];
      v12 = 136315650;
      v13 = "[GMSpecifierProvider fetchGMRampSpecifierWith:]";
      v14 = 1024;
      v15 = gmEligibilityProvider;
      v16 = 1024;
      v17 = gmFFEnabled;
      _os_log_impl(&dword_2413B9000, v8, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment GMEligibilityContextDeviceNotCapable: %d and CSFAnyFFEnabled: %d", &v12, 0x18u);
    }

    v5 = 0;
  }

  else
  {
    self->_gmEligibilityContext = [(GMEligibilityProviderProtocol *)self->_gmEligibilityProvider eligibility];
    _configuredGMSpecifier = [(GMSpecifierProvider *)self _configuredGMSpecifier];
    if (_configuredGMSpecifier && [(GMEligibilityProviderProtocol *)self->_gmEligibilityProvider eligibility])
    {
      [(GMEligibilityProviderProtocol *)self->_gmEligibilityProvider setRequestState:0];
      v5 = _configuredGMSpecifier;
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)fetchGMRampStatus
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(GMEligibilityProviderProtocol *)self->_gmEligibilityProvider eligibility]== 18 || ([(GMSpecifierControllerProcotol *)self->_gmSpecifierController gmFFEnabled]& 1) == 0)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      gmEligibilityProvider = self->_gmEligibilityProvider;
      v6 = v4;
      LODWORD(gmEligibilityProvider) = [(GMEligibilityProviderProtocol *)gmEligibilityProvider eligibility]== 18;
      gmFFEnabled = [(GMSpecifierControllerProcotol *)self->_gmSpecifierController gmFFEnabled];
      *buf = 136315650;
      v14 = "[GMSpecifierProvider fetchGMRampStatus]";
      v15 = 1024;
      v16 = gmEligibilityProvider;
      v17 = 1024;
      v18 = gmFFEnabled;
      _os_log_impl(&dword_2413B9000, v6, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment GMEligibilityContextDeviceNotCapable: %d and CSFAnyFFEnabled: %d", buf, 0x18u);
    }
  }

  else if (self->_requestState == 1)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[GMSpecifierProvider fetchGMRampStatus]";
      _os_log_impl(&dword_2413B9000, v3, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment request is already in progress. Bailing.", buf, 0xCu);
    }
  }

  else
  {
    gmEligibilityContext = self->_gmEligibilityContext;
    self->_requestState = 1;
    objc_initWeak(buf, self);
    gmSpecifierController = self->_gmSpecifierController;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__GMSpecifierProvider_fetchGMRampStatus__block_invoke;
    v11[3] = &unk_278CD1770;
    objc_copyWeak(v12, buf);
    v12[1] = gmEligibilityContext;
    [(GMSpecifierControllerProcotol *)gmSpecifierController fetchStatusWithCompletionHandler:v11];
    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __40__GMSpecifierProvider_fetchGMRampStatus__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 5) = 2;
    if (*(a1 + 40) != a2)
    {
      *(WeakRetained + 6) = a2;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__GMSpecifierProvider_fetchGMRampStatus__block_invoke_35;
      block[3] = &unk_278CD1520;
      objc_copyWeak(&v9, (a1 + 32));
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v9);
    }
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[GMSpecifierProvider fetchGMRampStatus]_block_invoke";
      _os_log_impl(&dword_2413B9000, v6, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment self is unavailable at fetchStatus completion. Bailing.", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__GMSpecifierProvider_fetchGMRampStatus__block_invoke_35(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadGMSpecifier];
    WeakRetained = v2;
  }
}

- (void)presentGMEnrollmentView
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getVTUIGMEnrollmentViewControllerClass_softClass;
  v12 = getVTUIGMEnrollmentViewControllerClass_softClass;
  if (!getVTUIGMEnrollmentViewControllerClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getVTUIGMEnrollmentViewControllerClass_block_invoke;
    v8[3] = &unk_278CD1658;
    v8[4] = &v9;
    __getVTUIGMEnrollmentViewControllerClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = [[v3 alloc] initWithDelegate:self];
  gmEnrollmentViewController = self->_gmEnrollmentViewController;
  self->_gmEnrollmentViewController = v5;

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained presentViewController:self->_gmEnrollmentViewController animated:1 completion:&__block_literal_global_1];
}

void __46__GMSpecifierProvider_presentGMEnrollmentView__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[GMSpecifierProvider presentGMEnrollmentView]_block_invoke";
    _os_log_impl(&dword_2413B9000, v0, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment View Controller Presented", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (id)valueForGMRampSpecifier:(id)specifier
{
  v3 = +[AssistantController bundle];
  v4 = [v3 localizedStringForKey:@"GM_RAMP_SPECIFIER_STATUS_TITLE" value:&stru_285317CF0 table:@"AssistantSettings-GM"];

  return v4;
}

- (id)valueForGMPreparingSpecifier:(id)specifier
{
  v3 = +[AssistantController bundle];
  v4 = [v3 localizedStringForKey:@"GM_RAMP_SPECIFIER_STATUS_PREPARING_TITLE" value:&stru_285317CF0 table:@"AssistantSettings-GM"];

  return v4;
}

- (id)gmUserOptInStatus:(id)status
{
  if ([(GMEligibilityProviderProtocol *)self->_gmEligibilityProvider eligibility]== 9)
  {
    v4 = MEMORY[0x277CBEC28];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[GMSpecifierControllerProcotol featureOptInStatus](self->_gmSpecifierController, "featureOptInStatus")}];
  }

  return v4;
}

- (void)setGMUserOptInStatus:(id)status
{
  if ([status BOOLValue])
  {

    [(GMSpecifierProvider *)self _setGMUserOptInStatus:1];
  }

  else
  {

    [(GMSpecifierProvider *)self presentToggleOffAlert];
  }
}

- (void)presentToggleOffAlert
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[GMSpecifierProvider presentToggleOffAlert]";
    _os_log_impl(&dword_2413B9000, v2, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment presentToggleOffAlert", buf, 0xCu);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v5 = +[AssistantController bundle];
    v6 = [v5 localizedStringForKey:@"GM_TURN_OFF_ALERT_TITLE" value:&stru_285317CF0 table:@"AssistantSettings-GM"];

    v7 = +[AssistantController bundle];
    v8 = [v7 localizedStringForKey:@"GM_TURN_OFF_ALERT_MESSAGE" value:&stru_285317CF0 table:@"AssistantSettings-GM"];
    v9 = 1;
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v7 = +[AssistantController bundle];
    v11 = [v7 localizedStringForKey:@"GM_TURN_OFF_ALERT_TITLE" value:&stru_285317CF0 table:@"AssistantSettings-GM"];
    v12 = +[AssistantController bundle];
    v13 = [v12 localizedStringForKey:@"GM_TURN_OFF_ALERT_MESSAGE" value:&stru_285317CF0 table:@"AssistantSettings-GM"];
    v8 = [v10 stringWithFormat:@"%@\n\n%@", v11, v13];

    v9 = 0;
    v6 = 0;
  }

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v8 preferredStyle:v9];
  v15 = MEMORY[0x277D750F8];
  v16 = +[AssistantController bundle];
  v17 = [v16 localizedStringForKey:@"GM_TURN_OFF_ALERT_OPTION_TURN_OFF" value:&stru_285317CF0 table:@"AssistantSettings-GM"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __44__GMSpecifierProvider_presentToggleOffAlert__block_invoke;
  v27[3] = &unk_278CD1798;
  v27[4] = self;
  v18 = [v15 actionWithTitle:v17 style:2 handler:v27];
  [v14 addAction:v18];

  v19 = MEMORY[0x277D750F8];
  v20 = +[AssistantController bundle];
  v21 = [v20 localizedStringForKey:@"GM_TURN_OFF_ALERT_OPTION_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings-GM"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__GMSpecifierProvider_presentToggleOffAlert__block_invoke_64;
  v26[3] = &unk_278CD1798;
  v26[4] = self;
  v22 = [v19 actionWithTitle:v21 style:1 handler:v26];
  [v14 addAction:v22];

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained presentViewController:v14 animated:1 completion:0];

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __44__GMSpecifierProvider_presentToggleOffAlert__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[GMSpecifierProvider presentToggleOffAlert]_block_invoke";
    _os_log_impl(&dword_2413B9000, v2, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment presentToggleOffAlert turn off selected", &v5, 0xCu);
  }

  result = [*(a1 + 32) _setGMUserOptInStatus:0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __44__GMSpecifierProvider_presentToggleOffAlert__block_invoke_64(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[GMSpecifierProvider presentToggleOffAlert]_block_invoke";
    _os_log_impl(&dword_2413B9000, v2, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment presentToggleOffAlert cancel selected", &v5, 0xCu);
  }

  result = [*(a1 + 32) reloadGMSpecifier];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)reloadGMSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_listController);
    [v4 reloadSpecifiers];
  }
}

- (void)reloadADMSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_listController);
    [v4 reloadSpecifierID:@"IMAGE_CREATION"];
  }
}

- (void)showNetworkUnavailableAlert
{
  v3 = +[AssistantController bundle];
  v13 = [v3 localizedStringForKey:@"GM_NO_NETWORK_WARNING_MESSAGE" value:&stru_285317CF0 table:@"AssistantSettings-GM"];

  v4 = MEMORY[0x277D75110];
  v5 = +[AssistantController bundle];
  v6 = [v5 localizedStringForKey:@"GM_NO_NETWORK_WARNING_TITLE" value:&stru_285317CF0 table:@"AssistantSettings-GM"];
  v7 = [v4 alertControllerWithTitle:v6 message:v13 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = +[AssistantController bundle];
  v10 = [v9 localizedStringForKey:@"GM_NO_NETWORK_OK" value:&stru_285317CF0 table:@"AssistantSettings-GM"];
  v11 = [v8 actionWithTitle:v10 style:1 handler:0];

  [v7 addAction:v11];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

- (void)GMJoinWaitlistTapped:(id)tapped
{
  if ([MEMORY[0x277CEF218] isNetworkAvailable])
  {
    [(GMSpecifierProvider *)self presentGMEnrollmentView];
    gmAnalyticsProvider = self->_gmAnalyticsProvider;

    [(GMAnalyticsProvider *)gmAnalyticsProvider sendAction:2];
  }

  else
  {

    [(GMSpecifierProvider *)self showNetworkUnavailableAlert];
  }
}

- (void)turnOnGmTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_listController);
    [v6 performSelector:sel_handleGmCFU];
  }
}

- (void)siriGMIntroViewControllerPresented:(id)presented withEnrollmentType:(unint64_t)type
{
  presentedCopy = presented;
  switch(type)
  {
    case 1uLL:
      v8 = presentedCopy;
      v7 = 7;
      break;
    case 4uLL:
      v8 = presentedCopy;
      v7 = 3;
      break;
    case 3uLL:
      v8 = presentedCopy;
      v7 = 0;
      break;
    default:
      goto LABEL_8;
  }

  [(GMAnalyticsProvider *)self->_gmAnalyticsProvider sendAction:v7];
  presentedCopy = v8;
LABEL_8:
}

- (void)siriGMIntroViewControllerContinuePressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(GMEligibilityProviderProtocol *)self->_gmEligibilityProvider eligibility]== 5)
  {
    [(GMSpecifierControllerProcotol *)self->_gmSpecifierController setFeatureOptInStatusWithEnabled:1];
    [(GMSpecifierProvider *)self dismissGMIntroViewController];
    [(GMSpecifierProvider *)self reloadGMSpecifier];
    [(GMAnalyticsProvider *)self->_gmAnalyticsProvider sendAction:9];
  }

  else
  {
    objc_initWeak(&location, self);
    gmSpecifierController = self->_gmSpecifierController;
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __64__GMSpecifierProvider_siriGMIntroViewControllerContinuePressed___block_invoke;
    v9 = &unk_278CD17C0;
    objc_copyWeak(&v10, &location);
    [(GMSpecifierControllerProcotol *)gmSpecifierController enrollWithCompletionHandler:&v6];
    [(GMAnalyticsProvider *)self->_gmAnalyticsProvider sendAction:4, v6, v7, v8, v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __64__GMSpecifierProvider_siriGMIntroViewControllerContinuePressed___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[6] = a2;
    [WeakRetained[2] setEligibility:a2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__GMSpecifierProvider_siriGMIntroViewControllerContinuePressed___block_invoke_2;
    block[3] = &unk_278CD1520;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v7);
  }
}

void __64__GMSpecifierProvider_siriGMIntroViewControllerContinuePressed___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained dismissGMIntroViewController];
    v2 = objc_loadWeakRetained(v3 + 3);
    [v2 reloadSpecifiers];

    WeakRetained = v3;
  }
}

- (void)siriGMIntroViewControllerNotNowPressed:(id)pressed
{
  [(GMSpecifierProvider *)self dismissGMIntroViewController];
  v4 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  eligibility = [v4 eligibility];

  gmAnalyticsProvider = self->_gmAnalyticsProvider;
  if (eligibility == 5)
  {
    v7 = 8;
  }

  else
  {
    v7 = 5;
  }

  [(GMAnalyticsProvider *)gmAnalyticsProvider sendAction:v7];
}

- (void)dismissGMIntroViewController
{
  gmEnrollmentViewController = self->_gmEnrollmentViewController;
  if (gmEnrollmentViewController)
  {
    [(VTUIGMEnrollmentViewController *)gmEnrollmentViewController dismissViewControllerAnimated:1 completion:&__block_literal_global_81];
  }
}

void __51__GMSpecifierProvider_dismissGMIntroViewController__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[GMSpecifierProvider dismissGMIntroViewController]_block_invoke";
    _os_log_impl(&dword_2413B9000, v0, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment View Controller Dismissed", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __31__GMSpecifierProvider_clearCFU__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [v2 localizedDescription];
      v7 = 136315394;
      v8 = "[GMSpecifierProvider clearCFU]_block_invoke";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_2413B9000, v4, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment GM Enrollment CFU could not be cleared %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateWithContext:(int64_t)context
{
  objc_initWeak(&location, self);
  self->_gmEligibilityContext = context;
  [(GMEligibilityProviderProtocol *)self->_gmEligibilityProvider setEligibility:context];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__GMSpecifierProvider_updateWithContext___block_invoke;
  v5[3] = &unk_278CD1520;
  objc_copyWeak(&v6, &location);
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __41__GMSpecifierProvider_updateWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadGMSpecifier];
    WeakRetained = v2;
  }
}

- (void)updateADMState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[GMSpecifierProvider updateADMState]";
    _os_log_impl(&dword_2413B9000, v3, OS_LOG_TYPE_INFO, "%s Attempting ADM update", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__GMSpecifierProvider_updateADMState__block_invoke;
  block[3] = &unk_278CD1520;
  objc_copyWeak(&v6, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __37__GMSpecifierProvider_updateADMState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadADMSpecifier];
    WeakRetained = v2;
  }
}

@end