@interface _HMCameraProfile
- (NSArray)controls;
- (_HMCameraProfile)initWithCoder:(id)coder;
- (_HMCameraProfile)initWithUUID:(id)d services:(id)services mostRecentSnapshot:(id)snapshot userSettings:(id)settings;
- (void)__configureWithContext:(id)context accessory:(id)accessory;
- (void)addUserSettings:(id)settings;
@end

@implementation _HMCameraProfile

- (_HMCameraProfile)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [[_HMAccessoryProfile alloc] initWithCoder:coderCopy];
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HMCP.ck.mostRecentSnapshot"];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCP.ck.userSettings"];
    if (v10)
    {
      v11 = [[HMCameraUserSettings alloc] initWithCameraUserSettings:v10];
    }

    else
    {
      v11 = 0;
    }

    profileUniqueIdentifier = [(_HMAccessoryProfile *)v5 profileUniqueIdentifier];
    services = [(_HMAccessoryProfile *)v5 services];
    self = [(_HMCameraProfile *)self initWithUUID:profileUniqueIdentifier services:services mostRecentSnapshot:v9 userSettings:v11];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)addUserSettings:(id)settings
{
  settingsCopy = settings;
  [(_HMCameraProfile *)self setUserSettings:settingsCopy];
  accessory = [(_HMAccessoryProfile *)self accessory];
  context = [(_HMAccessoryProfile *)self context];
  [settingsCopy configureWithAccessory:accessory context:context];
}

