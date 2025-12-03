@interface _HMLightProfile
- (HMLightProfile)lightProfile;
- (_HMLightProfile)initWithCoder:(id)coder;
- (_HMLightProfile)initWithUUID:(id)d services:(id)services settings:(id)settings;
- (void)_registerNotificationHandlers;
- (void)handleSettingsDidUpdate:(id)update;
@end

@implementation _HMLightProfile

- (_HMLightProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[_HMAccessoryProfile alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hmlp.sck"];
    if (v6)
    {
      profileUniqueIdentifier = [(_HMAccessoryProfile *)v5 profileUniqueIdentifier];
      services = [(_HMAccessoryProfile *)v5 services];
      self = [(_HMLightProfile *)self initWithUUID:profileUniqueIdentifier services:services settings:v6];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)handleSettingsDidUpdate:(id)update
{
  v31 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  lightProfile = [(_HMLightProfile *)self lightProfile];
  if (lightProfile)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v9;
      v27 = 2112;
      v28 = updateCopy;
      v29 = 2112;
      v30 = lightProfile;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling message for light profile %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v24 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    accessory = [(_HMLightProfile *)updateCopy unarchivedObjectForKey:@"hmlp.sck" ofClasses:v10];

    if (accessory)
    {
      name = [(_HMLightProfile *)updateCopy name];
      [lightProfile updateSettings:accessory withReason:name];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        messagePayload = [(_HMLightProfile *)updateCopy messagePayload];
        *buf = 138543874;
        v26 = v21;
        v27 = 2112;
        v28 = updateCopy;
        v29 = 2112;
        v30 = messagePayload;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode light profile settings from message: %@ with payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      accessory = 0;
    }
  }

  else
  {
    accessory = [(_HMAccessoryProfile *)self accessory];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      lightProfiles = [accessory lightProfiles];
      *buf = 138543874;
      v26 = v16;
      v27 = 2112;
      v28 = selfCopy2;
      v29 = 2112;
      v30 = lightProfiles;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Skipping settings update, light profile not found in accessory light profiles %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationHandlers
{
  context = [(_HMAccessoryProfile *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMLightProfile.sdum" receiver:self selector:sel_handleSettingsDidUpdate_];
}

- (HMLightProfile)lightProfile
{
  accessory = [(_HMAccessoryProfile *)self accessory];
  lightProfiles = [accessory lightProfiles];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31___HMLightProfile_lightProfile__block_invoke;
  v7[3] = &unk_1E7547810;
  v7[4] = self;
  v5 = [lightProfiles na_firstObjectPassingTest:v7];

  return v5;
}

- (_HMLightProfile)initWithUUID:(id)d services:(id)services settings:(id)settings
{
  settingsCopy = settings;
  v13.receiver = self;
  v13.super_class = _HMLightProfile;
  v10 = [(_HMAccessoryProfile *)&v13 initWithUUID:d services:services];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_settings, settings);
  }

  return v11;
}

@end