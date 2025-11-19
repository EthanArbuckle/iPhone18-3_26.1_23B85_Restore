@interface _HMCameraProfile
- (NSArray)controls;
- (_HMCameraProfile)initWithCoder:(id)a3;
- (_HMCameraProfile)initWithUUID:(id)a3 services:(id)a4 mostRecentSnapshot:(id)a5 userSettings:(id)a6;
- (void)__configureWithContext:(id)a3 accessory:(id)a4;
- (void)addUserSettings:(id)a3;
@end

@implementation _HMCameraProfile

- (_HMCameraProfile)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[_HMAccessoryProfile alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:5];
    v8 = [v6 setWithArray:{v7, v17, v18, v19, v20}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HMCP.ck.mostRecentSnapshot"];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCP.ck.userSettings"];
    if (v10)
    {
      v11 = [[HMCameraUserSettings alloc] initWithCameraUserSettings:v10];
    }

    else
    {
      v11 = 0;
    }

    v13 = [(_HMAccessoryProfile *)v5 profileUniqueIdentifier];
    v14 = [(_HMAccessoryProfile *)v5 services];
    self = [(_HMCameraProfile *)self initWithUUID:v13 services:v14 mostRecentSnapshot:v9 userSettings:v11];

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)addUserSettings:(id)a3
{
  v4 = a3;
  [(_HMCameraProfile *)self setUserSettings:v4];
  v6 = [(_HMAccessoryProfile *)self accessory];
  v5 = [(_HMAccessoryProfile *)self context];
  [v4 configureWithAccessory:v6 context:v5];
}

- (void)__configureWithContext:(id)a3 accessory:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = _HMCameraProfile;
  [(_HMAccessoryProfile *)&v41 __configureWithContext:v6 accessory:v7];
  v8 = [v7 home];
  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138543618;
      v44 = v12;
      v45 = 2112;
      v46 = v13;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_FAULT, "%{public}@Home was nil while configuring _HMCameraProfile. Call stack: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = [(_HMCameraProfile *)self controls];
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v37 + 1) + 8 * i) __configureWithContext:v6];
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v16);
  }

  v19 = [(_HMCameraProfile *)self userSettings];
  [v19 configureWithAccessory:v7 context:v6];

  v20 = [v7 services];
  v21 = [v20 hmf_objectPassingTest:&__block_literal_global_27866];

  if (v21)
  {
    v22 = [v21 uuid];
    v23 = [HMCameraClipManager zoneNameForRecordingManagementServiceUUID:v22];

    v24 = [HMCameraClipManager alloc];
    v25 = [(_HMAccessoryProfile *)self profileUniqueIdentifier];
    v26 = [(HMCameraClipManager *)v24 initWithContext:v6 profileUniqueIdentifier:v25 zoneName:v23 home:v8];
    [(_HMCameraProfile *)self setClipManager:v26];

    v27 = [(_HMCameraProfile *)self clipManager];
    [v27 configure];

    v28 = [HMCameraRecordingReachabilityEventManager alloc];
    v29 = [v7 uuid];
    v30 = [(HMCameraRecordingReachabilityEventManager *)v28 initWithContext:v6 uniqueIdentifier:v29];
    [(_HMCameraProfile *)self setReachabilityEventManager:v30];

    v31 = [(_HMCameraProfile *)self reachabilityEventManager];
    [v31 configure];

    v32 = [HMCameraRecordingEventManager alloc];
    v33 = [(_HMCameraProfile *)self clipManager];
    v34 = [(_HMCameraProfile *)self reachabilityEventManager];
    v35 = [(HMCameraRecordingEventManager *)v32 initWithContext:v6 clipManager:v33 reachabilityEventManager:v34 home:v8];
    [(_HMCameraProfile *)self setRecordingEventManager:v35];
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (NSArray)controls
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_HMCameraProfile *)self streamControl];
  [v3 addObject:v4];

  v5 = [(_HMCameraProfile *)self snapshotControl];
  [v3 addObject:v5];

  v6 = [(_HMCameraProfile *)self settingsControl];

  if (v6)
  {
    v7 = [(_HMCameraProfile *)self settingsControl];
    [v3 addObject:v7];
  }

  v8 = [(_HMCameraProfile *)self microphoneControl];

  if (v8)
  {
    v9 = [(_HMCameraProfile *)self microphoneControl];
    [v3 addObject:v9];
  }

  v10 = [(_HMCameraProfile *)self speakerControl];

  if (v10)
  {
    v11 = [(_HMCameraProfile *)self speakerControl];
    [v3 addObject:v11];
  }

  v12 = [v3 copy];

  return v12;
}

- (_HMCameraProfile)initWithUUID:(id)a3 services:(id)a4 mostRecentSnapshot:(id)a5 userSettings:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v54.receiver = self;
  v54.super_class = _HMCameraProfile;
  v12 = [(_HMAccessoryProfile *)&v54 initWithUUID:a3 services:a4];
  if (v12)
  {
    v46 = v11;
    v48 = a6;
    v13 = [_HMCameraStreamControl alloc];
    v14 = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
    v15 = [(_HMCameraStreamControl *)v13 initWithCameraProfile:v12 profileUniqueIdentifier:v14];
    streamControl = v12->_streamControl;
    v12->_streamControl = v15;

    v17 = [_HMCameraSnapshotControl alloc];
    v18 = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
    v47 = v10;
    v19 = [(_HMCameraSnapshotControl *)v17 initWithCameraProfile:v12 profileUniqueIdentifier:v18 mostRecentSnapshot:v10];
    snapshotControl = v12->_snapshotControl;
    v12->_snapshotControl = v19;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [(_HMAccessoryProfile *)v12 services];
    v21 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v51;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v50 + 1) + 8 * i);
          v26 = [v25 serviceType];
          v27 = [v26 isEqualToString:@"00000111-0000-1000-8000-0026BB765291"];

          if (v27)
          {
            v28 = [_HMCameraSettingsControl alloc];
            v29 = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
            v30 = [(_HMCameraSettingsControl *)v28 initWithCameraProfile:v12 profileUniqueIdentifier:v29 service:v25];
            settingsControl = v12->_settingsControl;
            v12->_settingsControl = v30;
          }

          v32 = [v25 serviceType];
          v33 = [v32 isEqualToString:@"00000112-0000-1000-8000-0026BB765291"];

          if (v33)
          {
            v34 = [_HMCameraAudioControl alloc];
            v35 = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
            v36 = [(_HMCameraAudioControl *)v34 initWithCameraProfile:v12 profileUniqueIdentifier:v35 service:v25];
            microphoneControl = v12->_microphoneControl;
            v12->_microphoneControl = v36;
          }

          v38 = [v25 serviceType];
          v39 = [v38 isEqualToString:@"00000113-0000-1000-8000-0026BB765291"];

          if (v39)
          {
            v40 = [_HMCameraAudioControl alloc];
            v41 = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
            v42 = [(_HMCameraAudioControl *)v40 initWithCameraProfile:v12 profileUniqueIdentifier:v41 service:v25];
            speakerControl = v12->_speakerControl;
            v12->_speakerControl = v42;
          }
        }

        v22 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v22);
    }

    objc_storeStrong(&v12->_userSettings, v48);
    v11 = v46;
    v10 = v47;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v12;
}

@end