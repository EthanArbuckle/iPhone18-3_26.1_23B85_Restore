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
- (SOKerberosRealmSettings)initWithRealm:(id)realm;
- (id)dumpSiteCodeCache;
- (id)realmKey:(id)key;
- (id)siteCodeForNetworkFingerprint:(id)fingerprint;
- (void)cacheSiteCode:(id)code;
- (void)dealloc;
- (void)loadSiteCodes;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)platformSSOLoginInProgress;
- (void)removeAllValues;
- (void)saveSiteCodes;
- (void)setCredentialUUID:(id)d;
- (void)setDateADPasswordCanChange:(id)change;
- (void)setDateADPasswordLastChangedWhenSynced:(id)synced;
- (void)setDateExpirationChecked:(id)checked;
- (void)setDateExpirationNotificationSent:(id)sent;
- (void)setDateLastLogin:(id)login;
- (void)setDateLocalPasswordLastChanged:(id)changed;
- (void)setDateLocalPasswordLastChangedWhenSynced:(id)synced;
- (void)setDateLoginCancelled:(id)cancelled;
- (void)setDateNextPacRefresh:(id)refresh;
- (void)setDatePasswordExpires:(id)expires;
- (void)setDatePasswordLastChanged:(id)changed;
- (void)setDatePasswordLastChangedAtLogin:(id)login;
- (void)setDateUserSignedOut:(id)out;
- (void)setNetworkHomeDirectory:(id)directory;
- (void)setPkinitPersistentRef:(id)ref;
- (void)setPlatformSSOLoginInProgress:(BOOL)progress;
- (void)setSmartCardTokenID:(id)d;
- (void)setUserName:(id)name;
- (void)setUserPrincipalName:(id)name;
- (void)startListeningForPlatformSSOTGTChanges;
@end

@implementation SOKerberosRealmSettings

- (SOKerberosRealmSettings)initWithRealm:(id)realm
{
  v23 = *MEMORY[0x277D85DE8];
  realmCopy = realm;
  v6 = SO_LOG_SOKerberosRealmSettings();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SOKerberosRealmSettings initWithRealm:]";
    v21 = 2112;
    selfCopy = self;
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

    objc_storeStrong(&v7->_realm, realm);
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    defaults = v7->_defaults;
    v7->_defaults = standardUserDefaults;

    v12 = v7->_defaults;
    v13 = [(SOKerberosRealmSettings *)v7 realmKey:@"siteCodeCache"];
    [(NSUserDefaults *)v12 addObserver:v7 forKeyPath:v13 options:5 context:0];

    v7->_notifyToken = -1;
    realmCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.Kerberos.%@", realmCopy];
    notificationName = v7->_notificationName;
    v7->_notificationName = realmCopy;
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

- (id)realmKey:(id)key
{
  keyCopy = key;
  realm = [(SOKerberosRealmSettings *)self realm];
  keyCopy = [realm stringByAppendingFormat:@":%@", keyCopy];

  return keyCopy;
}

- (void)removeAllValues
{
  v22 = *MEMORY[0x277D85DE8];
  defaults = [(SOKerberosRealmSettings *)self defaults];
  dictionaryRepresentation = [defaults dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = allKeys;
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
        realm = [(SOKerberosRealmSettings *)self realm];
        v13 = [realm stringByAppendingFormat:@":"];
        v14 = [v11 hasPrefix:v13];

        if (v14)
        {
          defaults2 = [(SOKerberosRealmSettings *)self defaults];
          [defaults2 removeObjectForKey:v11];
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
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"userPrincipalName"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setUserPrincipalName:(id)name
{
  nameCopy = name;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"userPrincipalName"];
  [defaults setObject:nameCopy forKey:v5];
}

- (NSString)userName
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"userName"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setUserName:(id)name
{
  nameCopy = name;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"userName"];
  [defaults setObject:nameCopy forKey:v5];
}

- (NSUUID)credentialUUID
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"credentialUUID"];
  v5 = [defaults objectForKey:v4];

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

- (void)setCredentialUUID:(id)d
{
  dCopy = d;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  uUIDString = [dCopy UUIDString];

  v6 = [(SOKerberosRealmSettings *)self realmKey:@"credentialUUID"];
  [defaults setObject:uUIDString forKey:v6];
}

- (NSData)pkinitPersistentRef
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"pkinitPersistentRef"];
  v5 = [defaults objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    defaults2 = [(SOKerberosRealmSettings *)self defaults];
    v9 = [(SOKerberosRealmSettings *)self realmKey:@"pkinitPersistientRef"];
    v7 = [defaults2 objectForKey:v9];
  }

  return v7;
}

