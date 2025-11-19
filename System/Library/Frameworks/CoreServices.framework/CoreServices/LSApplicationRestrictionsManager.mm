@interface LSApplicationRestrictionsManager
+ (id)activeRestrictionIdentifiers;
+ (id)sharedInstance;
- (BOOL)_LSApplyRestrictedSet:(id)a3 forRestriction:(id)a4;
- (BOOL)forceUpdateRestrictionKnowledgeWithError:(void *)a1;
- (BOOL)isAllowlistEnabled;
- (BOOL)isAppExtensionRestricted:(_BOOL8)a1;
- (BOOL)isApplicationRestricted:(int)a3 checkFeatureRestrictions:;
- (BOOL)isApplicationRestricted:(uint64_t)a3 checkFlags:(void *)a4 stateProvider:;
- (BOOL)isRatingAllowed:(void *)a3 forBundleIdentifier:;
- (LSApplicationRestrictionsManager)init;
- (id)_LSResolveIdentifiers:(id)a3;
- (id)_LSResolveIdentifiers:(id)a3 context:(LSContext *)a4;
- (id)_MCRestrictionManager;
- (id)allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:(void *)a3 originatingAppBundleID:(uint64_t)a4 originatingAccountIsManaged:;
- (id)allowlistedBundleIDs;
- (id)calculateSetDifference:(id)a3 and:(id)a4;
- (id)defaultStateProvider;
- (id)isApplicationRestricted:(id *)a1;
- (id)isApplicationRestricted:(uint64_t)a3 checkFlags:;
- (id)maximumRating;
- (id)ratingRankExceptionBundleIDs;
- (id)removedSystemApplicationIdentifiers;
- (id)restrictedBundleIDs;
- (os_unfair_lock_s)systemMode;
- (uint64_t)isAdTrackingEnabled;
- (uint64_t)isLimitAdTrackingForced;
- (uint64_t)isOpenInRestrictionInEffect;
- (uint64_t)isSystemAppDeletionEnabled;
- (uint64_t)reasonForApplicationRestriction:(uint64_t)a3 checkFlags:(void *)a4 stateProvider:;
- (uint64_t)setApplication:(int)a3 removed:;
- (void)_pruneObsoleteTrustedSignerIdentities;
- (void)beginListeningForChanges;
- (void)clearAllValues;
- (void)handleMCEffectiveSettingsChanged;
- (void)handleSystemModeChangeTo:(id)a3;
- (void)locked_setAllowlistedBundleIDs:(uint64_t)a1;
- (void)locked_setRatingRankExceptionBundleIDs:(uint64_t)a1;
- (void)locked_setRestrictedBundleIDs:(uint64_t)a1;
- (void)scanForMissedNotificationsForImportantAppsIfNecessary;
- (void)schedulePruneObsoleteTrustedSignerIdentities;
- (void)setRemovedSystemApplicationIdentifiers:(void *)a1;
- (void)systemMode;
- (void)willRestrictedStateOfBundleWithRatingRank:(unint64_t)a3 changeOnUpdateToRatingRank:;
@end

@implementation LSApplicationRestrictionsManager

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken_0 != -1)
  {
    +[LSApplicationRestrictionsManager sharedInstance];
  }

  v0 = sharedInstance_sharedInstance_0;

  return v0;
}

- (uint64_t)isSystemAppDeletionEnabled
{
  if (result)
  {
    OUTLINED_FUNCTION_2_2();
    if (v3 || (v4 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2), (*(v2 + 272) = v4) != 0))
    {
      MCFeatureSystemAppRemovalAllowed = getMCFeatureSystemAppRemovalAllowed();

      return [v1 isFeatureAllowed:MCFeatureSystemAppRemovalAllowed];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isAllowlistEnabled
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_3();
  v7 = 3221225472;
  v8 = __54__LSApplicationRestrictionsManager_isAllowlistEnabled__block_invoke;
  v9 = &unk_1E6A19568;
  v10 = v1;
  v3 = _LSLazyLoadObjectWithLock((v1 + 32), v2 + 2, v6);
  v4 = [v3 integerValue] != 0;

  return v4;
}

- (id)restrictedBundleIDs
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3();
    v6 = 3221225472;
    v7 = __55__LSApplicationRestrictionsManager_restrictedBundleIDs__block_invoke;
    v8 = &unk_1E6A19590;
    v9 = v2;
    a1 = _LSLazyLoadObjectWithLock((v2 + 64), v3 + 2, v5);
    v1 = vars8;
  }

  return a1;
}

