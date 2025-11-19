@interface _HMCameraUserSettings
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (_HMCameraUserSettings)initWithCoder:(id)a3;
- (_HMCameraUserSettings)initWithUUID:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HMCameraUserSettings

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v35 = [(_HMCameraUserSettings *)self supportedFeatures];
  v5 = NSPrintF();
  v6 = [v4 initWithName:@"Features" value:{v5, v35, &unk_19BE3782A}];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(_HMCameraUserSettings *)self isCameraManuallyDisabled];
  v8 = HMFBooleanToString();
  v9 = [v7 initWithName:@"Manually Disabled" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [(_HMCameraUserSettings *)self notificationSettings];
  v12 = [v10 initWithName:@"Notification Settings" value:v11];
  [v3 addObject:v12];

  if (([(_HMCameraUserSettings *)self supportedFeatures]& 2) != 0)
  {
    v13 = objc_alloc(MEMORY[0x1E69A29C8]);
    v14 = MEMORY[0x1E696AEC0];
    v15 = HMCameraAccessModeAsString([(_HMCameraUserSettings *)self currentAccessMode]);
    v16 = HMCameraAccessModeAsString([(_HMCameraUserSettings *)self accessModeAtHome]);
    v17 = HMCameraAccessModeAsString([(_HMCameraUserSettings *)self accessModeNotAtHome]);
    v18 = [v14 stringWithFormat:@"<Current: %@> <Home: %@> <Away: %@>", v15, v16, v17];
    v19 = [v13 initWithName:@"Access Modes" value:v18];
    [v3 addObject:v19];

    v20 = objc_alloc(MEMORY[0x1E69A29C8]);
    v36 = [(_HMCameraUserSettings *)self recordingEventTriggers];
    v21 = NSPrintF();
    v22 = [v20 initWithName:@"Recording Triggers" value:{v21, v36, &unk_19BE377F8}];
    [v3 addObject:v22];

    v23 = [(_HMCameraUserSettings *)self activityZones];
    v24 = [v23 count];

    if (v24)
    {
      v25 = objc_alloc(MEMORY[0x1E69A29C8]);
      v26 = [(_HMCameraUserSettings *)self activityZones];
      v27 = [v26 allObjects];
      v28 = [v27 componentsJoinedByString:{@", "}];
      v29 = [v25 initWithName:@"Activity Zones" value:v28];
      [v3 addObject:v29];

      v30 = objc_alloc(MEMORY[0x1E69A29C8]);
      [(_HMCameraUserSettings *)self areActivityZonesIncludedForSignificantEventDetection];
      v31 = HMFBooleanToString();
      v32 = [v30 initWithName:@"Activity Zones Included" value:v31];
      [v3 addObject:v32];
    }
  }

  v33 = [v3 copy];

  return v33;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(_HMCameraUserSettings *)self UUID];
  [v7 encodeObject:v4 forKey:@"hmcus.id"];

  [v7 encodeInteger:-[_HMCameraUserSettings supportedFeatures](self forKey:{"supportedFeatures"), @"hmcus.sf"}];
  [v7 encodeInteger:-[_HMCameraUserSettings accessModeAtHome](self forKey:{"accessModeAtHome"), @"hmcus.ah"}];
  [v7 encodeInteger:-[_HMCameraUserSettings accessModeNotAtHome](self forKey:{"accessModeNotAtHome"), @"hmcus.nah"}];
  [v7 encodeInteger:-[_HMCameraUserSettings currentAccessMode](self forKey:{"currentAccessMode"), @"hmcus.cam"}];
  [v7 encodeInteger:-[_HMCameraUserSettings recordingEventTriggers](self forKey:{"recordingEventTriggers"), @"hmcus.rtc"}];
  [v7 encodeBool:-[_HMCameraUserSettings isCameraManuallyDisabled](self forKey:{"isCameraManuallyDisabled"), @"hmcus.cmd"}];
  v5 = [(_HMCameraUserSettings *)self notificationSettings];
  [v7 encodeObject:v5 forKey:@"hmcus.ns"];

  v6 = [(_HMCameraUserSettings *)self activityZones];
  [v7 encodeObject:v6 forKey:@"hmcus.az"];

  [v7 encodeBool:-[_HMCameraUserSettings areActivityZonesIncludedForSignificantEventDetection](self forKey:{"areActivityZonesIncludedForSignificantEventDetection"), @"hmcus.azifsed"}];
}

