@interface LSApplicationWorkspaceRemoteObserver
- (BOOL)messageObserversWithSelector:(SEL)selector;
- (BOOL)messageObserversWithSelector:(SEL)selector andApps:(id)apps filterLaunchProhibited:(BOOL)prohibited;
- (LSApplicationWorkspaceRemoteObserver)init;
- (LSApplicationWorkspaceRemoteObserver)initWithCoder:(id)coder;
- (id)localObservers;
- (unint64_t)currentObserverCount;
- (void)addLocalObserver:(id)observer;
- (void)applicationIconDidChange:(id)change;
- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused;
- (void)applicationInstallsDidCancel:(id)cancel;
- (void)applicationInstallsDidChange:(id)change;
- (void)applicationInstallsDidPause:(id)pause;
- (void)applicationInstallsDidPrioritize:(id)prioritize;
- (void)applicationInstallsDidResume:(id)resume;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationInstallsDidUpdateIcon:(id)icon;
- (void)applicationStateDidChange:(id)change;
- (void)applicationsDidChangePersonas:(id)personas;
- (void)applicationsDidFailToInstall:(id)install;
- (void)applicationsDidFailToUninstall:(id)uninstall;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillInstall:(id)install;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)databaseWasRebuilt;
- (void)deviceManagementPolicyDidChange:(id)change;
- (void)encodeWithCoder:(id)coder;
- (void)pluginsDidInstall:(id)install;
- (void)pluginsDidUninstall:(id)uninstall;
- (void)pluginsWillUninstall:(id)uninstall;
- (void)removeLocalObserver:(id)observer;
@end

@implementation LSApplicationWorkspaceRemoteObserver

- (LSApplicationWorkspaceRemoteObserver)init
{
  v12.receiver = self;
  v12.super_class = LSApplicationWorkspaceRemoteObserver;
  v2 = [(LSApplicationWorkspaceRemoteObserver *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uuid = v2->_uuid;
    v2->_uuid = v3;

    v2->_observinglsd = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);

    v9 = dispatch_queue_create("LSApplicationWorkspaceRemoteObserver.progress.subscriptions", v8);
    progressSubscriptionsQueue = v2->_progressSubscriptionsQueue;
    v2->_progressSubscriptionsQueue = v9;
  }

  return v2;
}

