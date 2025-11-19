@interface SOKerberosSettingsManager
- (BOOL)createKerberosSettingsCache;
- (SOKerberosSettingsManager)init;
- (void)createKerberosSettingsCache;
- (void)saveKerberosValuesForProfile:(id)a3;
@end

@implementation SOKerberosSettingsManager

- (SOKerberosSettingsManager)init
{
  v3.receiver = self;
  v3.super_class = SOKerberosSettingsManager;
  return [(SOKerberosSettingsManager *)&v3 init];
}

- (void)saveKerberosValuesForProfile:(id)a3
{
  v3 = a3;
  v4 = SO_LOG_SOKerberosSettingsManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosSettingsManager saveKerberosValuesForProfile:];
  }

  v5 = [v3 realm];
  v36 = 0;
  v6 = [SOKerberosHeimdalPluginSettings retrieveCurrentSettingsForRealm:v5 error:&v36];
  v7 = v36;

  if (!v6)
  {
    v8 = [SOKerberosHeimdalPluginSettings alloc];
    v9 = [v3 realm];
    v6 = [(SOKerberosHeimdalPluginSettings *)v8 initWithRealm:v9];
  }

  v10 = [(SOKerberosHeimdalPluginSettings *)v6 hosts];
  v11 = [v3 hosts];
  v12 = [v10 isEqualToArray:v11];

  if ((v12 & 1) == 0)
  {
    v13 = [v3 hosts];
    v14 = [v13 copy];
    [(SOKerberosHeimdalPluginSettings *)v6 setHosts:v14];
  }

  v15 = v12 ^ 1;
  v16 = [SOKerberosExtensionData alloc];
  v17 = [v3 extensionData];
  v18 = [(SOKerberosExtensionData *)v16 initWithDictionary:v17];

  if (!v18)
  {
    v29 = SO_LOG_SOKerberosSettingsManager();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(SOKerberosSettingsManager *)v3 saveKerberosValuesForProfile:v29];
    }

    goto LABEL_20;
  }

  v19 = [(SOKerberosHeimdalPluginSettings *)v6 isDefaultRealm];
  if (v19 != [(SOKerberosExtensionData *)v18 isDefaultRealm])
  {
    [(SOKerberosHeimdalPluginSettings *)v6 setDefaultRealm:[(SOKerberosExtensionData *)v18 isDefaultRealm]];
    v15 = 1;
  }

  v20 = [(SOKerberosHeimdalPluginSettings *)v6 domainRealmMapping];
  v21 = [(SOKerberosExtensionData *)v18 domainRealmMapping];
  v22 = [v20 isEqualToDictionary:v21];

  if ((v22 & 1) == 0)
  {
    v23 = [(SOKerberosExtensionData *)v18 domainRealmMapping];
    [(SOKerberosHeimdalPluginSettings *)v6 setDomainRealmMapping:v23];

    v15 = 1;
  }

  v24 = [(SOKerberosHeimdalPluginSettings *)v6 credentialUseMode];
  if (v24 != [(SOKerberosExtensionData *)v18 credentialUseMode])
  {
    [(SOKerberosHeimdalPluginSettings *)v6 setCredentialUseMode:[(SOKerberosExtensionData *)v18 credentialUseMode]];
    v15 = 1;
  }

  if (![(SOKerberosExtensionData *)v18 useSiteAutoDiscovery])
  {
    v25 = [(SOKerberosExtensionData *)v18 siteCode];
    [(SOKerberosHeimdalPluginSettings *)v6 setSiteCode:v25];
  }

  v26 = [(SOKerberosHeimdalPluginSettings *)v6 kdcs];
  v27 = [(SOKerberosExtensionData *)v18 preferredKDCs];
  v28 = [v26 isEqualToArray:v27];

  if ((v28 & 1) == 0)
  {
    v29 = [(SOKerberosExtensionData *)v18 preferredKDCs];
    v30 = [v29 copy];
    [(SOKerberosHeimdalPluginSettings *)v6 setKdcs:v30];

    v15 = 1;
LABEL_20:
  }

  v31 = SO_LOG_SOKerberosSettingsManager();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [(SOKerberosSettingsManager *)v15 saveKerberosValuesForProfile:v31];
  }

  if (v15)
  {
    v35 = v7;
    v32 = [(SOKerberosHeimdalPluginSettings *)v6 saveWithError:&v35];
    v33 = v35;

    if (!v32)
    {
      v34 = SO_LOG_SOKerberosSettingsManager();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosSettingsManager saveKerberosValuesForProfile:];
      }
    }
  }

  else
  {
    v33 = v7;
  }
}

- (BOOL)createKerberosSettingsCache
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = SO_LOG_SOKerberosSettingsManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOKerberosSettingsManager createKerberosSettingsCache]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_24006C000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v10 = 0;
  v5 = [SOKerberosHeimdalPluginSettings createSettingCacheEntryIfNeededWithError:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = SO_LOG_SOKerberosSettingsManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosSettingsManager createKerberosSettingsCache];
    }
  }

  objc_sync_exit(v4);
  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)saveKerberosValuesForProfile:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24006C000, v0, OS_LOG_TYPE_DEBUG, "Saving values for profile: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)saveKerberosValuesForProfile:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 extensionData];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24006C000, a2, OS_LOG_TYPE_ERROR, "error deserializing extension data: %{private}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)saveKerberosValuesForProfile:(char)a1 .cold.3(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "need to save: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveKerberosValuesForProfile:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24006C000, v0, OS_LOG_TYPE_ERROR, "error when saving plugin settings: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)createKerberosSettingsCache
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24006C000, v0, OS_LOG_TYPE_ERROR, "error when creating settings cache: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end