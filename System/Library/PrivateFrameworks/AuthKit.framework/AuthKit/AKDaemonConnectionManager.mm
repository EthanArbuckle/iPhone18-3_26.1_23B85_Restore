@interface AKDaemonConnectionManager
+ (id)sharedInstance;
- (AKDaemonConnectionManager)init;
- (BOOL)_isBiometricRatchetStatusChangeDarwinNotification:(id)a3;
- (BOOL)_isDeviceScreenUnlockNotification:(id)a3;
- (BOOL)_isKeychainSharingGroupUpdateDarwinNotification:(id)a3;
- (BOOL)_isPasscodeChangeNotification:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldAllowClient:(id)a3 logging:(id *)a4;
- (id)passwordResetPresenter;
- (void)_beginObservingBluetoothPairingNotification;
- (void)_beginObservingInputNeededNotification;
- (void)_beginObservingLocaleChangeNotification;
- (void)_beginObservingRegulatoryEligibilityChangeNotification;
- (void)_checkKeybagUnlockState;
- (void)_checkScreenUnlockStateFromNotificationDictionary:(id)a3;
- (void)_enrollPasskeyIfEligible;
- (void)_exitForSIGTERM;
- (void)_handleKeychainSharingGroupUpdateNotification;
- (void)_monitorXPCEvents;
- (void)_performPasskeyCleanupWithPasskeyValidator:(id)a3 authenticationController:(id)a4 accountManager:(id)a5;
- (void)_setupServices;
- (void)_startListeningForMessagesFromPairedDevice;
- (void)_startMonitoringPushEvents;
- (void)_stopObservingBluetoothPairingNotification;
- (void)_stopObservingInputNeededNotification;
- (void)_stopObservingLocaleChangeNotification;
- (void)_stopObservingRegulatoryEligibilityChangeNotification;
- (void)_updatePasskeyKeychainStatusForAccount:(id)a3;
- (void)_updateRestrictedSharingMode;
- (void)dealloc;
- (void)start;
- (void)startForTesting;
@end

@implementation AKDaemonConnectionManager

- (id)passwordResetPresenter
{
  obj = _objc_retain(self);
  objc_sync_enter(obj);
  v5 = +[AKFeatureManager sharedManager];
  v6 = [v5 isForgotPasswordNativeTakeoverEnabled];
  _objc_release(v5);
  if (v6)
  {
    if (!self->_passwordResetPresenter)
    {
      v4 = objc_alloc_init(AKPasswordResetPresenter);
      passwordResetPresenter = self->_passwordResetPresenter;
      self->_passwordResetPresenter = v4;
      _objc_release(passwordResetPresenter);
    }

    v9 = _objc_retain(self->_passwordResetPresenter);
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(obj);
  _objc_release(obj);

  return v9;
}

- (void)_checkKeybagUnlockState
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v7;
    sub_10001CEEC(v6);
    _os_log_impl(&_mh_execute_header, log, type, "Checking lock state", v6, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = +[AKDevice currentDevice];
  v3 = [v2 isUnlocked];
  _objc_release(v2);
  if (v3)
  {
    [AKAppleIDCheckInHelperService setCheckInAllowedForAllAccountsToValue:1];
  }
}

- (void)_enrollPasskeyIfEligible
{
  v43 = self;
  v42[1] = a2;
  v42[0] = +[AKAccountManager sharedInstance];
  v41 = [v42[0] primaryAuthKitAccount];
  if (v41)
  {
    v36 = _AKLogPasskey();
    v35 = 2;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v13 = v36;
      v14 = v35;
      sub_10001CEEC(v34);
      _os_log_debug_impl(&_mh_execute_header, v13, v14, "Received device unlock notification - Checking passkey status and enroll if eligible...", v34, 2u);
    }

    objc_storeStrong(&v36, 0);
    v33 = [v42[0] altDSIDForAccount:v41];
    v32 = [[AKAppleIDPasskeySetupContext alloc] initWithAltDSID:v33];
    v4 = [AKAppleIDPasskeyValidator alloc];
    v2 = v41;
    v3 = v42[0];
    v8 = +[AKFeatureManager sharedManager];
    v7 = objc_opt_new();
    v6 = +[AKDevice currentDevice];
    v5 = objc_opt_new();
    v31 = [(AKAppleIDPasskeyValidator *)v4 initWithAccount:v2 accountManager:v3 featureManager:v8 configuration:v7 device:v6 cdpFactory:v43->_passkeyAuthenticationController authenticationController:?];
    _objc_release(v5);
    _objc_release(v6);
    _objc_release(v7);
    _objc_release(v8);
    v30 = [AKAppleIDPasskeyEnrollController challengeProviderWithContext:v32 client:0];
    v29 = [AKAppleIDPasskeyEnrollController registrationProviderWithContext:v32 client:0];
    v9 = [AKAppleIDPasskeyCredentialProvider alloc];
    v10 = objc_opt_new();
    v28 = [(AKAppleIDPasskeyCredentialProvider *)v9 initWithAuthorizationController:?];
    _objc_release(v10);
    v27 = [[AKAppleIDPasskeyEnrollController alloc] initWithPasskeyValidator:v31 challengeProvider:v30 credentialProvider:v28 registrationProvider:v29];
    objc_initWeak(&v26, v43);
    v12 = v27;
    v11 = v32;
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_10016BF4C;
    v21 = &unk_100324FF8;
    objc_copyWeak(&v25, &v26);
    v22 = _objc_retain(v41);
    v23 = _objc_retain(v31);
    v24 = _objc_retain(v42[0]);
    [v12 setupPasskeyWithContext:v11 forced:0 completion:&v17];
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v26);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
    v37 = 0;
  }

  else
  {
    location = _AKLogPasskey();
    v39 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v39;
      sub_10001CEEC(v38);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Received device unlock notification - Skipping passkey status & enrollment checks since there is no primary authKit account", v38, 2u);
    }

    objc_storeStrong(&location, 0);
    v37 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(v42, 0);
}

