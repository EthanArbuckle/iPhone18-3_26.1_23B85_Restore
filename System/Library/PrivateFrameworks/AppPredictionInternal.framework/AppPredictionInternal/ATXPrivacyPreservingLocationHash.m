@interface ATXPrivacyPreservingLocationHash
+ (id)randomData;
+ (id)readDeviceSpecificSalt;
+ (id)setSaltToUserDefaults:(id)a3 scheme:(id)a4;
+ (int64_t)preservePrivacyForGeoHash:(int64_t)a3;
+ (int64_t)sha256HashForGeohash:(int64_t)a3 salt:(id)a4;
@end

@implementation ATXPrivacyPreservingLocationHash

+ (int64_t)preservePrivacyForGeoHash:(int64_t)a3
{
  v4 = +[ATXPrivacyPreservingLocationHash readDeviceSpecificSalt];
  v5 = [ATXPrivacyPreservingLocationHash dropLastTenBitsOfSHA256Hash:[ATXPrivacyPreservingLocationHash sha256HashForGeohash:a3 salt:v4]];

  return v5;
}

+ (id)readDeviceSpecificSalt
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 dataForKey:@"ATXPrivacyPreservingLocationHashDeviceSpecificSalt"];
  if (!v4)
  {
    v4 = [ATXPrivacyPreservingLocationHash setSaltToUserDefaults:v3 scheme:@"ATXPrivacyPreservingLocationHashDeviceSpecificSalt"];
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "ATXPrivacyPreservingLocationHash: Created a new salt for privacy preservation.", v7, 2u);
    }
  }

  return v4;
}

+ (id)setSaltToUserDefaults:(id)a3 scheme:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[ATXPrivacyPreservingLocationHash randomData];
  if (v7)
  {
    [v5 setObject:v7 forKey:v6];
    v8 = v7;
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXPrivacyPreservingLocationHash setSaltToUserDefaults:v9 scheme:?];
    }
  }

  return v7;
}

+ (id)randomData
{
  v2 = [MEMORY[0x277CBEB28] dataWithLength:8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 8uLL, [v2 mutableBytes]))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA90] dataWithData:v2];
  }

  return v3;
}

+ (int64_t)sha256HashForGeohash:(int64_t)a3 salt:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = a4;
  v5 = objc_opt_new();
  [v5 appendBytes:&v9 length:8];
  if (v4)
  {
    [v5 appendData:v4];
  }

  *md = 0u;
  v11 = 0u;
  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), md);
  v6 = *md;

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end