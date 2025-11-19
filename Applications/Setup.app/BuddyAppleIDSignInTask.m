@interface BuddyAppleIDSignInTask
- (BYPasscodeCacheManager)cacheManager;
- (BuddyAppleIDSignInTask)initWithFeatureFlags:(id)a3 accountTools:(id)a4;
- (id)_createAuthenticationContext;
- (id)_createServiceContextWithAuthenticationResults:(id)a3;
- (id)_requiredTerms;
- (void)_addCachedLocalSecretToCDPContext:(id)a3;
- (void)_authenticateWithContext:(id)a3 completion:(id)a4;
- (void)_signInToAllServicesUsingContext:(id)a3 serviceOwnersManager:(id)a4 completion:(id)a5;
- (void)_updateAgreedTerms:(id)a3;
- (void)authenticateForAccountCreationWithCompletion:(id)a3;
- (void)authenticateForCredentialRecoveryWithCompletion:(id)a3;
- (void)authenticateWithProximity:(id)a3;
- (void)authenticateWithUsername:(id)a3 companionDevice:(id)a4 anisetteDataProvider:(id)a5 completion:(id)a6;
- (void)authenticateWithUsername:(id)a3 password:(id)a4 completion:(id)a5;
- (void)prepareSignInContext:(id)a3;
- (void)signInToAllServicesWithAuthenticationResults:(id)a3 completion:(id)a4;
- (void)signInToServices:(id)a3 authenticationResults:(id)a4 completion:(id)a5;
@end

@implementation BuddyAppleIDSignInTask

- (BuddyAppleIDSignInTask)initWithFeatureFlags:(id)a3 accountTools:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v5 = v12;
  v12 = 0;
  v9.receiver = v5;
  v9.super_class = BuddyAppleIDSignInTask;
  v12 = [(BuddyAppleIDSignInTask *)&v9 init];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    *(v12 + 3) = 1;
    *(v12 + 10) = 1;
    *(v12 + 11) = 1;
    v6 = +[AMSDevice deviceIsBundle];
    *(v12 + 14) = v6 & 1;
    objc_storeStrong(v12 + 6, location[0]);
    objc_storeStrong(v12 + 7, obj);
  }

  v7 = v12;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (void)authenticateWithProximity:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = objc_alloc_init(AKAppleIDProximityAuthenticationContext);
  [v5 setProximityAIDAHandler:&stru_10032E020];
  v3 = [(BuddyAppleIDSignInTask *)v7 navigationController];
  [v5 setPresentingViewController:v3];

  if ([(BuddyAppleIDSignInTask *)v7 requireAppleMAID])
  {
    [v5 setAppProvidedContext:kAppleMAIDSignInProvidedContext];
  }

  v4 = objc_alloc_init(AKAppleIDAuthenticationController);
  [v4 authenticateWithContext:v5 completion:location[0]];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateWithUsername:(id)a3 password:(id)a4 completion:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v12 = [(BuddyAppleIDSignInTask *)v16 _createAuthenticationContext];
  v7 = location[0];
  v8 = +[NSCharacterSet whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];
  v10 = location[0];
  location[0] = v9;

  v11 = [(BuddyAppleIDSignInTask *)v16 navigationController];
  [v12 setPresentingViewController:v11];

  [v12 setUsername:location[0]];
  [v12 _setPassword:v14];
  if ([(BuddyAppleIDSignInTask *)v16 requireAppleMAID])
  {
    [v12 setAppProvidedContext:kAppleMAIDSignInProvidedContext];
  }

  [(BuddyAppleIDSignInTask *)v16 _authenticateWithContext:v12 completion:v13];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateWithUsername:(id)a3 companionDevice:(id)a4 anisetteDataProvider:(id)a5 completion:(id)a6
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = 0;
  objc_storeStrong(&v11, a6);
  v10 = [(BuddyAppleIDSignInTask *)v15 _createAuthenticationContext];
  [v10 setUsername:location[0]];
  v9 = [(BuddyAppleIDSignInTask *)v15 navigationController];
  [v10 setPresentingViewController:v9];

  [v10 setCompanionDevice:v13];
  [v10 setAnisetteDataProvider:v12];
  [v10 setIsUsernameEditable:0];
  [v10 setShouldAllowAppleIDCreation:0];
  [v10 setShouldForceInteractiveAuth:0];
  [v10 setShouldUpdatePersistentServiceTokens:1];
  [v10 _setProxyingForApp:1];
  if ([(BuddyAppleIDSignInTask *)v15 requireAppleMAID])
  {
    [v10 setAppProvidedContext:kAppleMAIDSignInProvidedContext];
  }

  [(BuddyAppleIDSignInTask *)v15 _authenticateWithContext:v10 completion:v11];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateForAccountCreationWithCompletion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(BuddyAppleIDSignInTask *)v6 _createAuthenticationContext];
  v3 = [(BuddyAppleIDSignInTask *)v6 navigationController];
  [v4 setPresentingViewController:v3];

  [v4 setNeedsNewAppleID:1];
  [(BuddyAppleIDSignInTask *)v6 _authenticateWithContext:v4 completion:location[0]];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateForCredentialRecoveryWithCompletion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(BuddyAppleIDSignInTask *)v6 _createAuthenticationContext];
  v3 = [(BuddyAppleIDSignInTask *)v6 navigationController];
  [v4 setPresentingViewController:v3];

  [v4 setNeedsCredentialRecovery:1];
  [(BuddyAppleIDSignInTask *)v6 _authenticateWithContext:v4 completion:location[0]];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)signInToAllServicesWithAuthenticationResults:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = v16;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10018CCA4;
  v10 = &unk_10032BC78;
  v11 = v16;
  v12 = location[0];
  v13 = v14;
  [(BuddyAppleIDSignInTask *)v5 prepareSignInContext:&v6];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)signInToServices:(id)a3 authenticationResults:(id)a4 completion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v7 = v20;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10018D6A0;
  v12 = &unk_10032D150;
  v13 = v20;
  v14 = v18;
  v15 = location[0];
  v16 = v17;
  [(BuddyAppleIDSignInTask *)v7 prepareSignInContext:&v8];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)prepareSignInContext:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDSignInTask *)v6 accountTools];

  if (v3)
  {
    v4 = [(BuddyAppleIDSignInTask *)v6 accountTools];
    [(BuddyAccountTools *)v4 waitUntilSafeToSignInWithCompletion:location[0]];
  }

  else if (location[0])
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

