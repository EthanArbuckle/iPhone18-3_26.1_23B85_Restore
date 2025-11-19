@interface HKHealthStoreProvider
+ (id)taskIdentifier;
- (HKHealthStoreProvider)init;
- (HKHealthStoreProvider)initWithHealthStore:(id)a3;
- (HKHealthStoreProvider)initWithProxyProvider:(id)a3;
- (id)healthStoreWithIdentifier:(id)a3;
- (void)fetchAvailableIdentifiersWithCompletion:(id)a3;
- (void)fetchStoreForIdentifier:(id)a3 completion:(id)a4;
- (void)requestAuthorizationToNewStoreToShareTypes:(id)a3 readTypes:(id)a4 completion:(id)a5;
- (void)requestAuthorizationToNewStoreWithCompletion:(id)a3;
@end

@implementation HKHealthStoreProvider

- (HKHealthStoreProvider)init
{
  v3 = objc_alloc_init(HKHealthStore);
  v4 = [(HKHealthStoreProvider *)self initWithHealthStore:v3];

  return v4;
}

- (HKHealthStoreProvider)initWithHealthStore:(id)a3
{
  v4 = a3;
  v5 = [HKTaskServerProxyProvider alloc];
  v6 = [objc_opt_class() taskIdentifier];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [(HKTaskServerProxyProvider *)v5 initWithHealthStore:v4 taskIdentifier:v6 exportedObject:self taskUUID:v7];

  [(HKProxyProvider *)v8 setShouldRetryOnInterruption:0];
  v9 = [(HKHealthStoreProvider *)self initWithProxyProvider:v8];

  return v9;
}

- (HKHealthStoreProvider)initWithProxyProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKHealthStoreProvider;
  v6 = [(HKHealthStoreProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyProvider, a3);
  }

  return v7;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)healthStoreWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HKHealthStore);
  v5 = [v3 profileIdentifier];

  [(HKHealthStore *)v4 setProfileIdentifier:v5];

  return v4;
}

- (void)fetchStoreForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HKHealthStoreProvider_fetchStoreForIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E737FAB0;
  v8 = v7;
  v22 = v8;
  aBlock[4] = self;
  v9 = v6;
  v21 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(HKHealthStoreProviderProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v10];

  v16 = v8;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__HKHealthStoreProvider_fetchStoreForIdentifier_completion___block_invoke_2;
  v17[3] = &unk_1E737FAD8;
  v18 = v9;
  v19 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__HKHealthStoreProvider_fetchStoreForIdentifier_completion___block_invoke_3;
  v15[3] = &unk_1E7376960;
  v12 = v8;
  v13 = v11;
  v14 = v9;
  [(HKHealthStoreProvider *)self _fetchProxyWithHandler:v17 errorHandler:v15];
}

void __60__HKHealthStoreProvider_fetchStoreForIdentifier_completion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  if (a2)
  {
    v5 = [*(a1 + 32) healthStoreWithIdentifier:*(a1 + 40)];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 48);

    v3(v4, 0);
  }
}

- (void)fetchAvailableIdentifiersWithCompletion:(id)a3
{
  v4 = [(HKHealthStoreProviderProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__HKHealthStoreProvider_fetchAvailableIdentifiersWithCompletion___block_invoke;
  v8[3] = &unk_1E737FB00;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__HKHealthStoreProvider_fetchAvailableIdentifiersWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthStoreProvider *)self _fetchProxyWithHandler:v8 errorHandler:v6];
}

- (void)requestAuthorizationToNewStoreWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__HKHealthStoreProvider_requestAuthorizationToNewStoreWithCompletion___block_invoke;
  aBlock[3] = &unk_1E737FB28;
  v5 = v4;
  aBlock[4] = self;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(HKHealthStoreProviderProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v6];

  v11 = v5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__HKHealthStoreProvider_requestAuthorizationToNewStoreWithCompletion___block_invoke_2;
  v12[3] = &unk_1E737FB00;
  v13 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__HKHealthStoreProvider_requestAuthorizationToNewStoreWithCompletion___block_invoke_3;
  v10[3] = &unk_1E7376960;
  v8 = v5;
  v9 = v7;
  [(HKHealthStoreProvider *)self _fetchProxyWithHandler:v12 errorHandler:v10];
}

void __70__HKHealthStoreProvider_requestAuthorizationToNewStoreWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 32) healthStoreWithIdentifier:a2];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4);
  }
}

- (void)requestAuthorizationToNewStoreToShareTypes:(id)a3 readTypes:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__HKHealthStoreProvider_requestAuthorizationToNewStoreToShareTypes_readTypes_completion___block_invoke;
  aBlock[3] = &unk_1E737FB28;
  v11 = v10;
  aBlock[4] = self;
  v25 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(HKHealthStoreProviderProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v12];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__HKHealthStoreProvider_requestAuthorizationToNewStoreToShareTypes_readTypes_completion___block_invoke_2;
  v20[3] = &unk_1E737FB50;
  v21 = v8;
  v22 = v9;
  v23 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__HKHealthStoreProvider_requestAuthorizationToNewStoreToShareTypes_readTypes_completion___block_invoke_3;
  v18[3] = &unk_1E7376960;
  v19 = v11;
  v14 = v11;
  v15 = v13;
  v16 = v9;
  v17 = v8;
  [(HKHealthStoreProvider *)self _fetchProxyWithHandler:v20 errorHandler:v18];
}

void __89__HKHealthStoreProvider_requestAuthorizationToNewStoreToShareTypes_readTypes_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 32) healthStoreWithIdentifier:a2];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4);
  }
}

@end