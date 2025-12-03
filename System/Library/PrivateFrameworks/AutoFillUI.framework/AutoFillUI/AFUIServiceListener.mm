@interface AFUIServiceListener
- (id)initDefaultServiceWithServiceQueue:(id)queue;
- (void)_createListenerIfNecessary;
- (void)_destroyListenerIfNecessary;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation AFUIServiceListener

- (void)_createListenerIfNecessary
{
  if (!self->_bsConnectionListener)
  {
    v7[7] = v2;
    v7[8] = v3;
    if (self->_domainName)
    {
      if (self->_serviceName)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __49__AFUIServiceListener__createListenerIfNecessary__block_invoke;
        v7[3] = &unk_1E8424640;
        v7[4] = self;
        v5 = [MEMORY[0x1E698F4B8] listenerWithConfigurator:v7];
        bsConnectionListener = self->_bsConnectionListener;
        self->_bsConnectionListener = v5;

        [(BSServiceConnectionListener *)self->_bsConnectionListener activate];
      }
    }
  }
}

void __49__AFUIServiceListener__createListenerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  [v4 setDomain:v3];
  [v4 setService:*(*(a1 + 32) + 32)];
  [v4 setDelegate:*(a1 + 32)];
}

- (id)initDefaultServiceWithServiceQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = AFUIServiceListener;
  v6 = [(AFUIServiceListener *)&v9 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_domainName, @"com.apple.inputservice.input-ui-host");
    objc_storeStrong(p_isa + 4, @"com.apple.inputservice.AutoFillUI");
    objc_storeStrong(p_isa + 1, queue);
    [p_isa _createListenerIfNecessary];
  }

  return p_isa;
}

- (void)_destroyListenerIfNecessary
{
  bsConnectionListener = self->_bsConnectionListener;
  if (bsConnectionListener)
  {
    [(BSServiceConnectionListener *)bsConnectionListener invalidate];
    v4 = self->_bsConnectionListener;
    self->_bsConnectionListener = 0;
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v8 = [connectionCopy extractNSXPCConnectionWithConfigurator:&__block_literal_global_1];

  serviceQueue = [(AFUIServiceListener *)self serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFUIServiceListener_listener_didReceiveConnection_withContext___block_invoke_2;
  block[3] = &unk_1E8424668;
  block[4] = self;
  v13 = v8;
  v14 = remoteProcess;
  v10 = remoteProcess;
  v11 = v8;
  dispatch_async(serviceQueue, block);
}

uint64_t __65__AFUIServiceListener_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1)
{
  v2 = [AFUIServiceSession alloc];
  v3 = [*(a1 + 32) serviceQueue];

  v4 = *(a1 + 40);

  return [v4 activate];
}

@end