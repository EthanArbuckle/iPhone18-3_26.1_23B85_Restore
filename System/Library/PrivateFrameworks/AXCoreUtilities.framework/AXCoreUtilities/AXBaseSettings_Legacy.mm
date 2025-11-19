@interface AXBaseSettings_Legacy
- (AXBaseSettings_Legacy)init;
- (BOOL)BOOLValueForPreferenceKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)_switchFromRootUserIfNecessary:(id)a3;
- (BOOL)hasExistingValueForPreferenceWithSelector:(SEL)a3;
- (double)doubleValueForPreferenceKey:(id)a3 defaultValue:(double)a4;
- (float)floatValueForPreferenceKey:(id)a3 defaultValue:(float)a4;
- (id)_userDefaultsStoreForDomainName:(id)a3;
- (id)allDomainNamesForPreferenceKey:(id)a3;
- (id)domainNameForPreferenceKey:(id)a3;
- (id)objectValueForPreferenceKey:(id)a3 ofClass:(Class)a4 defaultValue:(id)a5;
- (id)preferenceKeyForSelector:(SEL)a3;
- (id)valueForPreferenceKey:(id)a3;
- (int64_t)integerValueForPreferenceKey:(id)a3 defaultValue:(int64_t)a4;
- (void)_handlePreferenceChangedWithNotificationName:(id)a3;
- (void)_registerForNotification:(id)a3;
- (void)_registerUpdateBlock:(id)a3 forPreferenceKey:(id)a4 withListener:(id)a5;
- (void)_synchronizeIfNecessaryForPreferenceKey:(id)a3 domainName:(id)a4;
- (void)_unregisterUpdateBlockForPreferenceKey:(id)a3 withListenerID:(id)a4;
- (void)clearExistingValueForPreferenceWithSelector:(SEL)a3;
- (void)dealloc;
- (void)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)postNotificationForPreferenceKey:(id)a3;
- (void)registerUpdateBlock:(id)a3 forPreferenceKey:(id)a4 withListener:(id)a5;
- (void)registerUpdateBlock:(id)a3 forRetrieveSelector:(SEL)a4 withListener:(id)a5;
- (void)setValue:(id)a3 forPreferenceKey:(id)a4;
- (void)unregisterUpdateBlockForPreferenceKey:(id)a3 withListenerID:(id)a4;
- (void)unregisterUpdateBlockForRetrieveSelector:(SEL)a3 withListenerID:(id)a4;
@end

@implementation AXBaseSettings_Legacy

- (AXBaseSettings_Legacy)init
{
  v3 = objc_opt_class();
  if (objc_opt_class() == v3)
  {
    v12 = AXLogSettings();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(AXBaseSettings_Legacy *)v3 init];
    }

    v11 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AXBaseSettings_Legacy;
    v4 = [(AXBaseSettings_Legacy *)&v14 init];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      registeredPreferenceKeys = v4->_registeredPreferenceKeys;
      v4->_registeredPreferenceKeys = v5;

      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      preferenceKeysByDomainNameToSynchronize = v4->_preferenceKeysByDomainNameToSynchronize;
      v4->_preferenceKeysByDomainNameToSynchronize = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      updateBlocks = v4->_updateBlocks;
      v4->_updateBlocks = v9;

      v4->_domainNamesToSynchronizeLock._os_unfair_lock_opaque = 0;
    }

    self = v4;
    v11 = self;
  }

  return v11;
}

- (void)dealloc
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_registeredPreferenceKeys;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [(AXBaseSettings_Legacy *)self allDomainNamesForPreferenceKey:v7];
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            v12 = 0;
            do
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [(AXBaseSettings_Legacy *)self _userDefaultsStoreForDomainName:*(*(&v17 + 1) + 8 * v12)];
              [v13 removeObserver:self forKeyPath:v7];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v16.receiver = self;
  v16.super_class = AXBaseSettings_Legacy;
  [(AXBaseSettings_Legacy *)&v16 dealloc];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)unregisterUpdateBlockForRetrieveSelector:(SEL)a3 withListenerID:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_domainNamesToSynchronizeLock);
  v7 = [(AXBaseSettings_Legacy *)self preferenceKeyForSelector:a3];
  if (v7)
  {
    [(AXBaseSettings_Legacy *)self _unregisterUpdateBlockForPreferenceKey:v7 withListenerID:v6];
  }

  else
  {
    v8 = AXLogSettings();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXBaseSettings_Legacy unregisterUpdateBlockForRetrieveSelector:a3 withListenerID:?];
    }
  }

  os_unfair_lock_unlock(&self->_domainNamesToSynchronizeLock);
}

