@interface VSManagedProfileConnection
+ (id)sharedConnection;
- (VSManagedProfileConnection)init;
- (id)providerUniqueID;
- (id)userToken;
- (int64_t)BOOLForManagedConfigurationBool:(int)bool;
- (int64_t)TVProviderModificationAllowed;
- (int64_t)UIAppInstallationAllowed;
- (int64_t)accountModificationAllowed;
- (int64_t)analyticsAllowed;
- (int64_t)appInstallationAllowed;
- (int64_t)maximumAppsRating;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation VSManagedProfileConnection

+ (id)sharedConnection
{
  if (sharedConnection___vs_lazy_init_predicate != -1)
  {
    +[VSManagedProfileConnection sharedConnection];
  }

  v3 = sharedConnection___vs_lazy_init_variable;

  return v3;
}

uint64_t __46__VSManagedProfileConnection_sharedConnection__block_invoke()
{
  sharedConnection___vs_lazy_init_variable = objc_alloc_init(VSManagedProfileConnection);

  return MEMORY[0x2821F96F8]();
}

- (VSManagedProfileConnection)init
{
  v10.receiver = self;
  v10.super_class = VSManagedProfileConnection;
  v2 = [(VSManagedProfileConnection *)&v10 init];
  if (v2)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = mEMORY[0x277D262A0];

    v5 = dispatch_queue_create(0, 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observers = v2->_observers;
    v2->_observers = v7;
  }

  return v2;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = [(VSManagedProfileConnection *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__VSManagedProfileConnection_registerObserver___block_invoke;
  v7[3] = &unk_278B73708;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

void __47__VSManagedProfileConnection_registerObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profileConnection];
  [v2 registerObserver:*(a1 + 32)];

  v3 = [*(a1 + 32) observers];
  [v3 addObject:*(a1 + 40)];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = [(VSManagedProfileConnection *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__VSManagedProfileConnection_unregisterObserver___block_invoke;
  v7[3] = &unk_278B73708;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

void __49__VSManagedProfileConnection_unregisterObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (id)providerUniqueID
{
  profileConnection = [(VSManagedProfileConnection *)self profileConnection];
  deviceOrganizationVendorID = [profileConnection deviceOrganizationVendorID];

  return deviceOrganizationVendorID;
}

- (id)userToken
{
  profileConnection = [(VSManagedProfileConnection *)self profileConnection];
  tvProviderUserToken = [profileConnection tvProviderUserToken];

  return tvProviderUserToken;
}

- (int64_t)analyticsAllowed
{
  profileConnection = [(VSManagedProfileConnection *)self profileConnection];
  v4 = -[VSManagedProfileConnection BOOLForManagedConfigurationBool:](self, "BOOLForManagedConfigurationBool:", [profileConnection effectiveBoolValueForSetting:*MEMORY[0x277D25E58]]);

  return v4;
}

- (int64_t)appInstallationAllowed
{
  profileConnection = [(VSManagedProfileConnection *)self profileConnection];
  v4 = -[VSManagedProfileConnection BOOLForManagedConfigurationBool:](self, "BOOLForManagedConfigurationBool:", [profileConnection effectiveBoolValueForSetting:*MEMORY[0x277D25D18]]);

  return v4;
}

- (int64_t)UIAppInstallationAllowed
{
  profileConnection = [(VSManagedProfileConnection *)self profileConnection];
  v4 = -[VSManagedProfileConnection BOOLForManagedConfigurationBool:](self, "BOOLForManagedConfigurationBool:", [profileConnection effectiveBoolValueForSetting:*MEMORY[0x277D260A8]]);

  return v4;
}

- (int64_t)accountModificationAllowed
{
  profileConnection = [(VSManagedProfileConnection *)self profileConnection];
  v4 = -[VSManagedProfileConnection BOOLForManagedConfigurationBool:](self, "BOOLForManagedConfigurationBool:", [profileConnection effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]]);

  return v4;
}

- (int64_t)TVProviderModificationAllowed
{
  profileConnection = [(VSManagedProfileConnection *)self profileConnection];
  v4 = -[VSManagedProfileConnection BOOLForManagedConfigurationBool:](self, "BOOLForManagedConfigurationBool:", [profileConnection effectiveBoolValueForSetting:*MEMORY[0x277D26078]]);

  return v4;
}

- (int64_t)maximumAppsRating
{
  profileConnection = [(VSManagedProfileConnection *)self profileConnection];
  v3 = [profileConnection effectiveValueForSetting:*MEMORY[0x277D25F70]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)BOOLForManagedConfigurationBool:(int)bool
{
  v3 = 1;
  if (bool != 1)
  {
    v3 = 2;
  }

  if (bool)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = [(VSManagedProfileConnection *)self notificationQueue:notification];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__VSManagedProfileConnection_profileConnectionDidReceiveEffectiveSettingsChangedNotification_userInfo___block_invoke;
  block[3] = &unk_278B733D8;
  block[4] = self;
  dispatch_async(v5, block);
}

void __103__VSManagedProfileConnection_profileConnectionDidReceiveEffectiveSettingsChangedNotification_userInfo___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 profileConnectionSettingsChanged:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end