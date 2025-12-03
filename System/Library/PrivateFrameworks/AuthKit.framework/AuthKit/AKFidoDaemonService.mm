@interface AKFidoDaemonService
- (id)authorizationController;
- (id)serverHandler;
- (void)_handleGrandSlamFidoAuthorizationResponse:(id)response context:(id)context recoveryToken:(id)token error:(id)error completion:(id)completion;
- (void)configureExportedInterface:(id)interface;
- (void)registerFidoKeyWithContext:(id)context completion:(id)completion;
- (void)verifyFidoKeyWithContext:(id)context completion:(id)completion;
- (void)verifyFidoKeyWithFidoContext:(id)context completion:(id)completion;
- (void)verifyFidoRecoveryWithContext:(id)context recoveryToken:(id)token completion:(id)completion;
@end

@implementation AKFidoDaemonService

- (void)configureExportedInterface:(id)interface
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, interface);
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
  v4 = [NSArray arrayWithObjects:v8 count:5];
  v5 = [NSSet setWithArray:?];
  _objc_release(v4);
  [location[0] setClasses:v6 forSelector:"registerFidoKeyWithContext:completion:" argumentIndex:? ofReply:?];
  [location[0] setClasses:v5 forSelector:"registerFidoKeyWithContext:completion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"verifyFidoKeyWithContext:completion:" argumentIndex:0 ofReply:0];
  [location[0] setClasses:v5 forSelector:"verifyFidoKeyWithContext:completion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"verifyFidoRecoveryWithContext:recoveryToken:completion:" argumentIndex:0 ofReply:0];
  [location[0] setClasses:v5 forSelector:"verifyFidoRecoveryWithContext:recoveryToken:completion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"verifyFidoKeyWithFidoContext:completion:" argumentIndex:0 ofReply:0];
  [location[0] setClasses:v5 forSelector:"verifyFidoKeyWithFidoContext:completion:" argumentIndex:0 ofReply:1];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)registerFidoKeyWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = _AKLogFido();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v5 = [location[0] debugDescription];
    sub_1000194D4(v11, v5);
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Starting Fido registration with context: %@", v11, 0xCu);
    _objc_release(v5);
  }

  objc_storeStrong(&v7, 0);
  authorizationController = [(AKFidoDaemonService *)selfCopy authorizationController];
  [authorizationController performRegistrationRequestWithContext:location[0] completion:v8];
  _objc_release(authorizationController);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)verifyFidoKeyWithFidoContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v6 = _AKLogFido();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v10, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Starting Fido authentication with context: %@", v10, 0xCu);
  }

  objc_storeStrong(&v6, 0);
  authorizationController = [(AKFidoDaemonService *)selfCopy authorizationController];
  [authorizationController performAuthenticationRequestWithContext:location[0] completion:v7];
  _objc_release(authorizationController);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)verifyFidoKeyWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = _AKLogFido();
  v17 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v5 = [location[0] debugDescription];
    sub_1000194D4(v22, v5);
    _os_log_debug_impl(&_mh_execute_header, v18, v17, "Starting Fido authentication with context: %@", v22, 0xCu);
    _objc_release(v5);
  }

  objc_storeStrong(&v18, 0);
  objc_initWeak(&from, selfCopy);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000199AC;
  v11 = &unk_10031EEA8;
  objc_copyWeak(&v14, &from);
  v13 = _objc_retain(v19);
  v12 = _objc_retain(location[0]);
  v15 = objc_retainBlock(&v7);
  serverHandler = [(AKFidoDaemonService *)selfCopy serverHandler];
  [serverHandler startFidoAuthWithContext:location[0] recoveryToken:0 client:0 completion:v15];
  _objc_release(serverHandler);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)verifyFidoRecoveryWithContext:(id)context recoveryToken:(id)token completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v23 = 0;
  objc_storeStrong(&v23, token);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v21 = _AKLogFido();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v6 = [location[0] debugDescription];
    sub_1000194D4(v26, v6);
    _os_log_debug_impl(&_mh_execute_header, v21, v20, "Starting Fido recovery with context: %@", v26, 0xCu);
    _objc_release(v6);
  }

  objc_storeStrong(&v21, 0);
  objc_initWeak(&from, selfCopy);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10001A0DC;
  v13 = &unk_10031EEF8;
  objc_copyWeak(&v17, &from);
  v16 = _objc_retain(v22);
  v14 = _objc_retain(location[0]);
  v15 = _objc_retain(v23);
  v18 = objc_retainBlock(&v9);
  serverHandler = [(AKFidoDaemonService *)selfCopy serverHandler];
  [serverHandler startFidoAuthWithContext:location[0] recoveryToken:v23 client:0 completion:v18];
  _objc_release(serverHandler);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleGrandSlamFidoAuthorizationResponse:(id)response context:(id)context recoveryToken:(id)token error:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v22 = 0;
  objc_storeStrong(&v22, context);
  v21 = 0;
  objc_storeStrong(&v21, token);
  v20 = 0;
  objc_storeStrong(&v20, error);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  if (v20)
  {
    v18 = _AKLogFido();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v25, v20);
      _os_log_error_impl(&_mh_execute_header, v18, v17, "Error authorizing fido auth: %@", v25, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    (*(v19 + 2))(v19, 0, 0, v20);
    v16 = 1;
  }

  else
  {
    serverHandler = [(AKFidoDaemonService *)selfCopy serverHandler];
    v7 = location[0];
    v15 = _objc_retain(v19);
    v13 = _objc_retain(v20);
    v14 = _objc_retain(location[0]);
    [serverHandler finishFidoAuthWithResponse:v7 client:? context:? recoveryToken:? completion:?];
    _objc_release(serverHandler);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (id)authorizationController
{
  if (!self->_authorizationController)
  {
    v2 = objc_alloc_init(AKFidoAuthorizationController);
    authorizationController = self->_authorizationController;
    self->_authorizationController = v2;
    _objc_release(authorizationController);
  }

  v4 = self->_authorizationController;

  return v4;
}

- (id)serverHandler
{
  if (!self->_serverHandler)
  {
    v2 = objc_alloc_init(AKFidoDaemonServerHandler);
    serverHandler = self->_serverHandler;
    self->_serverHandler = v2;
    _objc_release(serverHandler);
  }

  v4 = self->_serverHandler;

  return v4;
}

@end