- (void)unregisterUpdateBlockForPreferenceKey:(id)a3 withListenerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_domainNamesToSynchronizeLock);
  [(AXBaseSettings_Legacy *)self _unregisterUpdateBlockForPreferenceKey:v7 withListenerID:v6];

  os_unfair_lock_unlock(&self->_domainNamesToSynchronizeLock);
}

- (void)_unregisterUpdateBlockForPreferenceKey:(id)a3 withListenerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXBaseSettings_Legacy *)self updateBlocks];
  v9 = [v8 objectForKey:v7];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__AXBaseSettings_Legacy__unregisterUpdateBlockForPreferenceKey_withListenerID___block_invoke;
  v12[3] = &unk_1E735BEF0;
  v13 = v6;
  v10 = v6;
  v11 = [v9 indexesOfObjectsPassingTest:v12];
  if ([v11 count])
  {
    [v9 removeObjectsAtIndexes:v11];
  }
}

- (void)registerUpdateBlock:(id)a3 forPreferenceKey:(id)a4 withListener:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  os_unfair_lock_lock(&self->_domainNamesToSynchronizeLock);
  [(AXBaseSettings_Legacy *)self _registerUpdateBlock:v10 forPreferenceKey:v9 withListener:v8];

  os_unfair_lock_unlock(&self->_domainNamesToSynchronizeLock);
}

- (void)_registerUpdateBlock:(id)a3 forPreferenceKey:(id)a4 withListener:(id)a5
{
  v22[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    if (_registerUpdateBlock_forPreferenceKey_withListener__onceToken != -1)
    {
      [AXBaseSettings_Legacy _registerUpdateBlock:forPreferenceKey:withListener:];
    }

    v10 = _registerUpdateBlock_forPreferenceKey_withListener__FakeListener;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
  if (v8)
  {
    v12 = [(AXBaseSettings_Legacy *)self updateBlocks];
    v13 = [v12 objectForKey:v9];
    v22[0] = v11;
    v20 = [v8 copy];
    v14 = _Block_copy(v20);
    v22[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];

    if (!v13)
    {
      v13 = [MEMORY[0x1E695DF70] array];
      [v12 setObject:v13 forKey:v9];
    }

    v21 = v12;
    [v13 addObject:v15];
    v16 = objc_getAssociatedObject(v10, &AXSettingsDestructionHelpersKey);
    if (!v16)
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
      objc_setAssociatedObject(v10, &AXSettingsDestructionHelpersKey, v16, 1);
    }

    v17 = [MEMORY[0x1E696B098] valueWithPointer:self];
    v18 = [v16 objectForKeyedSubscript:v17];
    if (!v18)
    {
      v18 = [[AXSettingsObjectDestructionHelper alloc] initWithListenerAddress:v10 forSettings:self];
      [v16 setObject:v18 forKeyedSubscript:v17];
    }

    [(AXSettingsObjectDestructionHelper *)v18 addPreferenceKey:v9];
    [(AXBaseSettings_Legacy *)self _registerForNotification:v9];
  }

  else
  {
    [(AXBaseSettings_Legacy *)self _unregisterUpdateBlockForPreferenceKey:v9 withListenerID:v11];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)registerUpdateBlock:(id)a3 forRetrieveSelector:(SEL)a4 withListener:(id)a5
{
  v8 = a3;
  v9 = a5;
  os_unfair_lock_lock(&self->_domainNamesToSynchronizeLock);
  v10 = [(AXBaseSettings_Legacy *)self preferenceKeyForSelector:a4];
  if (v10)
  {
    [(AXBaseSettings_Legacy *)self _registerUpdateBlock:v8 forPreferenceKey:v10 withListener:v9];
  }

  else
  {
    v11 = AXLogSettings();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AXBaseSettings_Legacy unregisterUpdateBlockForRetrieveSelector:a4 withListenerID:?];
    }
  }

  os_unfair_lock_unlock(&self->_domainNamesToSynchronizeLock);
}

- (BOOL)hasExistingValueForPreferenceWithSelector:(SEL)a3
{
  v5 = [(AXBaseSettings_Legacy *)self preferenceKeyForSelector:?];
  if (!v5)
  {
    v6 = AXLogSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [AXBaseSettings_Legacy hasExistingValueForPreferenceWithSelector:a3];
    }
  }

  v7 = [(AXBaseSettings_Legacy *)self valueForPreferenceKey:v5];
  v8 = v7 != 0;

  return v8;
}