+ (id)sharedInstance
{
  v5 = &unk_1003748A0;
  location = 0;
  objc_storeStrong(&location, &stru_100324F50);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374898;

  return v2;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_authServiceListener)
  {
    [(NSXPCListener *)v4->_authServiceListener invalidate];
    [(NSXPCListener *)v4->_authServiceListener setDelegate:?];
    objc_storeStrong(&v4->_authServiceListener, 0);
  }

  if (v4->_anisetteServiceListener)
  {
    [(NSXPCListener *)v4->_anisetteServiceListener invalidate];
    [(NSXPCListener *)v4->_anisetteServiceListener setDelegate:?];
    objc_storeStrong(&v4->_anisetteServiceListener, 0);
  }

  if (v4->_authorizationServiceListener)
  {
    [(NSXPCListener *)v4->_authorizationServiceListener invalidate];
    [(NSXPCListener *)v4->_authorizationServiceListener setDelegate:?];
    objc_storeStrong(&v4->_authorizationServiceListener, 0);
  }

  if (v4->_authorizationEndorserRapportClient)
  {
    [(AKAuthorizationEndorserRapportClient *)v4->_authorizationEndorserRapportClient setDelegate:?];
    objc_storeStrong(&v4->_authorizationEndorserRapportClient, 0);
  }

  if (v4->_privateEmailServiceListener)
  {
    [(NSXPCListener *)v4->_privateEmailServiceListener invalidate];
    [(NSXPCListener *)v4->_privateEmailServiceListener setDelegate:?];
    objc_storeStrong(&v4->_privateEmailServiceListener, 0);
  }

  if (v4->_custodianServiceListener)
  {
    [(NSXPCListener *)v4->_custodianServiceListener invalidate];
    [(NSXPCListener *)v4->_custodianServiceListener setDelegate:?];
    objc_storeStrong(&v4->_custodianServiceListener, 0);
  }

  if (v4->_symmetricKeyServiceListener)
  {
    [(NSXPCListener *)v4->_symmetricKeyServiceListener invalidate];
    [(NSXPCListener *)v4->_symmetricKeyServiceListener setDelegate:?];
    objc_storeStrong(&v4->_symmetricKeyServiceListener, 0);
  }

  if (v4->_inheritanceDaemonService)
  {
    objc_storeStrong(&v4->_inheritanceDaemonService, 0);
  }

  if (v4->_walrusDaemonService)
  {
    objc_storeStrong(&v4->_walrusDaemonService, 0);
  }

  if (v4->_appleIDPasskeyDaemonService)
  {
    objc_storeStrong(&v4->_appleIDPasskeyDaemonService, 0);
  }

  if (v4->_passkeyAuthenticationController)
  {
    objc_storeStrong(&v4->_passkeyAuthenticationController, 0);
  }

  if (v4->_signInWithAppleDaemonService)
  {
    objc_storeStrong(&v4->_signInWithAppleDaemonService, 0);
  }

  [(AKDaemonConnectionManager *)v4 _stopObservingLanguageChangeNotification];
  [(AKDaemonConnectionManager *)v4 _stopObservingSharingModePolicyChangeNotfication];
  [(AKDaemonConnectionManager *)v4 _stopObservingRegulatoryEligibilityChangeNotification];
  [(AKDaemonConnectionManager *)v4 _stopObservingBluetoothPairingNotification];
  [(AKDaemonConnectionManager *)v4 _stopObservingInputNeededNotification];
  [(AKDaemonConnectionManager *)v4 _stopObservingLocaleChangeNotification];
  v2.receiver = v4;
  v2.super_class = AKDaemonConnectionManager;
  [(AKDaemonConnectionManager *)&v2 dealloc];
}

