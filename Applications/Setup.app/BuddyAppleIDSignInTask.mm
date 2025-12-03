@interface BuddyAppleIDSignInTask
- (BYPasscodeCacheManager)cacheManager;
- (BuddyAppleIDSignInTask)initWithFeatureFlags:(id)flags accountTools:(id)tools;
- (id)_createAuthenticationContext;
- (id)_createServiceContextWithAuthenticationResults:(id)results;
- (id)_requiredTerms;
- (void)_addCachedLocalSecretToCDPContext:(id)context;
- (void)_authenticateWithContext:(id)context completion:(id)completion;
- (void)_signInToAllServicesUsingContext:(id)context serviceOwnersManager:(id)manager completion:(id)completion;
- (void)_updateAgreedTerms:(id)terms;
- (void)authenticateForAccountCreationWithCompletion:(id)completion;
- (void)authenticateForCredentialRecoveryWithCompletion:(id)completion;
- (void)authenticateWithProximity:(id)proximity;
- (void)authenticateWithUsername:(id)username companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion;
- (void)authenticateWithUsername:(id)username password:(id)password completion:(id)completion;
- (void)prepareSignInContext:(id)context;
- (void)signInToAllServicesWithAuthenticationResults:(id)results completion:(id)completion;
- (void)signInToServices:(id)services authenticationResults:(id)results completion:(id)completion;
@end

@implementation BuddyAppleIDSignInTask

- (BuddyAppleIDSignInTask)initWithFeatureFlags:(id)flags accountTools:(id)tools
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, flags);
  obj = 0;
  objc_storeStrong(&obj, tools);
  v5 = selfCopy;
  selfCopy = 0;
  v9.receiver = v5;
  v9.super_class = BuddyAppleIDSignInTask;
  selfCopy = [(BuddyAppleIDSignInTask *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    *(selfCopy + 3) = 1;
    *(selfCopy + 10) = 1;
    *(selfCopy + 11) = 1;
    v6 = +[AMSDevice deviceIsBundle];
    *(selfCopy + 14) = v6 & 1;
    objc_storeStrong(selfCopy + 6, location[0]);
    objc_storeStrong(selfCopy + 7, obj);
  }

  v7 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)authenticateWithProximity:(id)proximity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, proximity);
  v5 = objc_alloc_init(AKAppleIDProximityAuthenticationContext);
  [v5 setProximityAIDAHandler:&stru_10032E020];
  navigationController = [(BuddyAppleIDSignInTask *)selfCopy navigationController];
  [v5 setPresentingViewController:navigationController];

  if ([(BuddyAppleIDSignInTask *)selfCopy requireAppleMAID])
  {
    [v5 setAppProvidedContext:kAppleMAIDSignInProvidedContext];
  }

  v4 = objc_alloc_init(AKAppleIDAuthenticationController);
  [v4 authenticateWithContext:v5 completion:location[0]];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateWithUsername:(id)username password:(id)password completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v14 = 0;
  objc_storeStrong(&v14, password);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  _createAuthenticationContext = [(BuddyAppleIDSignInTask *)selfCopy _createAuthenticationContext];
  v7 = location[0];
  v8 = +[NSCharacterSet whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];
  v10 = location[0];
  location[0] = v9;

  navigationController = [(BuddyAppleIDSignInTask *)selfCopy navigationController];
  [_createAuthenticationContext setPresentingViewController:navigationController];

  [_createAuthenticationContext setUsername:location[0]];
  [_createAuthenticationContext _setPassword:v14];
  if ([(BuddyAppleIDSignInTask *)selfCopy requireAppleMAID])
  {
    [_createAuthenticationContext setAppProvidedContext:kAppleMAIDSignInProvidedContext];
  }

  [(BuddyAppleIDSignInTask *)selfCopy _authenticateWithContext:_createAuthenticationContext completion:v13];
  objc_storeStrong(&_createAuthenticationContext, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateWithUsername:(id)username companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v13 = 0;
  objc_storeStrong(&v13, device);
  v12 = 0;
  objc_storeStrong(&v12, provider);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  _createAuthenticationContext = [(BuddyAppleIDSignInTask *)selfCopy _createAuthenticationContext];
  [_createAuthenticationContext setUsername:location[0]];
  navigationController = [(BuddyAppleIDSignInTask *)selfCopy navigationController];
  [_createAuthenticationContext setPresentingViewController:navigationController];

  [_createAuthenticationContext setCompanionDevice:v13];
  [_createAuthenticationContext setAnisetteDataProvider:v12];
  [_createAuthenticationContext setIsUsernameEditable:0];
  [_createAuthenticationContext setShouldAllowAppleIDCreation:0];
  [_createAuthenticationContext setShouldForceInteractiveAuth:0];
  [_createAuthenticationContext setShouldUpdatePersistentServiceTokens:1];
  [_createAuthenticationContext _setProxyingForApp:1];
  if ([(BuddyAppleIDSignInTask *)selfCopy requireAppleMAID])
  {
    [_createAuthenticationContext setAppProvidedContext:kAppleMAIDSignInProvidedContext];
  }

  [(BuddyAppleIDSignInTask *)selfCopy _authenticateWithContext:_createAuthenticationContext completion:v11];
  objc_storeStrong(&_createAuthenticationContext, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateForAccountCreationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _createAuthenticationContext = [(BuddyAppleIDSignInTask *)selfCopy _createAuthenticationContext];
  navigationController = [(BuddyAppleIDSignInTask *)selfCopy navigationController];
  [_createAuthenticationContext setPresentingViewController:navigationController];

  [_createAuthenticationContext setNeedsNewAppleID:1];
  [(BuddyAppleIDSignInTask *)selfCopy _authenticateWithContext:_createAuthenticationContext completion:location[0]];
  objc_storeStrong(&_createAuthenticationContext, 0);
  objc_storeStrong(location, 0);
}

- (void)authenticateForCredentialRecoveryWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _createAuthenticationContext = [(BuddyAppleIDSignInTask *)selfCopy _createAuthenticationContext];
  navigationController = [(BuddyAppleIDSignInTask *)selfCopy navigationController];
  [_createAuthenticationContext setPresentingViewController:navigationController];

  [_createAuthenticationContext setNeedsCredentialRecovery:1];
  [(BuddyAppleIDSignInTask *)selfCopy _authenticateWithContext:_createAuthenticationContext completion:location[0]];
  objc_storeStrong(&_createAuthenticationContext, 0);
  objc_storeStrong(location, 0);
}

