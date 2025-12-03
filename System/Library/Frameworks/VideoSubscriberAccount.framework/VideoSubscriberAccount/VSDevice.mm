@interface VSDevice
+ (BOOL)_getMobileGestaltBoolean:(__CFString *)boolean withCopyAnswer:(void *)answer;
+ (BOOL)_runningACustomerBuildWithCopyAnswer:(void *)answer;
+ (id)currentDevice;
+ (unint64_t)_deviceTypeWithCopyAnswer:(void *)answer;
- (BOOL)isRunningACustomerBuild;
- (BOOL)isRunningAnInternalBuild;
- (BOOL)setIgnoreSetTopBoxProfile:(BOOL)profile;
- (NSString)bincompatOS;
- (NSString)bincompatPlatform;
- (VSDevice)init;
- (id)_stringForKey:(__CFString *)key copyAnswer:(void *)answer;
- (id)accountDeletionConfirmationMessageForIdentityProviderDisplayName:(id)name;
- (id)developerIdentityProviderDeletionConfirmationMessage;
- (id)name;
- (id)productVersion;
- (id)serialNumber;
- (id)stringForAMSDeviceFamilies;
- (id)stringForAMSPlatform;
- (id)stringForAMSPlatformAttributes;
- (unint64_t)deviceType;
- (void)cloudConfigurationDidChange;
- (void)dealloc;
- (void)fetchDeviceManagedSetTopBoxProfileWithCompletion:(id)completion;
- (void)fetchSetTopBoxProfileWithCompletion:(id)completion;
- (void)refreshSetTopBoxProfile:(id)profile;
- (void)registerObserver:(id)observer;
- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info;
- (void)setProfileConnection:(id)connection;
- (void)unregisterObserver:(id)observer;
@end

@implementation VSDevice

+ (id)currentDevice
{
  if (currentDevice___vs_lazy_init_predicate != -1)
  {
    +[VSDevice currentDevice];
  }

  v3 = currentDevice___vs_lazy_init_variable;

  return v3;
}

