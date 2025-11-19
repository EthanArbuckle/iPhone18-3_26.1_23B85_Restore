@interface SOKerberosRealmSettings
- (BOOL)delayUserSetupCleared;
- (BOOL)networkAvailable;
- (BOOL)passwordChangeInProgress;
- (BOOL)passwordNeverExpires;
- (BOOL)platformSSOLoginInProgress;
- (BOOL)userCancelledLogin;
- (NSData)pkinitPersistentRef;
- (NSDate)dateADPasswordCanChange;
- (NSDate)dateADPasswordLastChangedWhenSynced;
- (NSDate)dateExpirationChecked;
- (NSDate)dateExpirationNotificationSent;
- (NSDate)dateLastLogin;
- (NSDate)dateLocalPasswordLastChanged;
- (NSDate)dateLocalPasswordLastChangedWhenSynced;
- (NSDate)dateLoginCancelled;
- (NSDate)dateNextPacRefresh;
- (NSDate)datePasswordExpires;
- (NSDate)datePasswordLastChanged;
- (NSDate)datePasswordLastChangedAtLogin;
- (NSDate)dateUserSignedOut;
- (NSNumber)daysUntilExpiration;
- (NSString)networkHomeDirectory;
- (NSString)smartCardTokenID;
- (NSString)userName;
- (NSString)userPrincipalName;
- (NSUUID)credentialUUID;
- (OS_dispatch_semaphore)platformSSOLoginSemaphore;
- (SOKerberosRealmSettings)initWithRealm:(id)a3;
- (id)dumpSiteCodeCache;
- (id)realmKey:(id)a3;
- (id)siteCodeForNetworkFingerprint:(id)a3;
- (void)cacheSiteCode:(id)a3;
- (void)dealloc;
- (void)loadSiteCodes;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)platformSSOLoginInProgress;
- (void)removeAllValues;
- (void)saveSiteCodes;
- (void)setCredentialUUID:(id)a3;
- (void)setDateADPasswordCanChange:(id)a3;
- (void)setDateADPasswordLastChangedWhenSynced:(id)a3;
- (void)setDateExpirationChecked:(id)a3;
- (void)setDateExpirationNotificationSent:(id)a3;
- (void)setDateLastLogin:(id)a3;
- (void)setDateLocalPasswordLastChanged:(id)a3;
- (void)setDateLocalPasswordLastChangedWhenSynced:(id)a3;
- (void)setDateLoginCancelled:(id)a3;
- (void)setDateNextPacRefresh:(id)a3;
- (void)setDatePasswordExpires:(id)a3;
- (void)setDatePasswordLastChanged:(id)a3;
- (void)setDatePasswordLastChangedAtLogin:(id)a3;
- (void)setDateUserSignedOut:(id)a3;
- (void)setNetworkHomeDirectory:(id)a3;
- (void)setPkinitPersistentRef:(id)a3;
- (void)setPlatformSSOLoginInProgress:(BOOL)a3;
- (void)setSmartCardTokenID:(id)a3;
- (void)setUserName:(id)a3;
- (void)setUserPrincipalName:(id)a3;
- (void)startListeningForPlatformSSOTGTChanges;
@end

@implementation SOKerberosRealmSettings

