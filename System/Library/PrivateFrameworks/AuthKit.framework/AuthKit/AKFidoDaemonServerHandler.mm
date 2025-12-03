@interface AKFidoDaemonServerHandler
- (void)_handleFinishFidoResponse:(id)response data:(id)data context:(id)context recoveryToken:(id)token error:(id)error completion:(id)completion;
- (void)_handleStartFidoResponse:(id)response data:(id)data context:(id)context recoveryToken:(id)token error:(id)error completion:(id)completion;
- (void)finishFidoAuthWithResponse:(id)response client:(id)client context:(id)context recoveryToken:(id)token completion:(id)completion;
- (void)startFidoAuthWithContext:(id)context recoveryToken:(id)token client:(id)client completion:(id)completion;
@end

@implementation AKFidoDaemonServerHandler

- (void)startFidoAuthWithContext:(id)context recoveryToken:(id)token client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v48 = 0;
  objc_storeStrong(&v48, token);
  v47 = 0;
  objc_storeStrong(&v47, client);
  v46 = 0;
  objc_storeStrong(&v46, completion);
  _identityToken = [location[0] _identityToken];
  _objc_release(_identityToken);
  if (!_identityToken)
  {
    v45 = _AKLogSystem();
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      log = v45;
      type = v44;
      sub_10001CEEC(v43);
      _os_log_impl(&_mh_execute_header, log, type, "GS token is missing, giving it a shot to receive it from the account", v43, 2u);
    }

    objc_storeStrong(&v45, 0);
    v42 = +[AKAccountManager sharedInstance];
    altDSID = [location[0] altDSID];
    v41 = [v42 authKitAccountWithAltDSID:? error:?];
    _objc_release(altDSID);
    if (v41)
    {
      v12 = location[0];
      v14 = [v42 masterTokenForAccount:v41];
      stringValue = [v14 stringValue];
      [v12 _setIdentityToken:?];
      _objc_release(stringValue);
      _objc_release(v14);
    }

    else
    {
      v40 = _AKLogSystem();
      v39 = 16;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v10 = v40;
        v11 = v39;
        sub_10001CEEC(v38);
        _os_log_error_impl(&_mh_execute_header, v10, v11, "We could not find an account, and the token is missing. Sending the requestas-is and hoping for the best.", v38, 2u);
      }

      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
  }

  if (v48)
  {
    v6 = _objc_retain(AKURLBagKeyFidoStartRecoveryAuthKey);
  }

  else
  {
    v6 = _objc_retain(AKURLBagKeyFidoStartAuthKey);
  }

  v37 = v6;
  v36 = [(AKURLRequestProviderImpl *)[AKFidoRequestProvider alloc] initWithContext:location[0] urlBagKey:v6];
  if (v47)
  {
    [v36 setClient:v47];
  }

  if (v48)
  {
    [v36 setRecoveryToken:v48];
  }

  v35 = [[AKServiceControllerImpl alloc] initWithRequestProvider:v36];
  v34 = _AKLogFido();
  v33 = 2;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v8 = v34;
    v9 = v33;
    sub_10001CEEC(v32);
    _os_log_debug_impl(&_mh_execute_header, v8, v9, "Calling GS endpoint to start the Fido auth.", v32, 2u);
  }

  objc_storeStrong(&v34, 0);
  objc_initWeak(&v31, selfCopy);
  v7 = v35;
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_100103DC0;
  v26 = &unk_1003236A8;
  objc_copyWeak(&v30, &v31);
  v27 = _objc_retain(location[0]);
  v28 = _objc_retain(v48);
  v29 = _objc_retain(v46);
  [v7 executeRequestWithCompletion:&v22];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v31);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleStartFidoResponse:(id)response data:(id)data context:(id)context recoveryToken:(id)token error:(id)error completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v33 = 0;
  objc_storeStrong(&v33, data);
  v32 = 0;
  objc_storeStrong(&v32, context);
  v31 = 0;
  objc_storeStrong(&v31, token);
  v30 = 0;
  objc_storeStrong(&v30, error);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  if (v30)
  {
    v28 = _AKLogFido();
    v27 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v37, v30);
      _os_log_error_impl(&_mh_execute_header, v28, v27, "Error starting fido auth flow: %@", v37, 0xCu);
    }

    objc_storeStrong(&v28, 0);
    (*(v29 + 2))(v29, 0, v30);
    v26 = 1;
  }

  else
  {
    v25 = _AKLogFido();
    v24 = 2;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v11 = v25;
      v12 = v24;
      sub_10001CEEC(v23);
      _os_log_debug_impl(&_mh_execute_header, v11, v12, "Parsing Fido auth context.", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v22 = [AAFSerialization dictionaryFromObject:v33 ofType:@"application/json"];
    v21 = _AKLogFido();
    v20 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v36, v22);
      _os_log_debug_impl(&_mh_execute_header, v21, v20, "Creating Fido auth context with: %@", v36, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    v8 = [AKFidoContext alloc];
    v19 = [v8 initWithParameters:v22];
    if (!v19)
    {
      oslog = _AKLogFido();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v35, v22);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error parsing fido auth parameters: %@", v35, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v9 = [NSError ak_errorWithCode:-7010];
      v10 = v30;
      v30 = v9;
      _objc_release(v10);
    }

    (*(v29 + 2))(v29, v19, v30);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v22, 0);
    v26 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)finishFidoAuthWithResponse:(id)response client:(id)client context:(id)context recoveryToken:(id)token completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v40 = 0;
  objc_storeStrong(&v40, client);
  v39 = 0;
  objc_storeStrong(&v39, context);
  v38 = 0;
  objc_storeStrong(&v38, token);
  v37 = 0;
  objc_storeStrong(&v37, completion);
  if (v38)
  {
    v7 = _objc_retain(AKURLBagKeyFidoFinishRecoveryAuthKey);
  }

  else
  {
    v7 = _objc_retain(AKURLBagKeyFidoFinishAuthKey);
  }

  v36 = v7;
  v35 = [(AKURLRequestProviderImpl *)[AKFidoRequestProvider alloc] initWithContext:v39 urlBagKey:v7];
  if (v40)
  {
    [v35 setClient:v40];
  }

  if (v38)
  {
    [v35 setRecoveryToken:v38];
  }

  v43[0] = @"authenticatorData";
  authenticatorData = [location[0] authenticatorData];
  v44[0] = authenticatorData;
  v43[1] = @"clientData";
  clientData = [location[0] clientData];
  v44[1] = clientData;
  v43[2] = @"signature";
  signature = [location[0] signature];
  v44[2] = signature;
  v43[3] = @"credentialId";
  credentialID = [location[0] credentialID];
  v44[3] = credentialID;
  v43[4] = @"userHandle";
  userIdentifier = [location[0] userIdentifier];
  v44[4] = userIdentifier;
  v34 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:5];
  _objc_release(userIdentifier);
  _objc_release(credentialID);
  _objc_release(signature);
  _objc_release(clientData);
  _objc_release(authenticatorData);
  [v35 setAuthKitBody:v34];
  v33 = [[AKServiceControllerImpl alloc] initWithRequestProvider:v35];
  v32 = _AKLogFido();
  v31 = 2;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    log = v32;
    type = v31;
    sub_10001CEEC(v30);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Calling GS endpoint to finish the Fido auth.", v30, 2u);
  }

  objc_storeStrong(&v32, 0);
  objc_initWeak(&from, selfCopy);
  v8 = v33;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_10010497C;
  v24 = &unk_1003236A8;
  objc_copyWeak(&v28, &from);
  v25 = _objc_retain(v39);
  v26 = _objc_retain(v38);
  v27 = _objc_retain(v37);
  [v8 executeRequestWithCompletion:&v20];
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&from);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleFinishFidoResponse:(id)response data:(id)data context:(id)context recoveryToken:(id)token error:(id)error completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v28 = 0;
  objc_storeStrong(&v28, data);
  v27 = 0;
  objc_storeStrong(&v27, context);
  v26 = 0;
  objc_storeStrong(&v26, token);
  v25 = 0;
  objc_storeStrong(&v25, error);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  if (v25)
  {
    v23 = _AKLogFido();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v30, v25);
      _os_log_error_impl(&_mh_execute_header, v23, v22, "Error finishing fido auth flow: %@", v30, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    (*(v24 + 2))(v24, 0, 0, v25);
    v21 = 1;
  }

  else
  {
    v20 = _AKLogFido();
    v19 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v9 = v20;
      v10 = v19;
      sub_10001CEEC(v18);
      _os_log_debug_impl(&_mh_execute_header, v9, v10, "Creating server response from finish fido response.", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v17 = [AAFSerialization dictionaryFromObject:v28 ofType:@"application/json"];
    v8 = [AKAuthenticationServerResponse alloc];
    v16 = [(AKAuthenticationServerResponse *)v8 initWithServerResponse:location[0] responseBody:v17];
    (*(v24 + 2))(v24, v16, v17, v25);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    v21 = 0;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

@end