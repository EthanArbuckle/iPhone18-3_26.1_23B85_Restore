@interface AKBiometricRatchetController
- (AKBiometricRatchetController)init;
- (BOOL)isDTOEnabled;
- (id)currentRachetState;
- (void)armWithContext:(id)a3 completion:(id)a4;
- (void)cancelWithReason:(id)a3 completion:(id)a4;
- (void)isCriticalEditAllowedForAltDSID:(id)a3 completion:(id)a4;
- (void)stateWithCompletion:(id)a3;
@end

@implementation AKBiometricRatchetController

- (AKBiometricRatchetController)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKBiometricRatchetController;
  v6 = [(AKBiometricRatchetController *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    v6->_dtoLock._os_unfair_lock_opaque = 0;
  }

  v3 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)stateWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc(MEMORY[0x1E696EE68]);
  v4 = +[AKBiometricRatchetUtility ratchetIdentifier];
  v12 = [v3 initWithIdentifier:?];
  MEMORY[0x1E69E5920](v4);
  v5 = v12;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __52__AKBiometricRatchetController_stateWithCompletion___block_invoke;
  v10 = &unk_1E73D8740;
  v11 = MEMORY[0x1E69E5928](location[0]);
  [v5 stateWithCompletion:&v6];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __52__AKBiometricRatchetController_stateWithCompletion___block_invoke(NSObject *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  oslog[1] = a1;
  if (v8)
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v10, v8);
      _os_log_error_impl(&dword_193225000, oslog[0], type, "Ratchet stateWithCompletion failed with error: %@", v10, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    if (a1[4].isa)
    {
      (*(a1[4].isa + 2))();
    }
  }

  else
  {
    v5 = [AKBiometricRatchetUtility stateFromLARatchetState:location[0]];
    if (a1[4].isa)
    {
      (*(a1[4].isa + 2))();
    }

    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)armWithContext:(id)a3 completion:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  objc_storeStrong(&v20->_context, location[0]);
  context = v20->_context;
  if (objc_opt_respondsToSelector())
  {
    v14 = _AKLogSystem();
    v13 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v5 = v14;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_debug_impl(&dword_193225000, v5, type, "Presenting Ratchet UI", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    [(AKBiometricRatchetContext *)v20->_context presentRatchetUIWithCompletion:v18];
  }

  else
  {
    v17 = _AKLogSystem();
    v16 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      log = v17;
      v10 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_193225000, log, v10, "Ratchet UI context doesn't respond to presentBiometricRatchetArmingUIWithCompletion", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v7 = v18;
    v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
    v7[2](v7, 0);
    MEMORY[0x1E69E5920](v8);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelWithReason:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v4 = objc_alloc(MEMORY[0x1E696EE68]);
  v5 = +[AKBiometricRatchetUtility ratchetIdentifier];
  v15 = [v4 initWithIdentifier:?];
  MEMORY[0x1E69E5920](v5);
  v7 = v15;
  v6 = location[0];
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __60__AKBiometricRatchetController_cancelWithReason_completion___block_invoke;
  v13 = &unk_1E73D3510;
  v14 = MEMORY[0x1E69E5928](v16);
  [v7 cancelWithReason:v6 completion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __60__AKBiometricRatchetController_cancelWithReason_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

- (BOOL)isDTOEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = self;
  v12 = a2;
  os_unfair_lock_lock(&self->_dtoLock);
  v4 = [MEMORY[0x1E696EE78] sharedInstance];
  v9 = 0;
  v7 = 0;
  v5 = 0;
  if ([v4 isFeatureSupported])
  {
    v10 = [MEMORY[0x1E696EE78] sharedInstance];
    v9 = 1;
    v5 = 0;
    if ([v10 isFeatureAvailable])
    {
      v8 = [MEMORY[0x1E696EE78] sharedInstance];
      v7 = 1;
      v5 = [v8 isFeatureEnabled];
    }
  }

  if (v7)
  {
    MEMORY[0x1E69E5920](v8);
  }

  if (v9)
  {
    MEMORY[0x1E69E5920](v10);
  }

  MEMORY[0x1E69E5920](v4);
  v11 = v5 & 1;
  os_unfair_lock_unlock(&v13->_dtoLock);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    if (v11)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    __os_log_helper_16_2_1_8_64(v14, v2);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "dtoEnabled: %@", v14, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  *MEMORY[0x1E69E9840];
  return v11 & 1;
}

- (void)isCriticalEditAllowedForAltDSID:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = objc_alloc_init(AKAppleIDAuthenticationController);
  v6 = v14;
  v5 = location[0];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __75__AKBiometricRatchetController_isCriticalEditAllowedForAltDSID_completion___block_invoke;
  v11 = &unk_1E73D3A98;
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = MEMORY[0x1E69E5928](v15);
  [(AKAppleIDAuthenticationController *)v6 getUserInformationForAltDSID:v5 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __75__AKBiometricRatchetController_isCriticalEditAllowedForAltDSID_completion___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  if (v15)
  {
    v14[0] = _AKLogSystem();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v18, a1[4], v15);
      _os_log_error_impl(&dword_193225000, v14[0], v13, "Failed to fetch user info for altDSID (%@) with error (%@)", v18, 0x16u);
    }

    objc_storeStrong(v14, 0);
    if (a1[5])
    {
      (*(a1[5] + 16))();
    }
  }

  else
  {
    v3 = [location[0] criticalAccountEditsAllowed];
    v4 = [v3 BOOLValue];
    MEMORY[0x1E69E5920](v3);
    v12 = v4;
    v5 = +[AKConfiguration sharedConfiguration];
    v6 = [v5 criticalAccountEditsAllowedOverride];
    MEMORY[0x1E69E5920](v5);
    v11 = v6;
    v10 = AKConfigApplyOverride(v6, v4 & 1);
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v17, v10 & 1);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "criticalAccountEditsAllowed finalValue: %d", v17, 8u);
    }

    objc_storeStrong(&oslog, 0);
    if (a1[5])
    {
      (*(a1[5] + 16))();
    }
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)currentRachetState
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = self;
  v33 = a2;
  v32 = 0uLL;
  v12 = _AKSignpostLogSystem();
  *&v31 = _AKSignpostCreate(v12);
  *(&v31 + 1) = v2;
  MEMORY[0x1E69E5920](v12);
  location = _AKSignpostLogSystem();
  v29 = 1;
  v28 = v31;
  if (v31 && v28 != -1 && os_signpost_enabled(location))
  {
    log = location;
    type = v29;
    spid = v28;
    __os_log_helper_16_0_0(v27);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "RatchetFetchState", " enableTelemetry=YES ", v27, 2u);
  }

  objc_storeStrong(&location, 0);
  v26 = _AKSignpostLogSystem();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v38, v31);
    _os_log_impl(&dword_193225000, v26, v25, "BEGIN [%lld]: RatchetFetchState  enableTelemetry=YES ", v38, 0xCu);
  }

  objc_storeStrong(&v26, 0);
  v32 = v31;
  v8 = [MEMORY[0x1E696EE78] sharedInstance];
  v24 = [v8 ratchetState];
  MEMORY[0x1E69E5920](v8);
  v23 = _AKSignpostGetNanoseconds(v32, *(&v32 + 1)) / 1000000000.0;
  v22 = _AKSignpostLogSystem();
  v21 = 2;
  v20 = v32;
  if (v32 && v20 != -1 && os_signpost_enabled(v22))
  {
    v5 = v22;
    v6 = v21;
    v7 = v20;
    __os_log_helper_16_0_0(v19);
    _os_signpost_emit_with_name_impl(&dword_193225000, v5, v6, v7, "RatchetFetchState", "", v19, 2u);
  }

  objc_storeStrong(&v22, 0);
  oslog = _AKSignpostLogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v37, v32, *&v23);
    _os_log_impl(&dword_193225000, oslog, v17, "END [%lld] %fs:RatchetFetchState ", v37, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v36, [v24 rawValue]);
    _os_log_debug_impl(&dword_193225000, v16, v15, "LARatchet state: %lu", v36, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  v14 = [AKBiometricRatchetUtility stateFromLARatchetState:v24];
  v13 = _AKLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v35, [v14 rawState]);
    _os_log_debug_impl(&dword_193225000, v13, OS_LOG_TYPE_DEBUG, "Ratchet state: %lu", v35, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  v4 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v24, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

@end