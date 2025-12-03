@interface ACHAchievementsDaemonExtension
- (ACHAchievementsDaemonExtension)initWithDaemon:(id)daemon mobileAssetProvider:(id)provider;
- (int64_t)purgeSpaceForUrgency:(int)urgency volume:(id)volume;
- (int64_t)purgeableSpaceForUrgency:(int)urgency volume:(id)volume;
- (void)daemonReady:(id)ready;
@end

@implementation ACHAchievementsDaemonExtension

- (ACHAchievementsDaemonExtension)initWithDaemon:(id)daemon mobileAssetProvider:(id)provider
{
  daemonCopy = daemon;
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = ACHAchievementsDaemonExtension;
  v8 = [(ACHAchievementsDaemonExtension *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mobileAssetProvider, provider);
    [daemonCopy registerDaemonReadyObserver:v9 queue:0];
  }

  return v9;
}

- (void)daemonReady:(id)ready
{
  cacheDeleteCoordinator = [ready cacheDeleteCoordinator];
  [cacheDeleteCoordinator registerCacheDeleteProvider:self];
}

- (int64_t)purgeableSpaceForUrgency:(int)urgency volume:(id)volume
{
  v15 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  if ([volumeCopy isEqualToString:@"/private/var"])
  {
    if (urgency == 4)
    {
      downloadedAssetDiskUsageInBytes = [(ACHMobileAssetProvider *)self->_mobileAssetProvider downloadedAssetDiskUsageInBytes];
    }

    else
    {
      downloadedAssetDiskUsageInBytes = 0;
    }

    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = downloadedAssetDiskUsageInBytes;
      v13 = 1024;
      urgencyCopy = urgency;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Returning purgable space %llu for urgency %d", &v11, 0x12u);
    }
  }

  else
  {
    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = volumeCopy;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "No purgable space for requested volume %{public}@", &v11, 0xCu);
    }

    downloadedAssetDiskUsageInBytes = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return downloadedAssetDiskUsageInBytes;
}

- (int64_t)purgeSpaceForUrgency:(int)urgency volume:(id)volume
{
  v15 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  if ([volumeCopy isEqualToString:@"/private/var"])
  {
    if (urgency == 4)
    {
      purgeAllDownloadedAssets = [(ACHMobileAssetProvider *)self->_mobileAssetProvider purgeAllDownloadedAssets];
    }

    else
    {
      purgeAllDownloadedAssets = 0;
    }

    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = purgeAllDownloadedAssets;
      v13 = 1024;
      urgencyCopy = urgency;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Returning purged space %llu for urgency %d", &v11, 0x12u);
    }
  }

  else
  {
    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = volumeCopy;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Nothing to purge for requested volume %{public}@", &v11, 0xCu);
    }

    purgeAllDownloadedAssets = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return purgeAllDownloadedAssets;
}

@end