- (AKDaemonConnectionManager)init
{
  v36 = a2;
  v37 = 0;
  v35.receiver = self;
  v35.super_class = AKDaemonConnectionManager;
  v37 = [(AKDaemonConnectionManager *)&v35 init];
  objc_storeStrong(&v37, v37);
  if (v37)
  {
    v34 = +[AKURLBagService sharedBagService];
    [AKURLBag setSharedMemorySpaceBagProvider:v34];
    v2 = [NSXPCListener alloc];
    v3 = [v2 initWithMachServiceName:AKAppleIDAuthenticationMachService];
    authServiceListener = v37->_authServiceListener;
    v37->_authServiceListener = v3;
    _objc_release(authServiceListener);
    v5 = [NSXPCListener alloc];
    v6 = [v5 initWithMachServiceName:AKAnisetteProvisioningMachService];
    anisetteServiceListener = v37->_anisetteServiceListener;
    v37->_anisetteServiceListener = v6;
    _objc_release(anisetteServiceListener);
    v8 = [NSXPCListener alloc];
    v9 = [v8 initWithMachServiceName:AKAuthorizationMachService];
    authorizationServiceListener = v37->_authorizationServiceListener;
    v37->_authorizationServiceListener = v9;
    _objc_release(authorizationServiceListener);
    v11 = [NSXPCListener alloc];
    v12 = [v11 initWithMachServiceName:AKCustodianMachService];
    custodianServiceListener = v37->_custodianServiceListener;
    v37->_custodianServiceListener = v12;
    _objc_release(custodianServiceListener);
    v14 = objc_alloc_init(AKInheritanceDaemonService);
    inheritanceDaemonService = v37->_inheritanceDaemonService;
    v37->_inheritanceDaemonService = v14;
    _objc_release(inheritanceDaemonService);
    v16 = [NSXPCListener alloc];
    v17 = [v16 initWithMachServiceName:AKPrivateEmailMachService];
    privateEmailServiceListener = v37->_privateEmailServiceListener;
    v37->_privateEmailServiceListener = v17;
    _objc_release(privateEmailServiceListener);
    v19 = [NSXPCListener alloc];
    v20 = [v19 initWithMachServiceName:AKSymmetricKeyMachService];
    symmetricKeyServiceListener = v37->_symmetricKeyServiceListener;
    v37->_symmetricKeyServiceListener = v20;
    _objc_release(symmetricKeyServiceListener);
    v22 = objc_alloc_init(AKFidoDaemonService);
    fidoDaemonService = v37->_fidoDaemonService;
    v37->_fidoDaemonService = v22;
    _objc_release(fidoDaemonService);
    v24 = objc_alloc_init(AKWalrusDaemonService);
    walrusDaemonService = v37->_walrusDaemonService;
    v37->_walrusDaemonService = v24;
    _objc_release(walrusDaemonService);
    v26 = objc_alloc_init(AKAppleIDPasskeyDaemonService);
    appleIDPasskeyDaemonService = v37->_appleIDPasskeyDaemonService;
    v37->_appleIDPasskeyDaemonService = v26;
    _objc_release(appleIDPasskeyDaemonService);
    v28 = objc_alloc_init(AKAppleIDPasskeyAuthenticationController);
    passkeyAuthenticationController = v37->_passkeyAuthenticationController;
    v37->_passkeyAuthenticationController = v28;
    _objc_release(passkeyAuthenticationController);
    v30 = objc_alloc_init(AKSignInWithAppleDaemonService);
    signInWithAppleDaemonService = v37->_signInWithAppleDaemonService;
    v37->_signInWithAppleDaemonService = v30;
    _objc_release(signInWithAppleDaemonService);
    objc_storeStrong(&v34, 0);
  }

  v33 = _objc_retain(v37);
  objc_storeStrong(&v37, 0);
  return v33;
}

