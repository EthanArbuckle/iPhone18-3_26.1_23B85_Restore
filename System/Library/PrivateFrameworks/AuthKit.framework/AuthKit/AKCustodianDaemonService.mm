@interface AKCustodianDaemonService
- (AKCustodianDaemonService)init;
- (AKCustodianDaemonService)initWithClient:(id)client;
- (BOOL)verifyRecoveryTransactionWithContext:(id)context verifySessionID:(BOOL)d error:(id *)error;
- (void)dealloc;
- (void)fetchCustodianDataRecoveryKeyWithContext:(id)context completion:(id)completion;
- (void)fetchCustodianRecoveryCodeConfigurationWithCompletion:(id)completion;
- (void)fetchCustodianRecoveryTokenWithContext:(id)context completion:(id)completion;
- (void)finalizeCustodianSetupWithContext:(id)context completion:(id)completion;
- (void)initiateCustodianSetupWithContext:(id)context completion:(id)completion;
- (void)revokeCustodianWithContext:(id)context completion:(id)completion;
- (void)sendEmbargoEndNotificationFeedbackWithContext:(id)context urlKey:(id)key completion:(id)completion;
- (void)startCustodianRecoveryRequestWithContext:(id)context completion:(id)completion;
- (void)startCustodianRecoveryTransactionWithContext:(id)context completion:(id)completion;
- (void)updateCustodianRecoveryKeyWithContext:(id)context completion:(id)completion;
@end

@implementation AKCustodianDaemonService

- (AKCustodianDaemonService)init
{
  selfCopy = self;
  [(AKCustodianDaemonService *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKCustodianDaemonService)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKCustodianDaemonService;
  selfCopy = [(AKCustodianDaemonService *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)dealloc
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v6, selfCopy);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], type, "%@ deallocated", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v2.receiver = selfCopy;
  v2.super_class = AKCustodianDaemonService;
  [(AKCustodianDaemonService *)&v2 dealloc];
}

- (void)initiateCustodianSetupWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    custodianUUID = [location[0] custodianUUID];
    _objc_release(custodianUUID);
    if (custodianUUID)
    {
      custodianSetupToken = [location[0] custodianSetupToken];
      _objc_release(custodianSetupToken);
      if (custodianSetupToken)
      {
        v4 = [AKCustodianRequestProvider alloc];
        v32 = [(AKCustodianRequestProvider *)v4 initWithContext:location[0] urlBagKey:AKURLBagKeyCustodianInitiation];
        [(AKCustodianRequestProvider *)v32 setAuthenticatedRequest:1];
        [(AKURLRequestProviderImpl *)v32 setClient:selfCopy->_client];
        v5 = [AKServiceControllerImpl alloc];
        v31 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v32];
        v30 = objc_alloc_init(AKAuthHandlerImpl);
        [v30 setForceSilentAuth:1];
        [(AKServiceControllerImpl *)v31 setAuthenticationDelegate:v30];
        v6 = v31;
        v22 = _NSConcreteStackBlock;
        v23 = -1073741824;
        v24 = 0;
        v25 = sub_10013EDA8;
        v26 = &unk_100321988;
        v27 = _objc_retain(v32);
        v28 = _objc_retain(location[0]);
        v29 = _objc_retain(v43);
        [(AKServiceControllerImpl *)v6 executeRequestWithCompletion:&v22];
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v32, 0);
        v39 = 0;
      }

      else
      {
        v35 = _AKLogSystem();
        v34 = 16;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v9 = v35;
          v10 = v34;
          sub_10001CEEC(v33);
          _os_log_error_impl(&_mh_execute_header, v9, v10, "Missing custodian setup token, abandoning idMS custodian setup.", v33, 2u);
        }

        objc_storeStrong(&v35, 0);
        if (v43)
        {
          v7 = v43;
          v8 = [NSError ak_errorWithCode:-7044];
          v7[2](v7, 0);
          _objc_release(v8);
        }

        v39 = 1;
      }
    }

    else
    {
      v38 = _AKLogSystem();
      v37 = 16;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v14 = v38;
        type = v37;
        sub_10001CEEC(v36);
        _os_log_error_impl(&_mh_execute_header, v14, type, "There is no custodian UUID to start a custodian initiation request failing operation", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      if (v43)
      {
        v12 = v43;
        v13 = [NSError ak_errorWithCode:-7044];
        v12[2](v12, 0);
        _objc_release(v13);
      }

      v39 = 1;
    }
  }

  else
  {
    v42 = _AKLogSystem();
    v41 = 16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      v20 = v41;
      sub_10001CEEC(v40);
      _os_log_error_impl(&_mh_execute_header, log, v20, "AuthKit Private entitlement needed to start a custodian initiation request, but calling process doesn't have it", v40, 2u);
    }

    objc_storeStrong(&v42, 0);
    if (v43)
    {
      v17 = v43;
      v18 = [NSError ak_errorWithCode:-7026];
      v17[2](v17, 0);
      _objc_release(v18);
    }

    v39 = 1;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

