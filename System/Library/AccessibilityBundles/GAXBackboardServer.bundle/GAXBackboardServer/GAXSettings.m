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
- (void)setActiveAppID:(id)a3;
- (void)setECID:(id)a3;
- (void)setLastActivationDate:(id)a3;
- (void)setLastPasscodeSetDate:(id)a3;
- (void)setProductBuildVersion:(id)a3;
- (void)setSavedASAMAppIdForLostMode:(id)a3;
- (void)setSavedAccessibilityFeatures:(id)a3;
- (void)setSavedAccessibilityTripleClickOptions:(id)a3;
- (void)setUserAppProfile:(id)a3;
- (void)setUserConfiguredAppIDs:(id)a3;
- (void)setUserGlobalProfile:(id)a3;
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
  v4 = [(GAXSettings *)self activeAppID];
  v5 = [NSNumber numberWithInt:[(GAXSettings *)self activeAppOrientation]];
  v6 = [NSNumber numberWithBool:[(GAXSettings *)self isActiveAppSelfLocked]];
  v7 = [NSNumber numberWithBool:[(GAXSettings *)self systemDidRestartDueToLowBattery]];
  [v3 appendFormat:@"\tActive App ID: %@. Orientation:%@. Self-Locked:%@ Low-battery-restart:%@\n", v4, v5, v6, v7];

  v8 = [(GAXSettings *)self ECID];
  v9 = [(GAXSettings *)self productBuildVersion];
  v10 = [(GAXSettings *)self lastActivationDate];
  v11 = [(GAXSettings *)self lastPasscodeSetDate];
  [v3 appendFormat:@"\x1BCID:%@ version:%@ activationDate:%@ passcodeSetDate:%@\n", v8, v9, v10, v11];

  v12 = [NSNumber numberWithBool:[(GAXSettings *)self timeRestrictionHasExpired]];
  [v3 appendFormat:@"\tTime Restriction expired:%@\n", v12];

  v13 = [(GAXSettings *)self userAppProfile];
  v14 = [NSNumber numberWithInt:v13 != 0];
  v15 = [(GAXSettings *)self userGlobalProfile];
  v16 = [NSNumber numberWithInt:v15 != 0];
  [v3 appendFormat:@"\tHas User App Profile:%@. Has User Global Profile:%@\n", v14, v16];

  v17 = +[NSMutableString string];
  v18 = [(GAXSettings *)self userConfiguredAppIDs];
  if ([v18 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = [(GAXSettings *)self userConfiguredAppIDs];
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(v19);
          }

          [v17 appendFormat:@"%@, ", *(*(&v42 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v21);
    }
  }

  else
  {
    [v17 appendString:@"None"];
  }

  [v3 appendFormat:@"\tUser Configured Apps: %@\n", v17];
  v24 = [(GAXSettings *)self savedAccessibilityFeatures];
  v25 = +[NSMutableString string];
  if ([v24 count])
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_B1DC;
    v40[3] = &unk_4D2D0;
    v41 = v25;
    [v24 enumerateKeysAndObjectsUsingBlock:v40];
  }

  else
  {
    [v25 appendString:@"None"];
  }

  [v3 appendFormat:@"\tSaved AX Features:%@\n", v25];
  v26 = +[NSMutableString string];
  v27 = [(GAXSettings *)self savedAccessibilityTripleClickOptions];
  if ([v27 count])
  {
    v34 = v24;
    v35 = v18;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v27;
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

    v24 = v34;
    v18 = v35;
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
  v3 = [v2 gaxInternalSettingsUserConfiguredAppIDs];

  return v3;
}

- (void)setUserConfiguredAppIDs:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsUserConfiguredAppIDs:v3];
}

- (NSDictionary)savedAccessibilityFeatures
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsSavedAccessibilityFeatures];

  return v3;
}

- (void)setSavedAccessibilityFeatures:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsSavedAccessibilityFeatures:v3];
}

- (NSArray)savedAccessibilityTripleClickOptions
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsSavedAccessibilityTripleClickOptions];

  return v3;
}

- (void)setSavedAccessibilityTripleClickOptions:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsSavedAccessibilityTripleClickOptions:v3];
}

- (int)activeAppOrientation
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsActiveAppOrientation];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (NSString)activeAppID
{
  v2 = [(GAXSettings *)self fastStorage];
  v3 = [v2 activeAppID];

  return v3;
}

- (void)setActiveAppID:(id)a3
{
  v4 = a3;
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2A88C(self, v4, v5);
  }

  v6 = [(GAXSettings *)self fastStorage];
  [v6 setActiveAppID:v4];
}

- (NSString)savedASAMAppIdForLostMode
{
  v2 = [(GAXSettings *)self fastStorage];
  v3 = [v2 savedASAMAppIdForLostMode];

  return v3;
}

- (void)setSavedASAMAppIdForLostMode:(id)a3
{
  v4 = a3;
  v5 = [(GAXSettings *)self fastStorage];
  [v5 setSavedASAMAppIdForLostMode:v4];
}

- (BOOL)timeRestrictionHasExpired
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsTimeRestrictionHasExpired];

  return v3;
}

- (BOOL)isActiveAppSelfLocked
{
  v2 = [(GAXSettings *)self fastStorage];
  v3 = [v2 isActiveAppSelfLocked];

  return v3;
}

- (BOOL)selfLockUnmanaged
{
  v2 = [(GAXSettings *)self fastStorage];
  v3 = [v2 selfLockUnmanaged];

  return v3;
}

- (BOOL)systemDidRestartDueToLowBattery
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsSystemDidRestartDueToLowBattery];

  return v3;
}

- (NSNumber)ECID
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsECID];

  return v3;
}

- (void)setECID:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsECID:v3];
}

- (NSString)productBuildVersion
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsProductBuildVersion];

  return v3;
}

- (void)setProductBuildVersion:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsProductBuildVersion:v3];
}

- (NSDate)lastActivationDate
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsLastActivationDate];

  return v3;
}

- (void)setLastActivationDate:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsLastActivationDate:v3];
}

- (NSDate)lastPasscodeSetDate
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsLastPasscodeSetDate];

  return v3;
}

- (void)setLastPasscodeSetDate:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsLastPasscodeSetDate:v3];
}

- (NSDictionary)userAppProfile
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsUserAppProfile];

  return v3;
}

- (void)setUserAppProfile:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsUserAppProfile:v3];
}

- (NSDictionary)userGlobalProfile
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 gaxInternalSettingsUserGlobalProfile];

  return v3;
}

- (void)setUserGlobalProfile:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setGaxInternalSettingsUserAppProfile:v3];
}

- (id)mutableUserAppProfile
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(GAXSettings *)self userAppProfile];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_BDC8;
  v7[3] = &unk_4D2F8;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (id)mutableUserGlobalProfile
{
  v2 = [(GAXSettings *)self userGlobalProfile];
  v3 = [v2 mutableCopy];

  if (!v3)
  {
    v3 = +[NSMutableDictionary dictionary];
  }

  return v3;
}

@end