- (void)start
{
  +[NSXPCListener enableTransactions];
  [(AKDaemonConnectionManager *)self _startMonitoringPushEvents];
  v2 = +[AKAppleIDCheckInHelperService sharedService];
  [v2 start];
  _objc_release(v2);
  v3 = +[AKAuthorizationListUpdateService sharedService];
  [v3 start];
  _objc_release(v3);
  v4 = +[AKAppleIDPasskeyHealthCheckService sharedService];
  [(AKAppleIDPasskeyHealthCheckService *)v4 start];
  _objc_release(v4);
  v5 = +[AKSignInWithAppleHealthCheckService sharedService];
  [(AKSignInWithAppleHealthCheckService *)v5 registerService];
  _objc_release(v5);
  v6 = +[AKPostInstallService sharedService];
  [v6 start];
  _objc_release(v6);
  [(AKDaemonConnectionManager *)self _setupServices];
  [(AKDaemonConnectionManager *)self _startListeningForMessagesFromPairedDevice];
  [(AKDaemonConnectionManager *)self _monitorXPCEvents];
  [(AKDaemonConnectionManager *)self _beginObservingLanguageChangeNotfication];
  [(AKDaemonConnectionManager *)self _beginObservingSharingModePolicyChangeNotfication];
  [(AKDaemonConnectionManager *)self _beginObservingRegulatoryEligibilityChangeNotification];
  [(AKDaemonConnectionManager *)self _beginObservingBluetoothPairingNotification];
  [(AKDaemonConnectionManager *)self _beginObservingInputNeededNotification];
  [(AKDaemonConnectionManager *)self _beginObservingLocaleChangeNotification];
  [(AKDaemonConnectionManager *)self _exitForSIGTERM];
  v7 = dispatch_get_global_queue(21, 0);
  dispatch_async(v7, &stru_100324F70);
  _objc_release(v7);
}

- (void)startForTesting
{
  v3 = [AKURLBag bagForAltDSID:0];
  v2 = +[AKURLBagService sharedBagService];
  [v3 setBagProvider:?];
  _objc_release(v2);
  _objc_release(v3);
  [(AKDaemonConnectionManager *)self _setupServices];
}