- (SOKerberosRealmSettings)initWithRealm:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SO_LOG_SOKerberosRealmSettings();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SOKerberosRealmSettings initWithRealm:]";
    v21 = 2112;
    v22 = self;
    _os_log_impl(&dword_24006C000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v18.receiver = self;
  v18.super_class = SOKerberosRealmSettings;
  v7 = [(SOKerberosRealmSettings *)&v18 init];
  if (v7)
  {
    v8 = objc_opt_new();
    siteCodeCache = v7->_siteCodeCache;
    v7->_siteCodeCache = v8;

    objc_storeStrong(&v7->_realm, a3);
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    defaults = v7->_defaults;
    v7->_defaults = v10;

    v12 = v7->_defaults;
    v13 = [(SOKerberosRealmSettings *)v7 realmKey:@"siteCodeCache"];
    [(NSUserDefaults *)v12 addObserver:v7 forKeyPath:v13 options:5 context:0];

    v7->_notifyToken = -1;
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.Kerberos.%@", v5];
    notificationName = v7->_notificationName;
    v7->_notificationName = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_24006C000, v0, v1, "notify_cancel() failed with %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)realmKey:(id)a3
{
  v4 = a3;
  v5 = [(SOKerberosRealmSettings *)self realm];
  v6 = [v5 stringByAppendingFormat:@":%@", v4];

  return v6;
}

- (void)removeAllValues
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [v3 dictionaryRepresentation];
  v5 = [v4 allKeys];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [(SOKerberosRealmSettings *)self realm];
        v13 = [v12 stringByAppendingFormat:@":"];
        v14 = [v11 hasPrefix:v13];

        if (v14)
        {
          v15 = [(SOKerberosRealmSettings *)self defaults];
          [v15 removeObjectForKey:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)userPrincipalName
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"userPrincipalName"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setUserPrincipalName:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"userPrincipalName"];
  [v6 setObject:v4 forKey:v5];
}

- (NSString)userName
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"userName"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setUserName:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"userName"];
  [v6 setObject:v4 forKey:v5];
}

- (NSUUID)credentialUUID
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"credentialUUID"];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCredentialUUID:(id)a3
{
  v4 = a3;
  v7 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [v4 UUIDString];

  v6 = [(SOKerberosRealmSettings *)self realmKey:@"credentialUUID"];
  [v7 setObject:v5 forKey:v6];
}

- (NSData)pkinitPersistentRef
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"pkinitPersistentRef"];
  v5 = [v3 objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(SOKerberosRealmSettings *)self defaults];
    v9 = [(SOKerberosRealmSettings *)self realmKey:@"pkinitPersistientRef"];
    v7 = [v8 objectForKey:v9];
  }

  return v7;
}

- (void)setPkinitPersistentRef:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"pkinitPersistentRef"];
  [v6 setObject:v4 forKey:v5];
}

- (NSString)smartCardTokenID
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"smartCardTokenID"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setSmartCardTokenID:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"smartCardTokenID"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)dateLastLogin
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateLastLogin"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateLastLogin:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateLastLogin"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)datePasswordLastChanged
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordLastChanged"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDatePasswordLastChanged:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordLastChanged"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)datePasswordLastChangedAtLogin
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordLastChangedAtLogin"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDatePasswordLastChangedAtLogin:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordLastChangedAtLogin"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)dateNextPacRefresh
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateNextPacRefresh"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateNextPacRefresh:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateNextPacRefresh"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)dateADPasswordCanChange
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordCanChange"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateADPasswordCanChange:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordCanChange"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)dateLocalPasswordLastChanged
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateLocalPasswordLastChanged"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateLocalPasswordLastChanged:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateLocalPasswordLastChanged"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)dateADPasswordLastChangedWhenSynced
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateADPasswordLastChangedWhenSynced"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateADPasswordLastChangedWhenSynced:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateADPasswordLastChangedWhenSynced"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)dateLocalPasswordLastChangedWhenSynced
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateLocalPasswordLastChangedWhenSynced"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateLocalPasswordLastChangedWhenSynced:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateLocalPasswordLastChangedWhenSynced"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)datePasswordExpires
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordExpires"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDatePasswordExpires:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordExpires"];
  [v6 setObject:v4 forKey:v5];
}

- (BOOL)passwordNeverExpires
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"passwordNeverExpires"];
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

- (NSDate)dateExpirationNotificationSent
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateExpirationNotificationSent"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateExpirationNotificationSent:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateExpirationNotificationSent"];
  [v6 setObject:v4 forKey:v5];
}