uint64_t __25__VSDevice_currentDevice__block_invoke()
{
  v0 = objc_alloc_init(VSDevice);
  v1 = currentDevice___vs_lazy_init_variable;
  currentDevice___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (VSDevice)init
{
  v22.receiver = self;
  v22.super_class = VSDevice;
  v2 = [(VSDevice *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->_copyAnswer = MEMORY[0x277D82270];
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v3->_privateQueue;
    v3->_privateQueue = v4;

    [(NSOperationQueue *)v3->_privateQueue setName:@"VSDevice"];
    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    propertyFetchQueue = v3->_propertyFetchQueue;
    v3->_propertyFetchQueue = v6;

    [(NSOperationQueue *)v3->_propertyFetchQueue setName:@"VSDevice - PropertyFetch"];
    [(NSOperationQueue *)v3->_propertyFetchQueue setMaxConcurrentOperationCount:1];
    v8 = dispatch_queue_create(0, 0);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observers = v3->_observers;
    v3->_observers = v10;

    v12 = objc_alloc_init(VSPreferences);
    preferences = v3->_preferences;
    v3->_preferences = v12;

    v14 = +[VSManagedProfileConnection sharedConnection];
    profileConnection = v3->_profileConnection;
    v3->_profileConnection = v14;

    [(VSManagedProfileConnection *)v3->_profileConnection registerObserver:v3];
    newDeveloperSettingsFetchOperationBlock = v3->_newDeveloperSettingsFetchOperationBlock;
    v3->_newDeveloperSettingsFetchOperationBlock = &__block_literal_global_55_0;

    v17 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSSetTopBoxStateChangedNotification"];
    setTopBoxStateRemoteNotifier = v3->_setTopBoxStateRemoteNotifier;
    v3->_setTopBoxStateRemoteNotifier = v17;

    v19 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSDeveloperServiceSettingsDidChangeNotification"];
    developerSettingsRemoteNotifier = v3->_developerSettingsRemoteNotifier;
    v3->_developerSettingsRemoteNotifier = v19;

    [(VSRemoteNotifier *)v3->_developerSettingsRemoteNotifier setDelegate:v3];
  }

  return v3;
}

VSDeveloperSettingsFetchOperation *__16__VSDevice_init__block_invoke()
{
  v0 = objc_alloc_init(VSDeveloperSettingsFetchOperation);

  return v0;
}

- (void)setProfileConnection:(id)connection
{
  connectionCopy = connection;
  [(VSManagedProfileConnection *)self->_profileConnection unregisterObserver:self];
  profileConnection = self->_profileConnection;
  self->_profileConnection = connectionCopy;
  v6 = connectionCopy;

  [(VSManagedProfileConnection *)self->_profileConnection registerObserver:self];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = [(VSDevice *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__VSDevice_registerObserver___block_invoke;
  v7[3] = &unk_278B73708;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

void __29__VSDevice_registerObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = [(VSDevice *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__VSDevice_unregisterObserver___block_invoke;
  v7[3] = &unk_278B73708;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

void __31__VSDevice_unregisterObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  profileConnection = [(VSDevice *)self profileConnection];
  [profileConnection unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = VSDevice;
  [(VSDevice *)&v5 dealloc];
}

- (id)developerIdentityProviderDeletionConfirmationMessage
{
  deviceType = [(VSDevice *)self deviceType];
  if (deviceType > 5 || (v3 = off_278B75130[deviceType], [MEMORY[0x277CCA8D8] vs_frameworkBundle], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "localizedStringForKey:value:table:", v3, 0, 0), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The question parameter must not be nil."];
    v5 = 0;
  }

  return v5;
}

- (id)accountDeletionConfirmationMessageForIdentityProviderDisplayName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy length];
  deviceType = [(VSDevice *)self deviceType];
  if (!v5)
  {
    if (deviceType >= 4)
    {
      if (deviceType == 4)
      {
        vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
        v11 = vs_frameworkBundle;
        v12 = @"DELETE_ACCOUNT_CONFIRMATION_MESSAGE_TV";
        goto LABEL_8;
      }

      if (deviceType != 5)
      {
        goto LABEL_16;
      }
    }

    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v11 = vs_frameworkBundle;
    v12 = @"DELETE_ACCOUNT_CONFIRMATION_MESSAGE_GENERIC";
LABEL_8:
    v9 = [vs_frameworkBundle localizedStringForKey:v12 value:0 table:0];

    goto LABEL_9;
  }

  if (deviceType < 4)
  {
    goto LABEL_3;
  }

  if (deviceType == 4)
  {
    vs_frameworkBundle2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    vs_frameworkBundle3 = [vs_frameworkBundle2 localizedStringForKey:@"DELETE_ACCOUNT_CONFIRMATION_MESSAGE_FORMAT_TV" value:0 table:0];

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:vs_frameworkBundle3, nameCopy];
LABEL_4:
    v9 = nameCopy;

    if (!v9)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (deviceType == 5)
  {
LABEL_3:
    vs_frameworkBundle3 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    nameCopy = [vs_frameworkBundle3 localizedStringForKey:@"DELETE_ACCOUNT_CONFIRMATION_MESSAGE_FORMAT_GENERIC" value:0 table:0];
    goto LABEL_4;
  }

LABEL_13:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The message parameter must not be nil."];
LABEL_16:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The message parameter must not be nil."];
  v9 = 0;
LABEL_17:

  return v9;
}

- (void)fetchSetTopBoxProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  newDeveloperSettingsFetchOperationBlock = [(VSDevice *)self newDeveloperSettingsFetchOperationBlock];
  v6 = newDeveloperSettingsFetchOperationBlock[2]();

  v7 = MEMORY[0x277CCA8C8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__VSDevice_fetchSetTopBoxProfileWithCompletion___block_invoke;
  v13[3] = &unk_278B73848;
  v14 = v6;
  selfCopy = self;
  v16 = completionCopy;
  v8 = completionCopy;
  v9 = v6;
  v10 = [v7 blockOperationWithBlock:v13];
  [v10 addDependency:v9];
  privateQueue = [(VSDevice *)self privateQueue];
  [privateQueue addOperation:v9];

  privateQueue2 = [(VSDevice *)self privateQueue];
  [privateQueue2 addOperation:v10];
}

void __48__VSDevice_fetchSetTopBoxProfileWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__VSDevice_fetchSetTopBoxProfileWithCompletion___block_invoke_2;
  v7[3] = &unk_278B75098;
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__VSDevice_fetchSetTopBoxProfileWithCompletion___block_invoke_3;
  v5[3] = &unk_278B73910;
  v6 = *(a1 + 48);
  [v3 unwrapObject:v7 error:v5];
}

void __48__VSDevice_fetchSetTopBoxProfileWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(a1 + 32) preferences];
  v4 = [v3 ignoreSetTopBoxProfile];

  v5 = [*(a1 + 32) profileConnection];
  v6 = [v5 providerUniqueID];

  if (([v16 isInSetTopBoxMode] & 1) != 0 || v6)
  {
    v7 = [v16 isInSetTopBoxMode];
    if (!v7)
    {
      if (v4)
      {
        v10 = 0;
        v11 = 0;
        v9 = &stru_284DD5B48;
      }

      else
      {
        if (!v6)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The providerIDOrNil parameter must not be nil."];
        }

        v9 = v6;
        v12 = [*(a1 + 32) profileConnection];
        v11 = [v12 userToken];

        v13 = [*(a1 + 32) preferences];
        v10 = [v13 setTopBoxActivationTime];
      }

      goto LABEL_18;
    }

    v8 = [v16 setTopBoxIdentityProviderID];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [settings setTopBoxIdentityProviderID] parameter must not be nil."];
    }

    v9 = [v16 setTopBoxIdentityProviderID];
    if ([v16 setTopBoxUseDeviceProfile])
    {
      if (v4)
      {
        v10 = 0;
        v11 = 0;
LABEL_18:
        if ([(__CFString *)v9 length])
        {
          v15 = [[VSSetTopBoxProfile alloc] initWithProviderID:v9 userToken:v11 activationTime:v10 isDeveloper:v7];
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_22;
      }

      v14 = [*(a1 + 32) profileConnection];
      v11 = [v14 userToken];
    }

    else
    {
      v11 = [v16 setTopBoxUserToken];
    }

    v10 = 0;
    goto LABEL_18;
  }

  (*(*(a1 + 40) + 16))();
LABEL_22:
}

- (void)fetchDeviceManagedSetTopBoxProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  profileConnection = [(VSDevice *)self profileConnection];
  providerUniqueID = [profileConnection providerUniqueID];

  if (providerUniqueID && (-[VSDevice preferences](self, "preferences"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 ignoreSetTopBoxProfile], v6, (v7 & 1) == 0))
  {
    v8 = providerUniqueID;
    profileConnection2 = [(VSDevice *)self profileConnection];
    userToken = [profileConnection2 userToken];

    if (!userToken)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[self profileConnection] userToken] parameter must not be nil."];
    }

    profileConnection3 = [(VSDevice *)self profileConnection];
    userToken2 = [profileConnection3 userToken];

    v13 = objc_alloc_init(VSSetTopBoxProfile);
    [(VSSetTopBoxProfile *)v13 setProviderID:v8];

    [(VSSetTopBoxProfile *)v13 setUserToken:userToken2];
    [(VSSetTopBoxProfile *)v13 setIsDeveloper:0];
    preferences = [(VSDevice *)self preferences];
    setTopBoxActivationTime = [preferences setTopBoxActivationTime];
    [(VSSetTopBoxProfile *)v13 setActivationTime:setTopBoxActivationTime];

    completionCopy[2](completionCopy, v13);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)isRunningAnInternalBuild
{
  v3 = objc_opt_class();
  copyAnswer = [(VSDevice *)self copyAnswer];

  return [v3 _runningAnInternalBuildWithCopyAnswer:copyAnswer];
}

