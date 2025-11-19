@interface HKNotificationStore
+ (id)taskIdentifier;
- (HKNotificationStore)initWithHealthStore:(id)a3;
- (void)fetchBadgeForDomain:(int64_t)a3 completion:(id)a4;
- (void)postCompanionUserNotificationOfType:(int64_t)a3 completion:(id)a4;
- (void)postNotificationWithRequest:(id)a3 completion:(id)a4;
- (void)setBadge:(id)a3 forDomain:(int64_t)a4 completion:(id)a5;
@end

@implementation HKNotificationStore

- (HKNotificationStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKNotificationStore;
  v5 = [(HKNotificationStore *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 taskUUID:v8];
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

- (void)fetchBadgeForDomain:(int64_t)a3 completion:(id)a4
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__HKNotificationStore_fetchBadgeForDomain_completion___block_invoke;
  v11[3] = &unk_1E7384D38;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKNotificationStore_fetchBadgeForDomain_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)setBadge:(id)a3 forDomain:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__HKNotificationStore_setBadge_forDomain_completion___block_invoke;
  v15[3] = &unk_1E7384D60;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__HKNotificationStore_setBadge_forDomain_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)postCompanionUserNotificationOfType:(int64_t)a3 completion:(id)a4
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__HKNotificationStore_postCompanionUserNotificationOfType_completion___block_invoke;
  v11[3] = &unk_1E7384D38;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__HKNotificationStore_postCompanionUserNotificationOfType_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)postNotificationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__HKNotificationStore_postNotificationWithRequest_completion___block_invoke;
  v13[3] = &unk_1E7384D88;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__HKNotificationStore_postNotificationWithRequest_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

@end