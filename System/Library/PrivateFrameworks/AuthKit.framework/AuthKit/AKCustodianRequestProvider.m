@interface AKCustodianRequestProvider
- (AKCustodianRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4;
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (BOOL)validateResponseData:(id)a3 error:(id *)a4;
- (id)_bodyForAddAndRevokeCustodianRequest;
- (id)_bodyForCustodianUpdateRecoveryKeyRequest;
- (id)_bodyForEmbargoEndFeedback;
- (id)_bodyForFinalizeCustodianRequest;
- (id)_bodyForRecoveryCircle;
- (id)authKitBody;
@end

@implementation AKCustodianRequestProvider

- (AKCustodianRequestProvider)initWithContext:(id)a3 urlBagKey:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKCustodianRequestProvider;
  v8 = [(AKURLRequestProviderImpl *)&v9 initWithContext:location[0] urlBagKey:v10 shouldCacheResource:0];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_custodianContext, location[0]);
  }

  v6 = _objc_retain(v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = a4;
  v19 = [AKDServerUIController alloc];
  v20 = [(AKURLRequestProviderImpl *)v36 client];
  v33 = [(AKDServerUIController *)v19 initWithClient:?];
  _objc_release(v20);
  v21 = [AKAppleIDAuthenticationContext alloc];
  v22 = [(AKCustodianRequestProvider *)v36 custodianContext];
  v32 = [v21 initWithAuthenticatedServerRequestContext:?];
  _objc_release(v22);
  [v32 set_shouldSendIdentityTokenForRemoteUI:{-[AKCustodianRequestProvider signWithIdentityToken](v36, "signWithIdentityToken")}];
  [v32 set_shouldSendGrandSlamTokensForRemoteUI:1];
  v31 = [v33 resourceLoadDelegateWithContext:v32];
  v23 = [(AKURLRequestProviderImpl *)v36 urlBagKey];
  [v31 setInitialURLRequestKey:?];
  _objc_release(v23);
  v24 = [(AKURLRequestProviderImpl *)v36 urlBagKey];
  [v31 setBagUrlKey:?];
  _objc_release(v24);
  v25 = [(AKURLRequestProviderImpl *)v36 dataCenterIdentifier];
  [v31 setDataCenterIdentifier:?];
  _objc_release(v25);
  v26 = [(AKCustodianRequestProvider *)v36 custodianContext];
  [v31 setCliMode:{-[AKCustodianContext cliMode](v26, "cliMode")}];
  _objc_release(v26);
  if ([(AKCustodianRequestProvider *)v36 authenticatedRequest])
  {
    v13 = [(AKCustodianRequestProvider *)v36 custodianContext];
    v12 = [(AKCustodianContext *)v13 custodianSetupToken];
    [v31 setServiceToken:?];
    _objc_release(v12);
    _objc_release(v13);
    v15 = [(AKCustodianRequestProvider *)v36 custodianContext];
    v14 = [(AKCustodianContext *)v15 custodianRecoveryToken];
    [v31 setCustodianRecoveryToken:?];
    _objc_release(v14);
    _objc_release(v15);
    v16 = [(AKCustodianRequestProvider *)v36 custodianContext];
    v17 = [(AKCustodianContext *)v16 isCustodianSyncAction];
    _objc_release(v16);
    if (v17)
    {
      v30 = _AKLogSystem();
      v29 = 2;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        log = v30;
        type = v29;
        sub_10001CEEC(v28);
        _os_log_debug_impl(&_mh_execute_header, log, type, "Setting request header for Custodian Sync Action", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      [location[0] ak_addCustodianSyncActionHeader];
    }

    v9 = [v31 heartbeatToken];
    _objc_release(v9);
    if (v9)
    {
      [v31 signRequestWithCommonHeaders:location[0]];
      v37 = 1;
    }

    else
    {
      v27 = _AKLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v8 = [(AKCustodianRequestProvider *)v36 custodianContext];
        v7 = [(AKCustodianContext *)v8 altDSID];
        sub_1000194D4(v38, v7);
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not find heartbeat token for account %@", v38, 0xCu);
        _objc_release(v7);
        _objc_release(v8);
      }

      objc_storeStrong(&v27, 0);
      if (v34)
      {
        v6 = [NSError ak_errorWithCode:-7042];
        v4 = v6;
        *v34 = v6;
      }

      v37 = 0;
    }
  }

  else
  {
    [v31 signRequestWithBasicHeaders:location[0]];
    v37 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  return v37 & 1;
}

- (id)authKitBody
{
  v11 = [(AKURLRequestProviderImpl *)self urlBagKey];
  v19 = 0;
  v17 = 0;
  v15 = 0;
  v12 = 1;
  if (v11 != AKURLBagKeyCustodianRecoveryCircle)
  {
    v20 = [(AKURLRequestProviderImpl *)self urlBagKey];
    v19 = 1;
    v12 = 1;
    if (v20 != AKURLBagKeyCustodianPostCircle)
    {
      v18 = [(AKURLRequestProviderImpl *)self urlBagKey];
      v17 = 1;
      v12 = 1;
      if (v18 != AKURLBagKeyCustodianRecoveryWrappingKey)
      {
        v16 = [(AKURLRequestProviderImpl *)self urlBagKey];
        v15 = 1;
        v12 = v16 == AKURLBagKeyCustodianRecoveryRequest;
      }
    }
  }

  if (v15)
  {
    _objc_release(v16);
  }

  if (v17)
  {
    _objc_release(v18);
  }

  if (v19)
  {
    _objc_release(v20);
  }

  _objc_release(v11);
  if (v12)
  {
    v22 = [(AKCustodianRequestProvider *)self _bodyForRecoveryCircle];
  }

  else
  {
    v9 = [(AKURLRequestProviderImpl *)self urlBagKey];
    v13 = 0;
    v10 = 1;
    if (![(NSString *)v9 isEqualToString:AKURLBagKeyCustodianInitiation])
    {
      v14 = [(AKURLRequestProviderImpl *)self urlBagKey];
      v13 = 1;
      v10 = [(NSString *)v14 isEqualToString:AKURLBagKeyCustodianDeletion];
    }

    if (v13)
    {
      _objc_release(v14);
    }

    _objc_release(v9);
    if (v10)
    {
      v22 = [(AKCustodianRequestProvider *)self _bodyForAddAndRevokeCustodianRequest];
    }

    else
    {
      v7 = [(AKURLRequestProviderImpl *)self urlBagKey];
      v8 = [(NSString *)v7 isEqualToString:AKURLBagKeyCustodianApproval];
      _objc_release(v7);
      if (v8)
      {
        v22 = [(AKCustodianRequestProvider *)self _bodyForFinalizeCustodianRequest];
      }

      else
      {
        v5 = [(AKURLRequestProviderImpl *)self urlBagKey];
        v6 = [(NSString *)v5 isEqualToString:AKURLBagKeyCustodianUpdateRecoveryKey];
        _objc_release(v5);
        if (v6)
        {
          v22 = [(AKCustodianRequestProvider *)self _bodyForCustodianUpdateRecoveryKeyRequest];
        }

        else
        {
          v3 = [(AKURLRequestProviderImpl *)self urlBagKey];
          v4 = [(NSString *)v3 isEqualToString:AKURLBagKeyCustodianRecoveryFeedback];
          _objc_release(v3);
          if (v4)
          {
            v22 = [(AKCustodianRequestProvider *)self _bodyForEmbargoEndFeedback];
          }

          else
          {
            v22 = 0;
          }
        }
      }
    }
  }

  return v22;
}

- (id)_bodyForRecoveryCircle
{
  v68 = self;
  v67[1] = a2;
  v67[0] = objc_alloc_init(NSMutableDictionary);
  v55 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v56 = [(AKCustodianContext *)v55 pushToken];
  _objc_release(v56);
  _objc_release(v55);
  if (v56)
  {
    v54 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v53 = [(AKCustodianContext *)v54 pushToken];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v53);
    _objc_release(v54);
  }

  else
  {
    location = _AKLogSystem();
    v65 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v51 = location;
      v52 = v65;
      sub_10001CEEC(v64);
      _os_log_error_impl(&_mh_execute_header, v51, v52, "Custodian Recovery request is being created without a push token", v64, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  v49 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v50 = [(AKCustodianContext *)v49 recoverySessionID];
  _objc_release(v50);
  _objc_release(v49);
  if (v50)
  {
    v48 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v47 = [(AKCustodianContext *)v48 recoverySessionID];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v47);
    _objc_release(v48);
  }

  else
  {
    v63 = _AKLogSystem();
    v62 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      log = v63;
      type = v62;
      sub_10001CEEC(v61);
      _os_log_impl(&_mh_execute_header, log, type, "There was no custodian recovery session ID. This should only happen on Start CLI", v61, 2u);
    }

    objc_storeStrong(&v63, 0);
  }

  v43 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v44 = [(AKCustodianContext *)v43 recoveryStep];
  _objc_release(v44);
  _objc_release(v43);
  if (v44)
  {
    v42 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v41 = [(AKCustodianContext *)v42 recoveryStep];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v41);
    _objc_release(v42);
  }

  v39 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v40 = [(AKCustodianContext *)v39 recoverySessionID];
  _objc_release(v40);
  _objc_release(v39);
  if (v40)
  {
    v38 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v37 = [(AKCustodianContext *)v38 recoverySessionID];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v37);
    _objc_release(v38);
  }

  v35 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v36 = [(AKCustodianContext *)v35 ownerAppleID];
  _objc_release(v36);
  _objc_release(v35);
  if (v36)
  {
    v34 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v33 = [(AKCustodianContext *)v34 ownerAppleID];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v33);
    _objc_release(v34);
  }

  v31 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v32 = [(AKCustodianContext *)v31 ownerCustodianAltDSID];
  _objc_release(v32);
  _objc_release(v31);
  if (v32)
  {
    v30 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v29 = [(AKCustodianContext *)v30 ownerCustodianAltDSID];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v29);
    _objc_release(v30);
  }

  v27 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v28 = [(AKCustodianContext *)v27 custodianUUID];
  _objc_release(v28);
  _objc_release(v27);
  if (v28)
  {
    v26 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v25 = [(AKCustodianContext *)v26 custodianUUID];
    v24 = [v25 UUIDString];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v24);
    _objc_release(v25);
    _objc_release(v26);
  }

  v22 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v23 = [(AKCustodianContext *)v22 idmsData];
  _objc_release(v23);
  _objc_release(v22);
  if (v23)
  {
    v21 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v20 = [(AKCustodianContext *)v21 idmsData];
    v60 = [v20 base64EncodedStringWithOptions:0];
    _objc_release(v20);
    _objc_release(v21);
    [v67[0] setObject:v60 forKeyedSubscript:@"idmsdata"];
    objc_storeStrong(&v60, 0);
  }

  v18 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v19 = [(AKCustodianContext *)v18 aaData];
  _objc_release(v19);
  _objc_release(v18);
  if (v19)
  {
    v17 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v16 = [(AKCustodianContext *)v17 aaData];
    v59 = [v16 base64EncodedStringWithOptions:0];
    _objc_release(v16);
    _objc_release(v17);
    [v67[0] setObject:v59 forKeyedSubscript:@"aadata"];
    objc_storeStrong(&v59, 0);
  }

  v14 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v15 = [(AKCustodianContext *)v14 encryptedPRKC];
  _objc_release(v15);
  _objc_release(v14);
  if (v15)
  {
    v13 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v12 = [(AKCustodianContext *)v13 encryptedPRKC];
    v58 = [v12 base64EncodedStringWithOptions:0];
    _objc_release(v12);
    _objc_release(v13);
    [v67[0] setObject:v58 forKeyedSubscript:@"encryptedPRKC"];
    objc_storeStrong(&v58, 0);
  }

  v10 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v11 = [(AKCustodianContext *)v10 clientErrorCode];
  _objc_release(v10);
  if (v11)
  {
    v9 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v8 = [NSNumber numberWithInteger:[(AKCustodianContext *)v9 clientErrorCode]];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v8);
    _objc_release(v9);
  }

  v6 = [(AKCustodianRequestProvider *)v68 custodianContext];
  v7 = [(AKCustodianContext *)v6 recordBuildVersion];
  _objc_release(v7);
  _objc_release(v6);
  if (v7)
  {
    v5 = [(AKCustodianRequestProvider *)v68 custodianContext];
    v4 = [(AKCustodianContext *)v5 recordBuildVersion];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v4);
    _objc_release(v5);
  }

  v57 = _AKLogSystem();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    sub_1000831E0(v69, v67[0]);
    _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "Custodian Recovery body for request: %{private}@", v69, 0xCu);
  }

  objc_storeStrong(&v57, 0);
  v3 = [v67[0] copy];
  objc_storeStrong(v67, 0);

  return v3;
}