- (void)setPkinitPersistentRef:(id)ref
{
  refCopy = ref;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"pkinitPersistentRef"];
  [defaults setObject:refCopy forKey:v5];
}

- (NSString)smartCardTokenID
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"smartCardTokenID"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setSmartCardTokenID:(id)d
{
  dCopy = d;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"smartCardTokenID"];
  [defaults setObject:dCopy forKey:v5];
}

- (NSDate)dateLastLogin
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateLastLogin"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateLastLogin:(id)login
{
  loginCopy = login;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateLastLogin"];
  [defaults setObject:loginCopy forKey:v5];
}

- (NSDate)datePasswordLastChanged
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordLastChanged"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDatePasswordLastChanged:(id)changed
{
  changedCopy = changed;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordLastChanged"];
  [defaults setObject:changedCopy forKey:v5];
}

- (NSDate)datePasswordLastChangedAtLogin
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordLastChangedAtLogin"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDatePasswordLastChangedAtLogin:(id)login
{
  loginCopy = login;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordLastChangedAtLogin"];
  [defaults setObject:loginCopy forKey:v5];
}

- (NSDate)dateNextPacRefresh
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateNextPacRefresh"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateNextPacRefresh:(id)refresh
{
  refreshCopy = refresh;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateNextPacRefresh"];
  [defaults setObject:refreshCopy forKey:v5];
}

- (NSDate)dateADPasswordCanChange
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordCanChange"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateADPasswordCanChange:(id)change
{
  changeCopy = change;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordCanChange"];
  [defaults setObject:changeCopy forKey:v5];
}

- (NSDate)dateLocalPasswordLastChanged
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateLocalPasswordLastChanged"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateLocalPasswordLastChanged:(id)changed
{
  changedCopy = changed;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateLocalPasswordLastChanged"];
  [defaults setObject:changedCopy forKey:v5];
}

- (NSDate)dateADPasswordLastChangedWhenSynced
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateADPasswordLastChangedWhenSynced"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateADPasswordLastChangedWhenSynced:(id)synced
{
  syncedCopy = synced;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateADPasswordLastChangedWhenSynced"];
  [defaults setObject:syncedCopy forKey:v5];
}

- (NSDate)dateLocalPasswordLastChangedWhenSynced
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateLocalPasswordLastChangedWhenSynced"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateLocalPasswordLastChangedWhenSynced:(id)synced
{
  syncedCopy = synced;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateLocalPasswordLastChangedWhenSynced"];
  [defaults setObject:syncedCopy forKey:v5];
}

- (NSDate)datePasswordExpires
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordExpires"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDatePasswordExpires:(id)expires
{
  expiresCopy = expires;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"datePasswordExpires"];
  [defaults setObject:expiresCopy forKey:v5];
}

- (BOOL)passwordNeverExpires
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"passwordNeverExpires"];
  v5 = [defaults BOOLForKey:v4];

  return v5;
}

- (NSDate)dateExpirationNotificationSent
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateExpirationNotificationSent"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateExpirationNotificationSent:(id)sent
{
  sentCopy = sent;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateExpirationNotificationSent"];
  [defaults setObject:sentCopy forKey:v5];
}

- (NSDate)dateExpirationChecked
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateExpirationChecked"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateExpirationChecked:(id)checked
{
  checkedCopy = checked;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateExpirationChecked"];
  [defaults setObject:checkedCopy forKey:v5];
}

- (NSNumber)daysUntilExpiration
{
  datePasswordExpires = [(SOKerberosRealmSettings *)self datePasswordExpires];
  [datePasswordExpires timeIntervalSinceNow];
  v4 = v3;

  v5 = MEMORY[0x277CCABB0];

  return [v5 numberWithDouble:v4 / 86400.0];
}

- (NSString)networkHomeDirectory
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"networkHomeDirectory"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setNetworkHomeDirectory:(id)directory
{
  directoryCopy = directory;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"networkHomeDirectory"];
  [defaults setObject:directoryCopy forKey:v5];
}

- (BOOL)delayUserSetupCleared
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"delayUserSetupCleared"];
  v5 = [defaults BOOLForKey:v4];

  return v5;
}

- (BOOL)networkAvailable
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"networkAvailable"];
  v5 = [defaults BOOLForKey:v4];

  return v5;
}

- (BOOL)userCancelledLogin
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"userCancelledLogin"];
  v5 = [defaults BOOLForKey:v4];

  return v5;
}