- (id)defaultStateProvider
{
  if (a1)
  {
    a1 = [[LSAskManagerMCStateProvider alloc] initWithRestrictionsManager:a1];
    v1 = vars8;
  }

  return a1;
}

- (id)maximumRating
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_2();
    if (v4 || (v5 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2), (*(v2 + 272) = v5) != 0))
    {
      OUTLINED_FUNCTION_1_5();
      v8 = 3221225472;
      v9 = __49__LSApplicationRestrictionsManager_maximumRating__block_invoke;
      v10 = &unk_1E6A19568;
      v11 = v1;
      a1 = _LSLazyLoadObjectWithLock((v1 + 72), (v1 + 8), v7);
    }

    else
    {
      a1 = &unk_1EEF8E978;
    }

    v3 = vars8;
  }

  return a1;
}

void __50__LSApplicationRestrictionsManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LSApplicationRestrictionsManager);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;
}

- (LSApplicationRestrictionsManager)init
{
  v19.receiver = self;
  v19.super_class = LSApplicationRestrictionsManager;
  v2 = [(LSApplicationRestrictionsManager *)&v19 init];
  if (v2)
  {
    if (ManagedConfigurationLibrary_frameworkLibrary || (ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2)) != 0)
    {
      *(v2 + 2) = 0;
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4 = dispatch_queue_create("com.apple.lsd.restrictionsmanager.signerIdentitySyncQueue", v3);
      v5 = *(v2 + 2);
      *(v2 + 2) = v4;

      if ([__LSDefaultsGetSharedInstance() isServer])
      {
        objc_initWeak(&location, v2);
        v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 2));
        v7 = dispatch_time(0, 120000000000);
        dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __40__LSApplicationRestrictionsManager_init__block_invoke;
        v16 = &unk_1E6A19540;
        objc_copyWeak(&v17, &location);
        dispatch_source_set_event_handler(v6, &v13);
        dispatch_resume(v6);
        v8 = *(v2 + 3);
        *(v2 + 3) = v6;

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      if ([__LSDefaultsGetSharedInstance() isServer])
      {
        v9 = sel_handleMCEffectiveSettingsChanged;
      }

      else
      {
        v9 = sel_clearAllValues;
        DistributedCenter = CFNotificationCenterGetDistributedCenter();
        CFNotificationCenterAddObserver(DistributedCenter, v2, _applicationStateChangedCallback, @"com.apple.LaunchServices.applicationStateChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 addObserver:v2 selector:v9 name:getMCEffectiveSettingsChangedNotification[0]() object:0];
    }
  }

  return v2;
}

id __49__LSApplicationRestrictionsManager_maximumRating__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _MCProfileConnection];
  v2 = [v1 effectiveValueForSetting:getMCFeatureMaximumAppsRating[0]()];

  return v2;
}

id __54__LSApplicationRestrictionsManager_isAllowlistEnabled__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _MCProfileConnection];
  v3 = [v1 numberWithUnsignedInt:{objc_msgSend(v2, "appWhitelistState")}];

  return v3;
}

id __55__LSApplicationRestrictionsManager_restrictedBundleIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _MCProfileConnection];
  v3 = [v2 restrictedAppBundleIDsExcludingRemovedSystemApps];
  v4 = [v1 _LSResolveIdentifiers:v3];

  return v4;
}