- (id)_bodyForAddAndRevokeCustodianRequest
{
  v15 = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(NSMutableDictionary);
  v9 = [(AKCustodianRequestProvider *)v15 custodianContext];
  v10 = [(AKCustodianContext *)v9 custodianUUID];
  _objc_release(v10);
  _objc_release(v9);
  if (v10)
  {
    v8 = [(AKCustodianRequestProvider *)v15 custodianContext];
    v7 = [(AKCustodianContext *)v8 custodianUUID];
    v6 = [v7 UUIDString];
    [v14[0] setObject:? forKeyedSubscript:?];
    _objc_release(v6);
    _objc_release(v7);
    _objc_release(v8);
  }

  else
  {
    location = _AKLogSystem();
    v12 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v12;
      sub_10001CEEC(v11);
      _os_log_error_impl(&_mh_execute_header, log, type, "Custodian Initiation / Revocation request is being created without a custodian UUID", v11, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  v3 = [v14[0] copy];
  objc_storeStrong(v14, 0);

  return v3;
}

- (id)_bodyForFinalizeCustodianRequest
{
  v20 = self;
  v19[1] = a2;
  v19[0] = objc_alloc_init(NSMutableDictionary);
  v13 = [(AKCustodianRequestProvider *)v20 custodianContext];
  v14 = [(AKCustodianContext *)v13 custodianUUID];
  _objc_release(v14);
  _objc_release(v13);
  if (v14)
  {
    v12 = [(AKCustodianRequestProvider *)v20 custodianContext];
    v11 = [(AKCustodianContext *)v12 custodianUUID];
    v10 = [v11 UUIDString];
    [v19[0] setObject:? forKeyedSubscript:?];
    _objc_release(v10);
    _objc_release(v11);
    _objc_release(v12);
  }

  else
  {
    location = _AKLogSystem();
    v17 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_error_impl(&_mh_execute_header, log, type, "Finalize custodian setup request is being created without a custodian UUID", v16, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  v6 = [(AKCustodianRequestProvider *)v20 custodianContext];
  v7 = [(AKCustodianContext *)v6 wrappingKeyRKC];
  _objc_release(v7);
  _objc_release(v6);
  if (v7)
  {
    v5 = [(AKCustodianRequestProvider *)v20 custodianContext];
    v4 = [(AKCustodianContext *)v5 wrappingKeyRKC];
    v15 = [v4 base64EncodedStringWithOptions:0];
    _objc_release(v4);
    _objc_release(v5);
    [v19[0] setObject:v15 forKeyedSubscript:@"wrappingKeyRKC"];
    objc_storeStrong(&v15, 0);
  }

  v3 = [v19[0] copy];
  objc_storeStrong(v19, 0);

  return v3;
}

- (id)_bodyForCustodianUpdateRecoveryKeyRequest
{
  v25 = self;
  v24[1] = a2;
  v24[0] = objc_alloc_init(NSMutableDictionary);
  v15 = [(AKCustodianRequestProvider *)v25 custodianContext];
  v16 = [(AKCustodianContext *)v15 custodianUUID];
  _objc_release(v16);
  _objc_release(v15);
  if (v16)
  {
    v14 = [(AKCustodianRequestProvider *)v25 custodianContext];
    v13 = [(AKCustodianContext *)v14 custodianUUID];
    v12 = [v13 UUIDString];
    [v24[0] setObject:? forKeyedSubscript:?];
    _objc_release(v12);
    _objc_release(v13);
    _objc_release(v14);
  }

  else
  {
    location = _AKLogSystem();
    v22 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v22;
      sub_10001CEEC(v21);
      _os_log_error_impl(&_mh_execute_header, log, type, "Update recovery key request is being created without a custodian UUID", v21, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  v8 = [(AKCustodianRequestProvider *)v25 custodianContext];
  v9 = [(AKCustodianContext *)v8 wrappingKeyRKC];
  _objc_release(v9);
  _objc_release(v8);
  if (v9)
  {
    v7 = [(AKCustodianRequestProvider *)v25 custodianContext];
    v6 = [(AKCustodianContext *)v7 wrappingKeyRKC];
    v20 = [v6 base64EncodedStringWithOptions:0];
    _objc_release(v6);
    _objc_release(v7);
    [v24[0] setObject:v20 forKeyedSubscript:@"wrappingKeyRKC"];
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v19 = _AKLogSystem();
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v4 = v19;
      v5 = v18;
      sub_10001CEEC(v17);
      _os_log_error_impl(&_mh_execute_header, v4, v5, "Update recovery key request is being created without a wrappingKeyRKC", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
  }

  v3 = [v24[0] copy];
  objc_storeStrong(v24, 0);

  return v3;
}

- (id)_bodyForEmbargoEndFeedback
{
  v30 = self;
  v29[1] = a2;
  v29[0] = objc_alloc_init(NSMutableDictionary);
  v21 = [(AKCustodianRequestProvider *)v30 custodianContext];
  v22 = [(AKCustodianContext *)v21 transactionID];
  _objc_release(v22);
  _objc_release(v21);
  if (v22)
  {
    v20 = [(AKCustodianRequestProvider *)v30 custodianContext];
    v19 = [(AKCustodianContext *)v20 transactionID];
    [v29[0] setObject:? forKeyedSubscript:?];
    _objc_release(v19);
    _objc_release(v20);
  }

  v16 = [(AKCustodianRequestProvider *)v30 custodianContext];
  v15 = [NSNumber numberWithInteger:[(AKCustodianContext *)v16 notificationAction]];
  [v29[0] setObject:? forKeyedSubscript:?];
  _objc_release(v15);
  _objc_release(v16);
  v17 = [(AKCustodianRequestProvider *)v30 custodianContext];
  v18 = [(AKCustodianContext *)v17 recoverySessionID];
  _objc_release(v18);
  _objc_release(v17);
  if (v18)
  {
    v14 = [(AKCustodianRequestProvider *)v30 custodianContext];
    v13 = [(AKCustodianContext *)v14 recoverySessionID];
    [v29[0] setObject:? forKeyedSubscript:?];
    _objc_release(v13);
    _objc_release(v14);
  }

  else
  {
    location = _AKLogSystem();
    v27 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v27;
      sub_10001CEEC(v26);
      _os_log_error_impl(&_mh_execute_header, log, type, "There was no custodian recovery session ID for embargo end feedback call, request will probably fail", v26, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  v9 = [(AKCustodianRequestProvider *)v30 custodianContext];
  v10 = [(AKCustodianContext *)v9 altDSID];
  _objc_release(v10);
  _objc_release(v9);
  if (v10)
  {
    v8 = [(AKCustodianRequestProvider *)v30 custodianContext];
    v7 = [(AKCustodianContext *)v8 altDSID];
    [v29[0] setObject:? forKeyedSubscript:?];
    _objc_release(v7);
    _objc_release(v8);
  }

  else
  {
    v25 = _AKLogSystem();
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v5 = v25;
      v6 = v24;
      sub_10001CEEC(v23);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "There is no altDSID in recovery feedback call, request will probably fail", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
  }

  v4 = [v29[0] copy];
  objc_storeStrong(v3, 0);

  return v4;
}

- (BOOL)validateResponseData:(id)a3 error:(id *)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v15.receiver = v19;
  v15.super_class = AKCustodianRequestProvider;
  v16 = [(AKURLRequestProviderImpl *)&v15 validateResponseData:location[0] error:a4];
  if ((v16 & 1) == 1)
  {
    v14 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/json"];
    if (v14)
    {
      v13 = [v14 objectForKeyedSubscript:AKErrorStatusCodeKey];
      if (v13 && [v13 integerValue])
      {
        oslog = _AKLogSystem();
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_10006A654(v22, [v13 intValue]);
          _os_log_error_impl(&_mh_execute_header, oslog, type, "Server request failed with error code: %i", v22, 8u);
        }

        objc_storeStrong(&oslog, 0);
        v20[0] = NSLocalizedDescriptionKey;
        v7 = [v14 objectForKeyedSubscript:AKErrorMessageKey];
        v21[0] = v7;
        v20[1] = AKErrorStatusCodeKey;
        v21[1] = v13;
        v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
        _objc_release(v7);
        v8 = [NSError ak_errorWithCode:-7010 userInfo:v10];
        v4 = v8;
        *v17 = v8;
        v16 = 0;
        objc_storeStrong(&v10, 0);
      }

      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  v6 = v16;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

@end