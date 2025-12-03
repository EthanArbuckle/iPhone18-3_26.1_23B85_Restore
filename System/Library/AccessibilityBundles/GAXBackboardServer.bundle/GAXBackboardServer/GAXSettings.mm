@interface GAXSettings
+ (id)sharedInstance;
- (BOOL)isActiveAppSelfLocked;
- (BOOL)selfLockUnmanaged;
- (BOOL)systemDidRestartDueToLowBattery;
- (BOOL)timeRestrictionHasExpired;
- (GAXSettings)init;
- (NSArray)savedAccessibilityTripleClickOptions;
- (NSArray)userConfiguredAppIDs;
- (NSDate)lastActivationDate;
- (NSDate)lastPasscodeSetDate;
- (NSDictionary)savedAccessibilityFeatures;
- (NSDictionary)userAppProfile;
- (NSDictionary)userGlobalProfile;
- (NSNumber)ECID;
- (NSString)activeAppID;
- (NSString)productBuildVersion;
- (NSString)savedASAMAppIdForLostMode;
- (id)description;
- (id)mutableUserAppProfile;
- (id)mutableUserGlobalProfile;
- (int)activeAppOrientation;
- (void)setActiveAppID:(id)d;
- (void)setECID:(id)d;
- (void)setLastActivationDate:(id)date;
- (void)setLastPasscodeSetDate:(id)date;
- (void)setProductBuildVersion:(id)version;
- (void)setSavedASAMAppIdForLostMode:(id)mode;
- (void)setSavedAccessibilityFeatures:(id)features;
- (void)setSavedAccessibilityTripleClickOptions:(id)options;
- (void)setUserAppProfile:(id)profile;
- (void)setUserConfiguredAppIDs:(id)ds;
- (void)setUserGlobalProfile:(id)profile;
@end

@implementation GAXSettings

+ (id)sharedInstance
{
  if (qword_595E8 != -1)
  {
    sub_2A878();
  }

  v3 = qword_595E0;

  return v3;
}

