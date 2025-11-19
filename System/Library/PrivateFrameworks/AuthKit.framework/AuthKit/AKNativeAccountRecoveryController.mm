@interface AKNativeAccountRecoveryController
+ (BOOL)shouldSendServerResponseForRecoveredInfo:(id)a3 withRecoveryError:(id)a4;
+ (id)postBodyForiCSCServerUIResponseWithContext:(id)a3 recoveryError:(id)a4;
+ (id)requestForRecoveryCompletionWithContext:(id)a3 recoveredInfo:(id)a4 recoveryError:(id)a5;
- (AKNativeAccountRecoveryController)initWithContext:(id)a3 uiProvider:(id)a4;
- (AKNativeAccountRecoveryController)initWithContext:(id)a3 uiProvider:(id)a4 flowID:(id)a5;
- (id)_mapICSCRecoveryResultsToAuthKit:(id)a3;
- (void)cdpContext:(id)a3 performSilentRecoveryTokenRenewal:(id)a4;
- (void)cdpContext:(id)a3 verifyMasterKey:(id)a4 completion:(id)a5;
- (void)dismissNativeRecoveryUIWithCompletion:(id)a3;
- (void)presentNativeRecoveryUIWithCompletion:(id)a3;
@end

@implementation AKNativeAccountRecoveryController

- (AKNativeAccountRecoveryController)initWithContext:(id)a3 uiProvider:(id)a4 flowID:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v5 = v21;
  v21 = 0;
  v17.receiver = v5;
  v17.super_class = AKNativeAccountRecoveryController;
  v15 = [(AKNativeAccountRecoveryController *)&v17 init];
  v21 = v15;
  objc_storeStrong(&v21, v15);
  if (v15)
  {
    objc_storeStrong(&v21->_recoveryContext, location[0]);
    if (v18)
    {
      v16 = _AKLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v10 = v21;
        v12 = [(AKAccountRecoveryContext *)v21->_recoveryContext authContext];
        v11 = [(AKAppleIDAuthenticationContext *)v12 telemetryFlowID];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v22, v10, v11, v18);
        _os_log_debug_impl(&dword_193225000, v16, OS_LOG_TYPE_DEBUG, "%@: Overriding the telemetryFlowID: from recoveryContext.authContext.telemetryFlowID=%@ to flowID=%@", v22, 0x20u);
        MEMORY[0x1E69E5920](v11);
        MEMORY[0x1E69E5920](v12);
      }

      objc_storeStrong(&v16, 0);
      v8 = v18;
      v9 = [(AKAccountRecoveryContext *)v21->_recoveryContext authContext];
      [(AKAppleIDAuthenticationContext *)v9 setTelemetryFlowID:v8];
      MEMORY[0x1E69E5920](v9);
    }

    objc_storeStrong(&v21->_cdpUiProvider, v19);
  }

  v7 = MEMORY[0x1E69E5928](v21);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  *MEMORY[0x1E69E9840];
  return v7;
}

