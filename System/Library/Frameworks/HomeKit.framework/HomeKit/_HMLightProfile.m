@interface _HMLightProfile
- (HMLightProfile)lightProfile;
- (_HMLightProfile)initWithCoder:(id)a3;
- (_HMLightProfile)initWithUUID:(id)a3 services:(id)a4 settings:(id)a5;
- (void)_registerNotificationHandlers;
- (void)handleSettingsDidUpdate:(id)a3;
@end

@implementation _HMLightProfile

- (_HMLightProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[_HMAccessoryProfile alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hmlp.sck"];
    if (v6)
    {
      v7 = [(_HMAccessoryProfile *)v5 profileUniqueIdentifier];
      v8 = [(_HMAccessoryProfile *)v5 services];
      self = [(_HMLightProfile *)self initWithUUID:v7 services:v8 settings:v6];

      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)handleSettingsDidUpdate:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMLightProfile *)self lightProfile];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v9;
      v27 = 2112;
      v28 = v4;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling message for light profile %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v24 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v11 = [(_HMLightProfile *)v4 unarchivedObjectForKey:@"hmlp.sck" ofClasses:v10];

    if (v11)
    {
      v12 = [(_HMLightProfile *)v4 name];
      [v5 updateSettings:v11 withReason:v12];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v7;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [(_HMLightProfile *)v4 messagePayload];
        *buf = 138543874;
        v26 = v21;
        v27 = 2112;
        v28 = v4;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode light profile settings from message: %@ with payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v11 = 0;
    }
  }

  else
  {
    v11 = [(_HMAccessoryProfile *)self accessory];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v11 lightProfiles];
      *buf = 138543874;
      v26 = v16;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Skipping settings update, light profile not found in accessory light profiles %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationHandlers
{
  v4 = [(_HMAccessoryProfile *)self context];
  v3 = [v4 messageDispatcher];
  [v3 registerForMessage:@"HMLightProfile.sdum" receiver:self selector:sel_handleSettingsDidUpdate_];
}

- (HMLightProfile)lightProfile
{
  v3 = [(_HMAccessoryProfile *)self accessory];
  v4 = [v3 lightProfiles];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31___HMLightProfile_lightProfile__block_invoke;
  v7[3] = &unk_1E7547810;
  v7[4] = self;
  v5 = [v4 na_firstObjectPassingTest:v7];

  return v5;
}

- (_HMLightProfile)initWithUUID:(id)a3 services:(id)a4 settings:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _HMLightProfile;
  v10 = [(_HMAccessoryProfile *)&v13 initWithUUID:a3 services:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_settings, a5);
  }

  return v11;
}

@end