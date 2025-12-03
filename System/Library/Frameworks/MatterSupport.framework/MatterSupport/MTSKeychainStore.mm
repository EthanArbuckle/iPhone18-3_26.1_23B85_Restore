@interface MTSKeychainStore
+ (id)logCategory;
- (BOOL)removeAllDataWithError:(id *)error;
- (BOOL)removeDataForKey:(id)key error:(id *)error;
- (BOOL)setData:(id)data forKey:(id)key error:(id *)error;
- (MTSKeychainStore)initWithScope:(id)scope;
- (MTSKeychainStore)initWithScope:(id)scope dataSource:(id)source;
- (NSDictionary)allDataByKey;
- (id)attributeDictionaryForAddingData:(id)data forKey:(id)key;
- (id)attributeDictionaryForUpdatingData:(id)data;
- (id)dataForKey:(id)key;
- (id)queryDictionaryForKey:(id)key isExpectingReturnData:(BOOL)data;
@end

@implementation MTSKeychainStore

- (id)attributeDictionaryForUpdatingData:(id)data
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CDC5E8];
  v9[0] = data;
  v3 = MEMORY[0x277CBEAC0];
  dataCopy = data;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)attributeDictionaryForAddingData:(id)data forKey:(id)key
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CDC238];
  v7 = *MEMORY[0x277CDBEC8];
  v17[0] = *MEMORY[0x277CDC228];
  v17[1] = v7;
  v18[0] = v6;
  v18[1] = @"com.apple.matter.support";
  v17[2] = *MEMORY[0x277CDC120];
  keyCopy = key;
  dataCopy = data;
  scope = [(MTSKeychainStore *)self scope];
  v11 = *MEMORY[0x277CDC140];
  v18[2] = scope;
  v18[3] = MEMORY[0x277CBEC38];
  v12 = *MEMORY[0x277CDBED8];
  v17[3] = v11;
  v17[4] = v12;
  v18[4] = *MEMORY[0x277CDBEE0];
  v18[5] = MEMORY[0x277CBEC38];
  v13 = *MEMORY[0x277CDBF20];
  v17[5] = *MEMORY[0x277CDBFC0];
  v17[6] = v13;
  v17[7] = *MEMORY[0x277CDC5E8];
  v18[6] = keyCopy;
  v18[7] = dataCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:8];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)queryDictionaryForKey:(id)key isExpectingReturnData:(BOOL)data
{
  dataCopy = data;
  v6 = MEMORY[0x277CBEB38];
  keyCopy = key;
  dictionary = [v6 dictionary];
  [dictionary setObject:*MEMORY[0x277CDC238] forKeyedSubscript:*MEMORY[0x277CDC228]];
  [dictionary setObject:@"com.apple.matter.support" forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  scope = [(MTSKeychainStore *)self scope];
  [dictionary setObject:scope forKeyedSubscript:*MEMORY[0x277CDC120]];

  [dictionary setObject:*MEMORY[0x277CDC148] forKeyedSubscript:*MEMORY[0x277CDC140]];
  [dictionary setObject:keyCopy forKeyedSubscript:*MEMORY[0x277CDBF20]];

  if (dataCopy)
  {
    v10 = MEMORY[0x277CBEC38];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC558]];
    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277CDC550]];
    v11 = MEMORY[0x277CDC438];
    if (!keyCopy)
    {
      v11 = MEMORY[0x277CDC430];
    }

    [dictionary setObject:*v11 forKeyedSubscript:*MEMORY[0x277CDC428]];
  }

  v12 = [dictionary copy];

  return v12;
}