- (GAXSettings)init
{
  v5.receiver = self;
  v5.super_class = GAXSettings;
  v2 = [(GAXSettings *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_GAXSettingsFastStorage);
    [(GAXSettings *)v2 setFastStorage:v3];
  }

  return v2;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"GAXSettings:<%p>.\n", self];
  activeAppID = [(GAXSettings *)self activeAppID];
  v5 = [NSNumber numberWithInt:[(GAXSettings *)self activeAppOrientation]];
  v6 = [NSNumber numberWithBool:[(GAXSettings *)self isActiveAppSelfLocked]];
  v7 = [NSNumber numberWithBool:[(GAXSettings *)self systemDidRestartDueToLowBattery]];
  [v3 appendFormat:@"\tActive App ID: %@. Orientation:%@. Self-Locked:%@ Low-battery-restart:%@\n", activeAppID, v5, v6, v7];

  eCID = [(GAXSettings *)self ECID];
  productBuildVersion = [(GAXSettings *)self productBuildVersion];
  lastActivationDate = [(GAXSettings *)self lastActivationDate];
  lastPasscodeSetDate = [(GAXSettings *)self lastPasscodeSetDate];
  [v3 appendFormat:@"\x1BCID:%@ version:%@ activationDate:%@ passcodeSetDate:%@\n", eCID, productBuildVersion, lastActivationDate, lastPasscodeSetDate];

  v12 = [NSNumber numberWithBool:[(GAXSettings *)self timeRestrictionHasExpired]];
  [v3 appendFormat:@"\tTime Restriction expired:%@\n", v12];

  userAppProfile = [(GAXSettings *)self userAppProfile];
  v14 = [NSNumber numberWithInt:userAppProfile != 0];
  userGlobalProfile = [(GAXSettings *)self userGlobalProfile];
  v16 = [NSNumber numberWithInt:userGlobalProfile != 0];
  [v3 appendFormat:@"\tHas User App Profile:%@. Has User Global Profile:%@\n", v14, v16];

  v17 = +[NSMutableString string];
  userConfiguredAppIDs = [(GAXSettings *)self userConfiguredAppIDs];
  if ([userConfiguredAppIDs count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    userConfiguredAppIDs2 = [(GAXSettings *)self userConfiguredAppIDs];
    v20 = [userConfiguredAppIDs2 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v43;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(userConfiguredAppIDs2);
          }

          [v17 appendFormat:@"%@, ", *(*(&v42 + 1) + 8 * i)];
        }

        v21 = [userConfiguredAppIDs2 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v21);
    }
  }

  else
  {
    [v17 appendString:@"None"];
  }

  [v3 appendFormat:@"\tUser Configured Apps: %@\n", v17];
  savedAccessibilityFeatures = [(GAXSettings *)self savedAccessibilityFeatures];
  v25 = +[NSMutableString string];
  if ([savedAccessibilityFeatures count])
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_B1DC;
    v40[3] = &unk_4D2D0;
    v41 = v25;
    [savedAccessibilityFeatures enumerateKeysAndObjectsUsingBlock:v40];
  }

  else
  {
    [v25 appendString:@"None"];
  }

  [v3 appendFormat:@"\tSaved AX Features:%@\n", v25];
  v26 = +[NSMutableString string];
  savedAccessibilityTripleClickOptions = [(GAXSettings *)self savedAccessibilityTripleClickOptions];
  if ([savedAccessibilityTripleClickOptions count])
  {
    v34 = savedAccessibilityFeatures;
    v35 = userConfiguredAppIDs;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = savedAccessibilityTripleClickOptions;
    v29 = [v28 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v37;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [v26 appendFormat:@"%@, ", *(*(&v36 + 1) + 8 * j)];
        }

        v30 = [v28 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v30);
    }

    savedAccessibilityFeatures = v34;
    userConfiguredAppIDs = v35;
  }

  else
  {
    [v26 appendString:@"None"];
  }

  [v3 appendFormat:@"\tSaved Triple-Click Options: %@\n", v26];

  return v3;
}

- (NSArray)userConfiguredAppIDs
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsUserConfiguredAppIDs = [v2 gaxInternalSettingsUserConfiguredAppIDs];

  return gaxInternalSettingsUserConfiguredAppIDs;
}

- (void)setUserConfiguredAppIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsUserConfiguredAppIDs:dsCopy];
}

- (NSDictionary)savedAccessibilityFeatures
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsSavedAccessibilityFeatures = [v2 gaxInternalSettingsSavedAccessibilityFeatures];

  return gaxInternalSettingsSavedAccessibilityFeatures;
}

- (void)setSavedAccessibilityFeatures:(id)features
{
  featuresCopy = features;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsSavedAccessibilityFeatures:featuresCopy];
}

- (NSArray)savedAccessibilityTripleClickOptions
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsSavedAccessibilityTripleClickOptions = [v2 gaxInternalSettingsSavedAccessibilityTripleClickOptions];

  return gaxInternalSettingsSavedAccessibilityTripleClickOptions;
}

- (void)setSavedAccessibilityTripleClickOptions:(id)options
{
  optionsCopy = options;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsSavedAccessibilityTripleClickOptions:optionsCopy];
}

- (int)activeAppOrientation
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsActiveAppOrientation = [v2 gaxInternalSettingsActiveAppOrientation];
  unsignedIntegerValue = [gaxInternalSettingsActiveAppOrientation unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSString)activeAppID
{
  fastStorage = [(GAXSettings *)self fastStorage];
  activeAppID = [fastStorage activeAppID];

  return activeAppID;
}

- (void)setActiveAppID:(id)d
{
  dCopy = d;
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2A88C(self, dCopy, v5);
  }

  fastStorage = [(GAXSettings *)self fastStorage];
  [fastStorage setActiveAppID:dCopy];
}

