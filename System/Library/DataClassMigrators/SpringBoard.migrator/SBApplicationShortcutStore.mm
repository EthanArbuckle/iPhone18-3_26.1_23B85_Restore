@interface SBApplicationShortcutStore
+ (void)clearStore;
- (BOOL)_stateLock_truncateIfNeeded:(id)needed;
- (NSArray)applicationShortcutItems;
- (NSArray)languages;
- (SBApplicationShortcutStore)initWithBundleIdentifier:(id)identifier;
- (id)_applicationShortcutItemsFromPlistArray:(id)array;
- (id)_plistArrayFromApplicationShortcutItems:(id)items;
- (id)description;
- (unint64_t)version;
- (void)_saveQueue_save;
- (void)_stateLock_loadFromStoreIfNeeded;
- (void)_stateLock_markDirty;
- (void)invalidateCache;
- (void)saveSynchronously;
- (void)setApplicationShortcutItems:(id)items withLanguages:(id)languages version:(unint64_t)version;
- (void)truncateIfNecessary;
@end

@implementation SBApplicationShortcutStore

+ (void)clearStore
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[FBSApplicationDataStore applicationsWithAvailableStores];
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

        v7 = [FBSApplicationDataStore storeForApplication:*(*(&v8 + 1) + 8 * v6)];
        [v7 removeObjectForKey:@"SBApplicationShortcutItems"];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (SBApplicationShortcutStore)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SBApplicationShortcutStore;
  v5 = [(SBApplicationShortcutStore *)&v15 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [FBSApplicationDataStore storeForApplication:v5->_bundleIdentifier];
    dataStore = v5->_dataStore;
    v5->_dataStore = v8;

    v10 = objc_alloc_init(NSLock);
    stateLock = v5->_stateLock;
    v5->_stateLock = v10;

    [(NSLock *)v5->_stateLock setName:@"com.apple.springboard.sbapplicationshortcutstore"];
    Serial = BSDispatchQueueCreateSerial();
    saveQueue = v5->_saveQueue;
    v5->_saveQueue = Serial;
  }

  return v5;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  bundleIdentifier = [(SBApplicationShortcutStore *)self bundleIdentifier];
  v5 = [v3 appendObject:bundleIdentifier withName:@"bundleIdentifier"];

  if (self->_isLoaded)
  {
    v6 = [v3 appendObject:self->_cachedLanguages withName:@"languages"];
    v7 = [v3 appendObject:self->_cachedApplicationShortcutItems withName:@"applicationShortcutItems"];
    v8 = [v3 appendInteger:self->_cachedVersion withName:@"version"];
    v9 = [v3 appendBool:self->_isDirty withName:@"isDirty"];
  }

  build = [v3 build];

  return build;
}

- (NSArray)applicationShortcutItems
{
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  v3 = [(NSArray *)self->_cachedApplicationShortcutItems copy];
  [(NSLock *)self->_stateLock unlock];

  return v3;
}

- (NSArray)languages
{
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  v3 = [(NSArray *)self->_cachedLanguages copy];
  [(NSLock *)self->_stateLock unlock];

  return v3;
}

- (unint64_t)version
{
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  cachedVersion = self->_cachedVersion;
  [(NSLock *)self->_stateLock unlock];
  return cachedVersion;
}

- (void)setApplicationShortcutItems:(id)items withLanguages:(id)languages version:(unint64_t)version
{
  itemsCopy = items;
  languagesCopy = languages;
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  if (self->_isLoaded)
  {
    goto LABEL_7;
  }

  v11 = SBLogAppShortcuts();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_F764(self);
  }

  if (self->_isLoaded)
  {
LABEL_7:
    if (![itemsCopy isEqualToArray:self->_cachedApplicationShortcutItems] || !objc_msgSend(languagesCopy, "isEqualToArray:", self->_cachedLanguages) || self->_cachedVersion != version)
    {
      objc_storeStrong(&self->_cachedApplicationShortcutItems, items);
      objc_storeStrong(&self->_cachedLanguages, languages);
      self->_cachedVersion = version;
      v12 = SBLogAppShortcuts();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = [(SBApplicationShortcutStore *)self bundleIdentifier];
        v14 = 138543362;
        v15 = bundleIdentifier;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating app shortcut store...", &v14, 0xCu);
      }

      [(SBApplicationShortcutStore *)self _stateLock_markDirty];
    }
  }

  [(NSLock *)self->_stateLock unlock];
}

