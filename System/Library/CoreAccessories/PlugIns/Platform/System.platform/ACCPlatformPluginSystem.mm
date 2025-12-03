@interface ACCPlatformPluginSystem
- (BOOL)createFolder:(const char *)folder mode:(unsigned __int16)mode;
- (BOOL)isAppInstalledWithBundleID:(id)d;
- (BOOL)isAppVisibleInCurrentMode:(id)mode;
- (BOOL)isApplicationInForeground:(id)foreground;
- (BOOL)isApplicationRunning:(id)running;
- (BOOL)isDeviceLocked;
- (BOOL)isLockScreenUIDisplayed;
- (BOOL)launchURL:(id)l;
- (BOOL)supportsExternalAccessoryBackgroundMode:(id)mode;
- (NSString)pluginName;
- (id)_convertDictionaryToPlatformACCDictionary:(id)dictionary;
- (id)appNameForBundleID:(id)d;
- (id)applicationInfoForBundleID:(id)d;
- (id)applicationsInstalledWithExternalAccessoryProtocol:(id)protocol;
- (id)mediaLibraryUIDString:(BOOL)string;
- (int64_t)timeSinceBootInSecs;
- (void)_observeApplicationState:(id)state;
- (void)initPlugin;
- (void)launchApplication:(id)application options:(int)options;
- (void)launchBundleIDToBackground:(id)background;
- (void)startObservingApplicationState;
- (void)startObservingFirstUnlockNotification;
- (void)stopObservingApplicationState;
- (void)stopPlugin;
@end

@implementation ACCPlatformPluginSystem

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)initPlugin
{
  init_logging();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  activeProcessAssertions = self->_activeProcessAssertions;
  self->_activeProcessAssertions = v3;

  v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  applicationStateLock = self->_applicationStateLock;
  self->_applicationStateLock = v5;

  configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  [configurationForDefaultMainDisplayMonitor setNeedsUserInteractivePriority:1];
  objc_initWeak(&location, self);
  [configurationForDefaultMainDisplayMonitor setTransitionHandler:&__block_literal_global_145];
  v8 = MEMORY[0x277D0AD08];
  configurationForDefaultMainDisplayMonitor2 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  v10 = [v8 monitorWithConfiguration:configurationForDefaultMainDisplayMonitor2];
  mainDisplayLayoutMonitor = self->_mainDisplayLayoutMonitor;
  self->_mainDisplayLayoutMonitor = v10;

  v12 = objc_alloc_init(MEMORY[0x277CEEE90]);
  appStateMonitor = self->_appStateMonitor;
  self->_appStateMonitor = v12;

  [(ACCPlatformPluginSystem *)self setIsRunning:0];
  objc_destroyWeak(&location);
}

- (void)stopPlugin
{
  handler = [(BKSApplicationStateMonitor *)self->_appStateMonitor handler];
  [handler invalidate];

  [(ACCPlatformPluginSystem *)self setIsRunning:0];
}

- (void)launchApplication:(id)application options:(int)options
{
  optionsCopy = options;
  v43[2] = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  if ([applicationCopy length])
  {
    v7 = MEMORY[0x277CBEB38];
    v8 = *MEMORY[0x277D0AC58];
    v42[0] = *MEMORY[0x277D0AC70];
    v42[1] = v8;
    v43[0] = MEMORY[0x277CBEC38];
    v43[1] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
    v10 = [v7 dictionaryWithDictionary:v9];

    if (optionsCopy)
    {
      currentLayout = [(FBSDisplayLayoutMonitor *)self->_mainDisplayLayoutMonitor currentLayout];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      elements = [currentLayout elements];
      v13 = [elements countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v33;
LABEL_5:
        v16 = 0;
        while (1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(elements);
          }

          v17 = *(*(&v32 + 1) + 8 * v16);
          if ([v17 level] == 1 && objc_msgSend(v17, "layoutRole") == 1)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [elements countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v14)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }
        }

        bundleIdentifier = [v17 bundleIdentifier];

        if (!bundleIdentifier)
        {
          goto LABEL_26;
        }

        v19 = [objc_alloc(MEMORY[0x277CCB068]) initWithPreviousApplication:bundleIdentifier];
        v31 = 0;
        v20 = [v19 asBSActionWithResponder:0 error:&v31];
        v21 = v31;
        if (v20)
        {
          v40 = v20;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
          [v10 setObject:v22 forKeyedSubscript:*MEMORY[0x277D0ABD0]];
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v22 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
            }

            v22 = MEMORY[0x277D86220];
            v23 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [ACCPlatformPluginSystem launchApplication:options:];
          }
        }
      }

      else
      {
LABEL_12:
        bundleIdentifier = elements;
      }

