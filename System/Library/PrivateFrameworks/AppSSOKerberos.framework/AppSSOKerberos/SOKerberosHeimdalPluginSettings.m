@interface SOKerberosHeimdalPluginSettings
+ (BOOL)createSettingCacheEntryIfNeededWithError:(id *)a3;
+ (BOOL)deleteSettingsForRealm:(id)a3 error:(id *)a4;
+ (HeimCred_s)createCacheEntryWithError:(id *)a3;
+ (HeimCred_s)retrieveCacheEntry;
+ (HeimCred_s)retrieveSetting:(id)a3 forRealm:(id)a4;
+ (id)retrieveAllCurrentSettings;
+ (id)retrieveCurrentSettingsForRealm:(id)a3 error:(id *)a4;
+ (id)stringWithCredentialUseMode:(int64_t)a3;
+ (void)deleteAllSettings;
+ (void)retrieveAllCurrentSettings;
- (BOOL)saveSetting:(id)a3 data:(id)a4 withError:(id *)a5;
- (BOOL)saveWithError:(id *)a3;
- (NSString)siteCode;
- (NSUUID)currentCredential;
- (SOKerberosHeimdalPluginSettings)initWithCoder:(id)a3;
- (SOKerberosHeimdalPluginSettings)initWithRealm:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)currentCredential;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrentCredential:(id)a3;
- (void)setSiteCode:(id)a3;
- (void)siteCode;
@end

@implementation SOKerberosHeimdalPluginSettings

- (SOKerberosHeimdalPluginSettings)initWithRealm:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SOKerberosHeimdalPluginSettings;
  v6 = [(SOKerberosHeimdalPluginSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_realm, a3);
  }

  return v7;
}

- (NSUUID)currentCredential
{
  v2 = [(SOKerberosHeimdalPluginSettings *)self realm];
  v3 = [SOKerberosHeimdalPluginSettings retrieveSetting:@"com.apple.AppSSO.Kerberos.CurrentCredential" forRealm:v2];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = HeimCredCopyAttributes();
  v5 = CFDictionaryGetValue(v4, *MEMORY[0x277D130D8]);
  if (v4)
  {
    CFRelease(v4);
  }

  if (!v5 || ([MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    CFRelease(v3);

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = SO_LOG_SOKerberosHeimdalPluginSettings();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHeimdalPluginSettings currentCredential];
  }

  CFRelease(v3);
LABEL_11:

  return v7;
}

- (void)setCurrentCredential:(id)a3
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v6 = v5;
  if (!a3 || v5)
  {
    [(SOKerberosHeimdalPluginSettings *)self saveSetting:@"com.apple.AppSSO.Kerberos.CurrentCredential" data:v5 withError:0];
  }

  else
  {
    v7 = SO_LOG_SOKerberosHeimdalPluginSettings();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHeimdalPluginSettings setCurrentCredential:?];
    }
  }
}

- (NSString)siteCode
{
  v2 = [(SOKerberosHeimdalPluginSettings *)self realm];
  v3 = [SOKerberosHeimdalPluginSettings retrieveSetting:@"com.apple.AppSSO.Kerberos.SiteCode" forRealm:v2];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = HeimCredCopyAttributes();
  v5 = CFDictionaryGetValue(v4, *MEMORY[0x277D130D8]);
  if (v4)
  {
    CFRelease(v4);
  }

  if (!v5 || ([MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    CFRelease(v3);

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = SO_LOG_SOKerberosHeimdalPluginSettings();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHeimdalPluginSettings siteCode];
  }

  CFRelease(v3);
LABEL_11:

  return v7;
}

- (void)setSiteCode:(id)a3
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v6 = v5;
  if (!a3 || v5)
  {
    [(SOKerberosHeimdalPluginSettings *)self saveSetting:@"com.apple.AppSSO.Kerberos.SiteCode" data:v5 withError:0];
  }

  else
  {
    v7 = SO_LOG_SOKerberosHeimdalPluginSettings();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHeimdalPluginSettings setSiteCode:?];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SOKerberosHeimdalPluginSettings *)self realm];
  if ([(SOKerberosHeimdalPluginSettings *)self isDefaultRealm])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(SOKerberosHeimdalPluginSettings *)self domainRealmMapping];
  v8 = [(SOKerberosHeimdalPluginSettings *)self hosts];
  v9 = [(SOKerberosHeimdalPluginSettings *)self kdcs];
  v10 = [SOKerberosHeimdalPluginSettings stringWithCredentialUseMode:[(SOKerberosHeimdalPluginSettings *)self credentialUseMode]];
  v11 = [v3 stringWithFormat:@"<%@: %p> Realm: %@, isDefaultRealm: %@, domainRealmMapping: %@, hosts: %@, kdcs: %@, credentialUseMode: %@", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEC10] mutableCopy];
  v4 = [(SOKerberosHeimdalPluginSettings *)self realm];
  [v3 setObject:v4 forKeyedSubscript:@"realm"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SOKerberosHeimdalPluginSettings isDefaultRealm](self, "isDefaultRealm")}];
  [v3 setObject:v5 forKeyedSubscript:@"isDefaultRealm"];

  v6 = [(SOKerberosHeimdalPluginSettings *)self domainRealmMapping];
  [v3 setObject:v6 forKeyedSubscript:@"domainRealmMapping"];

  v7 = [(SOKerberosHeimdalPluginSettings *)self hosts];
  [v3 setObject:v7 forKeyedSubscript:@"hosts"];

  v8 = [(SOKerberosHeimdalPluginSettings *)self kdcs];
  [v3 setObject:v8 forKeyedSubscript:@"kdcs"];

  v9 = [(SOKerberosHeimdalPluginSettings *)self siteCode];
  [v3 setObject:v9 forKeyedSubscript:@"siteCode"];

  v10 = [(SOKerberosHeimdalPluginSettings *)self currentCredential];
  v11 = [v10 UUIDString];
  [v3 setObject:v11 forKeyedSubscript:@"currentCredential"];

  v12 = [SOKerberosHeimdalPluginSettings stringWithCredentialUseMode:[(SOKerberosHeimdalPluginSettings *)self credentialUseMode]];
  [v3 setObject:v12 forKeyedSubscript:@"credentialUseMode"];

  return v3;
}

