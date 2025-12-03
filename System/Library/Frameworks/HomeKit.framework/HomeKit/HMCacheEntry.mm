@interface HMCacheEntry
+ (id)shortDescription;
- (BOOL)isExpired;
- (HMCacheEntry)initWithCoder:(id)coder;
- (HMCacheEntry)initWithData:(id)data lastModificationDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCacheEntry

- (HMCacheEntry)initWithData:(id)data lastModificationDate:(id)date
{
  dataCopy = data;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = HMCacheEntry;
  v8 = [(HMCacheEntry *)&v14 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = [dateCopy copy];
    lastModificationDate = v8->_lastModificationDate;
    v8->_lastModificationDate = v11;
  }

  return v8;
}

- (BOOL)isExpired
{
  lastModificationDate = [(HMCacheEntry *)self lastModificationDate];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
  v4 = [lastModificationDate compare:v3] == -1;

  return v4;
}

- (HMCacheEntry)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCacheEntryLastModificationDateKey"];
    if (v6)
    {
      self = [(HMCacheEntry *)self initWithData:v5 lastModificationDate:v6];
      selfCopy = self;
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
      selfCopy = 0;
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
    selfCopy = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(HMCacheEntry *)self data];
  [coderCopy encodeObject:data forKey:@"Data"];

  lastModificationDate = [(HMCacheEntry *)self lastModificationDate];
  [coderCopy encodeObject:lastModificationDate forKey:@"HMCacheEntryLastModificationDateKey"];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end