@interface AKAuthorizationNotificationService
+ (id)_sharedService;
+ (void)startServiceWithNotificationHandler:(id)handler;
+ (void)startServiceWithStateBroadcastHandler:(id)handler;
- (AKAuthorizationNotificationService)init;
- (AKAuthorizationNotificationService)initWithDaemonXPCEndpoint:(id)endpoint;
- (void)_configureNotificationServiceWithCompletion:(id)completion;
- (void)_configureStateBroadcastServiceWithCompletion:(id)completion;
- (void)startWithNotificationHandler:(id)handler completion:(id)completion;
- (void)startWithStateBroadcastHandler:(id)handler completion:(id)completion;
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

- (AKAuthorizationNotificationService)initWithDaemonXPCEndpoint:(id)endpoint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, endpoint);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationNotificationService;
  selfCopy = [(AKAuthorizationNotificationService *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_daemonEndpoint, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

+ (void)startServiceWithNotificationHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  _sharedService = [selfCopy _sharedService];
  [_sharedService startWithNotificationHandler:location[0] completion:0];
  MEMORY[0x1E69E5920](_sharedService);
  objc_storeStrong(location, 0);
}

+ (void)startServiceWithStateBroadcastHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  _sharedService = [selfCopy _sharedService];
  [_sharedService startWithStateBroadcastHandler:location[0] completion:0];
  MEMORY[0x1E69E5920](_sharedService);
  objc_storeStrong(location, 0);
}

- (void)startWithNotificationHandler:(id)handler completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  objc_initWeak(&from, selfCopy);
  v16 = +[AKAuthorizationNotificationHandlerInterface XPCInterface];
  v7 = [AKAdaptiveService alloc];
  v6 = [(AKAdaptiveService *)v7 initWithInterface:v16 strongObject:location[0]];
  service = selfCopy->_service;
  selfCopy->_service = v6;
  MEMORY[0x1E69E5920](service);
  v5 = selfCopy->_service;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __78__AKAuthorizationNotificationService_startWithNotificationHandler_completion___block_invoke;
  v13 = &unk_1E73D8CE8;
  objc_copyWeak(v15, &from);
  v14 = MEMORY[0x1E69E5928](v18);
  [(AKAdaptiveService *)v5 setInvalidationHandler:&v9];
  [(AKAdaptiveService *)selfCopy->_service resume];
  [(AKAuthorizationNotificationService *)selfCopy _configureNotificationServiceWithCompletion:v18];
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

- (void)startWithStateBroadcastHandler:(id)handler completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  objc_initWeak(&from, selfCopy);
  v16 = +[AKAuthorizationStateBroadcastHandlerInterface XPCInterface];
  v7 = [AKAdaptiveService alloc];
  v6 = [(AKAdaptiveService *)v7 initWithInterface:v16 strongObject:location[0]];
  service = selfCopy->_service;
  selfCopy->_service = v6;
  MEMORY[0x1E69E5920](service);
  v5 = selfCopy->_service;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __80__AKAuthorizationNotificationService_startWithStateBroadcastHandler_completion___block_invoke;
  v13 = &unk_1E73D8CE8;
  objc_copyWeak(v15, &from);
  v14 = MEMORY[0x1E69E5928](v18);
  [(AKAdaptiveService *)v5 setInvalidationHandler:&v9];
  [(AKAdaptiveService *)selfCopy->_service resume];
  [(AKAuthorizationNotificationService *)selfCopy _configureStateBroadcastServiceWithCompletion:v18];
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

- (void)_configureNotificationServiceWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = [AKAuthorizationController alloc];
  v6 = [(AKAuthorizationController *)v3 initWithDaemonXPCEndpoint:selfCopy->_daemonEndpoint];
  v4 = v6;
  listenerEndpoint = [(AKAdaptiveService *)selfCopy->_service listenerEndpoint];
  [v4 establishConnectionWithNotificationHandlerEndpoint:? completion:?];
  MEMORY[0x1E69E5920](listenerEndpoint);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_configureStateBroadcastServiceWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = [AKAuthorizationController alloc];
  v6 = [(AKAuthorizationController *)v3 initWithDaemonXPCEndpoint:selfCopy->_daemonEndpoint];
  v4 = v6;
  listenerEndpoint = [(AKAdaptiveService *)selfCopy->_service listenerEndpoint];
  [v4 establishConnectionWithStateBroadcastHandlerEndpoint:? completion:?];
  MEMORY[0x1E69E5920](listenerEndpoint);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end