- (void)finalizeCustodianSetupWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    custodianUUID = [location[0] custodianUUID];
    _objc_release(custodianUUID);
    if (custodianUUID)
    {
      altDSID = [location[0] altDSID];
      _objc_release(altDSID);
      if (altDSID)
      {
        v4 = [AKCustodianRequestProvider alloc];
        v32 = [(AKCustodianRequestProvider *)v4 initWithContext:location[0] urlBagKey:AKURLBagKeyCustodianApproval];
        [(AKCustodianRequestProvider *)v32 setAuthenticatedRequest:1];
        [(AKCustodianRequestProvider *)v32 setSignWithIdentityToken:1];
        [(AKURLRequestProviderImpl *)v32 setClient:selfCopy->_client];
        v5 = [AKServiceControllerImpl alloc];
        v31 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v32];
        v30 = objc_alloc_init(AKAuthHandlerImpl);
        [v30 setForceSilentAuth:1];
        [(AKServiceControllerImpl *)v31 setAuthenticationDelegate:v30];
        v6 = v31;
        v22 = _NSConcreteStackBlock;
        v23 = -1073741824;
        v24 = 0;
        v25 = sub_10013F738;
        v26 = &unk_10031F110;
        v29 = _objc_retain(v43);
        v27 = _objc_retain(v32);
        v28 = _objc_retain(location[0]);
        [(AKServiceControllerImpl *)v6 executeRequestWithCompletion:&v22];
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v32, 0);
        v39 = 0;
      }

      else
      {
        v35 = _AKLogSystem();
        v34 = 16;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v9 = v35;
          v10 = v34;
          sub_10001CEEC(v33);
          _os_log_error_impl(&_mh_execute_header, v9, v10, "Missing altDSID, abandoning custodian finalization.", v33, 2u);
        }

        objc_storeStrong(&v35, 0);
        if (v43)
        {
          v7 = v43;
          v8 = [NSError ak_errorWithCode:-7044];
          v7[2]();
          _objc_release(v8);
        }

        v39 = 1;
      }
    }

    else
    {
      v38 = _AKLogSystem();
      v37 = 16;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v14 = v38;
        type = v37;
        sub_10001CEEC(v36);
        _os_log_error_impl(&_mh_execute_header, v14, type, "Missing custodian UUID, abandoning custodian finalization.", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      if (v43)
      {
        v12 = v43;
        v13 = [NSError ak_errorWithCode:-7044];
        v12[2]();
        _objc_release(v13);
      }

      v39 = 1;
    }
  }

  else
  {
    v42 = _AKLogSystem();
    v41 = 16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      v20 = v41;
      sub_10001CEEC(v40);
      _os_log_error_impl(&_mh_execute_header, log, v20, "AuthKit Private entitlement needed to finish a finalize custodianship request, but calling process doesn't have it", v40, 2u);
    }

    objc_storeStrong(&v42, 0);
    if (v43)
    {
      v17 = v43;
      v18 = [NSError ak_errorWithCode:-7026];
      v17[2]();
      _objc_release(v18);
    }

    v39 = 1;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

