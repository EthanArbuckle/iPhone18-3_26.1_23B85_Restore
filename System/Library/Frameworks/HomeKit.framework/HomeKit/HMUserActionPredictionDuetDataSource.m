@interface HMUserActionPredictionDuetDataSource
+ (id)logCategory;
- (HMUserActionPredictionDuetDataSource)initWithCacheManager:(id)a3;
- (HMUserActionPredictionDuetDataSource)initWithCacheManager:(id)a3 suggestionProvider:(id)a4;
- (NSArray)predictions;
- (id)fetchPredictionsFromCache;
- (void)fetchPredictionsFromBackendWithCompletion:(id)a3;
- (void)openCacheIfNeeded;
@end

@implementation HMUserActionPredictionDuetDataSource

- (void)fetchPredictionsFromBackendWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self)
  {
    v6 = [objc_getProperty(self v4];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2112;
      v24 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched %@ predictions from duet: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __64__HMUserActionPredictionDuetDataSource_fetchPredictionsFromDuet__block_invoke;
    v24 = &unk_1E754ACC8;
    v25 = v8;
    v22 = [v6 na_map:buf];
    [(HMUserActionPredictionDuetDataSource *)v8 openCacheIfNeeded];
    if (objc_getProperty(v8, v13, 32, 1))
    {
      v14 = objc_alloc_init(HMUserActionPredictionDuetPredictionStore);
      v15 = [v22 mutableCopy];
      [(HMUserActionPredictionDuetPredictionStore *)v14 setPredictions:v15];

      v17 = objc_getProperty(v8, v16, 32, 1);
      v18 = [(HMUserActionPredictionDuetPredictionStore *)v14 data];
      [v17 setData:v18 forKey:@"HMUserActionPredictionDuetDataSourceCacheKey"];
    }

    v19 = [v22 copy];
    objc_setProperty_atomic_copy(v8, v20, v19, 24);

    v5[2](v5, v22);
  }

  else
  {
    v22 = 0;
    v5[2](v5, 0);
  }

  v21 = *MEMORY[0x1E69E9840];
}

HMUserActionPredictionDuetPredictionValue *__64__HMUserActionPredictionDuetDataSource_fetchPredictionsFromDuet__block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 homeUUID];
  if (v4 && (v5 = v4, [v3 targetUUID], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = objc_alloc_init(HMUserActionPredictionDuetPredictionValue);
    v8 = MEMORY[0x1E69A2A20];
    v9 = [v3 homeUUID];
    v10 = [v8 hmf_cachedInstanceForString:v9];
    [(HMUserActionPredictionDuetPredictionValue *)v7 setHomeIdentifier:v10];

    v11 = MEMORY[0x1E69A2A20];
    v12 = [v3 targetUUID];
    v13 = [v11 hmf_cachedInstanceForString:v12];
    [(HMUserActionPredictionDuetPredictionValue *)v7 setTargetIdentifier:v13];

    v14 = MEMORY[0x1E69A2A20];
    v15 = [v3 accessoryServiceUUID];
    v16 = [v14 hmf_cachedInstanceForString:v15];
    [(HMUserActionPredictionDuetPredictionValue *)v7 setTargetAccessoryServiceIdentifier:v16];

    [v3 score];
    [(HMUserActionPredictionDuetPredictionValue *)v7 setScore:?];
    v17 = *(a1 + 32);
    v18 = [v3 type];
    v19 = 2 * (v18 == 0);
    if (v18 == 1)
    {
      v19 = 1;
    }

    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    [(HMUserActionPredictionDuetPredictionValue *)v7 setPredictionType:v20];
    if ([(HMUserActionPredictionDuetPredictionValue *)v7 predictionType])
    {
      v21 = v7;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = *(a1 + 32);
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v31;
        v36 = 2112;
        v37 = v3;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Skipping prediction (%@) of unknown type from duet", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v21 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v3 homeUUID];
      v27 = [v3 targetUUID];
      v34 = 138544130;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      v40 = 2112;
      v41 = v3;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@No home identifier (%@) or target identifier (%@) in duet prediction: %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)openCacheIfNeeded
{
  if (a1)
  {
    v3 = objc_getProperty(a1, a2, 32, 1);
    if (!v3)
    {
      if (!objc_getProperty(a1, v4, 8, 1))
      {
        return;
      }

      v7 = [objc_getProperty(a1 v5];
      objc_setProperty_atomic(a1, v6, v7, 32);
      v3 = v7;
    }
  }
}

- (NSArray)predictions
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return self;
}

- (id)fetchPredictionsFromCache
{
  v33 = *MEMORY[0x1E69E9840];
  [(HMUserActionPredictionDuetDataSource *)self openCacheIfNeeded];
  if (self && objc_getProperty(self, v3, 32, 1))
  {
    v5 = [objc_getProperty(self v4];
    if (v5)
    {
      v6 = [[HMUserActionPredictionDuetPredictionStore alloc] initWithData:v5];
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      v10 = v9;
      if (v6)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v12 = MEMORY[0x1E696AD98];
          v13 = [(HMUserActionPredictionDuetPredictionStore *)v6 predictions];
          v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
          v27 = 138543618;
          v28 = v11;
          v29 = 2112;
          Property = v14;
          _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Loaded %@ duet predictions from cache", &v27, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v15 = [(HMUserActionPredictionDuetPredictionStore *)v6 predictions];
        objc_setProperty_atomic_copy(v8, v16, v15, 24);

        v18 = objc_getProperty(v8, v17, 24, 1);
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v27 = 138543362;
          v28 = v24;
          _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to load cached predictions from duet prediction store data.", &v27, 0xCu);
        }

        objc_autoreleasePoolPop(v7);
        v18 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v22;
        v29 = 2112;
        Property = objc_getProperty(v20, v23, 32, 1);
        v31 = 2112;
        v32 = @"HMUserActionPredictionDuetDataSourceCacheKey";
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@No duet prediction data found in cache (%@) for key: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      v18 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v18;
}

- (HMUserActionPredictionDuetDataSource)initWithCacheManager:(id)a3 suggestionProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMUserActionPredictionDuetDataSource;
  v9 = [(HMUserActionPredictionDuetDataSource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheManager, a3);
    lastFetchedPredictions = v10->_lastFetchedPredictions;
    v10->_lastFetchedPredictions = MEMORY[0x1E695E0F0];

    objc_storeStrong(&v10->_suggestionProvider, a4);
  }

  return v10;
}

- (HMUserActionPredictionDuetDataSource)initWithCacheManager:(id)a3
{
  v4 = MEMORY[0x1E698A720];
  v5 = a3;
  v6 = [v4 suggester];
  v7 = [(HMUserActionPredictionDuetDataSource *)self initWithCacheManager:v5 suggestionProvider:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_35347 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_35347, &__block_literal_global_35348);
  }

  v3 = logCategory__hmf_once_v7_35349;

  return v3;
}

uint64_t __51__HMUserActionPredictionDuetDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_35349;
  logCategory__hmf_once_v7_35349 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end