- (void)_setupServices
{
  v31 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v29 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v11 = [(NSXPCListener *)v31->_authServiceListener serviceName];
    sub_1000194D4(v41, v11);
    _os_log_debug_impl(&_mh_execute_header, location[0], v29, "Resuming XPC listener for Mach service %@...", v41, 0xCu);
    _objc_release(v11);
  }

  objc_storeStrong(location, 0);
  [(NSXPCListener *)v31->_authServiceListener setDelegate:v31];
  [(NSXPCListener *)v31->_authServiceListener resume];
  v28 = _AKLogSystem();
  v27 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(NSXPCListener *)v31->_anisetteServiceListener serviceName];
    sub_1000194D4(v40, v10);
    _os_log_debug_impl(&_mh_execute_header, v28, v27, "Resuming XPC listener for Mach service %@...", v40, 0xCu);
    _objc_release(v10);
  }

  objc_storeStrong(&v28, 0);
  [(NSXPCListener *)v31->_anisetteServiceListener setDelegate:v31];
  [(NSXPCListener *)v31->_anisetteServiceListener resume];
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(NSXPCListener *)v31->_authorizationServiceListener serviceName];
    sub_1000194D4(v39, v9);
    _os_log_debug_impl(&_mh_execute_header, v26, v25, "Resuming XPC listener for Mach service %@...", v39, 0xCu);
    _objc_release(v9);
  }

  objc_storeStrong(&v26, 0);
  [(NSXPCListener *)v31->_authorizationServiceListener setDelegate:v31];
  [(NSXPCListener *)v31->_authorizationServiceListener resume];
  oslog = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(NSXPCListener *)v31->_custodianServiceListener serviceName];
    sub_1000194D4(v38, v8);
    _os_log_debug_impl(&_mh_execute_header, oslog, v23, "Resuming XPC listener for Mach service %@...", v38, 0xCu);
    _objc_release(v8);
  }

  objc_storeStrong(&oslog, 0);
  [(NSXPCListener *)v31->_custodianServiceListener setDelegate:v31];
  [(NSXPCListener *)v31->_custodianServiceListener resume];
  v22 = _AKLogSystem();
  v21 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(AAFService *)v31->_inheritanceDaemonService serviceName];
    sub_1000194D4(v37, v7);
    _os_log_debug_impl(&_mh_execute_header, v22, v21, "Resuming XPC listener for Mach service %@...", v37, 0xCu);
    _objc_release(v7);
  }

  objc_storeStrong(&v22, 0);
  [(AAFService *)v31->_inheritanceDaemonService startup];
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NSXPCListener *)v31->_privateEmailServiceListener serviceName];
    sub_1000194D4(v36, v6);
    _os_log_debug_impl(&_mh_execute_header, v20, v19, "Resuming XPC listener for Mach service %@...", v36, 0xCu);
    _objc_release(v6);
  }

  objc_storeStrong(&v20, 0);
  [(NSXPCListener *)v31->_privateEmailServiceListener setDelegate:v31];
  [(NSXPCListener *)v31->_privateEmailServiceListener resume];
  v18 = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(NSXPCListener *)v31->_symmetricKeyServiceListener serviceName];
    sub_1000194D4(v35, v5);
    _os_log_debug_impl(&_mh_execute_header, v18, v17, "Resuming XPC listener for Mach service %@...", v35, 0xCu);
    _objc_release(v5);
  }

  objc_storeStrong(&v18, 0);
  [(NSXPCListener *)v31->_symmetricKeyServiceListener setDelegate:v31];
  [(NSXPCListener *)v31->_symmetricKeyServiceListener resume];
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(AAFService *)v31->_fidoDaemonService serviceName];
    sub_1000194D4(v34, v4);
    _os_log_debug_impl(&_mh_execute_header, v16, v15, "Resuming XPC listener for Mach service %@...", v34, 0xCu);
    _objc_release(v4);
  }

  objc_storeStrong(&v16, 0);
  [(AAFService *)v31->_fidoDaemonService startup];
  v14 = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v3 = [(AAFService *)v31->_walrusDaemonService serviceName];
    sub_1000194D4(v33, v3);
    _os_log_debug_impl(&_mh_execute_header, v14, v13, "Resuming XPC listener for Mach service %@...", v33, 0xCu);
    _objc_release(v3);
  }

  objc_storeStrong(&v14, 0);
  [(AAFService *)v31->_walrusDaemonService startup];
  v12 = _AKLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v2 = [(AAFService *)v31->_appleIDPasskeyDaemonService serviceName];
    sub_1000194D4(v32, v2);
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Resuming XPC listener for Mach service %@...", v32, 0xCu);
    _objc_release(v2);
  }

  objc_storeStrong(&v12, 0);
  [(AAFService *)v31->_appleIDPasskeyDaemonService startup];
  [(AAFService *)v31->_signInWithAppleDaemonService startup];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = 0;
  objc_storeStrong(&v51, a4);
  v4 = [AKClient alloc];
  v50 = [(AKClient *)v4 initWithConnection:v51];
  v49 = 0;
  v48 = 0;
  if (location[0] == v53->_authorizationServiceListener)
  {
    v48 = 1;
  }

  else
  {
    v47 = v49;
    v34 = [(AKDaemonConnectionManager *)v53 shouldAllowClient:v50 logging:&v47];
    objc_storeStrong(&v49, v47);
    v48 = v34;
  }

  if (v48)
  {
    if (location[0] == v53->_authServiceListener)
    {
      v28 = [AKAppleIDAuthenticationService alloc];
      v27 = v50;
      v29 = [(AKDaemonConnectionManager *)v53 passwordResetPresenter];
      v45 = [(AKAppleIDAuthenticationService *)v28 initWithClient:v27 passwordResetPresenter:?];
      _objc_release(v29);
      [v51 setExportedObject:v45];
      v30 = v51;
      v31 = +[AKAppleIDAuthenticationDaemonInterface XPCInterface];
      [v30 setExportedInterface:?];
      _objc_release(v31);
      v32 = v51;
      v33 = +[AKAppleIDAuthenticationClientInterface XPCInterface];
      [v32 setRemoteObjectInterface:?];
      _objc_release(v33);
      objc_storeStrong(&v45, 0);
    }

    else if (location[0] == v53->_anisetteServiceListener)
    {
      v44 = _AKTrafficLogSubsystem();
      v43 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v56, v49);
        _os_log_debug_impl(&_mh_execute_header, v44, v43, "%@", v56, 0xCu);
      }

      objc_storeStrong(&v44, 0);
      v5 = [AKAnisetteProvisioningService alloc];
      v42 = [(AKAnisetteProvisioningService *)v5 initWithClient:v50];
      [v51 setExportedObject:v42];
      v23 = v51;
      v24 = +[AKAnisetteProvisioningDaemonInterface XPCInterface];
      [v23 setExportedInterface:?];
      _objc_release(v24);
      v25 = v51;
      v26 = +[AKAnisetteProvisioningClientInterface XPCInterface];
      [v25 setRemoteObjectInterface:?];
      _objc_release(v26);
      objc_storeStrong(&v42, 0);
    }

    else if (location[0] == v53->_authorizationServiceListener)
    {
      v6 = [AKAuthorizationDaemonService alloc];
      v41 = [(AKAuthorizationDaemonService *)v6 initWithClient:v50];
      [v51 setExportedObject:v41];
      v19 = v51;
      v20 = +[AKAuthorizationDaemonInterface XPCInterface];
      [v19 setExportedInterface:?];
      _objc_release(v20);
      v21 = v51;
      v22 = +[AKAuthorizationClientInterface XPCInterface];
      [v21 setRemoteObjectInterface:?];
      _objc_release(v22);
      objc_storeStrong(&v41, 0);
    }

    else if (location[0] == v53->_custodianServiceListener)
    {
      v7 = [AKCustodianDaemonService alloc];
      v40 = [(AKCustodianDaemonService *)v7 initWithClient:v50];
      [v51 setExportedObject:v40];
      v17 = v51;
      v18 = +[AKCustodianDaemonInterface XPCInterface];
      [v17 setExportedInterface:?];
      _objc_release(v18);
      objc_storeStrong(&v40, 0);
    }

    else if (location[0] == v53->_privateEmailServiceListener)
    {
      v39 = +[AKPrivateEmailStoreManager sharedInstance];
      v8 = [AKPrivateEmailDaemonService alloc];
      v38 = [(AKPrivateEmailDaemonService *)v8 initWithClient:v50 store:v39];
      [v51 setExportedObject:v38];
      v13 = v51;
      v14 = +[AKPrivateEmailDaemonInterface XPCInterface];
      [v13 setExportedInterface:?];
      _objc_release(v14);
      v15 = v51;
      v16 = +[AKPrivateEmailClientInterface XPCInterface];
      [v15 setRemoteObjectInterface:?];
      _objc_release(v16);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
    }

    else if (location[0] == v53->_symmetricKeyServiceListener)
    {
      v9 = [AKSymmetricKeyDaemonService alloc];
      v37 = [(AKSymmetricKeyDaemonService *)v9 initWithClient:v50];
      [v51 setExportedObject:v37];
      v11 = v51;
      v12 = +[AKSymmetricKeyDaemonInterface XPCInterface];
      [v11 setExportedInterface:?];
      _objc_release(v12);
      objc_storeStrong(&v37, 0);
    }

    else
    {
      v36 = _AKLogSystem();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v55, location[0]);
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Fatal error! Unknown XPC listener: %@", v55, 0xCu);
      }

      objc_storeStrong(&v36, 0);
    }

    [v51 resume];
    v54 = 1;
    v46 = 1;
  }

  else
  {
    v54 = 0;
    v46 = 1;
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  return v54 & 1;
}

