@interface ACSystemConfigManager
+ (id)sharedInstance;
+ (void)_scheduleSharedInstanceTeardown;
+ (void)_tearDown;
- (ACSystemConfigManager)init;
- (int)accountsWithAccountTypeIdentifierExist:(id)exist;
- (int64_t)countOfAccountsWithAccountTypeIdentifier:(id)identifier;
- (void)_createSCPreferencesSession;
- (void)_destroySCPreferencesSession;
- (void)_getValueForKey:(id)key;
- (void)_handleSCPreferencesSessionNotification:(unsigned int)notification;
- (void)_setValue:(void *)value forKey:(id)key;
- (void)dealloc;
- (void)setAccountsWithAccountTypeIdentifier:(id)identifier exist:(BOOL)exist;
- (void)setCountOfAccounts:(int64_t)accounts withAccountTypeIdentifier:(id)identifier;
@end

@implementation ACSystemConfigManager

+ (id)sharedInstance
{
  pthread_mutex_lock(&__SystemConfigManagerMutex);
  if (!__sharedACSystemConfigManager)
  {
    v3 = objc_alloc_init(ACSystemConfigManager);
    v4 = __sharedACSystemConfigManager;
    __sharedACSystemConfigManager = v3;
  }

  [self _scheduleSharedInstanceTeardown];
  v5 = __sharedACSystemConfigManager;
  pthread_mutex_unlock(&__SystemConfigManagerMutex);

  return v5;
}

+ (void)_scheduleSharedInstanceTeardown
{
  if (__timerSource)
  {
    dispatch_source_cancel(__timerSource);
    v2 = __timerSource;
    __timerSource = 0;
  }

  v3 = __timerQueue;
  if (!__timerQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("ACSysConfigManagerTimerQueue", v4);
    v6 = __timerQueue;
    __timerQueue = v5;

    v3 = __timerQueue;
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
  v8 = __timerSource;
  __timerSource = v7;

  dispatch_source_set_event_handler(__timerSource, &__block_literal_global_11);
  dispatch_resume(__timerSource);
  v9 = +[ACSystemConfigManager _timeoutInterval];
  v10 = __timerSource;
  v11 = dispatch_time(0, 1000000000 * v9);

  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
}

+ (void)_tearDown
{
  pthread_mutex_lock(&__SystemConfigManagerMutex);
  v2 = __sharedACSystemConfigManager;
  __sharedACSystemConfigManager = 0;

  pthread_mutex_unlock(&__SystemConfigManagerMutex);
}

- (ACSystemConfigManager)init
{
  v7.receiver = self;
  v7.super_class = ACSystemConfigManager;
  v2 = [(ACSystemConfigManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ACSysConfigManagerSCPeferencesQueue", v3);
    preferencesQueue = v2->_preferencesQueue;
    v2->_preferencesQueue = v4;

    [(ACSystemConfigManager *)v2 _createSCPreferencesSession];
  }

  return v2;
}

- (void)dealloc
{
  [(ACSystemConfigManager *)self _destroySCPreferencesSession];
  v3.receiver = self;
  v3.super_class = ACSystemConfigManager;
  [(ACSystemConfigManager *)&v3 dealloc];
}

- (int)accountsWithAccountTypeIdentifierExist:(id)exist
{
  exist = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.exists", exist];
  v5 = [(ACSystemConfigManager *)self _getValueForKey:exist];
  intValue = [v5 intValue];

  return intValue;
}

- (void)setAccountsWithAccountTypeIdentifier:(id)identifier exist:(BOOL)exist
{
  if (exist)
  {
    v5 = &unk_1F2118958;
  }

  else
  {
    v5 = &unk_1F2118970;
  }

  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.exists", identifier];
  [(ACSystemConfigManager *)self _setValue:v5 forKey:identifier];
}

- (int64_t)countOfAccountsWithAccountTypeIdentifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.count", identifier];
  v5 = [(ACSystemConfigManager *)self _getValueForKey:identifier];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)setCountOfAccounts:(int64_t)accounts withAccountTypeIdentifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.count", identifier];
  -[ACSystemConfigManager _setValue:forKey:](self, "_setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:accounts], identifier);
}

- (void)_createSCPreferencesSession
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    bundleIdentifier = [processInfo processName];
  }

  preferencesQueue = self->_preferencesQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__ACSystemConfigManager__createSCPreferencesSession__block_invoke;
  v8[3] = &unk_1E7975590;
  v8[4] = self;
  v9 = bundleIdentifier;
  v7 = bundleIdentifier;
  dispatch_sync(preferencesQueue, v8);
}