- (void)signInToAllServicesWithAuthenticationResults:(id)results completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v5 = selfCopy;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10018CCA4;
  v10 = &unk_10032BC78;
  v11 = selfCopy;
  v12 = location[0];
  v13 = v14;
  [(BuddyAppleIDSignInTask *)v5 prepareSignInContext:&v6];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)signInToServices:(id)services authenticationResults:(id)results completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, services);
  v18 = 0;
  objc_storeStrong(&v18, results);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v7 = selfCopy;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10018D6A0;
  v12 = &unk_10032D150;
  v13 = selfCopy;
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

- (void)prepareSignInContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  accountTools = [(BuddyAppleIDSignInTask *)selfCopy accountTools];

  if (accountTools)
  {
    accountTools2 = [(BuddyAppleIDSignInTask *)selfCopy accountTools];
    [(BuddyAccountTools *)accountTools2 waitUntilSafeToSignInWithCompletion:location[0]];
  }

  else if (location[0])
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

- (id)_createAuthenticationContext
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(AKAppleIDAuthenticationPurpleBuddyContext);
  [location[0] setShouldOfferSecurityUpgrade:1];
  [location[0] setServiceType:{-[BuddyAppleIDSignInTask serviceType](selfCopy, "serviceType")}];
  [location[0] setAnticipateEscrowAttempt:1];
  if ((+[BYWarranty shouldDisplay]& 1) != 0)
  {
    [location[0] setHttpHeadersForRemoteUI:&off_10033CFE8];
  }

  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)_createServiceContextWithAuthenticationResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v3 = [CDPUIController alloc];
  navigationController = [(BuddyAppleIDSignInTask *)selfCopy navigationController];
  v5 = [v3 initWithPresentingViewController:navigationController];
  [(BuddyAppleIDSignInTask *)selfCopy setCdpUIController:v5];

  cdpUIController = [(BuddyAppleIDSignInTask *)selfCopy cdpUIController];
  [(CDPUIController *)cdpUIController setForceInlinePresentation:1];

  v7 = [AAUISignInFlowControllerDelegate alloc];
  navigationController2 = [(BuddyAppleIDSignInTask *)selfCopy navigationController];
  v9 = [v7 initWithPresentingViewController:navigationController2];
  [(BuddyAppleIDSignInTask *)selfCopy setFlowControllerDelegate:v9];

  flowControllerDelegate = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
  [(AAUISignInFlowControllerDelegate *)flowControllerDelegate setShouldStashLoginResponse:1];

  v11 = [location[0] objectForKeyedSubscript:AKAuthenticationAcceptedTermsKey];
  if (!v11)
  {
    _requiredTerms = [(BuddyAppleIDSignInTask *)selfCopy _requiredTerms];
    flowControllerDelegate2 = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
    [(AAUISignInFlowControllerDelegate *)flowControllerDelegate2 setRequiredTerms:_requiredTerms];
  }

  if ([(BuddyAppleIDSignInTask *)selfCopy enableFindMy])
  {
    flowControllerDelegate3 = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
    [(AAUISignInFlowControllerDelegate *)flowControllerDelegate3 setFindMyActivationAction:0];
  }

  else
  {
    flowControllerDelegate3 = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
    [(AAUISignInFlowControllerDelegate *)flowControllerDelegate3 setFindMyActivationAction:2];
  }

  v15 = [CDPContext alloc];
  v16 = [v15 initWithAuthenticationResults:location[0]];
  flowControllerDelegate4 = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
  [(AAUISignInFlowControllerDelegate *)flowControllerDelegate4 setCdpContext:v16];

  LOBYTE(v16) = [(BuddyAppleIDSignInTask *)selfCopy ignoreLockAssertErrors];
  flowControllerDelegate5 = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
  cdpContext = [(AAUISignInFlowControllerDelegate *)flowControllerDelegate5 cdpContext];
  [cdpContext set_ignoreLockAssertErrors:v16 & 1];

  messageSession = [(BuddyAppleIDSignInTask *)selfCopy messageSession];
  flowControllerDelegate6 = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
  cdpContext2 = [(AAUISignInFlowControllerDelegate *)flowControllerDelegate6 cdpContext];
  [cdpContext2 setSharingChannel:messageSession];

  LOBYTE(messageSession) = [(BuddyAppleIDSignInTask *)selfCopy restoreFromBackupMode];
  flowControllerDelegate7 = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
  cdpContext3 = [(AAUISignInFlowControllerDelegate *)flowControllerDelegate7 cdpContext];
  [cdpContext3 setIsAttemptingBackupRestore:messageSession & 1];

  featureFlags = [(BuddyAppleIDSignInTask *)selfCopy featureFlags];
  LOBYTE(flowControllerDelegate7) = [(BuddyFeatureFlags *)featureFlags isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (flowControllerDelegate7)
  {
    v26 = selfCopy;
    flowControllerDelegate8 = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
    cdpContext4 = [(AAUISignInFlowControllerDelegate *)flowControllerDelegate8 cdpContext];
    [(BuddyAppleIDSignInTask *)v26 _addCachedLocalSecretToCDPContext:cdpContext4];
  }

  v36 = objc_alloc_init(AMSSignInContext);
  [v36 setIgnoreAccountConversion:1];
  [v36 setDebugReason:@"Setup Assistant"];
  v35 = objc_alloc_init(AIDAMutableServiceContext);
  [v35 setAuthenticationResults:location[0]];
  navigationController3 = [(BuddyAppleIDSignInTask *)selfCopy navigationController];
  [v35 setViewController:navigationController3];

  cdpUIController2 = [(BuddyAppleIDSignInTask *)selfCopy cdpUIController];
  [v35 setCdpUiProvider:cdpUIController2];

  [v35 setShouldForceOperation:0];
  [v35 setOperationUIPermissions:1];
  v39[0] = AIDAServiceTypeCloud;
  flowControllerDelegate9 = [(BuddyAppleIDSignInTask *)selfCopy flowControllerDelegate];
  v40[0] = flowControllerDelegate9;
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

- (void)_addCachedLocalSecretToCDPContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  if (location[0])
  {
    cacheManager = [(BuddyAppleIDSignInTask *)selfCopy cacheManager];
    if (cacheManager)
    {
      cachedLocalSecret = [cacheManager cachedLocalSecret];
      if (cachedLocalSecret)
      {
        validatedSecret = [cachedLocalSecret validatedSecret];
        [location[0] setCachedLocalSecret:validatedSecret];

        secretType = [cachedLocalSecret secretType];
        [location[0] setCachedLocalSecretType:secretType];
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

      objc_storeStrong(&cachedLocalSecret, 0);
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

    objc_storeStrong(&cacheManager, 0);
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

- (void)_authenticateWithContext:(id)context completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v6 = 0;
  objc_storeStrong(&v6, completion);
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

- (void)_updateAgreedTerms:(id)terms
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, terms);
  v5 = [location[0] accountForService:AIDAServiceTypeCloud];
  aa_lastAgreedTermsInfo = [v5 aa_lastAgreedTermsInfo];
  v4 = [aa_lastAgreedTermsInfo objectForKeyedSubscript:@"SLAVersion"];

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

- (void)_signInToAllServicesUsingContext:(id)context serviceOwnersManager:(id)manager completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, manager);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  if ([(BuddyAppleIDSignInTask *)selfCopy forceForegroundSignIn])
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