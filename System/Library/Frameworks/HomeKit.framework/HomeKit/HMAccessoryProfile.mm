@interface HMAccessoryProfile
- (BOOL)isEqual:(id)a3;
- (HMAccessory)accessory;
- (HMAccessoryProfile)initWithAccessoryProfile:(id)a3;
- (NSArray)services;
- (NSString)description;
- (NSUUID)profileUniqueIdentifier;
- (NSUUID)uniqueIdentifier;
- (id)assistantIdentifier;
- (unint64_t)hash;
- (void)handleRuntimeStateUpdate:(id)a3;
- (void)refreshStateWithCompletionHandler:(id)a3;
@end

@implementation HMAccessoryProfile

- (void)refreshStateWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (!v4)
  {
    if (v8)
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@nil completion handler", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v13);
  }

  if (v8)
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Refreshing state is not supported on this accessory profile", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  v4[2](v4, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (id)assistantIdentifier
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  v3 = [v2 assistantIdentifier];

  return v3;
}

- (void)handleRuntimeStateUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessoryProfile *)self accessoryProfile];
  [v5 handleRuntimeStateUpdate:v4];
}

- (NSUUID)profileUniqueIdentifier
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  v3 = [v2 profileUniqueIdentifier];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMAccessoryProfile *)self accessoryProfile];
      v7 = [(HMAccessoryProfile *)v5 accessoryProfile];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HMAccessoryProfile *)self accessoryProfile];
  v4 = [v2 stringWithFormat:@"Wrapping %@", v3];

  return v4;
}

- (HMAccessory)accessory
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  v3 = [v2 accessory];

  return v3;
}

- (NSArray)services
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  v3 = [v2 services];

  return v3;
}

- (HMAccessoryProfile)initWithAccessoryProfile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMAccessoryProfile;
  v6 = [(HMAccessoryProfile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryProfile, a3);
  }

  return v7;
}

@end