@interface HMVendorDataStore
+ (id)logCategory;
- (HMVendorDataStore)init;
- (HMVendorDataStore)initWithContext:(id)context;
- (void)fetchVendorModelEntryForManufacturer:(id)manufacturer model:(id)model completion:(id)completion;
- (void)fetchVendorModelEntryForProductData:(id)data completion:(id)completion;
@end

@implementation HMVendorDataStore

- (HMVendorDataStore)initWithContext:(id)context
{
  contextCopy = context;
  v6 = [(HMVendorDataStore *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (void)fetchVendorModelEntryForProductData:(id)data completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  context = [(HMVendorDataStore *)self context];
  if (context)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dataCopy forKeyedSubscript:@"kProductDataKey"];
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMVendorDataStore *)self uuid];
    v12 = [v10 initWithTarget:uuid];

    v13 = [MEMORY[0x1E69A2A10] messageWithName:@"kFetchVendorModelEntryForProductDataRequestKey" destination:v12 payload:dictionary];
    objc_initWeak(location, self);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __68__HMVendorDataStore_fetchVendorModelEntryForProductData_completion___block_invoke;
    v23 = &unk_1E754CFF8;
    objc_copyWeak(&v25, location);
    v24 = completionCopy;
    [v13 setResponseHandler:&v20];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v13];

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v18;
      v27 = 2080;
      v28 = "[HMVendorDataStore fetchVendorModelEntryForProductData:completion:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __68__HMVendorDataStore_fetchVendorModelEntryForProductData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v29 = 138543874;
    v30 = v11;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@kFetchVendorModelEntryForProductDataRequestKey received a response: %@, error: %@", &v29, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (!v9)
  {
    v18 = *(a1 + 32);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    (*(v18 + 16))(v18, 0, v14);
LABEL_20:

    goto LABEL_21;
  }

  if (!v5 && v6)
  {
    v12 = [v6 objectForKeyedSubscript:@"kVendorModelEntryDictionaryKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14 && ([HMVendorModelEntry vendorModelEntryFromDictionaryRepresentation:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = *(*(a1 + 32) + 16);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v9;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v26;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@kFetchVendorModelEntryForProductDataRequestKey response payload is invalid", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v27 = *(a1 + 32);
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
      v17 = *(v27 + 16);
    }

    v17();

    goto LABEL_20;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v9;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v22;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@kFetchVendorModelEntryForProductDataRequestKey was responded with error: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  (*(*(a1 + 32) + 16))();
LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)fetchVendorModelEntryForManufacturer:(id)manufacturer model:(id)model completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  manufacturerCopy = manufacturer;
  modelCopy = model;
  completionCopy = completion;
  context = [(HMVendorDataStore *)self context];
  if (context)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:manufacturerCopy forKeyedSubscript:@"kManufacturerKey"];
    if (modelCopy)
    {
      [dictionary setObject:modelCopy forKeyedSubscript:@"kModelKey"];
    }

    v13 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMVendorDataStore *)self uuid];
    v15 = [v13 initWithTarget:uuid];

    v16 = [MEMORY[0x1E69A2A10] messageWithName:@"kFetchVendorModelEntryForManufacturerRequestKey" destination:v15 payload:dictionary];
    objc_initWeak(location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__HMVendorDataStore_fetchVendorModelEntryForManufacturer_model_completion___block_invoke;
    v23[3] = &unk_1E754D058;
    v23[4] = self;
    objc_copyWeak(&v25, location);
    v24 = completionCopy;
    [v16 setResponseHandler:v23];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v16];

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v21;
      v27 = 2080;
      v28 = "[HMVendorDataStore fetchVendorModelEntryForManufacturer:model:completion:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __75__HMVendorDataStore_fetchVendorModelEntryForManufacturer_model_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v29 = 138543874;
    v30 = v10;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEBUG, "%{public}@kFetchVendorModelEntryForManufacturerRequestKey received a response: %@, error: %@", &v29, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v18 = *(a1 + 40);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    (*(v18 + 16))(v18, 0, v14);
LABEL_20:

    goto LABEL_21;
  }

  if (!v5 && v6)
  {
    v12 = [v6 objectForKeyedSubscript:@"kVendorModelEntryDictionaryKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14 && ([HMVendorModelEntry vendorModelEntryFromDictionaryRepresentation:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = *(*(a1 + 40) + 16);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = WeakRetained;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v26;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Fetching vendor model entry response payload is invalid", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v27 = *(a1 + 40);
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
      v17 = *(v27 + 16);
    }

    v17();

    goto LABEL_20;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = WeakRetained;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v22;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Fetching vendor model entry responded with error: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  (*(*(a1 + 40) + 16))();
LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
}

- (HMVendorDataStore)init
{
  v9.receiver = self;
  v9.super_class = HMVendorDataStore;
  v2 = [(HMVendorDataStore *)&v9 init];
  if (v2)
  {
    v3 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.AccessoryBrowser"];
    context = v2->_context;
    v2->_context = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BF2B0921-858B-42F5-B2EB-C915FB953E5B"];
    v6 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v5];
    uuid = v2->_uuid;
    v2->_uuid = v6;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10, &__block_literal_global_7790);
  }

  v3 = logCategory__hmf_once_v11;

  return v3;
}

uint64_t __32__HMVendorDataStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v11 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

@end