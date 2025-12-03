@interface AMSLogConfig
+ (id)sharedAccountsAuthenticationPluginConfig;
+ (id)sharedAccountsConfig;
+ (id)sharedAccountsCookiesConfig;
+ (id)sharedAccountsDaemonConfig;
+ (id)sharedAccountsLogoutConfig;
+ (id)sharedAccountsMigrationConfig;
+ (id)sharedAccountsMigrationConfigOversize;
+ (id)sharedAccountsMultiUserConfig;
+ (id)sharedAccountsNotificationPluginConfig;
+ (id)sharedAccountsOversizeConfig;
+ (id)sharedAccountsStorefrontConfig;
+ (id)sharedAccountsSyncPluginConfig;
+ (id)sharedActionConfig;
+ (id)sharedAnisetteConfig;
+ (id)sharedAttestationConfig;
+ (id)sharedBagCacheConfig;
+ (id)sharedBagConfig;
+ (id)sharedBiometricsConfig;
+ (id)sharedConfig;
+ (id)sharedConfigOversize;
+ (id)sharedDataMigrationConfig;
+ (id)sharedDeviceOffersConfig;
+ (id)sharedEngagementConfig;
+ (id)sharedFollowUpConfig;
+ (id)sharedFraudReportConfig;
+ (id)sharedHARLoggingConfig;
+ (id)sharedKeychainConfig;
+ (id)sharedMarketingItemConfig;
+ (id)sharedMediaConfig;
+ (id)sharedMediaServiceOwnerConfig;
+ (id)sharedMessagingUIConfig;
+ (id)sharedMetricsConfig;
+ (id)sharedPrivacyConfig;
+ (id)sharedPromiseConfig;
+ (id)sharedPurchaseConfig;
+ (id)sharedPurchaseOversizeConfig;
+ (id)sharedPushNotificationConfig;
+ (id)sharedRatingsProviderConfig;
+ (id)sharedRegulatoryEligibilityConfig;
+ (id)sharedServerDataCacheConfig;
+ (id)sharedTSDataSyncConfig;
+ (id)sharedTreatmentsConfig;
+ (id)sharedURLLoadingConfig;
+ (id)sharedUserNotificationConfig;
+ (id)sharedWebUIConfig;
+ (id)sharedWebUIPageConfig;
- (AMSLogConfig)initWithCategory:(id)category backingLog:(id)log;
- (BOOL)debugLogsEnabled;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation AMSLogConfig

+ (id)sharedConfig
{
  if (_MergedGlobals_122 != -1)
  {
    dispatch_once(&_MergedGlobals_122, &__block_literal_global_74);
  }

  v3 = qword_1ED6E2AC8;

  return v3;
}

uint64_t __28__AMSLogConfig_sharedConfig__block_invoke()
{
  qword_1ED6E2AC8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:28];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsConfig
{
  if (qword_1ED6E2B00 != -1)
  {
    dispatch_once(&qword_1ED6E2B00, &__block_literal_global_12_2);
  }

  v3 = qword_1ED6E2B08;

  return v3;
}

uint64_t __36__AMSLogConfig_sharedAccountsConfig__block_invoke()
{
  qword_1ED6E2B08 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedEngagementConfig
{
  if (qword_1ED6E2C30 != -1)
  {
    dispatch_once(&qword_1ED6E2C30, &__block_literal_global_50_0);
  }

  v3 = qword_1ED6E2C38;

  return v3;
}

uint64_t __34__AMSLogConfig_sharedActionConfig__block_invoke()
{
  qword_1ED6E2BD8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:13];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedActionConfig
{
  if (qword_1ED6E2BD0 != -1)
  {
    dispatch_once(&qword_1ED6E2BD0, &__block_literal_global_38);
  }

  v3 = qword_1ED6E2BD8;

  return v3;
}

uint64_t __31__AMSLogConfig_sharedBagConfig__block_invoke()
{
  qword_1ED6E2C08 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:17];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedBagConfig
{
  if (qword_1ED6E2C00 != -1)
  {
    dispatch_once(&qword_1ED6E2C00, &__block_literal_global_44);
  }

  v3 = qword_1ED6E2C08;

  return v3;
}

+ (id)sharedConfigOversize
{
  if (qword_1ED6E2AD0 != -1)
  {
    dispatch_once(&qword_1ED6E2AD0, &__block_literal_global_6_0);
  }

  v3 = qword_1ED6E2AD8;

  return v3;
}

uint64_t __36__AMSLogConfig_sharedConfigOversize__block_invoke()
{
  qword_1ED6E2AD8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:37];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)debugLogsEnabled
{
  oSLogObject = [(AMSLogConfig *)self OSLogObject];
  v3 = [AMSLogConfig _debugLogsEnabled:oSLogObject];

  return v3;
}

