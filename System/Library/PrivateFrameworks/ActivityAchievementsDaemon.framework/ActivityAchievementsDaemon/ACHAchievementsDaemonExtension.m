@interface ACHAchievementsDaemonExtension
- (ACHAchievementsDaemonExtension)initWithDaemon:(id)a3 mobileAssetProvider:(id)a4;
- (int64_t)purgeSpaceForUrgency:(int)a3 volume:(id)a4;
- (int64_t)purgeableSpaceForUrgency:(int)a3 volume:(id)a4;
- (void)daemonReady:(id)a3;
@end

@implementation ACHAchievementsDaemonExtension

- (ACHAchievementsDaemonExtension)initWithDaemon:(id)a3 mobileAssetProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ACHAchievementsDaemonExtension;
  v8 = [(ACHAchievementsDaemonExtension *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mobileAssetProvider, a4);
    [v6 registerDaemonReadyObserver:v9 queue:0];
  }

  return v9;
}

- (void)daemonReady:(id)a3
{
  v4 = [a3 cacheDeleteCoordinator];
  [v4 registerCacheDeleteProvider:self];
}

- (int64_t)purgeableSpaceForUrgency:(int)a3 volume:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 isEqualToString:@"/private/var"])
  {
    if (a3 == 4)
    {
      v7 = [(ACHMobileAssetProvider *)self->_mobileAssetProvider downloadedAssetDiskUsageInBytes];
    }

    else
    {
      v7 = 0;
    }

    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v7;
      v13 = 1024;
      v14 = a3;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Returning purgable space %llu for urgency %d", &v11, 0x12u);
    }
  }

  else
  {
    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "No purgable space for requested volume %{public}@", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)purgeSpaceForUrgency:(int)a3 volume:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 isEqualToString:@"/private/var"])
  {
    if (a3 == 4)
    {
      v7 = [(ACHMobileAssetProvider *)self->_mobileAssetProvider purgeAllDownloadedAssets];
    }

    else
    {
      v7 = 0;
    }

    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v7;
      v13 = 1024;
      v14 = a3;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Returning purged space %llu for urgency %d", &v11, 0x12u);
    }
  }

  else
  {
    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Nothing to purge for requested volume %{public}@", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end