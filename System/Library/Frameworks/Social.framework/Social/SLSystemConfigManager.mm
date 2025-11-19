@interface SLSystemConfigManager
+ (id)sharedInstanceForCallbackWhileLocked:(void *)a3;
+ (id)sharedInstanceForServiceType:(id)a3;
- (SLSystemConfigManager)initWithServiceType:(id)a3;
- (void)_initializeSystemConfigPrefs:(id)a3;
- (void)_keepAlive;
- (void)_notifyTarget:(unsigned int)a3;
- (void)_setValue:(void *)a3 forKey:(id)a4;
- (void)_tearDown;
- (void)dealloc;
- (void)setCachedUsername:(id)a3;
@end

@implementation SLSystemConfigManager

+ (id)sharedInstanceForServiceType:(id)a3
{
  v3 = a3;
  pthread_mutex_lock(&__SystemConfigManagerMutex);
  if (__sharedSLSystemConfigManagers)
  {
    v4 = [__sharedSLSystemConfigManagers objectForKey:v3];
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

  v4 = [[SLSystemConfigManager alloc] initWithServiceType:v3];
  [__sharedSLSystemConfigManagers setObject:v4 forKey:v3];
LABEL_6:
  pthread_mutex_unlock(&__SystemConfigManagerMutex);
  [(SLSystemConfigManager *)v4 _keepAlive];

  return v4;
}

+ (id)sharedInstanceForCallbackWhileLocked:(void *)a3
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
        if (v9 == a3)
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

- (SLSystemConfigManager)initWithServiceType:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SLSystemConfigManager;
  v6 = [(SLSystemConfigManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceType, a3);
    if ([v5 isEqualToString:@"com.apple.social.twitter"])
    {
      v8 = @"com.apple.twitter.plist";
LABEL_8:
      [(SLSystemConfigManager *)v7 _initializeSystemConfigPrefs:v8];
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"com.apple.social.sinaweibo"])
    {
      v8 = @"com.apple.sinaweibo.plist";
      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"com.apple.social.facebook"])
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

- (void)setCachedUsername:(id)a3
{
  if (a3)
  {
    [(SLSystemConfigManager *)self _setValue:a3 forKey:@"SLCachedUsername"];
  }
}

- (void)_initializeSystemConfigPrefs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];

  if (!v6)
  {
    v7 = [MEMORY[0x1E696AE30] processInfo];
    v6 = [v7 processName];
  }

  v8 = SCPreferencesCreateWithAuthorization(*MEMORY[0x1E695E480], v6, v4, 0);
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

- (void)_notifyTarget:(unsigned int)a3
{
  if ((a3 & 2) != 0)
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

- (void)_setValue:(void *)a3 forKey:(id)a4
{
  key = a4;
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
      if (SCPreferencesSetValue(self->_prefs, key, a3) && SCPreferencesCommitChanges(self->_prefs) && SCPreferencesApplyChanges(self->_prefs))
      {
        ++self->_applySkipCount;
        [(SLSystemConfigManager *)self _synchronize];
      }

      SCPreferencesUnlock(self->_prefs);
    }
  }
}

@end