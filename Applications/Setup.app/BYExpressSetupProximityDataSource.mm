@interface BYExpressSetupProximityDataSource
- (BOOL)dataAvailable;
- (BYExpressSetupProximityDataSource)initWithInformation:(id)information;
- (id)actionButtonData;
- (id)appAnalyticsOptIn;
- (id)deviceAnalyticsOptIn;
- (id)iPadMultitaskingMode;
- (id)locationServicesOptIn;
- (id)locationServicesSettings;
- (id)screenTimeEnabled;
- (id)siriDataSharingOptIn;
- (id)siriOptIn;
- (id)siriVoiceProfileAvailabilityMetadata;
- (id)siriVoiceTriggerEnabled;
- (id)softwareUpdateAutoDownloadEnabled;
- (id)softwareUpdateAutoUpdateEnabled;
- (id)sourceDeviceClass;
- (id)stolenDeviceProtectionEnabled;
- (id)stolenDeviceProtectionStrictModeEnabled;
- (id)walletMetadata;
- (id)watchMigrationData;
- (int64_t)userInterfaceStyleModeValue;
@end

@implementation BYExpressSetupProximityDataSource

- (BYExpressSetupProximityDataSource)initWithInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = BYExpressSetupProximityDataSource;
  selfCopy = [(BYExpressSetupProximityDataSource *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 1, location[0]);
    backupMetadata = [location[0] backupMetadata];
    v5 = BYMetadataFromDataArchive();
    v6 = *(selfCopy + 2);
    *(selfCopy + 2) = v5;
  }

  v7 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (BOOL)dataAvailable
{
  v2 = [(BYExpressSetupProximityDataSource *)self information:a2];
  v3 = v2 != 0;

  return v3;
}

- (id)sourceDeviceClass
{
  v2 = [(BYExpressSetupProximityDataSource *)self information:a2];
  deviceClass = [(SASProximityInformation *)v2 deviceClass];

  return deviceClass;
}

- (id)locationServicesOptIn
{
  v2 = [(BYExpressSetupProximityDataSource *)self information:a2];
  v3 = [NSNumber numberWithBool:[(SASProximityInformation *)v2 locationServicesOptIn]];

  return v3;
}

- (id)locationServicesSettings
{
  v2 = [(BYExpressSetupProximityDataSource *)self information:a2];
  locationServicesData = [(SASProximityInformation *)v2 locationServicesData];

  return locationServicesData;
}

- (id)appAnalyticsOptIn
{
  v2 = [(BYExpressSetupProximityDataSource *)self information:a2];
  appAnalyticsOptIn = [(SASProximityInformation *)v2 appAnalyticsOptIn];

  return appAnalyticsOptIn;
}

- (id)deviceAnalyticsOptIn
{
  v2 = [(BYExpressSetupProximityDataSource *)self information:a2];
  deviceAnalyticsOptIn = [(SASProximityInformation *)v2 deviceAnalyticsOptIn];

  return deviceAnalyticsOptIn;
}

- (id)siriOptIn
{
  v2 = [(BYExpressSetupProximityDataSource *)self information:a2];
  siriOptIn = [(SASProximityInformation *)v2 siriOptIn];

  return siriOptIn;
}

- (id)siriVoiceProfileAvailabilityMetadata
{
  v2 = [(BYExpressSetupProximityDataSource *)self information:a2];
  siriVoiceProfileAvailabilityMetadata = [(SASProximityInformation *)v2 siriVoiceProfileAvailabilityMetadata];

  return siriVoiceProfileAvailabilityMetadata;
}

- (id)siriDataSharingOptIn
{
  selfCopy = self;
  location[1] = a2;
  backupMetadata = [(BYExpressSetupProximityDataSource *)self backupMetadata];
  location[0] = [(BYBackupMetadata *)backupMetadata expressSettings];

  if (location[0] && ([location[0] hasSiriDataSharingOptIn] & 1) != 0)
  {
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [location[0] siriDataSharingOptIn] & 1);
  }

  else
  {
    backupMetadata2 = [(BYExpressSetupProximityDataSource *)selfCopy backupMetadata];
    hasSiriDataSharingOptIn = [(BYBackupMetadata *)backupMetadata2 hasSiriDataSharingOptIn];

    if (hasSiriDataSharingOptIn)
    {
      backupMetadata3 = [(BYExpressSetupProximityDataSource *)selfCopy backupMetadata];
      v10 = [NSNumber numberWithBool:[(BYBackupMetadata *)backupMetadata3 siriDataSharingOptIn]& 1];
    }

    else
    {
      v10 = 0;
    }
  }

  objc_storeStrong(location, 0);
  v6 = v10;

  return v6;
}