- (unint64_t)currentObserverCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = selfCopy->_observers;
  if (observers)
  {
    v4 = [(NSHashTable *)observers count];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)localObservers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
  v4 = [allObjects copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(LSApplicationWorkspaceRemoteObserver *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

- (LSApplicationWorkspaceRemoteObserver)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = LSApplicationWorkspaceRemoteObserver;
  v5 = [(LSApplicationWorkspaceRemoteObserver *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)addLocalObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (observerCopy)
  {
    [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeLocalObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (observerCopy)
  {
    [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)messageObserversWithSelector:(SEL)selector andApps:(id)apps filterLaunchProhibited:(BOOL)prohibited
{
  v30 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  v24 = appsCopy;
  if (prohibited)
  {
    v9 = [MEMORY[0x1E695DEC8] arrayByFilteringLaunchProhibitedAppsFrom:appsCopy];
  }

  else
  {
    v9 = appsCopy;
  }

  v10 = v9;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v12 = [localObservers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(localObservers);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          if (objc_opt_respondsToSelector() & 1) != 0 && ([v17 valueForKey:@"observeLaunchProhibitedApps"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "BOOLValue"), v19, v18 = v24, (v20) || (v21 = objc_msgSend(v10, "count", v18), v18 = v10, v21))
          {
            [v17 selector];
          }

          v14 = 1;
        }
      }

      v13 = [localObservers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (BOOL)messageObserversWithSelector:(SEL)selector
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v5 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(localObservers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 selector];
          v7 = 1;
        }
      }

      v6 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (void)applicationInstallsDidStart:(id)start
{
  startCopy = start;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidStart___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = startCopy;
  selfCopy = self;
  v5 = startCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationInstallsDidStart", v6);
}

void __68__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: InstallsStarted %@", buf, 0xCu);
  }

  _LSContextInvalidate();
  if ([*(a1 + 40) messageObserversWithSelector:sel_applicationInstallsDidStart_ andApps:*(a1 + 32)])
  {
    v4 = *(*(a1 + 40) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidStart___block_invoke_760;
    block[3] = &unk_1E6A195E0;
    v9 = *(a1 + 32);
    dispatch_async(v4, block);
  }

  v5 = *(a1 + 40);
  v6 = filterProxiesForHelperPlaceholders(*(a1 + 32));
  [v5 messageObserversWithSelector:sel_helperPlaceholdersInstalled_ andApps:v6 filterLaunchProhibited:0];

  v7 = *MEMORY[0x1E69E9840];
}

void __68__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidStart___block_invoke_760(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5) installProgress];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidUpdateIcon:(id)icon
{
  iconCopy = icon;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidUpdateIcon___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = iconCopy;
  selfCopy = self;
  v5 = iconCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationInstallsDidUpdateIcon", v6);
}

uint64_t __73__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidUpdateIcon___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: IconsUpdated %@", &v6, 0xCu);
  }

  _LSContextInvalidate();
  result = [*(a1 + 40) messageObserversWithSelector:sel_applicationInstallsDidUpdateIcon_ andApps:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)applicationInstallsDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidChange___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationInstallsDidChange", v6);
}

void __69__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidChange___block_invoke_cold_1(a1);
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [LSApplicationProxy applicationProxyForIdentifier:*(*(&v16 + 1) + 8 * v8) placeholder:1];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 appState];
          if ([v11 isValid])
          {
            v12 = [v10 appState];
            v13 = [v12 isPlaceholder];

            if (v13)
            {
              [v3 addObject:v10];
            }
          }

          else
          {
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  _LSContextInvalidate();
  if ([v3 count])
  {
    [*(v15 + 40) messageObserversWithSelector:sel_applicationInstallsDidChange_ andApps:v3];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)applicationsWillInstall:(id)install
{
  installCopy = install;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__LSApplicationWorkspaceRemoteObserver_applicationsWillInstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = installCopy;
  selfCopy = self;
  v5 = installCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsWillInstall", v6);
}

uint64_t __64__LSApplicationWorkspaceRemoteObserver_applicationsWillInstall___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Will install %@", &v6, 0xCu);
  }

  _LSContextInvalidate();
  result = [*(a1 + 40) messageObserversWithSelector:sel_applicationsWillInstall_ andApps:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)applicationsDidInstall:(id)install
{
  v13 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = installCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "Received applicationsDidInstall:%@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__LSApplicationWorkspaceRemoteObserver_applicationsDidInstall___block_invoke;
  v8[3] = &unk_1E6A18F50;
  v9 = installCopy;
  selfCopy = self;
  v6 = installCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidInstall", v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __63__LSApplicationWorkspaceRemoteObserver_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  _LSContextInvalidate();
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v54 = 0;
  v55 = 0;
  [v2 getKnowledgeUUID:&v55 andSequenceNumber:&v54];
  v3 = v55;
  v4 = v54;

  v47 = v4;
  v48 = v3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LaunchServices observer: Installed %@ {%@ %@}", *(a1 + 32), v3, v4];
  if (_LSLoggingQueue_onceToken != -1)
  {
    registerApplicationWithDictionary_cold_2();
  }

  v6 = _LSLoggingQueue_logQueue;
  *&block = MEMORY[0x1E69E9820];
  *(&block + 1) = 3221225472;
  v58 = ___LSSetCrashMessage_block_invoke;
  v59 = &unk_1E6A195E0;
  v60 = v5;
  v7 = v5;
  dispatch_sync(v6, &block);

  v45 = v7;
  v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v46 = a1;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      v12 = 0;
      do
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v50 + 1) + 8 * v12);
        v14 = [v13 bundleIdentifier];

        if (v14)
        {
          v15 = [v13 bundleIdentifier];
          v16 = [LSApplicationProxy applicationProxyForIdentifier:v15 placeholder:0];

          if (!v16)
          {
            goto LABEL_21;
          }

          v17 = [v16 appState];
          if (([v17 isInstalled] & 1) == 0)
          {

LABEL_21:
            v28 = _LSDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = v16;
              _os_log_error_impl(&dword_18162D000, v28, OS_LOG_TYPE_ERROR, "LSApplicationProxy %@ is invalid", &block, 0xCu);
            }

            goto LABEL_24;
          }

          v18 = [v16 bundleURL];
          v19 = [v18 path];

          if (!v19)
          {
            goto LABEL_21;
          }

          v20 = [v16 bundleURL];
          v21 = [v20 fileSystemRepresentation];

          if (v21 && access(v21, 0) && *__error() == 2)
          {
            v22 = _LSDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = v16;
              _os_log_error_impl(&dword_18162D000, v22, OS_LOG_TYPE_ERROR, "App validation Failed: bundle path does not exist %@", &block, 0xCu);
            }

            v23 = [v16 bundleIdentifier];
            _LSLogStepAsync(8, 0, v23, @"App validation failed (no bundle path), ignoring didInstall notification for %@", v24, v25, v26, v27, v16);
          }

          else
          {
            v29 = [v16 correspondingApplicationRecord];
            v30 = [v29 executableURL];
            v31 = [v30 fileSystemRepresentation];

            if (v31)
            {
              v32 = [v13 bundleIdentifier];
              _LSLogStepAsync(8, 1, v32, @"applicationsDidInstall %@", v33, v34, v35, v36, v16);

              [v49 addObject:v16];
              goto LABEL_24;
            }

            v37 = _LSDefaultLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = v16;
              _os_log_error_impl(&dword_18162D000, v37, OS_LOG_TYPE_ERROR, "App validation failed: no executable URL for %@", &block, 0xCu);
            }

            v23 = [v16 bundleIdentifier];
            _LSLogStepAsync(8, 0, v23, @"App validation failed (no executable path), ignoring didInstall notification for %@", v38, v39, v40, v41, v16);
          }
        }

        else
        {
          v16 = _LSDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            LODWORD(block) = 138412290;
            *(&block + 4) = v13;
            _os_log_error_impl(&dword_18162D000, v16, OS_LOG_TYPE_ERROR, "LSApplicationProxy %@ is invalid (has nil identifier)", &block, 0xCu);
          }
        }

