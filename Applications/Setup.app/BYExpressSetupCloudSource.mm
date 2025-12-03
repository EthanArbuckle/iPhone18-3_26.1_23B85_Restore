@interface BYExpressSetupCloudSource
- (BOOL)dataAvailable;
- (BYExpressSetupCloudSource)initWithSettings:(id)settings;
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

- (BYExpressSetupCloudSource)initWithSettings:(id)settings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, settings);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = BYExpressSetupCloudSource;
  selfCopy = [(BYExpressSetupCloudSource *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 1, location[0]);
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  deviceClass = [(SASExpressSettings *)v2 deviceClass];

  return deviceClass;
}

- (id)locationServicesOptIn
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasLocationServicesOptIn = [(SASExpressSettings *)expressSettings hasLocationServicesOptIn];

  if (hasLocationServicesOptIn)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 locationServicesOptIn]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)appAnalyticsOptIn
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasAppAnalyticsOptIn = [(SASExpressSettings *)expressSettings hasAppAnalyticsOptIn];

  if (hasAppAnalyticsOptIn)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 appAnalyticsOptIn]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)deviceAnalyticsOptIn
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasDeviceAnalyticsOptIn = [(SASExpressSettings *)expressSettings hasDeviceAnalyticsOptIn];

  if (hasDeviceAnalyticsOptIn)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 deviceAnalyticsOptIn]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)siriOptIn
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasSiriOptIn = [(SASExpressSettings *)expressSettings hasSiriOptIn];

  if (hasSiriOptIn)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 siriOptIn]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)siriVoiceTriggerEnabled
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasSiriVoiceTriggerEnabled = [(SASExpressSettings *)expressSettings hasSiriVoiceTriggerEnabled];

  if (hasSiriVoiceTriggerEnabled)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 siriVoiceTriggerEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)screenTimeEnabled
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasScreenTimeEnabled = [(SASExpressSettings *)expressSettings hasScreenTimeEnabled];

  if (hasScreenTimeEnabled)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 screenTimeEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)softwareUpdateAutoUpdateEnabled
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasSoftwareUpdateAutoUpdateEnabled = [(SASExpressSettings *)expressSettings hasSoftwareUpdateAutoUpdateEnabled];

  if (hasSoftwareUpdateAutoUpdateEnabled)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 softwareUpdateAutoUpdateEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)softwareUpdateAutoDownloadEnabled
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasSoftwareUpdateAutoDownloadEnabled = [(SASExpressSettings *)expressSettings hasSoftwareUpdateAutoDownloadEnabled];

  if (hasSoftwareUpdateAutoDownloadEnabled)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 softwareUpdateAutoDownloadEnabled]& 1];
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
  buddy_userInterfaceStyleModeValue = [(SASExpressSettings *)v2 buddy_userInterfaceStyleModeValue];

  return buddy_userInterfaceStyleModeValue;
}

- (id)walletMetadata
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasWalletData = [(SASExpressSettings *)expressSettings hasWalletData];

  if (hasWalletData)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    walletData = [(SASExpressSettings *)expressSettings2 walletData];
  }

  else
  {
    walletData = 0;
  }

  return walletData;
}

- (id)stolenDeviceProtectionEnabled
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasStolenDeviceProtectionEnabled = [(SASExpressSettings *)expressSettings hasStolenDeviceProtectionEnabled];

  if (hasStolenDeviceProtectionEnabled)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 stolenDeviceProtectionEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stolenDeviceProtectionStrictModeEnabled
{
  expressSettings = [(BYExpressSetupCloudSource *)self expressSettings];
  hasStolenDeviceProtectionStrictModeEnabled = [(SASExpressSettings *)expressSettings hasStolenDeviceProtectionStrictModeEnabled];

  if (hasStolenDeviceProtectionStrictModeEnabled)
  {
    expressSettings2 = [(BYExpressSetupCloudSource *)self expressSettings];
    v7 = [NSNumber numberWithBool:[(SASExpressSettings *)expressSettings2 stolenDeviceProtectionStrictModeEnabled]& 1];
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
  buddy_iPadMultitaskingMode = [(SASExpressSettings *)v2 buddy_iPadMultitaskingMode];

  return buddy_iPadMultitaskingMode;
}

@end