- (os_unfair_lock_s)systemMode
{
  v1 = a1;
  if (a1)
  {
    if (([__LSDefaultsGetSharedInstance() isServer] & 1) == 0 && !_LSCurrentProcessCanAccessManagedSettings())
    {
      [(LSApplicationRestrictionsManager *)sel_systemMode systemMode];
    }

    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__3;
    v13 = __Block_byref_object_dispose__3;
    v14 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v5 = __46__LSApplicationRestrictionsManager_systemMode__block_invoke;
    v6 = &unk_1E6A195B8;
    v7 = v1;
    v8 = &v9;
    v2 = v4;
    os_unfair_lock_lock(v1 + 2);
    v5(v2);
    os_unfair_lock_unlock(v1 + 2);

    v1 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return v1;
}

+ (id)activeRestrictionIdentifiers
{
  objc_opt_self();
  if (activeRestrictionIdentifiers_onceToken != -1)
  {
    +[LSApplicationRestrictionsManager activeRestrictionIdentifiers];
  }

  v0 = activeRestrictionIdentifiers_restrictionUUIDs;

  return v0;
}

void __64__LSApplicationRestrictionsManager_activeRestrictionIdentifiers__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.lsd.appremoval"];
  v1 = activeRestrictionIdentifiers_restrictionUUIDs;
  activeRestrictionIdentifiers_restrictionUUIDs = v0;
}

void __40__LSApplicationRestrictionsManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pruneObsoleteTrustedSignerIdentities];
}

- (id)_MCRestrictionManager
{
  v2 = [getMCRestrictionManagerClass[0]() sharedManager];
  if (!v2)
  {
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationRestrictionsManager _MCRestrictionManager];
    }
  }

  return v2;
}

- (id)_LSResolveIdentifiers:(id)a3 context:(LSContext *)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  v7 = v6;

  return v7;
}

- (id)_LSResolveIdentifiers:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  return v6;
}

id __56__LSApplicationRestrictionsManager_allowlistedBundleIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _MCProfileConnection];
  v3 = [v2 effectiveWhitelistedAppBundleIDs];
  v4 = [v1 _LSResolveIdentifiers:v3];

  return v4;
}

id __64__LSApplicationRestrictionsManager_ratingRankExceptionBundleIDs__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) _MCProfileConnection];
  v4 = [v3 appsRatingExemptedBundleIDs];
  v5 = [v2 setWithArray:v4];

  v6 = [*(a1 + 32) _LSResolveIdentifiers:v5];

  return v6;
}

void __89__LSApplicationRestrictionsManager_scanForMissedNotificationsForImportantAppsIfNecessary__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = [__LSDefaultsGetSharedInstance() isInSyncBubble];
  v3 = _LSDefaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "in sync bubble, not scanning for missed notifications", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "scanning for any missed notifications for important apps", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = [v6 _MCProfileConnection];
    v8 = [v7 effectiveWhitelistedAppBundleIDs];
    v3 = [v6 _LSResolveIdentifiers:v8];

    v9 = *(a1 + 32);
    v10 = [v9 _MCProfileConnection];
    v11 = [v10 restrictedAppBundleIDsExcludingRemovedSystemApps];
    v12 = [v9 _LSResolveIdentifiers:v11];

    v13 = *(a1 + 32);
    v14 = MEMORY[0x1E695DFD8];
    v15 = [v13 _MCProfileConnection];
    v16 = [v15 appsRatingExemptedBundleIDs];
    v17 = [v14 setWithArray:v16];
    v18 = [v13 _LSResolveIdentifiers:v17];

    v19 = [*(a1 + 32) _MCProfileConnection];
    v20 = [v19 appWhitelistState] != 0;

    v21 = [*(a1 + 32) _MCProfileConnection];
    v22 = [v21 effectiveValueForSetting:getMCFeatureMaximumAppsRating[0]()];

    v23 = CFPreferencesCopyValue(@"LSLastSeenImportantAppRestrictionStateKey", @"com.apple.lsd.restrictionhardening", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    if (_LSIsDictionaryWithKeysAndValuesOfClass(v23, v24, v25))
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    v28 = [[LSUseValuesMCStateProvider alloc] initWithAllowlistEnabled:v20 allowlistedBundles:v3 restrictedBundles:v12 ratingRankExceptions:v18 maximumRating:v22];
    v29 = computeImportantBundleRestrictionState(v28);
    v30 = v29;
    if (v27)
    {
      v48 = v28;
      v49 = v27;
      v50 = v22;
      v51 = v18;
      v52 = v12;
      v53 = v3;
      v31 = v27;
      v47 = v30;
      v32 = v30;
      v54 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v56 = v32;
      obj = [v32 allKeys];
      v33 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v60;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v60 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v59 + 1) + 8 * i);
            v38 = [v56 objectForKeyedSubscript:v37];
            v39 = [v38 BOOLValue];
            v40 = [v31 objectForKeyedSubscript:v37];
            v41 = [v40 BOOLValue];

            if (v39 != v41)
            {
              if (_LSIsNewsWidgetBundleIdentifier(v37))
              {
                v42 = @"com.apple.news";
              }

              else
              {
                v42 = v37;
              }

              [v54 addObject:v42];
            }
          }

          v34 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
        }

        while (v34);
      }

      v43 = [v54 count];
      v44 = _LSDefaultLog();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
      if (v43)
      {
        v27 = v49;
        v30 = v47;
        if (v45)
        {
          *buf = 138543362;
          v64 = v54;
          _os_log_impl(&dword_18162D000, v44, OS_LOG_TYPE_DEFAULT, "Found important apps whose restriction state changed before startup: %{public}@", buf, 0xCu);
        }

        v46 = +[LSApplicationWorkspace defaultWorkspace];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __89__LSApplicationRestrictionsManager_scanForMissedNotificationsForImportantAppsIfNecessary__block_invoke_113;
        v57[3] = &unk_1E6A195E0;
        v58 = v56;
        v28 = v48;
        [v46 sendApplicationStateChangedNotificationsFor:v54 stateProvider:v48 completion:v57];

        v12 = v52;
        v3 = v53;
        v22 = v50;
        v18 = v51;
      }

      else
      {
        v27 = v49;
        v30 = v47;
        if (v45)
        {
          *buf = 0;
          _os_log_impl(&dword_18162D000, v44, OS_LOG_TYPE_DEFAULT, "No important app restriction state changes, continuing.", buf, 2u);
        }

        saveImportantBundleRestrictionState(v56);
        v12 = v52;
        v3 = v53;
        v22 = v50;
        v18 = v51;
        v28 = v48;
      }
    }

    else
    {
      saveImportantBundleRestrictionState(v29);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)beginListeningForChanges
{
  if (a1)
  {
    v2 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v2 assertActiveForThisThread];

    if (ManagedConfigurationLibrary_frameworkLibrary || (ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2)) != 0)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v5 = __60__LSApplicationRestrictionsManager_beginListeningForChanges__block_invoke;
      v6 = &unk_1E6A195E0;
      v7 = a1;
      v3 = v4;
      os_unfair_lock_lock(a1 + 2);
      v5(v3);
      os_unfair_lock_unlock(a1 + 2);
    }
  }
}