- (BOOL)shouldAllowClient:(id)a3 logging:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v23 = 0;
  v22 = 0;
  if ([location[0] hasWriteAccess])
  {
    v4 = [NSString stringWithFormat:@"New connection from client %@ with the AK write entitlment.", location[0]];
    v5 = v22;
    v22 = v4;
    _objc_release(v5);
    v23 = 1;
  }

  else if ([location[0] hasInternalAccess])
  {
    v6 = [NSString stringWithFormat:@"New connection from client %@ (internal).", location[0]];
    v7 = v22;
    v22 = v6;
    _objc_release(v7);
    v23 = 1;
  }

  else if ([location[0] hasPrivateAccess])
  {
    v8 = [NSString stringWithFormat:@"New connection from client %@ (private).", location[0]];
    v9 = v22;
    v22 = v8;
    _objc_release(v9);
    v23 = 1;
  }

  else if ([location[0] hasPublicAccess])
  {
    v10 = [NSString stringWithFormat:@"New connection from client %@ (public).", location[0]];
    v11 = v22;
    v22 = v10;
    _objc_release(v11);
    v23 = 1;
  }

  else if ([location[0] hasSiwaEntitlement])
  {
    v12 = [NSString stringWithFormat:@"New connection from client %@ (beleverde).", location[0]];
    v13 = v22;
    v22 = v12;
    _objc_release(v13);
    v23 = 1;
  }

  else if ([location[0] hasPrivateSignedAccess])
  {
    v14 = [NSString stringWithFormat:@"New connection from client %@ because of internal code signing.", location[0]];
    v15 = v22;
    v22 = v14;
    _objc_release(v15);
    v23 = 1;
  }

  else
  {
    v16 = [NSString stringWithFormat:@"Rejecting connection from client %@ because it is not entitled.", location[0]];
    v17 = v22;
    v22 = v16;
    _objc_release(v17);
  }

  if (v24)
  {
    v18 = v22;
    *v24 = v22;
  }

  v20 = v23;
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  return v20 & 1;
}

