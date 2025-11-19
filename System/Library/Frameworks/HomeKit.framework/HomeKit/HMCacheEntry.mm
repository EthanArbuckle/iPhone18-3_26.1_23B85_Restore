@interface HMCacheEntry
+ (id)shortDescription;
- (BOOL)isExpired;
- (HMCacheEntry)initWithCoder:(id)a3;
- (HMCacheEntry)initWithData:(id)a3 lastModificationDate:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCacheEntry

- (HMCacheEntry)initWithData:(id)a3 lastModificationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMCacheEntry;
  v8 = [(HMCacheEntry *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = [v7 copy];
    lastModificationDate = v8->_lastModificationDate;
    v8->_lastModificationDate = v11;
  }

  return v8;
}

- (BOOL)isExpired
{
  v2 = [(HMCacheEntry *)self lastModificationDate];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

- (HMCacheEntry)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCacheEntryLastModificationDateKey"];
    if (v6)
    {
      self = [(HMCacheEntry *)self initWithData:v5 lastModificationDate:v6];
      v7 = self;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive lastModificationDate for HMCacheEntry", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v7 = 0;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive data for HMCacheEntry", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMCacheEntry *)self data];
  [v4 encodeObject:v5 forKey:@"Data"];

  v6 = [(HMCacheEntry *)self lastModificationDate];
  [v4 encodeObject:v6 forKey:@"HMCacheEntryLastModificationDateKey"];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end