void __60__LSApplicationRestrictionsManager_beginListeningForChanges__block_invoke(uint64_t a1)
{
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Fetching all restrictions values and listening for change notifications", buf, 2u);
  }

  v33 = 0;
  *buf = 0;
  inited = _LSContextInitReturningError(buf, &v33);
  v4 = v33;
  if (inited)
  {
    v5 = *(a1 + 32);
    v6 = [v5 _MCProfileConnection];
    v7 = [v6 effectiveWhitelistedAppBundleIDs];
    v8 = [v5 _LSResolveIdentifiers:v7 context:buf];

    [(LSApplicationRestrictionsManager *)*(a1 + 32) locked_setAllowlistedBundleIDs:v8];
    v9 = *(a1 + 32);
    v10 = [v9 _MCProfileConnection];
    v11 = [v10 restrictedAppBundleIDsExcludingRemovedSystemApps];
    v12 = [v9 _LSResolveIdentifiers:v11 context:buf];

    [(LSApplicationRestrictionsManager *)*(a1 + 32) locked_setRestrictedBundleIDs:v12];
    v13 = *(a1 + 32);
    v14 = MEMORY[0x1E695DFD8];
    v15 = [v13 _MCProfileConnection];
    v16 = [v15 appsRatingExemptedBundleIDs];
    v17 = [v14 setWithArray:v16];
    v18 = [v13 _LSResolveIdentifiers:v17 context:buf];

    [(LSApplicationRestrictionsManager *)*(a1 + 32) locked_setRatingRankExceptionBundleIDs:v18];
    _LSContextDestroy(buf);
  }

  else
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__LSApplicationRestrictionsManager_beginListeningForChanges__block_invoke_cold_1(v4, v8);
    }
  }

  v19 = _LSDatabaseGetSeedingGroup();
  v20 = _LSServer_GetAsyncWorkQueue();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __60__LSApplicationRestrictionsManager_beginListeningForChanges__block_invoke_114;
  v32[3] = &unk_1E6A195E0;
  v32[4] = *(a1 + 32);
  dispatch_group_notify(v19, v20, v32);

  v21 = MEMORY[0x1E696AD98];
  v22 = [*(a1 + 32) _MCProfileConnection];
  v23 = [v21 numberWithUnsignedInt:{objc_msgSend(v22, "appWhitelistState")}];
  v24 = *(a1 + 32);
  v25 = *(v24 + 32);
  *(v24 + 32) = v23;

  v26 = [*(a1 + 32) _MCProfileConnection];
  v27 = [v26 effectiveValueForSetting:getMCFeatureMaximumAppsRating[0]()];
  v28 = *(a1 + 32);
  v29 = *(v28 + 72);
  *(v28 + 72) = v27;

  v30 = [(LSApplicationRestrictionsManager *)*(a1 + 32) isSystemAppDeletionEnabled];
  v31 = 1;
  if (!v30)
  {
    v31 = 2;
  }

  *(*(a1 + 32) + 40) = v31;
}

