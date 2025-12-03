@interface AKAccountPrivacyOptInUIProvideriOS
+ (BOOL)_featureEnabledByServer;
+ (BOOL)_optInChoiceHadMadeByAltDSID:(id)d errorPtr:(id *)ptr;
+ (BOOL)_shouldShowOptInViewWithAltDSID:(id)d errorPtr:(id *)ptr;
+ (id)newAccountPrivacyOptInViewForFlow:(unint64_t)flow altDSID:(id)d userActionCompletion:(id)completion;
- (AKAccountPrivacyOptInUIProvideriOS)initWithFlow:(unint64_t)flow altDSID:(id)d;
@end

@implementation AKAccountPrivacyOptInUIProvideriOS

- (AKAccountPrivacyOptInUIProvideriOS)initWithFlow:(unint64_t)flow altDSID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v12 = a2;
  flowCopy = flow;
  location = 0;
  objc_storeStrong(&location, d);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKAccountPrivacyOptInUIProvideriOS;
  v7 = [(AKAccountPrivacyOptInUIProvideriOS *)&v9 init];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v14, flowCopy);
      _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Initializing AKAccountPrivacyOptInUIProvideriOS with flow=%ld", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_flow = flowCopy;
    objc_storeStrong(&selfCopy->_altDSID, location);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)newAccountPrivacyOptInViewForFlow:(unint64_t)flow altDSID:(id)d userActionCompletion:(id)completion
{
  selfCopy = self;
  v17 = a2;
  flowCopy = flow;
  location = 0;
  objc_storeStrong(&location, d);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = 0;
  v12 = 0;
  v9 = [AKAccountPrivacyOptInUIProvideriOS _shouldShowOptInViewWithAltDSID:location errorPtr:&v12];
  objc_storeStrong(&v13, v12);
  if (v9)
  {
    v5 = [AKAccountPrivacyOptInViewModel alloc];
    v10 = [(AKAccountPrivacyOptInViewModel *)v5 initWithType:flowCopy];
    [(AKAccountPrivacyOptInViewModel *)v10 setAltDSID:location];
    v6 = [AKAccountPrivacyOptInViewController alloc];
    v19 = [(AKAccountPrivacyOptInViewController *)v6 initWithViewModel:v10 userActionCompletion:v14];
    v11 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    if (v14)
    {
      (*(v14 + 2))(v14, 0, v13);
    }

    v19 = 0;
    v11 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  return v19;
}

+ (BOOL)_shouldShowOptInViewWithAltDSID:(id)d errorPtr:(id *)ptr
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = 0;
  if (![AKAccountPrivacyOptInUIProvideriOS _optInChoiceHadMadeByAltDSID:location[0] errorPtr:ptr])
  {
    v6 = +[AKAccountPrivacyOptInUIProvideriOS _featureEnabledByServer];
  }

  objc_storeStrong(location, 0);
  return v6;
}

+ (BOOL)_optInChoiceHadMadeByAltDSID:(id)d errorPtr:(id *)ptr
{
  v15 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  ptrCopy = ptr;
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
  v9 = [mEMORY[0x277CF0130]2 authKitAccountWithAltDSID:location[0] error:ptr];
  v11 = [mEMORY[0x277CF0130] accountImprovementOptInValueForAccount:{v9, MEMORY[0x277D82BD8](mEMORY[0x277CF0130]2).n128_f64[0]}] != 2;
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v14, v11);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "AKAccountPrivacyOptInUIProvideriOS: _optInChoiceHadMadeByAltDSID=%d", v14, 8u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v11;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&mEMORY[0x277CF0130], HIDWORD(v5));
  objc_storeStrong(location, HIDWORD(v5));
  *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)_featureEnabledByServer
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  mEMORY[0x277CF02F0] = [MEMORY[0x277CF02F0] sharedBag];
  isAccountAccessTelemetryOptInEnabled = [mEMORY[0x277CF02F0] isAccountAccessTelemetryOptInEnabled];
  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  v12 = 0;
  v7 = 0;
  if ([currentDevice isInternalBuild])
  {
    mEMORY[0x277CF0208] = [MEMORY[0x277CF0208] sharedConfiguration];
    v12 = 1;
    v7 = [mEMORY[0x277CF0208] accountAccessTelemetryOptInFFOverride] == 1;
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0208]);
  }

  MEMORY[0x277D82BD8](currentDevice);
  if (v7)
  {
    location = _AKLogSystem();
    v10 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_debug_impl(&dword_222379000, log, type, "AKAccountPrivacyOptInUIProvideriOS: _featureEnabledByServer: accountAccessTelemetryOptInFFOverride by AKConfig. Force the server feature flag to be enabled.", v9, 2u);
    }

    objc_storeStrong(&location, 0);
    isAccountAccessTelemetryOptInEnabled = 1;
  }

  v8 = _AKLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v17, isAccountAccessTelemetryOptInEnabled & 1);
    _os_log_debug_impl(&dword_222379000, v8, OS_LOG_TYPE_DEBUG, "AKAccountPrivacyOptInUIProvideriOS: _featureEnabledByServer=%d", v17, 8u);
  }

  objc_storeStrong(&v8, 0);
  *MEMORY[0x277D85DE8];
  return isAccountAccessTelemetryOptInEnabled & 1;
}

@end