- (id)siriVoiceTriggerEnabled
{
  location[2] = self;
  location[1] = a2;
  backupMetadata = [(BYExpressSetupProximityDataSource *)self backupMetadata];
  location[0] = [(BYBackupMetadata *)backupMetadata expressSettings];

  if ([location[0] hasSiriVoiceTriggerEnabled])
  {
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [location[0] siriVoiceTriggerEnabled] & 1);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

- (id)screenTimeEnabled
{
  selfCopy = self;
  location[1] = a2;
  backupMetadata = [(BYExpressSetupProximityDataSource *)self backupMetadata];
  location[0] = [(BYBackupMetadata *)backupMetadata expressSettings];

  if (location[0] && ([location[0] hasScreenTimeEnabled] & 1) != 0)
  {
    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [location[0] screenTimeEnabled] & 1);
  }

  else if (([(BYBackupMetadata *)selfCopy->_backupMetadata hasScreenTimeEnabled]& 1) != 0)
  {
    v7 = [NSNumber numberWithBool:[(BYBackupMetadata *)selfCopy->_backupMetadata screenTimeEnabled]& 1];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (id)softwareUpdateAutoUpdateEnabled
{
  selfCopy = self;
  location[1] = a2;
  backupMetadata = [(BYExpressSetupProximityDataSource *)self backupMetadata];
  location[0] = [(BYBackupMetadata *)backupMetadata expressSettings];

  if ([location[0] hasSoftwareUpdateAutoUpdateEnabled])
  {
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [location[0] softwareUpdateAutoUpdateEnabled] & 1);
  }

  else
  {
    backupMetadata2 = [(BYExpressSetupProximityDataSource *)selfCopy backupMetadata];
    hasAutoUpdateEnabled = [(BYBackupMetadata *)backupMetadata2 hasAutoUpdateEnabled];

    if (hasAutoUpdateEnabled)
    {
      backupMetadata3 = [(BYExpressSetupProximityDataSource *)selfCopy backupMetadata];
      v10 = [NSNumber numberWithBool:[(BYBackupMetadata *)backupMetadata3 autoUpdateEnabled]& 1];
    }

    else
    {
      v10 = 0;
    }
  }

  objc_storeStrong(location, 0);
  v6 = v10;

  return v6;
}

- (id)softwareUpdateAutoDownloadEnabled
{
  selfCopy = self;
  location[1] = a2;
  backupMetadata = [(BYExpressSetupProximityDataSource *)self backupMetadata];
  location[0] = [(BYBackupMetadata *)backupMetadata expressSettings];

  if ([location[0] hasSoftwareUpdateAutoDownloadEnabled])
  {
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [location[0] softwareUpdateAutoDownloadEnabled] & 1);
  }

  else
  {
    backupMetadata2 = [(BYExpressSetupProximityDataSource *)selfCopy backupMetadata];
    hasAutoDownloadEnabled = [(BYBackupMetadata *)backupMetadata2 hasAutoDownloadEnabled];

    if (hasAutoDownloadEnabled)
    {
      backupMetadata3 = [(BYExpressSetupProximityDataSource *)selfCopy backupMetadata];
      v10 = [NSNumber numberWithBool:[(BYBackupMetadata *)backupMetadata3 autoDownloadEnabled]& 1];
    }

    else
    {
      v10 = 0;
    }
  }

  objc_storeStrong(location, 0);
  v6 = v10;

  return v6;
}

- (int64_t)userInterfaceStyleModeValue
{
  selfCopy = self;
  location[1] = a2;
  backupMetadata = [(BYExpressSetupProximityDataSource *)self backupMetadata];
  location[0] = [(BYBackupMetadata *)backupMetadata expressSettings];

  if (location[0] && ([location[0] hasAppearanceMode] & 1) != 0)
  {
    buddy_userInterfaceStyleModeValue = [location[0] buddy_userInterfaceStyleModeValue];
  }

  else
  {
    backupMetadata2 = [(BYExpressSetupProximityDataSource *)selfCopy backupMetadata];
    hasUserInterfaceStyleMode = [(BYBackupMetadata *)backupMetadata2 hasUserInterfaceStyleMode];

    if (hasUserInterfaceStyleMode)
    {
      backupMetadata3 = [(BYExpressSetupProximityDataSource *)selfCopy backupMetadata];
      buddy_userInterfaceStyleModeValue = [(BYBackupMetadata *)backupMetadata3 userInterfaceStyleMode];
    }

    else
    {
      buddy_userInterfaceStyleModeValue = 0;
    }
  }

  objc_storeStrong(location, 0);
  return buddy_userInterfaceStyleModeValue;
}

