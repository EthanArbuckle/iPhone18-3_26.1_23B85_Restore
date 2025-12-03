@interface AKCDPFactory
+ (BOOL)cdpAccountIsHSA2EnabledForAltDSID:(id)d;
+ (BOOL)cdpAccountIsICDPEnabledForDSID:(id)d;
+ (BOOL)cdpAccountIsOTEnabledForAltDSID:(id)d;
+ (BOOL)isEligibleToArmDeviceForPCSAuth;
+ (id)accountRecoveryControllerWithPresentingViewController:(id)controller;
+ (id)cdpErrorDomain;
+ (id)cdpIDMSRecordMIDKey;
+ (id)cdpIDMSRecordPRKKey;
+ (id)cdpUIControllerWithPresentingViewController:(id)controller;
+ (id)contextForAltDSID:(id)d;
+ (id)contextWithAuthResults:(id)results;
+ (id)followUpController;
+ (id)followUpRepairContext;
+ (id)recoveryControllerWithContext:(id)context;
+ (id)stateControllerWithContext:(id)context;
+ (id)walrusStatusLiveValue;
+ (id)webAccessChangeControllerForTargetStatus:(unint64_t)status;
+ (id)webAccessStatusLiveValue;
+ (unint64_t)walrusStatus;
+ (unint64_t)webAccessStatus;
- (BOOL)isCDPEnabledForDSID:(id)d;
- (BOOL)isHSA2EnabledForAltDSID:(id)d;
- (BOOL)isManateeAvailable;
- (BOOL)isUserVisibleKeychainSyncEnabled;
@end

@implementation AKCDPFactory

+ (id)contextForAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  if (CoreCDPLibraryCore(0))
  {
    CDPContextClass = getCDPContextClass();
  }

  else
  {
    CDPContextClass = 0;
  }

  v4 = [CDPContextClass contextForAccountWithAltDSID:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)contextWithAuthResults:(id)results
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  if (CoreCDPLibraryCore(0))
  {
    v3 = objc_alloc(getCDPContextClass());
  }

  else
  {
    v3 = [0 alloc];
  }

  v5 = [v3 initWithAuthenticationResults:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)stateControllerWithContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  if (CoreCDPLibraryCore(0))
  {
    v3 = objc_alloc(getCDPStateControllerClass());
  }

  else
  {
    v3 = [0 alloc];
  }

  v5 = [v3 initWithContext:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)recoveryControllerWithContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  if (CoreCDPLibraryCore(0))
  {
    v3 = objc_alloc_init(getCDPContextClass());
  }

  else
  {
    v3 = objc_alloc_init(0);
  }

  v18 = v3;
  authContext = [location[0] authContext];
  altDSID = [authContext altDSID];
  [v18 setAltDSID:?];
  MEMORY[0x1E69E5920](altDSID);
  MEMORY[0x1E69E5920](authContext);
  v9 = MEMORY[0x1E696AD98];
  authContext2 = [location[0] authContext];
  dSID = [authContext2 DSID];
  v10 = [v9 numberWithLongLong:{objc_msgSend(dSID, "longLongValue")}];
  [v18 setDsid:?];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](dSID);
  MEMORY[0x1E69E5920](authContext2);
  authContext3 = [location[0] authContext];
  username = [authContext3 username];
  [v18 setAppleID:?];
  MEMORY[0x1E69E5920](username);
  MEMORY[0x1E69E5920](authContext3);
  decodedRecoveryPETString = [location[0] decodedRecoveryPETString];
  [v18 setPasswordEquivToken:?];
  MEMORY[0x1E69E5920](decodedRecoveryPETString);
  [v18 setIdmsMasterKeyRecovery:{objc_msgSend(location[0], "supportsMasterKeyRecovery")}];
  [v18 setMandatesRecoveryKey:{objc_msgSend(location[0], "mandatesRecoveryKey")}];
  [v18 setIdmsRecovery:{objc_msgSend(v18, "idmsMasterKeyRecovery") ^ 1}];
  [v18 setGuestMode:1];
  authContext4 = [location[0] authContext];
  telemetryFlowID = [authContext4 telemetryFlowID];
  [v18 setTelemetryFlowID:?];
  MEMORY[0x1E69E5920](telemetryFlowID);
  MEMORY[0x1E69E5920](authContext4);
  if (CoreCDPLibraryCore(0))
  {
    v4 = objc_alloc(getCDPRecoveryControllerClass());
  }

  else
  {
    v4 = [0 alloc];
  }

  v6 = [v4 initWithContext:v18];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)followUpRepairContext
{
  if (CoreCDPLibraryCore(0))
  {
    CDPFollowUpContextClass = getCDPFollowUpContextClass();
  }

  else
  {
    CDPFollowUpContextClass = 0;
  }

  return [CDPFollowUpContextClass contextForStateRepair];
}

