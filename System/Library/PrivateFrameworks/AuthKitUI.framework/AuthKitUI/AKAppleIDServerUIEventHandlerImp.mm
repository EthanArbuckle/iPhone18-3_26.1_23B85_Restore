@interface AKAppleIDServerUIEventHandlerImp
- (void)fetchUserInformationForAltDSID:(id)d completion:(id)completion;
- (void)postCDPFollowUpForError:(id)error;
- (void)reauthenticateWithContext:(id)context withCompletion:(id)completion;
- (void)startCDPRepairWithContext:(id)context withAdditionalData:(id)data completion:(id)completion;
- (void)updateAccountUsernameForAltDSID:(id)d withHarvestedData:(id)data;
- (void)updateStateWithExternalAuthenticationResponse:(id)response forContext:(id)context withAuthController:(id)controller completion:(id)completion;
@end

@implementation AKAppleIDServerUIEventHandlerImp

- (void)reauthenticateWithContext:(id)context withCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v27 = _AKLogSystem();
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    log = v27;
    v15 = v26;
    __os_log_helper_16_0_0(v25);
    _os_log_debug_impl(&dword_222379000, log, v15, "Server UI starting to reauthenticate...", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v24 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  v23 = objc_alloc_init(MEMORY[0x277CF0178]);
  v6 = v24;
  username = [location[0] username];
  [(AKAppleIDAuthenticationInAppContext *)v6 setUsername:?];
  *&v4 = MEMORY[0x277D82BD8](username).n128_u64[0];
  v8 = v24;
  altDSID = [location[0] altDSID];
  [(AKAppleIDAuthenticationInAppContext *)v8 setAltDSID:?];
  *&v5 = MEMORY[0x277D82BD8](altDSID).n128_u64[0];
  [(AKAppleIDAuthenticationInAppContext *)v24 setIsUsernameEditable:0, v5];
  v10 = v24;
  presentingViewController = [location[0] presentingViewController];
  [(AKAppleIDAuthenticationInAppContext *)v10 setPresentingViewController:?];
  MEMORY[0x277D82BD8](presentingViewController);
  v13 = v23;
  v12 = v24;
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __77__AKAppleIDServerUIEventHandlerImp_reauthenticateWithContext_withCompletion___block_invoke;
  v21 = &unk_2784A67C8;
  v22 = MEMORY[0x277D82BE0](v28);
  [v13 authenticateWithContext:v12 completion:&v17];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAppleIDServerUIEventHandlerImp_reauthenticateWithContext_withCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchUserInformationForAltDSID:(id)d completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = _AKLogSystem();
  v17 = 2;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    log = v18;
    type = v17;
    __os_log_helper_16_0_0(v16);
    _os_log_debug_impl(&dword_222379000, log, type, "Server UI to fetch user information", v16, 2u);
  }

  objc_storeStrong(&v18, 0);
  v15 = objc_alloc_init(MEMORY[0x277CF0178]);
  v5 = v15;
  v4 = location[0];
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __78__AKAppleIDServerUIEventHandlerImp_fetchUserInformationForAltDSID_completion___block_invoke;
  v13 = &unk_2784A67F0;
  v14 = MEMORY[0x277D82BE0](v19);
  [v5 getUserInformationForAltDSID:v4 completion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void __78__AKAppleIDServerUIEventHandlerImp_fetchUserInformationForAltDSID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)updateAccountUsernameForAltDSID:(id)d withHarvestedData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v14 = 0;
  objc_storeStrong(&v14, data);
  v13 = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_112_8_64(v16, 1752392040, location[0]);
    _os_log_debug_impl(&dword_222379000, v13, v12, "Updating Account username with AltDSID: %{mask.hash}@", v16, 0x16u);
  }

  objc_storeStrong(&v13, 0);
  v11 = [v14 objectForKeyedSubscript:*MEMORY[0x277CEFFD8]];
  if (v11)
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    [mEMORY[0x277CF0130] updateUsername:v11 forAccountsWithAltDSID:location[0]];
    MEMORY[0x277D82BD8](mEMORY[0x277CF0130]);
  }

  else
  {
    oslog = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_222379000, v4, v5, "CFU flow completed without updated username", v8, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)startCDPRepairWithContext:(id)context withAdditionalData:(id)data completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19 = 0;
  objc_storeStrong(&v19, data);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v8;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __92__AKAppleIDServerUIEventHandlerImp_startCDPRepairWithContext_withAdditionalData_completion___block_invoke;
  v14 = &unk_2784A6818;
  v15 = MEMORY[0x277D82BE0](v19);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](v18);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void __92__AKAppleIDServerUIEventHandlerImp_startCDPRepairWithContext_withAdditionalData_completion___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v20 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    v12 = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_debug_impl(&dword_222379000, log, v12, "Server UI Starting iCDP repair...", v19, 2u);
  }

  objc_storeStrong(location, 0);
  v18 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CEFFD0]];
  v9 = MEMORY[0x277CF01E0];
  v10 = [*(a1 + 40) altDSID];
  v17 = [v9 contextForAltDSID:?];
  *&v1 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v17)
  {
    [v17 setPassword:{v18, v1}];
    v15 = [MEMORY[0x277CF01E0] stateControllerWithContext:v17];
    v14 = 0;
    v5 = MEMORY[0x277CF01E0];
    v6 = [*(a1 + 40) presentingViewController];
    v2 = [v5 cdpUIControllerWithPresentingViewController:?];
    v3 = v14;
    v14 = v2;
    MEMORY[0x277D82BD8](v3);
    *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [v15 setUiProvider:{v14, v4}];
    [v15 repairCloudDataProtectionStateWithCompletion:*(a1 + 48)];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  else
  {
    if (*(a1 + 48))
    {
      v7 = *(a1 + 48);
      v8 = [MEMORY[0x277CCA9B8] ak_errorWithCode:{-7114, v1}];
      (*(v7 + 16))(v7, 0);
      MEMORY[0x277D82BD8](v8);
    }

    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
}

- (void)updateStateWithExternalAuthenticationResponse:(id)response forContext:(id)context withAuthController:(id)controller completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v26 = 0;
  objc_storeStrong(&v26, context);
  v25 = 0;
  objc_storeStrong(&v25, controller);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _AKLogSystem();
  v22 = 2;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    log = v23;
    type = v22;
    __os_log_helper_16_0_0(v21);
    _os_log_debug_impl(&dword_222379000, log, type, "Update state with external authentication response", v21, 2u);
  }

  objc_storeStrong(&v23, 0);
  v20 = objc_alloc_init(MEMORY[0x277CF0170]);
  [v20 _updateWithValuesFromContext:v26];
  [v20 setAnticipateEscrowAttempt:1];
  v8 = v25;
  v6 = location[0];
  v7 = v20;
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __123__AKAppleIDServerUIEventHandlerImp_updateStateWithExternalAuthenticationResponse_forContext_withAuthController_completion___block_invoke;
  v18 = &unk_2784A6840;
  v19 = MEMORY[0x277D82BE0](v24);
  [v8 updateStateWithExternalAuthenticationResponse:v6 forContext:v7 completion:&v14];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __123__AKAppleIDServerUIEventHandlerImp_updateStateWithExternalAuthenticationResponse_forContext_withAuthController_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

- (void)postCDPFollowUpForError:(id)error
{
  v8 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  followUpRepairContext = [MEMORY[0x277CF01E0] followUpRepairContext];
  [followUpRepairContext setRepairType:2];
  followUpController = [MEMORY[0x277CF01E0] followUpController];
  [followUpController postFollowUpWithContext:followUpRepairContext error:0];
  MEMORY[0x277D82BD8](followUpController);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v7, location[0]);
    _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Posted CDP repair follow up in response to error: %@", v7, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&followUpRepairContext, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end