- (void)__configureWithContext:(id)context accessory:(id)accessory
{
  v47 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  accessoryCopy = accessory;
  v41.receiver = self;
  v41.super_class = _HMCameraProfile;
  [(_HMAccessoryProfile *)&v41 __configureWithContext:contextCopy accessory:accessoryCopy];
  home = [accessoryCopy home];
  if (!home)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = HMFGetLogIdentifier();
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138543618;
      v44 = v12;
      v45 = 2112;
      v46 = callStackSymbols;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_FAULT, "%{public}@Home was nil while configuring _HMCameraProfile. Call stack: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  controls = [(_HMCameraProfile *)self controls];
  v15 = [controls countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(controls);
        }

        [*(*(&v37 + 1) + 8 * i) __configureWithContext:contextCopy];
      }

      v16 = [controls countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v16);
  }

  userSettings = [(_HMCameraProfile *)self userSettings];
  [userSettings configureWithAccessory:accessoryCopy context:contextCopy];

  services = [accessoryCopy services];
  v21 = [services hmf_objectPassingTest:&__block_literal_global_27866];

  if (v21)
  {
    uuid = [v21 uuid];
    v23 = [HMCameraClipManager zoneNameForRecordingManagementServiceUUID:uuid];

    v24 = [HMCameraClipManager alloc];
    profileUniqueIdentifier = [(_HMAccessoryProfile *)self profileUniqueIdentifier];
    v26 = [(HMCameraClipManager *)v24 initWithContext:contextCopy profileUniqueIdentifier:profileUniqueIdentifier zoneName:v23 home:home];
    [(_HMCameraProfile *)self setClipManager:v26];

    clipManager = [(_HMCameraProfile *)self clipManager];
    [clipManager configure];

    v28 = [HMCameraRecordingReachabilityEventManager alloc];
    uuid2 = [accessoryCopy uuid];
    v30 = [(HMCameraRecordingReachabilityEventManager *)v28 initWithContext:contextCopy uniqueIdentifier:uuid2];
    [(_HMCameraProfile *)self setReachabilityEventManager:v30];

    reachabilityEventManager = [(_HMCameraProfile *)self reachabilityEventManager];
    [reachabilityEventManager configure];

    v32 = [HMCameraRecordingEventManager alloc];
    clipManager2 = [(_HMCameraProfile *)self clipManager];
    reachabilityEventManager2 = [(_HMCameraProfile *)self reachabilityEventManager];
    v35 = [(HMCameraRecordingEventManager *)v32 initWithContext:contextCopy clipManager:clipManager2 reachabilityEventManager:reachabilityEventManager2 home:home];
    [(_HMCameraProfile *)self setRecordingEventManager:v35];
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (NSArray)controls
{
  array = [MEMORY[0x1E695DF70] array];
  streamControl = [(_HMCameraProfile *)self streamControl];
  [array addObject:streamControl];

  snapshotControl = [(_HMCameraProfile *)self snapshotControl];
  [array addObject:snapshotControl];

  settingsControl = [(_HMCameraProfile *)self settingsControl];

  if (settingsControl)
  {
    settingsControl2 = [(_HMCameraProfile *)self settingsControl];
    [array addObject:settingsControl2];
  }

  microphoneControl = [(_HMCameraProfile *)self microphoneControl];

  if (microphoneControl)
  {
    microphoneControl2 = [(_HMCameraProfile *)self microphoneControl];
    [array addObject:microphoneControl2];
  }

  speakerControl = [(_HMCameraProfile *)self speakerControl];

  if (speakerControl)
  {
    speakerControl2 = [(_HMCameraProfile *)self speakerControl];
    [array addObject:speakerControl2];
  }

  v12 = [array copy];

  return v12;
}

- (_HMCameraProfile)initWithUUID:(id)d services:(id)services mostRecentSnapshot:(id)snapshot userSettings:(id)settings
{
  v56 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  settingsCopy = settings;
  v54.receiver = self;
  v54.super_class = _HMCameraProfile;
  v12 = [(_HMAccessoryProfile *)&v54 initWithUUID:d services:services];
  if (v12)
  {
    v46 = settingsCopy;
    settingsCopy2 = settings;
    v13 = [_HMCameraStreamControl alloc];
    profileUniqueIdentifier = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
    v15 = [(_HMCameraStreamControl *)v13 initWithCameraProfile:v12 profileUniqueIdentifier:profileUniqueIdentifier];
    streamControl = v12->_streamControl;
    v12->_streamControl = v15;

    v17 = [_HMCameraSnapshotControl alloc];
    profileUniqueIdentifier2 = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
    v47 = snapshotCopy;
    v19 = [(_HMCameraSnapshotControl *)v17 initWithCameraProfile:v12 profileUniqueIdentifier:profileUniqueIdentifier2 mostRecentSnapshot:snapshotCopy];
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
          serviceType = [v25 serviceType];
          v27 = [serviceType isEqualToString:@"00000111-0000-1000-8000-0026BB765291"];

          if (v27)
          {
            v28 = [_HMCameraSettingsControl alloc];
            profileUniqueIdentifier3 = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
            v30 = [(_HMCameraSettingsControl *)v28 initWithCameraProfile:v12 profileUniqueIdentifier:profileUniqueIdentifier3 service:v25];
            settingsControl = v12->_settingsControl;
            v12->_settingsControl = v30;
          }

          serviceType2 = [v25 serviceType];
          v33 = [serviceType2 isEqualToString:@"00000112-0000-1000-8000-0026BB765291"];

          if (v33)
          {
            v34 = [_HMCameraAudioControl alloc];
            profileUniqueIdentifier4 = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
            v36 = [(_HMCameraAudioControl *)v34 initWithCameraProfile:v12 profileUniqueIdentifier:profileUniqueIdentifier4 service:v25];
            microphoneControl = v12->_microphoneControl;
            v12->_microphoneControl = v36;
          }

          serviceType3 = [v25 serviceType];
          v39 = [serviceType3 isEqualToString:@"00000113-0000-1000-8000-0026BB765291"];

          if (v39)
          {
            v40 = [_HMCameraAudioControl alloc];
            profileUniqueIdentifier5 = [(_HMAccessoryProfile *)v12 profileUniqueIdentifier];
            v42 = [(_HMCameraAudioControl *)v40 initWithCameraProfile:v12 profileUniqueIdentifier:profileUniqueIdentifier5 service:v25];
            speakerControl = v12->_speakerControl;
            v12->_speakerControl = v42;
          }
        }

        v22 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v22);
    }

    objc_storeStrong(&v12->_userSettings, settingsCopy2);
    settingsCopy = v46;
    snapshotCopy = v47;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v12;
}

@end