- (void)invalidateCache
{
  [(NSLock *)self->_stateLock lock];
  self->_isLoaded = 0;
  cachedApplicationShortcutItems = self->_cachedApplicationShortcutItems;
  self->_cachedApplicationShortcutItems = 0;

  cachedLanguages = self->_cachedLanguages;
  self->_cachedLanguages = 0;

  self->_cachedVersion = 0;
  stateLock = self->_stateLock;

  [(NSLock *)stateLock unlock];
}

- (void)saveSynchronously
{
  saveQueue = self->_saveQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_CAA4;
  block[3] = &unk_18680;
  block[4] = self;
  dispatch_sync(saveQueue, block);
}

- (void)truncateIfNecessary
{
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  if ([(SBApplicationShortcutStore *)self _stateLock_truncateIfNeeded:@"truncateIfNeeded"])
  {
    [(SBApplicationShortcutStore *)self _stateLock_markDirty];
  }

  stateLock = self->_stateLock;

  [(NSLock *)stateLock unlock];
}

- (id)_applicationShortcutItemsFromPlistArray:(id)array
{
  arrayCopy = array;
  v4 = xpc_dictionary_create(0, 0, 0);
  BSSerializeCFValueToXPCDictionaryWithKey();

  v5 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)_plistArrayFromApplicationShortcutItems:(id)items
{
  itemsCopy = items;
  v4 = xpc_dictionary_create(0, 0, 0);
  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();

  v5 = BSDeserializeCFValueFromXPCDictionaryWithKey();

  return v5;
}

- (void)_stateLock_loadFromStoreIfNeeded
{
  if (!self->_isLoaded)
  {
    v3 = [(FBSApplicationDataStore *)self->_dataStore safeArchivedObjectForKey:@"SBApplicationShortcutItems" ofType:objc_opt_class()];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKeyedSubscript:@"applicationShortcutItems"];
      v5 = [v3 objectForKeyedSubscript:@"languages"];
      v6 = [v3 objectForKeyedSubscript:@"version"];
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      v4 = v3;
      unsignedIntegerValue = 0;
      v5 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(SBApplicationShortcutStore *)self _applicationShortcutItemsFromPlistArray:v4];
      if (v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = +[NSLocale preferredLanguages];
      }

      v12 = v9;
      self->_isLoaded = 1;
    }

    else
    {
      v10 = SBLogAppShortcuts();
      v11 = v10;
      if (v3)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_F7FC(self);
        }

        unsignedIntegerValue = 0;
        v12 = 0;
        v8 = 0;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier = [(SBApplicationShortcutStore *)self bundleIdentifier];
          v18 = 138543362;
          v19 = bundleIdentifier;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%{public}@: No saved data in store", &v18, 0xCu);
        }

        unsignedIntegerValue = 0;
        v12 = 0;
        v8 = 0;
        self->_isLoaded = 1;
      }
    }

    cachedApplicationShortcutItems = self->_cachedApplicationShortcutItems;
    self->_cachedApplicationShortcutItems = v8;
    v15 = v8;

    cachedLanguages = self->_cachedLanguages;
    self->_cachedLanguages = v12;
    v17 = v12;

    self->_cachedVersion = unsignedIntegerValue;
  }
}

- (void)_stateLock_markDirty
{
  if (!self->_isDirty)
  {
    self->_isDirty = 1;
    v3 = SBLogAppShortcuts();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = [(SBApplicationShortcutStore *)self bundleIdentifier];
      *buf = 138543362;
      v8 = bundleIdentifier;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}@: Marking as dirty...", buf, 0xCu);
    }

    saveQueue = self->_saveQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_CFD0;
    block[3] = &unk_18680;
    block[4] = self;
    dispatch_async(saveQueue, block);
  }
}

