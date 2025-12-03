@interface FPAppRegistry
+ (FPAppRegistry)sharedRegistry;
+ (void)setDaemonConnectionOverride:(id)override;
+ (void)setSharedRegistry:(id)registry;
- (BOOL)_isAppLibrary:(id)library appMetadata:(id *)metadata userVisible:(BOOL *)visible;
- (FPAppRegistry)init;
- (FPAppRegistryDelegate)delegate;
- (NSArray)listOfMonitoredApps;
- (id)_bundleIDForHomonymOfApp:(id)app;
- (id)appForBundleID:(id)d;
- (id)appForDisplayName:(id)name;
- (id)promoteItemToAppLibraryIfNeeded:(id)needed;
- (int)_registerForNotification:(id)notification handler:(id)handler;
- (void)_addApps:(id)apps;
- (void)_removeAppsWithBundleIDs:(id)ds;
- (void)_setApps:(id)apps;
- (void)addApps:(id)apps;
- (void)dealloc;
- (void)init;
- (void)removeAppsWithBundleIDs:(id)ds;
- (void)updateAppList;
@end

@implementation FPAppRegistry

+ (FPAppRegistry)sharedRegistry
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _sharedRegistry;
  if (!_sharedRegistry)
  {
    v4 = objc_alloc_init(FPAppRegistry);
    v5 = _sharedRegistry;
    _sharedRegistry = v4;

    v3 = _sharedRegistry;
  }

  v6 = v3;
  objc_sync_exit(selfCopy);

  return v6;
}

- (FPAppRegistry)init
{
  v19.receiver = self;
  v19.super_class = FPAppRegistry;
  v2 = [(FPAppRegistry *)&v19 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    appMetadataByBundleID = v2->_appMetadataByBundleID;
    v2->_appMetadataByBundleID = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    appMetadataByDisplayName = v2->_appMetadataByDisplayName;
    v2->_appMetadataByDisplayName = dictionary2;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.FileProvider.app-registry-sync-queue", v7);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v8;

    if ([objc_opt_class() keepInSync])
    {
      objc_initWeak(&location, v2);
      fp_libnotifyPerUserNotificationName = [FPAppRegistryDidUpdateAppsNotification fp_libnotifyPerUserNotificationName];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __21__FPAppRegistry_init__block_invoke;
      v16[3] = &unk_1E7938FE8;
      objc_copyWeak(&v17, &location);
      v2->_updateAppsNotification = [(FPAppRegistry *)v2 _registerForNotification:fp_libnotifyPerUserNotificationName handler:v16];
      v11 = v2->_syncQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __21__FPAppRegistry_init__block_invoke_2;
      block[3] = &unk_1E79399B0;
      v15 = v2;
      dispatch_async(v11, block);

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      v2->_updateAppsNotification = -1;
    }

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPAppRegistry init];
    }
  }

  return v2;
}

- (void)updateAppList
{
  v6 = *MEMORY[0x1E69E9840];
  fp_prettyDescription = [self fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] can't fetch list of monitored apps; %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (NSArray)listOfMonitoredApps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__27;
  v10 = __Block_byref_object_dispose__27;
  v11 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__FPAppRegistry_listOfMonitoredApps__block_invoke;
  v5[3] = &unk_1E793AA20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__FPAppRegistry_listOfMonitoredApps__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (FPAppRegistryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __21__FPAppRegistry_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAppList];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] dealloc %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setSharedRegistry:(id)registry
{
  registryCopy = registry;
  obj = self;
  objc_sync_enter(obj);
  v5 = _sharedRegistry;
  _sharedRegistry = registryCopy;

  objc_sync_exit(obj);
}

+ (void)setDaemonConnectionOverride:(id)override
{
  objc_storeStrong(&_daemonConnectionOverride, override);
  overrideCopy = override;
  fp_libnotifyPerUserNotificationName = [FPAppRegistryDidUpdateAppsNotification fp_libnotifyPerUserNotificationName];

  v5 = fp_libnotifyPerUserNotificationName;
  notify_post([fp_libnotifyPerUserNotificationName UTF8String]);
}

- (id)promoteItemToAppLibraryIfNeeded:(id)needed
{
  neededCopy = needed;
  v12 = 0;
  v11 = 0;
  v5 = [(FPAppRegistry *)self _isAppLibrary:neededCopy appMetadata:&v11 userVisible:&v12];
  v6 = v11;
  if (v5)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(FPAppRegistry *)neededCopy promoteItemToAppLibraryIfNeeded:?];
    }

    [neededCopy setIsContainer:1];
    [neededCopy setCapabilities:{objc_msgSend(neededCopy, "capabilities") & 0xFFFFFFFFFFFFFFF7}];
    [neededCopy setCapabilities:{objc_msgSend(neededCopy, "capabilities") & 0xFFFFFFFFFFFFFFFBLL}];
    [neededCopy setCapabilities:{objc_msgSend(neededCopy, "capabilities") & 0xFFFFFFFFFFFFFFEFLL}];
    fp_appContainerBundleIdentifier = [neededCopy fp_appContainerBundleIdentifier];

    if (!fp_appContainerBundleIdentifier)
    {
      bundleID = [v6 bundleID];
      [neededCopy setFp_appContainerBundleIdentifier:bundleID];
    }
  }

  else
  {
    [neededCopy setIsContainer:0];
    [neededCopy setFp_appContainerBundleIdentifier:0];
  }

  return neededCopy;
}