- (AKNativeAccountRecoveryController)initWithContext:(id)a3 uiProvider:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(AKNativeAccountRecoveryController *)v4 initWithContext:location[0] uiProvider:v8 flowID:0];
  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (void)presentNativeRecoveryUIWithCompletion:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = _AKLogSystem();
  v21 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(AKAccountRecoveryContext *)v24->_recoveryContext authContext];
    v10 = [(AKAppleIDAuthenticationContext *)v11 username];
    v9 = [(AKAccountRecoveryContext *)v24->_recoveryContext authContext];
    v8 = [(AKAppleIDAuthenticationContext *)v9 DSID];
    __os_log_helper_16_2_4_8_112_8_64_8_112_8_64(v26, 1752392040, v10, 1752392040, v8);
    _os_log_debug_impl(&dword_193225000, v22, v21, "Starting retrieval of recovery info for appleId <%{mask.hash}@ : %{mask.hash}@>", v26, 0x2Au);
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
  }

  objc_storeStrong(&v22, 0);
  v3 = [AKCDPFactory recoveryControllerWithContext:v24->_recoveryContext];
  recoveryController = v24->_recoveryController;
  v24->_recoveryController = v3;
  MEMORY[0x1E69E5920](recoveryController);
  [(CDPRecoveryController *)v24->_recoveryController setAuthProvider:v24];
  [(CDPRecoveryController *)v24->_recoveryController setUiProvider:v24->_cdpUiProvider];
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v25, v24->_recoveryController);
    _os_log_debug_impl(&dword_193225000, v20, v19, "Starting recovery using %@...", v25, 0xCu);
  }

  objc_storeStrong(&v20, 0);
  if (v24->_recoveryController)
  {
    v7 = v24->_recoveryController;
    v12 = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __75__AKNativeAccountRecoveryController_presentNativeRecoveryUIWithCompletion___block_invoke;
    v16 = &unk_1E73D4BA0;
    v17 = MEMORY[0x1E69E5928](v24);
    v18 = MEMORY[0x1E69E5928](location[0]);
    [(CDPRecoveryController *)v7 performRecovery:&v12];
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  else if (location[0])
  {
    v5 = location[0];
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7001];
    v5[2](v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKNativeAccountRecoveryController_presentNativeRecoveryUIWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (v13)
  {
    v12[0] = _AKLogSystem();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v15, v13);
      _os_log_error_impl(&dword_193225000, v12[0], v11, "Failed to retrieve recovery info with error. %@", v15, 0xCu);
    }

    objc_storeStrong(v12, 0);
    v10 = 0;
    v5 = [*(*(a1 + 32) + 8) context];
    v6 = 0;
    if (![v5 mandatesRecoveryKey])
    {
      v6 = [v13 cdp_isCDPErrorWithCode:-5215];
    }

    MEMORY[0x1E69E5920](v5);
    if (v6)
    {
      v3 = [AKNativeAccountRecoveryController postBodyForiCSCServerUIResponseWithContext:*(*(a1 + 32) + 16) recoveryError:v13];
      v4 = v10;
      v10 = v3;
      MEMORY[0x1E69E5920](v4);
    }

    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    objc_storeStrong(&v10, 0);
  }

  else if ([*(*(a1 + 32) + 16) supportsMasterKeyRecovery])
  {
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v9 = [*(a1 + 32) _mapICSCRecoveryResultsToAuthKit:location[0]];
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)dismissNativeRecoveryUIWithCompletion:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_recoveryContext, 0);
  [(CDPRecoveryController *)v4->_recoveryController invalidate];
  objc_storeStrong(&v4->_recoveryController, 0);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 1, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)cdpContext:(id)a3 performSilentRecoveryTokenRenewal:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = objc_alloc_init(AKAppleIDAuthenticationController);
  v6 = v14;
  recoveryContext = v17->_recoveryContext;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __82__AKNativeAccountRecoveryController_cdpContext_performSilentRecoveryTokenRenewal___block_invoke;
  v11 = &unk_1E73D4BA0;
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = MEMORY[0x1E69E5928](v15);
  [(AKAppleIDAuthenticationController *)v6 renewRecoveryTokenWithContext:recoveryContext completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __82__AKNativeAccountRecoveryController_cdpContext_performSilentRecoveryTokenRenewal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  v7[0] = [*(a1 + 32) copy];
  if (!v8)
  {
    v3 = [location[0] objectForKeyedSubscript:@"AKPassword"];
    [v7[0] setPasswordEquivToken:?];
    MEMORY[0x1E69E5920](v3);
  }

  v6 = _AKLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v10, v7[0]);
    _os_log_debug_impl(&dword_193225000, v6, OS_LOG_TYPE_DEBUG, "Recovered data for context: %@", v10, 0xCu);
  }

  objc_storeStrong(&v6, 0);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)cdpContext:(id)a3 verifyMasterKey:(id)a4 completion:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = objc_alloc_init(AKAppleIDAuthenticationController);
  [(AKAppleIDAuthenticationController *)v7 verifyMasterKey:v9 context:v11->_recoveryContext completion:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)_mapICSCRecoveryResultsToAuthKit:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v9 = location[0];
  v10 = +[AKCDPFactory cdpIDMSRecordPRKKey];
  v20 = [v9 objectForKeyedSubscript:?];
  MEMORY[0x1E69E5920](v10);
  v11 = location[0];
  v12 = +[AKCDPFactory cdpIDMSRecordMIDKey];
  v19 = [v11 objectForKeyedSubscript:?];
  MEMORY[0x1E69E5920](v12);
  if (v20)
  {
    [v21 setObject:v20 forKeyedSubscript:@"X-Apple-I-iCSC-PRK"];
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
      _os_log_debug_impl(&dword_193225000, log, type, "Escrowed recovery info missing PRK", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
  }

  if (v19)
  {
    [v21 setObject:v19 forKeyedSubscript:@"X-Apple-I-iCSC-MD-M"];
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = 2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v5 = v15;
      v6 = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_debug_impl(&dword_193225000, v5, v6, "Escrowed recovery info missing MID", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
  }

  v4 = [v21 copy];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)requestForRecoveryCompletionWithContext:(id)a3 recoveredInfo:(id)a4 recoveryError:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v43 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v39 = _AKLogSystem();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    log = v39;
    type = v38;
    __os_log_helper_16_0_0(v37);
    _os_log_impl(&dword_193225000, log, type, "Building recovery response request", v37, 2u);
  }

  objc_storeStrong(&v39, 0);
  v36 = _AKLogSystem();
  v35 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v47, v41);
    _os_log_impl(&dword_193225000, v36, v35, "Recovered info %@", v47, 0xCu);
  }

  objc_storeStrong(&v36, 0);
  v34 = [location[0] recoveryContinuationURL];
  if (v34)
  {
    v33 = [MEMORY[0x1E695AC18] requestWithURL:v34];
    [v33 setHTTPMethod:@"POST"];
    v32 = [location[0] decodedRecoveryIdentityTokenString];
    if (v32)
    {
      v12 = [location[0] authContext];
      v11 = [v12 altDSID];
      [v33 ak_addICSCRecoveryHeaderWithIdentityToken:v32 forAltDSID:?];
      MEMORY[0x1E69E5920](v11);
      MEMORY[0x1E69E5920](v12);
      v8 = v41;
      v21 = MEMORY[0x1E69E9820];
      v22 = -1073741824;
      v23 = 0;
      v24 = __105__AKNativeAccountRecoveryController_requestForRecoveryCompletionWithContext_recoveredInfo_recoveryError___block_invoke;
      v25 = &unk_1E73D4BC8;
      v26 = MEMORY[0x1E69E5928](v33);
      v27 = MEMORY[0x1E69E5928](location[0]);
      [v8 enumerateKeysAndObjectsUsingBlock:&v21];
      v20 = [v43 postBodyForiCSCServerUIResponseWithContext:location[0] recoveryError:v40];
      [v33 ak_setBodyWithParameters:v20];
      oslog = _AKLogSystem();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v33 allHTTPHeaderFields];
        __os_log_helper_16_2_1_8_64(v46, v7);
        _os_log_impl(&dword_193225000, oslog, v18, "Recovery response: %@", v46, 0xCu);
        MEMORY[0x1E69E5920](v7);
      }

      objc_storeStrong(&oslog, 0);
      v17 = _AKLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v45, v20);
        _os_log_impl(&dword_193225000, v17, OS_LOG_TYPE_DEFAULT, "Recovery response body: %@", v45, 0xCu);
      }

      objc_storeStrong(&v17, 0);
      v44 = MEMORY[0x1E69E5928](v33);
      v28 = 1;
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v26, 0);
    }

    else
    {
      v31 = _AKLogSystem();
      v30 = 16;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v9 = v31;
        v10 = v30;
        __os_log_helper_16_0_0(v29);
        _os_log_error_impl(&dword_193225000, v9, v10, "Failed to unwrap the icsc recovery identity token.", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
      v44 = 0;
      v28 = 1;
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v44 = 0;
    v28 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v5 = v44;

  return v5;
}

void __105__AKNativeAccountRecoveryController_requestForRecoveryCompletionWithContext_recoveredInfo_recoveryError___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24[2] = a4;
  v24[1] = a1;
  v24[0] = 0;
  v23 = 0;
  v22 = 0;
  if ([location[0] isEqualToString:@"X-Apple-Recovery-Identity-Token"])
  {
    v13 = a1[4];
    v12 = v25;
    v15 = [a1[5] authContext];
    v14 = [v15 altDSID];
    [v13 ak_addRecoveryHeaderWithIdentityToken:v12 forAltDSID:?];
    MEMORY[0x1E69E5920](v14);
    MEMORY[0x1E69E5920](v15);
    goto LABEL_13;
  }

  if ([location[0] isEqualToString:@"X-Apple-I-iCSC-PRK"])
  {
    v21 = [v25 dataUsingEncoding:4];
    v20 = [v21 base64EncodedStringWithOptions:0];
    objc_storeStrong(v24, v20);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
LABEL_12:
    [a1[4] setValue:v24[0] forHTTPHeaderField:location[0]];
    goto LABEL_13;
  }

  v4 = objc_opt_class();
  v11 = _AKSafeCast_3(v4, v25);
  v5 = v23;
  v23 = v11;
  MEMORY[0x1E69E5920](v5);
  if (v11)
  {
    objc_storeStrong(v24, v23);
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v10 = _AKSafeCast_3(v6, v25);
  v7 = v22;
  v22 = v10;
  MEMORY[0x1E69E5920](v7);
  if (v10)
  {
    v8 = [v22 stringValue];
    v9 = v24[0];
    v24[0] = v8;
    MEMORY[0x1E69E5920](v9);
    goto LABEL_12;
  }

  v19 = _AKLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    __os_log_helper_16_2_1_8_64(v27, v25);
    _os_log_fault_impl(&dword_193225000, v19, OS_LOG_TYPE_FAULT, "Unexpected recoveredValue: %@", v27, 0xCu);
  }

  objc_storeStrong(&v19, 0);
LABEL_13:
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

+ (id)postBodyForiCSCServerUIResponseWithContext:(id)a3 recoveryError:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v21;
    v15 = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_impl(&dword_193225000, v14, v15, "Building recovery response body", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v13 = [location[0] authContext];
  v17 = [v13 username];
  MEMORY[0x1E69E5920](v13);
  if (v17)
  {
    [v18 setObject:v17 forKeyedSubscript:@"appleid"];
  }

  if (v22)
  {
    [v18 setObject:@"failure" forKeyedSubscript:@"status"];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "code")}];
    [v18 setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v9);
    v11 = [v22 domain];
    v10 = +[AKCDPFactory cdpErrorDomain];
    v12 = [v11 isEqualToString:?];
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
    if (v12)
    {
      v8 = [v22 code];
      switch(v8)
      {
        case -5215:
          [v18 setObject:@"cancel" forKeyedSubscript:@"action"];
          break;
        case -5207:
          [v18 setObject:@"start_account_recovery" forKeyedSubscript:@"action"];
          break;
        case -5200:
          [v18 setObject:@"try_again" forKeyedSubscript:@"action"];
          break;
      }
    }

    v7 = [v22 localizedFailureReason];
    MEMORY[0x1E69E5920](v7);
    if (v7)
    {
      v6 = [v22 localizedFailureReason];
      [v18 setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v6);
    }
  }

  else
  {
    [v18 setObject:@"success" forKeyedSubscript:@"status"];
  }

  v5 = [v18 copy];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v5;
}

+ (BOOL)shouldSendServerResponseForRecoveredInfo:(id)a3 withRecoveryError:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = _AKLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v14, v11);
    _os_log_impl(&dword_193225000, v10, OS_LOG_TYPE_DEFAULT, "shouldSendServerResponseForRecoveredInfo: Recovery error: %@", v14, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  if (v11)
  {
    v6 = [v11 domain];
    v7 = +[AKCDPFactory cdpErrorDomain];
    v8 = 0;
    if ([v6 isEqualToString:?])
    {
      v5 = 1;
      if ([v11 code] != -5200)
      {
        v5 = 1;
        if ([v11 code] != -5207)
        {
          v5 = [v11 code] == -5215;
        }
      }

      v8 = v5;
    }

    v13 = v8;
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

@end