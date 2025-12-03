@interface CFPrefsCloudSource
- (id)createSynchronizeMessage;
- (int)alreadylocked_updateObservingRemoteChanges;
- (void)dealloc;
- (void)fullCloudSynchronizeWithCompletionHandler:(id)handler;
- (void)mergeIntoDictionary:(__CFDictionary *)dictionary sourceDictionary:(__CFDictionary *)sourceDictionary cloudKeyEvaluator:(id)evaluator;
- (void)setConfigurationPath:(__CFString *)path;
- (void)setEnabled:(BOOL)enabled;
- (void)setStoreName:(__CFString *)name;
@end

@implementation CFPrefsCloudSource

- (id)createSynchronizeMessage
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CFPrefsCloudSource;
  createSynchronizeMessage = [(CFPrefsPlistSource *)&v8 createSynchronizeMessage];
  v4 = createSynchronizeMessage;
  if (createSynchronizeMessage)
  {
    configPath = self->_configPath;
    if (configPath)
    {
      xpc_dictionary_set_string(createSynchronizeMessage, "CFPreferencesCloudConfig", configPath);
      xpc_dictionary_set_string(v4, "CFPreferencesCloudStoreIdentifier", self->_storeName);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int)alreadylocked_updateObservingRemoteChanges
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->super._volatile);
  if (v2)
  {
    result = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CFPrefsCloudSource;
    result = [(CFPrefsPlistSource *)&v5 alreadylocked_updateObservingRemoteChanges];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fullCloudSynchronizeWithCompletionHandler:(id)handler
{
  v9[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super.super._lock);
  if ([(CFPrefsPlistSource *)self isDirectModeEnabled])
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
    if (xpc_user_sessions_enabled())
    {
      if (CFEqual(@"kCFPreferencesAnyUser", [(CFPrefsPlistSource *)self userIdentifier]))
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  containingPreferences = self->super.super._containingPreferences;
  userIdentifier = [(CFPrefsPlistSource *)self userIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CFPrefsCloudSource_fullCloudSynchronizeWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E6DCFF38;
  v9[4] = self;
  v9[5] = handler;
  [(_CFXPreferences *)&containingPreferences->super.isa withConnectionForRole:v5 andUserIdentifier:userIdentifier performBlock:v9];
  v8 = *MEMORY[0x1E69E9840];
}

void __64__CFPrefsCloudSource_fullCloudSynchronizeWithCompletionHandler___block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = [(os_unfair_lock_s *)v3 createSynchronizeMessage];
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_BOOL(v5, "FullCloudSync", 1);
      os_unfair_lock_unlock((*(a1 + 32) + 52));
      v7 = qos_class_self();
      global_queue = dispatch_get_global_queue(v7, 0);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __64__CFPrefsCloudSource_fullCloudSynchronizeWithCompletionHandler___block_invoke_2;
      v13[3] = &unk_1E6DCFF10;
      v13[4] = *(a1 + 40);
      xpc_connection_send_message_with_reply(a2, v6, global_queue, v13);
      xpc_release(v6);
      v9 = *MEMORY[0x1E69E9840];
      return;
    }

    v10 = (*(a1 + 32) + 52);
  }

  else
  {
    v10 = v3 + 13;
  }

  os_unfair_lock_unlock(v10);
  v11 = *(*(a1 + 40) + 16);
  v12 = *MEMORY[0x1E69E9840];

  v11();
}

void __64__CFPrefsCloudSource_fullCloudSynchronizeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  (*(*(a1 + 32) + 16))();

  CFRelease(v2);
}

