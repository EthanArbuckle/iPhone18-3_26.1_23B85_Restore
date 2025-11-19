@interface AKAccountRecoveryStepiCloudSecurityCode
- (BOOL)canProcessResponse:(id)a3;
- (id)_promptForPasscodeWithModel:(id)a3;
- (id)_promptForRecoveryKeyWithModel:(id)a3;
- (void)_beginICloudSecurityCodeWithResponse:(id)a3 model:(id)a4 completion:(id)a5;
- (void)_verifyClientInfoWithResponse:(id)a3 model:(id)a4 completion:(id)a5;
- (void)_verifyLocalSecretWithModel:(id)a3 completion:(id)a4;
- (void)_verifyPinViewWithResponse:(id)a3 model:(id)a4 completion:(id)a5;
- (void)_verifyRemoteSecretWithRecoveryContext:(id)a3 recoveredInfo:(id)a4 recoveryError:(id)a5 model:(id)a6 completion:(id)a7;
- (void)_verifyRemoteSecretWithServerInfo:(id)a3 model:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 presentRecoveryKeyWithValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4;
- (void)cdpContext:(id)a3 promptForBeneficiaryAccessKeyWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7;
- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForRecoveryKeyWithSecretValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 promptForRecoveryKeyWithValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6;
- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5;
- (void)processResponse:(id)a3 model:(id)a4 withCompletion:(id)a5;
@end

@implementation AKAccountRecoveryStepiCloudSecurityCode

- (void)processResponse:(id)a3 model:(id)a4 withCompletion:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v5 = MEMORY[0x193B165F0](v9);
  completion = v12->_completion;
  v12->_completion = v5;
  MEMORY[0x1E69E5920](completion);
  objc_storeStrong(&v12->_model, v10);
  [(AKAccountRecoveryStepiCloudSecurityCode *)v12 _beginICloudSecurityCodeWithResponse:location[0] model:v10 completion:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canProcessResponse:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] data];
  v23 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"navigationBar" error:?];
  MEMORY[0x1E69E5920](v5);
  v8 = [v23 firstObject];
  v7 = [v8 objectForKeyedSubscript:@"title"];
  v6 = [v7 lowercaseString];
  v9 = [v6 containsString:@"passcode"];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  v12 = [location[0] httpResponse];
  v11 = [v12 allHeaderFields];
  v10 = [v11 objectForKey:@"X-Apple-AK-Action"];
  v13 = [v10 isEqualToString:@"start-icsc"];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);
  v16 = [location[0] httpResponse];
  v15 = [v16 allHeaderFields];
  v14 = [v15 objectForKey:@"X-Apple-AK-Auth-Type"];
  v17 = [v14 isEqualToString:@"hsa2"];
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  v20 = [location[0] httpResponse];
  v19 = [v20 allHeaderFields];
  v18 = [v19 objectForKey:@"X-Apple-AK-Action"];
  v21 = [v18 isEqualToString:@"mk-validation"];
  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v20);
  v22 = 1;
  if ((v9 & 1) == 0)
  {
    if (v13 & 1) != 0 || (v4 = 0, (v21))
    {
      v4 = v17;
    }

    v22 = v4;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v22 & 1;
}

- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = _AKLogSystem();
  v10 = 2;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_debug_impl(&dword_193225000, log, type, "Failed verify security code step. Unsupported recovery method.", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  if (v14->_completion)
  {
    completion = v14->_completion;
    v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
    (*(completion + 2))(completion, 0, 0, 0);
    MEMORY[0x1E69E5920](v5);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)cdpContext:(id)a3 promptForBeneficiaryAccessKeyWithCompletion:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = _AKLogSystem();
  v10 = 2;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_debug_impl(&dword_193225000, log, type, "Failed verify security code step. Unsupported recovery method.", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  if (v14->_completion)
  {
    completion = v14->_completion;
    v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
    (*(completion + 2))(completion, 0, 0, 0);
    MEMORY[0x1E69E5920](v5);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = a4;
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = a6;
  v18 = 0;
  objc_storeStrong(&v18, a7);
  v17 = _AKLogSystem();
  v16 = 2;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    log = v17;
    type = v16;
    __os_log_helper_16_0_0(v15);
    _os_log_debug_impl(&dword_193225000, log, type, "Failed verify security code step. Unsupported recovery method.", v15, 2u);
  }

  objc_storeStrong(&v17, 0);
  if (v23->_completion)
  {
    completion = v23->_completion;
    v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
    (*(completion + 2))(completion, 0, 0, 0);
    MEMORY[0x1E69E5920](v8);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = _AKLogSystem();
  v10 = 2;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_debug_impl(&dword_193225000, log, type, "Failed verify security code step. Unsupported recovery method.", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  if (v14->_completion)
  {
    completion = v14->_completion;
    v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
    (*(completion + 2))(completion, 0, 0, 0);
    MEMORY[0x1E69E5920](v5);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = a5;
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v17 = [(AKAccountRecoveryStepiCloudSecurityCode *)v22 _promptForPasscodeWithModel:v22->_model];
  v11 = v18;
  v9 = v17;
  v10 = v20;
  v12 = MEMORY[0x1E69E5928](v22);
  v13 = MEMORY[0x1E69E5928](location[0]);
  v14 = MEMORY[0x1E69E5928](v20);
  v16 = v19;
  v15 = MEMORY[0x1E69E5928](v18);
  [v11 validateSecret:v9 devices:v10 type:0 withCompletion:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __120__AKAccountRecoveryStepiCloudSecurityCode_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke(uint64_t a1, char a2, char a3, id obj)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v10 = a2;
  v9 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v7[1] = a1;
  if (v10)
  {
    v7[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v13, v10 & 1);
      _os_log_debug_impl(&dword_193225000, v7[0], v6, "Passcode validated - %d", v13, 8u);
    }

    objc_storeStrong(v7, 0);
  }

  else if (v9)
  {
    [*(a1 + 32) cdpContext:*(a1 + 40) promptForRemoteSecretWithDevices:*(a1 + 48) offeringRemoteApproval:*(a1 + 64) & 1 validator:*(a1 + 56)];
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v12, location);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Failed verify security code step with error - %@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (*(*(a1 + 32) + 8))
    {
      (*(*(*(a1 + 32) + 8) + 16))();
    }
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = [(AKAccountRecoveryStepiCloudSecurityCode *)v23 _promptForPasscodeWithModel:v23->_model];
  v9 = v20;
  v7 = v19;
  v8 = v21;
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __109__AKAccountRecoveryStepiCloudSecurityCode_cdpRecoveryFlowContext_promptForRemoteSecretWithDevices_validator___block_invoke;
  v14 = &unk_1E73D5EC8;
  v15 = MEMORY[0x1E69E5928](v23);
  v16 = MEMORY[0x1E69E5928](location[0]);
  v17 = MEMORY[0x1E69E5928](v21);
  v18 = MEMORY[0x1E69E5928](v20);
  [v9 validateSecret:v7 devices:v8 type:0 withCompletion:?];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void __109__AKAccountRecoveryStepiCloudSecurityCode_cdpRecoveryFlowContext_promptForRemoteSecretWithDevices_validator___block_invoke(uint64_t a1, char a2, char a3, id obj)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v10 = a2;
  v9 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v7[1] = a1;
  if (v10)
  {
    v7[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v13, v10 & 1);
      _os_log_debug_impl(&dword_193225000, v7[0], v6, "Passcode validated - %d", v13, 8u);
    }

    objc_storeStrong(v7, 0);
  }

  else if (v9)
  {
    [*(a1 + 32) cdpRecoveryFlowContext:*(a1 + 40) promptForRemoteSecretWithDevices:*(a1 + 48) validator:*(a1 + 56)];
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v12, location);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Failed verify security code step with error - %@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (*(*(a1 + 32) + 8))
    {
      (*(*(*(a1 + 32) + 8) + 16))();
    }
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(id)a3 presentRecoveryKeyWithValidator:(id)a4 completion:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = [(AKAccountRecoveryStepiCloudSecurityCode *)v18 _promptForRecoveryKeyWithModel:v18->_model];
  v8 = v16;
  v7 = v14;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __97__AKAccountRecoveryStepiCloudSecurityCode_cdpContext_presentRecoveryKeyWithValidator_completion___block_invoke;
  v12 = &unk_1E73D3B38;
  v13 = MEMORY[0x1E69E5928](v15);
  [v8 confirmRecoveryKey:v7 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __97__AKAccountRecoveryStepiCloudSecurityCode_cdpContext_presentRecoveryKeyWithValidator_completion___block_invoke(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v8, v6 & 1);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "RK validated - %d", v8, 8u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(id)a3 promptForRecoveryKeyWithValidator:(id)a4 completion:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = [(AKAccountRecoveryStepiCloudSecurityCode *)v18 _promptForRecoveryKeyWithModel:v18->_model];
  v8 = v16;
  v7 = v14;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __99__AKAccountRecoveryStepiCloudSecurityCode_cdpContext_promptForRecoveryKeyWithValidator_completion___block_invoke;
  v12 = &unk_1E73D3B38;
  v13 = MEMORY[0x1E69E5928](v15);
  [v8 confirmRecoveryKey:v7 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __99__AKAccountRecoveryStepiCloudSecurityCode_cdpContext_promptForRecoveryKeyWithValidator_completion___block_invoke(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v8, v6 & 1);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "RK validated - %d", v8, 8u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(id)a3 promptForRecoveryKeyWithSecretValidator:(id)a4 completion:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = [(AKAccountRecoveryStepiCloudSecurityCode *)v22 _promptForRecoveryKeyWithModel:v22->_model];
  v8 = v20;
  v7 = v18;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __105__AKAccountRecoveryStepiCloudSecurityCode_cdpContext_promptForRecoveryKeyWithSecretValidator_completion___block_invoke;
  v13 = &unk_1E73D5EF0;
  v14 = MEMORY[0x1E69E5928](v22);
  v15 = MEMORY[0x1E69E5928](location[0]);
  v16 = MEMORY[0x1E69E5928](v20);
  v17 = MEMORY[0x1E69E5928](v19);
  [v8 validateRecoveryKey:v7 withCompletion:?];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __105__AKAccountRecoveryStepiCloudSecurityCode_cdpContext_promptForRecoveryKeyWithSecretValidator_completion___block_invoke(uint64_t a1, char a2, char a3, id obj)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v10 = a2;
  v9 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = a1;
  if ((v9 & 1) != 0 && location)
  {
    [*(a1 + 32) cdpContext:*(a1 + 40) promptForRecoveryKeyWithSecretValidator:*(a1 + 48) completion:*(a1 + 56)];
    v6 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v12, v10 & 1);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "RK validated - %d", v12, 8u);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v6 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_beginICloudSecurityCodeWithResponse:(id)a3 model:(id)a4 completion:(id)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v11 = [location[0] data];
  v19 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"alert" error:?];
  MEMORY[0x1E69E5920](v11);
  v12 = [location[0] data];
  v18 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"button" error:?];
  MEMORY[0x1E69E5920](v12);
  v16 = 0;
  v14 = 0;
  v13 = 0;
  if ([v19 count] == 1)
  {
    v13 = 0;
    if ([v18 count] == 1)
    {
      v17 = [v19 firstObject];
      v16 = 1;
      v15 = [v17 objectForKeyedSubscript:@"id"];
      v14 = 1;
      v13 = [v15 isEqualToString:@"forgotpasscode"];
    }
  }

  if (v14)
  {
    MEMORY[0x1E69E5920](v15);
  }

  if (v16)
  {
    MEMORY[0x1E69E5920](v17);
  }

  if (v13)
  {
    v8 = [v21 cliUtilities];
    v7 = [v21 configuration];
    v6 = [v18 firstObject];
    v5 = [location[0] httpResponse];
    [v8 updateConfiguration:v7 fromXMLAttributes:v6 response:?];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    [(AKAccountRecoveryStepiCloudSecurityCode *)v23 _verifyLocalSecretWithModel:v21 completion:v20];
  }

  else
  {
    [(AKAccountRecoveryStepiCloudSecurityCode *)v23 _verifyClientInfoWithResponse:location[0] model:v21 completion:v20];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_verifyClientInfoWithResponse:(id)a3 model:(id)a4 completion:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v10 = [location[0] data];
  v12 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"clientInfo" error:?];
  MEMORY[0x1E69E5920](v10);
  if ([v12 count] == 1)
  {
    v7 = [location[0] httpResponse];
    v6 = [v7 allHeaderFields];
    v5 = [v12 firstObject];
    v11 = [v6 aaf_dictionaryByAddingEntriesFromDictionary:?];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
    [(AKAccountRecoveryStepiCloudSecurityCode *)v16 _verifyRemoteSecretWithServerInfo:v11 model:v14 completion:v13];
    objc_storeStrong(&v11, 0);
  }

  else
  {
    [(AKAccountRecoveryStepiCloudSecurityCode *)v16 _verifyPinViewWithResponse:location[0] model:v14 completion:v13];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_verifyPinViewWithResponse:(id)a3 model:(id)a4 completion:(id)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v15 = [location[0] data];
  v19 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"pinView" error:?];
  MEMORY[0x1E69E5920](v15);
  if ([v19 count] == 1)
  {
    v12 = [v21 cliUtilities];
    v11 = [v21 configuration];
    v10 = [v19 firstObject];
    v9 = [location[0] httpResponse];
    [v12 updateConfiguration:v11 fromXMLAttributes:v10 response:?];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
    [(AKAccountRecoveryStepiCloudSecurityCode *)v23 _verifyLocalSecretWithModel:v21 completion:v20];
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = 2;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      log = v18;
      type = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_debug_impl(&dword_193225000, log, type, "Failed verify security code step with unexpected data", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    if (v20)
    {
      v5 = v20;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
      (*(v5 + 2))(v5, 0, 0, 0);
      MEMORY[0x1E69E5920](v6);
    }
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_verifyLocalSecretWithModel:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v16 = +[AKDevice currentDevice];
  v17 = [v16 isProtectedWithPasscode];
  MEMORY[0x1E69E5920](v16);
  if (v17)
  {
    v28 = [location[0] configuration];
    if (v28)
    {
      v4 = [v28 request];
      v24 = [v4 mutableCopy];
      MEMORY[0x1E69E5920](v4);
      v5 = [location[0] cliUtilities];
      [v5 signXMLRequest:v24 withPostbackDictionary:MEMORY[0x1E695E0F8]];
      MEMORY[0x1E69E5920](v5);
      v6 = [v28 resourceLoadDelegate];
      [v6 signRequest:v24];
      MEMORY[0x1E69E5920](v6);
      v8 = [location[0] cliUtilities];
      v7 = v24;
      v18 = MEMORY[0x1E69E9820];
      v19 = -1073741824;
      v20 = 0;
      v21 = __82__AKAccountRecoveryStepiCloudSecurityCode__verifyLocalSecretWithModel_completion___block_invoke;
      v22 = &unk_1E73D41D8;
      v23 = MEMORY[0x1E69E5928](v30);
      [v8 beginDataTaskWithRequest:v7 completionHandler:&v18];
      MEMORY[0x1E69E5920](v8);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
      v29 = 0;
    }

    else
    {
      v27 = _AKLogSystem();
      v26 = 2;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        log = v27;
        type = v26;
        __os_log_helper_16_0_0(v25);
        _os_log_debug_impl(&dword_193225000, log, type, "requestConfiguration is nil", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
      if (v30)
      {
        v9 = v30;
        v10 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
        (*(v9 + 2))(v9, 0, 0, 0);
        MEMORY[0x1E69E5920](v10);
      }

      v29 = 1;
    }

    objc_storeStrong(&v28, 0);
  }

  else
  {
    if (v30)
    {
      v13 = v30;
      v14 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7080];
      (*(v13 + 2))(v13, 0, 0, 0);
      MEMORY[0x1E69E5920](v14);
    }

    v29 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void __82__AKAccountRecoveryStepiCloudSecurityCode__verifyLocalSecretWithModel_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_verifyRemoteSecretWithServerInfo:(id)a3 model:(id)a4 completion:(id)a5
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = [AKAccountRecoveryContext recoveryContextWithServerInfo:location[0]];
  if ([v27 isValid])
  {
    v5 = [AKNativeAccountRecoveryController alloc];
    v22 = [(AKNativeAccountRecoveryController *)v5 initWithContext:v27 uiProvider:v31 flowID:?];
    v6 = v22;
    v13 = MEMORY[0x1E69E9820];
    v14 = -1073741824;
    v15 = 0;
    v16 = __94__AKAccountRecoveryStepiCloudSecurityCode__verifyRemoteSecretWithServerInfo_model_completion___block_invoke;
    v17 = &unk_1E73D3A00;
    v18 = MEMORY[0x1E69E5928](v31);
    v19 = MEMORY[0x1E69E5928](v27);
    v20 = MEMORY[0x1E69E5928](v29);
    v21 = MEMORY[0x1E69E5928](v28);
    [v6 presentNativeRecoveryUIWithCompletion:&v13];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v22, 0);
    v23 = 0;
  }

  else
  {
    v26 = _AKLogSystem();
    v25 = 2;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_debug_impl(&dword_193225000, log, type, "Recovery context is invalid...", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    if (v28)
    {
      v7 = v28;
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7059];
      (*(v7 + 2))(v7, 0, 0, 0);
      MEMORY[0x1E69E5920](v8);
    }

    v23 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __94__AKAccountRecoveryStepiCloudSecurityCode__verifyRemoteSecretWithServerInfo_model_completion___block_invoke(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v8, location[0]);
      _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Recovered info: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[4].isa _verifyRemoteSecretWithRecoveryContext:a1[5].isa recoveredInfo:location[0] recoveryError:v6 model:a1[6].isa completion:a1[7].isa];
  }

  else if (a1[7].isa)
  {
    (*(a1[7].isa + 2))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_verifyRemoteSecretWithRecoveryContext:(id)a3 recoveredInfo:(id)a4 recoveryError:(id)a5 model:(id)a6 completion:(id)a7
{
  v43[2] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  v38 = 0;
  objc_storeStrong(&v38, a6);
  v37 = 0;
  objc_storeStrong(&v37, a7);
  v36 = [v38 configuration];
  if (v36)
  {
    v31 = [AKNativeAccountRecoveryController requestForRecoveryCompletionWithContext:location[0] recoveredInfo:v40 recoveryError:v39];
    [v36 setRequest:v31];
    v7 = [v36 request];
    v30 = [v7 mutableCopy];
    MEMORY[0x1E69E5920](v7);
    v12 = [v38 cliUtilities];
    v8 = v30;
    v42[0] = @"appleid";
    v11 = [location[0] authContext];
    v10 = [v11 username];
    v43[0] = v10;
    v42[1] = @"status";
    v43[1] = @"success";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    [v12 signXMLRequest:v8 withPostbackDictionary:?];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
    v13 = [v36 resourceLoadDelegate];
    [v13 signRequest:v30];
    MEMORY[0x1E69E5920](v13);
    v15 = [v38 cliUtilities];
    v14 = v30;
    v24 = MEMORY[0x1E69E9820];
    v25 = -1073741824;
    v26 = 0;
    v27 = __127__AKAccountRecoveryStepiCloudSecurityCode__verifyRemoteSecretWithRecoveryContext_recoveredInfo_recoveryError_model_completion___block_invoke;
    v28 = &unk_1E73D41D8;
    v29 = MEMORY[0x1E69E5928](v37);
    [v15 beginDataTaskWithRequest:v14 completionHandler:&v24];
    MEMORY[0x1E69E5920](v15);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    v32 = 0;
  }

  else
  {
    v35 = _AKLogSystem();
    v34 = 2;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      log = v35;
      type = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_debug_impl(&dword_193225000, log, type, "requestConfiguration is nil", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    if (v37)
    {
      v16 = v37;
      v17 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      (*(v16 + 2))(v16, 0, 0, 0);
      MEMORY[0x1E69E5920](v17);
    }

    v32 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __127__AKAccountRecoveryStepiCloudSecurityCode__verifyRemoteSecretWithRecoveryContext_recoveredInfo_recoveryError_model_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_promptForPasscodeWithModel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] context];
  v9 = [v8 localSecret];
  MEMORY[0x1E69E5920](v8);
  if (![v9 length])
  {
    AKPrint(@"Enter device passcode: ");
    v3 = AKReadLine(1024);
    v4 = v9;
    v9 = v3;
    MEMORY[0x1E69E5920](v4);
    if (v9)
    {
      v7 = [location[0] context];
      [v7 setLocalSecret:v9];
      MEMORY[0x1E69E5920](v7);
    }
  }

  v6 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_promptForRecoveryKeyWithModel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] context];
  v9 = [v8 recoveryKey];
  MEMORY[0x1E69E5920](v8);
  if (![v9 length])
  {
    AKPrint(@"Enter recovery key: ");
    v3 = AKReadLine(1024);
    v4 = v9;
    v9 = v3;
    MEMORY[0x1E69E5920](v4);
    if ([v9 length])
    {
      v7 = [location[0] context];
      [v7 setRecoveryKey:v9];
      MEMORY[0x1E69E5920](v7);
    }
  }

  v6 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end