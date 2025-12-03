@interface AKAppleIDAuthenticationContextManager
- (AKAppleIDAuthenticationContextManager)initWithAuthenticationController:(id)controller;
- (AKAppleIDAuthenticationDelegate)delegate;
- (id)_clientSideContextForServerContext:(id)context;
- (id)registerContext:(id)context;
- (void)activateProximitySession:(id)session context:(id)context completion:(id)completion;
- (void)dismissBasicLoginUIForContext:(id)context completion:(id)completion;
- (void)dismissKeepUsingUIForContext:(id)context withCompletion:(id)completion;
- (void)dismissNativeRecoveryUIForContext:(id)context completion:(id)completion;
- (void)dismissProximityPairingUIForContext:(id)context completion:(id)completion;
- (void)dismissSecondFactorUIForContext:(id)context completion:(id)completion;
- (void)dismissServerProvidedUIForContext:(id)context completion:(id)completion;
- (void)eraseAnisetteForContext:(id)context withCompletion:(id)completion;
- (void)fetchAnisetteDataForContext:(id)context provisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)fetchPeerAttestationDataForContext:(id)context withRequest:(id)request completion:(id)completion;
- (void)launchOutOfProcessAuthentication:(id)authentication surrogateID:(id)d withErrorHandler:(id)handler;
- (void)legacyAnisetteDataForContext:(id)context DSID:(id)d withCompletion:(id)completion;
- (void)presentBasicLoginUIForContext:(id)context completion:(id)completion;
- (void)presentBiometricOrPasscodeValidationForContext:(id)context completion:(id)completion;
- (void)presentFidoAuthForContext:(id)context fidoContext:(id)fidoContext completion:(id)completion;
- (void)presentKeepUsingUIForContext:(id)context appleID:(id)d completion:(id)completion;
- (void)presentLoginAlertForContext:(id)context withError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentNativeRecoveryUIForContext:(id)context recoveryContext:(id)recoveryContext completion:(id)completion;
- (void)presentProximityBroadcastUIForContext:(id)context completion:(id)completion;
- (void)presentProximityPairingUIForContext:(id)context verificationCode:(id)code completion:(id)completion;
- (void)presentProximityPinCodeUIForContext:(id)context completion:(id)completion;
- (void)presentSecondFactorAlertForContext:(id)context withError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentSecondFactorUIForContext:(id)context completion:(id)completion;
- (void)presentServerProvidedUIForContext:(id)context withConfiguration:(id)configuration completion:(id)completion;
- (void)provisionAnisetteForContext:(id)context withCompletion:(id)completion;
- (void)shouldContinueWithAuthenticationResults:(id)results error:(id)error forContextID:(id)d completion:(id)completion;
- (void)showProximityErrorForContext:(id)context completion:(id)completion;
- (void)syncAnisetteForContext:(id)context withSIMData:(id)data completion:(id)completion;
- (void)unregisterContext:(id)context;
@end

@implementation AKAppleIDAuthenticationContextManager

- (AKAppleIDAuthenticationContextManager)initWithAuthenticationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = AKAppleIDAuthenticationContextManager;
  selfCopy = [(AKAppleIDAuthenticationContextManager *)&v11 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    authContextsByUUID = selfCopy->_authContextsByUUID;
    selfCopy->_authContextsByUUID = v4;
    MEMORY[0x1E69E5920](authContextsByUUID);
    objc_storeWeak(&selfCopy->_authController, location[0]);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("AKContextManagerQueue", v10);
    authContextsQueue = selfCopy->_authContextsQueue;
    selfCopy->_authContextsQueue = v6;
    MEMORY[0x1E69E5920](authContextsQueue);
    MEMORY[0x1E69E5920](v10);
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)registerContext:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  aClass = objc_opt_class();
  v38 = NSStringFromClass(aClass);
  if ([v38 hasPrefix:@"AK"])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 838860800;
    v30 = 48;
    v31 = __Block_byref_object_copy__3;
    v32 = __Block_byref_object_dispose__3;
    v33 = 0;
    queue = selfCopy->_authContextsQueue;
    v20 = MEMORY[0x1E69E9820];
    v21 = -1073741824;
    v22 = 0;
    v23 = __57__AKAppleIDAuthenticationContextManager_registerContext___block_invoke;
    v24 = &unk_1E73D4878;
    v26[1] = &v27;
    v25 = MEMORY[0x1E69E5928](selfCopy);
    v26[0] = MEMORY[0x1E69E5928](location[0]);
    dispatch_barrier_sync(queue, &v20);
    if (v28[5])
    {
      v19 = _AKLogSystem();
      v18 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        _identifier = [location[0] _identifier];
        __os_log_helper_16_2_1_8_64(v42, _identifier);
        _os_log_error_impl(&dword_193225000, v19, v18, "Context ID %@ has already been registered for authentication!", v42, 0xCu);
        MEMORY[0x1E69E5920](_identifier);
      }

      objc_storeStrong(&v19, 0);
      v41 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7086];
      v34 = 1;
    }

    else
    {
      authContextsQueue = selfCopy->_authContextsQueue;
      v11 = MEMORY[0x1E69E9820];
      v12 = -1073741824;
      v13 = 0;
      v14 = __57__AKAppleIDAuthenticationContextManager_registerContext___block_invoke_22;
      v15 = &unk_1E73D4080;
      v16 = MEMORY[0x1E69E5928](selfCopy);
      v17 = MEMORY[0x1E69E5928](location[0]);
      dispatch_barrier_async(authContextsQueue, &v11);
      v41 = 0;
      v34 = 1;
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(v26, 0);
    objc_storeStrong(&v25, 0);
    _Block_object_dispose(&v27, 8);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v37 = _AKLogSystem();
    v36 = 16;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      log = v37;
      type = v36;
      __os_log_helper_16_0_0(v35);
      _os_log_error_impl(&dword_193225000, log, type, "Bad client! You are not supposed to provide your own implementation of AKAppleIDAuthenticationUIProvider!", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
    v41 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7085];
    v34 = 1;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v41;

  return v3;
}

