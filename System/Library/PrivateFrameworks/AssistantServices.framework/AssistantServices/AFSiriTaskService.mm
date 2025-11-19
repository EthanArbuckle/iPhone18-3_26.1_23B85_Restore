@interface AFSiriTaskService
+ (id)appTaskService;
- (AFSiriTaskService)initWithMachServiceName:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)dealloc;
- (void)resume;
- (void)setDelegate:(id)a3;
@end

@implementation AFSiriTaskService

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.siri.task.client"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__AFSiriTaskService_listener_shouldAcceptNewConnection___block_invoke;
    v14[3] = &unk_1E7349860;
    v9 = v5;
    v15 = v9;
    v16 = self;
    dispatch_async(queue, v14);
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[AFSiriTaskService listener:shouldAcceptNewConnection:]";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s accepting incoming connection (%@)", buf, 0x16u);
    }
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[AFSiriTaskService listener:shouldAcceptNewConnection:]";
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = @"com.apple.siri.task.client";
      _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s rejecting incoming connection (%@) because it doesn't have the %@ entitlement", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __56__AFSiriTaskService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696B0D0] af_siriTaskDeliveringInterface];
  [v2 setExportedInterface:v3];

  [*(a1 + 32) setExportedObject:*(*(a1 + 40) + 24)];
  v4 = *(a1 + 32);

  return [v4 resume];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__AFSiriTaskService_setDelegate___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AFSiriTaskService_resume__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = AFSiriTaskService;
  [(AFSiriTaskService *)&v3 dealloc];
}

- (AFSiriTaskService)initWithMachServiceName:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[AFSiriTaskService initWithMachServiceName:]";
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v18.receiver = self;
  v18.super_class = AFSiriTaskService;
  v6 = [(AFSiriTaskService *)&v18 init];
  if (v6)
  {
    v7 = [@"SiriTaskService-" stringByAppendingString:v4];
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);

    queue = v6->_queue;
    v6->_queue = v10;

    v12 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v4];
    listener = v6->_listener;
    v6->_listener = v12;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    v14 = objc_alloc_init(AFSiriTaskDeliveryHandler);
    deliveryHandler = v6->_deliveryHandler;
    v6->_deliveryHandler = v14;

    [(AFSiriTaskDeliveryHandler *)v6->_deliveryHandler setQueue:v6->_queue];
    [(AFSiriTaskDeliveryHandler *)v6->_deliveryHandler setService:v6];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)appTaskService
{
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  if (!v4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"AFSiriTaskService.m" lineNumber:48 description:@"Cannot create an app task service for a process without a bundle"];
  }

  v5 = [v4 bundleIdentifier];
  v6 = [a1 _machServiceNameForAppTaskServiceWithBundleIdentifier:v5];
  v7 = [[a1 alloc] initWithMachServiceName:v6];

  return v7;
}

@end