- (void)_startMonitoringPushEvents
{
  v18[2] = self;
  v18[1] = a2;
  v18[0] = +[NSMutableArray array];
  v7 = +[AKPiggybackController sharedController];
  [v18[0] addObject:?];
  _objc_release(v7);
  v8 = +[AKFollowUpManagerFactory sharedAuthKitFollowupPushDelegate];
  [v18[0] addObject:?];
  _objc_release(v8);
  v9 = +[AKTTRController sharedController];
  [v18[0] addObject:?];
  _objc_release(v9);
  v10 = +[AKDeviceListController sharedController];
  [v18[0] addObject:?];
  _objc_release(v10);
  v11 = +[AKUserInfoController sharedController];
  [v18[0] addObject:?];
  _objc_release(v11);
  v12 = +[AKAppleIDCheckInHelperService sharedService];
  [v18[0] addObject:?];
  _objc_release(v12);
  v13 = +[AKUserConfigController sharedController];
  [v18[0] addObject:?];
  _objc_release(v13);
  v14 = +[AKSignOutManager sharedManager];
  [v18[0] addObject:?];
  _objc_release(v14);
  location = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    log = location;
    type = v16;
    sub_10001CEEC(v15);
    _os_log_impl(&_mh_execute_header, log, type, "SecurePake feature is enabled, adding secure pake manager to push delegates", v15, 2u);
  }

  objc_storeStrong(&location, 0);
  v2 = v18[0];
  v3 = +[AKSecurePakeManager sharedManager];
  [v2 addObject:?];
  _objc_release(v3);
  v4 = +[AKAppleIDPushHelperService sharedService];
  [v4 startWithDelegates:v18[0]];
  _objc_release(v4);
  objc_storeStrong(v18, 0);
}

- (void)_monitorXPCEvents
{
  v19 = self;
  v18[1] = a2;
  v2 = &_dispatch_main_q;
  targetq = &_dispatch_main_q;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_100016050;
  v17 = &unk_100320E78;
  v18[0] = _objc_retain(v19);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", targetq, &v13);
  _objc_release(targetq);
  v3 = &_dispatch_main_q;
  v7 = &_dispatch_main_q;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10016AC28;
  v11[3] = &unk_100320E78;
  v12 = _objc_retain(v19);
  xpc_set_event_stream_handler("com.apple.rapport.matching", v7, v11);
  _objc_release(v7);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v5 = type;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, log, v5, "Registered for XPC events", v8, 2u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v18, 0);
}

- (BOOL)_isPasscodeChangeNotification:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] isEqual:MCPasscodeChangedNotification];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)_isBiometricRatchetStatusChangeDarwinNotification:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] isEqualToString:@"com.apple.LocalAuthentication.ratchet.StateDidChange"];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)_isDeviceScreenUnlockNotification:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  v5 = [NSString stringWithUTF8String:kSBSLockStateNotifyKey];
  v6 = [v4 isEqual:?];
  _objc_release(v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)_checkScreenUnlockStateFromNotificationDictionary:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  uint64 = xpc_dictionary_get_uint64(location[0], "_State");
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSNumber numberWithUnsignedLongLong:uint64];
    sub_1000194D4(v8, v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Lockscreen state: %@ ", v8, 0xCu);
    _objc_release(v3);
  }

  objc_storeStrong(&oslog, 0);
  if (!uint64)
  {
    [AKAppleIDCheckInHelperService setCheckInAllowedForAllAccountsToValue:1];
    [(AKDaemonConnectionManager *)v7 _enrollPasskeyIfEligible];
  }

  objc_storeStrong(location, 0);
}

