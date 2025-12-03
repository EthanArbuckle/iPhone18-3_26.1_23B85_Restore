@interface HKDeviceContextStore
+ (id)serverInterface;
- (HKDeviceContextStore)initWithHealthStore:(id)store;
- (void)fetchEntriesWithCompletion:(id)completion;
- (void)numberOfDeviceContextsPerDeviceType:(id)type;
@end

@implementation HKDeviceContextStore

- (HKDeviceContextStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HKDeviceContextStore;
  v6 = [(HKDeviceContextStore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = [HKTaskServerProxyProvider alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v10 = [(HKTaskServerProxyProvider *)v8 initWithHealthStore:storeCopy taskIdentifier:@"HKDeviceContextStoreServerIdentifier" exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;
  }

  return v7;
}

- (void)fetchEntriesWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
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

- (void)numberOfDeviceContextsPerDeviceType:(id)type
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:type];
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