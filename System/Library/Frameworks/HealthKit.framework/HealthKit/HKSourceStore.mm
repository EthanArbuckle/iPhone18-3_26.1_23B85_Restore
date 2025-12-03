@interface HKSourceStore
+ (id)taskIdentifier;
- (HKSourceStore)initWithHealthStore:(id)store;
- (id)qaSourceForBundleIdentifier:(id)identifier name:(id)name error:(id *)error;
- (id)sourceForAppleDeviceWithUUID:(id)d identifier:(id)identifier name:(id)name productType:(id)type error:(id *)error;
- (void)deleteSourceWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)fetchAllSourcesWithCompletion:(id)completion;
- (void)fetchHasSampleWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)fetchOrderedSourcesForObjectType:(id)type completion:(id)completion;
- (void)updateOrderedSources:(id)sources forObjectType:(id)type completion:(id)completion;
@end

@implementation HKSourceStore

- (HKSourceStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKSourceStore;
  v5 = [(HKSourceStore *)&v12 init];
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

- (void)fetchAllSourcesWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__HKSourceStore_fetchAllSourcesWithCompletion___block_invoke;
  v9[3] = &unk_1E737E1C8;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__HKSourceStore_fetchAllSourcesWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)fetchHasSampleWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__HKSourceStore_fetchHasSampleWithBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E737E1F0;
  v14 = identifierCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__HKSourceStore_fetchHasSampleWithBundleIdentifier_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = identifierCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)deleteSourceWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__HKSourceStore_deleteSourceWithBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E737E1F0;
  v14 = identifierCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__HKSourceStore_deleteSourceWithBundleIdentifier_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = identifierCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)fetchOrderedSourcesForObjectType:(id)type completion:(id)completion
{
  typeCopy = type;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__HKSourceStore_fetchOrderedSourcesForObjectType_completion___block_invoke;
  v13[3] = &unk_1E737E1F0;
  v14 = typeCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__HKSourceStore_fetchOrderedSourcesForObjectType_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = typeCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)updateOrderedSources:(id)sources forObjectType:(id)type completion:(id)completion
{
  sourcesCopy = sources;
  typeCopy = type;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__HKSourceStore_updateOrderedSources_forObjectType_completion___block_invoke;
  v17[3] = &unk_1E737E218;
  v18 = sourcesCopy;
  v19 = typeCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__HKSourceStore_updateOrderedSources_forObjectType_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = typeCopy;
  v14 = sourcesCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (id)sourceForAppleDeviceWithUUID:(id)d identifier:(id)identifier name:(id)name productType:(id)type error:(id *)error
{
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  typeCopy = type;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__22;
  v45 = __Block_byref_object_dispose__22;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__22;
  v39 = __Block_byref_object_dispose__22;
  v40 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__HKSourceStore_sourceForAppleDeviceWithUUID_identifier_name_productType_error___block_invoke;
  aBlock[3] = &unk_1E7378CD8;
  aBlock[4] = &v41;
  aBlock[5] = &v35;
  v16 = _Block_copy(aBlock);
  proxyProvider = self->_proxyProvider;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __80__HKSourceStore_sourceForAppleDeviceWithUUID_identifier_name_productType_error___block_invoke_2;
  v28[3] = &unk_1E737E240;
  v18 = dCopy;
  v29 = v18;
  v19 = identifierCopy;
  v30 = v19;
  v20 = nameCopy;
  v31 = v20;
  v21 = typeCopy;
  v32 = v21;
  v22 = v16;
  v33 = v22;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __80__HKSourceStore_sourceForAppleDeviceWithUUID_identifier_name_productType_error___block_invoke_3;
  v27[3] = &unk_1E7378838;
  v27[4] = &v35;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v28 errorHandler:v27];
  v23 = v36[5];
  if (v23)
  {
    *error = v23;
    v24 = v42[5];
    v42[5] = 0;
  }

  v25 = v42[5];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v25;
}

void __80__HKSourceStore_sourceForAppleDeviceWithUUID_identifier_name_productType_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)qaSourceForBundleIdentifier:(id)identifier name:(id)name error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__22;
  v35 = __Block_byref_object_dispose__22;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__22;
  v29 = __Block_byref_object_dispose__22;
  v30 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__HKSourceStore_qaSourceForBundleIdentifier_name_error___block_invoke;
  aBlock[3] = &unk_1E737E268;
  aBlock[4] = &v31;
  aBlock[5] = &v25;
  v10 = _Block_copy(aBlock);
  proxyProvider = self->_proxyProvider;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __56__HKSourceStore_qaSourceForBundleIdentifier_name_error___block_invoke_2;
  v20[3] = &unk_1E737E218;
  v12 = identifierCopy;
  v21 = v12;
  v13 = nameCopy;
  v22 = v13;
  v14 = v10;
  v23 = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__HKSourceStore_qaSourceForBundleIdentifier_name_error___block_invoke_3;
  v19[3] = &unk_1E7378838;
  v19[4] = &v25;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v20 errorHandler:v19];
  v15 = v26[5];
  if (v15)
  {
    *error = v15;
    v16 = v32[5];
    v32[5] = 0;
  }

  v17 = v32[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

void __56__HKSourceStore_qaSourceForBundleIdentifier_name_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end