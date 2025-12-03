@interface AKServerBackoffHelper
- (AKServerBackoffHelper)init;
- (BOOL)isBackoffSupported;
- (BOOL)shouldBackoffRequest:(id)request;
- (id)_backoffContextFromRequest:(id)request;
- (id)serverBackoffInfoForRequest:(id)request;
- (id)urlAtKey:(id)key;
- (void)configureFromHeaderFields:(id)fields;
- (void)reportTelemetryForRequest:(id)request backoffType:(unint64_t)type;
@end

@implementation AKServerBackoffHelper

- (AKServerBackoffHelper)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKServerBackoffHelper;
  v8 = [(AKServerBackoffHelper *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = objc_alloc_init(AKServerBackoffController);
    serverBackoffController = v8->_serverBackoffController;
    v8->_serverBackoffController = v2;
    MEMORY[0x1E69E5920](serverBackoffController);
    [(AKServerBackoffController *)v8->_serverBackoffController setDelegate:v8];
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (BOOL)isBackoffSupported
{
  selfCopy = self;
  v12 = a2;
  v5 = +[AKFeatureManager sharedManager];
  v10 = 0;
  isClientBackoffDisabled = 1;
  if ([v5 isServerBackoffEnabled])
  {
    v11 = +[AKURLBag sharedBag];
    v10 = 1;
    isClientBackoffDisabled = [v11 isClientBackoffDisabled];
  }

  if (v10)
  {
    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](v5);
  if ((isClientBackoffDisabled & 1) == 0)
  {
    return 1;
  }

  location = _AKLogSystem();
  v8 = 2;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    log = location;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_193225000, log, type, "Server backoff feature is disabled.", v7, 2u);
  }

  objc_storeStrong(&location, 0);
  return 0;
}

- (void)configureFromHeaderFields:(id)fields
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fields);
  [(AKServerBackoffController *)selfCopy->_serverBackoffController configureFromHeaderFields:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)shouldBackoffRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  serverBackoffController = selfCopy->_serverBackoffController;
  v5 = [(AKServerBackoffHelper *)selfCopy _backoffContextFromRequest:location[0]];
  v6 = [(AKServerBackoffController *)serverBackoffController shouldBackoffContext:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)serverBackoffInfoForRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  serverBackoffController = selfCopy->_serverBackoffController;
  v5 = [(AKServerBackoffHelper *)selfCopy _backoffContextFromRequest:location[0]];
  v6 = [(AKServerBackoffController *)serverBackoffController serverBackoffInfoForContext:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)reportTelemetryForRequest:(id)request backoffType:(unint64_t)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  serverBackoffController = selfCopy->_serverBackoffController;
  v5 = [(AKServerBackoffHelper *)selfCopy _backoffContextFromRequest:location[0]];
  [AKServerBackoffController reportTelemetryForContext:"reportTelemetryForContext:backoffType:" backoffType:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
}

- (id)urlAtKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = +[AKURLBag sharedBag];
  v5 = [v4 urlAtKey:location[0]];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_backoffContextFromRequest:(id)request
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v14 = objc_alloc_init(AKServerBackoffContext);
  v4 = objc_opt_class();
  allHTTPHeaderFields = [location[0] allHTTPHeaderFields];
  v6 = [allHTTPHeaderFields objectForKeyedSubscript:@"X-Apple-I-Client-Bundle-Id"];
  v5 = _AKSafeCast(v4, v6);
  [(AKServerBackoffContext *)v14 setClientBundleID:?];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](allHTTPHeaderFields);
  v8 = objc_opt_class();
  allHTTPHeaderFields2 = [location[0] allHTTPHeaderFields];
  v10 = [allHTTPHeaderFields2 objectForKeyedSubscript:@"X-Apple-I-Proxied-Bundle-Id"];
  v9 = _AKSafeCast(v8, v10);
  [(AKServerBackoffContext *)v14 setProxiedAppBundleID:?];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](allHTTPHeaderFields2);
  v12 = [location[0] URL];
  [(AKServerBackoffContext *)v14 setUrl:?];
  MEMORY[0x1E69E5920](v12);
  [(AKServerBackoffContext *)v14 setAppServerName:@"idms"];
  v13 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v13;
}

@end