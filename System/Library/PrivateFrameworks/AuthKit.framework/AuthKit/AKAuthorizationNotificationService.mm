@interface AKAuthorizationNotificationService
+ (id)_sharedService;
+ (void)startServiceWithNotificationHandler:(id)a3;
+ (void)startServiceWithStateBroadcastHandler:(id)a3;
- (AKAuthorizationNotificationService)init;
- (AKAuthorizationNotificationService)initWithDaemonXPCEndpoint:(id)a3;
- (void)_configureNotificationServiceWithCompletion:(id)a3;
- (void)_configureStateBroadcastServiceWithCompletion:(id)a3;
- (void)startWithNotificationHandler:(id)a3 completion:(id)a4;
- (void)startWithStateBroadcastHandler:(id)a3 completion:(id)a4;
@end

@implementation AKAuthorizationNotificationService

- (AKAuthorizationNotificationService)init
{
  v4 = 0;
  v4 = [(AKAuthorizationNotificationService *)self initWithDaemonXPCEndpoint:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAuthorizationNotificationService)initWithDaemonXPCEndpoint:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationNotificationService;
  v8 = [(AKAuthorizationNotificationService *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_daemonEndpoint, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

+ (id)_sharedService
{
  v5 = &_sharedService_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_50);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _sharedService_sharedService;

  return v2;
}

uint64_t __52__AKAuthorizationNotificationService__sharedService__block_invoke()
{
  v0 = objc_alloc_init(AKAuthorizationNotificationService);
  v1 = _sharedService_sharedService;
  _sharedService_sharedService = v0;
  return MEMORY[0x1E69E5920](v1);
}

+ (void)startServiceWithNotificationHandler:(id)a3
{
  v5 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [v5 _sharedService];
  [v3 startWithNotificationHandler:location[0] completion:0];
  MEMORY[0x1E69E5920](v3);
  objc_storeStrong(location, 0);
}

+ (void)startServiceWithStateBroadcastHandler:(id)a3
{
  v5 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [v5 _sharedService];
  [v3 startWithStateBroadcastHandler:location[0] completion:0];
  MEMORY[0x1E69E5920](v3);
  objc_storeStrong(location, 0);
}

- (void)startWithNotificationHandler:(id)a3 completion:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  objc_initWeak(&from, v20);
  v16 = +[AKAuthorizationNotificationHandlerInterface XPCInterface];
  v7 = [AKAdaptiveService alloc];
  v6 = [(AKAdaptiveService *)v7 initWithInterface:v16 strongObject:location[0]];
  service = v20->_service;
  v20->_service = v6;
  MEMORY[0x1E69E5920](service);
  v5 = v20->_service;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __78__AKAuthorizationNotificationService_startWithNotificationHandler_completion___block_invoke;
  v13 = &unk_1E73D8CE8;
  objc_copyWeak(v15, &from);
  v14 = MEMORY[0x1E69E5928](v18);
  [(AKAdaptiveService *)v5 setInvalidationHandler:&v9];
  [(AKAdaptiveService *)v20->_service resume];
  [(AKAuthorizationNotificationService *)v20 _configureNotificationServiceWithCompletion:v18];
  objc_storeStrong(&v14, 0);
  objc_destroyWeak(v15);
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

uint64_t __78__AKAuthorizationNotificationService_startWithNotificationHandler_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _configureNotificationServiceWithCompletion:*(a1 + 32)];
  return MEMORY[0x1E69E5920](WeakRetained);
}

- (void)startWithStateBroadcastHandler:(id)a3 completion:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  objc_initWeak(&from, v20);
  v16 = +[AKAuthorizationStateBroadcastHandlerInterface XPCInterface];
  v7 = [AKAdaptiveService alloc];
  v6 = [(AKAdaptiveService *)v7 initWithInterface:v16 strongObject:location[0]];
  service = v20->_service;
  v20->_service = v6;
  MEMORY[0x1E69E5920](service);
  v5 = v20->_service;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __80__AKAuthorizationNotificationService_startWithStateBroadcastHandler_completion___block_invoke;
  v13 = &unk_1E73D8CE8;
  objc_copyWeak(v15, &from);
  v14 = MEMORY[0x1E69E5928](v18);
  [(AKAdaptiveService *)v5 setInvalidationHandler:&v9];
  [(AKAdaptiveService *)v20->_service resume];
  [(AKAuthorizationNotificationService *)v20 _configureStateBroadcastServiceWithCompletion:v18];
  objc_storeStrong(&v14, 0);
  objc_destroyWeak(v15);
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

uint64_t __80__AKAuthorizationNotificationService_startWithStateBroadcastHandler_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _configureStateBroadcastServiceWithCompletion:*(a1 + 32)];
  return MEMORY[0x1E69E5920](WeakRetained);
}

- (void)_configureNotificationServiceWithCompletion:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKAuthorizationController alloc];
  v6 = [(AKAuthorizationController *)v3 initWithDaemonXPCEndpoint:v8->_daemonEndpoint];
  v4 = v6;
  v5 = [(AKAdaptiveService *)v8->_service listenerEndpoint];
  [v4 establishConnectionWithNotificationHandlerEndpoint:? completion:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_configureStateBroadcastServiceWithCompletion:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKAuthorizationController alloc];
  v6 = [(AKAuthorizationController *)v3 initWithDaemonXPCEndpoint:v8->_daemonEndpoint];
  v4 = v6;
  v5 = [(AKAdaptiveService *)v8->_service listenerEndpoint];
  [v4 establishConnectionWithStateBroadcastHandlerEndpoint:? completion:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end