- (void)revokeCustodianWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    custodianUUID = [location[0] custodianUUID];
    _objc_release(custodianUUID);
    if (custodianUUID)
    {
      altDSID = [location[0] altDSID];
      _objc_release(altDSID);
      if (altDSID)
      {
        v4 = [AKCustodianRequestProvider alloc];
        v32 = [(AKCustodianRequestProvider *)v4 initWithContext:location[0] urlBagKey:AKURLBagKeyCustodianDeletion];
        [(AKCustodianRequestProvider *)v32 setAuthenticatedRequest:1];
        [(AKCustodianRequestProvider *)v32 setSignWithIdentityToken:1];
        [(AKURLRequestProviderImpl *)v32 setClient:selfCopy->_client];
        v5 = [AKServiceControllerImpl alloc];
        v31 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v32];
        v30 = objc_alloc_init(AKAuthHandlerImpl);
        [v30 setForceSilentAuth:1];
        [(AKServiceControllerImpl *)v31 setAuthenticationDelegate:v30];
        v6 = v31;
        v22 = _NSConcreteStackBlock;
        v23 = -1073741824;
        v24 = 0;
        v25 = sub_100140030;
        v26 = &unk_10031F110;
        v29 = _objc_retain(v43);
        v27 = _objc_retain(v32);
        v28 = _objc_retain(location[0]);
        [(AKServiceControllerImpl *)v6 executeRequestWithCompletion:&v22];
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v32, 0);
        v39 = 0;
      }

      else
      {
        v35 = _AKLogSystem();
        v34 = 16;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v9 = v35;
          v10 = v34;
          sub_10001CEEC(v33);
          _os_log_error_impl(&_mh_execute_header, v9, v10, "Missing altDSID, abandoning custodian finalization.", v33, 2u);
        }

        objc_storeStrong(&v35, 0);
        if (v43)
        {
          v7 = v43;
          v8 = [NSError ak_errorWithCode:-7044];
          v7[2]();
          _objc_release(v8);
        }

        v39 = 1;
      }
    }

    else
    {
      v38 = _AKLogSystem();
      v37 = 16;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v14 = v38;
        type = v37;
        sub_10001CEEC(v36);
        _os_log_error_impl(&_mh_execute_header, v14, type, "There is no custodian UUID to abort a setup request failing operation", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      if (v43)
      {
        v12 = v43;
        v13 = [NSError ak_errorWithCode:-7044];
        v12[2]();
        _objc_release(v13);
      }

      v39 = 1;
    }
  }

  else
  {
    v42 = _AKLogSystem();
    v41 = 16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      v20 = v41;
      sub_10001CEEC(v40);
      _os_log_error_impl(&_mh_execute_header, log, v20, "AuthKit Private entitlement needed to abort a custodian setup request, but calling process doesn't have it", v40, 2u);
    }

    objc_storeStrong(&v42, 0);
    if (v43)
    {
      v17 = v43;
      v18 = [NSError ak_errorWithCode:-7026];
      v17[2]();
      _objc_release(v18);
    }

    v39 = 1;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

- (void)updateCustodianRecoveryKeyWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v50 = 0;
  objc_storeStrong(&v50, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    custodianUUID = [location[0] custodianUUID];
    _objc_release(custodianUUID);
    if (custodianUUID)
    {
      altDSID = [location[0] altDSID];
      _objc_release(altDSID);
      if (altDSID)
      {
        wrappingKeyRKC = [location[0] wrappingKeyRKC];
        _objc_release(wrappingKeyRKC);
        if (wrappingKeyRKC)
        {
          v4 = [AKCustodianRequestProvider alloc];
          v36 = [(AKCustodianRequestProvider *)v4 initWithContext:location[0] urlBagKey:AKURLBagKeyCustodianUpdateRecoveryKey];
          [(AKCustodianRequestProvider *)v36 setAuthenticatedRequest:1];
          [(AKCustodianRequestProvider *)v36 setSignWithIdentityToken:1];
          [(AKURLRequestProviderImpl *)v36 setClient:selfCopy->_client];
          v5 = [AKServiceControllerImpl alloc];
          v35 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v36];
          v34 = objc_alloc_init(AKAuthHandlerImpl);
          [v34 setForceSilentAuth:1];
          [(AKServiceControllerImpl *)v35 setAuthenticationDelegate:v34];
          v6 = v35;
          v27 = _NSConcreteStackBlock;
          v28 = -1073741824;
          v29 = 0;
          v30 = sub_100140A18;
          v31 = &unk_100321898;
          v33 = _objc_retain(v50);
          v32 = _objc_retain(location[0]);
          [(AKServiceControllerImpl *)v6 executeRequestWithCompletion:&v27];
          objc_storeStrong(&v32, 0);
          objc_storeStrong(&v33, 0);
          objc_storeStrong(&v34, 0);
          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v36, 0);
          v46 = 0;
        }

        else
        {
          v39 = _AKLogSystem();
          v38 = 16;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v9 = v39;
            v10 = v38;
            sub_10001CEEC(v37);
            _os_log_error_impl(&_mh_execute_header, v9, v10, "Missing wrappingKeyRKC, abandoning custodian recovery key update.", v37, 2u);
          }

          objc_storeStrong(&v39, 0);
          if (v50)
          {
            v7 = v50;
            v8 = [NSError ak_errorWithCode:-7044];
            v7[2]();
            _objc_release(v8);
          }

          v46 = 1;
        }
      }

      else
      {
        v42 = _AKLogSystem();
        v41 = 16;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v14 = v42;
          v15 = v41;
          sub_10001CEEC(v40);
          _os_log_error_impl(&_mh_execute_header, v14, v15, "Missing altDSID, abandoning custodian recovery key update.", v40, 2u);
        }

        objc_storeStrong(&v42, 0);
        if (v50)
        {
          v12 = v50;
          v13 = [NSError ak_errorWithCode:-7044];
          v12[2]();
          _objc_release(v13);
        }

        v46 = 1;
      }
    }

    else
    {
      v45 = _AKLogSystem();
      v44 = 16;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        log = v45;
        type = v44;
        sub_10001CEEC(v43);
        _os_log_error_impl(&_mh_execute_header, log, type, "Missing custodian UUID, abandoning custodian recovery key update.", v43, 2u);
      }

      objc_storeStrong(&v45, 0);
      if (v50)
      {
        v17 = v50;
        v18 = [NSError ak_errorWithCode:-7044];
        v17[2]();
        _objc_release(v18);
      }

      v46 = 1;
    }
  }

  else
  {
    v49 = _AKLogSystem();
    v48 = 16;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v24 = v49;
      v25 = v48;
      sub_10001CEEC(v47);
      _os_log_error_impl(&_mh_execute_header, v24, v25, "AuthKit Private entitlement needed to finish a custodian recovery key update request, but calling process doesn't have it", v47, 2u);
    }

    objc_storeStrong(&v49, 0);
    if (v50)
    {
      v22 = v50;
      v23 = [NSError ak_errorWithCode:-7026];
      v22[2]();
      _objc_release(v23);
    }

    v46 = 1;
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
}

- (void)startCustodianRecoveryRequestWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v41 = 0;
  objc_storeStrong(&v41, completion);
  v40 = _AKLogSystem();
  v39 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v44, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v40, v39, "Starting recovery request with context %@", v44, 0xCu);
  }

  objc_storeStrong(&v40, 0);
  v38 = 0;
  v37 = 0;
  v12 = [(AKCustodianDaemonService *)selfCopy verifyRecoveryTransactionWithContext:location[0] verifySessionID:0 error:&v37];
  objc_storeStrong(&v38, v37);
  if (v12)
  {
    v35 = +[AKAccountManager sharedInstance];
    primaryAuthKitAccount = [v35 primaryAuthKitAccount];
    v33 = 0;
    v32 = 0;
    if (primaryAuthKitAccount)
    {
      v31 = _AKLogSystem();
      v30 = 2;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v10 = v31;
        v11 = v30;
        sub_10001CEEC(v29);
        _os_log_debug_impl(&_mh_execute_header, v10, v11, "We have an authKit account, request needs to be authenticated", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
      v33 = 1;
      v9 = [v35 altDSIDForAccount:primaryAuthKitAccount];
      [location[0] setAltDSID:?];
      _objc_release(v9);
      v8 = objc_alloc_init(AKAuthHandlerImpl);
      v4 = v32;
      v32 = v8;
      _objc_release(v4);
      [v32 setForceSilentAuth:1];
    }

    v7 = [AKCustodianRequestProvider alloc];
    v28 = [(AKCustodianRequestProvider *)v7 initWithContext:location[0] urlBagKey:AKURLBagKeyCustodianRecoveryRequest];
    [v28 setAuthenticatedRequest:v33 & 1];
    [v28 setClient:selfCopy->_client];
    v22[0] = 0;
    v22[1] = v22;
    v23 = 838860800;
    v24 = 48;
    v25 = sub_100003C9C;
    v26 = sub_100011350;
    v27 = 0;
    v6 = [AKServiceControllerImpl alloc];
    v21 = [(AKServiceControllerImpl *)v6 initWithRequestProvider:v28];
    [v21 setAuthenticationDelegate:v32];
    v5 = v21;
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_100141270;
    v18 = &unk_1003246C8;
    v19 = _objc_retain(location[0]);
    v20[1] = v22;
    v20[0] = _objc_retain(v41);
    [v5 executeRequestWithCompletion:&v14];
    objc_storeStrong(v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v21, 0);
    _Block_object_dispose(v22, 8);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&primaryAuthKitAccount, 0);
    objc_storeStrong(&v35, 0);
    v36 = 0;
  }

  else
  {
    if (v41)
    {
      (*(v41 + 2))(v41, 0, v38);
    }

    v36 = 1;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchCustodianRecoveryCodeConfigurationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v3 = [AKURLBag bagForAltDSID:0];
    custodianCodeConfiguration = [v3 custodianCodeConfiguration];
    _objc_release(v3);
    if (location[0])
    {
      (*(location[0] + 2))(location[0], custodianCodeConfiguration, 0);
    }

    objc_storeStrong(&custodianCodeConfiguration, 0);
    v9 = 0;
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      sub_10001CEEC(v10);
      _os_log_error_impl(&_mh_execute_header, log, type, "AuthKit Private entitlement needed to continue fetching the custodian configuration , but calling process doesn't have it", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    if (location[0])
    {
      v4 = location[0];
      v5 = [NSError ak_errorWithCode:-7026];
      v4[2](v4, 0);
      _objc_release(v5);
    }

    v9 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)startCustodianRecoveryTransactionWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v30 = 0;
  objc_storeStrong(&v30, completion);
  v29 = 0;
  v28 = 0;
  v11 = [(AKCustodianDaemonService *)selfCopy verifyRecoveryTransactionWithContext:location[0] verifySessionID:0 error:&v28];
  objc_storeStrong(&v29, v28);
  if (v11)
  {
    v26 = 0;
    v25 = 0;
    if (![location[0] ownerDevice])
    {
      v9 = +[AKAccountManager sharedInstance];
      altDSIDforPrimaryiCloudAccount = [(AKAccountManager *)v9 altDSIDforPrimaryiCloudAccount];
      _objc_release(v9);
      [location[0] setAltDSID:altDSIDforPrimaryiCloudAccount];
      v25 = 1;
      v4 = objc_alloc_init(AKAuthHandlerImpl);
      v5 = v26;
      v26 = v4;
      _objc_release(v5);
      [v26 setForceSilentAuth:1];
      objc_storeStrong(&altDSIDforPrimaryiCloudAccount, 0);
    }

    v6 = [AKCustodianRequestProvider alloc];
    v23 = [(AKCustodianRequestProvider *)v6 initWithContext:location[0] urlBagKey:AKURLBagKeyCustodianRecoveryCircle];
    [v23 setAuthenticatedRequest:v25 & 1];
    [v23 setClient:selfCopy->_client];
    v19[0] = 0;
    v19[1] = v19;
    v20 = 0x20000000;
    v21 = 32;
    v22 = 0;
    v8 = [AKServiceControllerImpl alloc];
    v18 = [(AKServiceControllerImpl *)v8 initWithRequestProvider:v23];
    [v18 setAuthenticationDelegate:v26];
    v7 = v18;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100141A40;
    v16 = &unk_1003246F0;
    v17[1] = v19;
    v17[0] = _objc_retain(v30);
    [v7 executeRequestWithCompletion:&v12];
    objc_storeStrong(v17, 0);
    objc_storeStrong(&v18, 0);
    _Block_object_dispose(v19, 8);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v26, 0);
    v27 = 0;
  }

  else
  {
    if (v30)
    {
      (*(v30 + 2))(v30, 0, v29);
    }

    v27 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchCustodianRecoveryTokenWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v25 = 0;
  objc_storeStrong(&v25, completion);
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = sub_100003C9C;
  v23 = sub_100011350;
  v24 = 0;
  v17 = 0;
  v7 = [(AKCustodianDaemonService *)selfCopy verifyRecoveryTransactionWithContext:location[0] verifySessionID:1 error:&v17];
  objc_storeStrong(&v24, v17);
  if (v7)
  {
    v5 = [AKCustodianRequestProvider alloc];
    v15 = [(AKCustodianRequestProvider *)v5 initWithContext:location[0] urlBagKey:AKURLBagKeyCustodianPostCircle];
    [v15 setClient:selfCopy->_client];
    [v15 setAuthenticatedRequest:0];
    v14 = [[AKServiceControllerImpl alloc] initWithRequestProvider:v15];
    v4 = v14;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100141F50;
    v12 = &unk_100324718;
    v13[0] = _objc_retain(v25);
    v13[1] = &v18;
    [v4 executeRequestWithCompletion:&v8];
    objc_storeStrong(v13, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  else
  {
    if (v25)
    {
      (*(v25 + 2))(v25, 0, v19[5]);
    }

    v16 = 1;
  }

  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchCustodianDataRecoveryKeyWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v52 = 0;
  objc_storeStrong(&v52, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    recoverySessionID = [location[0] recoverySessionID];
    v46 = 0;
    v17 = 1;
    if (recoverySessionID)
    {
      custodianRecoveryToken = [location[0] custodianRecoveryToken];
      v46 = 1;
      v17 = custodianRecoveryToken == 0;
    }

    if (v46)
    {
      _objc_release(custodianRecoveryToken);
    }

    _objc_release(recoverySessionID);
    if (v17)
    {
      v45 = _AKLogSystem();
      v44 = 16;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v14 = v45;
        v15 = v44;
        sub_10001CEEC(v43);
        _os_log_error_impl(&_mh_execute_header, v14, v15, "Cannot fetch data recovery key without a session ID or recovery token, failing operation", v43, 2u);
      }

      objc_storeStrong(&v45, 0);
      if (v52)
      {
        v12 = v52;
        v13 = [NSError ak_errorWithCode:-7044];
        v12[2](v12, 0);
        _objc_release(v13);
      }

      v48 = 1;
    }

    else
    {
      v11 = +[AKAccountManager sharedInstance];
      altDSIDforPrimaryiCloudAccount = [(AKAccountManager *)v11 altDSIDforPrimaryiCloudAccount];
      _objc_release(v11);
      if (altDSIDforPrimaryiCloudAccount)
      {
        [location[0] setAltDSID:altDSIDforPrimaryiCloudAccount];
        v4 = [AKCustodianRequestProvider alloc];
        v38 = [(AKCustodianRequestProvider *)v4 initWithContext:location[0] urlBagKey:AKURLBagKeyCustodianRecoveryWrappingKey];
        [v38 setAuthenticatedRequest:1];
        [v38 setSignWithIdentityToken:1];
        [v38 setClient:selfCopy->_client];
        v32[0] = 0;
        v32[1] = v32;
        v33 = 838860800;
        v34 = 48;
        v35 = sub_100003C9C;
        v36 = sub_100011350;
        v37 = 0;
        v6 = [AKServiceControllerImpl alloc];
        v31 = [(AKServiceControllerImpl *)v6 initWithRequestProvider:v38];
        v30 = objc_alloc_init(AKAuthHandlerImpl);
        [v30 setForceSilentAuth:1];
        [v31 setAuthenticationDelegate:v30];
        v5 = v31;
        v23 = _NSConcreteStackBlock;
        v24 = -1073741824;
        v25 = 0;
        v26 = sub_100142EC8;
        v27 = &unk_1003246C8;
        v28 = _objc_retain(altDSIDforPrimaryiCloudAccount);
        v29[1] = v32;
        v29[0] = _objc_retain(v52);
        [v5 executeRequestWithCompletion:&v23];
        objc_storeStrong(v29, 0);
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
        _Block_object_dispose(v32, 8);
        objc_storeStrong(&v37, 0);
        objc_storeStrong(&v38, 0);
        v48 = 0;
      }

      else
      {
        v41 = _AKLogSystem();
        v40 = 16;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v9 = v41;
          v10 = v40;
          sub_10001CEEC(v39);
          _os_log_error_impl(&_mh_execute_header, v9, v10, "Cannot fetch data recovery key without an authenticated account, failing operation", v39, 2u);
        }

        objc_storeStrong(&v41, 0);
        if (v52)
        {
          v7 = v52;
          v8 = [NSError ak_errorWithCode:-7055];
          v7[2](v7, 0);
          _objc_release(v8);
        }

        v48 = 1;
      }

      objc_storeStrong(&altDSIDforPrimaryiCloudAccount, 0);
    }
  }

  else
  {
    v51 = _AKLogSystem();
    v50 = 16;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      log = v51;
      type = v50;
      sub_10001CEEC(v49);
      _os_log_error_impl(&_mh_execute_header, log, type, "AuthKit Private entitlement needed to continue fetching the data recovery key , but calling process doesn't have it", v49, 2u);
    }

    objc_storeStrong(&v51, 0);
    if (v52)
    {
      v18 = v52;
      v19 = [NSError ak_errorWithCode:-7026];
      v18[2](v18, 0);
      _objc_release(v19);
    }

    v48 = 1;
  }

  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
}