- (NSString)savedASAMAppIdForLostMode
{
  fastStorage = [(GAXSettings *)self fastStorage];
  savedASAMAppIdForLostMode = [fastStorage savedASAMAppIdForLostMode];

  return savedASAMAppIdForLostMode;
}

- (void)setSavedASAMAppIdForLostMode:(id)mode
{
  modeCopy = mode;
  fastStorage = [(GAXSettings *)self fastStorage];
  [fastStorage setSavedASAMAppIdForLostMode:modeCopy];
}

- (BOOL)timeRestrictionHasExpired
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsTimeRestrictionHasExpired = [v2 gaxInternalSettingsTimeRestrictionHasExpired];

  return gaxInternalSettingsTimeRestrictionHasExpired;
}

- (BOOL)isActiveAppSelfLocked
{
  fastStorage = [(GAXSettings *)self fastStorage];
  isActiveAppSelfLocked = [fastStorage isActiveAppSelfLocked];

  return isActiveAppSelfLocked;
}

- (BOOL)selfLockUnmanaged
{
  fastStorage = [(GAXSettings *)self fastStorage];
  selfLockUnmanaged = [fastStorage selfLockUnmanaged];

  return selfLockUnmanaged;
}

- (BOOL)systemDidRestartDueToLowBattery
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsSystemDidRestartDueToLowBattery = [v2 gaxInternalSettingsSystemDidRestartDueToLowBattery];

  return gaxInternalSettingsSystemDidRestartDueToLowBattery;
}

- (NSNumber)ECID
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsECID = [v2 gaxInternalSettingsECID];

  return gaxInternalSettingsECID;
}

- (void)setECID:(id)d
{
  dCopy = d;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsECID:dCopy];
}

- (NSString)productBuildVersion
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsProductBuildVersion = [v2 gaxInternalSettingsProductBuildVersion];

  return gaxInternalSettingsProductBuildVersion;
}

- (void)setProductBuildVersion:(id)version
{
  versionCopy = version;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsProductBuildVersion:versionCopy];
}

- (NSDate)lastActivationDate
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsLastActivationDate = [v2 gaxInternalSettingsLastActivationDate];

  return gaxInternalSettingsLastActivationDate;
}

- (void)setLastActivationDate:(id)date
{
  dateCopy = date;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsLastActivationDate:dateCopy];
}

- (NSDate)lastPasscodeSetDate
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsLastPasscodeSetDate = [v2 gaxInternalSettingsLastPasscodeSetDate];

  return gaxInternalSettingsLastPasscodeSetDate;
}

- (void)setLastPasscodeSetDate:(id)date
{
  dateCopy = date;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsLastPasscodeSetDate:dateCopy];
}

- (NSDictionary)userAppProfile
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsUserAppProfile = [v2 gaxInternalSettingsUserAppProfile];

  return gaxInternalSettingsUserAppProfile;
}

- (void)setUserAppProfile:(id)profile
{
  profileCopy = profile;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsUserAppProfile:profileCopy];
}

- (NSDictionary)userGlobalProfile
{
  v2 = +[AXSettings sharedInstance];
  gaxInternalSettingsUserGlobalProfile = [v2 gaxInternalSettingsUserGlobalProfile];

  return gaxInternalSettingsUserGlobalProfile;
}

- (void)setUserGlobalProfile:(id)profile
{
  profileCopy = profile;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsUserAppProfile:profileCopy];
}

- (id)mutableUserAppProfile
{
  v3 = +[NSMutableDictionary dictionary];
  userAppProfile = [(GAXSettings *)self userAppProfile];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_BDC8;
  v7[3] = &unk_4D2F8;
  v5 = v3;
  v8 = v5;
  [userAppProfile enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (id)mutableUserGlobalProfile
{
  userGlobalProfile = [(GAXSettings *)self userGlobalProfile];
  v3 = [userGlobalProfile mutableCopy];

  if (!v3)
  {
    v3 = +[NSMutableDictionary dictionary];
  }

  return v3;
}

@end