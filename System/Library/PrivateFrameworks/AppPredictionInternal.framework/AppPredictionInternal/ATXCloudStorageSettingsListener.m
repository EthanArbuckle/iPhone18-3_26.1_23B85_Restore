@interface ATXCloudStorageSettingsListener
+ (ATXCloudStorageSettingsListener)sharedInstance;
+ (BOOL)isBackupForContactsEnabled;
+ (BOOL)isBackupForSiriEnabled;
- (ATXCloudStorageSettingsListener)init;
- (void)handleBackupPreferencesDidChange;
- (void)registerForCloudStorageDeletedByUserNotification;
- (void)registerForCloudStorageSettingsNotifications;
- (void)registerForCloudSyncPreferenceDidChangeNotification;
@end

@implementation ATXCloudStorageSettingsListener

+ (ATXCloudStorageSettingsListener)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ATXCloudStorageSettingsListener_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_5 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

uint64_t __49__ATXCloudStorageSettingsListener_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_instance_0;
  sharedInstance_instance_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (ATXCloudStorageSettingsListener)init
{
  v5.receiver = self;
  v5.super_class = ATXCloudStorageSettingsListener;
  v2 = [(ATXCloudStorageSettingsListener *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ATXCloudStorageSettingsListener *)v2 registerForCloudStorageSettingsNotifications];
  }

  return v3;
}

- (void)registerForCloudStorageSettingsNotifications
{
  [(ATXCloudStorageSettingsListener *)self registerForCloudSyncPreferenceDidChangeNotification];

  [(ATXCloudStorageSettingsListener *)self registerForCloudStorageDeletedByUserNotification];
}

- (void)registerForCloudStorageDeletedByUserNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handleDeleteDataRequest name:@"com.apple.siri.cloud.storage.deleted" object:0];
}

- (void)registerForCloudSyncPreferenceDidChangeNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handleBackupPreferencesDidChange name:@"com.apple.siri.cloud.synch.changed" object:0];
}

- (void)handleBackupPreferencesDidChange
{
  if (([objc_opt_class() isBackupForSiriEnabled] & 1) == 0)
  {

    [(ATXCloudStorageSettingsListener *)self handleDeleteDataRequest];
  }
}

+ (BOOL)isBackupForSiriEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 isEnabledForDataclass:*MEMORY[0x277CB8A48]];

  return v4;
}

+ (BOOL)isBackupForContactsEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 isEnabledForDataclass:*MEMORY[0x277CB9108]];

  return v4;
}

@end