LABEL_26:
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v24 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
      }

      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = applicationCopy;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_233648000, v24, OS_LOG_TYPE_DEFAULT, "Launch app: %@ with options: %@", buf, 0x16u);
    }

    v26 = objc_alloc_init(MEMORY[0x277D0AD78]);
    v27 = [MEMORY[0x277D0AD60] optionsWithDictionary:v10];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __53__ACCPlatformPluginSystem_launchApplication_options___block_invoke;
    v29[3] = &unk_2789E7870;
    v30 = applicationCopy;
    [v26 openApplication:v30 withOptions:v27 completion:v29];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __53__ACCPlatformPluginSystem_launchApplication_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v6)
  {
    if (v9)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __53__ACCPlatformPluginSystem_launchApplication_options___block_invoke_cold_2(a1);
    }
  }

  else
  {
    if (v9)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_233648000, v10, OS_LOG_TYPE_DEFAULT, "Launched app: %@!", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAppVisibleInCurrentMode:(id)mode
{
  modeCopy = mode;
  v4 = WeakLinkClass(@"LSApplicationProxy", 1uLL);
  v5 = WeakLinkClass(@"LSApplicationWorkspace", 1uLL);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  defaultWorkspace = [v5 defaultWorkspace];
  v7 = [defaultWorkspace applicationIsInstalled:modeCopy];

  if (v7)
  {
    v8 = [v4 applicationProxyForIdentifier:modeCopy];
    defaultWorkspace2 = [v5 defaultWorkspace];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__ACCPlatformPluginSystem_isAppVisibleInCurrentMode___block_invoke;
    v13[3] = &unk_2789E7898;
    v15 = &v16;
    v10 = v8;
    v14 = v10;
    [defaultWorkspace2 enumerateBundlesOfType:4 block:v13];
  }

  v11 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __53__ACCPlatformPluginSystem_isAppVisibleInCurrentMode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isEqual:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (id)applicationsInstalledWithExternalAccessoryProtocol:(id)protocol
{
  v3 = SBSCopyDisplayIdentifiersForExternalAccessoryProtocol();

  return v3;
}

- (BOOL)launchURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:l];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = [defaultWorkspace openSensitiveURL:v3 withOptions:0];

  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"no";
    if (v5)
    {
      v9 = @"yes";
    }

    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_233648000, v8, OS_LOG_TYPE_DEFAULT, "Launching URL %@ was successful = %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isAppInstalledWithBundleID:(id)d
{
  v3 = MEMORY[0x277CC1E80];
  dCopy = d;
  defaultWorkspace = [v3 defaultWorkspace];
  v6 = [defaultWorkspace applicationIsInstalled:dCopy];

  return v6;
}

- (id)appNameForBundleID:(id)d
{
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:d];
  v4 = v3;
  if (v3)
  {
    localizedName = [v3 localizedName];
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (BOOL)supportsExternalAccessoryBackgroundMode:(id)mode
{
  modeCopy = mode;
  v4 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:modeCopy];
  v5 = v4;
  if (v4)
  {
    uIBackgroundModes = [v4 UIBackgroundModes];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [uIBackgroundModes containsObject:@"external-accessory"];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v8 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v8 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [ACCPlatformPluginSystem supportsExternalAccessoryBackgroundMode:];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)startObservingApplicationState
{
  applicationStateLock = [(ACCPlatformPluginSystem *)self applicationStateLock];
  [applicationStateLock lock];

  if ((gbApplicationStateMonitoringStarted & 1) == 0)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __57__ACCPlatformPluginSystem_startObservingApplicationState__block_invoke;
    v8 = &unk_2789E78C0;
    objc_copyWeak(&v9, &location);
    [(BKSApplicationStateMonitor *)self->_appStateMonitor setHandler:&v5];
    gbApplicationStateMonitoringStarted = 1;
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v4 = [(ACCPlatformPluginSystem *)self applicationStateLock:v5];
  [v4 unlock];
}

void __57__ACCPlatformPluginSystem_startObservingApplicationState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _observeApplicationState:v3];
}