- (id)appForBundleID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__27;
    v16 = __Block_byref_object_dispose__27;
    v17 = 0;
    syncQueue = self->_syncQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__FPAppRegistry_appForBundleID___block_invoke;
    block[3] = &unk_1E793A190;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(syncQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __32__FPAppRegistry_appForBundleID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)appForDisplayName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__27;
    v16 = __Block_byref_object_dispose__27;
    v17 = 0;
    syncQueue = self->_syncQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__FPAppRegistry_appForDisplayName___block_invoke;
    block[3] = &unk_1E793A190;
    v11 = &v12;
    block[4] = self;
    v10 = nameCopy;
    dispatch_sync(syncQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __35__FPAppRegistry_appForDisplayName___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_setApps:(id)apps
{
  v19 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  dispatch_assert_queue_V2(self->_syncQueue);
  allKeys = [(NSMutableDictionary *)self->_appMetadataByBundleID allKeys];
  v6 = [allKeys mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = appsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        bundleID = [*(*(&v14 + 1) + 8 * v11) bundleID];
        [v6 removeObject:bundleID];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(FPAppRegistry *)self _addApps:v7];
  [(FPAppRegistry *)self _removeAppsWithBundleIDs:v6];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addApps:(id)apps
{
  appsCopy = apps;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__FPAppRegistry_addApps___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = appsCopy;
  v6 = appsCopy;
  dispatch_sync(syncQueue, v7);
}

- (void)_addApps:(id)apps
{
  v43 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  if ([appsCopy count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = appsCopy;
    v5 = appsCopy;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      do
      {
        v9 = 0;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v32 + 1) + 8 * v9);
          appMetadataByBundleID = self->_appMetadataByBundleID;
          bundleID = [v10 bundleID];
          v13 = [(NSMutableDictionary *)appMetadataByBundleID objectForKeyedSubscript:bundleID];

          v14 = fp_default_log();
          LODWORD(bundleID) = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

          if (bundleID)
          {
            v15 = [(FPAppRegistry *)self _bundleIDForHomonymOfApp:v10];
            v16 = fp_current_or_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              if (v13)
              {
                v23 = @"updated";
              }

              else
              {
                v23 = @"added";
              }

              v24 = &stru_1F1F94B20;
              if (v15)
              {
                v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@" [override homonym %@]", v15];
                v24 = v31;
              }

              *buf = 138412802;
              v37 = v23;
              v38 = 2112;
              v39 = v10;
              v40 = 2112;
              v41 = v24;
              _os_log_debug_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ %@%@", buf, 0x20u);
              if (v15)
              {
              }
            }
          }

          if (v13)
          {
            appMetadataByDisplayName = self->_appMetadataByDisplayName;
            displayName = [v13 displayName];
            [(NSMutableDictionary *)appMetadataByDisplayName setObject:0 forKeyedSubscript:displayName];
          }

          v19 = self->_appMetadataByBundleID;
          bundleID2 = [v10 bundleID];
          [(NSMutableDictionary *)v19 setObject:v10 forKeyedSubscript:bundleID2];

          v21 = self->_appMetadataByDisplayName;
          displayName2 = [v10 displayName];
          [(NSMutableDictionary *)v21 setObject:v10 forKeyedSubscript:displayName2];

          ++v9;
        }

        while (v7 != v9);
        v25 = [v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
        v7 = v25;
      }

      while (v25);
    }

    delegate = [(FPAppRegistry *)self delegate];

    appsCopy = v30;
    if (delegate)
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [(FPAppRegistry *)v5 _addApps:v27];
      }

      delegate2 = [(FPAppRegistry *)self delegate];
      [delegate2 appRegistry:self didUpdateApps:v5];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)removeAppsWithBundleIDs:(id)ds
{
  dsCopy = ds;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__FPAppRegistry_removeAppsWithBundleIDs___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_sync(syncQueue, v7);
}

