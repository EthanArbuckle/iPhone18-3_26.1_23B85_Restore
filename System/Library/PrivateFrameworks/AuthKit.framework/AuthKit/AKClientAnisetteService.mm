@interface AKClientAnisetteService
- (AKClientAnisetteService)initWithClient:(id)client context:(id)context;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)fetchPeerAttestationDataForRequest:(id)request completion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation AKClientAnisetteService

- (AKClientAnisetteService)initWithClient:(id)client context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v11 = 0;
  objc_storeStrong(&v11, context);
  v4 = selfCopy;
  selfCopy = 0;
  v10 = [(AKClientAnisetteService *)v4 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v5 = [location[0] proxyWithErrorHandler:&stru_100324EB8];
    clientProxy = selfCopy->_clientProxy;
    selfCopy->_clientProxy = v5;
    _objc_release(clientProxy);
    objc_storeStrong(&selfCopy->_context, v11);
  }

  v8 = _objc_retain(selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  selfCopy = self;
  v9 = a2;
  necessaryCopy = necessary;
  location = 0;
  objc_storeStrong(&location, completion);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v11, "[AKClientAnisetteService fetchAnisetteDataAndProvisionIfNecessary:withCompletion:]", 34);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) called", v11, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  if (selfCopy->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)selfCopy->_clientProxy fetchAnisetteDataForContext:selfCopy->_context provisionIfNecessary:necessaryCopy withCompletion:location];
  }

  else
  {
    v4 = location;
    v5 = [NSError ak_errorWithCode:-7061];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&location, 0);
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = _AKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v11, "[AKClientAnisetteService syncAnisetteWithSIMData:completion:]", 44);
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s (%d) called", v11, 0x12u);
  }

  objc_storeStrong(&v7, 0);
  if (selfCopy->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)selfCopy->_clientProxy syncAnisetteForContext:selfCopy->_context withSIMData:location[0] completion:v8];
  }

  else
  {
    v4 = v8;
    v5 = [NSError ak_errorWithCode:-7061];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v5 = _AKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v8, "[AKClientAnisetteService eraseAnisetteWithCompletion:]", 54);
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s (%d) called", v8, 0x12u);
  }

  objc_storeStrong(&v5, 0);
  if (selfCopy->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)selfCopy->_clientProxy eraseAnisetteForContext:selfCopy->_context withCompletion:location[0]];
  }

  else
  {
    v3 = location[0];
    v4 = [NSError ak_errorWithCode:-7061];
    v3[2](v3, 0);
    _objc_release(v4);
  }

  objc_storeStrong(location, 0);
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v5 = _AKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v8, "[AKClientAnisetteService provisionAnisetteWithCompletion:]", 64);
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s (%d) called", v8, 0x12u);
  }

  objc_storeStrong(&v5, 0);
  if (selfCopy->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)selfCopy->_clientProxy provisionAnisetteForContext:selfCopy->_context withCompletion:location[0]];
  }

  else
  {
    v3 = location[0];
    v4 = [NSError ak_errorWithCode:-7061];
    v3[2](v3, 0);
    _objc_release(v4);
  }

  objc_storeStrong(location, 0);
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = _AKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v11, "[AKClientAnisetteService legacyAnisetteDataForDSID:withCompletion:]", 74);
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s (%d) called", v11, 0x12u);
  }

  objc_storeStrong(&v7, 0);
  if (selfCopy->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)selfCopy->_clientProxy legacyAnisetteDataForContext:selfCopy->_context DSID:location[0] withCompletion:v8];
  }

  else
  {
    v4 = v8;
    v5 = [NSError ak_errorWithCode:-7061];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchPeerAttestationDataForRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v15, "[AKClientAnisetteService fetchPeerAttestationDataForRequest:completion:]", 84);
    _os_log_debug_impl(&_mh_execute_header, v10, v9, "%s (%d) called", v15, 0x12u);
  }

  objc_storeStrong(&v10, 0);
  if (selfCopy->_clientProxy)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004DCC8(v14, selfCopy, selfCopy->_context, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@: Calling client proxy to fetch peer attestation data for context (%@) with request (%@)", v14, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    [(AKAnisetteProvisioningClientProtocol *)selfCopy->_clientProxy fetchPeerAttestationDataForContext:selfCopy->_context withRequest:location[0] completion:v11];
    v8 = 0;
  }

  else
  {
    v4 = v11;
    v5 = [NSError ak_errorWithCode:-7061];
    v4[2](v4, 0);
    _objc_release(v5);
    v8 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end