uint64_t __52__ACSystemConfigManager__createSCPreferencesSession__block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = SCPreferencesCreateWithAuthorization(*MEMORY[0x1E695E480], *(a1 + 40), @"com.apple.accounts.exists.plist", 0);
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(v5 + 16) = v3;
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __52__ACSystemConfigManager__createSCPreferencesSession__block_invoke_cold_1(v4, v2, v6);
  }

  v7 = *(*v4 + 16);
  Main = CFRunLoopGetMain();
  SCPreferencesScheduleWithRunLoop(v7, Main, *MEMORY[0x1E695E8E0]);
  memset(&v10, 0, sizeof(v10));
  return SCPreferencesSetCallback(*(*v4 + 16), __ACSystemConfigManagerPreferencesCallback, &v10);
}

- (void)_destroySCPreferencesSession
{
  preferencesQueue = self->_preferencesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ACSystemConfigManager__destroySCPreferencesSession__block_invoke;
  block[3] = &unk_1E7975AD8;
  block[4] = self;
  dispatch_sync(preferencesQueue, block);
}

void __53__ACSystemConfigManager__destroySCPreferencesSession__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(a1 + 32) + 16))
  {
    v2 = _ACLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __53__ACSystemConfigManager__destroySCPreferencesSession__block_invoke_cold_1(v1, v2);
    }

    v3 = *(*v1 + 16);
    Main = CFRunLoopGetMain();
    SCPreferencesUnscheduleFromRunLoop(v3, Main, *MEMORY[0x1E695E8E0]);
    SCPreferencesSetCallback(*(*v1 + 16), 0, 0);
    v5 = *(*v1 + 16);
    if (v5)
    {
      *(*v1 + 16) = 0;
      CFRelease(v5);
    }
  }
}

- (void)_handleSCPreferencesSessionNotification:(unsigned int)notification
{
  preferencesQueue = self->_preferencesQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__ACSystemConfigManager__handleSCPreferencesSessionNotification___block_invoke;
  v4[3] = &unk_1E7977358;
  notificationCopy = notification;
  v4[4] = self;
  dispatch_sync(preferencesQueue, v4);
}

void __65__ACSystemConfigManager__handleSCPreferencesSessionNotification___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    if (!v3)
    {
      SCPreferencesSynchronize(*(v2 + 16));
      v2 = *(a1 + 32);
      v3 = *(v2 + 24);
    }

    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if (v5 < 0 == v4)
    {
      *(v2 + 24) = v5;
    }
  }
}

- (void)_getValueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  preferencesQueue = self->_preferencesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ACSystemConfigManager__getValueForKey___block_invoke;
  block[3] = &unk_1E7977290;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(preferencesQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

CFPropertyListRef __41__ACSystemConfigManager__getValueForKey___block_invoke(uint64_t a1)
{
  result = SCPreferencesGetValue(*(*(a1 + 32) + 16), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_setValue:(void *)value forKey:(id)key
{
  keyCopy = key;
  preferencesQueue = self->_preferencesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__ACSystemConfigManager__setValue_forKey___block_invoke;
  block[3] = &unk_1E7977380;
  block[4] = self;
  v10 = keyCopy;
  valueCopy = value;
  v8 = keyCopy;
  dispatch_sync(preferencesQueue, block);
}

void __42__ACSystemConfigManager__setValue_forKey___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  if (SCPreferencesLock(*(*(a1 + 32) + 16), 1u))
  {
    goto LABEL_17;
  }

  if (SCError() == 3005)
  {
    SCPreferencesSynchronize(*(*v2 + 16));
  }

  if (SCPreferencesLock(*(*v2 + 16), 1u))
  {
LABEL_17:
    if (SCPreferencesSetValue(*(*(a1 + 32) + 16), *(a1 + 40), *(a1 + 48)) && SCPreferencesCommitChanges(*(*v2 + 16)) && SCPreferencesApplyChanges(*(*v2 + 16)))
    {
      ++*(*v2 + 24);
      SCPreferencesSynchronize(*(*v2 + 16));
    }

    v3 = *(*v2 + 16);

    SCPreferencesUnlock(v3);
  }

  else
  {
    v4 = SCError();
    v5 = _ACLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__ACSystemConfigManager__setValue_forKey___block_invoke_cold_1(v2, v4, v5);
    }
  }
}

void __52__ACSystemConfigManager__createSCPreferencesSession__block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 16);
  v4 = *a2;
  v6 = 134218242;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_1AC3CD000, log, OS_LOG_TYPE_DEBUG, "ACSystemConfigManager: new SCPreferencesRef %p created for process %@.", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __53__ACSystemConfigManager__destroySCPreferencesSession__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 16);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_DEBUG, "ACSystemConfigManager: tearing down SCPreferencesRef %p", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __42__ACSystemConfigManager__setValue_forKey___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 16);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v7 = 134218242;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AC3CD000, a3, OS_LOG_TYPE_ERROR, "ACSystemConfigManager: failed to acquire SCPreferencesLock for %p due to error %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end