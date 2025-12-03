@interface AKAuthorizationEndorserRapportClient
- (AKAuthorizationEndorserRapportClient)initWithDeviceID:(id)d;
- (AKAuthorizationEndorserRapportClientDelegate)delegate;
- (void)_deactivate;
- (void)_handleStartAuthorizationWithResponse:(id)response;
- (void)_sendAuthorizationDidFinishRequestWithAuthorization:(id)authorization;
- (void)_sendAuthorizationDidFinishRequestWithError:(id)error;
- (void)_sendDidStartServerAuthorizationEvent;
- (void)_sendStartAuthorizationRequest;
- (void)authorizationDaemonServiceWillProcessUserResponse:(id)response;
- (void)startAuthorization;
- (void)startAuthorizationWithCompanionLinkClient:(id)client;
@end

@implementation AKAuthorizationEndorserRapportClient

- (AKAuthorizationEndorserRapportClient)initWithDeviceID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AKAuthorizationEndorserRapportClient;
  selfCopy = [(AKAuthorizationEndorserRapportClient *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    if (sub_100102A40(0))
    {
      v4 = objc_alloc_init(sub_100102E68());
    }

    else
    {
      v4 = objc_alloc_init(0);
    }

    v7 = v4;
    [v4 setIdentifier:location[0]];
    objc_storeStrong(&selfCopy->_endorseeDevice, v7);
    objc_storeStrong(&v7, 0);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)startAuthorization
{
  if (sub_100102A40(0))
  {
    v2 = objc_alloc_init(sub_100102C90());
  }

  else
  {
    v2 = objc_alloc_init(0);
  }

  v3 = v2;
  [(AKAuthorizationEndorserRapportClient *)self startAuthorizationWithCompanionLinkClient:?];
  _objc_release(v3);
}

- (void)startAuthorizationWithCompanionLinkClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  if (selfCopy->_endorseeClient)
  {
    v21 = _AKLogSiwa();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      log = v21;
      type = v20;
      sub_10001CEEC(v19);
      _os_log_impl(&_mh_execute_header, log, type, "Authorization Endorser already in progress, ignoring startAuthorization.", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
  }

  else
  {
    v17 = _AKLogSiwa();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v17;
      v5 = v16;
      sub_10001CEEC(v15);
      _os_log_impl(&_mh_execute_header, v4, v5, "Authorization Endorser Started.", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    [location[0] setDestinationDevice:selfCopy->_endorseeDevice];
    objc_storeStrong(&selfCopy->_endorseeClient, location[0]);
    objc_initWeak(&v14, selfCopy);
    v3 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100120F4C;
    v12 = &unk_100322528;
    objc_copyWeak(&v13, &v14);
    [v3 activateWithCompletion:&v8];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v14);
    v18 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)authorizationDaemonServiceWillProcessUserResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  [(AKAuthorizationEndorserRapportClient *)selfCopy _sendDidStartServerAuthorizationEvent];
  objc_storeStrong(location, 0);
}

- (void)_deactivate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [location[0] authorizationEndorserRapportClientDidFinish:selfCopy];
  }

  [(RPCompanionLinkClient *)selfCopy->_endorseeClient invalidate];
  objc_storeStrong(&selfCopy->_endorseeClient, 0);
  objc_storeStrong(location, 0);
}

- (void)_sendStartAuthorizationRequest
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100074370(v16, selfCopy->_endorseeDevice, selfCopy->_endorseeDevice);
    _os_log_impl(&_mh_execute_header, location[0], v13, "Sending StartAuthorizationRequest. {device=%@, device_ptr=%p}", v16, 0x16u);
  }

  objc_storeStrong(location, 0);
  objc_initWeak(&from, selfCopy);
  endorseeClient = selfCopy->_endorseeClient;
  v10 = 0;
  if (sub_100102A40(0))
  {
    v11 = sub_1001031B4();
    v10 = 1;
    v2 = v11;
  }

  else
  {
    v2 = 0;
  }

  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001214BC;
  v8 = &unk_100323DE0;
  objc_copyWeak(&v9, &from);
  [(RPCompanionLinkClient *)endorseeClient sendRequestID:@"com.apple.AuthKit.StartAuthorization" request:&__NSDictionary0__struct destinationID:v2 options:0 responseHandler:&v4];
  if (v10)
  {
    _objc_release(v11);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
}

- (void)_handleStartAuthorizationWithResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v30 = _AKLogSiwa();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v36, location[0]);
    _os_log_impl(&_mh_execute_header, v30, v29, "Handling StartAuthorizationResponse. {response=%@}", v36, 0xCu);
  }

  objc_storeStrong(&v30, 0);
  v28 = [location[0] objectForKeyedSubscript:@"CredentialRequest"];
  v27 = 0;
  v9 = objc_opt_class();
  v25 = v27;
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:v9 fromData:v28 error:&v25];
  objc_storeStrong(&v27, v25);
  v26 = v8;
  if (v8)
  {
    [v26 set_isRapportLogin:1];
    v21 = _AKLogSiwa();
    v20 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A654(v34, [v26 _requirePassword]);
      _os_log_debug_impl(&_mh_execute_header, v21, v20, "_requirePassword property received as %i, setting to NO", v34, 8u);
    }

    objc_storeStrong(&v21, 0);
    [v26 set_requirePassword:0];
    v19 = _AKLogSiwa();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v33, v26);
      _os_log_impl(&_mh_execute_header, v19, v18, "StartAuthorization presenting authorization UI for Rapport request. {credentialRequestContext=%@}", v33, 0xCu);
    }

    objc_storeStrong(&v19, 0);
    v7 = [AKOwnerProxyClient alloc];
    v17 = [(AKOwnerProxyClient *)v7 initWithCredentialRequest:v26];
    v6 = [[AKAuthorizationDaemonService alloc] initWithClient:v17];
    authorizationService = selfCopy->_authorizationService;
    selfCopy->_authorizationService = v6;
    _objc_release(authorizationService);
    [(AKAuthorizationDaemonService *)selfCopy->_authorizationService setDelegate:selfCopy];
    objc_initWeak(&from, selfCopy);
    v4 = selfCopy->_authorizationService;
    v5 = v26;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100121DD8;
    v14 = &unk_100323E08;
    objc_copyWeak(&v15, &from);
    [(AKAuthorizationDaemonService *)v4 performAuthorization:v5 completion:&v10];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
    objc_storeStrong(&v17, 0);
    v22 = 0;
  }

  else
  {
    v24 = _AKLogSiwa();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v35, v27, v28);
      _os_log_error_impl(&_mh_execute_header, v24, v23, "Failed to unarchive the credential request context. {error=%@, data=%@}", v35, 0x16u);
    }

    objc_storeStrong(&v24, 0);
    [(AKAuthorizationEndorserRapportClient *)selfCopy _sendAuthorizationDidFinishRequestWithError:v27];
    v22 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_sendAuthorizationDidFinishRequestWithAuthorization:(id)authorization
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v23 = _AKLogSiwa();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_100075B68(v29, location[0], selfCopy->_endorseeDevice, selfCopy->_endorseeDevice);
    _os_log_impl(&_mh_execute_header, v23, v22, "Sending AuthorizationDidFinish. {authorization=%@, device=%@, device_ptr=%p}", v29, 0x20u);
  }

  objc_storeStrong(&v23, 0);
  v21 = 0;
  v19 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v19];
  objc_storeStrong(&v21, v19);
  v20 = v6;
  if (v6)
  {
    objc_initWeak(&from, selfCopy);
    endorseeClient = selfCopy->_endorseeClient;
    v26 = @"Authorization";
    v27 = v20;
    v4 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = 0;
    if (sub_100102A40(0))
    {
      v14 = sub_1001031B4();
      v13 = 1;
      v3 = v14;
    }

    else
    {
      v3 = 0;
    }

    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100122328;
    v11 = &unk_100323DE0;
    objc_copyWeak(&v12, &from);
    [(RPCompanionLinkClient *)endorseeClient sendRequestID:@"com.apple.AuthKit.AuthorizationDidFinish" request:v4 destinationID:v3 options:0 responseHandler:&v7];
    if (v13)
    {
      _objc_release(v14);
    }

    _objc_release(v4);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    v16 = 0;
  }

  else
  {
    v18 = _AKLogSiwa();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v28, v21);
      _os_log_error_impl(&_mh_execute_header, v18, v17, "Failed to archive AKAuthorization object, failing authorization. {archiveError=%@}", v28, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    [(AKAuthorizationEndorserRapportClient *)selfCopy _sendAuthorizationDidFinishRequestWithError:v21];
    v16 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_sendAuthorizationDidFinishRequestWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v32 = _AKLogSiwa();
  v31 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    domain = [location[0] domain];
    v30 = _objc_retain(domain);
    code = [location[0] code];
    sub_1000C53D8(v39, v30, code, location[0]);
    _os_log_error_impl(&_mh_execute_header, v32, v31, "Rapport endorser authorization failed. {errorDomain=%{public}@, errorCode=%ld, error=%@}", v39, 0x20u);
    _objc_release(domain);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v32, 0);
  v28 = 0;
  if (location[0])
  {
    objc_storeStrong(location, location[0]);
  }

  else
  {
    v29 = [NSError ak_errorWithCode:-7001];
    v28 = 1;
    objc_storeStrong(location, v29);
  }

  if (v28)
  {
    _objc_release(v29);
  }

  v27 = 0;
  v25 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v25];
  objc_storeStrong(&v27, v25);
  v26 = v8;
  v24 = 0;
  if (v8)
  {
    v37 = @"Error";
    v38 = v26;
    v3 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v4 = v24;
    v24 = v3;
    _objc_release(v4);
  }

  else
  {
    objc_storeStrong(&v24, &__NSDictionary0__struct);
    v23 = _AKLogSiwa();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v36, v27);
      _os_log_error_impl(&_mh_execute_header, v23, v22, "Error object won't be sent, failed to archive. {archiveError=%@}", v36, 0xCu);
    }

    objc_storeStrong(&v23, 0);
  }

  v21 = _AKLogSiwa();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sub_100075B68(v35, location[0], selfCopy->_endorseeDevice, selfCopy->_endorseeDevice);
    _os_log_impl(&_mh_execute_header, v21, v20, "Sending AuthorizationDidFinish. {error=%@, device=%@, device_ptr=%p}", v35, 0x20u);
  }

  objc_storeStrong(&v21, 0);
  objc_initWeak(&from, selfCopy);
  endorseeClient = selfCopy->_endorseeClient;
  v7 = v24;
  v17 = 0;
  if (sub_100102A40(0))
  {
    v18 = sub_1001031B4();
    v17 = 1;
    v5 = v18;
  }

  else
  {
    v5 = 0;
  }

  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100122BDC;
  v15 = &unk_100323DE0;
  objc_copyWeak(&v16, &from);
  [(RPCompanionLinkClient *)endorseeClient sendRequestID:@"com.apple.AuthKit.AuthorizationDidFinish" request:v7 destinationID:v5 options:0 responseHandler:&v11];
  if (v17)
  {
    _objc_release(v18);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_sendDidStartServerAuthorizationEvent
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100074370(v16, selfCopy->_endorseeDevice, selfCopy->_endorseeDevice);
    _os_log_impl(&_mh_execute_header, location[0], v13, "Sending DidStartServerAuthorization event. {device=%@, device_ptr=%p}", v16, 0x16u);
  }

  objc_storeStrong(location, 0);
  objc_initWeak(&from, selfCopy);
  endorseeClient = selfCopy->_endorseeClient;
  v10 = 0;
  if (sub_100102A40(0))
  {
    v11 = sub_1001031B4();
    v10 = 1;
    v2 = v11;
  }

  else
  {
    v2 = 0;
  }

  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100123070;
  v8 = &unk_100322528;
  objc_copyWeak(&v9, &from);
  [(RPCompanionLinkClient *)endorseeClient sendEventID:@"com.apple.AuthKit.DidStartServerAuthorization" event:&__NSDictionary0__struct destinationID:v2 options:0 completion:&v4];
  if (v10)
  {
    _objc_release(v11);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
}

- (AKAuthorizationEndorserRapportClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end