+ (id)stringWithCredentialUseMode:(int64_t)a3
{
  v3 = @"kerberosDefault";
  if (a3 == 1)
  {
    v3 = @"whenNotSpecified";
  }

  if (a3 == 2)
  {
    return @"always";
  }

  else
  {
    return v3;
  }
}

- (BOOL)saveWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:a3];
  if (v5)
  {
    v6 = [(SOKerberosHeimdalPluginSettings *)self saveSetting:@"com.apple.AppSSO.Kerberos.Configuration" data:v5 withError:a3];
  }

  else
  {
    v7 = SO_LOG_SOKerberosHeimdalPluginSettings();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHeimdalPluginSettings saveWithError:?];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)saveSetting:(id)a3 data:(id)a4 withError:(id *)a5
{
  v29[6] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = SO_LOG_SOKerberosHeimdalPluginSettings();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHeimdalPluginSettings saveSetting:v9 data:? withError:?];
  }

  v10 = [(SOKerberosHeimdalPluginSettings *)self realm];
  v11 = [SOKerberosHeimdalPluginSettings retrieveSetting:v7 forRealm:v10];

  if (v11)
  {
    v12 = *MEMORY[0x277D130D8];
    v13 = HeimCredSetAttribute();
LABEL_8:
    CFRelease(v11);
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v14 = +[SOKerberosHeimdalPluginSettings retrieveCacheEntry];
  if (v14)
  {
    v15 = v14;
    v16 = *MEMORY[0x277D13150];
    v17 = *MEMORY[0x277D13148];
    v28[0] = *MEMORY[0x277D13160];
    v28[1] = v17;
    v18 = *MEMORY[0x277D13168];
    v29[0] = v16;
    v29[1] = v18;
    v19 = *MEMORY[0x277D130D0];
    v29[2] = v7;
    v20 = *MEMORY[0x277D13140];
    v28[2] = v19;
    v28[3] = v20;
    v21 = [(SOKerberosHeimdalPluginSettings *)self realm];
    v22 = *MEMORY[0x277D130D8];
    v29[3] = v21;
    v29[4] = v8;
    v23 = *MEMORY[0x277D13138];
    v28[4] = v22;
    v28[5] = v23;
    v29[5] = HeimCredGetUUID();
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];

    v11 = HeimCredCreate();
    v13 = v11 != 0;

    CFRelease(v15);
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v27 = SO_LOG_SOKerberosHeimdalPluginSettings();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHeimdalPluginSettings saveSetting:data:withError:];
    }

    v13 = 0;
  }

LABEL_9:

  v25 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)createSettingCacheEntryIfNeededWithError:(id *)a3
{
  v4 = SO_LOG_SOKerberosHeimdalPluginSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[SOKerberosHeimdalPluginSettings createSettingCacheEntryIfNeededWithError:];
  }

  v5 = +[SOKerberosHeimdalPluginSettings retrieveCacheEntry];
  v6 = SO_LOG_SOKerberosHeimdalPluginSettings();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      +[SOKerberosHeimdalPluginSettings createSettingCacheEntryIfNeededWithError:];
    }

