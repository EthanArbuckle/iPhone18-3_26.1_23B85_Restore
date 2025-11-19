@interface AKFidoHook
- (AKFidoHook)initWithAccount:(id)a3;
- (BOOL)_isUserCancelError:(id)a3;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_startFidoRegistrationWithAttributes:(id)a3 completion:(id)a4;
- (void)_startFidoVerificationWithAttributes:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AKFidoHook

- (AKFidoHook)initWithAccount:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKFidoHook;
  v6 = [(AKFidoHook *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_account, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (BOOL)shouldMatchElement:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] name];
  v6 = 0;
  v5 = 1;
  if (([v4 isEqualToString:@"fido:register"] & 1) == 0)
  {
    v7 = [location[0] name];
    v6 = 1;
    v5 = [v7 isEqualToString:@"fido:verify"];
  }

  v9 = v5 & 1;
  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (BOOL)shouldMatchModel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] clientInfo];
  v6 = [v4 objectForKey:@"action"];
  MEMORY[0x277D82BD8](v4);
  v5 = 1;
  if (([v6 isEqualToString:@"fido:register"] & 1) == 0)
  {
    v5 = [v6 isEqualToString:@"fido:verify"];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v11 = [location[0] name];
  v12 = [v11 isEqualToString:@"fido:register"];
  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    [(AKFidoHook *)v17 _startFidoRegistrationWithAttributes:v15 completion:v13];
  }

  else
  {
    v6 = [location[0] name];
    v7 = [v6 isEqualToString:@"fido:verify"];
    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      [(AKFidoHook *)v17 _startFidoVerificationWithAttributes:v15 completion:v13];
    }
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v9 = [location[0] clientInfo];
  v10 = [v9 objectForKey:@"action"];
  MEMORY[0x277D82BD8](v9);
  if ([v10 isEqualToString:@"fido:register"])
  {
    v6 = v13;
    v7 = [location[0] clientInfo];
    [AKFidoHook _startFidoRegistrationWithAttributes:v6 completion:"_startFidoRegistrationWithAttributes:completion:"];
    MEMORY[0x277D82BD8](v7);
  }

  else if ([v10 isEqualToString:@"fido:verify"])
  {
    v4 = v13;
    v5 = [location[0] clientInfo];
    [AKFidoHook _startFidoVerificationWithAttributes:v4 completion:"_startFidoVerificationWithAttributes:completion:"];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_startFidoRegistrationWithAttributes:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = _AKLogFido();
  v40 = 2;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    log = v41;
    type = v40;
    __os_log_helper_16_0_0(v39);
    _os_log_debug_impl(&dword_222379000, log, type, "Fido hook requested to register the key.", v39, 2u);
  }

  objc_storeStrong(&v41, 0);
  v38 = _AKLogFido();
  v37 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v46, location[0]);
    _os_log_debug_impl(&dword_222379000, v38, v37, "Fido registration attributes:\n%@", v46, 0xCu);
  }

  objc_storeStrong(&v38, 0);
  v36 = [location[0] objectForKeyedSubscript:@"challenge"];
  v35 = [location[0] objectForKeyedSubscript:@"userHandle"];
  v34 = [location[0] objectForKeyedSubscript:@"rpId"];
  v33 = [location[0] objectForKeyedSubscript:@"credentialName"];
  v14 = objc_opt_class();
  v13 = [location[0] objectForKeyedSubscript:@"excludedCredentials"];
  v32 = _AKSafeCast(v14, v13);
  MEMORY[0x277D82BD8](v13);
  v31 = [v32 componentsSeparatedByString:{@", "}];
  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v30 = [v12 localizedStringForKey:@"FIDO_DISPLAY_NAME" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v12);
  v29 = [objc_alloc(MEMORY[0x277CF0240]) initWithChallengeString:v36 relyingPartyIdentifier:v34 userIdentifierString:v35 displayName:v30 credentialName:v33 credentials:v31];
  v11 = [location[0] objectForKeyedSubscript:@"promptTitle"];
  [v29 setPromptTitle:?];
  MEMORY[0x277D82BD8](v11);
  v10 = [location[0] objectForKeyedSubscript:@"promptHeader"];
  [v29 setPromptHeader:?];
  MEMORY[0x277D82BD8](v10);
  v9 = [location[0] objectForKeyedSubscript:@"promptBody"];
  [v29 setPromptBody:?];
  MEMORY[0x277D82BD8](v9);
  [v29 setUseAlternativeKeysIcon:1];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v7 = [v8 localizedStringForKey:@"FIDO_INCORRECT_KEY_PRESENTED_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
  [v29 setIncorrectKeyPresentedMessage:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v28 = _AKLogFido();
  v27 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v29 incorrectKeyPresentedMessage];
    __os_log_helper_16_2_1_8_64(v45, v6);
    _os_log_debug_impl(&dword_222379000, v28, v27, "Setting fidoContext.incorrectKeyPresentedMessage = %@", v45, 0xCu);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v28, 0);
  v26 = objc_alloc_init(AKFidoUIController);
  objc_initWeak(&from, v44);
  v4 = v26;
  v5 = v29;
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __62__AKFidoHook__startFidoRegistrationWithAttributes_completion___block_invoke;
  v22 = &unk_2784A6138;
  objc_copyWeak(&v24, &from);
  v23 = MEMORY[0x277D82BE0](v42);
  [v4 registerFidoKeyWithContext:v5 completion:&v18];
  objc_storeStrong(&v23, 0);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __62__AKFidoHook__startFidoRegistrationWithAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v37 = 0;
  objc_storeStrong(&v37, a3);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 40));
  if (v36[0])
  {
    v26 = objc_alloc_init(MEMORY[0x277D46208]);
    [v36[0] setServerHookResponse:?];
    MEMORY[0x277D82BD8](v26);
    if (location[0])
    {
      oslog = _AKLogFido();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        log = oslog;
        v25 = type;
        __os_log_helper_16_0_0(v33);
        _os_log_debug_impl(&dword_222379000, log, v25, "Fido registration was a success.", v33, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v32 = _AKLogFido();
      v31 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v23 = [location[0] credentialID];
        v22 = [location[0] attestationsData];
        v21 = [location[0] clientData];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v46, v23, v22, v21);
        _os_log_debug_impl(&dword_222379000, v32, v31, "Fido registration succeeded with CredentialID: %@\nAttestationsData: %@\nClientData: %@", v46, 0x20u);
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](v22);
        MEMORY[0x277D82BD8](v23);
      }

      objc_storeStrong(&v32, 0);
      v44[0] = @"credentialID";
      v18 = [location[0] credentialID];
      v45[0] = v18;
      v44[1] = @"clientData";
      v17 = [location[0] clientData];
      v45[1] = v17;
      v44[2] = @"challenge";
      v16 = [location[0] challenge];
      v45[2] = v16;
      v44[3] = @"rpId";
      v15 = [location[0] relyingPartyIdentifier];
      v45[3] = v15;
      v44[4] = @"userHandle";
      v14 = [location[0] userIdentifier];
      v45[4] = v14;
      v44[5] = @"credentialName";
      v13 = [location[0] credentialName];
      v45[5] = v13;
      v44[6] = @"success";
      v45[6] = &unk_2835AADB0;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:7];
      v30 = [v12 mutableCopy];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      v19 = [location[0] attestationsData];
      v20 = [v19 length];
      MEMORY[0x277D82BD8](v19);
      if (v20)
      {
        v11 = [location[0] attestationsData];
        [v30 setObject:? forKeyedSubscript:?];
        MEMORY[0x277D82BD8](v11);
      }

      v10 = [v30 copy];
      v9 = [v36[0] serverHookResponse];
      [v9 setAdditionalPayload:v10];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v30, 0);
    }

    else
    {
      v29 = _AKLogFido();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v43, v37);
        _os_log_error_impl(&dword_222379000, v29, OS_LOG_TYPE_ERROR, "Fido registration failed: %@", v43, 0xCu);
      }

      objc_storeStrong(&v29, 0);
      if ([v36[0] _isUserCancelError:v37])
      {
        v41[0] = *MEMORY[0x277D46250];
        v42[0] = *MEMORY[0x277D46248];
        v41[1] = @"success";
        v42[1] = &unk_2835AADC8;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
        v7 = [v36[0] serverHookResponse];
        [v7 setAdditionalPayload:v8];
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
      }

      else
      {
        v39[0] = @"errorDomain";
        v6 = [v37 domain];
        v40[0] = v6;
        v39[1] = @"errorCode";
        v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v37, "code")}];
        v40[1] = v5;
        v39[2] = @"success";
        v40[2] = &unk_2835AADC8;
        v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
        v3 = [v36[0] serverHookResponse];
        [v3 setAdditionalPayload:v4];
        MEMORY[0x277D82BD8](v3);
        MEMORY[0x277D82BD8](v4);
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
      }
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), location[0] != 0, v37);
  objc_storeStrong(v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_startFidoVerificationWithAttributes:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = _AKLogFido();
  v36 = 2;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    log = v37;
    type = v36;
    __os_log_helper_16_0_0(v35);
    _os_log_debug_impl(&dword_222379000, log, type, "Fido hook requested to verify the key.", v35, 2u);
  }

  objc_storeStrong(&v37, 0);
  v34 = _AKLogFido();
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v42, location[0]);
    _os_log_debug_impl(&dword_222379000, v34, v33, "Fido verification attributes:\n%@", v42, 0xCu);
  }

  objc_storeStrong(&v34, 0);
  v32 = [location[0] objectForKeyedSubscript:@"challenge"];
  v31 = [location[0] objectForKeyedSubscript:@"rpId"];
  v13 = objc_opt_class();
  v12 = [location[0] objectForKeyedSubscript:@"allowedCredentials"];
  v30 = _AKSafeCast(v13, v12);
  MEMORY[0x277D82BD8](v12);
  v29 = [v30 componentsSeparatedByString:{@", "}];
  v28 = [objc_alloc(MEMORY[0x277CF0240]) initWithChallengeString:v32 relyingPartyIdentifier:v31 userIdentifierString:0 displayName:0 credentialName:0 credentials:v29];
  v11 = [location[0] objectForKeyedSubscript:@"promptTitle"];
  [v28 setPromptTitle:?];
  MEMORY[0x277D82BD8](v11);
  v10 = [location[0] objectForKeyedSubscript:@"promptHeader"];
  [v28 setPromptHeader:?];
  MEMORY[0x277D82BD8](v10);
  v9 = [location[0] objectForKeyedSubscript:@"promptBody"];
  [v28 setPromptBody:?];
  MEMORY[0x277D82BD8](v9);
  [v28 setUseAlternativeKeysIcon:1];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v7 = [v8 localizedStringForKey:@"FIDO_INCORRECT_KEY_PRESENTED_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
  [v28 setIncorrectKeyPresentedMessage:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v27 = _AKLogFido();
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v28 incorrectKeyPresentedMessage];
    __os_log_helper_16_2_1_8_64(v41, v6);
    _os_log_debug_impl(&dword_222379000, v27, v26, "Setting fidoContext.incorrectKeyPresentedMessage = %@", v41, 0xCu);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v27, 0);
  v25 = objc_alloc_init(AKFidoUIController);
  objc_initWeak(&from, v40);
  v4 = v25;
  v5 = v28;
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __62__AKFidoHook__startFidoVerificationWithAttributes_completion___block_invoke;
  v21 = &unk_2784A6160;
  objc_copyWeak(&v23, &from);
  v22 = MEMORY[0x277D82BE0](v38);
  [v4 verifyFidoKeyWithFidoContext:v5 completion:&v17];
  objc_storeStrong(&v22, 0);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&from);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __62__AKFidoHook__startFidoVerificationWithAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36[8] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27[1] = a1;
  v27[0] = objc_loadWeakRetained((a1 + 40));
  if (v27[0])
  {
    v20 = objc_alloc_init(MEMORY[0x277D46208]);
    [v27[0] setServerHookResponse:?];
    MEMORY[0x277D82BD8](v20);
    if (location[0])
    {
      oslog = _AKLogFido();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        log = oslog;
        v19 = type;
        __os_log_helper_16_0_0(v24);
        _os_log_debug_impl(&dword_222379000, log, v19, "Fido verification was a success.", v24, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v35[0] = @"authenticatorData";
      v17 = [location[0] authenticatorData];
      v36[0] = v17;
      v35[1] = @"signatureData";
      v16 = [location[0] signature];
      v36[1] = v16;
      v35[2] = @"credentialID";
      v15 = [location[0] credentialID];
      v36[2] = v15;
      v35[3] = @"clientData";
      v14 = [location[0] clientData];
      v36[3] = v14;
      v35[4] = @"userHandle";
      v13 = [location[0] userIdentifier];
      v36[4] = v13;
      v35[5] = @"rpId";
      v12 = [location[0] relyingPartyIdentifier];
      v36[5] = v12;
      v35[6] = @"challenge";
      v11 = [location[0] challenge];
      v36[6] = v11;
      v35[7] = @"success";
      v36[7] = &unk_2835AADB0;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:8];
      v9 = [v27[0] serverHookResponse];
      [v9 setAdditionalPayload:v10];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
    }

    else
    {
      v23 = _AKLogFido();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v34, v28);
        _os_log_error_impl(&dword_222379000, v23, OS_LOG_TYPE_ERROR, "Fido verification failed: %@", v34, 0xCu);
      }

      objc_storeStrong(&v23, 0);
      if ([v27[0] _isUserCancelError:v28])
      {
        v32[0] = *MEMORY[0x277D46250];
        v33[0] = *MEMORY[0x277D46248];
        v32[1] = @"success";
        v33[1] = &unk_2835AADC8;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
        v7 = [v27[0] serverHookResponse];
        [v7 setAdditionalPayload:v8];
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
      }

      else
      {
        v30[0] = @"errorDomain";
        v6 = [v28 domain];
        v31[0] = v6;
        v30[1] = @"errorCode";
        v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v28, "code")}];
        v31[1] = v5;
        v30[2] = @"success";
        v31[2] = &unk_2835AADC8;
        v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
        v3 = [v27[0] serverHookResponse];
        [v3 setAdditionalPayload:v4];
        MEMORY[0x277D82BD8](v3);
        MEMORY[0x277D82BD8](v4);
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
      }
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), location[0] != 0, v28);
  objc_storeStrong(v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)_isUserCancelError:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = 1;
  if (([location[0] ak_isUserCancelError] & 1) == 0)
  {
    v4 = [MEMORY[0x277CF0238] isFidoUserCancelError:location[0]];
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end