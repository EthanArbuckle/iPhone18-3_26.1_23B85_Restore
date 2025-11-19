@interface HMHomeManagerConfiguration
+ (id)defaultConfiguration;
+ (id)defaultPrivateConfiguration;
+ (id)shortDescription;
- (BOOL)canWriteToCache;
- (HMHomeManagerConfiguration)init;
- (HMHomeManagerConfiguration)initWithOptions:(unint64_t)a3 cachePolicy:(unint64_t)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMHomeManagerConfiguration

- (BOOL)canWriteToCache
{
  if ([(HMHomeManagerConfiguration *)self cachePolicy]== 3)
  {
    return 1;
  }

  return [(HMHomeManagerConfiguration *)self canUseCache];
}

- (NSArray)attributeDescriptions
{
  v27[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v26 = HMHomeManagerOptionsToString([(HMHomeManagerConfiguration *)self options]);
  v25 = [v3 initWithName:@"Options" value:v26];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v24 = HMHomeManagerCachePolicyToString([(HMHomeManagerConfiguration *)self cachePolicy]);
  v23 = [v4 initWithName:@"Cache Policy" value:v24];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMHomeManagerConfiguration *)self isDiscretionary];
  v22 = HMFBooleanToString();
  v6 = [v5 initWithName:@"Discretionary" value:v22];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = HMHomeManagerInactiveUpdatingLevelToString([(HMHomeManagerConfiguration *)self inactiveUpdatingLevel]);
  v9 = [v7 initWithName:@"Inactive Updating Level" value:v8];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [(HMHomeManagerConfiguration *)self delegateQueue];
  v12 = [v10 initWithName:@"Delegate Queue" value:v11];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = [(HMHomeManagerConfiguration *)self locationAuthorization];
  v15 = [v13 initWithName:@"Location Authorization" value:v14];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMHomeManagerConfiguration *)self shouldConnect];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"Should Connect" value:v17];
  v27[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(HMHomeManagerConfiguration *)[HMMutableHomeManagerConfiguration allocWithZone:?]cachePolicy:"initWithOptions:cachePolicy:", [(HMHomeManagerConfiguration *)self options], [(HMHomeManagerConfiguration *)self cachePolicy]];
  [(HMHomeManagerConfiguration *)v4 setDiscretionary:[(HMHomeManagerConfiguration *)self isDiscretionary]];
  [(HMHomeManagerConfiguration *)v4 setInactiveUpdatingLevel:[(HMHomeManagerConfiguration *)self inactiveUpdatingLevel]];
  v5 = [(HMHomeManagerConfiguration *)self delegateQueue];
  [(HMHomeManagerConfiguration *)v4 setDelegateQueue:v5];

  v6 = [(HMHomeManagerConfiguration *)self locationAuthorization];
  [(HMHomeManagerConfiguration *)v4 setLocationAuthorization:v6];

  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)defaultPrivateConfiguration
{
  v2 = [objc_alloc(objc_opt_class()) initWithOptions:-1 cachePolicy:1];

  return v2;
}

+ (id)defaultConfiguration
{
  v2 = [objc_alloc(objc_opt_class()) initWithOptions:-16385 cachePolicy:0];

  return v2;
}

- (HMHomeManagerConfiguration)initWithOptions:(unint64_t)a3 cachePolicy:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = HMHomeManagerConfiguration;
  v6 = [(HMHomeManagerConfiguration *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_cachePolicy = a4;
    v6->_options = a3;
    v6->_inactiveUpdatingLevel = 0;
    v8 = [MEMORY[0x1E696ADC8] mainQueue];
    delegateQueue = v7->_delegateQueue;
    v7->_delegateQueue = v8;

    v10 = [MEMORY[0x1E69A29E8] sharedAuthorization];
    locationAuthorization = v7->_locationAuthorization;
    v7->_locationAuthorization = v10;

    if ([(HMHomeManagerConfiguration *)v7 canUseCache]|| [(HMHomeManagerConfiguration *)v7 canWriteToCache])
    {
      v12 = HMCreateConfigurationsCacheDirectory();
      if (v12)
      {
        v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
        cacheURL = v7->_cacheURL;
        v7->_cacheURL = v13;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = v7;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v23 = v18;
          _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to create the home configuration cache folder -- turning off the caching support", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        v7->_cachePolicy = 0;
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

- (HMHomeManagerConfiguration)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end