- (void)stopObservingApplicationState
{
  applicationStateLock = [(ACCPlatformPluginSystem *)self applicationStateLock];
  [applicationStateLock lock];

  if (gbApplicationStateMonitoringStarted == 1)
  {
    [(BKSApplicationStateMonitor *)self->_appStateMonitor setHandler:0];
    gbApplicationStateMonitoringStarted = 0;
  }

  applicationStateLock2 = [(ACCPlatformPluginSystem *)self applicationStateLock];
  [applicationStateLock2 unlock];
}

- (void)_observeApplicationState:(id)state
{
  stateCopy = state;
  applicationStateLock = [(ACCPlatformPluginSystem *)self applicationStateLock];
  [applicationStateLock lock];

  v6 = [stateCopy valueForKey:*MEMORY[0x277CEEE70]];
  v7 = [stateCopy valueForKey:*MEMORY[0x277CEEE68]];
  v8 = [(ACCPlatformPluginSystem *)self _convertDictionaryToPlatformACCDictionary:stateCopy];

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACCPlatformPluginSystem__observeApplicationState___block_invoke;
  block[3] = &unk_2789E78E8;
  v13 = v8;
  v10 = v8;
  dispatch_async(v9, block);

  applicationStateLock2 = [(ACCPlatformPluginSystem *)self applicationStateLock];
  [applicationStateLock2 unlock];
}

void __52__ACCPlatformPluginSystem__observeApplicationState___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_233648000, v4, OS_LOG_TYPE_DEFAULT, "Posting application state change %@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"ACCPlatformApplicationNotificationStateChanged" object:0 userInfo:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_convertDictionaryToPlatformACCDictionary:(id)dictionary
{
  v3 = MEMORY[0x277CBEB38];
  dictionaryCopy = dictionary;
  dictionary = [v3 dictionary];
  v6 = [dictionaryCopy valueForKey:*MEMORY[0x277CEEE70]];
  v7 = [dictionaryCopy valueForKey:*MEMORY[0x277CEEE80]];
  v8 = [dictionaryCopy valueForKey:*MEMORY[0x277CEEE68]];

  if (v6)
  {
    [dictionary setObject:v6 forKey:@"ACCPlatformApplicationStateKey"];
  }

  if (v7)
  {
    [dictionary setObject:v7 forKey:@"ACCPlatformApplicationStateProcessIDKey"];
  }

  if (v8)
  {
    [dictionary setObject:v8 forKey:@"ACCPlatformApplicationStateDisplayIDKey"];
  }

  return dictionary;
}

- (id)applicationInfoForBundleID:(id)d
{
  v4 = [(BKSApplicationStateMonitor *)self->_appStateMonitor applicationInfoForApplication:d];
  v5 = [(ACCPlatformPluginSystem *)self _convertDictionaryToPlatformACCDictionary:v4];

  return v5;
}

