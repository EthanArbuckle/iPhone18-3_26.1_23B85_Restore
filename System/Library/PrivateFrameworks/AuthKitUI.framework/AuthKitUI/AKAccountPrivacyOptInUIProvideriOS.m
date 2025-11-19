@interface AKAccountPrivacyOptInUIProvideriOS
+ (BOOL)_featureEnabledByServer;
+ (BOOL)_optInChoiceHadMadeByAltDSID:(id)a3 errorPtr:(id *)a4;
+ (BOOL)_shouldShowOptInViewWithAltDSID:(id)a3 errorPtr:(id *)a4;
+ (id)newAccountPrivacyOptInViewForFlow:(unint64_t)a3 altDSID:(id)a4 userActionCompletion:(id)a5;
- (AKAccountPrivacyOptInUIProvideriOS)initWithFlow:(unint64_t)a3 altDSID:(id)a4;
@end

@implementation AKAccountPrivacyOptInUIProvideriOS

- (AKAccountPrivacyOptInUIProvideriOS)initWithFlow:(unint64_t)a3 altDSID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v13;
  v13 = 0;
  v9.receiver = v4;
  v9.super_class = AKAccountPrivacyOptInUIProvideriOS;
  v7 = [(AKAccountPrivacyOptInUIProvideriOS *)&v9 init];
  v13 = v7;
  objc_storeStrong(&v13, v7);
  if (v7)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v14, v11);
      _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Initializing AKAccountPrivacyOptInUIProvideriOS with flow=%ld", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v13->_flow = v11;
    objc_storeStrong(&v13->_altDSID, location);
  }

  v6 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v13, 0);
  *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)newAccountPrivacyOptInViewForFlow:(unint64_t)a3 altDSID:(id)a4 userActionCompletion:(id)a5
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  v12 = 0;
  v9 = [AKAccountPrivacyOptInUIProvideriOS _shouldShowOptInViewWithAltDSID:location errorPtr:&v12];
  objc_storeStrong(&v13, v12);
  if (v9)
  {
    v5 = [AKAccountPrivacyOptInViewModel alloc];
    v10 = [(AKAccountPrivacyOptInViewModel *)v5 initWithType:v16];
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

+ (BOOL)_shouldShowOptInViewWithAltDSID:(id)a3 errorPtr:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  if (![AKAccountPrivacyOptInUIProvideriOS _optInChoiceHadMadeByAltDSID:location[0] errorPtr:a4])
  {
    v6 = +[AKAccountPrivacyOptInUIProvideriOS _featureEnabledByServer];
  }

  objc_storeStrong(location, 0);
  return v6;
}

+ (BOOL)_optInChoiceHadMadeByAltDSID:(id)a3 errorPtr:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v10 = [MEMORY[0x277CF0130] sharedInstance];
  v7 = [MEMORY[0x277CF0130] sharedInstance];
  v9 = [v7 authKitAccountWithAltDSID:location[0] error:a4];
  v11 = [v10 accountImprovementOptInValueForAccount:{v9, MEMORY[0x277D82BD8](v7).n128_f64[0]}] != 2;
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v14, v11);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "AKAccountPrivacyOptInUIProvideriOS: _optInChoiceHadMadeByAltDSID=%d", v14, 8u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v11;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, HIDWORD(v5));
  objc_storeStrong(location, HIDWORD(v5));
  *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)_featureEnabledByServer
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = a1;
  v15 = a2;
  v5 = [MEMORY[0x277CF02F0] sharedBag];
  v14 = [v5 isAccountAccessTelemetryOptInEnabled];
  v6 = [MEMORY[0x277CF0218] currentDevice];
  v12 = 0;
  v7 = 0;
  if ([v6 isInternalBuild])
  {
    v13 = [MEMORY[0x277CF0208] sharedConfiguration];
    v12 = 1;
    v7 = [v13 accountAccessTelemetryOptInFFOverride] == 1;
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  MEMORY[0x277D82BD8](v6);
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
    v14 = 1;
  }

  v8 = _AKLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v17, v14 & 1);
    _os_log_debug_impl(&dword_222379000, v8, OS_LOG_TYPE_DEBUG, "AKAccountPrivacyOptInUIProvideriOS: _featureEnabledByServer=%d", v17, 8u);
  }

  objc_storeStrong(&v8, 0);
  *MEMORY[0x277D85DE8];
  return v14 & 1;
}

@end