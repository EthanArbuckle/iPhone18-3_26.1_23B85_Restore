@interface HMAccessoryProfile
- (BOOL)isEqual:(id)equal;
- (HMAccessory)accessory;
- (HMAccessoryProfile)initWithAccessoryProfile:(id)profile;
- (NSArray)services;
- (NSString)description;
- (NSUUID)profileUniqueIdentifier;
- (NSUUID)uniqueIdentifier;
- (id)assistantIdentifier;
- (unint64_t)hash;
- (void)handleRuntimeStateUpdate:(id)update;
- (void)refreshStateWithCompletionHandler:(id)handler;
@end

@implementation HMAccessoryProfile

- (void)refreshStateWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (!handlerCopy)
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
  handlerCopy[2](handlerCopy, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (id)assistantIdentifier
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  assistantIdentifier = [accessoryProfile assistantIdentifier];

  return assistantIdentifier;
}

- (void)handleRuntimeStateUpdate:(id)update
{
  updateCopy = update;
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  [accessoryProfile handleRuntimeStateUpdate:updateCopy];
}

- (NSUUID)profileUniqueIdentifier
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  profileUniqueIdentifier = [accessoryProfile profileUniqueIdentifier];

  return profileUniqueIdentifier;
}

- (unint64_t)hash
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  v3 = [accessoryProfile hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
      accessoryProfile2 = [(HMAccessoryProfile *)v5 accessoryProfile];

      v8 = [accessoryProfile isEqual:accessoryProfile2];
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
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  uniqueIdentifier = [accessoryProfile uniqueIdentifier];

  return uniqueIdentifier;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  v4 = [v2 stringWithFormat:@"Wrapping %@", accessoryProfile];

  return v4;
}

- (HMAccessory)accessory
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  accessory = [accessoryProfile accessory];

  return accessory;
}

- (NSArray)services
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  services = [accessoryProfile services];

  return services;
}

- (HMAccessoryProfile)initWithAccessoryProfile:(id)profile
{
  profileCopy = profile;
  v9.receiver = self;
  v9.super_class = HMAccessoryProfile;
  v6 = [(HMAccessoryProfile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryProfile, profile);
  }

  return v7;
}

@end