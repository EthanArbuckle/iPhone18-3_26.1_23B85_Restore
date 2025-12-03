@interface AKCustodianRequestProvider
- (AKCustodianRequestProvider)initWithContext:(id)context urlBagKey:(id)key;
- (BOOL)signRequest:(id)request error:(id *)error;
- (BOOL)validateResponseData:(id)data error:(id *)error;
- (id)_bodyForAddAndRevokeCustodianRequest;
- (id)_bodyForCustodianUpdateRecoveryKeyRequest;
- (id)_bodyForEmbargoEndFeedback;
- (id)_bodyForFinalizeCustodianRequest;
- (id)_bodyForRecoveryCircle;
- (id)authKitBody;
@end

@implementation AKCustodianRequestProvider

- (AKCustodianRequestProvider)initWithContext:(id)context urlBagKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v10 = 0;
  objc_storeStrong(&v10, key);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKCustodianRequestProvider;
  v8 = [(AKURLRequestProviderImpl *)&v9 initWithContext:location[0] urlBagKey:v10 shouldCacheResource:0];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_custodianContext, location[0]);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v19 = [AKDServerUIController alloc];
  client = [(AKURLRequestProviderImpl *)selfCopy client];
  v33 = [(AKDServerUIController *)v19 initWithClient:?];
  _objc_release(client);
  v21 = [AKAppleIDAuthenticationContext alloc];
  custodianContext = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  v32 = [v21 initWithAuthenticatedServerRequestContext:?];
  _objc_release(custodianContext);
  [v32 set_shouldSendIdentityTokenForRemoteUI:{-[AKCustodianRequestProvider signWithIdentityToken](selfCopy, "signWithIdentityToken")}];
  [v32 set_shouldSendGrandSlamTokensForRemoteUI:1];
  v31 = [v33 resourceLoadDelegateWithContext:v32];
  urlBagKey = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v31 setInitialURLRequestKey:?];
  _objc_release(urlBagKey);
  urlBagKey2 = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  [v31 setBagUrlKey:?];
  _objc_release(urlBagKey2);
  dataCenterIdentifier = [(AKURLRequestProviderImpl *)selfCopy dataCenterIdentifier];
  [v31 setDataCenterIdentifier:?];
  _objc_release(dataCenterIdentifier);
  custodianContext2 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  [v31 setCliMode:{-[AKCustodianContext cliMode](custodianContext2, "cliMode")}];
  _objc_release(custodianContext2);
  if ([(AKCustodianRequestProvider *)selfCopy authenticatedRequest])
  {
    custodianContext3 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    custodianSetupToken = [(AKCustodianContext *)custodianContext3 custodianSetupToken];
    [v31 setServiceToken:?];
    _objc_release(custodianSetupToken);
    _objc_release(custodianContext3);
    custodianContext4 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    custodianRecoveryToken = [(AKCustodianContext *)custodianContext4 custodianRecoveryToken];
    [v31 setCustodianRecoveryToken:?];
    _objc_release(custodianRecoveryToken);
    _objc_release(custodianContext4);
    custodianContext5 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    isCustodianSyncAction = [(AKCustodianContext *)custodianContext5 isCustodianSyncAction];
    _objc_release(custodianContext5);
    if (isCustodianSyncAction)
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

    heartbeatToken = [v31 heartbeatToken];
    _objc_release(heartbeatToken);
    if (heartbeatToken)
    {
      [v31 signRequestWithCommonHeaders:location[0]];
      v37 = 1;
    }

    else
    {
      v27 = _AKLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        custodianContext6 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
        altDSID = [(AKCustodianContext *)custodianContext6 altDSID];
        sub_1000194D4(v38, altDSID);
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not find heartbeat token for account %@", v38, 0xCu);
        _objc_release(altDSID);
        _objc_release(custodianContext6);
      }

      objc_storeStrong(&v27, 0);
      if (errorCopy)
      {
        v6 = [NSError ak_errorWithCode:-7042];
        v4 = v6;
        *errorCopy = v6;
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
  urlBagKey = [(AKURLRequestProviderImpl *)self urlBagKey];
  v19 = 0;
  v17 = 0;
  v15 = 0;
  v12 = 1;
  if (urlBagKey != AKURLBagKeyCustodianRecoveryCircle)
  {
    urlBagKey2 = [(AKURLRequestProviderImpl *)self urlBagKey];
    v19 = 1;
    v12 = 1;
    if (urlBagKey2 != AKURLBagKeyCustodianPostCircle)
    {
      urlBagKey3 = [(AKURLRequestProviderImpl *)self urlBagKey];
      v17 = 1;
      v12 = 1;
      if (urlBagKey3 != AKURLBagKeyCustodianRecoveryWrappingKey)
      {
        urlBagKey4 = [(AKURLRequestProviderImpl *)self urlBagKey];
        v15 = 1;
        v12 = urlBagKey4 == AKURLBagKeyCustodianRecoveryRequest;
      }
    }
  }

  if (v15)
  {
    _objc_release(urlBagKey4);
  }

  if (v17)
  {
    _objc_release(urlBagKey3);
  }

  if (v19)
  {
    _objc_release(urlBagKey2);
  }

  _objc_release(urlBagKey);
  if (v12)
  {
    _bodyForRecoveryCircle = [(AKCustodianRequestProvider *)self _bodyForRecoveryCircle];
  }

  else
  {
    urlBagKey5 = [(AKURLRequestProviderImpl *)self urlBagKey];
    v13 = 0;
    v10 = 1;
    if (![(NSString *)urlBagKey5 isEqualToString:AKURLBagKeyCustodianInitiation])
    {
      urlBagKey6 = [(AKURLRequestProviderImpl *)self urlBagKey];
      v13 = 1;
      v10 = [(NSString *)urlBagKey6 isEqualToString:AKURLBagKeyCustodianDeletion];
    }

    if (v13)
    {
      _objc_release(urlBagKey6);
    }

    _objc_release(urlBagKey5);
    if (v10)
    {
      _bodyForRecoveryCircle = [(AKCustodianRequestProvider *)self _bodyForAddAndRevokeCustodianRequest];
    }

    else
    {
      urlBagKey7 = [(AKURLRequestProviderImpl *)self urlBagKey];
      v8 = [(NSString *)urlBagKey7 isEqualToString:AKURLBagKeyCustodianApproval];
      _objc_release(urlBagKey7);
      if (v8)
      {
        _bodyForRecoveryCircle = [(AKCustodianRequestProvider *)self _bodyForFinalizeCustodianRequest];
      }

      else
      {
        urlBagKey8 = [(AKURLRequestProviderImpl *)self urlBagKey];
        v6 = [(NSString *)urlBagKey8 isEqualToString:AKURLBagKeyCustodianUpdateRecoveryKey];
        _objc_release(urlBagKey8);
        if (v6)
        {
          _bodyForRecoveryCircle = [(AKCustodianRequestProvider *)self _bodyForCustodianUpdateRecoveryKeyRequest];
        }

        else
        {
          urlBagKey9 = [(AKURLRequestProviderImpl *)self urlBagKey];
          v4 = [(NSString *)urlBagKey9 isEqualToString:AKURLBagKeyCustodianRecoveryFeedback];
          _objc_release(urlBagKey9);
          if (v4)
          {
            _bodyForRecoveryCircle = [(AKCustodianRequestProvider *)self _bodyForEmbargoEndFeedback];
          }

          else
          {
            _bodyForRecoveryCircle = 0;
          }
        }
      }
    }
  }

  return _bodyForRecoveryCircle;
}

- (id)_bodyForRecoveryCircle
{
  selfCopy = self;
  v67[1] = a2;
  v67[0] = objc_alloc_init(NSMutableDictionary);
  custodianContext = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  pushToken = [(AKCustodianContext *)custodianContext pushToken];
  _objc_release(pushToken);
  _objc_release(custodianContext);
  if (pushToken)
  {
    custodianContext2 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    pushToken2 = [(AKCustodianContext *)custodianContext2 pushToken];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(pushToken2);
    _objc_release(custodianContext2);
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

  custodianContext3 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  recoverySessionID = [(AKCustodianContext *)custodianContext3 recoverySessionID];
  _objc_release(recoverySessionID);
  _objc_release(custodianContext3);
  if (recoverySessionID)
  {
    custodianContext4 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    recoverySessionID2 = [(AKCustodianContext *)custodianContext4 recoverySessionID];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(recoverySessionID2);
    _objc_release(custodianContext4);
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

  custodianContext5 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  recoveryStep = [(AKCustodianContext *)custodianContext5 recoveryStep];
  _objc_release(recoveryStep);
  _objc_release(custodianContext5);
  if (recoveryStep)
  {
    custodianContext6 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    recoveryStep2 = [(AKCustodianContext *)custodianContext6 recoveryStep];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(recoveryStep2);
    _objc_release(custodianContext6);
  }

  custodianContext7 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  recoverySessionID3 = [(AKCustodianContext *)custodianContext7 recoverySessionID];
  _objc_release(recoverySessionID3);
  _objc_release(custodianContext7);
  if (recoverySessionID3)
  {
    custodianContext8 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    recoverySessionID4 = [(AKCustodianContext *)custodianContext8 recoverySessionID];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(recoverySessionID4);
    _objc_release(custodianContext8);
  }

  custodianContext9 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  ownerAppleID = [(AKCustodianContext *)custodianContext9 ownerAppleID];
  _objc_release(ownerAppleID);
  _objc_release(custodianContext9);
  if (ownerAppleID)
  {
    custodianContext10 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    ownerAppleID2 = [(AKCustodianContext *)custodianContext10 ownerAppleID];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(ownerAppleID2);
    _objc_release(custodianContext10);
  }

  custodianContext11 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  ownerCustodianAltDSID = [(AKCustodianContext *)custodianContext11 ownerCustodianAltDSID];
  _objc_release(ownerCustodianAltDSID);
  _objc_release(custodianContext11);
  if (ownerCustodianAltDSID)
  {
    custodianContext12 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    ownerCustodianAltDSID2 = [(AKCustodianContext *)custodianContext12 ownerCustodianAltDSID];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(ownerCustodianAltDSID2);
    _objc_release(custodianContext12);
  }

  custodianContext13 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  custodianUUID = [(AKCustodianContext *)custodianContext13 custodianUUID];
  _objc_release(custodianUUID);
  _objc_release(custodianContext13);
  if (custodianUUID)
  {
    custodianContext14 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    custodianUUID2 = [(AKCustodianContext *)custodianContext14 custodianUUID];
    uUIDString = [custodianUUID2 UUIDString];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(uUIDString);
    _objc_release(custodianUUID2);
    _objc_release(custodianContext14);
  }

  custodianContext15 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  idmsData = [(AKCustodianContext *)custodianContext15 idmsData];
  _objc_release(idmsData);
  _objc_release(custodianContext15);
  if (idmsData)
  {
    custodianContext16 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    idmsData2 = [(AKCustodianContext *)custodianContext16 idmsData];
    v60 = [idmsData2 base64EncodedStringWithOptions:0];
    _objc_release(idmsData2);
    _objc_release(custodianContext16);
    [v67[0] setObject:v60 forKeyedSubscript:@"idmsdata"];
    objc_storeStrong(&v60, 0);
  }

  custodianContext17 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  aaData = [(AKCustodianContext *)custodianContext17 aaData];
  _objc_release(aaData);
  _objc_release(custodianContext17);
  if (aaData)
  {
    custodianContext18 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    aaData2 = [(AKCustodianContext *)custodianContext18 aaData];
    v59 = [aaData2 base64EncodedStringWithOptions:0];
    _objc_release(aaData2);
    _objc_release(custodianContext18);
    [v67[0] setObject:v59 forKeyedSubscript:@"aadata"];
    objc_storeStrong(&v59, 0);
  }

  custodianContext19 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  encryptedPRKC = [(AKCustodianContext *)custodianContext19 encryptedPRKC];
  _objc_release(encryptedPRKC);
  _objc_release(custodianContext19);
  if (encryptedPRKC)
  {
    custodianContext20 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    encryptedPRKC2 = [(AKCustodianContext *)custodianContext20 encryptedPRKC];
    v58 = [encryptedPRKC2 base64EncodedStringWithOptions:0];
    _objc_release(encryptedPRKC2);
    _objc_release(custodianContext20);
    [v67[0] setObject:v58 forKeyedSubscript:@"encryptedPRKC"];
    objc_storeStrong(&v58, 0);
  }

  custodianContext21 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  clientErrorCode = [(AKCustodianContext *)custodianContext21 clientErrorCode];
  _objc_release(custodianContext21);
  if (clientErrorCode)
  {
    custodianContext22 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    v8 = [NSNumber numberWithInteger:[(AKCustodianContext *)custodianContext22 clientErrorCode]];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(v8);
    _objc_release(custodianContext22);
  }

  custodianContext23 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  recordBuildVersion = [(AKCustodianContext *)custodianContext23 recordBuildVersion];
  _objc_release(recordBuildVersion);
  _objc_release(custodianContext23);
  if (recordBuildVersion)
  {
    custodianContext24 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    recordBuildVersion2 = [(AKCustodianContext *)custodianContext24 recordBuildVersion];
    [v67[0] setObject:? forKeyedSubscript:?];
    _objc_release(recordBuildVersion2);
    _objc_release(custodianContext24);
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
  selfCopy = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(NSMutableDictionary);
  custodianContext = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  custodianUUID = [(AKCustodianContext *)custodianContext custodianUUID];
  _objc_release(custodianUUID);
  _objc_release(custodianContext);
  if (custodianUUID)
  {
    custodianContext2 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    custodianUUID2 = [(AKCustodianContext *)custodianContext2 custodianUUID];
    uUIDString = [custodianUUID2 UUIDString];
    [v14[0] setObject:? forKeyedSubscript:?];
    _objc_release(uUIDString);
    _objc_release(custodianUUID2);
    _objc_release(custodianContext2);
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
  selfCopy = self;
  v19[1] = a2;
  v19[0] = objc_alloc_init(NSMutableDictionary);
  custodianContext = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  custodianUUID = [(AKCustodianContext *)custodianContext custodianUUID];
  _objc_release(custodianUUID);
  _objc_release(custodianContext);
  if (custodianUUID)
  {
    custodianContext2 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    custodianUUID2 = [(AKCustodianContext *)custodianContext2 custodianUUID];
    uUIDString = [custodianUUID2 UUIDString];
    [v19[0] setObject:? forKeyedSubscript:?];
    _objc_release(uUIDString);
    _objc_release(custodianUUID2);
    _objc_release(custodianContext2);
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

  custodianContext3 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  wrappingKeyRKC = [(AKCustodianContext *)custodianContext3 wrappingKeyRKC];
  _objc_release(wrappingKeyRKC);
  _objc_release(custodianContext3);
  if (wrappingKeyRKC)
  {
    custodianContext4 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    wrappingKeyRKC2 = [(AKCustodianContext *)custodianContext4 wrappingKeyRKC];
    v15 = [wrappingKeyRKC2 base64EncodedStringWithOptions:0];
    _objc_release(wrappingKeyRKC2);
    _objc_release(custodianContext4);
    [v19[0] setObject:v15 forKeyedSubscript:@"wrappingKeyRKC"];
    objc_storeStrong(&v15, 0);
  }

  v3 = [v19[0] copy];
  objc_storeStrong(v19, 0);

  return v3;
}

- (id)_bodyForCustodianUpdateRecoveryKeyRequest
{
  selfCopy = self;
  v24[1] = a2;
  v24[0] = objc_alloc_init(NSMutableDictionary);
  custodianContext = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  custodianUUID = [(AKCustodianContext *)custodianContext custodianUUID];
  _objc_release(custodianUUID);
  _objc_release(custodianContext);
  if (custodianUUID)
  {
    custodianContext2 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    custodianUUID2 = [(AKCustodianContext *)custodianContext2 custodianUUID];
    uUIDString = [custodianUUID2 UUIDString];
    [v24[0] setObject:? forKeyedSubscript:?];
    _objc_release(uUIDString);
    _objc_release(custodianUUID2);
    _objc_release(custodianContext2);
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

  custodianContext3 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  wrappingKeyRKC = [(AKCustodianContext *)custodianContext3 wrappingKeyRKC];
  _objc_release(wrappingKeyRKC);
  _objc_release(custodianContext3);
  if (wrappingKeyRKC)
  {
    custodianContext4 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    wrappingKeyRKC2 = [(AKCustodianContext *)custodianContext4 wrappingKeyRKC];
    v20 = [wrappingKeyRKC2 base64EncodedStringWithOptions:0];
    _objc_release(wrappingKeyRKC2);
    _objc_release(custodianContext4);
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
  selfCopy = self;
  v29[1] = a2;
  v29[0] = objc_alloc_init(NSMutableDictionary);
  custodianContext = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  transactionID = [(AKCustodianContext *)custodianContext transactionID];
  _objc_release(transactionID);
  _objc_release(custodianContext);
  if (transactionID)
  {
    custodianContext2 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    transactionID2 = [(AKCustodianContext *)custodianContext2 transactionID];
    [v29[0] setObject:? forKeyedSubscript:?];
    _objc_release(transactionID2);
    _objc_release(custodianContext2);
  }

  custodianContext3 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  v15 = [NSNumber numberWithInteger:[(AKCustodianContext *)custodianContext3 notificationAction]];
  [v29[0] setObject:? forKeyedSubscript:?];
  _objc_release(v15);
  _objc_release(custodianContext3);
  custodianContext4 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  recoverySessionID = [(AKCustodianContext *)custodianContext4 recoverySessionID];
  _objc_release(recoverySessionID);
  _objc_release(custodianContext4);
  if (recoverySessionID)
  {
    custodianContext5 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    recoverySessionID2 = [(AKCustodianContext *)custodianContext5 recoverySessionID];
    [v29[0] setObject:? forKeyedSubscript:?];
    _objc_release(recoverySessionID2);
    _objc_release(custodianContext5);
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

  custodianContext6 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
  altDSID = [(AKCustodianContext *)custodianContext6 altDSID];
  _objc_release(altDSID);
  _objc_release(custodianContext6);
  if (altDSID)
  {
    custodianContext7 = [(AKCustodianRequestProvider *)selfCopy custodianContext];
    altDSID2 = [(AKCustodianContext *)custodianContext7 altDSID];
    [v29[0] setObject:? forKeyedSubscript:?];
    _objc_release(altDSID2);
    _objc_release(custodianContext7);
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

- (BOOL)validateResponseData:(id)data error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  errorCopy = error;
  v15.receiver = selfCopy;
  v15.super_class = AKCustodianRequestProvider;
  v16 = [(AKURLRequestProviderImpl *)&v15 validateResponseData:location[0] error:error];
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
        *errorCopy = v8;
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