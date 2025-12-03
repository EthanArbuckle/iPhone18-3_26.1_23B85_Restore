@interface HKNotificationStore
+ (id)taskIdentifier;
- (HKNotificationStore)initWithHealthStore:(id)store;
- (void)fetchBadgeForDomain:(int64_t)domain completion:(id)completion;
- (void)postCompanionUserNotificationOfType:(int64_t)type completion:(id)completion;
- (void)postNotificationWithRequest:(id)request completion:(id)completion;
- (void)setBadge:(id)badge forDomain:(int64_t)domain completion:(id)completion;
@end

@implementation HKNotificationStore

- (HKNotificationStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKNotificationStore;
  v5 = [(HKNotificationStore *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)fetchBadgeForDomain:(int64_t)domain completion:(id)completion
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__HKNotificationStore_fetchBadgeForDomain_completion___block_invoke;
  v11[3] = &unk_1E7384D38;
  domainCopy = domain;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKNotificationStore_fetchBadgeForDomain_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)setBadge:(id)badge forDomain:(int64_t)domain completion:(id)completion
{
  badgeCopy = badge;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__HKNotificationStore_setBadge_forDomain_completion___block_invoke;
  v15[3] = &unk_1E7384D60;
  v16 = badgeCopy;
  domainCopy = domain;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__HKNotificationStore_setBadge_forDomain_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = badgeCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)postCompanionUserNotificationOfType:(int64_t)type completion:(id)completion
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__HKNotificationStore_postCompanionUserNotificationOfType_completion___block_invoke;
  v11[3] = &unk_1E7384D38;
  typeCopy = type;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__HKNotificationStore_postCompanionUserNotificationOfType_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)postNotificationWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__HKNotificationStore_postNotificationWithRequest_completion___block_invoke;
  v13[3] = &unk_1E7384D88;
  v14 = requestCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__HKNotificationStore_postNotificationWithRequest_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = requestCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

@end