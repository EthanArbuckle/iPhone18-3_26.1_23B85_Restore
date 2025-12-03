@interface ASDSkannerService
+ (ASDSkannerService)defaultService;
- (ASDSkannerService)init;
- (id)_initWithServiceBroker:(id *)broker;
- (void)fetchStoriesWithCompletionHandler:(id)handler;
@end

@implementation ASDSkannerService

- (ASDSkannerService)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = [(ASDSkannerService *)&self->super.isa _initWithServiceBroker:v3];

  return v4;
}

- (id)_initWithServiceBroker:(id *)broker
{
  v4 = a2;
  if (broker)
  {
    v7.receiver = broker;
    v7.super_class = ASDSkannerService;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    broker = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return broker;
}

+ (ASDSkannerService)defaultService
{
  if (qword_1ED90D550 != -1)
  {
    dispatch_once(&qword_1ED90D550, &__block_literal_global_13);
  }

  v3 = _MergedGlobals_38;

  return v3;
}

void __35__ASDSkannerService_defaultService__block_invoke()
{
  v0 = [ASDSkannerService alloc];
  v3 = +[ASDServiceBroker defaultBroker];
  v1 = [(ASDSkannerService *)&v0->super.isa _initWithServiceBroker:v3];
  v2 = _MergedGlobals_38;
  _MergedGlobals_38 = v1;
}

- (void)fetchStoriesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceBroker = self->_serviceBroker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__ASDSkannerService_fetchStoriesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDCBD0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getSkannerServiceWithCompletionHandler:v7];
}

void __55__ASDSkannerService_fetchStoriesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__ASDSkannerService_fetchStoriesWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 fetchStoriesWithCompletionHandler:*(a1 + 32)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(33);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v5;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting skanner service: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __55__ASDSkannerService_fetchStoriesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(33);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting remote proxy for skanner service: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end