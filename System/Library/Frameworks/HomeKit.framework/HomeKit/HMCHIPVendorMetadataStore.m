@interface HMCHIPVendorMetadataStore
+ (id)logCategory;
- (HMCHIPVendorMetadataStore)init;
- (HMCHIPVendorMetadataStore)initWithContext:(id)a3;
- (void)fetchProductDataWithVendorID:(id)a3 productID:(id)a4 completion:(id)a5;
- (void)fetchVendorDataWithID:(id)a3 completion:(id)a4;
@end

@implementation HMCHIPVendorMetadataStore

- (HMCHIPVendorMetadataStore)initWithContext:(id)a3
{
  v5 = a3;
  v6 = [(HMCHIPVendorMetadataStore *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (void)fetchProductDataWithVendorID:(id)a3 productID:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMCHIPVendorMetadataStore *)self context];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v8 forKeyedSubscript:@"kVendorIDKey"];
    [v12 setObject:v9 forKeyedSubscript:@"kProductIDKey"];
    v13 = objc_alloc(MEMORY[0x1E69A2A00]);
    v14 = [(HMCHIPVendorMetadataStore *)self uuid];
    v15 = [v13 initWithTarget:v14];

    v16 = [MEMORY[0x1E69A2A10] messageWithName:@"kFetchVendorMetadataProductDataRequestKey" destination:v15 payload:v12];
    objc_initWeak(location, self);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __79__HMCHIPVendorMetadataStore_fetchProductDataWithVendorID_productID_completion___block_invoke;
    v26 = &unk_1E754CFF8;
    objc_copyWeak(&v28, location);
    v27 = v10;
    [v16 setResponseHandler:&v23];
    v17 = [v11 messageDispatcher];
    [v17 sendMessage:v16];

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v21;
      v30 = 2080;
      v31 = "[HMCHIPVendorMetadataStore fetchProductDataWithVendorID:productID:completion:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __79__HMCHIPVendorMetadataStore_fetchProductDataWithVendorID_productID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v35 = v11;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@kFetchVendorMetadataProductDataRequestKey received a response: %@, error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (!v9)
  {
    v16 = *(a1 + 32);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    (*(v16 + 16))(v16, 0, 0, v14);
LABEL_28:

    goto LABEL_29;
  }

  if (!v5 && v6)
  {
    v12 = [v6 objectForKeyedSubscript:@"kVendorMetadataProductDictionaryKey"];
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

    if (v14)
    {
      v15 = [HMCHIPVendorMetadataProduct productFromDictionaryRepresentation:v14];
    }

    else
    {
      v15 = 0;
    }

    v21 = [v6 objectForKeyedSubscript:@"kVendorMetadataVendorDictionaryKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v23)
    {
      v24 = [HMCHIPVendorMetadataVendor vendorFromDictionaryRepresentation:v23];
      v25 = v24;
      if (v15 && v24)
      {
        (*(*(a1 + 32) + 16))();
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v25 = 0;
    }

    context = objc_autoreleasePoolPush();
    v26 = v9;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v28 = v32 = v15;
      *buf = 138543362;
      v35 = v28;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@kFetchVendorMetadataProductDataRequestKey response payload is invalid", buf, 0xCu);

      v15 = v32;
    }

    objc_autoreleasePoolPop(context);
    v29 = *(a1 + 32);
    v30 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    (*(v29 + 16))(v29, 0, 0, v30);

    goto LABEL_27;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = v9;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v20;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@kFetchVendorMetadataProductDataRequestKey was responded with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  (*(*(a1 + 32) + 16))();
LABEL_29:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)fetchVendorDataWithID:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMCHIPVendorMetadataStore *)self context];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v6 forKeyedSubscript:@"kVendorIDKey"];
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    v11 = [(HMCHIPVendorMetadataStore *)self uuid];
    v12 = [v10 initWithTarget:v11];

    v13 = [MEMORY[0x1E69A2A10] messageWithName:@"kFetchVendorMetadataVendorDataRequestKey" destination:v12 payload:v9];
    objc_initWeak(location, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__HMCHIPVendorMetadataStore_fetchVendorDataWithID_completion___block_invoke;
    v20[3] = &unk_1E754D058;
    v20[4] = self;
    objc_copyWeak(&v22, location);
    v21 = v7;
    [v13 setResponseHandler:v20];
    v14 = [v8 messageDispatcher];
    [v14 sendMessage:v13];

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v18;
      v24 = 2080;
      v25 = "[HMCHIPVendorMetadataStore fetchVendorDataWithID:completion:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __62__HMCHIPVendorMetadataStore_fetchVendorDataWithID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEBUG, "%{public}@kFetchVendorMetadataVendorDataRequestKey received a response: %@, error: %@", &v29, 0x20u);
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
    v12 = [v6 objectForKeyedSubscript:@"kVendorMetadataVendorDictionaryKey"];
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

    if (v14 && ([HMCHIPVendorMetadataVendor vendorFromDictionaryRepresentation:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
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
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Fetching vendor data response payload is invalid", &v29, 0xCu);
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
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Fetching vendor data responded with error: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  (*(*(a1 + 40) + 16))();
LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
}

- (HMCHIPVendorMetadataStore)init
{
  v9.receiver = self;
  v9.super_class = HMCHIPVendorMetadataStore;
  v2 = [(HMCHIPVendorMetadataStore *)&v9 init];
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
  if (logCategory__hmf_once_t11_7642 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_7642, &__block_literal_global_7643);
  }

  v3 = logCategory__hmf_once_v12_7644;

  return v3;
}

uint64_t __40__HMCHIPVendorMetadataStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v12_7644 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

@end