+ (id)followUpController
{
  if (CoreCDPLibraryCore(0))
  {
    v2 = objc_alloc_init(getCDPFollowUpControllerClass());
  }

  else
  {
    v2 = objc_alloc_init(0);
  }

  return v2;
}

+ (BOOL)cdpAccountIsICDPEnabledForDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  if (CoreCDPLibraryCore(0))
  {
    CDPAccountClass = getCDPAccountClass();
  }

  else
  {
    CDPAccountClass = 0;
  }

  v4 = [CDPAccountClass isICDPEnabledForDSID:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

+ (BOOL)cdpAccountIsHSA2EnabledForAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  if (CoreCDPLibraryCore(0))
  {
    CDPAccountClass = getCDPAccountClass();
  }

  else
  {
    CDPAccountClass = 0;
  }

  v4 = [CDPAccountClass isHSA2Enabled:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

+ (BOOL)cdpAccountIsOTEnabledForAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  if (CoreCDPLibraryCore(0))
  {
    CDPAccountClass = getCDPAccountClass();
  }

  else
  {
    CDPAccountClass = 0;
  }

  cDPAccountClass = [CDPAccountClass sharedInstance];
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x1E69E5920](cDPAccountClass);
  if (v7)
  {
    v9 = [AKCDPFactory contextForAltDSID:location[0]];
    if (v9)
    {
      if (CoreCDPLibraryCore(0))
      {
        v5 = getCDPAccountClass();
      }

      else
      {
        v5 = 0;
      }

      sharedInstance = [v5 sharedInstance];
      v11 = [sharedInstance isOTEnabledForContext:v9] & 1;
      MEMORY[0x1E69E5920](sharedInstance);
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  return v11 & 1;
}

+ (id)cdpErrorDomain
{
  v4 = 0;
  if (CoreCDPLibraryCore(0))
  {
    v5 = getCDPStateErrorDomain();
    v4 = 1;
    v2 = MEMORY[0x1E69E5928](v5);
  }

  else
  {
    v2 = MEMORY[0x1E69E5928](0);
  }

  v6 = v2;
  if (v4)
  {
    MEMORY[0x1E69E5920](v5);
  }

  return v6;
}

+ (unint64_t)walrusStatus
{
  v13 = *MEMORY[0x1E69E9840];
  v8[2] = self;
  v8[1] = a2;
  v11 = &walrusStatus_once;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_40);
  if (*v11 != -1)
  {
    dispatch_once(v11, location);
  }

  objc_storeStrong(&location, 0);
  v8[0] = 0;
  obj = 0;
  v4 = [walrusStatus_stateController walrusStatus:&obj];
  objc_storeStrong(v8, obj);
  v7 = v4;
  if (v8[0])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v3 = [v8[0] description];
      __os_log_helper_16_2_1_8_64(v12, v3);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch walrus status with error: %@", v12, 0xCu);
      MEMORY[0x1E69E5920](v3);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v9 = 1;
    }

    else if (v7 == 2)
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(v8, 0);
  *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __28__AKCDPFactory_walrusStatus__block_invoke()
{
  if (CoreCDPLibraryCore(0))
  {
    v0 = objc_alloc_init(getCDPWalrusStateControllerClass());
  }

  else
  {
    v0 = objc_alloc_init(0);
  }

  v1 = v0;
  v2 = walrusStatus_stateController;
  walrusStatus_stateController = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (id)walrusStatusLiveValue
{
  v5 = &walrusStatusLiveValue_once;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_48);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = walrusStatusLiveValue_value;

  return v2;
}

void __37__AKCDPFactory_walrusStatusLiveValue__block_invoke(uint64_t a1)
{
  v39 = a1;
  v38 = a1;
  v36 = 0;
  if (CoreCDPLibraryCore(0))
  {
    v37 = getCDPWalrusStateChangeNotification();
    v36 = 1;
    v9 = v37;
  }

  else
  {
    v9 = 0;
  }

  if (v36)
  {
    MEMORY[0x1E69E5920](v37);
  }

  if (v9)
  {
    v1 = [AKLiveValue liveValueWithSyncProducer:&__block_literal_global_53];
    v2 = walrusStatusLiveValue_value;
    walrusStatusLiveValue_value = v1;
    MEMORY[0x1E69E5920](v2);
    v26 = 0;
    v27 = &v26;
    v28 = 838860800;
    v29 = 48;
    v30 = __Block_byref_object_copy__13;
    v31 = __Block_byref_object_dispose__13;
    v32 = 0;
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = 0;
    if (CoreCDPLibraryCore(0))
    {
      v23 = getCDPWalrusStateChangeNotification();
      v22 = 1;
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }

    v16[1] = MEMORY[0x1E69E9820];
    v17 = -1073741824;
    v18 = 0;
    v19 = __37__AKCDPFactory_walrusStatusLiveValue__block_invoke_55;
    v20 = &unk_1E73D82D0;
    v21 = &v26;
    v24 = [v25 addObserverForName:v6 object:0 queue:? usingBlock:?];
    if (v22)
    {
      MEMORY[0x1E69E5920](v23);
    }

    v5 = walrusStatusLiveValue_value;
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __37__AKCDPFactory_walrusStatusLiveValue__block_invoke_57;
    v14 = &unk_1E73D82F8;
    v15 = MEMORY[0x1E69E5928](v25);
    v16[0] = MEMORY[0x1E69E5928](v24);
    v3 = [v5 newTriggerWithCleanup:&v10];
    v4 = v27[5];
    v27[5] = v3;
    MEMORY[0x1E69E5920](v4);
    objc_storeStrong(v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    _Block_object_dispose(&v26, 8);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    location = _AKLogSystem();
    v34 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_error_impl(&dword_193225000, log, type, "CDPWalrusStateChangeNotification constant is nil, CoreCDP framework link not available", v33, 2u);
    }

    objc_storeStrong(&location, 0);
  }
}

void __37__AKCDPFactory_walrusStatusLiveValue__block_invoke_55(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Received walrus state change notification, triggering value value update: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (*(*(a1[4].isa + 1) + 40))
  {
    (*(*(*(a1[4].isa + 1) + 40) + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __37__AKCDPFactory_walrusStatusLiveValue__block_invoke_57(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) removeObserver:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

+ (unint64_t)webAccessStatus
{
  v14 = *MEMORY[0x1E69E9840];
  v11[2] = self;
  v11[1] = a2;
  if (!webAccessStatus_stateController)
  {
    if (CoreCDPLibraryCore(0))
    {
      v2 = objc_alloc_init(getCDPWebAccessStateControllerClass());
    }

    else
    {
      v2 = objc_alloc_init(0);
    }

    v3 = v2;
    v4 = webAccessStatus_stateController;
    webAccessStatus_stateController = v3;
    MEMORY[0x1E69E5920](v4);
  }

  v11[0] = 0;
  v9 = 0;
  v7 = [webAccessStatus_stateController webAccessStatus:&v9];
  objc_storeStrong(v11, v9);
  v10 = v7;
  if (v11[0])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v6 = [v11[0] description];
      __os_log_helper_16_2_1_8_64(v13, v6);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch web access status with error: %@", v13, 0xCu);
      MEMORY[0x1E69E5920](v6);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v12 = 1;
    }

    else if (v10 == 2)
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)webAccessStatusLiveValue
{
  v5 = &webAccessStatusLiveValue_once;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_60);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = webAccessStatusLiveValue_value;

  return v2;
}

void __40__AKCDPFactory_webAccessStatusLiveValue__block_invoke(uint64_t a1)
{
  v39 = a1;
  v38 = a1;
  v36 = 0;
  if (CoreCDPLibraryCore(0))
  {
    v37 = getCDPWebAccessStateChangeNotification();
    v36 = 1;
    v9 = v37;
  }

  else
  {
    v9 = 0;
  }

  if (v36)
  {
    MEMORY[0x1E69E5920](v37);
  }

  if (v9)
  {
    v1 = [AKLiveValue liveValueWithSyncProducer:&__block_literal_global_63];
    v2 = webAccessStatusLiveValue_value;
    webAccessStatusLiveValue_value = v1;
    MEMORY[0x1E69E5920](v2);
    v26 = 0;
    v27 = &v26;
    v28 = 838860800;
    v29 = 48;
    v30 = __Block_byref_object_copy__13;
    v31 = __Block_byref_object_dispose__13;
    v32 = 0;
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = 0;
    if (CoreCDPLibraryCore(0))
    {
      v23 = getCDPWebAccessStateChangeNotification();
      v22 = 1;
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }

    v16[1] = MEMORY[0x1E69E9820];
    v17 = -1073741824;
    v18 = 0;
    v19 = __40__AKCDPFactory_webAccessStatusLiveValue__block_invoke_2;
    v20 = &unk_1E73D82D0;
    v21 = &v26;
    v24 = [v25 addObserverForName:v6 object:0 queue:? usingBlock:?];
    if (v22)
    {
      MEMORY[0x1E69E5920](v23);
    }

    v5 = webAccessStatusLiveValue_value;
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __40__AKCDPFactory_webAccessStatusLiveValue__block_invoke_64;
    v14 = &unk_1E73D82F8;
    v15 = MEMORY[0x1E69E5928](v25);
    v16[0] = MEMORY[0x1E69E5928](v24);
    v3 = [v5 newTriggerWithCleanup:&v10];
    v4 = v27[5];
    v27[5] = v3;
    MEMORY[0x1E69E5920](v4);
    objc_storeStrong(v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    _Block_object_dispose(&v26, 8);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    location = _AKLogSystem();
    v34 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_error_impl(&dword_193225000, log, type, "CDPWebAccessStateChangeNotification constant is nil, CoreCDP framework link not available", v33, 2u);
    }

    objc_storeStrong(&location, 0);
  }
}

void __40__AKCDPFactory_webAccessStatusLiveValue__block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Received web access state change notification, triggering value value update: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (*(*(a1[4].isa + 1) + 40))
  {
    (*(*(*(a1[4].isa + 1) + 40) + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __40__AKCDPFactory_webAccessStatusLiveValue__block_invoke_64(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) removeObserver:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

+ (BOOL)isEligibleToArmDeviceForPCSAuth
{
  isWebAccessEnabled = 0;
  if ([self isWalrusEnabled])
  {
    isWebAccessEnabled = [self isWebAccessEnabled];
  }

  return isWebAccessEnabled & 1;
}

+ (id)webAccessChangeControllerForTargetStatus:(unint64_t)status
{
  location[3] = self;
  location[2] = a2;
  location[1] = status;
  if (status)
  {
    if (status == 1)
    {
      if (CoreCDPUILibraryCore(0))
      {
        v6 = getCDPUIStatusChangeControllerClass();
      }

      else
      {
        v6 = 0;
      }

      v13 = [v6 controllerWithTargetWebAccessStatus:1];
    }

    else if (status == 2)
    {
      if (CoreCDPUILibraryCore(0))
      {
        v5 = getCDPUIStatusChangeControllerClass();
      }

      else
      {
        v5 = 0;
      }

      v13 = [v5 controllerWithTargetWebAccessStatus:2];
    }
  }

  else
  {
    location[0] = _AKLogSystem();
    v11 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_193225000, log, type, "Web access change UI requested for unknown status", v10, 2u);
    }

    objc_storeStrong(location, 0);
    if (CoreCDPUILibraryCore(0))
    {
      v7 = getCDPUIStatusChangeControllerClass();
    }

    else
    {
      v7 = 0;
    }

    v13 = [v7 controllerWithTargetWebAccessStatus:0];
  }

  v3 = v13;

  return v3;
}

+ (id)cdpIDMSRecordMIDKey
{
  v4 = 0;
  if (CoreCDPLibraryCore(0))
  {
    v5 = getCDPIDMSRecordMIDKey();
    v4 = 1;
    v2 = MEMORY[0x1E69E5928](v5);
  }

  else
  {
    v2 = MEMORY[0x1E69E5928](0);
  }

  v6 = v2;
  if (v4)
  {
    MEMORY[0x1E69E5920](v5);
  }

  return v6;
}

+ (id)cdpIDMSRecordPRKKey
{
  v4 = 0;
  if (CoreCDPLibraryCore(0))
  {
    v5 = getCDPIDMSPasswordResetKey();
    v4 = 1;
    v2 = MEMORY[0x1E69E5928](v5);
  }

  else
  {
    v2 = MEMORY[0x1E69E5928](0);
  }

  v6 = v2;
  if (v4)
  {
    MEMORY[0x1E69E5920](v5);
  }

  return v6;
}

+ (id)accountRecoveryControllerWithPresentingViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if (CoreCDPUILibraryCore(0))
  {
    v3 = objc_alloc(getCDPUIAccountRecoveryControllerClass());
  }

  else
  {
    v3 = [0 alloc];
  }

  v5 = [v3 initWithPresentingViewController:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)cdpUIControllerWithPresentingViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if (CoreCDPUILibraryCore(0))
  {
    v3 = objc_alloc(getCDPUIControllerClass());
  }

  else
  {
    v3 = [0 alloc];
  }

  v5 = [v3 initWithPresentingViewController:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)isUserVisibleKeychainSyncEnabled
{
  if (CoreCDPLibraryCore(0))
  {
    CDPKeychainSyncClass = getCDPKeychainSyncClass();
  }

  else
  {
    CDPKeychainSyncClass = 0;
  }

  return ([CDPKeychainSyncClass isUserVisibleKeychainSyncEnabled] & 1) != 0;
}

- (BOOL)isCDPEnabledForDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [AKCDPFactory cdpAccountIsICDPEnabledForDSID:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)isManateeAvailable
{
  v12 = *MEMORY[0x1E69E9840];
  v10[2] = self;
  v10[1] = a2;
  v10[0] = 0;
  if (CoreCDPLibraryCore(0))
  {
    v2 = objc_alloc_init(getCDPStateControllerClass());
  }

  else
  {
    v2 = objc_alloc_init(0);
  }

  v9 = v2;
  v7 = v10[0];
  v5 = [v2 isManateeAvailable:&v7];
  objc_storeStrong(v10, v7);
  v8 = v5;
  if (v10[0])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_3_1_8_65(v11, v10[0]);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Keychain sync is not enabled. Failed with error %{private}@", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = v8;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  *MEMORY[0x1E69E9840];
  return v4 & 1;
}

- (BOOL)isHSA2EnabledForAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [AKCDPFactory cdpAccountIsHSA2EnabledForAltDSID:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

@end