- (NSDate)dateLoginCancelled
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateLoginCancelled"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateLoginCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateLoginCancelled"];
  [defaults setObject:cancelledCopy forKey:v5];
}

- (BOOL)passwordChangeInProgress
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"passwordChangeInProgress"];
  v5 = [defaults BOOLForKey:v4];

  return v5;
}

- (NSDate)dateUserSignedOut
{
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v4 = [(SOKerberosRealmSettings *)self realmKey:@"dateUserSignedOut"];
  v5 = [defaults objectForKey:v4];

  return v5;
}

- (void)setDateUserSignedOut:(id)out
{
  outCopy = out;
  defaults = [(SOKerberosRealmSettings *)self defaults];
  v5 = [(SOKerberosRealmSettings *)self realmKey:@"dateUserSignedOut"];
  [defaults setObject:outCopy forKey:v5];
}

- (OS_dispatch_semaphore)platformSSOLoginSemaphore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_platformSSOLoginSemaphore;
  objc_sync_exit(selfCopy);

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
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)setPlatformSSOLoginInProgress:(BOOL)progress
{
  progressCopy = progress;
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
    if (notify_set_state(notifyToken, progressCopy))
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  siteCodeCache = [(SOKerberosRealmSettings *)selfCopy siteCodeCache];
  v4 = [siteCodeCache copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)cacheSiteCode:(id)code
{
  v25 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  siteCodeCache = [(SOKerberosRealmSettings *)selfCopy siteCodeCache];
  v7 = [siteCodeCache copy];

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
        networkFingerprint = [v11 networkFingerprint];
        networkFingerprint2 = [codeCopy networkFingerprint];
        v14 = [networkFingerprint isEqualToString:networkFingerprint2];

        if (v14)
        {
          [(NSMutableArray *)selfCopy->_siteCodeCache removeObject:v11];
        }

        [v11 age];
        if (v15 > 432000.0)
        {
          [(NSMutableArray *)selfCopy->_siteCodeCache removeObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = SO_LOG_SOKerberosRealmSettings();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    code = [codeCopy code];
    [(SOKerberosRealmSettings *)code cacheSiteCode:v23, v16];
  }

  [(NSMutableArray *)selfCopy->_siteCodeCache addObject:codeCopy];
  [(SOKerberosRealmSettings *)selfCopy saveSiteCodes];
  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)siteCodeForNetworkFingerprint:(id)fingerprint
{
  v23 = *MEMORY[0x277D85DE8];
  fingerprintCopy = fingerprint;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  siteCodeCache = [(SOKerberosRealmSettings *)selfCopy siteCodeCache];
  v7 = [siteCodeCache countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(siteCodeCache);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        networkFingerprint = [v10 networkFingerprint];
        v12 = [networkFingerprint isEqualToString:fingerprintCopy];

        if (v12)
        {
          v13 = SO_LOG_SOKerberosRealmSettings();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            code = [v10 code];
            [(SOKerberosRealmSettings *)code siteCodeForNetworkFingerprint:v21, v13];
          }

          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [siteCodeCache countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = SO_LOG_SOKerberosRealmSettings();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosRealmSettings observeValueForKeyPath:ofObject:change:context:];
  }

  v13 = [(SOKerberosRealmSettings *)self realmKey:@"siteCodeCache"];
  v14 = [pathCopy isEqualToString:v13];

  if (v14)
  {
    [(SOKerberosRealmSettings *)self loadSiteCodes];
  }

  v15 = [(SOKerberosRealmSettings *)self realmKey:@"platformSSOLoginInProgress"];
  v16 = [pathCopy isEqualToString:v15];

  if (v16)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v18 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    if (v18)
    {
      v19 = SO_LOG_SOKerberosRealmSettings();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosRealmSettings observeValueForKeyPath:ofObject:change:context:];
      }

      v20 = dispatch_semaphore_create(0);
      platformSSOLoginSemaphore = selfCopy->_platformSSOLoginSemaphore;
      selfCopy->_platformSSOLoginSemaphore = v20;
    }

    else
    {
      platformSSOLoginSemaphore = [(SOKerberosRealmSettings *)selfCopy platformSSOLoginSemaphore];

      if (platformSSOLoginSemaphore)
      {
        v23 = SO_LOG_SOKerberosRealmSettings();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosRealmSettings observeValueForKeyPath:ofObject:change:context:];
        }

        dispatch_semaphore_signal(selfCopy->_platformSSOLoginSemaphore);
      }
    }

    objc_sync_exit(selfCopy);
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