+ (id)sharedAccountsCookiesConfig
{
  if (qword_1ED6E2B20 != -1)
  {
    dispatch_once(&qword_1ED6E2B20, &__block_literal_global_16_0);
  }

  v3 = qword_1ED6E2B28;

  return v3;
}

uint64_t __43__AMSLogConfig_sharedAccountsCookiesConfig__block_invoke()
{
  qword_1ED6E2B28 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsDaemonConfig
{
  if (qword_1ED6E2AF0 != -1)
  {
    dispatch_once(&qword_1ED6E2AF0, &__block_literal_global_10);
  }

  v3 = qword_1ED6E2AF8;

  return v3;
}

uint64_t __42__AMSLogConfig_sharedAccountsDaemonConfig__block_invoke()
{
  qword_1ED6E2AF8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:3];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedPromiseConfig
{
  if (qword_1ED6E2CD0 != -1)
  {
    dispatch_once(&qword_1ED6E2CD0, &__block_literal_global_70_0);
  }

  v3 = qword_1ED6E2CD8;

  return v3;
}

uint64_t __44__AMSLogConfig_sharedPushNotificationConfig__block_invoke()
{
  qword_1ED6E2D08 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:42];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedPushNotificationConfig
{
  if (qword_1ED6E2D00 != -1)
  {
    dispatch_once(&qword_1ED6E2D00, &__block_literal_global_76_0);
  }

  v3 = qword_1ED6E2D08;

  return v3;
}

uint64_t __38__AMSLogConfig_sharedEngagementConfig__block_invoke()
{
  qword_1ED6E2C38 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:25];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedPrivacyConfig
{
  if (qword_1ED6E2CC0 != -1)
  {
    dispatch_once(&qword_1ED6E2CC0, &__block_literal_global_68_0);
  }

  v3 = qword_1ED6E2CC8;

  return v3;
}

uint64_t __35__AMSLogConfig_sharedPrivacyConfig__block_invoke()
{
  qword_1ED6E2CC8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:38];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __38__AMSLogConfig_sharedURLLoadingConfig__block_invoke()
{
  qword_1ED6E2D58 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:51];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedURLLoadingConfig
{
  if (qword_1ED6E2D50 != -1)
  {
    dispatch_once(&qword_1ED6E2D50, &__block_literal_global_86_0);
  }

  v3 = qword_1ED6E2D58;

  return v3;
}

+ (id)sharedTreatmentsConfig
{
  if (qword_1ED6E2D40 != -1)
  {
    dispatch_once(&qword_1ED6E2D40, &__block_literal_global_84);
  }

  v3 = qword_1ED6E2D48;

  return v3;
}

uint64_t __38__AMSLogConfig_sharedTreatmentsConfig__block_invoke()
{
  qword_1ED6E2D48 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:49];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedMediaConfig
{
  if (qword_1ED6E2C80 != -1)
  {
    dispatch_once(&qword_1ED6E2C80, &__block_literal_global_60);
  }

  v3 = qword_1ED6E2C88;

  return v3;
}

uint64_t __33__AMSLogConfig_sharedMediaConfig__block_invoke()
{
  qword_1ED6E2C88 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:32];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsAuthenticationPluginConfig
{
  if (qword_1ED6E2AE0 != -1)
  {
    dispatch_once(&qword_1ED6E2AE0, &__block_literal_global_8);
  }

  v3 = qword_1ED6E2AE8;

  return v3;
}

uint64_t __56__AMSLogConfig_sharedAccountsAuthenticationPluginConfig__block_invoke()
{
  qword_1ED6E2AE8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedMetricsConfig
{
  if (qword_1ED6E2CB0 != -1)
  {
    dispatch_once(&qword_1ED6E2CB0, &__block_literal_global_66_0);
  }

  v3 = qword_1ED6E2CB8;

  return v3;
}

uint64_t __35__AMSLogConfig_sharedMetricsConfig__block_invoke()
{
  qword_1ED6E2CB8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:36];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedMarketingItemConfig
{
  if (qword_1ED6E2C70 != -1)
  {
    dispatch_once(&qword_1ED6E2C70, &__block_literal_global_58_1);
  }

  v3 = qword_1ED6E2C78;

  return v3;
}

uint64_t __41__AMSLogConfig_sharedMarketingItemConfig__block_invoke()
{
  qword_1ED6E2C78 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:31];

  return MEMORY[0x1EEE66BB8]();
}

- (AMSLogConfig)initWithCategory:(id)category backingLog:(id)log
{
  categoryCopy = category;
  logCopy = log;
  v11.receiver = self;
  v11.super_class = AMSLogConfig;
  v8 = [(AMSLogConfig *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AMSLogConfig *)v8 setSubsystem:@"com.apple.AppleMediaServices"];
    [(AMSLogConfig *)v9 setCategory:categoryCopy];
    [(AMSLogConfig *)v9 setOSLogObject:logCopy];
  }

  return v9;
}

