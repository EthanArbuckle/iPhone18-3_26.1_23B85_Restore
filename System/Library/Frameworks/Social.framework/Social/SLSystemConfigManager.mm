@interface SLSystemConfigManager
+ (id)sharedInstanceForCallbackWhileLocked:(void *)locked;
+ (id)sharedInstanceForServiceType:(id)type;
- (SLSystemConfigManager)initWithServiceType:(id)type;
- (void)_initializeSystemConfigPrefs:(id)prefs;
- (void)_keepAlive;
- (void)_notifyTarget:(unsigned int)target;
- (void)_setValue:(void *)value forKey:(id)key;
- (void)_tearDown;
- (void)dealloc;
- (void)setCachedUsername:(id)username;
@end

@implementation SLSystemConfigManager

+ (id)sharedInstanceForServiceType:(id)type
{
  typeCopy = type;
  pthread_mutex_lock(&__SystemConfigManagerMutex);
  if (__sharedSLSystemConfigManagers)
  {
    v4 = [__sharedSLSystemConfigManagers objectForKey:typeCopy];
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v6 = __sharedSLSystemConfigManagers;
    __sharedSLSystemConfigManagers = v5;
  }

  v4 = [[SLSystemConfigManager alloc] initWithServiceType:typeCopy];
  [__sharedSLSystemConfigManagers setObject:v4 forKey:typeCopy];
LABEL_6:
  pthread_mutex_unlock(&__SystemConfigManagerMutex);
  [(SLSystemConfigManager *)v4 _keepAlive];

  return v4;
}

+ (id)sharedInstanceForCallbackWhileLocked:(void *)locked
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = __sharedSLSystemConfigManagers;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9 == locked)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (SLSystemConfigManager)initWithServiceType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = SLSystemConfigManager;
  v6 = [(SLSystemConfigManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceType, type);
    if ([typeCopy isEqualToString:@"com.apple.social.twitter"])
    {
      v8 = @"com.apple.twitter.plist";
LABEL_8:
      [(SLSystemConfigManager *)v7 _initializeSystemConfigPrefs:v8];
      goto LABEL_9;
    }

    if ([typeCopy isEqualToString:@"com.apple.social.sinaweibo"])
    {
      v8 = @"com.apple.sinaweibo.plist";
      goto LABEL_8;
    }

    if ([typeCopy isEqualToString:@"com.apple.social.facebook"])
    {
      v8 = @"com.apple.facebook.plist";
      goto LABEL_8;
    }
  }

LABEL_9:

  return v7;
}

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    Main = CFRunLoopGetMain();
    SCPreferencesUnscheduleFromRunLoop(prefs, Main, *MEMORY[0x1E695E8E0]);
    CFRelease(self->_prefs);
  }

  v5.receiver = self;
  v5.super_class = SLSystemConfigManager;
  [(SLSystemConfigManager *)&v5 dealloc];
}

- (void)setCachedUsername:(id)username
{
  if (username)
  {
    [(SLSystemConfigManager *)self _setValue:username forKey:@"SLCachedUsername"];
  }
}

- (void)_initializeSystemConfigPrefs:(id)prefs
{
  prefsCopy = prefs;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    bundleIdentifier = [processInfo processName];
  }

  v8 = SCPreferencesCreateWithAuthorization(*MEMORY[0x1E695E480], bundleIdentifier, prefsCopy, 0);
  self->_prefs = v8;
  Main = CFRunLoopGetMain();
  SCPreferencesScheduleWithRunLoop(v8, Main, *MEMORY[0x1E695E8E0]);
  v10[0] = 0;
  v11 = 0u;
  v12 = 0;
  v10[1] = self;
  [(SLSystemConfigManager *)self _setCallback:_SLSystemConfigManagerPreferencesCallback withContext:v10];
}

- (void)_keepAlive
{
  pthread_mutex_lock(&__SystemConfigManagerMutex);
  [SLSystemConfigManager cancelPreviousPerformRequestsWithTarget:self selector:sel__tearDown object:0];
  [(SLSystemConfigManager *)self performSelector:sel__tearDown withObject:0 afterDelay:3.0];

  pthread_mutex_unlock(&__SystemConfigManagerMutex);
}

- (void)_tearDown
{
  pthread_mutex_lock(&__SystemConfigManagerMutex);
  v4 = [__sharedSLSystemConfigManagers objectForKey:self->_serviceType];
  if (v4)
  {
    [__sharedSLSystemConfigManagers removeObjectForKey:self->_serviceType];
  }

  if (![__sharedSLSystemConfigManagers count])
  {
    v3 = __sharedSLSystemConfigManagers;
    __sharedSLSystemConfigManagers = 0;
  }

  pthread_mutex_unlock(&__SystemConfigManagerMutex);
}

- (void)_notifyTarget:(unsigned int)target
{
  if ((target & 2) != 0)
  {
    applySkipCount = self->_applySkipCount;
    if (!applySkipCount)
    {
      [(SLSystemConfigManager *)self _refresh];
      [(SLSystemConfigManager *)self _synchronize];
      applySkipCount = self->_applySkipCount;
    }

    v5 = __OFSUB__(applySkipCount, 1);
    v6 = applySkipCount - 1;
    if (v6 < 0 == v5)
    {
      self->_applySkipCount = v6;
    }
  }
}

- (void)_setValue:(void *)value forKey:(id)key
{
  key = key;
  if (SCPreferencesLock(self->_prefs, 1u))
  {
    goto LABEL_16;
  }

  if (SCError() == 1006)
  {
    [SLSystemConfigManager _setValue:forKey:];
  }

  if (SCError() == 3005)
  {
    SCPreferencesSynchronize(self->_prefs);
    if (SCPreferencesLock(self->_prefs, 1u))
    {
LABEL_16:
      if (SCPreferencesSetValue(self->_prefs, key, value) && SCPreferencesCommitChanges(self->_prefs) && SCPreferencesApplyChanges(self->_prefs))
      {
        ++self->_applySkipCount;
        [(SLSystemConfigManager *)self _synchronize];
      }

      SCPreferencesUnlock(self->_prefs);
    }
  }
}

@end