+ (BOOL)_runningACustomerBuildWithCopyAnswer:(void *)answer
{
  if (!answer)
  {
    return 1;
  }

  v3 = (answer)(@"ReleaseType", 0);
  if (!v3)
  {
    return 1;
  }

  CFRelease(v3);
  return 0;
}

- (BOOL)isRunningACustomerBuild
{
  v3 = objc_opt_class();
  copyAnswer = [(VSDevice *)self copyAnswer];

  return [v3 _runningACustomerBuildWithCopyAnswer:copyAnswer];
}

+ (BOOL)_getMobileGestaltBoolean:(__CFString *)boolean withCopyAnswer:(void *)answer
{
  if (!answer)
  {
    return 0;
  }

  v4 = (answer)(boolean, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
  CFRelease(v5);
  return v7;
}

+ (unint64_t)_deviceTypeWithCopyAnswer:(void *)answer
{
  if (!answer)
  {
    return 0;
  }

  v3 = (answer)(@"DeviceClass", 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 == CFStringGetTypeID())
  {
    if (CFEqual(v4, @"iPhone"))
    {
      v6 = 1;
    }

    else if (CFEqual(v4, @"iPod"))
    {
      v6 = 3;
    }

    else if (CFEqual(v4, @"iPad"))
    {
      v6 = 2;
    }

    else if (CFEqual(v4, @"AppleTV"))
    {
      v6 = 4;
    }

    else if (CFEqual(v4, @"RealityDevice"))
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);
  return v6;
}

- (unint64_t)deviceType
{
  v3 = objc_opt_class();
  copyAnswer = [(VSDevice *)self copyAnswer];

  return [v3 _deviceTypeWithCopyAnswer:copyAnswer];
}

- (BOOL)setIgnoreSetTopBoxProfile:(BOOL)profile
{
  profileCopy = profile;
  preferences = [(VSDevice *)self preferences];
  [preferences setIgnoreSetTopBoxProfile:profileCopy];
  v6 = [preferences ignoreSetTopBoxProfile] ^ profileCopy;
  if (v6 == 1)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23AB8E000, &v7->super, OS_LOG_TYPE_DEFAULT, "IgnoreSetTopBoxProfile default value does not match written value.", buf, 2u);
    }
  }

  else
  {
    v7 = objc_alloc_init(VSDeveloperServiceConnection);
    v8 = [(VSDeveloperServiceConnection *)v7 serviceWithErrorHandler:&__block_literal_global_137];
    objc_initWeak(buf, v8);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_138;
    v14 = &unk_278B750E8;
    objc_copyWeak(&v16, buf);
    selfCopy = self;
    [v8 fetchDeveloperSettingsWithCompletionHandler:&v11];
    v9 = [(VSDevice *)self setTopBoxStateRemoteNotifier:v11];
    [v9 postNotification];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  return v6 ^ 1;
}

