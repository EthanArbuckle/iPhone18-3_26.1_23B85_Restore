@interface BYExpressSetupBackupSource
- (BYExpressSetupBackupSource)initWithBackupItem:(id)item backupMetadata:(id)metadata;
- (id)actionButtonData;
- (id)appAnalyticsOptIn;
- (id)deviceAnalyticsOptIn;
- (id)locationServicesOptIn;
- (id)screenTimeEnabled;
- (id)siriDataSharingOptIn;
- (id)siriOptIn;
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

@implementation BYExpressSetupBackupSource

- (BYExpressSetupBackupSource)initWithBackupItem:(id)item backupMetadata:(id)metadata
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  obj = 0;
  objc_storeStrong(&obj, metadata);
  v5 = selfCopy;
  selfCopy = 0;
  v10.receiver = v5;
  v10.super_class = BYExpressSetupBackupSource;
  selfCopy = [(BYExpressSetupBackupSource *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 1, location[0]);
    objc_storeStrong(selfCopy + 2, obj);
    expressSettings = [obj expressSettings];
    v7 = *(selfCopy + 3);
    *(selfCopy + 3) = expressSettings;
  }

  v8 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (id)sourceDeviceClass
{
  v2 = [(RestorableBackupItem *)self->_backupItem backup:a2];
  deviceClass = [(MBBackup *)v2 deviceClass];

  return deviceClass;
}

- (id)locationServicesOptIn
{
  if (([(SASExpressSettings *)self->_expressSettings hasLocationServicesOptIn]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings locationServicesOptIn]& 1];
  }

  else if (([(BYBackupMetadata *)self->_backupMetadata hasLocationServicesOptIn]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(BYBackupMetadata *)self->_backupMetadata locationServicesOptIn]& 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)appAnalyticsOptIn
{
  if (([(SASExpressSettings *)self->_expressSettings hasAppAnalyticsOptIn]& 1) != 0)
  {
    v5 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings appAnalyticsOptIn]& 1];
  }

  else
  {
    appAnalyticsOptIn = [(BYBackupMetadata *)self->_backupMetadata appAnalyticsOptIn];
    if (appAnalyticsOptIn)
    {
      if (appAnalyticsOptIn == 1)
      {
        v5 = &__kCFBooleanTrue;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = &__kCFBooleanFalse;
    }
  }

  return v5;
}

- (id)deviceAnalyticsOptIn
{
  if (([(SASExpressSettings *)self->_expressSettings hasDeviceAnalyticsOptIn]& 1) != 0)
  {
    v5 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings deviceAnalyticsOptIn]& 1];
  }

  else
  {
    deviceAnalyticsOptIn = [(BYBackupMetadata *)self->_backupMetadata deviceAnalyticsOptIn];
    if (deviceAnalyticsOptIn)
    {
      if (deviceAnalyticsOptIn == 1)
      {
        v5 = &__kCFBooleanTrue;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = &__kCFBooleanFalse;
    }
  }

  return v5;
}

- (id)siriOptIn
{
  if (([(SASExpressSettings *)self->_expressSettings hasSiriOptIn]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings siriOptIn]& 1];
  }

  else if (([(BYBackupMetadata *)self->_backupMetadata hasSiriOptIn]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(BYBackupMetadata *)self->_backupMetadata siriOptIn]& 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)siriDataSharingOptIn
{
  if (([(SASExpressSettings *)self->_expressSettings hasSiriDataSharingOptIn]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings siriDataSharingOptIn]& 1];
  }

  else if (([(BYBackupMetadata *)self->_backupMetadata hasSiriDataSharingOptIn]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(BYBackupMetadata *)self->_backupMetadata siriDataSharingOptIn]& 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)siriVoiceTriggerEnabled
{
  if (([(SASExpressSettings *)self->_expressSettings hasSiriVoiceTriggerEnabled]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings siriVoiceTriggerEnabled]& 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)screenTimeEnabled
{
  if (([(SASExpressSettings *)self->_expressSettings hasScreenTimeEnabled]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings screenTimeEnabled]& 1];
  }

  else if (([(BYBackupMetadata *)self->_backupMetadata hasScreenTimeEnabled]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(BYBackupMetadata *)self->_backupMetadata screenTimeEnabled]& 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)softwareUpdateAutoUpdateEnabled
{
  if (([(SASExpressSettings *)self->_expressSettings hasSoftwareUpdateAutoUpdateEnabled]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings softwareUpdateAutoUpdateEnabled]& 1];
  }

  else if (([(BYBackupMetadata *)self->_backupMetadata hasAutoUpdateEnabled]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(BYBackupMetadata *)self->_backupMetadata autoUpdateEnabled]& 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)softwareUpdateAutoDownloadEnabled
{
  if (([(SASExpressSettings *)self->_expressSettings hasSoftwareUpdateAutoDownloadEnabled]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings softwareUpdateAutoDownloadEnabled]& 1];
  }

  else if (([(BYBackupMetadata *)self->_backupMetadata hasAutoDownloadEnabled]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(BYBackupMetadata *)self->_backupMetadata autoDownloadEnabled]& 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)userInterfaceStyleModeValue
{
  if (([(SASExpressSettings *)self->_expressSettings hasAppearanceMode]& 1) != 0)
  {
    return [(SASExpressSettings *)self->_expressSettings buddy_userInterfaceStyleModeValue];
  }

  if (([(BYBackupMetadata *)self->_backupMetadata hasUserInterfaceStyleMode]& 1) != 0)
  {
    return [(BYBackupMetadata *)self->_backupMetadata userInterfaceStyleMode];
  }

  return 0;
}

- (id)watchMigrationData
{
  if (([(SASExpressSettings *)self->_expressSettings hasWatchMigrationData]& 1) != 0)
  {
    watchMigrationData = [(SASExpressSettings *)self->_expressSettings watchMigrationData];
  }

  else
  {
    watchMigrationData = [(BYBackupMetadata *)self->_backupMetadata nanoRegistryData];
  }

  return watchMigrationData;
}

- (id)walletMetadata
{
  if (([(SASExpressSettings *)self->_expressSettings hasWalletData]& 1) != 0)
  {
    walletData = [(SASExpressSettings *)self->_expressSettings walletData];
  }

  else if (([(BYBackupMetadata *)self->_backupMetadata hasWalletData]& 1) != 0)
  {
    walletData = [(BYBackupMetadata *)self->_backupMetadata walletData];
  }

  else
  {
    walletData = 0;
  }

  return walletData;
}

- (id)actionButtonData
{
  if (([(BYBackupMetadata *)self->_backupMetadata hasActionButtonData]& 1) != 0)
  {
    actionButtonData = [(BYBackupMetadata *)self->_backupMetadata actionButtonData];
  }

  else
  {
    actionButtonData = 0;
  }

  return actionButtonData;
}

- (id)stolenDeviceProtectionEnabled
{
  if (([(SASExpressSettings *)self->_expressSettings hasStolenDeviceProtectionEnabled]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings stolenDeviceProtectionEnabled]& 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stolenDeviceProtectionStrictModeEnabled
{
  if (([(SASExpressSettings *)self->_expressSettings hasStolenDeviceProtectionStrictModeEnabled]& 1) != 0)
  {
    v4 = [NSNumber numberWithBool:[(SASExpressSettings *)self->_expressSettings stolenDeviceProtectionStrictModeEnabled]& 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end