- (void)sendEmbargoEndNotificationFeedbackWithContext:(id)context urlKey:(id)key completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v46 = 0;
  objc_storeStrong(&v46, key);
  v45 = 0;
  objc_storeStrong(&v45, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    altDSID = [location[0] altDSID];
    _objc_release(altDSID);
    if (altDSID)
    {
      recoverySessionID = [location[0] recoverySessionID];
      _objc_release(recoverySessionID);
      if (recoverySessionID)
      {
        v34 = _objc_retain(v46);
        if (!v34)
        {
          objc_storeStrong(&v34, AKURLBagKeyCustodianRecoveryFeedback);
        }

        v33 = _AKLogSystem();
        v32 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_10001B098(v49, v46, location[0]);
          _os_log_debug_impl(&_mh_execute_header, v33, v32, "Sending embargo end notification feedback with to urlKey: %@ context: %@", v49, 0x16u);
        }

        objc_storeStrong(&v33, 0);
        v5 = [AKCustodianRequestProvider alloc];
        v31 = [(AKCustodianRequestProvider *)v5 initWithContext:location[0] urlBagKey:v34];
        [(AKCustodianRequestProvider *)v31 setAuthenticatedRequest:0];
        [(AKURLRequestProviderImpl *)v31 setClient:selfCopy->_client];
        v6 = [AKServiceControllerImpl alloc];
        v30 = [(AKServiceControllerImpl *)v6 initWithRequestProvider:v31];
        v7 = v30;
        v24 = _NSConcreteStackBlock;
        v25 = -1073741824;
        v26 = 0;
        v27 = sub_100143714;
        v28 = &unk_10031FC28;
        v29 = _objc_retain(v45);
        [(AKServiceControllerImpl *)v7 executeRequestWithCompletion:&v24];
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v34, 0);
        v41 = 0;
      }

      else
      {
        v37 = _AKLogSystem();
        v36 = 16;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v10 = v37;
          v11 = v36;
          sub_10001CEEC(v35);
          _os_log_error_impl(&_mh_execute_header, v10, v11, "Cannot send embargo end transaction without a session ID, failing operation", v35, 2u);
        }

        objc_storeStrong(&v37, 0);
        if (v45)
        {
          v8 = v45;
          v9 = [NSError ak_errorWithCode:-7044];
          v8[2]();
          _objc_release(v9);
        }

        v41 = 1;
      }
    }

    else
    {
      v40 = _AKLogSystem();
      v39 = 16;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v15 = v40;
        v16 = v39;
        sub_10001CEEC(v38);
        _os_log_error_impl(&_mh_execute_header, v15, v16, "There is no altdsid to send embargo end transaction, failing operation", v38, 2u);
      }

      objc_storeStrong(&v40, 0);
      if (v45)
      {
        v13 = v45;
        v14 = [NSError ak_errorWithCode:-7025];
        v13[2]();
        _objc_release(v14);
      }

      v41 = 1;
    }
  }

  else
  {
    v44 = _AKLogSystem();
    v43 = 16;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      log = v44;
      type = v43;
      sub_10001CEEC(v42);
      _os_log_error_impl(&_mh_execute_header, log, type, "AuthKit Private entitlement needed but calling process doesn't have it", v42, 2u);
    }

    objc_storeStrong(&v44, 0);
    if (v45)
    {
      v18 = v45;
      v19 = [NSError ak_errorWithCode:-7026];
      v18[2]();
      _objc_release(v19);
    }

    v41 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)verifyRecoveryTransactionWithContext:(id)context verifySessionID:(BOOL)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  dCopy = d;
  errorCopy = error;
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    ownerAppleID = [location[0] ownerAppleID];
    v48 = 0;
    v46 = 0;
    v25 = 0;
    if (!ownerAppleID)
    {
      ownerCustodianAltDSID = [location[0] ownerCustodianAltDSID];
      v48 = 1;
      v25 = 0;
      if (!ownerCustodianAltDSID)
      {
        custodianUUID = [location[0] custodianUUID];
        v46 = 1;
        v25 = custodianUUID == 0;
      }
    }

    if (v46)
    {
      _objc_release(custodianUUID);
    }

    if (v48)
    {
      _objc_release(ownerCustodianAltDSID);
    }

    _objc_release(ownerAppleID);
    if (v25)
    {
      v45 = _AKLogSystem();
      v44 = 16;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v22 = v45;
        v23 = v44;
        sub_10001CEEC(v43);
        _os_log_error_impl(&_mh_execute_header, v22, v23, "There is no owner or custodian information to start a transaction, failing operation", v43, 2u);
      }

      objc_storeStrong(&v45, 0);
      if (errorCopy)
      {
        v21 = [NSError ak_errorWithCode:-7022];
        v6 = v21;
        *errorCopy = v21;
      }

      v58 = 0;
      v50 = 1;
    }

    else
    {
      pushToken = [location[0] pushToken];
      _objc_release(pushToken);
      if (pushToken)
      {
        goto LABEL_31;
      }

      v42 = _AKLogSystem();
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v42;
        v19 = v41;
        sub_10001CEEC(v40);
        _os_log_impl(&_mh_execute_header, v18, v19, "Custodian context does not provide a pushToken, fetching pushToken...", v40, 2u);
      }

      objc_storeStrong(&v42, 0);
      v17 = +[AKAppleIDPushHelperService sharedService];
      publicAPSTokenString = [v17 publicAPSTokenString];
      _objc_release(v17);
      if ([publicAPSTokenString length])
      {
        [location[0] setPushToken:publicAPSTokenString];
        v50 = 0;
      }

      else
      {
        v38 = _AKLogSystem();
        v37 = 16;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v15 = v38;
          v16 = v37;
          sub_10001CEEC(v36);
          _os_log_error_impl(&_mh_execute_header, v15, v16, "Something really really bad happened, we don't have a push token to start a custodian request", v36, 2u);
        }

        objc_storeStrong(&v38, 0);
        if (errorCopy)
        {
          v14 = [NSError ak_errorWithCode:-7041];
          v7 = v14;
          *errorCopy = v14;
        }

        v58 = 0;
        v50 = 1;
      }

      objc_storeStrong(&publicAPSTokenString, 0);
      if (!v50)
      {
LABEL_31:
        v34 = 0;
        v13 = 0;
        if (dCopy)
        {
          recoverySessionID = [location[0] recoverySessionID];
          v34 = 1;
          v13 = recoverySessionID == 0;
        }

        if (v34)
        {
          _objc_release(recoverySessionID);
        }

        if (v13)
        {
          v33 = _AKLogSystem();
          v32 = 16;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v11 = v33;
            v12 = v32;
            sub_10001CEEC(v31);
            _os_log_error_impl(&_mh_execute_header, v11, v12, "Cannot fetch data recovery key without a session ID, failing operation", v31, 2u);
          }

          objc_storeStrong(&v33, 0);
          if (errorCopy)
          {
            v10 = [NSError ak_errorWithCode:-7044];
            v8 = v10;
            *errorCopy = v10;
          }

          v58 = 0;
          v50 = 1;
        }

        else
        {
          v58 = 1;
          v50 = 1;
        }
      }
    }
  }

  else
  {
    v53 = _AKLogSystem();
    v52 = 16;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      log = v53;
      type = v52;
      sub_10001CEEC(v51);
      _os_log_error_impl(&_mh_execute_header, log, type, "AuthKit Private entitlement needed but calling process doesn't have it", v51, 2u);
    }

    objc_storeStrong(&v53, 0);
    if (errorCopy)
    {
      v26 = [NSError ak_errorWithCode:-7026];
      v5 = v26;
      *errorCopy = v26;
    }

    v58 = 0;
    v50 = 1;
  }

  objc_storeStrong(location, 0);
  return v58 & 1;
}

@end