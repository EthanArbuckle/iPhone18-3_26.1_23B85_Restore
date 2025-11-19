@interface BYExpressSetupCloudSource
- (BOOL)dataAvailable;
- (BYExpressSetupCloudSource)initWithSettings:(id)a3;
- (id)appAnalyticsOptIn;
- (id)deviceAnalyticsOptIn;
- (id)iPadMultitaskingMode;
- (id)locationServicesOptIn;
- (id)screenTimeEnabled;
- (id)siriOptIn;
- (id)siriVoiceTriggerEnabled;
- (id)softwareUpdateAutoDownloadEnabled;
- (id)softwareUpdateAutoUpdateEnabled;
- (id)sourceDeviceClass;
- (id)stolenDeviceProtectionEnabled;
- (id)stolenDeviceProtectionStrictModeEnabled;
- (id)walletMetadata;
- (int64_t)userInterfaceStyleModeValue;
@end

@implementation BYExpressSetupCloudSource

- (BYExpressSetupCloudSource)initWithSettings:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = BYExpressSetupCloudSource;
  v8 = [(BYExpressSetupCloudSource *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(v8 + 1, location[0]);
  }

  v4 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (BOOL)dataAvailable
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings:a2];
  v3 = v2 != 0;

  return v3;
}

- (id)sourceDeviceClass
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings:a2];
  v3 = [(SASExpressSettings *)v2 deviceClass];

  return v3;
}

- (id)locationServicesOptIn
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasLocationServicesOptIn];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 locationServicesOptIn]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)appAnalyticsOptIn
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasAppAnalyticsOptIn];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 appAnalyticsOptIn]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)deviceAnalyticsOptIn
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasDeviceAnalyticsOptIn];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 deviceAnalyticsOptIn]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)siriOptIn
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasSiriOptIn];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 siriOptIn]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)siriVoiceTriggerEnabled
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasSiriVoiceTriggerEnabled];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 siriVoiceTriggerEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)screenTimeEnabled
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasScreenTimeEnabled];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 screenTimeEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)softwareUpdateAutoUpdateEnabled
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasSoftwareUpdateAutoUpdateEnabled];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 softwareUpdateAutoUpdateEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)softwareUpdateAutoDownloadEnabled
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasSoftwareUpdateAutoDownloadEnabled];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 softwareUpdateAutoDownloadEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)userInterfaceStyleModeValue
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings:a2];
  v3 = [(SASExpressSettings *)v2 buddy_userInterfaceStyleModeValue];

  return v3;
}

- (id)walletMetadata
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasWalletData];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [(SASExpressSettings *)v4 walletData];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stolenDeviceProtectionEnabled
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasStolenDeviceProtectionEnabled];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 stolenDeviceProtectionEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stolenDeviceProtectionStrictModeEnabled
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings];
  v3 = [(SASExpressSettings *)v2 hasStolenDeviceProtectionStrictModeEnabled];

  if (v3)
  {
    v4 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)v4 stolenDeviceProtectionStrictModeEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iPadMultitaskingMode
{
  v2 = [(BYExpressSetupCloudSource *)self expressSettings:a2];
  v3 = [(SASExpressSettings *)v2 buddy_iPadMultitaskingMode];

  return v3;
}

@end