- (BOOL)removeAllDataWithError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&dword_239824000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing all data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(MTSKeychainStore *)selfCopy queryDictionaryForKey:0 isExpectingReturnData:0];
  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v13;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Removing all keychain items matching query: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  dataSource = [(MTSKeychainStore *)v11 dataSource];
  v25 = 0;
  v15 = [dataSource removeItemsMatchingQuery:v9 error:&v25];
  v16 = v25;

  if ((v15 & 1) != 0 || [v16 code] == -25300)
  {
    v17 = 1;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v11;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v23;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_239824000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all keychain items %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    if (error)
    {
      v24 = v16;
      v17 = 0;
      *error = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)removeDataForKey:(id)key error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v10;
    v30 = 2112;
    v31 = keyCopy;
    _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing data for key: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(MTSKeychainStore *)selfCopy queryDictionaryForKey:keyCopy isExpectingReturnData:0];
  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v15;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_239824000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Removing keychain item matching query: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  dataSource = [(MTSKeychainStore *)v13 dataSource];
  v27 = 0;
  v17 = [dataSource removeItemsMatchingQuery:v11 error:&v27];
  v18 = v27;

  if ((v17 & 1) != 0 || [v18 code] == -25300)
  {
    v19 = 1;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v13;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v25;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_239824000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove keychain item with query %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    if (error)
    {
      v26 = v18;
      v19 = 0;
      *error = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)setData:(id)data forKey:(id)key error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v13;
    v45 = 2112;
    v46 = keyCopy;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_INFO, "%{public}@Setting data for key: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(MTSKeychainStore *)selfCopy attributeDictionaryForAddingData:dataCopy forKey:keyCopy];
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v18;
    v45 = 2112;
    v46 = v14;
    _os_log_impl(&dword_239824000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Adding keychain item with attributes: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  dataSource = [(MTSKeychainStore *)v16 dataSource];
  v42 = 0;
  v20 = [dataSource addItemWithAttributes:v14 error:&v42];
  v21 = v42;

  if (v20)
  {
    v22 = 1;
LABEL_20:
    v24 = v14;
    goto LABEL_21;
  }

  if ([v21 code] != -25299)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v16;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543874;
      v44 = v31;
      v45 = 2112;
      v46 = v14;
      v47 = 2112;
      v48 = v21;
      _os_log_impl(&dword_239824000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to add keychain item with attributes %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    if (error)
    {
      v32 = v21;
      v22 = 0;
      *error = v21;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_20;
  }

  v23 = [(MTSKeychainStore *)v16 queryDictionaryForKey:keyCopy isExpectingReturnData:0];
  v24 = [(MTSKeychainStore *)v16 attributeDictionaryForUpdatingData:dataCopy];

  dataSource2 = [(MTSKeychainStore *)v16 dataSource];
  v41 = 0;
  v26 = [dataSource2 updateItemMatchingQuery:v23 withAttributes:v24 error:&v41];
  v27 = v41;

  if (v26)
  {

    v22 = 1;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v16;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v36 = v40 = v33;
      *buf = 138544130;
      v44 = v36;
      v45 = 2112;
      v46 = v23;
      v47 = 2112;
      v48 = v24;
      v49 = 2112;
      v50 = v27;
      _os_log_impl(&dword_239824000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to update keychain item with query %@ and attributes %@: %@", buf, 0x2Au);

      v33 = v40;
    }

    objc_autoreleasePoolPop(v33);
    if (error)
    {
      v37 = v27;
      *error = v27;
    }

    v22 = 0;
  }

LABEL_21:

  v38 = *MEMORY[0x277D85DE8];
  return v22;
}

- (NSDictionary)allDataByKey
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = [(MTSKeychainStore *)self queryDictionaryForKey:0 isExpectingReturnData:1];
  dataSource = [(MTSKeychainStore *)self dataSource];
  v41 = 0;
  v5 = [dataSource resultMatchingQuery:v3 error:&v41];
  v6 = v41;

  if (v5)
  {
    v7 = v5;
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() & 1;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v8)
    {
      v35 = v6;
      v36 = v3;
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v12 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v38;
        v15 = *MEMORY[0x277CDBF20];
        v16 = *MEMORY[0x277CDC5E8];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v38 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v37 + 1) + 8 * i);
            v19 = [v18 objectForKeyedSubscript:v15];
            v20 = [v18 objectForKeyedSubscript:v16];
            [v11 setObject:v20 forKeyedSubscript:v19];
          }

          v13 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v13);
      }

      v21 = [v11 copy];
      v6 = v35;
      v3 = v36;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v30 = v29 = v6;
        v31 = objc_opt_class();
        *buf = 138543874;
        v44 = v30;
        v45 = 2112;
        v46 = v31;
        v47 = 2112;
        v48 = v7;
        v32 = v31;
        _os_log_impl(&dword_239824000, v28, OS_LOG_TYPE_ERROR, "%{public}@Keychain item query result was of unexpected class %@: %@", buf, 0x20u);

        v6 = v29;
      }

      objc_autoreleasePoolPop(v26);
      v21 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    if ([v6 code] != -25300)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v25;
        v45 = 2112;
        v46 = v6;
        _os_log_impl(&dword_239824000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to query all keychain items: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    v21 = MEMORY[0x277CBEC10];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)dataForKey:(id)key
{
  v35 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(MTSKeychainStore *)self queryDictionaryForKey:keyCopy isExpectingReturnData:1];
  dataSource = [(MTSKeychainStore *)self dataSource];
  v26 = 0;
  v7 = [dataSource resultMatchingQuery:v5 error:&v26];
  v8 = v26;

  if (v7)
  {
    v9 = v7;
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() & 1;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v10)
    {
      v13 = [v9 objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = objc_opt_class();
        *buf = 138544130;
        v28 = v21;
        v29 = 2112;
        v30 = keyCopy;
        v31 = 2112;
        v32 = v22;
        v33 = 2112;
        v34 = v9;
        v23 = v22;
        _os_log_impl(&dword_239824000, v20, OS_LOG_TYPE_ERROR, "%{public}@Keychain item query result for key %@ was of unexpected class %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v18);
      v13 = 0;
    }
  }

  else
  {
    if ([v8 code] != -25300)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v28 = v17;
        v29 = 2112;
        v30 = keyCopy;
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&dword_239824000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to query keychain item for key %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v13 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v13;
}

- (MTSKeychainStore)initWithScope:(id)scope dataSource:(id)source
{
  scopeCopy = scope;
  sourceCopy = source;
  if (!scopeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return [(MTSKeychainStore *)v13 initWithScope:v14, v15];
  }

  v16.receiver = self;
  v16.super_class = MTSKeychainStore;
  v9 = [(MTSKeychainStore *)&v16 init];
  if (v9)
  {
    v10 = [scopeCopy copy];
    scope = v9->_scope;
    v9->_scope = v10;

    objc_storeStrong(&v9->_dataSource, source);
  }

  return v9;
}

- (MTSKeychainStore)initWithScope:(id)scope
{
  scopeCopy = scope;
  if (scopeCopy)
  {
    v5 = scopeCopy;
    v6 = objc_alloc_init(MTSKeychainStoreDataSource);
    v7 = [(MTSKeychainStore *)self initWithScope:v5 dataSource:v6];

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return +[(MTSKeychainStore *)v9];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20, &__block_literal_global);
  }

  v3 = logCategory__hmf_once_v21;

  return v3;
}

uint64_t __31__MTSKeychainStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v21 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end