- (BOOL)isApplicationInForeground:(id)foreground
{
  v18 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  v5 = [(ACCPlatformPluginSystem *)self applicationInfoForBundleID:foregroundCopy];
  v6 = [v5 objectForKey:@"ACCPlatformApplicationStateKey"];
  v7 = v6;
  if (v6)
  {
    unsignedIntValue = [v6 unsignedIntValue];
    if (unsignedIntValue < 5 || unsignedIntValue == 16)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v10 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v10 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ACCPlatformPluginSystem isApplicationInForeground:];
      }

      v11 = 0;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v10 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v10 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = foregroundCopy;
        _os_log_impl(&dword_233648000, v10, OS_LOG_TYPE_DEFAULT, "app bundleID %@ is in foreground", &v16, 0xCu);
      }

      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isApplicationRunning:(id)running
{
  v18 = *MEMORY[0x277D85DE8];
  runningCopy = running;
  v5 = [(ACCPlatformPluginSystem *)self applicationInfoForBundleID:runningCopy];
  v6 = [v5 objectForKey:@"ACCPlatformApplicationStateKey"];
  v7 = v6;
  if (v6)
  {
    unsignedIntValue = [v6 unsignedIntValue];
    if (unsignedIntValue > 0x10 || ((1 << unsignedIntValue) & 0x10007) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v10 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v10 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = runningCopy;
        _os_log_impl(&dword_233648000, v10, OS_LOG_TYPE_DEFAULT, "app bundleID %@ is actively running", &v16, 0xCu);
      }

      v11 = 1;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v10 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v10 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ACCPlatformPluginSystem isApplicationRunning:];
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void __81__ACCPlatformPluginSystem_takeOneTimeProcessAssertionForBundleID_applicationPid___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__ACCPlatformPluginSystem_takeOneTimeProcessAssertionForBundleID_applicationPid___block_invoke_cold_2(a1);
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __76__ACCPlatformPluginSystem_toggleProcessAssertionForBundleID_applicationPid___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) attributes];
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_233648000, v4, OS_LOG_TYPE_DEFAULT, "process assertion timer expired, invalidating process assertion %@", &v12, 0xCu);
  }

  [*(a1 + 32) invalidate];
  v6 = [*(a1 + 32) processAssertionTimer];
  dispatch_source_set_timer(v6, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

  [*(a1 + 32) setStartTime:0];
  v7 = [*(a1 + 40) applicationStateLock];
  [v7 lock];

  v8 = [*(a1 + 40) activeProcessAssertions];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v8 removeObjectForKey:v9];

  v10 = [*(a1 + 40) applicationStateLock];
  [v10 unlock];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)launchBundleIDToBackground:(id)background
{
  v26[2] = *MEMORY[0x277D85DE8];
  backgroundCopy = background;
  if ([(ACCPlatformPluginSystem *)self isApplicationRunning:backgroundCopy])
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
      }

      v12 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *gLogObjects;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = backgroundCopy;
      _os_log_impl(&dword_233648000, v12, OS_LOG_TYPE_DEFAULT, "App %@ is already running.", buf, 0xCu);
    }

    v13 = MEMORY[0x277D46F48];
    v14 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:backgroundCopy];
    v19 = 0;
    v8 = [v13 handleForPredicate:v14 error:&v19];
    v7 = v19;

    if (v7)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v15 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v15 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformPluginSystem launchBundleIDToBackground:];
      }

LABEL_24:

      goto LABEL_25;
    }

    if (!v8)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v15 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v15 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformPluginSystem launchBundleIDToBackground:];
      }

      goto LABEL_24;
    }

    -[ACCPlatformPluginSystem toggleProcessAssertionForBundleID:applicationPid:](self, "toggleProcessAssertionForBundleID:applicationPid:", backgroundCopy, [v8 pid]);
  }

  else
  {
    v7 = objc_alloc_init(WeakLinkClass(@"UIAccessoryBackgroundTaskAction", 0));
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v7, 0}];
    v9 = *MEMORY[0x277D0ABD0];
    v25[0] = *MEMORY[0x277D0ABF0];
    v25[1] = v9;
    v26[0] = MEMORY[0x277CBEC38];
    v26[1] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__ACCPlatformPluginSystem_launchBundleIDToBackground___block_invoke;
    v20[3] = &unk_2789E7960;
    v21 = backgroundCopy;
    selfCopy = self;
    [mEMORY[0x277D0AE18] openApplication:v21 options:v10 withResult:v20];
  }