- (NSDate)dateExpirationChecked
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateExpirationChecked"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateExpirationChecked:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateExpirationChecked"];
  [v6 setObject:v4 forKey:v5];
}

- (NSNumber)daysUntilExpiration
{
  v2 = [(SOKerberosRealmSettings *)self datePasswordExpires];
  [v2 timeIntervalSinceNow];
  v4 = v3;

  v5 = MEMORY[0x277CCABB0];

  return [v5 numberWithDouble:v4 / 86400.0];
}

- (NSString)networkHomeDirectory
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"networkHomeDirectory"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setNetworkHomeDirectory:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"networkHomeDirectory"];
  [v6 setObject:v4 forKey:v5];
}

- (BOOL)delayUserSetupCleared
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"delayUserSetupCleared"];
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

- (BOOL)networkAvailable
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"networkAvailable"];
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

- (BOOL)userCancelledLogin
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"userCancelledLogin"];
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

- (NSDate)dateLoginCancelled
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateLoginCancelled"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateLoginCancelled:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateLoginCancelled"];
  [v6 setObject:v4 forKey:v5];
}

- (BOOL)passwordChangeInProgress
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"passwordChangeInProgress"];
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

- (NSDate)dateUserSignedOut
{
  v3 = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateUserSignedOut"];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setDateUserSignedOut:(id)a3
{
  v4 = a3;
  v6 = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateUserSignedOut"];
  [v6 setObject:v4 forKey:v5];
}

- (OS_dispatch_semaphore)platformSSOLoginSemaphore
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_platformSSOLoginSemaphore;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)platformSSOLoginInProgress
{
  p_notifyToken = &self->_notifyToken;
  notifyToken = self->_notifyToken;
  if (notifyToken == -1)
  {
    if (notify_register_check([(NSString *)self->_notificationName UTF8String], p_notifyToken))
    {
      v5 = SO_LOG_SOKerberosRealmSettings();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosRealmSettings platformSSOLoginInProgress];
      }
    }

    notifyToken = *p_notifyToken;
    state64 = 0;
    if (notifyToken == -1)
    {
      v6 = SO_LOG_SOKerberosRealmSettings();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(SOKerberosRealmSettings *)v6 platformSSOLoginInProgress];
      }

      goto LABEL_13;
    }
  }

  else
  {
    state64 = 0;
  }

  if (notify_get_state(notifyToken, &state64))
  {
    v6 = SO_LOG_SOKerberosRealmSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosRealmSettings platformSSOLoginInProgress];
    }

LABEL_13:
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:state64];
  v8 = [v7 BOOLValue];

  return v8;
}

- (void)setPlatformSSOLoginInProgress:(BOOL)a3
{
  v3 = a3;
  p_notifyToken = &self->_notifyToken;
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    goto LABEL_17;
  }

  if (notify_register_check([(NSString *)self->_notificationName UTF8String], p_notifyToken))
  {
    v7 = SO_LOG_SOKerberosRealmSettings();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosRealmSettings platformSSOLoginInProgress];
    }
  }

  notifyToken = *p_notifyToken;
  if (*p_notifyToken != -1)
  {
LABEL_17:
    if (notify_set_state(notifyToken, v3))
    {
      v8 = SO_LOG_SOKerberosRealmSettings();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosRealmSettings setPlatformSSOLoginInProgress:];
      }
    }
  }

  if (notify_post([(NSString *)self->_notificationName UTF8String]))
  {
    v9 = SO_LOG_SOKerberosRealmSettings();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosRealmSettings setPlatformSSOLoginInProgress:];
    }
  }
}

- (void)startListeningForPlatformSSOTGTChanges
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_24006C000, v0, v1, "notify_register_dispatch failed: %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__SOKerberosRealmSettings_startListeningForPlatformSSOTGTChanges__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = [*(a1 + 32) platformSSOLoginInProgress];
  v3 = *(*(a1 + 32) + 16);
  if (v2)
  {
    if (v3)
    {
      goto LABEL_7;
    }

    v4 = dispatch_semaphore_create(0);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    dispatch_semaphore_signal(v3);
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

LABEL_7:
  objc_sync_exit(obj);
}