- (void)_saveQueue_save
{
  [(NSLock *)self->_stateLock lock];
  v4 = SBLogAppShortcuts();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(SBApplicationShortcutStore *)self bundleIdentifier];
    v17 = 138543362;
    v18 = bundleIdentifier;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving...", &v17, 0xCu);
  }

  if (self->_isDirty && self->_isLoaded)
  {
    v6 = NSStringFromSelector(a2);
    [(SBApplicationShortcutStore *)self _stateLock_truncateIfNeeded:v6];

    v7 = [(SBApplicationShortcutStore *)self _plistArrayFromApplicationShortcutItems:self->_cachedApplicationShortcutItems];
    if ([v7 count])
    {
      v23[1] = @"version";
      v24[0] = v7;
      v23[0] = @"applicationShortcutItems";
      v8 = [NSNumber numberWithUnsignedInteger:self->_cachedVersion];
      v24[1] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];

      cachedLanguages = self->_cachedLanguages;
      if (cachedLanguages)
      {
        v21 = @"languages";
        v22 = cachedLanguages;
        v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v12 = [v9 bs_dictionaryByAddingEntriesFromDictionary:v11];

        v9 = v12;
      }

      v13 = SBLogAppShortcuts();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier2 = [(SBApplicationShortcutStore *)self bundleIdentifier];
        v15 = [(NSArray *)self->_cachedApplicationShortcutItems count];
        v17 = 138543618;
        v18 = bundleIdentifier2;
        v19 = 2048;
        v20 = v15;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%{public}@: Committing app shortcut store w/ %lu shortcuts", &v17, 0x16u);
      }

      [(FBSApplicationDataStore *)self->_dataStore setArchivedObject:v9 forKey:@"SBApplicationShortcutItems"];
      +[FBSApplicationDataStore synchronize];
    }

    self->_isDirty = 0;
  }

  else
  {
    v7 = SBLogAppShortcuts();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier3 = [(SBApplicationShortcutStore *)self bundleIdentifier];
      v17 = 138543362;
      v18 = bundleIdentifier3;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring save request because not dirty", &v17, 0xCu);
    }
  }

  [(NSLock *)self->_stateLock unlock];
}

- (BOOL)_stateLock_truncateIfNeeded:(id)needed
{
  neededCopy = needed;
  if (!self->_isLoaded)
  {
    p_super = SBLogAppShortcuts();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(SBApplicationShortcutStore *)self bundleIdentifier];
      v19 = 138543362;
      v20 = bundleIdentifier;
      _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: SBApplicationShortcutStore cannot truncate; data isn't loaded.", &v19, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = [(NSArray *)self->_cachedApplicationShortcutItems count];
  p_super = SBLogAppShortcuts();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (v5 <= 0xA)
  {
    if (v7)
    {
      bundleIdentifier2 = [(SBApplicationShortcutStore *)self bundleIdentifier];
      v9 = [(NSArray *)self->_cachedApplicationShortcutItems count];
      v19 = 138543874;
      v20 = bundleIdentifier2;
      v21 = 2112;
      v22 = neededCopy;
      v23 = 2048;
      v24 = v9;
      _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: SBApplicationShortcutStore doesn't need truncation (truncation reason: %@); there are %ld application shortcut items.", &v19, 0x20u);
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (v7)
  {
    bundleIdentifier3 = [(SBApplicationShortcutStore *)self bundleIdentifier];
    v14 = [(NSArray *)self->_cachedApplicationShortcutItems count];
    v19 = 138543874;
    v20 = bundleIdentifier3;
    v21 = 2112;
    v22 = neededCopy;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: SBApplicationShortcutStore needs truncation (truncation reason: %@); there are %ld application shortcut items.", &v19, 0x20u);
  }

  if (qword_1E278 != -1)
  {
    sub_F894();
  }

  if (byte_1E270 == 1)
  {
    v15 = +[NSUserDefaults standardUserDefaults];
    v16 = [v15 BOOLForKey:@"SBSuppressAppShortcutTruncation"];

    if (v16)
    {
      p_super = SBLogAppShortcuts();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        sub_F970(self, p_super);
      }

      goto LABEL_7;
    }
  }

  v17 = SBLogAppShortcuts();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_F8BC(self);
  }

  v18 = [(NSArray *)self->_cachedApplicationShortcutItems subarrayWithRange:0, 10];
  p_super = &self->_cachedApplicationShortcutItems->super;
  self->_cachedApplicationShortcutItems = v18;
  v11 = 1;
LABEL_8:

  return v11;
}

@end