LABEL_24:

        ++v12;
      }

      while (v10 != v12);
      v42 = [v8 countByEnumeratingWithState:&v50 objects:v56 count:16];
      v10 = v42;
    }

    while (v42);
  }

  [*(v46 + 40) messageObserversWithSelector:sel_applicationsDidInstall_ andApps:v49];
  v43 = dispatch_time(0, 2000000000);
  if (_LSLoggingQueue_onceToken != -1)
  {
    registerApplicationWithDictionary_cold_2();
  }

  dispatch_after(v43, _LSLoggingQueue_logQueue, &__block_literal_global_1165);

  v44 = *MEMORY[0x1E69E9840];
}

- (void)pluginsDidInstall:(id)install
{
  v20 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = installCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Installed plugins %@", buf, 0xCu);
  }

  _LSContextInvalidate();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v7 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(localObservers);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 pluginsDidInstall:installCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidFailToInstall:(id)install
{
  installCopy = install;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToInstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = installCopy;
  selfCopy = self;
  v5 = installCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidFailToInstall", v6);
}

uint64_t __69__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToInstall___block_invoke(uint64_t a1)
{
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __69__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToInstall___block_invoke_cold_1(a1);
  }

  _LSContextInvalidate();
  return [*(a1 + 40) messageObserversWithSelector:sel_applicationsDidFailToInstall_ andApps:*(a1 + 32)];
}