- (id)calculateSetDifference:(id)a3 and:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(LSApplicationRestrictionsManager *)v5 calculateSetDifference:v6 and:v7];
  }

  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if (([v6 containsObject:v14] & 1) == 0)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        if (([v9 containsObject:{v20, v23}] & 1) == 0)
        {
          [v8 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)handleSystemModeChangeTo:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __61__LSApplicationRestrictionsManager_handleSystemModeChangeTo___block_invoke;
  v10 = &unk_1E6A19608;
  v13 = &v14;
  v11 = self;
  v5 = v4;
  v12 = v5;
  v6 = v8;
  os_unfair_lock_lock(&self->_restrictionsAccessLock);
  v9(v6);
  os_unfair_lock_unlock(&self->_restrictionsAccessLock);

  if (v15[5] != v5)
  {
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    [v7 sendExtensionNotificationsForSystemModeChangeFrom:v15[5] to:v5];
  }

  _Block_object_dispose(&v14, 8);
}

void __61__LSApplicationRestrictionsManager_handleSystemModeChangeTo___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 96));
  v2 = a1[5];
  v3 = (a1[4] + 96);

  objc_storeStrong(v3, v2);
}

- (void)handleMCEffectiveSettingsChanged
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_18162D000, a1, OS_LOG_TYPE_DEFAULT, "LSAppRestrictionsManager: handleMCEffectiveSettingsChanged.", v2, 2u);
  }
}

BOOL __68__LSApplicationRestrictionsManager_handleMCEffectiveSettingsChanged__block_invoke(_BOOL8 *a1)
{
  result = [(LSApplicationRestrictionsManager *)a1[4] isAppExtensionRestricted:?];
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[6] + 8) + 24) = *(a1[4] + 40);
  return result;
}

void __68__LSApplicationRestrictionsManager_handleMCEffectiveSettingsChanged__block_invoke_122(uint64_t a1)
{
  v1 = computeImportantBundleRestrictionState(*(a1 + 32));
  saveImportantBundleRestrictionState(v1);
}

- (void)clearAllValues
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __50__LSApplicationRestrictionsManager_clearAllValues__block_invoke;
  v6 = &unk_1E6A195E0;
  v7 = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_restrictionsAccessLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_restrictionsAccessLock);
}

- (void)_pruneObsoleteTrustedSignerIdentities
{
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v3 = _LSDatabaseGetSeedingGroup();
    signerIdentitySyncQueue = self->_signerIdentitySyncQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__LSApplicationRestrictionsManager__pruneObsoleteTrustedSignerIdentities__block_invoke;
    block[3] = &unk_1E6A195E0;
    block[4] = self;
    dispatch_group_notify(v3, signerIdentitySyncQueue, block);
  }

  else
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationRestrictionsManager _pruneObsoleteTrustedSignerIdentities];
    }
  }
}