LABEL_11:

    CFRelease(v5);
    return 1;
  }

  if (v7)
  {
    +[SOKerberosHeimdalPluginSettings createSettingCacheEntryIfNeededWithError:];
  }

  v5 = [SOKerberosHeimdalPluginSettings createCacheEntryWithError:a3];
  v6 = SO_LOG_SOKerberosHeimdalPluginSettings();
  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      +[SOKerberosHeimdalPluginSettings createSettingCacheEntryIfNeededWithError:];
    }

    goto LABEL_11;
  }

  if (v8)
  {
    +[SOKerberosHeimdalPluginSettings createSettingCacheEntryIfNeededWithError:];
  }

  return 0;
}

+ (HeimCred_s)retrieveCacheEntry
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D13150];
  v3 = *MEMORY[0x277D13148];
  v12[0] = *MEMORY[0x277D13160];
  v12[1] = v3;
  v4 = *MEMORY[0x277D13168];
  v13[0] = v2;
  v13[1] = v4;
  v12[2] = *MEMORY[0x277D130D0];
  v5 = [a1 appSSOKerberosCacheName];
  v13[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v7 = HeimCredCopyQuery();
  if ([v7 count])
  {
    if ([v7 count] >= 2)
    {
      v8 = SO_LOG_SOKerberosHeimdalPluginSettings();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[SOKerberosHeimdalPluginSettings retrieveCacheEntry];
      }
    }

    v9 = [v7 firstObject];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (HeimCred_s)createCacheEntryWithError:(id *)a3
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = SO_LOG_SOKerberosHeimdalPluginSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[SOKerberosHeimdalPluginSettings createCacheEntryWithError:];
  }

  v5 = *MEMORY[0x277D13150];
  v6 = *MEMORY[0x277D13148];
  v15[0] = *MEMORY[0x277D13160];
  v15[1] = v6;
  v7 = *MEMORY[0x277D13168];
  v16[0] = v5;
  v16[1] = v7;
  v8 = *MEMORY[0x277D130C8];
  v16[2] = &unk_28520B970;
  v9 = *MEMORY[0x277D130D0];
  v15[2] = v8;
  v15[3] = v9;
  v10 = [a1 appSSOKerberosCacheName];
  v16[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v12 = HeimCredCreate();
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (HeimCred_s)retrieveSetting:(id)a3 forRealm:(id)a4
{
  v20[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 retrieveCacheEntry];
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x277D13148];
    v19[0] = *MEMORY[0x277D13160];
    v19[1] = v10;
    v11 = *MEMORY[0x277D13168];
    v20[0] = *MEMORY[0x277D13150];
    v20[1] = v11;
    v12 = *MEMORY[0x277D13140];
    v19[2] = *MEMORY[0x277D130D0];
    v19[3] = v12;
    v20[2] = v6;
    v20[3] = v7;
    v19[4] = *MEMORY[0x277D13138];
    v20[4] = HeimCredGetUUID();
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    CFRelease(v9);
    v14 = HeimCredCopyQuery();
    if ([v14 count])
    {
      if ([v14 count] >= 2)
      {
        v15 = SO_LOG_SOKerberosHeimdalPluginSettings();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[SOKerberosHeimdalPluginSettings retrieveSetting:forRealm:];
        }
      }

      v16 = [v14 firstObject];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v13 = SO_LOG_SOKerberosHeimdalPluginSettings();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHeimdalPluginSettings saveSetting:data:withError:];
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)retrieveCurrentSettingsForRealm:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = SO_LOG_SOKerberosHeimdalPluginSettings();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[SOKerberosHeimdalPluginSettings retrieveCurrentSettingsForRealm:error:];
  }

  v8 = [a1 retrieveSetting:@"com.apple.AppSSO.Kerberos.Configuration" forRealm:v6];
  if (v8)
  {
    v9 = v8;
    v10 = HeimCredCopyAttributes();
    v11 = CFDictionaryGetValue(v10, *MEMORY[0x277D130D8]);
    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:a4];
      if (v12)
      {
        v13 = SO_LOG_SOKerberosHeimdalPluginSettings();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          +[SOKerberosHeimdalPluginSettings retrieveCurrentSettingsForRealm:error:];
        }
      }
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)retrieveAllCurrentSettings
{
  v38[4] = *MEMORY[0x277D85DE8];
  v2 = [a1 retrieveCacheEntry];
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x277D13150];
    v5 = *MEMORY[0x277D13148];
    v37[0] = *MEMORY[0x277D13160];
    v37[1] = v5;
    v6 = *MEMORY[0x277D13168];
    v38[0] = v4;
    v38[1] = v6;
    v7 = *MEMORY[0x277D130D0];
    v38[2] = @"com.apple.AppSSO.Kerberos.Configuration";
    v8 = *MEMORY[0x277D13138];
    v37[2] = v7;
    v37[3] = v8;
    v38[3] = HeimCredGetUUID();
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
    CFRelease(v3);
    v10 = HeimCredCopyQuery();
    if ([v10 count])
    {
      v29 = v9;
      v30 = [MEMORY[0x277CBEBF8] mutableCopy];
      if ([v10 count])
      {
        v12 = 0;
        v13 = 0;
        v14 = *MEMORY[0x277D130D8];
        *&v11 = 138412546;
        v28 = v11;
        do
        {
          v15 = [v10 objectAtIndexedSubscript:{v12, v28}];

          v16 = HeimCredCopyAttributes();
          v17 = CFDictionaryGetValue(v16, v14);
          if (v16)
          {
            CFRelease(v16);
          }

          if (v17)
          {
            v18 = MEMORY[0x277CCAAC8];
            v19 = MEMORY[0x277CBEB98];
            v36[0] = objc_opt_class();
            v36[1] = objc_opt_class();
            v36[2] = objc_opt_class();
            v36[3] = objc_opt_class();
            v36[4] = objc_opt_class();
            v36[5] = objc_opt_class();
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:6];
            v21 = [v19 setWithArray:v20];
            v31 = v13;
            v22 = [v18 unarchivedObjectOfClasses:v21 fromData:v17 error:&v31];
            v23 = v31;

            if (v22)
            {
              [v30 addObject:v22];
            }

            else if (v23)
            {
              v24 = SO_LOG_SOKerberosHeimdalPluginSettings();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = v28;
                v33 = v15;
                v34 = 2112;
                v35 = v23;
                _os_log_error_impl(&dword_24006C000, v24, OS_LOG_TYPE_ERROR, "error with settings: %@, %@", buf, 0x16u);
              }
            }

            v13 = v23;
          }

          else
          {
            v23 = v13;
          }

          ++v12;
        }

        while ([v10 count] > v12);
      }

      else
      {
        v23 = 0;
      }

      v25 = SO_LOG_SOKerberosHeimdalPluginSettings();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        +[SOKerberosHeimdalPluginSettings retrieveAllCurrentSettings];
      }

      v9 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v9 = SO_LOG_SOKerberosHeimdalPluginSettings();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHeimdalPluginSettings saveSetting:data:withError:];
    }

    v30 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (BOOL)deleteSettingsForRealm:(id)a3 error:(id *)a4
{
  v20[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SO_LOG_SOKerberosHeimdalPluginSettings();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[SOKerberosHeimdalPluginSettings deleteSettingsForRealm:error:];
  }

  v7 = [a1 retrieveCacheEntry];
  if (v7)
  {
    v8 = v7;
    v9 = *MEMORY[0x277D13150];
    v10 = *MEMORY[0x277D13148];
    v19[0] = *MEMORY[0x277D13160];
    v19[1] = v10;
    v11 = *MEMORY[0x277D13168];
    v20[0] = v9;
    v20[1] = v11;
    v12 = *MEMORY[0x277D13140];
    v20[2] = v5;
    v13 = *MEMORY[0x277D13138];
    v19[2] = v12;
    v19[3] = v13;
    v20[3] = HeimCredGetUUID();
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v15 = HeimCredDeleteQuery();
    CFRelease(v8);
  }

  else
  {
    v16 = SO_LOG_SOKerberosHeimdalPluginSettings();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHeimdalPluginSettings saveSetting:data:withError:];
    }

    v15 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (void)deleteAllSettings
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (SOKerberosHeimdalPluginSettings)initWithCoder:(id)a3
{
  v49[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NSStringFromSelector(sel_realm);
  v6 = [v4 containsValueForKey:v5];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_realm);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];

    if (v9)
    {
      v10 = [(SOKerberosHeimdalPluginSettings *)self initWithRealm:v9];
      if (v10)
      {
        v11 = NSStringFromSelector(sel_isDefaultRealm);
        v12 = [v4 containsValueForKey:v11];

        if (v12)
        {
          v13 = NSStringFromSelector(sel_isDefaultRealm);
          v10->_defaultRealm = [v4 decodeBoolForKey:v13];
        }

        v14 = NSStringFromSelector(sel_domainRealmMapping);
        v15 = [v4 containsValueForKey:v14];

        if (v15)
        {
          v16 = MEMORY[0x277CBEB98];
          v49[0] = objc_opt_class();
          v49[1] = objc_opt_class();
          v49[2] = objc_opt_class();
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
          v18 = [v16 setWithArray:v17];
          v19 = NSStringFromSelector(sel_domainRealmMapping);
          v20 = [v4 decodeObjectOfClasses:v18 forKey:v19];
          domainRealmMapping = v10->_domainRealmMapping;
          v10->_domainRealmMapping = v20;
        }

        v22 = NSStringFromSelector(sel_hosts);
        v23 = [v4 containsValueForKey:v22];

        if (v23)
        {
          v24 = MEMORY[0x277CBEB98];
          v48[0] = objc_opt_class();
          v48[1] = objc_opt_class();
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
          v26 = [v24 setWithArray:v25];
          v27 = NSStringFromSelector(sel_hosts);
          v28 = [v4 decodeObjectOfClasses:v26 forKey:v27];
          hosts = v10->_hosts;
          v10->_hosts = v28;

          if (!v10->_hosts)
          {
            v30 = objc_opt_new();
            v31 = v10->_hosts;
            v10->_hosts = v30;
          }
        }

        v32 = NSStringFromSelector(sel_kdcs);
        v33 = [v4 containsValueForKey:v32];

        if (v33)
        {
          v34 = MEMORY[0x277CBEB98];
          v47[0] = objc_opt_class();
          v47[1] = objc_opt_class();
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
          v36 = [v34 setWithArray:{v35, v47[0]}];
          v37 = NSStringFromSelector(sel_kdcs);
          v38 = [v4 decodeObjectOfClasses:v36 forKey:v37];
          kdcs = v10->_kdcs;
          v10->_kdcs = v38;

          if (!v10->_kdcs)
          {
            v40 = objc_opt_new();
            v41 = v10->_kdcs;
            v10->_kdcs = v40;
          }
        }

        v42 = NSStringFromSelector(sel_credentialUseMode);
        v43 = [v4 containsValueForKey:v42];

        if (v43)
        {
          v44 = NSStringFromSelector(sel_credentialUseMode);
          v10->_credentialUseMode = [v4 decodeIntegerForKey:v44];
        }
      }

      self = v10;

      v9 = self;
    }
  }

  else
  {
    v9 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  realm = self->_realm;
  v5 = a3;
  v6 = NSStringFromSelector(sel_realm);
  [v5 encodeObject:realm forKey:v6];

  defaultRealm = self->_defaultRealm;
  v8 = NSStringFromSelector(sel_isDefaultRealm);
  [v5 encodeBool:defaultRealm forKey:v8];

  domainRealmMapping = self->_domainRealmMapping;
  v10 = NSStringFromSelector(sel_domainRealmMapping);
  [v5 encodeObject:domainRealmMapping forKey:v10];

  hosts = self->_hosts;
  v12 = NSStringFromSelector(sel_hosts);
  [v5 encodeObject:hosts forKey:v12];

  kdcs = self->_kdcs;
  v14 = NSStringFromSelector(sel_kdcs);
  [v5 encodeObject:kdcs forKey:v14];

  credentialUseMode = self->_credentialUseMode;
  v16 = NSStringFromSelector(sel_credentialUseMode);
  [v5 encodeInteger:credentialUseMode forKey:v16];
}

- (void)currentCredential
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentCredential:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0(&dword_24006C000, v2, v3, "error encoding currentCredential for realm: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)siteCode
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSiteCode:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0(&dword_24006C000, v2, v3, "error encoding siteCode for realm: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveWithError:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0(&dword_24006C000, v2, v3, "error encoding settings for realm: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveSetting:(void *)a1 data:(NSObject *)a2 withError:.cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 realm];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "createOrSaveSettings: %@, realm: %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)createSettingCacheEntryIfNeededWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createSettingCacheEntryIfNeededWithError:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createSettingCacheEntryIfNeededWithError:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createSettingCacheEntryIfNeededWithError:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createSettingCacheEntryIfNeededWithError:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createCacheEntryWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createCacheEntryWithError:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_24006C000, a2, OS_LOG_TYPE_ERROR, "Error creating cache entry: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)retrieveSetting:forRealm:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24006C000, v0, OS_LOG_TYPE_ERROR, "More than one entry for: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)retrieveCurrentSettingsForRealm:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)retrieveCurrentSettingsForRealm:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)retrieveAllCurrentSettings
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)deleteSettingsForRealm:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end