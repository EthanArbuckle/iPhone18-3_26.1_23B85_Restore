@interface AKWalrusDaemonService
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (void)PCSAuthContextForWebSessionIdentifier:(id)a3 serviceName:(id)a4 completion:(id)a5;
- (void)configureExportedInterface:(id)a3;
- (void)postWalrusStateUpdateToServerWithContext:(id)a3 urlBagKey:(id)a4 username:(id)a5 password:(id)a6 completion:(id)a7;
- (void)removeAllPCSAuthCredentialWithCompletion:(id)a3;
- (void)verifyEnableWalrusAllowedWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKWalrusDaemonService

- (void)configureExportedInterface:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v9[2] = objc_opt_class();
  v9[3] = objc_opt_class();
  v9[4] = objc_opt_class();
  v9[5] = objc_opt_class();
  v9[6] = objc_opt_class();
  v9[7] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v9 count:8];
  v6 = [NSSet setWithArray:?];
  _objc_release(v3);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v8[5] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v8 count:6];
  v5 = [NSSet setWithArray:?];
  _objc_release(v4);
  [location[0] setClasses:v6 forSelector:"PCSAuthContextForWebSessionIdentifier:serviceName:completion:" argumentIndex:? ofReply:?];
  [location[0] setClasses:v5 forSelector:"PCSAuthContextForWebSessionIdentifier:serviceName:completion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"removeAllPCSAuthCredentialWithCompletion:" argumentIndex:0 ofReply:0];
  [location[0] setClasses:v5 forSelector:"removeAllPCSAuthCredentialWithCompletion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"verifyEnableWalrusAllowedWithContext:completion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"postWalrusStateUpdateToServerWithContext:urlBagKey:username:password:completion:" argumentIndex:0 ofReply:1];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)PCSAuthContextForWebSessionIdentifier:(id)a3 serviceName:(id)a4 completion:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = sub_10000371C;
  v23 = sub_100011050;
  v7 = [AKPCSAuthController alloc];
  v8 = +[AKWebSessionPCSKeyProvider sharedInstance];
  v24 = [(AKPCSAuthController *)v7 initWithPCSKeyProvider:?];
  _objc_release(v8);
  v11 = v19[5];
  v9 = location[0];
  v10 = v26;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100041A94;
  v16 = &unk_10031FD20;
  v17[1] = &v18;
  v17[0] = _objc_retain(v25);
  [v11 PCSAuthContextForWebSessionIdentifier:v9 serviceName:v10 completion:&v12];
  objc_storeStrong(v17, 0);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)removeAllPCSAuthCredentialWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKPCSAuthController alloc];
  v4 = +[AKWebSessionPCSKeyProvider sharedInstance];
  v5 = [(AKPCSAuthController *)v3 initWithPCSKeyProvider:?];
  _objc_release(v4);
  [(AKPCSAuthController *)v5 removeAllPCSAuthCredential];
  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)verifyEnableWalrusAllowedWithContext:(id)a3 completion:(id)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  if ([(AKClient *)v26->_client hasInternalAccess])
  {
    v4 = [AKWalrusRequestProvider alloc];
    v19 = [(AKWalrusRequestProvider *)v4 initWithContext:location[0] urlBagKey:AKURLBagKeyCustodianDataRecoveryServiceDisable];
    if (v26->_client)
    {
      [(AKURLRequestProviderImpl *)v19 setClient:v26->_client];
    }

    v18 = [[AKServiceControllerImpl alloc] initWithRequestProvider:v19];
    v17 = objc_alloc_init(AKAuthHandlerImpl);
    [v17 setForceSilentAuth:1];
    [(AKServiceControllerImpl *)v18 setAuthenticationDelegate:v17];
    v5 = v18;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_100041F10;
    v15 = &unk_10031FC28;
    v16 = _objc_retain(v24);
    [(AKServiceControllerImpl *)v5 executeRequestWithCompletion:&v11];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    v20 = 0;
  }

  else
  {
    v23 = _AKLogSystem();
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      sub_10001CEEC(v21);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Owner access entitlement required but missing!", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    v6 = v24;
    v7 = [NSError ak_errorWithCode:-7026];
    v6[2]();
    _objc_release(v7);
    v20 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)postWalrusStateUpdateToServerWithContext:(id)a3 urlBagKey:(id)a4 username:(id)a5 password:(id)a6 completion:(id)a7
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = 0;
  objc_storeStrong(&v33, a5);
  v32 = 0;
  objc_storeStrong(&v32, a6);
  v31 = 0;
  objc_storeStrong(&v31, a7);
  if ([(AKClient *)v36->_client hasInternalAccess])
  {
    v7 = [AKWalrusRequestProvider alloc];
    v26 = [(AKWalrusRequestProvider *)v7 initWithContext:location[0] urlBagKey:v34];
    v37 = @"success";
    v38 = @"1";
    v9 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [(AKURLRequestProviderImpl *)v26 setAuthKitBody:?];
    _objc_release(v9);
    if (v36->_client)
    {
      [(AKURLRequestProviderImpl *)v26 setClient:v36->_client];
    }

    v25 = [[AKServiceControllerImpl alloc] initWithRequestProvider:v26];
    v24 = objc_alloc_init(AKAuthHandlerImpl);
    [v24 setForceSilentAuth:1];
    [(AKServiceControllerImpl *)v25 setAuthenticationDelegate:v24];
    v8 = v25;
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_10004246C;
    v22 = &unk_10031FC28;
    v23 = _objc_retain(v31);
    [(AKServiceControllerImpl *)v8 executeRequestWithCompletion:&v18];
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    v27 = 0;
  }

  else
  {
    v30 = _AKLogSystem();
    v29 = 16;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      log = v30;
      type = v29;
      sub_10001CEEC(v28);
      _os_log_error_impl(&_mh_execute_header, log, type, "Internal/Owner access entitlement required but missing!", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
    v10 = v31;
    v11 = [NSError ak_errorWithCode:-7026];
    v10[2]();
    _objc_release(v11);
    v27 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7.receiver = v9;
  v7.super_class = AKWalrusDaemonService;
  if ([(AKWalrusDaemonService *)&v7 shouldAcceptNewConnection:location[0]])
  {
    v3 = [AKClient alloc];
    v4 = [(AKClient *)v3 initWithConnection:location[0]];
    client = v9->_client;
    v9->_client = v4;
    _objc_release(client);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

@end