- (void)clearExistingValueForPreferenceWithSelector:(SEL)a3
{
  v5 = [(AXBaseSettings_Legacy *)self preferenceKeyForSelector:?];
  if (!v5)
  {
    v6 = AXLogSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [AXBaseSettings_Legacy hasExistingValueForPreferenceWithSelector:a3];
    }
  }

  [(AXBaseSettings_Legacy *)self setValue:0 forPreferenceKey:v5];
}

- (id)allDomainNamesForPreferenceKey:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(AXBaseSettings_Legacy *)self domainNameForPreferenceKey:a3];
  v4 = v3;
  if (v3)
  {
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)valueForPreferenceKey:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__AXBaseSettings_Legacy_valueForPreferenceKey___block_invoke;
  v10[3] = &unk_1E735B780;
  v12 = &v13;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  if ([(AXBaseSettings_Legacy *)self _switchFromRootUserIfNecessary:v10])
  {
    v6 = v14[5];
  }

  else
  {

    v7 = [(AXBaseSettings_Legacy *)self domainNameForPreferenceKey:v5];
    [(AXBaseSettings_Legacy *)self _synchronizeIfNecessaryForPreferenceKey:v5 domainName:v7];
    if (v7)
    {
      [(AXBaseSettings_Legacy *)self _registerForNotification:v5];
      v6 = CFPreferencesCopyAppValue(v5, v7);
    }

    else
    {
      v8 = AXLogSettings();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [AXBaseSettings_Legacy valueForPreferenceKey:];
      }

      v6 = 0;
    }
  }

  _Block_object_dispose(&v13, 8);

  return v6;
}

- (void)setValue:(id)a3 forPreferenceKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__AXBaseSettings_Legacy_setValue_forPreferenceKey___block_invoke;
  v11[3] = &unk_1E735BA58;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  LOBYTE(v7) = [(AXBaseSettings_Legacy *)self _switchFromRootUserIfNecessary:v11];

  if ((v7 & 1) == 0)
  {
    v10 = [(AXBaseSettings_Legacy *)self domainNameForPreferenceKey:v9];
    CFPreferencesSetAppValue(v9, v8, v10);
    CFPreferencesAppSynchronize(v10);
    [(AXBaseSettings_Legacy *)self willPostNotificationForPreferenceKey:v9 value:v8];
    [(AXBaseSettings_Legacy *)self postNotificationForPreferenceKey:v9];
  }
}

- (void)postNotificationForPreferenceKey:(id)a3
{
  v3 = [(AXBaseSettings_Legacy *)self notificationNameForPreferenceKey:a3];
  if (v3)
  {
    name = v3;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
    v3 = name;
  }
}

- (BOOL)BOOLValueForPreferenceKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = [(AXBaseSettings_Legacy *)self valueForPreferenceKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (int64_t)integerValueForPreferenceKey:(id)a3 defaultValue:(int64_t)a4
{
  v5 = [(AXBaseSettings_Legacy *)self valueForPreferenceKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

- (double)doubleValueForPreferenceKey:(id)a3 defaultValue:(double)a4
{
  v5 = [(AXBaseSettings_Legacy *)self valueForPreferenceKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 doubleValue];
    a4 = v6;
  }

  return a4;
}

- (float)floatValueForPreferenceKey:(id)a3 defaultValue:(float)a4
{
  v5 = [(AXBaseSettings_Legacy *)self valueForPreferenceKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 floatValue];
    a4 = v6;
  }

  return a4;
}

- (id)objectValueForPreferenceKey:(id)a3 ofClass:(Class)a4 defaultValue:(id)a5
{
  v7 = a5;
  v8 = [(AXBaseSettings_Legacy *)self valueForPreferenceKey:a3];
  if (!v8 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = v7;

    v8 = v9;
  }

  return v8;
}

- (BOOL)_switchFromRootUserIfNecessary:(id)a3
{
  v3 = a3;
  if (!geteuid())
  {
    v6 = getpwnam("mobile");
    if (v6)
    {
      pw_uid = v6->pw_uid;
      if (pw_uid)
      {
        seteuid(pw_uid);
        v3[2](v3);
        seteuid(0);
        v4 = 1;
        goto LABEL_3;
      }

      v8 = AXLogSettings();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [AXBaseSettings_Legacy _switchFromRootUserIfNecessary:v8];
      }
    }
  }

  v4 = 0;
LABEL_3:

  return v4;
}