+ (id)sharedTSDataSyncConfig
{
  if (qword_1ED6E2B10 != -1)
  {
    dispatch_once(&qword_1ED6E2B10, &__block_literal_global_14_0);
  }

  v3 = qword_1ED6E2B18;

  return v3;
}

uint64_t __38__AMSLogConfig_sharedTSDataSyncConfig__block_invoke()
{
  qword_1ED6E2B18 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:50];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedDataMigrationConfig
{
  if (qword_1ED6E2B30 != -1)
  {
    dispatch_once(&qword_1ED6E2B30, &__block_literal_global_18_1);
  }

  v3 = qword_1ED6E2B38;

  return v3;
}

uint64_t __41__AMSLogConfig_sharedDataMigrationConfig__block_invoke()
{
  qword_1ED6E2B38 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:22];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedDeviceOffersConfig
{
  if (qword_1ED6E2B40 != -1)
  {
    dispatch_once(&qword_1ED6E2B40, &__block_literal_global_20_0);
  }

  v3 = qword_1ED6E2B48;

  return v3;
}

uint64_t __40__AMSLogConfig_sharedDeviceOffersConfig__block_invoke()
{
  qword_1ED6E2B48 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:24];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsLogoutConfig
{
  if (qword_1ED6E2B50 != -1)
  {
    dispatch_once(&qword_1ED6E2B50, &__block_literal_global_22_0);
  }

  v3 = qword_1ED6E2B58;

  return v3;
}

uint64_t __42__AMSLogConfig_sharedAccountsLogoutConfig__block_invoke()
{
  qword_1ED6E2B58 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:5];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsMigrationConfig
{
  if (qword_1ED6E2B60 != -1)
  {
    dispatch_once(&qword_1ED6E2B60, &__block_literal_global_24_0);
  }

  v3 = qword_1ED6E2B68;

  return v3;
}

uint64_t __45__AMSLogConfig_sharedAccountsMigrationConfig__block_invoke()
{
  qword_1ED6E2B68 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:6];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsMigrationConfigOversize
{
  if (qword_1ED6E2B70 != -1)
  {
    dispatch_once(&qword_1ED6E2B70, &__block_literal_global_26_0);
  }

  v3 = qword_1ED6E2B78;

  return v3;
}