- (id)_createAuthenticationContext
{
  v5 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(AKAppleIDAuthenticationPurpleBuddyContext);
  [location[0] setShouldOfferSecurityUpgrade:1];
  [location[0] setServiceType:{-[BuddyAppleIDSignInTask serviceType](v5, "serviceType")}];
  [location[0] setAnticipateEscrowAttempt:1];
  if ((+[BYWarranty shouldDisplay]& 1) != 0)
  {
    [location[0] setHttpHeadersForRemoteUI:&off_10033CFE8];
  }

  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)_createServiceContextWithAuthenticationResults:(id)a3
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [CDPUIController alloc];
  v4 = [(BuddyAppleIDSignInTask *)v38 navigationController];
  v5 = [v3 initWithPresentingViewController:v4];
  [(BuddyAppleIDSignInTask *)v38 setCdpUIController:v5];

  v6 = [(BuddyAppleIDSignInTask *)v38 cdpUIController];
  [(CDPUIController *)v6 setForceInlinePresentation:1];

  v7 = [AAUISignInFlowControllerDelegate alloc];
  v8 = [(BuddyAppleIDSignInTask *)v38 navigationController];
  v9 = [v7 initWithPresentingViewController:v8];
  [(BuddyAppleIDSignInTask *)v38 setFlowControllerDelegate:v9];

  v10 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
  [(AAUISignInFlowControllerDelegate *)v10 setShouldStashLoginResponse:1];

  v11 = [location[0] objectForKeyedSubscript:AKAuthenticationAcceptedTermsKey];
  if (!v11)
  {
    v12 = [(BuddyAppleIDSignInTask *)v38 _requiredTerms];
    v13 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
    [(AAUISignInFlowControllerDelegate *)v13 setRequiredTerms:v12];
  }

  if ([(BuddyAppleIDSignInTask *)v38 enableFindMy])
  {
    v14 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
    [(AAUISignInFlowControllerDelegate *)v14 setFindMyActivationAction:0];
  }

  else
  {
    v14 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
    [(AAUISignInFlowControllerDelegate *)v14 setFindMyActivationAction:2];
  }

  v15 = [CDPContext alloc];
  v16 = [v15 initWithAuthenticationResults:location[0]];
  v17 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
  [(AAUISignInFlowControllerDelegate *)v17 setCdpContext:v16];

  LOBYTE(v16) = [(BuddyAppleIDSignInTask *)v38 ignoreLockAssertErrors];
  v18 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
  v19 = [(AAUISignInFlowControllerDelegate *)v18 cdpContext];
  [v19 set_ignoreLockAssertErrors:v16 & 1];

  v20 = [(BuddyAppleIDSignInTask *)v38 messageSession];
  v21 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
  v22 = [(AAUISignInFlowControllerDelegate *)v21 cdpContext];
  [v22 setSharingChannel:v20];

  LOBYTE(v20) = [(BuddyAppleIDSignInTask *)v38 restoreFromBackupMode];
  v23 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
  v24 = [(AAUISignInFlowControllerDelegate *)v23 cdpContext];
  [v24 setIsAttemptingBackupRestore:v20 & 1];

  v25 = [(BuddyAppleIDSignInTask *)v38 featureFlags];
  LOBYTE(v23) = [(BuddyFeatureFlags *)v25 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (v23)
  {
    v26 = v38;
    v27 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
    v28 = [(AAUISignInFlowControllerDelegate *)v27 cdpContext];
    [(BuddyAppleIDSignInTask *)v26 _addCachedLocalSecretToCDPContext:v28];
  }

  v36 = objc_alloc_init(AMSSignInContext);
  [v36 setIgnoreAccountConversion:1];
  [v36 setDebugReason:@"Setup Assistant"];
  v35 = objc_alloc_init(AIDAMutableServiceContext);
  [v35 setAuthenticationResults:location[0]];
  v29 = [(BuddyAppleIDSignInTask *)v38 navigationController];
  [v35 setViewController:v29];

  v30 = [(BuddyAppleIDSignInTask *)v38 cdpUIController];
  [v35 setCdpUiProvider:v30];

  [v35 setShouldForceOperation:0];
  [v35 setOperationUIPermissions:1];
  v39[0] = AIDAServiceTypeCloud;
  v31 = [(BuddyAppleIDSignInTask *)v38 flowControllerDelegate];
  v40[0] = v31;
  v39[1] = AIDAServiceTypeStore;
  v40[1] = v36;
  v32 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
  [v35 setSignInContexts:v32];

  v33 = v35;
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  return v33;
}

