@interface AKServerBackoffHelper
- (AKServerBackoffHelper)init;
- (BOOL)isBackoffSupported;
- (BOOL)shouldBackoffRequest:(id)a3;
- (id)_backoffContextFromRequest:(id)a3;
- (id)serverBackoffInfoForRequest:(id)a3;
- (id)urlAtKey:(id)a3;
- (void)configureFromHeaderFields:(id)a3;
- (void)reportTelemetryForRequest:(id)a3 backoffType:(unint64_t)a4;
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
  v13 = self;
  v12 = a2;
  v5 = +[AKFeatureManager sharedManager];
  v10 = 0;
  v6 = 1;
  if ([v5 isServerBackoffEnabled])
  {
    v11 = +[AKURLBag sharedBag];
    v10 = 1;
    v6 = [v11 isClientBackoffDisabled];
  }

  if (v10)
  {
    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](v5);
  if ((v6 & 1) == 0)
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

- (void)configureFromHeaderFields:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKServerBackoffController *)v4->_serverBackoffController configureFromHeaderFields:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)shouldBackoffRequest:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  serverBackoffController = v8->_serverBackoffController;
  v5 = [(AKServerBackoffHelper *)v8 _backoffContextFromRequest:location[0]];
  v6 = [(AKServerBackoffController *)serverBackoffController shouldBackoffContext:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)serverBackoffInfoForRequest:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  serverBackoffController = v8->_serverBackoffController;
  v5 = [(AKServerBackoffHelper *)v8 _backoffContextFromRequest:location[0]];
  v6 = [(AKServerBackoffController *)serverBackoffController serverBackoffInfoForContext:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)reportTelemetryForRequest:(id)a3 backoffType:(unint64_t)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  serverBackoffController = v7->_serverBackoffController;
  v5 = [(AKServerBackoffHelper *)v7 _backoffContextFromRequest:location[0]];
  [AKServerBackoffController reportTelemetryForContext:"reportTelemetryForContext:backoffType:" backoffType:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
}

- (id)urlAtKey:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = +[AKURLBag sharedBag];
  v5 = [v4 urlAtKey:location[0]];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_backoffContextFromRequest:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = objc_alloc_init(AKServerBackoffContext);
  v4 = objc_opt_class();
  v7 = [location[0] allHTTPHeaderFields];
  v6 = [v7 objectForKeyedSubscript:@"X-Apple-I-Client-Bundle-Id"];
  v5 = _AKSafeCast(v4, v6);
  [(AKServerBackoffContext *)v14 setClientBundleID:?];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  v8 = objc_opt_class();
  v11 = [location[0] allHTTPHeaderFields];
  v10 = [v11 objectForKeyedSubscript:@"X-Apple-I-Proxied-Bundle-Id"];
  v9 = _AKSafeCast(v8, v10);
  [(AKServerBackoffContext *)v14 setProxiedAppBundleID:?];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
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