- (_HMCameraUserSettings)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hmcus.id"];
  if (v5)
  {
    v6 = [(_HMCameraUserSettings *)self initWithUUID:v5];
    -[_HMCameraUserSettings setSupportedFeatures:](v6, "setSupportedFeatures:", [v4 decodeIntegerForKey:@"hmcus.sf"]);
    -[_HMCameraUserSettings setAccessModeAtHome:](v6, "setAccessModeAtHome:", [v4 decodeIntegerForKey:@"hmcus.ah"]);
    -[_HMCameraUserSettings setAccessModeNotAtHome:](v6, "setAccessModeNotAtHome:", [v4 decodeIntegerForKey:@"hmcus.nah"]);
    -[_HMCameraUserSettings setCurrentAccessMode:](v6, "setCurrentAccessMode:", [v4 decodeIntegerForKey:@"hmcus.cam"]);
    -[_HMCameraUserSettings setRecordingEventTriggers:](v6, "setRecordingEventTriggers:", [v4 decodeIntegerForKey:@"hmcus.rtc"]);
    -[_HMCameraUserSettings setCameraManuallyDisabled:](v6, "setCameraManuallyDisabled:", [v4 decodeBoolForKey:@"hmcus.cmd"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hmcus.ns"];
    [(_HMCameraUserSettings *)v6 setNotificationSettings:v7];

    v8 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v10 = [v8 setWithArray:{v9, v19[0]}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"hmcus.az"];
    [(_HMCameraUserSettings *)v6 setActivityZones:v11];

    -[_HMCameraUserSettings setActivityZonesIncludedForSignificantEventDetection:](v6, "setActivityZonesIncludedForSignificantEventDetection:", [v4 decodeBoolForKey:@"hmcus.azifsed"]);
    v12 = v6;
    v13 = v12;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v16;
      v22 = 2112;
      v23 = 0;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [_HMMutableCameraUserSettings alloc];
  v5 = [(_HMCameraUserSettings *)self UUID];
  v6 = [(_HMCameraUserSettings *)v4 initWithUUID:v5];

  [(_HMCameraUserSettings *)v6 setSupportedFeatures:[(_HMCameraUserSettings *)self supportedFeatures]];
  [(_HMCameraUserSettings *)v6 setAccessModeAtHome:[(_HMCameraUserSettings *)self accessModeAtHome]];
  [(_HMCameraUserSettings *)v6 setAccessModeNotAtHome:[(_HMCameraUserSettings *)self accessModeNotAtHome]];
  [(_HMCameraUserSettings *)v6 setCurrentAccessMode:[(_HMCameraUserSettings *)self currentAccessMode]];
  [(_HMCameraUserSettings *)v6 setRecordingEventTriggers:[(_HMCameraUserSettings *)self recordingEventTriggers]];
  [(_HMCameraUserSettings *)v6 setCameraManuallyDisabled:[(_HMCameraUserSettings *)self isCameraManuallyDisabled]];
  v7 = [(_HMCameraUserSettings *)self notificationSettings];
  [(_HMCameraUserSettings *)v6 setNotificationSettings:v7];

  v8 = [(_HMCameraUserSettings *)self activityZones];
  [(_HMCameraUserSettings *)v6 setActivityZones:v8];

  [(_HMCameraUserSettings *)v6 setActivityZonesIncludedForSignificantEventDetection:[(_HMCameraUserSettings *)self areActivityZonesIncludedForSignificantEventDetection]];
  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v2 = [(_HMCameraUserSettings *)self UUID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[_HMCameraUserSettings supportedFeatures](self, "supportedFeatures"), v7 == [v6 supportedFeatures]) && (v8 = -[_HMCameraUserSettings accessModeAtHome](self, "accessModeAtHome"), v8 == objc_msgSend(v6, "accessModeAtHome")) && (v9 = -[_HMCameraUserSettings accessModeNotAtHome](self, "accessModeNotAtHome"), v9 == objc_msgSend(v6, "accessModeNotAtHome")) && (v10 = -[_HMCameraUserSettings currentAccessMode](self, "currentAccessMode"), v10 == objc_msgSend(v6, "currentAccessMode")) && (v11 = -[_HMCameraUserSettings recordingEventTriggers](self, "recordingEventTriggers"), v11 == objc_msgSend(v6, "recordingEventTriggers")) && (v12 = -[_HMCameraUserSettings isCameraManuallyDisabled](self, "isCameraManuallyDisabled"), v12 == objc_msgSend(v6, "isCameraManuallyDisabled")))
  {
    v15 = [(_HMCameraUserSettings *)self notificationSettings];
    v16 = [v6 notificationSettings];
    if ([v15 isEqual:v16])
    {
      v17 = [(_HMCameraUserSettings *)self activityZones];
      v18 = [v6 activityZones];
      if ([v17 isEqualToSet:v18])
      {
        v19 = [(_HMCameraUserSettings *)self areActivityZonesIncludedForSignificantEventDetection];
        v13 = v19 ^ [v6 areActivityZonesIncludedForSignificantEventDetection] ^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (_HMCameraUserSettings)initWithUUID:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = _HMCameraUserSettings;
  v6 = [(_HMCameraUserSettings *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, a3);
    v7->_accessModeAtHome = 0;
    v7->_accessModeNotAtHome = 0;
    v7->_currentAccessMode = 0;
    v8 = objc_alloc_init(HMCameraUserNotificationSettings);
    notificationSettings = v7->_notificationSettings;
    v7->_notificationSettings = v8;

    v10 = [MEMORY[0x1E695DFD8] set];
    activityZones = v7->_activityZones;
    v7->_activityZones = v10;
  }

  return v7;
}

@end