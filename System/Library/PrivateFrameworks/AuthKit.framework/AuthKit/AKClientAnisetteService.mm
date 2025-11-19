@interface AKClientAnisetteService
- (AKClientAnisetteService)initWithClient:(id)a3 context:(id)a4;
- (void)eraseAnisetteWithCompletion:(id)a3;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4;
- (void)fetchPeerAttestationDataForRequest:(id)a3 completion:(id)a4;
- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4;
- (void)provisionAnisetteWithCompletion:(id)a3;
- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4;
@end

@implementation AKClientAnisetteService

- (AKClientAnisetteService)initWithClient:(id)a3 context:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v10 = [(AKClientAnisetteService *)v4 init];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    v5 = [location[0] proxyWithErrorHandler:&stru_100324EB8];
    clientProxy = v13->_clientProxy;
    v13->_clientProxy = v5;
    _objc_release(clientProxy);
    objc_storeStrong(&v13->_context, v11);
  }

  v8 = _objc_retain(v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v11, "[AKClientAnisetteService fetchAnisetteDataAndProvisionIfNecessary:withCompletion:]", 34);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) called", v11, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  if (v10->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)v10->_clientProxy fetchAnisetteDataForContext:v10->_context provisionIfNecessary:v8 withCompletion:location];
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

- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = _AKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v11, "[AKClientAnisetteService syncAnisetteWithSIMData:completion:]", 44);
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s (%d) called", v11, 0x12u);
  }

  objc_storeStrong(&v7, 0);
  if (v10->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)v10->_clientProxy syncAnisetteForContext:v10->_context withSIMData:location[0] completion:v8];
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

- (void)eraseAnisetteWithCompletion:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = _AKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v8, "[AKClientAnisetteService eraseAnisetteWithCompletion:]", 54);
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s (%d) called", v8, 0x12u);
  }

  objc_storeStrong(&v5, 0);
  if (v7->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)v7->_clientProxy eraseAnisetteForContext:v7->_context withCompletion:location[0]];
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

- (void)provisionAnisetteWithCompletion:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = _AKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v8, "[AKClientAnisetteService provisionAnisetteWithCompletion:]", 64);
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s (%d) called", v8, 0x12u);
  }

  objc_storeStrong(&v5, 0);
  if (v7->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)v7->_clientProxy provisionAnisetteForContext:v7->_context withCompletion:location[0]];
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

- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = _AKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v11, "[AKClientAnisetteService legacyAnisetteDataForDSID:withCompletion:]", 74);
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s (%d) called", v11, 0x12u);
  }

  objc_storeStrong(&v7, 0);
  if (v10->_clientProxy)
  {
    [(AKAnisetteProvisioningClientProtocol *)v10->_clientProxy legacyAnisetteDataForContext:v10->_context DSID:location[0] withCompletion:v8];
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

- (void)fetchPeerAttestationDataForRequest:(id)a3 completion:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v15, "[AKClientAnisetteService fetchPeerAttestationDataForRequest:completion:]", 84);
    _os_log_debug_impl(&_mh_execute_header, v10, v9, "%s (%d) called", v15, 0x12u);
  }

  objc_storeStrong(&v10, 0);
  if (v13->_clientProxy)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004DCC8(v14, v13, v13->_context, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@: Calling client proxy to fetch peer attestation data for context (%@) with request (%@)", v14, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    [(AKAnisetteProvisioningClientProtocol *)v13->_clientProxy fetchPeerAttestationDataForContext:v13->_context withRequest:location[0] completion:v11];
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