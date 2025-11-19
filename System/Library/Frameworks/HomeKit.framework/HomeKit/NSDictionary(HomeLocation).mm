@interface NSDictionary(HomeLocation)
- (id)hm_locationFromDataForKey:()HomeLocation;
- (id)hm_regionFromDataForKey:()HomeLocation;
@end

@implementation NSDictionary(HomeLocation)

- (id)hm_regionFromDataForKey:()HomeLocation
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 hmf_dataForKey:v4];
  if (v5)
  {
    v15 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = a1;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v17 = v12;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive region value from data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)hm_locationFromDataForKey:()HomeLocation
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 hmf_dataForKey:v4];
  if (v5)
  {
    v15 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = a1;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v17 = v12;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive location value from data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

@end