- (void)mergeIntoDictionary:(__CFDictionary *)dictionary sourceDictionary:(__CFDictionary *)sourceDictionary cloudKeyEvaluator:(id)evaluator
{
  context[8] = *MEMORY[0x1E69E9840];
  if (self->_enabled)
  {
    os_unfair_lock_lock(&self->super.super._lock);
    alreadylocked_copyDictionary = [(CFPrefsPlistSource *)self alreadylocked_copyDictionary];
    os_unfair_lock_unlock(&self->super.super._lock);
    if (alreadylocked_copyDictionary)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __77__CFPrefsCloudSource_mergeIntoDictionary_sourceDictionary_cloudKeyEvaluator___block_invoke;
      context[3] = &unk_1E6DCFF60;
      context[6] = dictionary;
      context[7] = sourceDictionary;
      context[4] = self;
      context[5] = evaluator;
      _CFPrefsDictionaryApplyBlock(alreadylocked_copyDictionary, context);
      CFRelease(alreadylocked_copyDictionary);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __77__CFPrefsCloudSource_mergeIntoDictionary_sourceDictionary_cloudKeyEvaluator___block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  if ((*(*(a1 + 40) + 16))())
  {
    CFDictionaryAddValue(*(a1 + 48), a2, a3);
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = *(a1 + 32);

      CFDictionaryAddValue(v6, a2, v7);
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super.super._lock);
  atomic_store(!enabledCopy, &self->super._volatile);
  self->_enabled = enabledCopy;
  p_shmemEntry = &self->super.super.shmemEntry;
  if (!enabledCopy)
  {
    atomic_store(&sentinelGeneration, p_shmemEntry);
  }

  else
  {
    atomic_store(0, p_shmemEntry);
    v14 = 0;
    v6 = [(CFPrefsPlistSource *)self alreadylocked_createObserverUpdateMessageWithOperation:[(CFPrefsCloudSource *)self alreadylocked_updateObservingRemoteChanges] forRole:&v14];
    if (v6)
    {
      v7 = v6;
      containingPreferences = self->super.super._containingPreferences;
      v9 = v14;
      userIdentifier = [(CFPrefsPlistSource *)self userIdentifier];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __33__CFPrefsCloudSource_setEnabled___block_invoke;
      v12[3] = &unk_1E6DCFFB0;
      v13 = v14;
      v12[4] = self;
      v12[5] = v7;
      [(_CFXPreferences *)&containingPreferences->super.isa withConnectionForRole:v9 andUserIdentifier:userIdentifier performBlock:v12];
      xpc_release(v7);
    }
  }

  os_unfair_lock_unlock(&self->super.super._lock);
  v11 = *MEMORY[0x1E69E9840];
}

void __33__CFPrefsCloudSource_setEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = _os_activity_create(&dword_1830E6000, "Updating Key-Value Observers Of Preferences", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 32) + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__CFPrefsCloudSource_setEnabled___block_invoke_2;
    v9[3] = &unk_1E6DCFF88;
    v7 = *(a1 + 40);
    v9[4] = a2;
    v9[5] = v7;
    if (v5 == 1)
    {
      CFPREFERENCES_IS_WAITING_FOR_USER_CFPREFSD(v6, v9);
    }

    else if (v5 == 3)
    {
      CFPREFERENCES_IS_WAITING_FOR_DIRECT_CFPREFSD(v6, v9);
    }

    else
    {
      CFPREFERENCES_IS_WAITING_FOR_SYSTEM_CFPREFSD(v6, v9);
    }

    os_activity_scope_leave(&state);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __33__CFPrefsCloudSource_setEnabled___block_invoke_2(uint64_t a1)
{
  v1 = xpc_connection_send_message_with_reply_sync(*(a1 + 32), *(a1 + 40));
  if (v1)
  {

    xpc_release(v1);
  }
}

- (void)setConfigurationPath:(__CFString *)path
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super.super._lock);
  configPath = self->_configPath;
  if (configPath)
  {
    free(configPath);
  }

  bzero(buffer, 0x402uLL);
  if (path && CFStringGetCString(path, buffer, 1026, 0x8000100u))
  {
    self->_configPath = strdup(buffer);
  }

  os_unfair_lock_unlock(&self->super.super._lock);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setStoreName:(__CFString *)name
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super.super._lock);
  storeName = self->_storeName;
  if (storeName)
  {
    free(storeName);
  }

  bzero(buffer, 0x402uLL);
  if (name && CFStringGetCString(name, buffer, 1026, 0x8000100u))
  {
    self->_storeName = strdup(buffer);
  }

  os_unfair_lock_unlock(&self->super.super._lock);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  storeName = self->_storeName;
  if (storeName)
  {
    free(storeName);
  }

  configPath = self->_configPath;
  if (configPath)
  {
    free(configPath);
  }

  v6.receiver = self;
  v6.super_class = CFPrefsCloudSource;
  [(CFPrefsPlistSource *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

@end