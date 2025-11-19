@interface MTSKeyValueStore
+ (id)logCategory;
- (BOOL)removeAllStoredValuesWithError:(id *)a3;
- (BOOL)removeStoredValueForKey:(id)a3 error:(id *)a4;
- (BOOL)setStoredValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (MTSKeyValueStore)init;
- (MTSKeyValueStore)initWithKeychainStore:(id)a3;
- (NSDictionary)storedValuesByKey;
- (id)storedValueForKey:(id)a3;
@end

@implementation MTSKeyValueStore

- (BOOL)removeAllStoredValuesWithError:(id *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v8;
    _os_log_impl(&dword_239824000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing all values", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(MTSKeyValueStore *)v6 keychainStore];
  v19 = 0;
  v10 = [v9 removeAllDataWithError:&v19];
  v11 = v19;

  if ((v10 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_239824000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all values: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (a3)
    {
      v16 = v11;
      *a3 = v11;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)removeStoredValueForKey:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v10;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing value for key: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(MTSKeyValueStore *)v8 keychainStore];
  v21 = 0;
  v12 = [v11 removeDataForKey:v6 error:&v21];
  v13 = v21;

  if ((v12 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v8;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_239824000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove value for key %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (a4)
    {
      v18 = v13;
      *a4 = v13;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)setStoredValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v43[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v13;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_INFO, "%{public}@Setting value for key: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v35 = 0;
  v14 = MEMORY[0x23EE79230](v8, 8, &v35);
  if (!v14)
  {
    if (v35)
    {
      v19 = objc_alloc(MEMORY[0x277CCA9B8]);
      v20 = *MEMORY[0x277CCA590];
      v21 = v35;
      v42 = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v23 = v22;
      v24 = @"?";
      if (v22)
      {
        v24 = v22;
      }

      v43[0] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v17 = [v19 initWithDomain:v20 code:v21 userInfo:v25];
    }

    else
    {
      v17 = 0;
    }

    v26 = objc_autoreleasePoolPush();
    v27 = v11;
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v29 = HMFGetLogIdentifier();
    *buf = 138543874;
    v37 = v29;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v17;
    v30 = "%{public}@Failed to encode value %@: %@";
    goto LABEL_15;
  }

  v15 = [(MTSKeyValueStore *)v11 keychainStore];
  v34 = 0;
  v16 = [v15 setData:v14 forKey:v9 error:&v34];
  v17 = v34;

  if (v16)
  {
    v18 = 1;
    goto LABEL_19;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v11;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543874;
    v37 = v29;
    v38 = 2112;
    v39 = v9;
    v40 = 2112;
    v41 = v17;
    v30 = "%{public}@Failed to set value for key %@: %@";
LABEL_15:
    _os_log_impl(&dword_239824000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0x20u);
  }

LABEL_16:

  objc_autoreleasePoolPop(v26);
  if (a5)
  {
    v31 = v17;
    v18 = 0;
    *a5 = v17;
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v32 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)storedValueForKey:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTSKeyValueStore *)self keychainStore];
  v6 = [v5 dataForKey:v4];

  if (v6)
  {
    v7 = OPACKDecodeData();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543874;
        v17 = v13;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = 0;
        _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode encoded value %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSDictionary)storedValuesByKey
{
  v3 = [(MTSKeyValueStore *)self keychainStore];
  v4 = [v3 allDataByKey];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__MTSKeyValueStore_storedValuesByKey__block_invoke;
  v7[3] = &unk_278AA18D0;
  v7[4] = self;
  v5 = [v4 na_dictionaryByMappingValues:v7];

  return v5;
}

id __37__MTSKeyValueStore_storedValuesByKey__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = OPACKDecodeData();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode encoded value %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (MTSKeyValueStore)initWithKeychainStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTSKeyValueStore;
  v6 = [(MTSKeyValueStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychainStore, a3);
  }

  return v7;
}

- (MTSKeyValueStore)init
{
  v3 = [[MTSKeychainStore alloc] initWithScope:@"com.apple.matter.support.key.value"];
  v4 = [(MTSKeyValueStore *)self initWithKeychainStore:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13, &__block_literal_global_483);
  }

  v3 = logCategory__hmf_once_v14;

  return v3;
}

uint64_t __31__MTSKeyValueStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v14 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end