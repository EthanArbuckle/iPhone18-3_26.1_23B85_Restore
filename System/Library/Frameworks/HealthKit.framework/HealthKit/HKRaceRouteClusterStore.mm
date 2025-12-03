@interface HKRaceRouteClusterStore
+ (id)taskIdentifier;
- (HKRaceRouteClusterStore)initWithHealthStore:(id)store;
- (void)fetchRaceRouteClustersForActivityType:(unint64_t)type completion:(id)completion;
@end

@implementation HKRaceRouteClusterStore

- (HKRaceRouteClusterStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKRaceRouteClusterStore;
  v5 = [(HKRaceRouteClusterStore *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)fetchRaceRouteClustersForActivityType:(unint64_t)type completion:(id)completion
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__HKRaceRouteClusterStore_fetchRaceRouteClustersForActivityType_completion___block_invoke;
  v11[3] = &unk_1E7384058;
  typeCopy = type;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__HKRaceRouteClusterStore_fetchRaceRouteClustersForActivityType_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

@end