- (id)dumpSiteCodeCache
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SOKerberosRealmSettings *)v2 siteCodeCache];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (void)cacheSiteCode:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(SOKerberosRealmSettings *)v5 siteCodeCache];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 networkFingerprint];
        v13 = [v4 networkFingerprint];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          [(NSMutableArray *)v5->_siteCodeCache removeObject:v11];
        }

        [v11 age];
        if (v15 > 432000.0)
        {
          [(NSMutableArray *)v5->_siteCodeCache removeObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = SO_LOG_SOKerberosRealmSettings();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v4 code];
    [(SOKerberosRealmSettings *)v17 cacheSiteCode:v23, v16];
  }

  [(NSMutableArray *)v5->_siteCodeCache addObject:v4];
  [(SOKerberosRealmSettings *)v5 saveSiteCodes];
  objc_sync_exit(v5);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)siteCodeForNetworkFingerprint:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(SOKerberosRealmSettings *)v5 siteCodeCache];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 networkFingerprint];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = SO_LOG_SOKerberosRealmSettings();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v10 code];
            [(SOKerberosRealmSettings *)v14 siteCodeForNetworkFingerprint:v21, v13];
          }

          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  objc_sync_exit(v5);
  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = SO_LOG_SOKerberosRealmSettings();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosRealmSettings observeValueForKeyPath:ofObject:change:context:];
  }

  v13 = [(SOKerberosRealmSettings *)self realmKey:@"siteCodeCache"];
  v14 = [v9 isEqualToString:v13];

  if (v14)
  {
    [(SOKerberosRealmSettings *)self loadSiteCodes];
  }

  v15 = [(SOKerberosRealmSettings *)self realmKey:@"platformSSOLoginInProgress"];
  v16 = [v9 isEqualToString:v15];

  if (v16)
  {
    v17 = self;
    objc_sync_enter(v17);
    v18 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    if (v18)
    {
      v19 = SO_LOG_SOKerberosRealmSettings();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosRealmSettings observeValueForKeyPath:ofObject:change:context:];
      }

      v20 = dispatch_semaphore_create(0);
      platformSSOLoginSemaphore = v17->_platformSSOLoginSemaphore;
      v17->_platformSSOLoginSemaphore = v20;
    }

    else
    {
      v22 = [(SOKerberosRealmSettings *)v17 platformSSOLoginSemaphore];

      if (v22)
      {
        v23 = SO_LOG_SOKerberosRealmSettings();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosRealmSettings observeValueForKeyPath:ofObject:change:context:];
        }

        dispatch_semaphore_signal(v17->_platformSSOLoginSemaphore);
      }
    }

    objc_sync_exit(v17);
  }
}

- (void)loadSiteCodes
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24006C000, v0, OS_LOG_TYPE_ERROR, "Error deserializing plist: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)saveSiteCodes
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24006C000, v0, OS_LOG_TYPE_ERROR, "Error archiving site code cache: error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)platformSSOLoginInProgress
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_24006C000, v0, v1, "notify_get_state() failed with error %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPlatformSSOLoginInProgress:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_24006C000, v0, v1, "notify_set_state() failed with error %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPlatformSSOLoginInProgress:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_24006C000, v0, v1, "notify_post() failed with error %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cacheSiteCode:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_24006C000, a3, a3, "caching site code: %@", a2);
}

- (void)siteCodeForNetworkFingerprint:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_24006C000, a3, a3, "found cached site code: %@", a2);
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_24006C000, v1, OS_LOG_TYPE_DEBUG, "Defaults updated: %@, %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_24006C000, v0, v1, "Creating sem: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_24006C000, v0, v1, "signaling sem: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end