uint64_t __53__AMSLogConfig_sharedAccountsMigrationConfigOversize__block_invoke()
{
  qword_1ED6E2B78 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:7];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsMultiUserConfig
{
  if (qword_1ED6E2B80 != -1)
  {
    dispatch_once(&qword_1ED6E2B80, &__block_literal_global_28_1);
  }

  v3 = qword_1ED6E2B88;

  return v3;
}

uint64_t __45__AMSLogConfig_sharedAccountsMultiUserConfig__block_invoke()
{
  qword_1ED6E2B88 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsNotificationPluginConfig
{
  if (qword_1ED6E2B90 != -1)
  {
    dispatch_once(&qword_1ED6E2B90, &__block_literal_global_30);
  }

  v3 = qword_1ED6E2B98;

  return v3;
}

uint64_t __54__AMSLogConfig_sharedAccountsNotificationPluginConfig__block_invoke()
{
  qword_1ED6E2B98 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:9];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsOversizeConfig
{
  if (qword_1ED6E2BA0 != -1)
  {
    dispatch_once(&qword_1ED6E2BA0, &__block_literal_global_32_0);
  }

  v3 = qword_1ED6E2BA8;

  return v3;
}

uint64_t __44__AMSLogConfig_sharedAccountsOversizeConfig__block_invoke()
{
  qword_1ED6E2BA8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:10];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsStorefrontConfig
{
  if (qword_1ED6E2BB0 != -1)
  {
    dispatch_once(&qword_1ED6E2BB0, &__block_literal_global_34_0);
  }

  v3 = qword_1ED6E2BB8;

  return v3;
}

uint64_t __46__AMSLogConfig_sharedAccountsStorefrontConfig__block_invoke()
{
  qword_1ED6E2BB8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:11];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccountsSyncPluginConfig
{
  if (qword_1ED6E2BC0 != -1)
  {
    dispatch_once(&qword_1ED6E2BC0, &__block_literal_global_36);
  }

  v3 = qword_1ED6E2BC8;

  return v3;
}

uint64_t __46__AMSLogConfig_sharedAccountsSyncPluginConfig__block_invoke()
{
  qword_1ED6E2BC8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:12];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAnisetteConfig
{
  if (qword_1ED6E2BE0 != -1)
  {
    dispatch_once(&qword_1ED6E2BE0, &__block_literal_global_40_0);
  }

  v3 = qword_1ED6E2BE8;

  return v3;
}

uint64_t __36__AMSLogConfig_sharedAnisetteConfig__block_invoke()
{
  qword_1ED6E2BE8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:15];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAttestationConfig
{
  if (qword_1ED6E2BF0 != -1)
  {
    dispatch_once(&qword_1ED6E2BF0, &__block_literal_global_42_1);
  }

  v3 = qword_1ED6E2BF8;

  return v3;
}

uint64_t __39__AMSLogConfig_sharedAttestationConfig__block_invoke()
{
  qword_1ED6E2BF8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:16];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedBagCacheConfig
{
  if (qword_1ED6E2C10 != -1)
  {
    dispatch_once(&qword_1ED6E2C10, &__block_literal_global_46);
  }

  v3 = qword_1ED6E2C18;

  return v3;
}

uint64_t __36__AMSLogConfig_sharedBagCacheConfig__block_invoke()
{
  qword_1ED6E2C18 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:18];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedBiometricsConfig
{
  if (qword_1ED6E2C20 != -1)
  {
    dispatch_once(&qword_1ED6E2C20, &__block_literal_global_48_0);
  }

  v3 = qword_1ED6E2C28;

  return v3;
}

uint64_t __38__AMSLogConfig_sharedBiometricsConfig__block_invoke()
{
  qword_1ED6E2C28 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:19];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedFollowUpConfig
{
  if (qword_1ED6E2C40 != -1)
  {
    dispatch_once(&qword_1ED6E2C40, &__block_literal_global_52_0);
  }

  v3 = qword_1ED6E2C48;

  return v3;
}

uint64_t __36__AMSLogConfig_sharedFollowUpConfig__block_invoke()
{
  qword_1ED6E2C48 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:26];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedHARLoggingConfig
{
  if (qword_1ED6E2C50 != -1)
  {
    dispatch_once(&qword_1ED6E2C50, &__block_literal_global_54);
  }

  v3 = qword_1ED6E2C58;

  return v3;
}

uint64_t __38__AMSLogConfig_sharedHARLoggingConfig__block_invoke()
{
  qword_1ED6E2C58 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:29];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedKeychainConfig
{
  if (qword_1ED6E2C60 != -1)
  {
    dispatch_once(&qword_1ED6E2C60, &__block_literal_global_56_0);
  }

  v3 = qword_1ED6E2C68;

  return v3;
}

uint64_t __36__AMSLogConfig_sharedKeychainConfig__block_invoke()
{
  qword_1ED6E2C68 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:30];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedMediaServiceOwnerConfig
{
  if (qword_1ED6E2C90 != -1)
  {
    dispatch_once(&qword_1ED6E2C90, &__block_literal_global_62);
  }

  v3 = qword_1ED6E2C98;

  return v3;
}

uint64_t __45__AMSLogConfig_sharedMediaServiceOwnerConfig__block_invoke()
{
  qword_1ED6E2C98 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:34];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedMessagingUIConfig
{
  if (qword_1ED6E2CA0 != -1)
  {
    dispatch_once(&qword_1ED6E2CA0, &__block_literal_global_64_0);
  }

  v3 = qword_1ED6E2CA8;

  return v3;
}

uint64_t __39__AMSLogConfig_sharedMessagingUIConfig__block_invoke()
{
  qword_1ED6E2CA8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:35];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __35__AMSLogConfig_sharedPromiseConfig__block_invoke()
{
  qword_1ED6E2CD8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:39];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedPurchaseConfig
{
  if (qword_1ED6E2CE0 != -1)
  {
    dispatch_once(&qword_1ED6E2CE0, &__block_literal_global_72_0);
  }

  v3 = qword_1ED6E2CE8;

  return v3;
}

uint64_t __36__AMSLogConfig_sharedPurchaseConfig__block_invoke()
{
  qword_1ED6E2CE8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:40];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedPurchaseOversizeConfig
{
  if (qword_1ED6E2CF0 != -1)
  {
    dispatch_once(&qword_1ED6E2CF0, &__block_literal_global_74);
  }

  v3 = qword_1ED6E2CF8;

  return v3;
}

uint64_t __44__AMSLogConfig_sharedPurchaseOversizeConfig__block_invoke()
{
  qword_1ED6E2CF8 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:41];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedRatingsProviderConfig
{
  if (qword_1ED6E2D10 != -1)
  {
    dispatch_once(&qword_1ED6E2D10, &__block_literal_global_78);
  }

  v3 = qword_1ED6E2D18;

  return v3;
}

uint64_t __43__AMSLogConfig_sharedRatingsProviderConfig__block_invoke()
{
  qword_1ED6E2D18 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:43];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedRegulatoryEligibilityConfig
{
  if (qword_1ED6E2D20 != -1)
  {
    dispatch_once(&qword_1ED6E2D20, &__block_literal_global_80_0);
  }

  v3 = qword_1ED6E2D28;

  return v3;
}

uint64_t __49__AMSLogConfig_sharedRegulatoryEligibilityConfig__block_invoke()
{
  qword_1ED6E2D28 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:44];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedServerDataCacheConfig
{
  if (qword_1ED6E2D30 != -1)
  {
    dispatch_once(&qword_1ED6E2D30, &__block_literal_global_82);
  }

  v3 = qword_1ED6E2D38;

  return v3;
}

uint64_t __43__AMSLogConfig_sharedServerDataCacheConfig__block_invoke()
{
  qword_1ED6E2D38 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:46];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedUserNotificationConfig
{
  if (qword_1ED6E2D60 != -1)
  {
    dispatch_once(&qword_1ED6E2D60, &__block_literal_global_88_1);
  }

  v3 = qword_1ED6E2D68;

  return v3;
}

uint64_t __44__AMSLogConfig_sharedUserNotificationConfig__block_invoke()
{
  qword_1ED6E2D68 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:52];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedWebUIConfig
{
  if (qword_1ED6E2D70 != -1)
  {
    dispatch_once(&qword_1ED6E2D70, &__block_literal_global_90);
  }

  v3 = qword_1ED6E2D78;

  return v3;
}

uint64_t __33__AMSLogConfig_sharedWebUIConfig__block_invoke()
{
  qword_1ED6E2D78 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:53];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedWebUIPageConfig
{
  if (qword_1ED6E2D80 != -1)
  {
    dispatch_once(&qword_1ED6E2D80, &__block_literal_global_92_0);
  }

  v3 = qword_1ED6E2D88;

  return v3;
}

uint64_t __37__AMSLogConfig_sharedWebUIPageConfig__block_invoke()
{
  qword_1ED6E2D88 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:54];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedFraudReportConfig
{
  if (qword_1ED6E2D90 != -1)
  {
    dispatch_once(&qword_1ED6E2D90, &__block_literal_global_94);
  }

  v3 = qword_1ED6E2D98;

  return v3;
}

uint64_t __39__AMSLogConfig_sharedFraudReportConfig__block_invoke()
{
  qword_1ED6E2D98 = [_TtC18AppleMediaServices12AMSLogBridge amsLogConfigWithCategory:55];

  return MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = AMSLogConfig;
  v4 = [(AMSLogConfig *)&v9 description];
  v5 = [v3 stringWithFormat:@"%@: {\n", v4];

  category = [(AMSLogConfig *)self category];
  [v5 appendFormat:@"  category: %@\n", category];

  subsystem = [(AMSLogConfig *)self subsystem];
  [v5 appendFormat:@"  subsystem: %@\n", subsystem];

  [v5 appendString:@"}"];

  return v5;
}

- (unint64_t)hash
{
  category = [(AMSLogConfig *)self category];
  v4 = [category hash];
  subsystem = [(AMSLogConfig *)self subsystem];
  v6 = [subsystem hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
    goto LABEL_18;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    category = [(AMSLogConfig *)self category];
    if (category || ([(AMSLogConfig *)equalCopy category], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      category2 = [(AMSLogConfig *)self category];
      category3 = [(AMSLogConfig *)equalCopy category];
      v11 = [category2 isEqual:category3];

      if (category)
      {

        if (!v11)
        {
          goto LABEL_3;
        }
      }

      else
      {

        if ((v11 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    subsystem = [(AMSLogConfig *)self subsystem];
    if (subsystem || ([(AMSLogConfig *)equalCopy subsystem], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      subsystem2 = [(AMSLogConfig *)self subsystem];
      subsystem3 = [(AMSLogConfig *)equalCopy subsystem];
      v7 = [subsystem2 isEqual:subsystem3];

      if (subsystem)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_17;
  }

LABEL_3:
  v7 = 0;
LABEL_18:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[AMSLogConfig allocWithZone:](AMSLogConfig init];
  category = [(AMSLogConfig *)self category];
  v7 = [category copyWithZone:zone];
  category = v5->_category;
  v5->_category = v7;

  subsystem = [(AMSLogConfig *)self subsystem];
  v10 = [subsystem copyWithZone:zone];
  subsystem = v5->_subsystem;
  v5->_subsystem = v10;

  oSLogObject = [(AMSLogConfig *)self OSLogObject];
  OSLogObject = v5->_OSLogObject;
  v5->_OSLogObject = oSLogObject;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[AMSMutableLogConfig allocWithZone:](AMSMutableLogConfig init];
  category = [(AMSLogConfig *)self category];
  v7 = [category copyWithZone:zone];
  [(AMSLogConfig *)v5 setCategory:v7];

  subsystem = [(AMSLogConfig *)self subsystem];
  v9 = [subsystem copyWithZone:zone];
  [(AMSLogConfig *)v5 setSubsystem:v9];

  oSLogObject = [(AMSLogConfig *)self OSLogObject];
  [(AMSLogConfig *)v5 setOSLogObject:oSLogObject];

  return v5;
}

@end