uint64_t __57__AKAppleIDAuthenticationContextManager_registerContext___block_invoke(uint64_t a1)
{
  v5 = *(*(a1 + 32) + 8);
  v7 = [*(a1 + 40) _identifier];
  v1 = [v5 objectForKey:?];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](v7);
}

uint64_t __57__AKAppleIDAuthenticationContextManager_registerContext___block_invoke_22(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 40);
  v4 = [v2 _identifier];
  [v3 setObject:v2 forKey:?];
  return MEMORY[0x1E69E5920](v4);
}

- (void)unregisterContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  _identifier = [location[0] _identifier];
  queue = selfCopy->_authContextsQueue;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59__AKAppleIDAuthenticationContextManager_unregisterContext___block_invoke;
  v8 = &unk_1E73D4080;
  v9 = MEMORY[0x1E69E5928](_identifier);
  v10 = MEMORY[0x1E69E5928](selfCopy);
  dispatch_barrier_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&_identifier, 0);
  objc_storeStrong(location, 0);
}

void __59__AKAppleIDAuthenticationContextManager_unregisterContext___block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (a1[4])
  {
    [*(a1[5] + 8) removeObjectForKey:a1[4]];
  }

  else
  {
    location[0] = _AKLogSystem();
    v4 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      type = v4;
      __os_log_helper_16_0_0(v3);
      _os_log_error_impl(&dword_193225000, log, type, "Missing context identifier, how did we get here?", v3, 2u);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)shouldContinueWithAuthenticationResults:(id)results error:(id)error forContextID:(id)d completion:(id)completion
{
  v92 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v85 = 0;
  objc_storeStrong(&v85, error);
  v84 = 0;
  objc_storeStrong(&v84, d);
  v83 = 0;
  objc_storeStrong(&v83, completion);
  v81 = _os_activity_create(&dword_193225000, "authkit/should-continue", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v82 = v81;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v81, &state);
  v73 = 0;
  v74 = &v73;
  v75 = 838860800;
  v76 = 48;
  v77 = __Block_byref_object_copy__3;
  v78 = __Block_byref_object_dispose__3;
  v79 = 0;
  queue = selfCopy->_authContextsQueue;
  v66 = MEMORY[0x1E69E9820];
  v67 = -1073741824;
  v68 = 0;
  v69 = __111__AKAppleIDAuthenticationContextManager_shouldContinueWithAuthenticationResults_error_forContextID_completion___block_invoke;
  v70 = &unk_1E73D4878;
  v72[1] = &v73;
  v71 = MEMORY[0x1E69E5928](selfCopy);
  v72[0] = MEMORY[0x1E69E5928](v84);
  dispatch_sync(queue, &v66);
  if (v74[5])
  {
    v62 = 0uLL;
    v19 = _AKSignpostLogSystem();
    *&v20 = _AKSignpostCreate(v19);
    *(&v20 + 1) = v6;
    v61 = v20;
    MEMORY[0x1E69E5920](v19);
    v60 = _AKSignpostLogSystem();
    v59 = OS_SIGNPOST_INTERVAL_BEGIN;
    v58 = v20;
    if (v20 && v58 != -1 && os_signpost_enabled(v60))
    {
      __os_log_helper_16_0_1_4_2(v90, [v85 code]);
      _os_signpost_emit_with_name_impl(&dword_193225000, v60, v59, v58, "ShouldContinueWithResults", " Error=%{public,signpost.telemetry:number1,name=Error}d  enableTelemetry=YES ", v90, 8u);
    }

    objc_storeStrong(&v60, 0);
    v57 = _AKSignpostLogSystem();
    v56 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_4_2(v89, v61, [v85 code]);
      _os_log_impl(&dword_193225000, v57, v56, "BEGIN [%lld]: ShouldContinueWithResults  Error=%{public,signpost.telemetry:number1,name=Error}d  enableTelemetry=YES ", v89, 0x12u);
    }

    objc_storeStrong(&v57, 0);
    v62 = v61;
    v48 = MEMORY[0x1E69E9820];
    v49 = -1073741824;
    v50 = 0;
    v51 = __111__AKAppleIDAuthenticationContextManager_shouldContinueWithAuthenticationResults_error_forContextID_completion___block_invoke_23;
    v52 = &unk_1E73D48A0;
    v54 = v61;
    v53 = MEMORY[0x1E69E5928](v83);
    v55 = MEMORY[0x193B165F0](&v48);
    delegate = [(AKAppleIDAuthenticationContextManager *)selfCopy delegate];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_authController);
    if (objc_opt_respondsToSelector())
    {
      v45 = _AKLogSystem();
      v44 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v45;
        v18 = v44;
        __os_log_helper_16_0_0(v43);
        _os_log_impl(&dword_193225000, v17, v18, "Calling delegate...", v43, 2u);
      }

      objc_storeStrong(&v45, 0);
      v42 = [location[0] mutableCopy];
      v41 = [delegate authenticationController:WeakRetained shouldContinueWithAuthenticationResults:v42 error:v85 forContext:v74[5]];
      v40 = _AKLogSystem();
      v39 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        if (v41)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        __os_log_helper_16_2_1_8_64(v88, v7);
        _os_log_impl(&dword_193225000, v40, v39, "Delegate says to continue? %@", v88, 0xCu);
      }

      objc_storeStrong(&v40, 0);
      (*(v55 + 2))(v55, v41 & 1, v42);
      objc_storeStrong(&v42, 0);
    }

    else if (objc_opt_respondsToSelector())
    {
      v38 = _AKLogSystem();
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v38;
        v16 = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_impl(&dword_193225000, v15, v16, "Calling delegate...", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      v35 = [location[0] mutableCopy];
      v14 = delegate;
      v10 = WeakRetained;
      v11 = v35;
      v12 = v85;
      v13 = v74[5];
      v28 = MEMORY[0x1E69E9820];
      v29 = -1073741824;
      v30 = 0;
      v31 = __111__AKAppleIDAuthenticationContextManager_shouldContinueWithAuthenticationResults_error_forContextID_completion___block_invoke_35;
      v32 = &unk_1E73D48C8;
      v34 = MEMORY[0x1E69E5928](v55);
      v33 = MEMORY[0x1E69E5928](v35);
      [v14 authenticationController:v10 shouldContinueWithAuthenticationResults:v11 error:v12 forContext:v13 completion:&v28];
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    else
    {
      v27 = _AKLogSystem();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v27;
        v9 = v26;
        __os_log_helper_16_0_0(v25);
        _os_log_impl(&dword_193225000, v8, v9, "No delegate available.", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
      (*(v55 + 2))();
    }

    objc_storeStrong(&WeakRetained, 0);
    objc_storeStrong(&delegate, 0);
    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v53, 0);
    v63 = 0;
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v91, v84);
      _os_log_error_impl(&dword_193225000, oslog, type, "Client has no knowledge of context ID: %@", v91, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(v83 + 2))(v83, 0, location[0]);
    v63 = 1;
  }

  objc_storeStrong(v72, 0);
  objc_storeStrong(&v71, 0);
  _Block_object_dispose(&v73, 8);
  objc_storeStrong(&v79, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __111__AKAppleIDAuthenticationContextManager_shouldContinueWithAuthenticationResults_error_forContextID_completion___block_invoke(void *a1)
{
  v1 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  return MEMORY[0x1E69E5920](v3);
}

void __111__AKAppleIDAuthenticationContextManager_shouldContinueWithAuthenticationResults_error_forContextID_completion___block_invoke_23(void *a1, char a2, id obj)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9 = a1;
  v8 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v7 = _AKSignpostLogSystem();
  v6 = OS_SIGNPOST_INTERVAL_END;
  v5 = a1[5];
  if (v5 && v5 != -1 && os_signpost_enabled(v7))
  {
    __os_log_helper_16_0_1_4_2(v14, v11 & 1);
    _os_signpost_emit_with_name_impl(&dword_193225000, v7, v6, v5, "ShouldContinueWithResults", " ShouldContinue=%{public,signpost.telemetry:number2,name=ShouldContinue}d ", v14, 8u);
  }

  objc_storeStrong(&v7, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v13, a1[5], *&v8, v11 & 1);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:ShouldContinueWithResults  ShouldContinue=%{public,signpost.telemetry:number2,name=ShouldContinue}d ", v13, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __111__AKAppleIDAuthenticationContextManager_shouldContinueWithAuthenticationResults_error_forContextID_completion___block_invoke_35(NSObject *a1, char a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    __os_log_helper_16_2_1_8_64(v9, v2);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Delegate says to continue? %@", v9, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  isa = a1[4].isa;
  result = (*(a1[5].isa + 2))();
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)presentKeepUsingUIForContext:(id)context appleID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v28 = 0;
  objc_storeStrong(&v28, d);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v26 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v26)
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = _AKLogSystem();
      v18 = 2;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v5 = v19;
        v6 = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_debug_impl(&dword_193225000, v5, v6, "Presenting keep using UI.", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      [v26 presentKeepUsingUIForAppleID:v28 completion:v27];
    }

    else
    {
      v22 = _AKLogSystem();
      v21 = 2;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v9 = v22;
        v10 = v21;
        __os_log_helper_16_0_0(v20);
        _os_log_debug_impl(&dword_193225000, v9, v10, "Client context missing presentKeepUsingUIForAppleID", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      v7 = v27;
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
      v7[2](v7, 0);
      MEMORY[0x1E69E5920](v8);
    }
  }

  else
  {
    v25 = _AKLogSystem();
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_error_impl(&dword_193225000, log, type, "AKAppleIDAuthenticationContextManager failed to presentKeepUsingUIForContext. The client context is missing from the auth context.", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v11 = v27;
    v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v11[2](v11, 0);
    MEMORY[0x1E69E5920](v12);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissKeepUsingUIForContext:(id)context withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v9 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      [v9 dismissKeepUsingUIWithCompletion:v10];
    }

    else
    {
      v4 = v10;
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
      v4[2](v4, 1);
      MEMORY[0x1E69E5920](v5);
    }
  }

  else
  {
    v6 = v10;
    v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v6[2](v6, 0);
    MEMORY[0x1E69E5920](v7);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)presentBasicLoginUIForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v14)
  {
    if ([location[0] conformsToProtocol:&unk_1F07CAFF8])
    {
      [v14 presentBasicLoginUIWithCompletion:v15];
    }

    else
    {
      v13 = _AKLogSystem();
      v12 = 16;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        log = v13;
        type = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_error_impl(&dword_193225000, log, type, "Error: We do not have a UI-capable context on the client side!", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v4 = v15;
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      (*(v4 + 2))(v4, 0, 0);
      MEMORY[0x1E69E5920](v5);
    }
  }

  else
  {
    v8 = v15;
    v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    (*(v8 + 2))(v8, 0, 0);
    MEMORY[0x1E69E5920](v9);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissBasicLoginUIForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v14)
  {
    if ([v14 conformsToProtocol:&unk_1F07CAFF8])
    {
      [v14 dismissBasicLoginUIWithCompletion:v15];
    }

    else
    {
      v13 = _AKLogSystem();
      v12 = 16;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        log = v13;
        type = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_error_impl(&dword_193225000, log, type, "Error: We do not have a UI-capable context on the client side!", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v4 = v15;
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v4[2](v4, 0);
      MEMORY[0x1E69E5920](v5);
    }
  }

  else
  {
    v8 = v15;
    v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v8[2](v8, 0);
    MEMORY[0x1E69E5920](v9);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)presentLoginAlertForContext:(id)context withError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, error);
  v23 = 0;
  objc_storeStrong(&v23, title);
  v22 = 0;
  objc_storeStrong(&v22, message);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v20 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v20)
  {
    if ([v20 conformsToProtocol:&unk_1F07CAFF8])
    {
      [v20 presentLoginAlertWithError:v24 title:v23 message:v22 completion:v21];
    }

    else
    {
      v19 = _AKLogSystem();
      v18 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        log = v19;
        type = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_error_impl(&dword_193225000, log, type, "Error: We do not have a UI-capable context on the client side!", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      v7 = v21;
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      (*(v7 + 2))(v7, 0, 0);
      MEMORY[0x1E69E5920](v8);
    }
  }

  else
  {
    v11 = v21;
    v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    (*(v11 + 2))(v11, 0, 0);
    MEMORY[0x1E69E5920](v12);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorUIForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v14)
  {
    if (objc_opt_respondsToSelector())
    {
      [v14 presentSecondFactorUIWithCompletion:v15];
    }

    else
    {
      v13 = _AKLogSystem();
      v12 = 16;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        log = v13;
        type = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_error_impl(&dword_193225000, log, type, "Error: We do not have a UI-capabable context on the client side!", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v4 = v15;
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v4[2](v4, 0);
      MEMORY[0x1E69E5920](v5);
    }
  }

  else
  {
    v8 = v15;
    v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v8[2](v8, 0);
    MEMORY[0x1E69E5920](v9);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissSecondFactorUIForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v14)
  {
    if (objc_opt_respondsToSelector())
    {
      [v14 dismissSecondFactorUIWithCompletion:v15];
    }

    else
    {
      v13 = _AKLogSystem();
      v12 = 16;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        log = v13;
        type = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_error_impl(&dword_193225000, log, type, "Error: We do not have a UI-capable context on the client side!", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v4 = v15;
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v4[2](v4, 0);
      MEMORY[0x1E69E5920](v5);
    }
  }

  else
  {
    v8 = v15;
    v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v8[2](v8, 0);
    MEMORY[0x1E69E5920](v9);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorAlertForContext:(id)context withError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, error);
  v23 = 0;
  objc_storeStrong(&v23, title);
  v22 = 0;
  objc_storeStrong(&v22, message);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v20 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v20)
  {
    if (objc_opt_respondsToSelector())
    {
      [v20 presentSecondFactorAlertWithError:v24 title:v23 message:v22 completion:v21];
    }

    else
    {
      v19 = _AKLogSystem();
      v18 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        log = v19;
        type = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_error_impl(&dword_193225000, log, type, "Error: We do not have a UI-capable context on the client side!", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      v7 = v21;
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v7[2](v7, 0);
      MEMORY[0x1E69E5920](v8);
    }
  }

  else
  {
    v11 = v21;
    v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v11[2](v11, 0);
    MEMORY[0x1E69E5920](v12);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)presentServerProvidedUIForContext:(id)context withConfiguration:(id)configuration completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v27 = 0;
  objc_storeStrong(&v27, configuration);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_64_8_64_8_64(v31, selfCopy, location[0], v27);
    _os_log_debug_impl(&dword_193225000, v25, v24, "%@: Presenting server provided UI for context (%@) with configuration (%@)", v31, 0x20u);
  }

  objc_storeStrong(&v25, 0);
  v23 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v23)
  {
    if ([v23 conformsToProtocol:&unk_1F07D0C98])
    {
      anisetteDataProvider = [v23 anisetteDataProvider];
      MEMORY[0x1E69E5920](anisetteDataProvider);
      if (anisetteDataProvider)
      {
        v19 = _AKLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v7 = selfCopy;
          anisetteDataProvider2 = [v23 anisetteDataProvider];
          resourceLoadDelegate = [v27 resourceLoadDelegate];
          __os_log_helper_16_2_3_8_64_8_64_8_64(v30, v7, anisetteDataProvider2, resourceLoadDelegate);
          _os_log_impl(&dword_193225000, v19, OS_LOG_TYPE_DEFAULT, "%@: Setting the anisette data provider (%@) on resource load delegate (%@)", v30, 0x20u);
          MEMORY[0x1E69E5920](resourceLoadDelegate);
          MEMORY[0x1E69E5920](anisetteDataProvider2);
        }

        objc_storeStrong(&v19, 0);
        resourceLoadDelegate2 = [v27 resourceLoadDelegate];
        anisetteDataProvider3 = [v23 anisetteDataProvider];
        [resourceLoadDelegate2 setAnisetteDataProvider:?];
        MEMORY[0x1E69E5920](anisetteDataProvider3);
        MEMORY[0x1E69E5920](resourceLoadDelegate2);
      }

      [v23 presentServerProvidedUIWithConfiguration:v27 completion:v26];
    }

    else
    {
      v22 = _AKLogSystem();
      v21 = 16;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v13 = v22;
        v14 = v21;
        __os_log_helper_16_0_0(v20);
        _os_log_error_impl(&dword_193225000, v13, v14, "Error: We do not have a UI-capable context on the client side!", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      v11 = v26;
      v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v11[2](v11, 0);
      MEMORY[0x1E69E5920](v12);
    }
  }

  else
  {
    v15 = v26;
    v16 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v15[2](v15, 0);
    MEMORY[0x1E69E5920](v16);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)dismissServerProvidedUIForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v14)
  {
    if ([v14 conformsToProtocol:&unk_1F07D0C98])
    {
      [v14 dismissServerProvidedUIWithCompletion:v15];
    }

    else
    {
      v13 = _AKLogSystem();
      v12 = 16;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        log = v13;
        type = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_error_impl(&dword_193225000, log, type, "Error: We do not have a UI-capable context on the client side!", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v4 = v15;
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v4[2](v4, 0);
      MEMORY[0x1E69E5920](v5);
    }
  }

  else
  {
    v8 = v15;
    v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v8[2](v8, 0);
    MEMORY[0x1E69E5920](v9);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)presentNativeRecoveryUIForContext:(id)context recoveryContext:(id)recoveryContext completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, recoveryContext);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v16)
  {
    if ([v16 conformsToProtocol:&unk_1F07D9928])
    {
      [v16 presentNativeRecoveryUIWithContext:v18 completion:v17];
    }

    else
    {
      v15 = _AKLogSystem();
      v14 = 16;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_193225000, log, type, "Error: We do not have a UI-capable context on the client side!", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
      v5 = v17;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v6);
    }
  }

  else
  {
    v9 = v17;
    v10 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v9[2](v9, 0);
    MEMORY[0x1E69E5920](v10);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissNativeRecoveryUIForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v14)
  {
    if ([v14 conformsToProtocol:&unk_1F07D9928])
    {
      [v14 dismissNativeRecoveryUIWithCompletion:v15];
    }

    else
    {
      v13 = _AKLogSystem();
      v12 = 16;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        log = v13;
        type = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_error_impl(&dword_193225000, log, type, "Error: We do not have a UI-capable context on the client side!", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v4 = v15;
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v4[2](v4, 0);
      MEMORY[0x1E69E5920](v5);
    }
  }

  else
  {
    v8 = v15;
    v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v8[2](v8, 0);
    MEMORY[0x1E69E5920](v9);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)presentBiometricOrPasscodeValidationForContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  v10 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      username = [location[0] username];
      [v10 presentBiometricOrPasscodeValidationForAppleID:? completion:?];
      MEMORY[0x1E69E5920](username);
    }

    else
    {
      v5 = v11;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v6);
    }
  }

  else
  {
    v7 = v11;
    v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v7[2](v7, 0);
    MEMORY[0x1E69E5920](v8);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)launchOutOfProcessAuthentication:(id)authentication surrogateID:(id)d withErrorHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authentication);
  v10 = 0;
  objc_storeStrong(&v10, d);
  v9 = 0;
  objc_storeStrong(&v9, handler);
  v7 = v9;
  v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
  v7[2]();
  MEMORY[0x1E69E5920](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)presentFidoAuthForContext:(id)context fidoContext:(id)fidoContext completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v28 = 0;
  objc_storeStrong(&v28, fidoContext);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v26 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v26)
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = _AKLogFido();
      v21 = 2;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v9 = v22;
        v10 = v21;
        __os_log_helper_16_0_0(v20);
        _os_log_debug_impl(&dword_193225000, v9, v10, "Asking the client context to present Fido ui.", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      [v26 presentFidoAuthForContext:location[0] fidoContext:v28 completion:v27];
    }

    else
    {
      v19 = _AKLogFido();
      v18 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v7 = v19;
        v8 = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_error_impl(&dword_193225000, v7, v8, "Error: We do not have a UIProvider. Unable to launch the Fido service!", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      v5 = v27;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v6);
    }
  }

  else
  {
    v25 = _AKLogFido();
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_error_impl(&dword_193225000, log, type, "Error: Context is not configured for a Fido presentation!", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v11 = v27;
    v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v11[2](v11, 0);
    MEMORY[0x1E69E5920](v12);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)presentProximityBroadcastUIForContext:(id)context completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v28, "[AKAppleIDAuthenticationContextManager presentProximityBroadcastUIForContext:completion:]", 323);
    _os_log_debug_impl(&dword_193225000, v23, v22, "%s (%d) called", v28, 0x12u);
  }

  objc_storeStrong(&v23, 0);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v27, selfCopy, location[0]);
    _os_log_debug_impl(&dword_193225000, v21, v20, "%@: Called to present proximity broadcast UI for context (%@)", v27, 0x16u);
  }

  objc_storeStrong(&v21, 0);
  v19 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v19)
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v18;
        v9 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_193225000, v8, v9, "Asking the client context to present proximity broadcast UI.", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      [v19 presentProximityBroadcastUIWithCompletion:v24];
    }

    else
    {
      oslog = _AKLogSystem();
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v6 = oslog;
        v7 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_193225000, v6, v7, "Error: We do not have a proximity UI-capable context on the client side!", v13, 2u);
      }

      objc_storeStrong(&oslog, 0);
      if (v24)
      {
        v4 = v24;
        v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
        v4[2](v4, 0);
        MEMORY[0x1E69E5920](v5);
      }
    }
  }

  else if (v24)
  {
    v10 = v24;
    v11 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v10[2](v10, 0);
    MEMORY[0x1E69E5920](v11);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)presentProximityPairingUIForContext:(id)context verificationCode:(id)code completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v27 = 0;
  objc_storeStrong(&v27, code);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v31, "[AKAppleIDAuthenticationContextManager presentProximityPairingUIForContext:verificationCode:completion:]", 341);
    _os_log_debug_impl(&dword_193225000, v25, v24, "%s (%d) called", v31, 0x12u);
  }

  objc_storeStrong(&v25, 0);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v30, selfCopy, location[0]);
    _os_log_debug_impl(&dword_193225000, v23, v22, "%@: Called to present proximity pairing UI for context (%@)", v30, 0x16u);
  }

  objc_storeStrong(&v23, 0);
  v21 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v21)
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = _AKLogSystem();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v20;
        v10 = v19;
        __os_log_helper_16_0_0(v18);
        _os_log_impl(&dword_193225000, v9, v10, "Asking the client context to present proximity pairing UI.", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      [v21 presentProximityPairingUIWithVerificationCode:v27 completion:v26];
    }

    else
    {
      v17 = _AKLogSystem();
      v16 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v7 = v17;
        v8 = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_error_impl(&dword_193225000, v7, v8, "Error: We do not have a proximity UI-capable context on the client side!", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      if (v26)
      {
        v5 = v26;
        v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
        v5[2](v5, 0);
        MEMORY[0x1E69E5920](v6);
      }
    }
  }

  else if (v26)
  {
    v11 = v26;
    v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v11[2](v11, 0);
    MEMORY[0x1E69E5920](v12);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)presentProximityPinCodeUIForContext:(id)context completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v28, "[AKAppleIDAuthenticationContextManager presentProximityPinCodeUIForContext:completion:]", 358);
    _os_log_debug_impl(&dword_193225000, v23, v22, "%s (%d) called", v28, 0x12u);
  }

  objc_storeStrong(&v23, 0);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v27, selfCopy, location[0]);
    _os_log_debug_impl(&dword_193225000, v21, v20, "%@: Called to present proximity PIN Entry UI for context (%@)", v27, 0x16u);
  }

  objc_storeStrong(&v21, 0);
  v19 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v19)
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v18;
        v9 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_193225000, v8, v9, "Asking the client context show to proximity PIN Entry UI.", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      [v19 presentProximityPinCodeUIWithCompletion:v24];
    }

    else
    {
      oslog = _AKLogSystem();
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v6 = oslog;
        v7 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_193225000, v6, v7, "Error: We do not have a proximity UI-capable context on the client side!", v13, 2u);
      }

      objc_storeStrong(&oslog, 0);
      if (v24)
      {
        v4 = v24;
        v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
        v4[2](v4, 0);
        MEMORY[0x1E69E5920](v5);
      }
    }
  }

  else if (v24)
  {
    v10 = v24;
    v11 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v10[2](v10, 0);
    MEMORY[0x1E69E5920](v11);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)activateProximitySession:(id)session context:(id)context completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v27 = 0;
  objc_storeStrong(&v27, context);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v31, "[AKAppleIDAuthenticationContextManager activateProximitySession:context:completion:]", 374);
    _os_log_debug_impl(&dword_193225000, v25, v24, "%s (%d) called", v31, 0x12u);
  }

  objc_storeStrong(&v25, 0);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_64_8_64_8_64(v30, selfCopy, location[0], v27);
    _os_log_debug_impl(&dword_193225000, v23, v22, "%@: Called to activate proximity session (%@) for context (%@)", v30, 0x20u);
  }

  objc_storeStrong(&v23, 0);
  v21 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:v27];
  if (v21)
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = _AKLogSystem();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v20;
        v10 = v19;
        __os_log_helper_16_0_0(v18);
        _os_log_impl(&dword_193225000, v9, v10, "Asking the client context to activate proximity session.", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      [v21 activateProximitySession:location[0] completion:v26];
    }

    else
    {
      v17 = _AKLogSystem();
      v16 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v7 = v17;
        v8 = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_error_impl(&dword_193225000, v7, v8, "Error: We do not have a proximity UI-capable context on the client side!", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      if (v26)
      {
        v5 = v26;
        v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
        v5[2](v5, 0);
        MEMORY[0x1E69E5920](v6);
      }
    }
  }

  else if (v26)
  {
    v11 = v26;
    v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v11[2](v11, 0);
    MEMORY[0x1E69E5920](v12);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)dismissProximityPairingUIForContext:(id)context completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v28, "[AKAppleIDAuthenticationContextManager dismissProximityPairingUIForContext:completion:]", 390);
    _os_log_debug_impl(&dword_193225000, v23, v22, "%s (%d) called", v28, 0x12u);
  }

  objc_storeStrong(&v23, 0);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v27, selfCopy, location[0]);
    _os_log_debug_impl(&dword_193225000, v21, v20, "%@: Called to dismiss proximity pairing UI for context (%@)", v27, 0x16u);
  }

  objc_storeStrong(&v21, 0);
  v19 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v19)
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v18;
        v9 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_193225000, v8, v9, "Asking the client context to dismiss proximity pairing UI.", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      [v19 dismissProximityPairingUIWithCompletion:v24];
    }

    else
    {
      oslog = _AKLogSystem();
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v6 = oslog;
        v7 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_193225000, v6, v7, "Error: We do not have a proximity UI-capable context on the client side!", v13, 2u);
      }

      objc_storeStrong(&oslog, 0);
      if (v24)
      {
        v4 = v24;
        v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
        v4[2](v4, 0);
        MEMORY[0x1E69E5920](v5);
      }
    }
  }

  else if (v24)
  {
    v10 = v24;
    v11 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v10[2](v10, 0);
    MEMORY[0x1E69E5920](v11);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)showProximityErrorForContext:(id)context completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v25, "[AKAppleIDAuthenticationContextManager showProximityErrorForContext:completion:]", 406);
    _os_log_debug_impl(&dword_193225000, v21, v20, "%s (%d) called", v25, 0x12u);
  }

  objc_storeStrong(&v21, 0);
  v19 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v19)
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v18;
        v9 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_193225000, v8, v9, "Asking the client context to show proximity error UI.", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      [v19 showProximityErrorWithCompletion:v22];
    }

    else
    {
      v15 = _AKLogSystem();
      v14 = 16;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v6 = v15;
        v7 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_193225000, v6, v7, "Error: We do not have a proximity UI-capable context on the client side!", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
      if (v22)
      {
        v4 = v22;
        v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
        v4[2](v4, 0);
        MEMORY[0x1E69E5920](v5);
      }
    }
  }

  else if (v22)
  {
    v10 = v22;
    v11 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v10[2](v10, 0);
    MEMORY[0x1E69E5920](v11);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)provisionAnisetteForContext:(id)context withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v17, "[AKAppleIDAuthenticationContextManager provisionAnisetteForContext:withCompletion:]", 422);
    _os_log_debug_impl(&dword_193225000, v13, v12, "%s (%d) called", v17, 0x12u);
  }

  objc_storeStrong(&v13, 0);
  v11 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v11)
  {
    anisetteDataProvider = [v11 anisetteDataProvider];
    if (anisetteDataProvider)
    {
      [anisetteDataProvider provisionAnisetteWithCompletion:v14];
      v10 = 0;
    }

    else
    {
      v4 = v14;
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
      v4[2](v4, 0);
      MEMORY[0x1E69E5920](v5);
      v10 = 1;
    }

    objc_storeStrong(&anisetteDataProvider, 0);
  }

  else
  {
    v6 = v14;
    v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v6[2](v6, 0);
    MEMORY[0x1E69E5920](v7);
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)syncAnisetteForContext:(id)context withSIMData:(id)data completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v17 = 0;
  objc_storeStrong(&v17, data);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v20, "[AKAppleIDAuthenticationContextManager syncAnisetteForContext:withSIMData:completion:]", 439);
    _os_log_debug_impl(&dword_193225000, v15, v14, "%s (%d) called", v20, 0x12u);
  }

  objc_storeStrong(&v15, 0);
  v13 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v13)
  {
    anisetteDataProvider = [v13 anisetteDataProvider];
    if (anisetteDataProvider)
    {
      [anisetteDataProvider syncAnisetteWithSIMData:v17 completion:v16];
      v12 = 0;
    }

    else
    {
      v5 = v16;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v6);
      v12 = 1;
    }

    objc_storeStrong(&anisetteDataProvider, 0);
  }

  else
  {
    v7 = v16;
    v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v7[2](v7, 0);
    MEMORY[0x1E69E5920](v8);
    v12 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)eraseAnisetteForContext:(id)context withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v17, "[AKAppleIDAuthenticationContextManager eraseAnisetteForContext:withCompletion:]", 456);
    _os_log_debug_impl(&dword_193225000, v13, v12, "%s (%d) called", v17, 0x12u);
  }

  objc_storeStrong(&v13, 0);
  v11 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v11)
  {
    anisetteDataProvider = [v11 anisetteDataProvider];
    if (anisetteDataProvider)
    {
      [anisetteDataProvider eraseAnisetteWithCompletion:v14];
      v10 = 0;
    }

    else
    {
      v4 = v14;
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
      v4[2](v4, 0);
      MEMORY[0x1E69E5920](v5);
      v10 = 1;
    }

    objc_storeStrong(&anisetteDataProvider, 0);
  }

  else
  {
    v6 = v14;
    v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v6[2](v6, 0);
    MEMORY[0x1E69E5920](v7);
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchAnisetteDataForContext:(id)context provisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  necessaryCopy = necessary;
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v20, "[AKAppleIDAuthenticationContextManager fetchAnisetteDataForContext:provisionIfNecessary:withCompletion:]", 473);
    _os_log_debug_impl(&dword_193225000, v15, v14, "%s (%d) called", v20, 0x12u);
  }

  objc_storeStrong(&v15, 0);
  v13 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v13)
  {
    anisetteDataProvider = [v13 anisetteDataProvider];
    if (anisetteDataProvider)
    {
      [anisetteDataProvider fetchAnisetteDataAndProvisionIfNecessary:necessaryCopy withCompletion:v16];
      v12 = 0;
    }

    else
    {
      v5 = v16;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v6);
      v12 = 1;
    }

    objc_storeStrong(&anisetteDataProvider, 0);
  }

  else
  {
    v7 = v16;
    v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v7[2](v7, 0);
    MEMORY[0x1E69E5920](v8);
    v12 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)legacyAnisetteDataForContext:(id)context DSID:(id)d withCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v17 = 0;
  objc_storeStrong(&v17, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v20, "[AKAppleIDAuthenticationContextManager legacyAnisetteDataForContext:DSID:withCompletion:]", 490);
    _os_log_debug_impl(&dword_193225000, v15, v14, "%s (%d) called", v20, 0x12u);
  }

  objc_storeStrong(&v15, 0);
  v13 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v13)
  {
    anisetteDataProvider = [v13 anisetteDataProvider];
    if (anisetteDataProvider)
    {
      [anisetteDataProvider legacyAnisetteDataForDSID:v17 withCompletion:v16];
      v12 = 0;
    }

    else
    {
      v5 = v16;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v6);
      v12 = 1;
    }

    objc_storeStrong(&anisetteDataProvider, 0);
  }

  else
  {
    v7 = v16;
    v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v7[2](v7, 0);
    MEMORY[0x1E69E5920](v8);
    v12 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchPeerAttestationDataForContext:(id)context withRequest:(id)request completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, request);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v22 = _AKLogSystem();
  v21 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v30, "[AKAppleIDAuthenticationContextManager fetchPeerAttestationDataForContext:withRequest:completion:]", 507);
    _os_log_debug_impl(&dword_193225000, v22, v21, "%s (%d) called", v30, 0x12u);
  }

  objc_storeStrong(&v22, 0);
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_64_8_64_8_64(v29, selfCopy, location[0], v24);
    _os_log_debug_impl(&dword_193225000, v20, v19, "%@: Called to fetch peer attestation data for context (%@) with request (%@)", v29, 0x20u);
  }

  objc_storeStrong(&v20, 0);
  v18 = [(AKAppleIDAuthenticationContextManager *)selfCopy _clientSideContextForServerContext:location[0]];
  if (v18)
  {
    anisetteDataProvider = [v18 anisetteDataProvider];
    if (anisetteDataProvider)
    {
      if (objc_opt_respondsToSelector())
      {
        oslog = _AKLogSystem();
        v14 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_3_8_64_8_64_8_64(v28, selfCopy, anisetteDataProvider, v24);
          _os_log_impl(&dword_193225000, oslog, v14, "%@: Calling anisette data provider (%@) to fetch peer attestation data for request (%@)", v28, 0x20u);
        }

        objc_storeStrong(&oslog, 0);
        [anisetteDataProvider fetchPeerAttestationDataForRequest:v24 completion:v23];
      }

      else
      {
        v13 = _AKLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_3_8_64_8_64_8_64(v27, selfCopy, anisetteDataProvider, v24);
          _os_log_error_impl(&dword_193225000, v13, OS_LOG_TYPE_ERROR, "%@: Unable to call anisette data provider (%@) to fetch peer attestation data for request (%@) because it does not respond to 'fetchPeerAttestationDataForRequest:completion:'", v27, 0x20u);
        }

        objc_storeStrong(&v13, 0);
        v5 = v23;
        v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAnisetteError" code:-8009 userInfo:0];
        v5[2](v5, 0);
        MEMORY[0x1E69E5920](v6);
      }

      v17 = 0;
    }

    else
    {
      v7 = v23;
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
      v7[2](v7, 0);
      MEMORY[0x1E69E5920](v8);
      v17 = 1;
    }

    objc_storeStrong(&anisetteDataProvider, 0);
  }

  else
  {
    v9 = v23;
    v10 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7011];
    v9[2](v9, 0);
    MEMORY[0x1E69E5920](v10);
    v17 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_clientSideContextForServerContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  _identifier = [location[0] _identifier];
  MEMORY[0x1E69E5920](_identifier);
  if (_identifier)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 838860800;
    v19 = 48;
    v20 = __Block_byref_object_copy__3;
    v21 = __Block_byref_object_dispose__3;
    v22 = 0;
    queue = selfCopy->_authContextsQueue;
    v9 = MEMORY[0x1E69E9820];
    v10 = -1073741824;
    v11 = 0;
    v12 = __76__AKAppleIDAuthenticationContextManager__clientSideContextForServerContext___block_invoke;
    v13 = &unk_1E73D4878;
    v15[1] = &v16;
    v14 = MEMORY[0x1E69E5928](selfCopy);
    v15[0] = MEMORY[0x1E69E5928](location[0]);
    dispatch_sync(queue, &v9);
    if (v17[5])
    {
      [v17[5] _updateWithValuesFromContext:location[0]];
      v28 = MEMORY[0x1E69E5928](v17[5]);
      v23 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        _identifier2 = [location[0] _identifier];
        __os_log_helper_16_2_1_8_64(v29, _identifier2);
        _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Client has no knowledge of context ID: %@", v29, 0xCu);
        MEMORY[0x1E69E5920](_identifier2);
      }

      objc_storeStrong(&oslog, 0);
      v28 = 0;
      v23 = 1;
    }

    objc_storeStrong(v15, 0);
    objc_storeStrong(&v14, 0);
    _Block_object_dispose(&v16, 8);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v25 = _AKLogSystem();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v30, location[0]);
      _os_log_error_impl(&dword_193225000, v25, v24, "Server has provided an invalid context lacking an ID: %@", v30, 0xCu);
    }

    objc_storeStrong(&v25, 0);
    v28 = 0;
    v23 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v28;

  return v3;
}

uint64_t __76__AKAppleIDAuthenticationContextManager__clientSideContextForServerContext___block_invoke(uint64_t a1)
{
  v5 = *(*(a1 + 32) + 8);
  v7 = [*(a1 + 40) _identifier];
  v1 = [v5 objectForKeyedSubscript:?];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](v7);
}

- (AKAppleIDAuthenticationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end