- (void)_synchronizeIfNecessaryForPreferenceKey:(id)a3 domainName:(id)a4
{
  v6 = a4;
  if (v6)
  {
    applicationID = v6;
    v7 = a3;
    os_unfair_lock_lock(&self->_domainNamesToSynchronizeLock);
    v8 = [(AXBaseSettings_Legacy *)self preferenceKeysByDomainNameToSynchronize];
    v9 = [v8 objectForKeyedSubscript:applicationID];

    LODWORD(v8) = [v9 containsObject:v7];
    [v9 removeObject:v7];

    os_unfair_lock_unlock(&self->_domainNamesToSynchronizeLock);
    if (v8)
    {
      CFPreferencesAppSynchronize(applicationID);
    }

    v6 = applicationID;
  }
}

- (void)_handlePreferenceChangedWithNotificationName:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"_AXNotification_" withString:&stru_1F0579798];
  v5 = [(AXBaseSettings_Legacy *)self domainNameForPreferenceKey:v4];
  if (v5)
  {
    os_unfair_lock_lock(&self->_domainNamesToSynchronizeLock);
    v6 = [(AXBaseSettings_Legacy *)self preferenceKeysByDomainNameToSynchronize];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (!v7)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = [(AXBaseSettings_Legacy *)self preferenceKeysByDomainNameToSynchronize];
      [v8 setObject:v7 forKeyedSubscript:v5];
    }

    [v7 addObject:v4];
    v9 = [(AXBaseSettings_Legacy *)self updateBlocks];
    v10 = [v9 objectForKey:v4];
    v11 = [v10 copy];

    os_unfair_lock_unlock(&self->_domainNamesToSynchronizeLock);
    [(AXBaseSettings_Legacy *)self willPerformUpdateBlocksForPreferenceKey:v4];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__AXBaseSettings_Legacy__handlePreferenceChangedWithNotificationName___block_invoke;
    v13[3] = &unk_1E735AD18;
    v14 = v11;
    v12 = v11;
    AXPerformBlockOnMainThread(v13);
  }
}

- (id)_userDefaultsStoreForDomainName:(id)a3
{
  v3 = a3;
  if (_userDefaultsStoreForDomainName__onceToken != -1)
  {
    [AXBaseSettings_Legacy _userDefaultsStoreForDomainName:];
  }

  os_unfair_lock_lock(&_defaultsStoreCacheLock);
  v4 = [_domainNameToDefaultsStoreMap objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:v3];

    if (v7)
    {
      v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v3];
    }

    v4 = v8;
    [_domainNameToDefaultsStoreMap setObject:v8 forKeyedSubscript:v3];
  }

  os_unfair_lock_unlock(&_defaultsStoreCacheLock);

  return v4;
}

- (void)_registerForNotification:(id)a3
{
  v4 = a3;
  if (_registerForNotification__onceToken != -1)
  {
    [AXBaseSettings_Legacy _registerForNotification:];
  }

  v5 = _registerForNotification__RegistrationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AXBaseSettings_Legacy__registerForNotification___block_invoke_2;
  v7[3] = &unk_1E735B7E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v17 = a3;
  v9 = a5;
  v10 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v13 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v14 = [MEMORY[0x1E695DFB0] null];
    if (![v12 isEqual:v14])
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      if (![v13 isEqual:v15])
      {
        v16 = [v12 isEqual:v13];

        if ((v16 & 1) == 0)
        {
          [(AXBaseSettings_Legacy *)self _handlePreferenceChangedWithNotificationName:v17];
        }

        goto LABEL_6;
      }
    }

LABEL_6:
  }
}

- (id)domainNameForPreferenceKey:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)preferenceKeyForSelector:(SEL)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)init
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_19159B000, v2, v3, "Attempted to create an instance of abstract class %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)unregisterUpdateBlockForRetrieveSelector:(const char *)a1 withListenerID:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_19159B000, v2, v3, "Cannot register update block for selector '%@'. No matching pref key was found.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)hasExistingValueForPreferenceWithSelector:(const char *)a1 .cold.1(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_19159B000, v2, v3, "Could not find preference key for %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)valueForPreferenceKey:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(&dword_19159B000, v0, OS_LOG_TYPE_FAULT, "Can not get value without domain name for preference key: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end