- (void)_addCachedLocalSecretToCDPContext:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v11 = [(BuddyAppleIDSignInTask *)v16 cacheManager];
    if (v11)
    {
      v8 = [v11 cachedLocalSecret];
      if (v8)
      {
        v3 = [v8 validatedSecret];
        [location[0] setCachedLocalSecret:v3];

        v4 = [v8 secretType];
        [location[0] setCachedLocalSecretType:v4];
        v5 = _BYLoggingFacility();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000B25DC(v17, "[BuddyAppleIDSignInTask _addCachedLocalSecretToCDPContext:]");
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Successfully updated local secret within CDPContext.", v17, 0xCu);
        }

        objc_storeStrong(&v5, 0);
        v12 = 0;
      }

      else
      {
        v7 = _BYLoggingFacility();
        v6 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000B25DC(v18, "[BuddyAppleIDSignInTask _addCachedLocalSecretToCDPContext:]");
          _os_log_impl(&_mh_execute_header, v7, v6, "%s: No cached local secret.", v18, 0xCu);
        }

        objc_storeStrong(&v7, 0);
        v12 = 1;
      }

      objc_storeStrong(&v8, 0);
    }

    else
    {
      v10 = _BYLoggingFacility();
      v9 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000B25DC(v19, "[BuddyAppleIDSignInTask _addCachedLocalSecretToCDPContext:]");
        _os_log_error_impl(&_mh_execute_header, v10, v9, "%s: Cache manager was released.", v19, 0xCu);
      }

      objc_storeStrong(&v10, 0);
      v12 = 1;
    }

    objc_storeStrong(&v11, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000B25DC(buf, "[BuddyAppleIDSignInTask _addCachedLocalSecretToCDPContext:]");
      _os_log_error_impl(&_mh_execute_header, oslog, v13, "%s: Could not add cached local secret to nil CDPContext", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v12 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_authenticateWithContext:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = objc_alloc_init(AKAppleIDAuthenticationController);
  [v5 authenticateWithContext:location[0] completion:v6];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (id)_requiredTerms
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_alloc_init(NSMutableSet);
  if ((+[BYWarranty shouldDisplay]& 1) != 0)
  {
    [location[0] addObject:AATermsEntryWarranty];
  }

  if ((+[BYLicenseAgreement needsToAcceptNewAgreement]& 1) != 0)
  {
    [location[0] addObject:AATermsEntryDevice];
  }

  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (void)_updateAgreedTerms:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] accountForService:AIDAServiceTypeCloud];
  v3 = [v5 aa_lastAgreedTermsInfo];
  v4 = [v3 objectForKeyedSubscript:@"SLAVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    +[BYLicenseAgreement recordUserAcceptedAgreementVersion:](BYLicenseAgreement, "recordUserAcceptedAgreementVersion:", [v4 integerValue]);
    +[BuddyTermsConditionsFlow didAgreeToServerTerms];
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_signInToAllServicesUsingContext:(id)a3 serviceOwnersManager:(id)a4 completion:(id)a5
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  if ([(BuddyAppleIDSignInTask *)v24 forceForegroundSignIn])
  {
    oslog = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v19;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v7, v8, "Forcing synchronous sign-in of all services...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v25[0] = AIDAServiceTypeCloud;
    v25[1] = AIDAServiceTypeStore;
    v25[2] = AIDAServiceTypeFaceTime;
    v25[3] = AIDAServiceTypeMessages;
    v25[4] = AIDAServiceTypeGameCenter;
    v17 = [NSArray arrayWithObjects:v25 count:5];
    v9 = v22;
    v10 = location[0];
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10018E818;
    v15 = &unk_10032E0C0;
    v16 = v21;
    [v9 signInToServices:v17 usingContext:v10 completion:&v11];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    [v22 signInToAllServicesInBackgroundUsingContext:location[0] completion:v21];
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (BYPasscodeCacheManager)cacheManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheManager);

  return WeakRetained;
}

@end