void __73__LSApplicationRestrictionsManager__pruneObsoleteTrustedSignerIdentities__block_invoke(uint64_t a1)
{
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __73__LSApplicationRestrictionsManager__pruneObsoleteTrustedSignerIdentities__block_invoke_cold_1();
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  v4 = [*(a1 + 32) _MCProfileConnection];
  v5 = [v4 trustedCodeSigningIdentities];
  v6 = [v3 initWithArray:v5];

  v7 = [v6 mutableCopy];
  v8 = _LSServer_DatabaseExecutionContext();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__LSApplicationRestrictionsManager__pruneObsoleteTrustedSignerIdentities__block_invoke_124;
  v12[3] = &unk_1E6A19680;
  v9 = v7;
  v13 = v9;
  [(LSDBExecutionContext *)v8 syncRead:v12];

  if (v6 && [v9 count])
  {
    [v6 minusSet:v9];
    v10 = [*(a1 + 32) _MCProfileConnection];
    v11 = [v6 allObjects];
    [v10 setTrustedCodeSigningIdentities:v11];
  }
}

void __73__LSApplicationRestrictionsManager__pruneObsoleteTrustedSignerIdentities__block_invoke_124(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [LSApplicationRecord enumeratorWithOptions:0, 0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) signerIdentity];
        if (v7)
        {
          [*(a1 + 32) removeObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)_LSApplyRestrictedSet:(id)a3 forRestriction:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  v10 = [v8 allObjects];

  [v9 MCSetUnionRestriction:v7 values:v10];
  v11 = [v9 copy];
  v23 = 0;
  v12 = _LSDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v11;
    v26 = 2112;
    v27 = @"com.apple.lsd.appremoval";
    _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "ManagedConfiguration applyRestrictionDictionary:%@ clientType:%@", buf, 0x16u);
  }

  v13 = [(LSApplicationRestrictionsManager *)self _MCProfileConnection];
  v22 = 0;
  v14 = [v13 applyRestrictionDictionary:v11 clientType:@"com.apple.lsd.appremoval" clientUUID:@"com.apple.lsd.appremoval" localizedClientDescription:&stru_1EEF65710 localizedWarningMessage:0 outRestrictionChanged:&v23 + 1 outEffectiveSettingsChanged:&v23 outError:&v22];
  v15 = v22;

  v16 = _LSDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    v18 = v17;
    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = &stru_1EEF65710;
    }

    *buf = 138412546;
    v25 = v17;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "ManagedConfiguration applyRestrictionDictionary complete with result %@ %@", buf, 0x16u);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isApplicationRestricted:(uint64_t)a3 checkFlags:(void *)a4 stateProvider:
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (a1 && (a3 & 0x40000000000) == 0)
  {
    v10 = computeApplicationRestrictionReasonWithMCStateProvider(v8, v7, 1) != 0;
  }

  return v10;
}

- (uint64_t)reasonForApplicationRestriction:(uint64_t)a3 checkFlags:(void *)a4 stateProvider:
{
  if (!a1 || (a3 & 0x40000000000) != 0)
  {
    return 0;
  }

  else
  {
    return computeApplicationRestrictionReasonWithMCStateProvider(a4, a2, 1);
  }
}

- (id)allowlistedBundleIDs
{
  if (a1)
  {
    v2 = a1;
    if ([(LSApplicationRestrictionsManager *)a1 isAllowlistEnabled])
    {
      OUTLINED_FUNCTION_1_5();
      v5 = 3221225472;
      v6 = __56__LSApplicationRestrictionsManager_allowlistedBundleIDs__block_invoke;
      v7 = &unk_1E6A19590;
      v8 = v2;
      a1 = _LSLazyLoadObjectWithLock(v2 + 7, v2 + 2, v4);
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}

- (uint64_t)isOpenInRestrictionInEffect
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _MCProfileConnection];
  v2 = [v1 isOpenInRestrictionInEffect];

  if (v2)
  {
    return 1;
  }

  if (![__LSDefaultsGetSharedInstance() isAppleInternal])
  {
    return 0;
  }

  v4 = CFPreferencesCopyValue(@"LSPretendOpenInRestrictionInEffect", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v4 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)locked_setAllowlistedBundleIDs:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_assert_owner((a1 + 8));
    v4 = [v3 copy];

    v5 = *(a1 + 56);
    *(a1 + 56) = v4;
  }
}

- (void)locked_setRestrictedBundleIDs:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_assert_owner((a1 + 8));
    v4 = [v3 copy];

    v5 = *(a1 + 64);
    *(a1 + 64) = v4;
  }
}

