@interface HKWristDetectionSettingManager
+ (BOOL)isWristDetectEnabled;
- (BOOL)isWristDetectEnabled;
- (HKWristDetectionSettingManager)initWithPairedDeviceRegistry:(id)registry;
- (id)_activeWatchNotifications;
- (id)pairedDeviceRegistry;
- (void)_activeWatchNotifications;
- (void)_pairedOrActiveDevicesDidChange:(id)change;
- (void)_queue_notifyObservers;
- (void)_queue_settingDidChange;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKWristDetectionSettingManager

- (HKWristDetectionSettingManager)initWithPairedDeviceRegistry:(id)registry
{
  registryCopy = registry;
  v15.receiver = self;
  v15.super_class = HKWristDetectionSettingManager;
  v6 = [(HKWristDetectionSettingManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v8 = HKCreateSerialDispatchQueue(v6, @"HKWristDetectManager private queue");
    queue = v7->_queue;
    v7->_queue = v8;

    objc_storeStrong(&v7->_loggingCategory, HKLogDefault);
    v10 = [HKObserverSet alloc];
    v11 = [(HKWristDetectionSettingManager *)v7 description];
    v12 = [(HKObserverSet *)v10 initWithName:v11 loggingCategory:v7->_loggingCategory];
    observers = v7->_observers;
    v7->_observers = v12;

    objc_storeStrong(&v7->_pairedDeviceRegistry, registry);
    v7->_disableWristDetectionSettingChangeNotificationToken = -1;
  }

  return v7;
}

- (void)dealloc
{
  disableWristDetectionSettingChangeNotificationToken = self->_disableWristDetectionSettingChangeNotificationToken;
  if (disableWristDetectionSettingChangeNotificationToken != -1)
  {
    notify_cancel(disableWristDetectionSettingChangeNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = HKWristDetectionSettingManager;
  [(HKWristDetectionSettingManager *)&v4 dealloc];
}

- (id)pairedDeviceRegistry
{
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  if (pairedDeviceRegistry)
  {
    sharedInstance = pairedDeviceRegistry;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v4 = getNRPairedDeviceRegistryClass_softClass_4;
    v11 = getNRPairedDeviceRegistryClass_softClass_4;
    if (!getNRPairedDeviceRegistryClass_softClass_4)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getNRPairedDeviceRegistryClass_block_invoke_4;
      v7[3] = &unk_1E7378388;
      v7[4] = &v8;
      __getNRPairedDeviceRegistryClass_block_invoke_4(v7);
      v4 = v9[3];
    }

    v5 = v4;
    _Block_object_dispose(&v8, 8);
    sharedInstance = [v4 sharedInstance];
  }

  return sharedInstance;
}

+ (BOOL)isWristDetectEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = HKObjectForNanoPreferencesUserDefaultsKey(@"com.apple.Carousel", @"DisableWristDetection");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to retrieve wrist detect setting, defaulting to YES.", &v9, 0xCu);
    }

    LOBYTE(v5) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isWristDetectEnabled
{
  v2 = objc_opt_class();

  return [v2 isWristDetectEnabled];
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__HKWristDetectionSettingManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_1E7376780;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__HKWristDetectionSettingManager_unregisterObserver___block_invoke;
  v4[3] = &unk_1E7376780;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observer runIfLastObserver:v4];
}

- (void)_startObserving
{
  v24 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting observation", buf, 0xCu);
  }

  if (self->_disableWristDetectionSettingChangeNotificationToken == -1)
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __49__HKWristDetectionSettingManager__startObserving__block_invoke;
    handler[3] = &unk_1E7379AA8;
    objc_copyWeak(&v20, buf);
    notify_register_dispatch("CSLDisableWristDetectionChangedNotification", &self->_disableWristDetectionSettingChangeNotificationToken, queue, handler);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v5 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v5 isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    _activeWatchNotifications = [(HKWristDetectionSettingManager *)self _activeWatchNotifications];
    v9 = [_activeWatchNotifications countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(_activeWatchNotifications);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          pairedDeviceRegistry = [(HKWristDetectionSettingManager *)self pairedDeviceRegistry];
          [defaultCenter addObserver:self selector:sel__pairedOrActiveDevicesDidChange_ name:v12 object:pairedDeviceRegistry];
        }

        v9 = [_activeWatchNotifications countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __49__HKWristDetectionSettingManager__startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_settingDidChange];
}

- (id)_activeWatchNotifications
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v2 = getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_0;
  v18 = getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_0;
  if (!getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_0)
  {
    v3 = NanoRegistryLibrary_4();
    v16[3] = dlsym(v3, "NRPairedDeviceRegistryDeviceIsSetupNotification");
    getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_0 = v16[3];
    v2 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v2)
  {
    [HKWristDetectionSettingManager _activeWatchNotifications];
  }

  v4 = *v2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v5 = getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_0;
  v18 = getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_0;
  v19[0] = v4;
  if (!getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_0)
  {
    v6 = NanoRegistryLibrary_4();
    v16[3] = dlsym(v6, "NRPairedDeviceRegistryDeviceDidUnpairNotification");
    getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_0 = v16[3];
    v5 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v5)
  {
    [HKWristDetectionSettingManager _activeWatchNotifications];
  }

  v7 = *v5;
  v19[1] = v7;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v8 = getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_0;
  v18 = getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_0;
  if (!getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_0)
  {
    v9 = NanoRegistryLibrary_4();
    v16[3] = dlsym(v9, "NRPairedDeviceRegistryDeviceDidBecomeActive");
    getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_0 = v16[3];
    v8 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v8)
  {
    [HKWristDetectionSettingManager _activeWatchNotifications];
  }

  v20 = *v8;
  v10 = MEMORY[0x1E695DEC8];
  v11 = v20;
  v12 = [v10 arrayWithObjects:v19 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_stopObserving
{
  v23 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping observation", buf, 0xCu);
  }

  disableWristDetectionSettingChangeNotificationToken = self->_disableWristDetectionSettingChangeNotificationToken;
  if (disableWristDetectionSettingChangeNotificationToken != -1)
  {
    notify_cancel(disableWristDetectionSettingChangeNotificationToken);
  }

  v5 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v5 isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    _activeWatchNotifications = [(HKWristDetectionSettingManager *)self _activeWatchNotifications];
    v9 = [_activeWatchNotifications countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(_activeWatchNotifications);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          pairedDeviceRegistry = [(HKWristDetectionSettingManager *)self pairedDeviceRegistry];
          [defaultCenter removeObserver:self name:v13 object:pairedDeviceRegistry];
        }

        v10 = [_activeWatchNotifications countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_queue_settingDidChange
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v4 = loggingCategory;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification of setting change", v7, 0xCu);
  }

  [(HKWristDetectionSettingManager *)self _queue_notifyObservers];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_pairedOrActiveDevicesDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v6 = loggingCategory;
    v7 = objc_opt_class();
    v8 = v7;
    name = [changeCopy name];
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = name;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received pairing/active notification: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKWristDetectionSettingManager__pairedOrActiveDevicesDidChange___block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notifyObservers
{
  dispatch_assert_queue_V2(self->_queue);
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__HKWristDetectionSettingManager__queue_notifyObservers__block_invoke;
  v4[3] = &unk_1E7381768;
  v4[4] = self;
  [(HKObserverSet *)observers notifyObservers:v4];
}

- (void)_activeWatchNotifications
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRPairedDeviceRegistryDeviceIsSetupNotification(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKWristDetectionSettingManager.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

@end