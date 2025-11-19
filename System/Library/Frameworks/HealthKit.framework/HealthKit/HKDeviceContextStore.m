@interface HKDeviceContextStore
+ (id)serverInterface;
- (HKDeviceContextStore)initWithHealthStore:(id)a3;
- (void)fetchEntriesWithCompletion:(id)a3;
- (void)numberOfDeviceContextsPerDeviceType:(id)a3;
@end

@implementation HKDeviceContextStore

- (HKDeviceContextStore)initWithHealthStore:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HKDeviceContextStore;
  v6 = [(HKDeviceContextStore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = [HKTaskServerProxyProvider alloc];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [(HKTaskServerProxyProvider *)v8 initWithHealthStore:v5 taskIdentifier:@"HKDeviceContextStoreServerIdentifier" exportedObject:v7 taskUUID:v9];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;
  }

  return v7;
}

- (void)fetchEntriesWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__HKDeviceContextStore_fetchEntriesWithCompletion___block_invoke;
  v9[3] = &unk_1E737E360;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__HKDeviceContextStore_fetchEntriesWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)numberOfDeviceContextsPerDeviceType:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__HKDeviceContextStore_numberOfDeviceContextsPerDeviceType___block_invoke;
  v9[3] = &unk_1E737E360;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__HKDeviceContextStore_numberOfDeviceContextsPerDeviceType___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F75F8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_remote_fetchEntriesWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

@end