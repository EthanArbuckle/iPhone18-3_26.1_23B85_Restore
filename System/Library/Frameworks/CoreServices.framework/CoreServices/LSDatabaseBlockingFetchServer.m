@interface LSDatabaseBlockingFetchServer
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_init;
- (void)startRunningIfNecessary;
@end

@implementation LSDatabaseBlockingFetchServer

- (id)_init
{
  v9.receiver = self;
  v9.super_class = LSDatabaseBlockingFetchServer;
  v2 = [(LSDatabaseBlockingFetchServer *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.lsd.LSDatabaseBlockingFetchServer", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = v6;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v2->_running = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__LSDatabaseBlockingFetchServer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedServer;

  return v2;
}

void __47__LSDatabaseBlockingFetchServer_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedInstance_sharedServer;
  sharedInstance_sharedServer = v1;
}

- (void)startRunningIfNecessary
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__LSDatabaseBlockingFetchServer_startRunningIfNecessary__block_invoke;
  block[3] = &unk_1E6A195E0;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __56__LSDatabaseBlockingFetchServer_startRunningIfNecessary__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 16) resume];
    *(*(v2 + 32) + 24) = 1;
  }

  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 _setQueue:self->_queue];
  v8 = LSDatabaseBlockingFetchInterface();
  [v7 setExportedInterface:v8];

  v9 = [[LSDatabaseBlockingFetchClient alloc] initWithXPCConnection:v7];
  [v7 setExportedObject:v9];

  from = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __68__LSDatabaseBlockingFetchServer_listener_shouldAcceptNewConnection___block_invoke;
  v14 = &unk_1E6A19540;
  objc_copyWeak(&v15, &from);
  [v7 setInvalidationHandler:&v11];
  [v7 resume];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);

  return 1;
}

void __68__LSDatabaseBlockingFetchServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExportedObject:0];
}

@end