- (void)_removeAppsWithBundleIDs:(id)ds
{
  v34 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = dsCopy;
    v6 = dsCopy;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_appMetadataByBundleID objectForKeyedSubscript:v11];
          v13 = v12;
          if (v12)
          {
            bundleID = [v12 bundleID];
            [array addObject:bundleID];

            v15 = fp_default_log();
            v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

            if (v16)
            {
              v17 = fp_current_or_default_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v32 = v13;
                _os_log_debug_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] removed %@", buf, 0xCu);
              }
            }

            [(NSMutableDictionary *)self->_appMetadataByBundleID setObject:0 forKeyedSubscript:v11];
            v18 = [(FPAppRegistry *)self _bundleIDForHomonymOfApp:v13];

            if (!v18)
            {
              appMetadataByDisplayName = self->_appMetadataByDisplayName;
              displayName = [v13 displayName];
              [(NSMutableDictionary *)appMetadataByDisplayName setObject:0 forKeyedSubscript:displayName];
            }
          }

          else
          {
            [(NSMutableDictionary *)self->_appMetadataByBundleID setObject:0 forKeyedSubscript:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v8);
    }

    delegate = [(FPAppRegistry *)self delegate];
    if (delegate)
    {
      v22 = delegate;
      v23 = [array count];

      if (v23)
      {
        delegate2 = [(FPAppRegistry *)self delegate];
        [delegate2 appRegistry:self didRemoveAppsWithBundleIDs:array];
      }
    }

    dsCopy = v26;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isAppLibrary:(id)library appMetadata:(id *)metadata userVisible:(BOOL *)visible
{
  libraryCopy = library;
  v9 = libraryCopy;
  if (libraryCopy && [libraryCopy isFolder])
  {
    itemIdentifier = [v9 itemIdentifier];
    v11 = [itemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"];

    parentItemIdentifier = [v9 parentItemIdentifier];
    v12 = [parentItemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"];

    LOBYTE(parentItemIdentifier) = 0;
    if ((v11 & 1) == 0 && v12)
    {
      providerID = [v9 providerID];
      fp_isiCloudDriveIdentifier = [providerID fp_isiCloudDriveIdentifier];

      if (fp_isiCloudDriveIdentifier)
      {
        parentItemIdentifier = [v9 cloudContainerIdentifier];

        if (!parentItemIdentifier)
        {
          v17 = 0;
          goto LABEL_24;
        }

        fp_appContainerBundleIdentifier = [v9 fp_appContainerBundleIdentifier];
        v17 = [(FPAppRegistry *)self appForBundleID:fp_appContainerBundleIdentifier];
      }

      else
      {
        displayName = [v9 displayName];
        v17 = [(FPAppRegistry *)self appForDisplayName:displayName];

        if (!v17)
        {
          LOBYTE(parentItemIdentifier) = 0;
          goto LABEL_24;
        }
      }

      if (metadata)
      {
        v20 = v17;
        *metadata = v17;
      }

      if (!visible)
      {
        goto LABEL_18;
      }

      if ([v9 isContainerPristine])
      {
        *visible = 0;
        v21 = fp_current_or_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [FPAppRegistry _isAppLibrary:appMetadata:userVisible:];
        }
      }

      else
      {
        providerDomainID = [v17 providerDomainID];
        if (!providerDomainID)
        {
          goto LABEL_21;
        }

        v23 = providerDomainID;
        providerDomainID2 = [v17 providerDomainID];
        providerDomainID3 = [v9 providerDomainID];
        v26 = [providerDomainID2 isEqualToString:providerDomainID3];

        if (v26)
        {
LABEL_21:
          LOBYTE(parentItemIdentifier) = 1;
          *visible = 1;
          goto LABEL_24;
        }

        childItemCount = [v9 childItemCount];
        if (childItemCount)
        {
          childItemCount2 = [v9 childItemCount];
          v29 = [childItemCount2 integerValue] > 0 || objc_msgSend(v9, "folderType") == 2 || objc_msgSend(v9, "folderType") == 3;
          *visible = v29;
        }

        else
        {
          *visible = 1;
        }

        if (*visible)
        {
LABEL_18:
          LOBYTE(parentItemIdentifier) = 1;
LABEL_24:

          goto LABEL_9;
        }

        v21 = fp_current_or_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [FPAppRegistry _isAppLibrary:appMetadata:userVisible:];
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    LOBYTE(parentItemIdentifier) = 0;
  }

LABEL_9:

  return parentItemIdentifier;
}

- (int)_registerForNotification:(id)notification handler:(id)handler
{
  notificationCopy = notification;
  out_token = -1;
  notificationCopy2 = notification;
  handlerCopy = handler;
  LODWORD(notificationCopy) = notify_register_dispatch([notificationCopy UTF8String], &out_token, self->_syncQueue, handlerCopy);

  if (notificationCopy)
  {
    return -1;
  }

  else
  {
    return out_token;
  }
}

- (id)_bundleIDForHomonymOfApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (appCopy)
  {
    appMetadataByDisplayName = self->_appMetadataByDisplayName;
    displayName = [appCopy displayName];
    v8 = [(NSMutableDictionary *)appMetadataByDisplayName objectForKeyedSubscript:displayName];

    if (v8 && ([v5 bundleID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bundleID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, (v11 & 1) == 0))
    {
      bundleID = [v8 bundleID];
    }

    else
    {
      bundleID = 0;
    }
  }

  else
  {
    bundleID = 0;
  }

  return bundleID;
}

- (void)init
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] init %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)promoteItemToAppLibraryIfNeeded:(uint64_t)a1 .cold.1(uint64_t a1, _BYTE *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *a2;
  OUTLINED_FUNCTION_2();
  v6 = 2080;
  v7 = v2;
  _os_log_debug_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] promoting %@ to%s app-library", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_addApps:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] informing delegate of %lu new apps", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_isAppLibrary:appMetadata:userVisible:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] hidding empty non-default container for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_isAppLibrary:appMetadata:userVisible:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] hidding pristine container for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end