void __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_138(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_2;
  v4[3] = &unk_278B750C0;
  objc_copyWeak(&v5, (a1 + 40));
  v4[4] = *(a1 + 32);
  [v3 unwrapObject:v4 error:&__block_literal_global_145];
  objc_destroyWeak(&v5);
}

void __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 setTopBoxUseDeviceProfile])
  {
    v4 = [v3 copy];
    [v4 setSetTopBoxUseDeviceProfile:0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_3;
      v7[3] = &unk_278B73308;
      v7[4] = *(a1 + 32);
      [WeakRetained updateDeveloperSettings:v4 completionHandler:v7];
    }
  }
}

uint64_t __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_3(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_4;
  v3[3] = &unk_278B746C8;
  v3[4] = *(a1 + 32);
  return [a2 unwrapObject:v3 error:&__block_literal_global_141];
}

uint64_t __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_4(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Successfully updated developer settings after profile statae change.", v4, 2u);
  }

  return [*(a1 + 32) cloudConfigurationDidChange];
}

void __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_139(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_139_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_143(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__VSDevice_setIgnoreSetTopBoxProfile___block_invoke_143_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)refreshSetTopBoxProfile:(id)profile
{
  profileCopy = profile;
  v4 = +[VSManagedProfileConnection sharedConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__VSDevice_refreshSetTopBoxProfile___block_invoke;
  v6[3] = &unk_278B73910;
  v7 = profileCopy;
  v5 = profileCopy;
  [v4 refreshProfileWithCompletion:v6];
}

- (id)productVersion
{
  productVersionString = [(VSDevice *)self productVersionString];

  if (!productVersionString)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__VSDevice_productVersion__block_invoke;
    v8[3] = &unk_278B733D8;
    v8[4] = self;
    v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v8];
    propertyFetchQueue = [(VSDevice *)self propertyFetchQueue];
    [propertyFetchQueue addOperation:v4];

    [v4 waitUntilFinished];
  }

  productVersionString2 = [(VSDevice *)self productVersionString];

  return productVersionString2;
}

void __26__VSDevice_productVersion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) productVersionString];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 _stringForKey:@"ProductVersion" copyAnswer:{objc_msgSend(v3, "copyAnswer")}];
    [v3 setProductVersionString:v4];
  }
}

