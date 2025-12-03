@interface AFSiriTaskService
+ (id)appTaskService;
- (AFSiriTaskService)initWithMachServiceName:(id)name;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
- (void)resume;
- (void)setDelegate:(id)delegate;
@end

@implementation AFSiriTaskService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.siri.task.client"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__AFSiriTaskService_listener_shouldAcceptNewConnection___block_invoke;
    v14[3] = &unk_1E7349860;
    v9 = connectionCopy;
    v15 = v9;
    selfCopy = self;
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
      v20 = connectionCopy;
      v21 = 2112;
      v22 = @"com.apple.siri.task.client";
      _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s rejecting incoming connection (%@) because it doesn't have the %@ entitlement", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return bOOLValue;
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__AFSiriTaskService_setDelegate___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
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

- (AFSiriTaskService)initWithMachServiceName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[AFSiriTaskService initWithMachServiceName:]";
    v21 = 2112;
    v22 = nameCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v18.receiver = self;
  v18.super_class = AFSiriTaskService;
  v6 = [(AFSiriTaskService *)&v18 init];
  if (v6)
  {
    v7 = [@"SiriTaskService-" stringByAppendingString:nameCopy];
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);

    queue = v6->_queue;
    v6->_queue = v10;

    v12 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:nameCopy];
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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  if (!mainBundle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFSiriTaskService.m" lineNumber:48 description:@"Cannot create an app task service for a process without a bundle"];
  }

  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [self _machServiceNameForAppTaskServiceWithBundleIdentifier:bundleIdentifier];
  v7 = [[self alloc] initWithMachServiceName:v6];

  return v7;
}

@end