LABEL_25:

  v17 = *MEMORY[0x277D85DE8];
}

void __54__ACCPlatformPluginSystem_launchBundleIDToBackground___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v3)
  {
    if (v6)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_233648000, v8, OS_LOG_TYPE_DEFAULT, "Launching app %@ to bg succeeded, taking process assertion", buf, 0xCu);
    }

    v12 = MEMORY[0x277D46F48];
    v13 = (a1 + 32);
    v14 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:*(a1 + 32)];
    v20 = 0;
    v15 = [v12 handleForPredicate:v14 error:&v20];
    v7 = v20;

    if (v7)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v16 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __54__ACCPlatformPluginSystem_launchBundleIDToBackground___block_invoke_cold_5(v13);
      }
    }

    else
    {
      if (v15)
      {
        [*(a1 + 40) toggleProcessAssertionForBundleID:*(a1 + 32) applicationPid:{objc_msgSend(v15, "pid")}];
LABEL_34:

        goto LABEL_35;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v16 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __54__ACCPlatformPluginSystem_launchBundleIDToBackground___block_invoke_cold_7(v13);
      }
    }

    goto LABEL_34;
  }

  if (v6)
  {
    v7 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
    }

    v7 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __54__ACCPlatformPluginSystem_launchBundleIDToBackground___block_invoke_cold_2(a1);
  }

LABEL_35:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDeviceLocked
{
  v2 = MKBGetDeviceLockState();
  result = 0;
  if (v2 && v2 != 3)
  {
    if ((v2 - 1) >= 2)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v4 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
        }

        v4 = MEMORY[0x277D86220];
        v5 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_233648000, v4, OS_LOG_TYPE_DEFAULT, "Doesn't support isDeviceLocked API, treating as unlocked", v6, 2u);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (int64_t)timeSinceBootInSecs
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = 0x1500000001;
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = 16;
  if (sysctl(v7, 2u, v6, &v5, 0, 0) == -1)
  {
    result = 0;
  }

  else
  {
    v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v4.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v4, 0);
    result = v4.tv_sec - v6[0];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isLockScreenUIDisplayed
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = SBSSpringBoardServerPort();
  MEMORY[0x2383A8560](v2, &v8 + 1, &v8);
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v10 = HIBYTE(v8);
    _os_log_impl(&dword_233648000, v5, OS_LOG_TYPE_INFO, "device lockScreenDisplayed = %d", buf, 8u);
  }

  result = HIBYTE(v8) != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)createFolder:(const char *)folder mode:(unsigned __int16)mode
{
  if (folder)
  {
    v5 = mkdir(folder, mode);
    if (!v5)
    {
      return 1;
    }

    v6 = v5;
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 1;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
      }

      v12 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *gLogObjects;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ACCPlatformPluginSystem *)folder createFolder:v6 mode:v12];
    }
  }

  else
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 1;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
      }

      v12 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *gLogObjects;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformPluginSystem createFolder:mode:];
    }
  }

  return 0;
}

- (id)mediaLibraryUIDString:(BOOL)string
{
  if (string)
  {
    deviceMediaLibrary2 = ACCGetOSVersion();
    deviceMediaLibrary = [MEMORY[0x277CD5E10] deviceMediaLibrary];
    uniqueIdentifier = [deviceMediaLibrary uniqueIdentifier];

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", uniqueIdentifier, @"4954524C", deviceMediaLibrary2];
  }

  else
  {
    deviceMediaLibrary2 = [MEMORY[0x277CD5E10] deviceMediaLibrary];
    if (_getMediaLibraryHelper___mediaLibraryHelperInitOnce != -1)
    {
      [ACCPlatformPluginSystem mediaLibraryUIDString:];
    }

    v7 = _getMediaLibraryHelper___mediaLibraryHelper;
    uniqueIdentifier = ACCGetOSVersion();
    uniqueIdentifier2 = [deviceMediaLibrary2 uniqueIdentifier];
    showMusic = [v7 showMusic];
    v10 = @"M";
    if (!showMusic)
    {
      v10 = @"N";
    }

    v11 = v10;
    showPodcasts = [v7 showPodcasts];
    v13 = @"P";
    if (!showPodcasts)
    {
      v13 = @"N";
    }

    v14 = v13;
    showAudioBooks = [v7 showAudioBooks];

    v6 = &stru_2848F0958;
    if (uniqueIdentifier && uniqueIdentifier2)
    {
      v16 = @"B";
      if (!showAudioBooks)
      {
        v16 = @"N";
      }

      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@%@%@-%@", uniqueIdentifier2, v11, v14, v16, uniqueIdentifier];
    }
  }

  return v6;
}