- (id)serialNumber
{
  serialNumberString = [(VSDevice *)self serialNumberString];

  if (!serialNumberString)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __24__VSDevice_serialNumber__block_invoke;
    v8[3] = &unk_278B733D8;
    v8[4] = self;
    v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v8];
    propertyFetchQueue = [(VSDevice *)self propertyFetchQueue];
    [propertyFetchQueue addOperation:v4];

    [v4 waitUntilFinished];
  }

  serialNumberString2 = [(VSDevice *)self serialNumberString];

  return serialNumberString2;
}

void __24__VSDevice_serialNumber__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serialNumberString];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 _stringForKey:@"SerialNumber" copyAnswer:{objc_msgSend(v3, "copyAnswer")}];
    [v3 setSerialNumberString:v4];
  }
}

- (id)name
{
  deviceNameString = [(VSDevice *)self deviceNameString];

  if (!deviceNameString)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __16__VSDevice_name__block_invoke;
    v8[3] = &unk_278B733D8;
    v8[4] = self;
    v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v8];
    propertyFetchQueue = [(VSDevice *)self propertyFetchQueue];
    [propertyFetchQueue addOperation:v4];

    [v4 waitUntilFinished];
  }

  deviceNameString2 = [(VSDevice *)self deviceNameString];

  return deviceNameString2;
}

void __16__VSDevice_name__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceNameString];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 _stringForKey:@"UserAssignedDeviceName" copyAnswer:{objc_msgSend(v3, "copyAnswer")}];
    [v3 setDeviceNameString:v4];
  }
}

- (id)_stringForKey:(__CFString *)key copyAnswer:(void *)answer
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__14;
  v24 = __Block_byref_object_dispose__14;
  v25 = 0;
  v7 = objc_alloc_init(VSWaitGroup);
  [(VSWaitGroup *)v7 enter];
  privateQueue = [(VSDevice *)self privateQueue];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __37__VSDevice__stringForKey_copyAnswer___block_invoke;
  v15 = &unk_278B75110;
  answerCopy = answer;
  keyCopy = key;
  v17 = &v20;
  v9 = v7;
  v16 = v9;
  [privateQueue addOperationWithBlock:&v12];

  [(VSWaitGroup *)v9 wait:v12];
  v10 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v10;
}

uint64_t __37__VSDevice__stringForKey_copyAnswer___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = v2(a1[7], 0);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      if (v5 == CFStringGetTypeID())
      {
        v6 = *(a1[5] + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v4;
      }
    }
  }

  v8 = a1[4];

  return [v8 leave];
}

- (void)cloudConfigurationDidChange
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Received cloud configuration did change notification.", buf, 2u);
  }

  setTopBoxStateRemoteNotifier = [(VSDevice *)self setTopBoxStateRemoteNotifier];
  [setTopBoxStateRemoteNotifier postNotification];

  notificationQueue = [(VSDevice *)self notificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__VSDevice_cloudConfigurationDidChange__block_invoke;
  block[3] = &unk_278B733D8;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

void __39__VSDevice_cloudConfigurationDidChange__block_invoke(uint64_t a1)
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
          [v7 deviceSetTopBoxProfileChanged:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)stringForAMSPlatform
{
  deviceType = [(VSDevice *)self deviceType];
  if (deviceType > 5)
  {
    return @"ipad";
  }

  else
  {
    return off_278B75160[deviceType];
  }
}

- (id)stringForAMSPlatformAttributes
{
  deviceType = [(VSDevice *)self deviceType];
  if (deviceType > 5)
  {
    return @"appletvos";
  }

  else
  {
    return off_278B75190[deviceType];
  }
}

- (id)stringForAMSDeviceFamilies
{
  deviceType = [(VSDevice *)self deviceType];
  if (deviceType > 4)
  {
    return @"xros";
  }

  else
  {
    return off_278B751C0[deviceType];
  }
}

- (NSString)bincompatOS
{
  if ([(VSDevice *)self deviceType]== 5)
  {
    return @"ios";
  }

  else
  {
    return 0;
  }
}

- (NSString)bincompatPlatform
{
  if ([(VSDevice *)self deviceType]== 5)
  {
    return @"ipad";
  }

  else
  {
    return 0;
  }
}

- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info
{
  notifierCopy = notifier;
  developerSettingsRemoteNotifier = [(VSDevice *)self developerSettingsRemoteNotifier];

  if (developerSettingsRemoteNotifier == notifierCopy)
  {

    [(VSDevice *)self cloudConfigurationDidChange];
  }
}

@end