- (id)watchMigrationData
{
  selfCopy = self;
  location[1] = a2;
  backupMetadata = [(BYExpressSetupProximityDataSource *)self backupMetadata];
  location[0] = [(BYBackupMetadata *)backupMetadata expressSettings];

  if ([location[0] hasWatchMigrationData])
  {
    watchMigrationData = [location[0] watchMigrationData];
  }

  else
  {
    backupMetadata2 = [(BYExpressSetupProximityDataSource *)selfCopy backupMetadata];
    watchMigrationData = [(BYBackupMetadata *)backupMetadata2 nanoRegistryData];
  }

  objc_storeStrong(location, 0);
  v4 = watchMigrationData;

  return v4;
}

- (id)walletMetadata
{
  backupMetadata = [(BYExpressSetupProximityDataSource *)self backupMetadata];
  expressSettings = [(BYBackupMetadata *)backupMetadata expressSettings];
  hasWalletData = [expressSettings hasWalletData];

  if (hasWalletData)
  {
    backupMetadata2 = [(BYExpressSetupProximityDataSource *)self backupMetadata];
    expressSettings2 = [(BYBackupMetadata *)backupMetadata2 expressSettings];
    walletData = [expressSettings2 walletData];
  }

  else
  {
    backupMetadata3 = [(BYExpressSetupProximityDataSource *)self backupMetadata];
    hasWalletData2 = [(BYBackupMetadata *)backupMetadata3 hasWalletData];

    if (hasWalletData2)
    {
      backupMetadata4 = [(BYExpressSetupProximityDataSource *)self backupMetadata];
      walletData = [(BYBackupMetadata *)backupMetadata4 walletData];
    }

    else
    {
      walletData = 0;
    }
  }

  return walletData;
}

- (id)actionButtonData
{
  backupMetadata = [(BYExpressSetupProximityDataSource *)self backupMetadata];
  hasActionButtonData = [(BYBackupMetadata *)backupMetadata hasActionButtonData];

  if (hasActionButtonData)
  {
    backupMetadata2 = [(BYExpressSetupProximityDataSource *)self backupMetadata];
    actionButtonData = [(BYBackupMetadata *)backupMetadata2 actionButtonData];
  }

  else
  {
    actionButtonData = 0;
  }

  return actionButtonData;
}

- (id)stolenDeviceProtectionEnabled
{
  information = [(BYExpressSetupProximityDataSource *)self information];
  expressSettings = [(SASProximityInformation *)information expressSettings];
  hasStolenDeviceProtectionEnabled = [expressSettings hasStolenDeviceProtectionEnabled];

  if (hasStolenDeviceProtectionEnabled)
  {
    information2 = [(BYExpressSetupProximityDataSource *)self information];
    expressSettings2 = [(SASProximityInformation *)information2 expressSettings];
    v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [expressSettings2 stolenDeviceProtectionEnabled] & 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)stolenDeviceProtectionStrictModeEnabled
{
  information = [(BYExpressSetupProximityDataSource *)self information];
  expressSettings = [(SASProximityInformation *)information expressSettings];
  hasStolenDeviceProtectionStrictModeEnabled = [expressSettings hasStolenDeviceProtectionStrictModeEnabled];

  if (hasStolenDeviceProtectionStrictModeEnabled)
  {
    information2 = [(BYExpressSetupProximityDataSource *)self information];
    expressSettings2 = [(SASProximityInformation *)information2 expressSettings];
    v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [expressSettings2 stolenDeviceProtectionStrictModeEnabled] & 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)iPadMultitaskingMode
{
  v2 = [(BYExpressSetupProximityDataSource *)self information:a2];
  expressSettings = [(SASProximityInformation *)v2 expressSettings];
  buddy_iPadMultitaskingMode = [expressSettings buddy_iPadMultitaskingMode];

  return buddy_iPadMultitaskingMode;
}

@end