- (void)startObservingFirstUnlockNotification
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233648000, v4, OS_LOG_TYPE_DEFAULT, "Device has not been unlocked since last boot. Waiting For first unlock", buf, 2u);
  }

  *buf = 0;
  v5 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __64__ACCPlatformPluginSystem_startObservingFirstUnlockNotification__block_invoke;
  handler[3] = &__block_descriptor_36_e8_v12__0i8l;
  v7 = 0;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", buf, v5, handler);
}

void __64__ACCPlatformPluginSystem_startObservingFirstUnlockNotification__block_invoke(uint64_t a1)
{
  notify_cancel(*(a1 + 32));
  v1 = dispatch_get_global_queue(0, 0);
  dispatch_async(v1, &__block_literal_global_220);
}

void __64__ACCPlatformPluginSystem_startObservingFirstUnlockNotification__block_invoke_2()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 1;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
    }

    v2 = MEMORY[0x277D86220];
    v1 = MEMORY[0x277D86220];
  }

  else
  {
    v2 = *gLogObjects;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_233648000, v2, OS_LOG_TYPE_DEFAULT, "Posting first unlock notification", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"ACCPlatformApplicationFirstUnlockNotification" object:0 userInfo:0];
}

- (void)launchApplication:options:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_233648000, v0, v1, "Error creating GCGameControllerActivationContext action for %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __53__ACCPlatformPluginSystem_launchApplication_options___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_233648000, v2, v3, "Error launching %@:\n%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)supportsExternalAccessoryBackgroundMode:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_233648000, v1, OS_LOG_TYPE_DEBUG, "client '%@' supports background EA = %d", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)isApplicationInForeground:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_233648000, v0, v1, "app bundleID %@ is in background", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isApplicationRunning:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_233648000, v0, v1, "app bundleID %@ is NOT actively running", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)takeOneTimeProcessAssertionForBundleID:applicationPid:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)takeOneTimeProcessAssertionForBundleID:applicationPid:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_233648000, v0, v1, "acquired one-time assertion %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__ACCPlatformPluginSystem_takeOneTimeProcessAssertionForBundleID_applicationPid___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6(&dword_233648000, v2, v3, "about to invalidate one-time assertion %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)launchBundleIDToBackground:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_233648000, v0, v1, "error fetching PID for app with bundleID:%@ error:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)launchBundleIDToBackground:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__ACCPlatformPluginSystem_launchBundleIDToBackground___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_233648000, v2, v3, "error launching app %@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __54__ACCPlatformPluginSystem_launchBundleIDToBackground___block_invoke_cold_5(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_233648000, v2, v3, "error fetching PID for app with bundleID:%@ error:%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __54__ACCPlatformPluginSystem_launchBundleIDToBackground___block_invoke_cold_7(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)createFolder:(NSObject *)a3 mode:.cold.2(uint64_t a1, int a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  v8 = 136315650;
  v9 = a1;
  v10 = 1024;
  v11 = a2;
  v12 = 1024;
  v13 = v6;
  _os_log_error_impl(&dword_233648000, a3, OS_LOG_TYPE_ERROR, "Error mkdir %s %d:%d", &v8, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

@end