- (void)pluginsWillUninstall:(id)uninstall
{
  v20 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = uninstallCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Plugins will be removed: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v7 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(localObservers);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 pluginsWillUninstall:uninstallCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)applicationsWillUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__LSApplicationWorkspaceRemoteObserver_applicationsWillUninstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = uninstallCopy;
  selfCopy = self;
  v5 = uninstallCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsWillUninstall", v6);
}

uint64_t __66__LSApplicationWorkspaceRemoteObserver_applicationsWillUninstall___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Will uninstall %@", &v6, 0xCu);
  }

  _LSContextInvalidate();
  result = [*(a1 + 40) messageObserversWithSelector:sel_applicationsWillUninstall_ andApps:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__LSApplicationWorkspaceRemoteObserver_applicationsDidUninstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = uninstallCopy;
  selfCopy = self;
  v5 = uninstallCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidUninstall", v6);
}

void __65__LSApplicationWorkspaceRemoteObserver_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Uninstalled %@", &v7, 0xCu);
  }

  _LSContextInvalidate();
  [*(a1 + 40) messageObserversWithSelector:sel_applicationsDidUninstall_ andApps:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = filterProxiesForHelperPlaceholders(*(a1 + 32));
  [v4 messageObserversWithSelector:sel_helperPlaceholdersUninstalled_ andApps:v5 filterLaunchProhibited:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pluginsDidUninstall:(id)uninstall
{
  v20 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = uninstallCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Uninstalled plugins %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v7 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(localObservers);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 pluginsDidUninstall:uninstallCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [localObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidFailToUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToUninstall___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = uninstallCopy;
  selfCopy = self;
  v5 = uninstallCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidFailToUninstall", v6);
}

uint64_t __71__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToUninstall___block_invoke(uint64_t a1)
{
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToUninstall___block_invoke_cold_1(a1);
  }

  return [*(a1 + 40) messageObserversWithSelector:sel_applicationsDidFailToUninstall_ andApps:*(a1 + 32)];
}

- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused
{
  v72 = *MEMORY[0x1E69E9840];
  prioritizedCopy = prioritized;
  pausedCopy = paused;
  v8 = _LSInstallLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceRemoteObserver applicationInstallsArePrioritized:arePaused:];
  }

  v9 = _LSInstallLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceRemoteObserver applicationInstallsArePrioritized:arePaused:];
  }

  v10 = _LSInstallLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceRemoteObserver applicationInstallsArePrioritized:arePaused:];
  }

  v47 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  localObservers = [(LSApplicationWorkspaceRemoteObserver *)self localObservers];
  v12 = [localObservers countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v61;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v61 != v14)
        {
          objc_enumerationMutation(localObservers);
        }

        v16 = *(*(&v60 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v47 addObject:v16];
        }
      }

      v13 = [localObservers countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v13);
  }

  if ([v47 count])
  {
    v46 = pausedCopy;
    v17 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v45 = prioritizedCopy;
    v18 = prioritizedCopy;
    v19 = [v18 countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v57;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v57 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v56 + 1) + 8 * j);
          v24 = [LSApplicationProxy applicationProxyForIdentifier:v23, v45];
          appState = [v24 appState];
          isValid = [appState isValid];

          if (isValid)
          {
            [v17 addObject:v24];
          }

          else
          {
            v27 = _LSInstallLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v67 = v23;
              v68 = 2112;
              v69 = v24;
              _os_log_error_impl(&dword_18162D000, v27, OS_LOG_TYPE_ERROR, "Couldn't instantiate valid proxy for %@ when processing active installs, got %@", buf, 0x16u);
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v56 objects:v70 count:16];
      }

      while (v20);
    }

    v28 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v29 = v46;
    v30 = [v29 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v53;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v53 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v52 + 1) + 8 * k);
          v35 = [LSApplicationProxy applicationProxyForIdentifier:v34, v45];
          appState2 = [v35 appState];
          isValid2 = [appState2 isValid];

          if (isValid2)
          {
            [v28 addObject:v35];
          }

          else
          {
            v38 = _LSInstallLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v67 = v34;
              v68 = 2112;
              v69 = v35;
              _os_log_error_impl(&dword_18162D000, v38, OS_LOG_TYPE_ERROR, "Couldn't instantiate valid proxy for %@ when processing active installs, got %@", buf, 0x16u);
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v31);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v39 = v47;
    v40 = [v39 countByEnumeratingWithState:&v48 objects:v64 count:16];
    prioritizedCopy = v45;
    if (v40)
    {
      v41 = v40;
      v42 = *v49;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v49 != v42)
          {
            objc_enumerationMutation(v39);
          }

          [*(*(&v48 + 1) + 8 * m) applicationInstallsArePrioritized:v17 arePaused:{v28, v45}];
        }

        v41 = [v39 countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v41);
    }

    pausedCopy = v46;
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidPause:(id)pause
{
  v9 = *MEMORY[0x1E69E9840];
  pauseCopy = pause;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = pauseCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: PAUSE %@", &v7, 0xCu);
  }

  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationInstallsDidPause_ andApps:pauseCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidResume:(id)resume
{
  v9 = *MEMORY[0x1E69E9840];
  resumeCopy = resume;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = resumeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: RESUME %@", &v7, 0xCu);
  }

  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationInstallsDidResume_ andApps:resumeCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidCancel:(id)cancel
{
  v9 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = cancelCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: CANCEL %@", &v7, 0xCu);
  }

  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationInstallsDidCancel_ andApps:cancelCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidPrioritize:(id)prioritize
{
  v9 = *MEMORY[0x1E69E9840];
  prioritizeCopy = prioritize;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = prioritizeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: PRIORITIZE %@", &v7, 0xCu);
  }

  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationInstallsDidPrioritize_ andApps:prioritizeCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationStateDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = changeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: StateChange %@", &v7, 0xCu);
  }

  _LSContextInvalidate();
  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationStateDidChange_ andApps:changeCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationIconDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = changeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: IconChange %@", &v7, 0xCu);
  }

  _LSContextInvalidate();
  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_applicationIconDidChange_ andApps:changeCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deviceManagementPolicyDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = changeCopy;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: deviceManagementPolicyDidChange %@", &v7, 0xCu);
  }

  _LSContextInvalidate();
  [(LSApplicationWorkspaceRemoteObserver *)self messageObserversWithSelector:sel_deviceManagementPolicyDidChange_ andApps:changeCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidChangePersonas:(id)personas
{
  personasCopy = personas;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__LSApplicationWorkspaceRemoteObserver_applicationsDidChangePersonas___block_invoke;
  v6[3] = &unk_1E6A18F50;
  v7 = personasCopy;
  selfCopy = self;
  v5 = personasCopy;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.applicationsDidChangePersonas", v6);
}

uint64_t __70__LSApplicationWorkspaceRemoteObserver_applicationsDidChangePersonas___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: applicationsDidChangePersonas %@", &v6, 0xCu);
  }

  _LSContextInvalidate();
  result = [*(a1 + 40) messageObserversWithSelector:sel_applicationsDidChangePersonas_ andApps:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)databaseWasRebuilt
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__LSApplicationWorkspaceRemoteObserver_databaseWasRebuilt__block_invoke;
  v2[3] = &unk_1E6A195E0;
  v2[4] = self;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.databaserebuilt", v2);
}

uint64_t __58__LSApplicationWorkspaceRemoteObserver_databaseWasRebuilt__block_invoke(uint64_t a1)
{
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: databaseWasRebuilt", v4, 2u);
  }

  _LSContextInvalidate();
  return [*(a1 + 32) messageObserversWithSelector:sel_databaseWasRebuilt];
}

void __69__LSApplicationWorkspaceRemoteObserver_applicationInstallsDidChange___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1(&dword_18162D000, v1, v2, "LaunchServices: observer: installProgress changed %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __69__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToInstall___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__LSApplicationWorkspaceRemoteObserver_applicationsDidFailToUninstall___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsArePrioritized:arePaused:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LaunchServices observer: Prioritized apps: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsArePrioritized:arePaused:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LaunchServices observer: Paused apps: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end