- (void)_startListeningForMessagesFromPairedDevice
{
  location[2] = self;
  location[1] = a2;
  if (getenv("__OSINSTALL_ENVIRONMENT"))
  {
    location[0] = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v11;
      sub_10001CEEC(v10);
      _os_log_impl(&_mh_execute_header, log, type, "We are running in recovery. Leaving IDS alone.", v10, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else if (getenv("__AKSYNCBUBBLE"))
  {
    v9 = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v9;
      v4 = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, v3, v4, "We are running in the sync bubble. Leaving IDS alone.", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    v2 = +[AKPeerIDSAnisetteService sharedService];
    [v2 startListeningForMessagesFromPairedDevice];
    _objc_release(v2);
  }
}

- (void)_exitForSIGTERM
{
  source[2] = &self->super;
  source[1] = a2;
  source[0] = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  dispatch_source_set_event_handler(source[0], &stru_100324FD0);
  dispatch_resume(source[0]);
  objc_storeStrong(source, 0);
}

- (void)_beginObservingRegulatoryEligibilityChangeNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Begin observing eligibility status change.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(center, v8, sub_10016B5FC, @"com.apple.os-eligibility-domain.change", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopObservingRegulatoryEligibilityChangeNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Stop observing eligibility status change.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(center, v8, @"com.apple.os-eligibility-domain.change", 0);
}

- (void)_beginObservingBluetoothPairingNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Begin observing bluetooth pairings.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(center, v8, sub_10016B83C, @"com.apple.bluetooth.pairingWithReason", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopObservingBluetoothPairingNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Stop observing bluetooth pairings.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(center, v8, @"com.apple.bluetooth.pairingWithReason", 0);
}

- (void)_beginObservingInputNeededNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Begin observing eligibility input needed notification.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(center, v8, sub_10016BA90, @"com.apple.os-eligibility-domain.input-needed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopObservingInputNeededNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Stop observing eligibility input needed notification.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(center, v8, @"com.apple.os-eligibility-domain.input-needed", 0);
}

- (void)_beginObservingLocaleChangeNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Begin observing locale change notification.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(center, v8, sub_10016BCE0, @"NSCurrentLocaleDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopObservingLocaleChangeNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Stop observing locale change notification.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(center, v8, @"NSCurrentLocaleDidChangeNotification", 0);
}

- (void)_updateRestrictedSharingMode
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Updating current sharing mode.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = +[AKDevice currentDevice];
  [v2 _setCurrentSharingMode];
  _objc_release(v2);
}

- (void)_updatePasskeyKeychainStatusForAccount:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAppleIDPasskeyAuthenticationController *)v4->_passkeyAuthenticationController appleIDPasskeyStatusForAccount:location[0] withCompletion:&stru_100325018];
  objc_storeStrong(location, 0);
}

- (void)_performPasskeyCleanupWithPasskeyValidator:(id)a3 authenticationController:(id)a4 accountManager:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v5 = [AKAppleIDPasskeyCleanupController alloc];
  v8 = [(AKAppleIDPasskeyCleanupController *)v5 initWithPasskeyValidator:location[0] authenticationController:v10 accountManager:v9];
  [(AKAppleIDPasskeyCleanupController *)v8 cleanupPasskeysFromKeychainWithcompletion:&stru_100325038];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isKeychainSharingGroupUpdateDarwinNotification:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] isEqualToString:@"com.apple.security.kcsharing.groupsupdated"];
  objc_storeStrong(location, 0);
  return v4;
}

- (void)_handleKeychainSharingGroupUpdateNotification
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v27;
    sub_10001CEEC(v26);
    _os_log_impl(&_mh_execute_header, log, type, "Received KCSharingGroupUpdateNotification", v26, 2u);
  }

  objc_storeStrong(location, 0);
  v25 = +[AKAccountManager sharedInstance];
  v24 = [v25 primaryAuthKitAccount];
  if (v24)
  {
    v19 = _AKLogSiwa();
    v18 = 2;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v6 = v19;
      v7 = v18;
      sub_10001CEEC(v17);
      _os_log_debug_impl(&_mh_execute_header, v6, v7, "Setting sharingGroupLastNotificationDate", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    v4 = v25;
    v5 = +[NSDate date];
    [v4 setSharingGroupLastNotificationDate:? forAccount:?];
    _objc_release(v5);
    v16 = 0;
    v15 = 0;
    [v25 saveAccount:v24 error:&v15];
    objc_storeStrong(&v16, v15);
    if (v16)
    {
      v14 = _AKLogSiwa();
      v13 = 16;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v2 = v14;
        v3 = v13;
        sub_10001CEEC(v12);
        _os_log_error_impl(&_mh_execute_header, v2, v3, "Error occurred while saving sharingGroupLastNotificationDate to account", v12, 2u);
      }

      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
    v20 = 0;
  }

  else
  {
    v23 = _AKLogSiwa();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v23;
      v9 = v22;
      sub_10001CEEC(v21);
      _os_log_impl(&_mh_execute_header, v8, v9, "No primary AuthKit account found.", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    v20 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
}

@end