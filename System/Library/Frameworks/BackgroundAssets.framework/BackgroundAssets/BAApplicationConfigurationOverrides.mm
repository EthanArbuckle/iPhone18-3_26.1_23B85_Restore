@interface BAApplicationConfigurationOverrides
+ (BOOL)_saveOverrides:(void *)a3 forAppBundleIdentifier:;
+ (BOOL)clearAllOverrides;
+ (id)_getInternalAppOverridesDict;
+ (id)_getOverridesForAppBundleIdentifier:(uint64_t)a1;
- (void)setDomainAllowlist:(id)a3;
- (void)setDownloadAllowance:(id)a3;
- (void)setEssentialDownloadAllowance:(id)a3;
- (void)setEssentialMaxInstallSize:(id)a3;
- (void)setManifestURL:(id)a3;
- (void)setMaxInstallSize:(id)a3;
@end

@implementation BAApplicationConfigurationOverrides

- (void)setEssentialMaxInstallSize:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [(NSNumber *)v4 integerValue]< 0)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setEssentialMaxInstallSize:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([essentialMaxInstallSize integerValue] >= 0), essentialMaxInstallSize must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    essentialMaxInstallSize = self->_essentialMaxInstallSize;
    self->_essentialMaxInstallSize = v5;
  }
}

- (void)setMaxInstallSize:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [(NSNumber *)v4 integerValue]< 0)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setMaxInstallSize:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([maxInstallSize integerValue] >= 0), maxInstallSize must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    maxInstallSize = self->_maxInstallSize;
    self->_maxInstallSize = v5;
  }
}

- (void)setEssentialDownloadAllowance:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [(NSNumber *)v4 integerValue]< 0)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setEssentialDownloadAllowance:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([essentialDownloadAllowance integerValue] >= 0), essentialDownloadAllowance must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    essentialDownloadAllowance = self->_essentialDownloadAllowance;
    self->_essentialDownloadAllowance = v5;
  }
}

- (void)setDownloadAllowance:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [(NSNumber *)v4 integerValue]< 0)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setDownloadAllowance:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([downloadAllowance integerValue] >= 0), downloadAllowance must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    downloadAllowance = self->_downloadAllowance;
    self->_downloadAllowance = v5;
  }
}

- (void)setManifestURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![(NSString *)v4 length])
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setManifestURL:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([manifestURL length] > 0), manifestURL cannot be empty.";
    __break(0xB001u);
  }

  else
  {
    manifestURL = self->_manifestURL;
    self->_manifestURL = v5;
  }
}

- (void)setDomainAllowlist:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_12:
    domainAllowlist = self->_domainAllowlist;
    self->_domainAllowlist = v5;

    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([(NSArray *)v4 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = v5;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v29 + 1) + 8 * i) length])
          {
            v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
            if (v13)
            {
              [(BAApplicationConfigurationOverrides *)v13 setDomainAllowlist:v14, v15, v16, v17, v18, v19, v20];
            }

            qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([item length] > 0), domainAllowlist items cannot be empty.";
            __break(0xB001u);
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    goto LABEL_12;
  }

  v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (v21)
  {
    [(BAApplicationConfigurationOverrides *)v21 setDomainAllowlist:v22, v23, v24, v25, v26, v27, v28];
  }

  qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([domainAllowlist count] > 0), domainAllowlist cannot be empty.";
  __break(0xB001u);
}

+ (id)_getOverridesForAppBundleIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = +[BAApplicationConfigurationOverrides _getInternalAppOverridesDict];
  v5 = [v4 objectForKey:v2];

  if (v5)
  {
    v6 = [v5 objectForKey:@"BAEssentialMaxInstallSize"];
    [v3 setEssentialMaxInstallSize:v6];

    v7 = [v5 objectForKey:@"BAMaxInstallSize"];
    [v3 setMaxInstallSize:v7];

    v8 = [v5 objectForKey:@"BAEssentialDownloadAllowance"];
    [v3 setEssentialDownloadAllowance:v8];

    v9 = [v5 objectForKey:@"BADownloadAllowance"];
    [v3 setDownloadAllowance:v9];

    v10 = [v5 objectForKey:@"BAManifestURL"];
    [v3 setManifestURL:v10];

    v11 = [v5 objectForKey:@"BADownloadDomainAllowList"];
    [v3 setDomainAllowlist:v11];
  }

  return v3;
}

+ (BOOL)_saveOverrides:(void *)a3 forAppBundleIdentifier:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = +[BAApplicationConfigurationOverrides _getInternalAppOverridesDict];
  v7 = v6;
  if (v4)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v4 manifestURL];

    if (v9)
    {
      v10 = [v4 manifestURL];
      [v8 setValue:v10 forKey:@"BAManifestURL"];
    }

    v11 = [v4 domainAllowlist];

    if (v11)
    {
      v12 = [v4 domainAllowlist];
      [v8 setValue:v12 forKey:@"BADownloadDomainAllowList"];
    }

    v13 = [v4 essentialMaxInstallSize];

    if (v13)
    {
      v14 = [v4 essentialMaxInstallSize];
      [v8 setValue:v14 forKey:@"BAEssentialMaxInstallSize"];
    }

    v15 = [v4 maxInstallSize];

    if (v15)
    {
      v16 = [v4 maxInstallSize];
      [v8 setValue:v16 forKey:@"BAMaxInstallSize"];
    }

    v17 = [v4 essentialDownloadAllowance];

    if (v17)
    {
      v18 = [v4 essentialDownloadAllowance];
      [v8 setValue:v18 forKey:@"BAEssentialDownloadAllowance"];
    }

    v19 = [v4 downloadAllowance];

    if (v19)
    {
      v20 = [v4 downloadAllowance];
      [v8 setValue:v20 forKey:@"BADownloadAllowance"];
    }

    [v7 setValue:v8 forKey:v5];
  }

  else
  {
    [v6 removeObjectForKey:v5];
  }

  CFPreferencesSetAppValue(@"InternalAppOverrides", v7, @"com.apple.backgroundassets");
  v21 = CFPreferencesAppSynchronize(@"com.apple.backgroundassets") != 0;

  return v21;
}

+ (BOOL)clearAllOverrides
{
  v2 = [MEMORY[0x277CBEAC0] dictionary];
  CFPreferencesSetAppValue(@"InternalAppOverrides", v2, @"com.apple.backgroundassets");
  v3 = CFPreferencesAppSynchronize(@"com.apple.backgroundassets") != 0;

  return v3;
}

+ (id)_getInternalAppOverridesDict
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"InternalAppOverrides", @"com.apple.backgroundassets");
  v1 = v0;
  if (v0)
  {
    v2 = [v0 mutableCopy];
  }

  else
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
  }

  v3 = v2;

  return v3;
}

- (void)setEssentialMaxInstallSize:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setMaxInstallSize:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setEssentialDownloadAllowance:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDownloadAllowance:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setManifestURL:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDomainAllowlist:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDomainAllowlist:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end