- (id)ratingRankExceptionBundleIDs
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3();
    v6 = 3221225472;
    v7 = __64__LSApplicationRestrictionsManager_ratingRankExceptionBundleIDs__block_invoke;
    v8 = &unk_1E6A19590;
    v9 = v2;
    a1 = _LSLazyLoadObjectWithLock((v2 + 80), v3 + 2, v5);
    v1 = vars8;
  }

  return a1;
}

- (void)locked_setRatingRankExceptionBundleIDs:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_assert_owner((a1 + 8));
    v4 = [v3 copy];

    v5 = *(a1 + 80);
    *(a1 + 80) = v4;
  }
}

- (void)scanForMissedNotificationsForImportantAppsIfNecessary
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_5();
    v3 = 3221225472;
    v4 = __89__LSApplicationRestrictionsManager_scanForMissedNotificationsForImportantAppsIfNecessary__block_invoke;
    v5 = &unk_1E6A195E0;
    v6 = v1;
    if (scanForMissedNotificationsForImportantAppsIfNecessary_once != -1)
    {
      dispatch_once(&scanForMissedNotificationsForImportantAppsIfNecessary_once, block);
    }
  }
}

- (BOOL)isAppExtensionRestricted:(_BOOL8)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = (ManagedConfigurationLibrary_frameworkLibrary || (ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2)) != 0) && _LSIsNewsWidgetBundleIdentifier(v3) && ![a1 isFeatureAllowed:getMCFeatureNewsTodayAllowed()];
  }

  return a1;
}

void __68__LSApplicationRestrictionsManager_handleMCEffectiveSettingsChanged__block_invoke_123(uint64_t a1)
{
  [(LSApplicationRestrictionsManager *)*(a1 + 32) locked_setAllowlistedBundleIDs:?];
  [(LSApplicationRestrictionsManager *)*(a1 + 32) locked_setRestrictedBundleIDs:?];
  [(LSApplicationRestrictionsManager *)*(a1 + 32) locked_setRatingRankExceptionBundleIDs:?];
  v2 = [*(a1 + 64) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 72) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;

  *(*(a1 + 32) + 40) = *(a1 + 80);
}

void __50__LSApplicationRestrictionsManager_clearAllValues__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = 0;

  [(LSApplicationRestrictionsManager *)*(a1 + 32) locked_setRestrictedBundleIDs:?];
  [(LSApplicationRestrictionsManager *)*(a1 + 32) locked_setAllowlistedBundleIDs:?];
  v6 = *(a1 + 32);

  [(LSApplicationRestrictionsManager *)v6 locked_setRatingRankExceptionBundleIDs:?];
}

- (void)schedulePruneObsoleteTrustedSignerIdentities
{
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 16));
    if ([__LSDefaultsGetSharedInstance() isServer])
    {
      v2 = dispatch_time(0, 1000000000);
      v3 = *(a1 + 24);

      dispatch_source_set_timer(v3, v2, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    }
  }
}

- (void)setRemovedSystemApplicationIdentifiers:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (ManagedConfigurationLibrary_frameworkLibrary || (ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2)) != 0)
    {
      [a1 _LSApplyRestrictedSet:v3 forRestriction:getMCFeatureRemovedSystemAppBundleIDs[0]()];
    }
  }
}

- (id)removedSystemApplicationIdentifiers
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 _MCProfileConnection];
    v3 = [v2 removedSystemAppBundleIDs];
    v1 = [v1 _LSResolveIdentifiers:v3];
  }

  return v1;
}

- (uint64_t)setApplication:(int)a3 removed:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    if (!ManagedConfigurationLibrary_frameworkLibrary)
    {
      a1 = 0;
      goto LABEL_14;
    }
  }

  v6 = [a1 _MCProfileConnection];
  v7 = [v6 removedSystemAppBundleIDs];
  v8 = [a1 _LSResolveIdentifiers:v7];
  v9 = [v8 mutableCopy];

  if (a3)
  {
    [v9 addObject:v5];
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      v11 = "Added identifier %@ to removedSystemApplications list";
LABEL_9:
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, v11, &v16, 0xCu);
    }
  }

  else
  {
    [v9 removeObject:v5];
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      v11 = "Removed identifier %@ from removedSystemApplications list";
      goto LABEL_9;
    }
  }

  a1 = [a1 _LSApplyRestrictedSet:v9 forRestriction:getMCFeatureRemovedSystemAppBundleIDs[0]()];
  if ((a1 & 1) == 0)
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = @"restore";
      if (a3)
      {
        v15 = @"remove";
      }

      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_18162D000, v12, OS_LOG_TYPE_ERROR, "Failed to %@ app with bundleID: %@", &v16, 0x16u);
    }
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

- (BOOL)isRatingAllowed:(void *)a3 forBundleIdentifier:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [(LSApplicationRestrictionsManager *)a1 maximumRating];
    a1 = !v7 || [v5 intValue] < 1 || (v8 = objc_msgSend(v5, "intValue"), v8 <= objc_msgSend(v7, "intValue")) || v6 && (-[LSApplicationRestrictionsManager ratingRankExceptionBundleIDs](a1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", v6), v9, (v10 & 1) != 0);
  }

  return a1;
}

- (id)isApplicationRestricted:(id *)a1
{
  if (a1)
  {
    return OUTLINED_FUNCTION_3_1(a1, a2);
  }

  return a1;
}

- (id)isApplicationRestricted:(uint64_t)a3 checkFlags:
{
  if (result)
  {
    v4 = result;
    v5 = a2;
    v6 = [(LSApplicationRestrictionsManager *)v4 defaultStateProvider];
    v7 = [(LSApplicationRestrictionsManager *)v4 isApplicationRestricted:v5 checkFlags:a3 stateProvider:v6];

    return v7;
  }

  return result;
}

- (BOOL)isApplicationRestricted:(int)a3 checkFeatureRestrictions:
{
  if (!a1)
  {
    return 0;
  }

  v5 = a2;
  v6 = [(LSApplicationRestrictionsManager *)a1 defaultStateProvider];
  v7 = computeApplicationRestrictionReasonWithMCStateProvider(v6, v5, a3);

  v8 = v7 != 0;
  return v8;
}

- (id)allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:(void *)a3 originatingAppBundleID:(uint64_t)a4 originatingAccountIsManaged:
{
  v4 = a1;
  if (a1)
  {
    v7 = a3;
    v8 = a2;
    v9 = [v4 _MCProfileConnection];
    v10 = [v9 allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:v8 originatingAppBundleID:v7 originatingAccountIsManaged:a4];

    if (v10)
    {
      v4 = [MEMORY[0x1E695DFD8] setWithArray:v10];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (uint64_t)isAdTrackingEnabled
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_2();
  if (!v3)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    *(v2 + 272) = v4;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = getMCFeatureIdentifierForAdvertisingAllowed[0]();

  return [v1 isFeatureAllowed:v5];
}

- (uint64_t)isLimitAdTrackingForced
{
  if (result)
  {
    OUTLINED_FUNCTION_2_2();
    if (v3 || (v4 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2), (*(v2 + 272) = v4) != 0))
    {
      v5 = getMCFeatureLimitAdTrackingForced[0]();

      return [v1 isFeatureAllowed:v5];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)forceUpdateRestrictionKnowledgeWithError:(void *)a1
{
  if (a1)
  {
    v2 = [a1 _MCRestrictionManager];
    [v2 invalidateSettings];

    v3 = [a1 _MCRestrictionManager];
    [v3 invalidateRestrictions];

    [a1 handleMCEffectiveSettingsChanged];
  }

  return a1 != 0;
}

- (void)willRestrictedStateOfBundleWithRatingRank:(unint64_t)a3 changeOnUpdateToRatingRank:
{
  if (result)
  {
    v5 = [(LSApplicationRestrictionsManager *)result maximumRating];
    v6 = [v5 unsignedLongLongValue];

    return ((v6 < a2) ^ (v6 < a3));
  }

  return result;
}

- (void)systemMode
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"LSApplicationRestrictionsManager.m" lineNumber:660 description:@"Unable to access mannaged settings."];
}

void __60__LSApplicationRestrictionsManager_beginListeningForChanges__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[LSApplicationRestrictionsManager beginListeningForChanges]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Could not set allowlisted or restricted bundleIDs: could not get context in %s: %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)calculateSetDifference:(os_log_t)log and:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "LSAppRestrictionsManager: comparing old %@ to new %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end