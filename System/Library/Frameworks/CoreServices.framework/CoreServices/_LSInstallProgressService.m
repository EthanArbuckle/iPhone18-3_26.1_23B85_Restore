@interface _LSInstallProgressService
+ (id)sharedInstance;
+ (int)notificationTypeForOperation:(unint64_t)a3;
+ (void)beginListening;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SEL)observerSelectorForNotification:(int)a3;
- (_LSInstallProgressService)init;
- (id)_LSFindPlaceholderApplications;
- (id)_prepareApplicationProxiesForNotification:(int)a3 identifiers:(id)a4 withPlugins:(BOOL)a5;
- (id)loadJournalledNotificationsFromDisk;
- (id)parentProgressForApplication:(id)a3 andPhase:(unint64_t)a4 isActive:(BOOL)a5;
- (id)progressProportionsForBundleID:(id)a3;
- (unint64_t)finalInstallPhaseForAppProxy:(id)a3;
- (void)_placeholderIconUpdatedForApp:(id)a3;
- (void)_placeholdersUninstalled:(id)a3;
- (void)addObserver:(id)a3;
- (void)addSendNotificationFenceWithTimeout:(double)a3 fenceBlock:(id)a4;
- (void)coalesceProportionsSave;
- (void)createInstallProgressForApplication:(id)a3 withPhase:(unint64_t)a4 andPublishingString:(id)a5 reply:(id)a6;
- (void)detachAndSendNotification:(id)a3 forApplicationExtensionRecords:(id)a4;
- (void)discardProportionsForBundleID:(id)a3;
- (void)dispatchJournalledNotificationsToConnectedClients;
- (void)dispatchJournalledNotificationsToObserver:(id)a3;
- (void)getMaxProgressPhaseUnitsForLoading:(int *)a3 restoring:(int *)a4 installing:(int *)a5 essentialAssets:(int *)a6 forAppProxy:(id)a7;
- (void)installationEndedForApplication:(id)a3 withState:(unint64_t)a4;
- (void)installationFailedForApplication:(id)a3;
- (void)loadProportions;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performJournalRecovery;
- (void)rebuildInstallIndexes;
- (void)removeObserver:(id)a3;
- (void)restoreInactiveInstalls;
- (void)saveProportions;
- (void)sendDatabaseRebuiltNotification;
- (void)sendDatabaseRebuiltNotificationToObserver:(id)a3;
- (void)sendNetworkUsageChangedNotification;
- (void)sendNotification:(id)a3 ForPlugins:(id)a4;
- (void)sendNotification:(int)a3 forAppProxies:(id)a4 Plugins:(BOOL)a5 completion:(id)a6;
- (void)setProgressProportionsByPhase:(id)a3 forInstallOfApplicationWithIdentifier:(id)a4 completion:(id)a5;
@end

@implementation _LSInstallProgressService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[_LSInstallProgressService sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

+ (void)beginListening
{
  if (beginListening_once != -1)
  {
    +[_LSInstallProgressService beginListening];
  }
}

+ (int)notificationTypeForOperation:(unint64_t)a3
{
  if (a3 > 8)
  {
    return 1;
  }

  else
  {
    return dword_1817E91A8[a3];
  }
}

- (_LSInstallProgressService)init
{
  v37.receiver = self;
  v37.super_class = _LSInstallProgressService;
  v2 = [(_LSInstallProgressService *)&v37 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = objc_alloc_init(LSInstallProgressList);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = *(v2 + 3);
    *(v2 + 3) = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:0];
    v10 = *(v2 + 5);
    *(v2 + 5) = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v12 = *(v2 + 4);
    *(v2 + 4) = v11;

    v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    v14 = *(v2 + 6);
    *(v2 + 6) = v13;

    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;

    v17 = dispatch_queue_create("com.apple.lsd.appcontrols", 0);
    v18 = *(v2 + 8);
    *(v2 + 8) = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.lsd.observers", v19);
    v21 = *(v2 + 9);
    *(v2 + 9) = v20;

    *(v2 + 128) = 0;
    [v2 sendNetworkUsageChangedNotification];
    v22 = *(v2 + 9);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33___LSInstallProgressService_init__block_invoke;
    block[3] = &unk_1E6A195E0;
    v23 = v2;
    v36 = v23;
    dispatch_async(v22, block);
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = v23[11];
    v23[11] = v24;

    v26 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 9));
    v27 = v23[13];
    v23[13] = v26;

    objc_initWeak(&location, v23);
    v28 = v23[13];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __33___LSInstallProgressService_init__block_invoke_2;
    handler[3] = &unk_1E6A19540;
    objc_copyWeak(&v33, &location);
    dispatch_source_set_event_handler(v28, handler);
    dispatch_resume(v23[13]);
    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = v23[15];
    v23[15] = v29;

    *(v23 + 28) = 0;
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)_LSFindPlaceholderApplications
{
  v7 = 0;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!_LSContextInit(&v7))
  {
    [(_LSDatabase *)v7 store];
    v3 = *([(_LSDatabase *)v7 schema]+ 4);
    v6 = v7;
    v5 = v2;
    _CSStoreEnumerateUnits();
    _LSContextDestroy(&v7);
  }

  return v2;
}

- (void)restoreInactiveInstalls
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__56;
  v29 = __Block_byref_object_dispose__56;
  v30 = 0;
  v3 = _LSDatabaseGetSeedingGroup();
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = _LSServer_DatabaseExecutionContext();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52___LSInstallProgressService_restoreInactiveInstalls__block_invoke;
  v24[3] = &unk_1E6A18DA0;
  v24[4] = self;
  v24[5] = &v25;
  [(LSDBExecutionContext *)v4 syncRead:v24];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v26[5];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v35 count:16];
  if (v5)
  {
    v7 = *v21;
    *&v6 = 138412546;
    v17 = v6;
    v8 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AE38];
        v12 = [v10 bundleIdentifier];
        v13 = [v11 publishingKeyForApp:v12 withPhase:0];

        v14 = _LSProgressLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v10 installFailureReason];
          *buf = v17;
          v32 = v10;
          v33 = 2112;
          v34 = v15;
          _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "Restoring progress for %@ with failure state %@", buf, 0x16u);
        }

        v19[0] = v8;
        v19[1] = 3221225472;
        v19[2] = __52___LSInstallProgressService_restoreInactiveInstalls__block_invoke_217;
        v19[3] = &unk_1E6A19AC0;
        v19[4] = v10;
        [(_LSInstallProgressService *)self createInstallProgressForApplication:v10 withPhase:0 andPublishingString:v13 reply:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v35 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v25, 8);
  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (softLinkMKBDeviceUnlockedSinceBoot[0]() <= 0)
  {
    v8 = [v7 _xpcConnection];
    v9 = _LSCopyExecutableURLForXPCConnection(v8);

    v10 = [(__CFURL *)v9 lastPathComponent];
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      *buf = 138412802;
      v30 = v12;
      v31 = 2112;
      v32 = v10;
      v33 = 2048;
      v34 = [v7 processIdentifier];
      _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "Service %@ being accessed by %@ (%lu) before first unlock.", buf, 0x20u);
    }
  }

  v14 = installProgressInterface();
  [v7 setExportedInterface:v14];

  v15 = workspaceObserverInterface();
  [v7 setRemoteObjectInterface:v15];

  v16 = [[LSInstallProgressObserver alloc] initWithConnection:v7];
  [v7 setExportedObject:v16];
  objc_initWeak(buf, self);
  objc_initWeak(&location, v7);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __64___LSInstallProgressService_listener_shouldAcceptNewConnection___block_invoke;
  v24 = &unk_1E6A1F258;
  objc_copyWeak(&v26, &location);
  objc_copyWeak(&v27, buf);
  v17 = v16;
  v25 = v17;
  v18 = MEMORY[0x1865D71B0](&v21);
  [v7 setInvalidationHandler:{v18, v21, v22, v23, v24}];
  [v7 setInterruptionHandler:v18];
  [v7 resume];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___LSInstallProgressService_addObserver___block_invoke;
  block[3] = &unk_1E6A19608;
  v23 = v24;
  block[4] = self;
  v6 = v4;
  v22 = v6;
  dispatch_sync(observersQueue, block);
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableOrderedSet *)v7->_orderedInstalls array];
  v9 = [v8 copy];

  v10 = [(NSMutableSet *)v7->_inactiveInstalls allObjects];
  v11 = [v10 copy];

  objc_sync_exit(v7);
  v12 = self->_observersQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41___LSInstallProgressService_addObserver___block_invoke_2;
  v16[3] = &unk_1E6A1F280;
  v19 = v11;
  v20 = v24;
  v16[4] = v7;
  v17 = v6;
  v18 = v9;
  v13 = v11;
  v14 = v9;
  v15 = v6;
  dispatch_async(v12, v16);

  _Block_object_dispose(v24, 8);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  observersQueue = self->_observersQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44___LSInstallProgressService_removeObserver___block_invoke;
  v7[3] = &unk_1E6A18F50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observersQueue, v7);
}

- (void)getMaxProgressPhaseUnitsForLoading:(int *)a3 restoring:(int *)a4 installing:(int *)a5 essentialAssets:(int *)a6 forAppProxy:(id)a7
{
  v11 = a7;
  v12 = [v11 installType];
  if (v12 == 2)
  {
    v13 = 35;
  }

  else
  {
    v13 = 40;
  }

  if (v12 == 2)
  {
    v14 = 10;
  }

  else
  {
    v14 = 0;
  }

  if (v12 == 2)
  {
    v15 = 55;
  }

  else
  {
    v15 = 60;
  }

  v16 = [v11 bundleIdentifier];

  v36 = [(_LSInstallProgressService *)self progressProportionsForBundleID:v16];

  v17 = v36;
  if (v36)
  {
    v18 = [v36 objectForKeyedSubscript:&unk_1EEF8F0C8];
    [v18 doubleValue];
    v20 = v19;
    v21 = [v36 objectForKeyedSubscript:&unk_1EEF8F0E0];
    [v21 doubleValue];
    v23 = v20 + v22;
    v24 = [v36 objectForKeyedSubscript:&unk_1EEF8F0F8];
    [v24 doubleValue];
    v26 = v23 + v25;
    v27 = [v36 objectForKeyedSubscript:&unk_1EEF8F110];
    [v27 doubleValue];
    v29 = v26 + v28;

    v15 = computeEffectiveUnitsForPhase(0, v15, v36, v29);
    v14 = computeEffectiveUnitsForPhase(2, v14, v36, v29);
    v13 = computeEffectiveUnitsForPhase(1, v13, v36, v29);
    v17 = computeEffectiveUnitsForPhase(4, v13, v36, v29);
  }

  v30 = 100.0 / (v13 + v17 + v14 + v15);
  v31 = (v30 * v14);
  v32 = (v30 * v13);
  v33 = (v30 * v17);
  if (a3)
  {
    *a3 = 100 - v33 - (v32 + v31);
  }

  if (a4)
  {
    *a4 = v31;
  }

  if (a5)
  {
    *a5 = v32;
  }

  if (v35)
  {
    *v35 = v33;
  }
}

- (unint64_t)finalInstallPhaseForAppProxy:(id)a3
{
  v3 = [a3 correspondingApplicationRecord];
  if ([v3 requiresPostProcessing])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v80 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = [v12 objectForKey:*MEMORY[0x1E696A500]];
  v15 = [v12 objectForKey:*MEMORY[0x1E696A4F0]];
  v16 = a6;
  if (v16 && _NSIsNSString() && [v16 length])
  {
    v17 = [v16 rangeOfString:@"." options:4];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = _LSProgressLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_LSInstallProgressService observeValueForKeyPath:ofObject:change:context:];
      }

      goto LABEL_9;
    }

    v20 = v17;
    v18 = [v16 substringToIndex:v17];
    v59 = [v16 substringFromIndex:v20 + 1];
    if (!v18 || !_NSIsNSString() || ![v18 length])
    {
      v36 = _LSProgressLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v73 = v10;
        _os_log_impl(&dword_18162D000, v36, OS_LOG_TYPE_DEFAULT, "Received kvo for %@ notification with invalid bundleID", buf, 0xCu);
      }

      goto LABEL_30;
    }

    v21 = _LSProgressLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v73 = v18;
      v74 = 2112;
      *v75 = v16;
      *&v75[8] = 2112;
      *&v75[10] = v10;
      *&v75[18] = 2112;
      v76 = v12;
      _os_log_debug_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEBUG, "Received kvo for %@ <%@:%@> with change %@", buf, 0x2Au);
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__56;
    v69 = __Block_byref_object_dispose__56;
    v70 = 0;
    v22 = _LSServer_DatabaseExecutionContext();
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __76___LSInstallProgressService_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v62[3] = &unk_1E6A18DA0;
    v64 = &v65;
    v55 = v18;
    v63 = v55;
    [(LSDBExecutionContext *)v22 syncRead:v62];

    if (!v66[5])
    {
      p_super = _LSProgressLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [_LSInstallProgressService observeValueForKeyPath:ofObject:change:context:];
      }

      goto LABEL_39;
    }

    v23 = self;
    objc_sync_enter(v23);
    obj = v23;
    v58 = [(LSInstallProgressList *)v23->_progresses progressForBundleID:v55];
    if (v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v24 = [v58 installPhaseString];
      v25 = [v59 isEqualToString:v24];

      if (v25)
      {
        if ([v10 isEqualToString:@"fractionCompleted"])
        {
          [v14 doubleValue];
          v27 = v26;
          [v15 doubleValue];
          v29 = v28;
          [v15 doubleValue];
          v31 = v30;
          [v14 doubleValue];
          if (v31 < v32)
          {
            goto LABEL_38;
          }

          [v15 doubleValue];
          if (v33 > 1.0 || v29 == v27)
          {
            goto LABEL_38;
          }

          v60 = 0;
          v61 = 0;
          [(_LSInstallProgressService *)obj getMaxProgressPhaseUnitsForLoading:&v61 + 4 restoring:&v61 installing:&v60 + 4 essentialAssets:&v60 forAppProxy:v66[5]];
          v34 = [v58 installPhase];
          v35 = 0;
          if (v34 > 1)
          {
            if (v34 == 2)
            {
              v35 = 0;
              v56 = 0;
              LODWORD(v53) = (v29 * v61);
              HIDWORD(v53) = HIDWORD(v61);
            }

            else
            {
              v56 = 0;
              v53 = 0;
              if (v34 == 4)
              {
                v53 = v61;
                v35 = HIDWORD(v60);
                v56 = (v29 * v60);
              }
            }
          }

          else if (v34)
          {
            v56 = 0;
            v53 = 0;
            if (v34 == 1)
            {
              v56 = 0;
              v53 = v61;
              v35 = (v29 * SHIDWORD(v60));
            }
          }

          else
          {
            v35 = 0;
            v56 = 0;
            LODWORD(v53) = 0;
            HIDWORD(v53) = (v29 * SHIDWORD(v61));
          }

          v49 = _LSProgressLog();
          v50 = (v56 + v35 + v53 + HIDWORD(v53));
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v52 = [v58 installPhase];
            *buf = 134219522;
            v73 = v50;
            v74 = 1024;
            *v75 = v52;
            *&v75[4] = 2112;
            *&v75[6] = v16;
            *&v75[14] = 1024;
            *&v75[16] = HIDWORD(v61);
            LOWORD(v76) = 1024;
            *(&v76 + 2) = v61;
            HIWORD(v76) = 1024;
            v77 = HIDWORD(v60);
            v78 = 1024;
            v79 = v60;
            _os_log_debug_impl(&dword_18162D000, v49, OS_LOG_TYPE_DEBUG, "setting completed unit count to %llu for progress in phase %d (ps %@). maxes: %d %d %d %d", buf, 0x34u);
          }

          [v58 setCompletedUnitCount:v50];
        }

        else
        {
          if (![v10 isEqualToString:@"userInfo.installState"])
          {
            if ([v10 isEqualToString:@"pausable"])
            {
              v45 = [v15 BOOLValue];
              if (v45 != [v58 isPausable])
              {
                [v58 setPausable:{objc_msgSend(v15, "BOOLValue")}];
              }
            }

            else if ([v10 isEqualToString:@"cancellable"])
            {
              v46 = [v15 BOOLValue];
              if (v46 != [v58 isCancellable])
              {
                [v58 setCancellable:{objc_msgSend(v15, "BOOLValue")}];
              }
            }

            else if ([v10 isEqualToString:@"prioritizable"])
            {
              v47 = [v15 BOOLValue];
              if (v47 != [v58 isPrioritizable])
              {
                [v58 setPrioritizable:{objc_msgSend(v15, "BOOLValue")}];
              }
            }

            goto LABEL_38;
          }

          v39 = [v14 intValue];
          if (v39 == [v15 intValue])
          {
            goto LABEL_38;
          }

          v40 = _LSProgressLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v57 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "integerValue")}];
            v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v58, "installPhase")}];
            *buf = 138412546;
            v73 = v57;
            v74 = 2112;
            *v75 = v51;
            _os_log_debug_impl(&dword_18162D000, v40, OS_LOG_TYPE_DEBUG, "LSInstallProgress: Got update for userInfo.installState: newVal = %@, parentPhase = %@", buf, 0x16u);
          }

          if ([v15 integerValue] == 5 && (v41 = objc_msgSend(v58, "installPhase"), v41 != -[_LSInstallProgressService finalInstallPhaseForAppProxy:](obj, "finalInstallPhaseForAppProxy:", v66[5])))
          {
            v44 = 0;
          }

          else
          {
            [v58 setInstallState:{objc_msgSend(v15, "intValue")}];
            v42 = _LSProgressLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "intValue")}];
              [_LSInstallProgressService observeValueForKeyPath:v43 ofObject:buf change:v42 context:?];
            }

            v44 = 1;
          }

          if ([v15 intValue] == 4 || objc_msgSend(v15, "intValue") == 2 || !objc_msgSend(v15, "intValue"))
          {
            [v58 setPausable:1];
            [v58 setCancellable:1];
            [v58 setPrioritizable:1];
            if ([v15 intValue] == 4)
            {
              [v58 setCompletedUnitCount:0];
            }
          }

          if (!v44)
          {
LABEL_38:

            p_super = &obj->super;
            objc_sync_exit(obj);
LABEL_39:

            _Block_object_dispose(&v65, 8);
LABEL_30:

            goto LABEL_9;
          }
        }

        v71 = v66[5];
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:{1, v53}];
        [(_LSInstallProgressService *)obj sendNotification:3 forAppProxies:v37 Plugins:0 completion:0];
      }

      else
      {
        v37 = _LSProgressLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v48 = [v58 installPhaseString];
          *buf = 138412802;
          v73 = v16;
          v74 = 2112;
          *v75 = v48;
          *&v75[8] = 2112;
          *&v75[10] = v59;
          _os_log_debug_impl(&dword_18162D000, v37, OS_LOG_TYPE_DEBUG, "LSInstallProgress: Got update for %@ but parent phase %@ does not match %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v37 = _LSProgressLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [_LSInstallProgressService observeValueForKeyPath:ofObject:change:context:];
      }
    }

    goto LABEL_38;
  }

  v18 = _LSProgressLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v73 = v10;
    _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Received kvo for %@ notification with invalid context", buf, 0xCu);
  }

LABEL_9:

  objc_autoreleasePoolPop(v13);
  v19 = *MEMORY[0x1E69E9840];
}

- (id)parentProgressForApplication:(id)a3 andPhase:(unint64_t)a4 isActive:(BOOL)a5
{
  v5 = a5;
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  context = objc_autoreleasePoolPush();
  v9 = [v8 bundleIdentifier];
  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [(LSInstallProgressList *)v10->_progresses progressForBundleID:v9];
    if (v11)
    {
      v12 = [(NSMutableDictionary *)v10->_installIndexes objectForKeyedSubscript:v9];
      v13 = [(NSMutableDictionary *)v10->_installTypes objectForKeyedSubscript:v9];
      v14 = [v13 unsignedIntegerValue];
      if (v13 && ((v15 = [v8 installType], (v14 - 7) > 2) || v14 == v15))
      {
        if (([(NSMutableSet *)v10->_inactiveInstalls containsObject:v9]& v5) == 1)
        {
          v24 = _LSProgressLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v11 _LSDescription];
            *buf = 138412290;
            *v38 = v25;
            _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "Updating installState for %@ to LSInstallStateWaiting", buf, 0xCu);
          }

          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "installType")}];
          [(NSMutableDictionary *)v10->_installTypes setObject:v26 forKeyedSubscript:v9];

          [(NSMutableSet *)v10->_inactiveInstalls removeObject:v9];
          [(NSMutableOrderedSet *)v10->_orderedInstalls addObject:v9];
          [(_LSInstallProgressService *)v10 rebuildInstallIndexes];
          [v11 setInstallState:0];
        }
      }

      else
      {
        v16 = _LSProgressLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109634;
          *v38 = [v8 installType];
          *&v38[4] = 1024;
          *&v38[6] = v14;
          *v39 = 2112;
          *&v39[2] = v8;
          _os_log_debug_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEBUG, "Updating install type to %u from %u from: %@", buf, 0x18u);
        }

        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "installType")}];
        [(NSMutableDictionary *)v10->_installTypes setObject:v17 forKeyedSubscript:v9];

        if (!v12)
        {
          [(NSMutableSet *)v10->_inactiveInstalls removeObject:v9];
          if (v5)
          {
            [(NSMutableOrderedSet *)v10->_orderedInstalls addObject:v9];
            [v11 setInstallState:0];
          }

          else
          {
            [(NSMutableSet *)v10->_inactiveInstalls addObject:v9];
          }
        }

        [(_LSInstallProgressService *)v10 rebuildInstallIndexes];
      }

      if (a4 == 3 && [v11 installPhase] != 2)
      {
        goto LABEL_37;
      }

      v29 = _LSProgressLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v11 _LSDescription];
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        *buf = 138412546;
        *v38 = v30;
        *&v38[8] = 2112;
        *v39 = v31;
        _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "Updating installPhase for %@ to %@", buf, 0x16u);
      }

      [v11 setInstallPhase:a4];
      if (a4 <= 4 && ((1 << a4) & 0x19) != 0)
      {
LABEL_37:
        [v11 setPausable:1];
        v32 = 1;
        [v11 setCancellable:1];
      }

      else
      {
        [v11 setPausable:0];
        [v11 setCancellable:0];
        v32 = a4 == 1;
      }

      [v11 setPrioritizable:v32];
    }

    else
    {
      if (v5)
      {
        if (([(NSMutableOrderedSet *)v10->_orderedInstalls containsObject:v9]& 1) == 0)
        {
          [(NSMutableOrderedSet *)v10->_orderedInstalls addObject:v9];
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "installType")}];
          [(NSMutableDictionary *)v10->_installTypes setObject:v22 forKeyedSubscript:v9];

          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableOrderedSet indexOfObject:](v10->_orderedInstalls, "indexOfObject:", v9)}];
          [(NSMutableDictionary *)v10->_installIndexes setObject:v23 forKey:v9];
        }

        if (!v10->_usingNetwork)
        {
          v10->_usingNetwork = 1;
          [(_LSInstallProgressService *)v10 sendNetworkUsageChangedNotification];
        }
      }

      else if (([(NSMutableSet *)v10->_inactiveInstalls containsObject:v9]& 1) == 0)
      {
        [(NSMutableSet *)v10->_inactiveInstalls addObject:v9];
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "installType")}];
        [(NSMutableDictionary *)v10->_installTypes setObject:v27 forKeyedSubscript:v9];
      }

      v11 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 bundleID:v9 andPhase:a4];
      [(LSInstallProgressList *)v10->_progresses setProgress:v11 forBundleID:v9];
      [v11 ls_setExpectedFinalInstallPhase:{-[_LSInstallProgressService finalInstallPhaseForAppProxy:](v10, "finalInstallPhaseForAppProxy:", v8)}];
      [v11 _publish];
      v12 = _LSProgressLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v11 _LSDescription];
        *buf = 138412290;
        *v38 = v28;
        _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Created parent progress %@", buf, 0xCu);
      }
    }

    objc_sync_exit(v10);
    objc_autoreleasePoolPop(context);
    v33 = _LSProgressLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [_LSInstallProgressService parentProgressForApplication:v11 andPhase:? isActive:?];
    }
  }

  else
  {
    v18 = _LSProgressLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      v20 = v19;
      v21 = @"INACTIVE";
      *buf = 138412802;
      *v38 = v8;
      *&v38[8] = 2112;
      if (v5)
      {
        v21 = @"ACTIVE";
      }

      *v39 = v19;
      *&v39[8] = 2112;
      v40 = v21;
      _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Invalid bundleID, failed to create parent progress for %@ {%@-%@}", buf, 0x20u);
    }

    objc_autoreleasePoolPop(context);
    v11 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)createInstallProgressForApplication:(id)a3 withPhase:(unint64_t)a4 andPublishingString:(id)a5 reply:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  if (v12)
  {
    v15 = self->_publishingStrings;
    objc_sync_enter(v15);
    v16 = [(NSMutableSet *)self->_publishingStrings member:v12];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v19 = _LSProgressLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v48 = v12;
        _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "Using publishing string %{public}@ for the first time", buf, 0xCu);
      }

      [(NSMutableSet *)self->_publishingStrings addObject:v12];
      v18 = [(NSMutableSet *)self->_publishingStrings member:v12];

      if (!v18)
      {
        v38 = [MEMORY[0x1E696AAA8] currentHandler];
        [v38 handleFailureInMethod:a2 object:self file:@"_LSInstallProgressService.m" lineNumber:1023 description:{@"Failed to get back value %@ we just inserted into an NSMutableSet.", 0}];

        v18 = 0;
      }
    }

    objc_sync_exit(v15);
  }

  else
  {
    v18 = 0;
  }

  v20 = _LSProgressLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    *buf = 138412802;
    v48 = v11;
    v49 = 2112;
    v50 = v37;
    v51 = 2112;
    v52 = v18;
    _os_log_debug_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEBUG, "createInstallProgressForApplication:%@ withPhase:%@ andPublishingString:%@", buf, 0x20u);
  }

  v21 = [v11 bundleIdentifier];
  if (!v11)
  {
    v31 = _LSProgressLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = 0;
      _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "Cannot create install progress for app, invalid app proxy %@", buf, 0xCu);
    }

    v45 = *MEMORY[0x1E696A278];
    v46 = @"invalid application proxy";
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v33 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v32, "[_LSInstallProgressService createInstallProgressForApplication:withPhase:andPublishingString:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/_LSInstallProgressService.m", 1034);
    v13[2](v13, v33);

    goto LABEL_29;
  }

  if (!v18)
  {
    v34 = _LSProgressLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v48 = v11;
      v49 = 2112;
      v50 = 0;
      _os_log_impl(&dword_18162D000, v34, OS_LOG_TYPE_DEFAULT, "Cannot create install progress for app %@, missing publishing key %@", buf, 0x16u);
    }

    v43 = *MEMORY[0x1E696A278];
    v44 = @"no publishing key";
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v35 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v32, "[_LSInstallProgressService createInstallProgressForApplication:withPhase:andPublishingString:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/_LSInstallProgressService.m", 1040);
    v13[2](v13, v35);

    goto LABEL_29;
  }

  v22 = [(_LSInstallProgressService *)self parentProgressForApplication:v11 andPhase:a4 isActive:1];
  v23 = _LSProgressLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v22 _LSDescription];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    *buf = 138412546;
    v48 = v24;
    v49 = 2112;
    v50 = v25;
    _os_log_impl(&dword_18162D000, v23, OS_LOG_TYPE_DEFAULT, "Parent progress for installation %@, adding phase %@", buf, 0x16u);
  }

  if (!v22)
  {
    v32 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "[_LSInstallProgressService createInstallProgressForApplication:withPhase:andPublishingString:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/_LSInstallProgressService.m", 1048);
    v13[2](v13, v32);
LABEL_29:

    objc_autoreleasePoolPop(v14);
    goto LABEL_30;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke;
  v39[3] = &unk_1E6A1F2D0;
  v26 = v18;
  v40 = v26;
  v41 = self;
  v27 = v21;
  v42 = v27;
  v28 = MEMORY[0x1865D71B0](v39);
  v29 = [MEMORY[0x1E696AE38] _addSubscriberForCategory:v26 usingPublishingHandler:v28];
  if (v29)
  {
    [(LSInstallProgressList *)self->_progresses addSubscriber:v29 forPublishingKey:v26 andBundleID:v27];
  }

  v30 = _LSProgressLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = v26;
    _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEFAULT, "Subscribing to %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v13[2](v13, 0);
LABEL_30:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)rebuildInstallIndexes
{
  [(NSMutableDictionary *)self->_installIndexes removeAllObjects];
  if ([(NSMutableOrderedSet *)self->_orderedInstalls count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableOrderedSet *)self->_orderedInstalls objectAtIndex:v3];
      v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
      [(NSMutableDictionary *)self->_installIndexes setObject:v5 forKey:v4];

      ++v3;
    }

    while ([(NSMutableOrderedSet *)self->_orderedInstalls count]> v3);
  }
}

- (void)installationEndedForApplication:(id)a3 withState:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = _LSProgressLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Installation ended for %@ with state %@", &v15, 0x16u);
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(LSInstallProgressList *)v10->_progresses progressForBundleID:v6];
  v12 = v11;
  if (v11)
  {
    if (a4 == 5)
    {
      [v11 setCompletedUnitCount:100];
    }

    [v12 setInstallState:a4];
    if ([(NSMutableSet *)v10->_inactiveInstalls containsObject:v6])
    {
      [(NSMutableSet *)v10->_inactiveInstalls removeObject:v6];
    }

    else
    {
      [(NSMutableOrderedSet *)v10->_orderedInstalls removeObject:v6];
      [(NSMutableDictionary *)v10->_installIndexes removeObjectForKey:v6];
      [(_LSInstallProgressService *)v10 rebuildInstallIndexes];
    }

    [(NSMutableDictionary *)v10->_installTypes removeObjectForKey:v6];
    if (![(NSMutableOrderedSet *)v10->_orderedInstalls count]&& v10->_usingNetwork)
    {
      v10->_usingNetwork = 0;
      [(_LSInstallProgressService *)v10 sendNetworkUsageChangedNotification];
    }

    [v12 _unpublish];
    [(LSInstallProgressList *)v10->_progresses removeProgressForBundleID:v6];
    [(_LSInstallProgressService *)v10 discardProportionsForBundleID:v6];
  }

  else
  {
    v13 = _LSProgressLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "Could not find parent progress for %@, it may have been removed", &v15, 0xCu);
    }
  }

  objc_sync_exit(v10);
  objc_autoreleasePoolPop(v7);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)installationFailedForApplication:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = _LSProgressLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_LSInstallProgressService installationFailedForApplication:];
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(LSInstallProgressList *)v7->_progresses progressForBundleID:v4];
  if (v8)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__56;
    v21 = __Block_byref_object_dispose__56;
    v22 = 0;
    v9 = _LSServer_DatabaseExecutionContext();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62___LSInstallProgressService_installationFailedForApplication___block_invoke;
    v14[3] = &unk_1E6A18DA0;
    p_buf = &buf;
    v10 = v4;
    v15 = v10;
    [(LSDBExecutionContext *)v9 syncRead:v14];

    [(NSMutableSet *)v7->_inactiveInstalls addObject:v10];
    [(NSMutableOrderedSet *)v7->_orderedInstalls removeObject:v10];
    [(_LSInstallProgressService *)v7 rebuildInstallIndexes];
    if (![(NSMutableOrderedSet *)v7->_orderedInstalls count]&& v7->_usingNetwork)
    {
      v7->_usingNetwork = 0;
      [(_LSInstallProgressService *)v7 sendNetworkUsageChangedNotification];
    }

    [v8 setCompletedUnitCount:0];
    [v8 setInstallState:4];
    [v8 setCancellable:1];
    [v8 setPausable:1];
    if (*(*(&buf + 1) + 40))
    {
      v17 = *(*(&buf + 1) + 40);
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      [(_LSInstallProgressService *)v7 sendNotification:3 forAppProxies:v11 Plugins:0 completion:0];
    }

    else
    {
      v11 = _LSProgressLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [_LSInstallProgressService installationFailedForApplication:];
      }
    }

    [v8 _unpublish];
    [(LSInstallProgressList *)v7->_progresses removeProgressForBundleID:v10];
    [(_LSInstallProgressService *)v7 discardProportionsForBundleID:v10];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v12 = _LSProgressLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Could not find parent progress for %@, it may have been removed", &buf, 0xCu);
    }
  }

  objc_sync_exit(v7);
  objc_autoreleasePoolPop(v5);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_placeholderIconUpdatedForApp:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  inactiveInstalls = v4->_inactiveInstalls;
  v6 = [v12 bundleIdentifier];
  LOBYTE(inactiveInstalls) = [(NSMutableSet *)inactiveInstalls containsObject:v6];

  if ((inactiveInstalls & 1) == 0)
  {
    installIndexes = v4->_installIndexes;
    v8 = [v12 bundleIdentifier];
    v9 = [(NSMutableDictionary *)installIndexes objectForKeyedSubscript:v8];

    if (!v9)
    {
      orderedInstalls = v4->_orderedInstalls;
      v11 = [v12 bundleIdentifier];
      [(NSMutableOrderedSet *)orderedInstalls addObject:v11];

      [(_LSInstallProgressService *)v4 rebuildInstallIndexes];
    }
  }

  objc_sync_exit(v4);
}

- (void)_placeholdersUninstalled:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v7 = *v16;
    *&v6 = 138412290;
    v14 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * v8) bundleIdentifier];
        v10 = self;
        objc_sync_enter(v10);
        if (([(NSMutableSet *)self->_inactiveInstalls containsObject:v9]& 1) == 0)
        {
          [(NSMutableDictionary *)self->_installIndexes objectForKey:v9];
        }

        v11 = _LSProgressLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v20 = v9;
          _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "Placeholder for %@ uninstalled; removing progress tracking", buf, 0xCu);
        }

        v12 = [(LSInstallProgressList *)self->_progresses progressForBundleID:v9];
        [(NSMutableSet *)self->_inactiveInstalls removeObject:v9];
        [(NSMutableOrderedSet *)self->_orderedInstalls removeObject:v9];
        [(_LSInstallProgressService *)v10 rebuildInstallIndexes];
        if (![(NSMutableOrderedSet *)self->_orderedInstalls count]&& self->_usingNetwork)
        {
          self->_usingNetwork = 0;
          [(_LSInstallProgressService *)v10 sendNetworkUsageChangedNotification];
        }

        [(NSMutableDictionary *)self->_installTypes removeObjectForKey:v9];
        [v12 _unpublish];
        [(LSInstallProgressList *)self->_progresses removeProgressForBundleID:v9];
        [(_LSInstallProgressService *)v10 discardProportionsForBundleID:v9];

        objc_sync_exit(v10);
        ++v8;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)sendNotification:(id)a3 ForPlugins:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * v13) correspondingApplicationExtensionRecord];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [(_LSInstallProgressService *)self detachAndSendNotification:v6 forApplicationExtensionRecords:v8];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)detachAndSendNotification:(id)a3 forApplicationExtensionRecords:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 count])
  {
    v21 = self;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * v13);
          if (recordSelectorsForPluginNotification_onceToken != -1)
          {
            [_LSInstallProgressService detachAndSendNotification:forApplicationExtensionRecords:];
          }

          if (recordSelectorsForPluginNotification_registeredSels)
          {
            v15 = *recordSelectorsForPluginNotification_registeredSels;
            if (*recordSelectorsForPluginNotification_registeredSels)
            {
              v16 = (recordSelectorsForPluginNotification_registeredSels + 8);
              do
              {
                v17 = [v14 v15];
                v18 = *v16++;
                v15 = v18;
              }

              while (v18);
            }
          }

          [v14 detach];

          ++v13;
        }

        while (v13 != v11);
        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    installControlsQueue = v21->_installControlsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86___LSInstallProgressService_detachAndSendNotification_forApplicationExtensionRecords___block_invoke;
    block[3] = &unk_1E6A18F50;
    v23 = v9;
    v24 = v6;
    dispatch_async(installControlsQueue, block);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (SEL)observerSelectorForNotification:(int)a3
{
  result = 0;
  switch(a3)
  {
    case 1:
      result = sel_applicationInstallsDidStart_;
      break;
    case 2:
      result = sel_applicationInstallsDidUpdateIcon_;
      break;
    case 4:
      result = sel_applicationsWillInstall_;
      break;
    case 5:
      result = sel_applicationsWillUninstall_;
      break;
    case 7:
    case 10:
      result = sel_applicationsDidInstall_;
      break;
    case 8:
    case 9:
      result = sel_applicationsDidUninstall_;
      break;
    case 11:
      result = sel_applicationsDidFailToInstall_;
      break;
    case 12:
      result = sel_applicationsDidFailToUninstall_;
      break;
    case 13:
      result = sel_applicationIconDidChange_;
      break;
    case 14:
      result = sel_applicationsDidChangePersonas_;
      break;
    case 15:
      result = sel_applicationInstallsDidChange_;
      break;
    default:
      return result;
  }

  return result;
}

- (void)sendNotification:(int)a3 forAppProxies:(id)a4 Plugins:(BOOL)a5 completion:(id)a6
{
  v32 = a5;
  v48 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a6;
  MEMORY[0x1865D7C40]();
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke;
  v46[3] = &unk_1E6A195E0;
  v28 = self;
  v46[4] = self;
  v30 = v9;
  if (sendNotification_forAppProxies_Plugins_completion__onceToken != -1)
  {
    dispatch_once(&sendNotification_forAppProxies_Plugins_completion__onceToken, v46);
  }

  v33 = objc_opt_new();
  v31 = objc_opt_new();
  v10 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = [v16 bundleType];
        v18 = [v17 isEqualToString:@"Hidden"];

        if ((v18 & 1) == 0)
        {
          v19 = [v16 bundleIdentifier];
          [v10 addObject:v19];

          v20 = [v16 bundleType];
          v21 = [v20 isEqualToString:@"VPNPlugin"];

          if ((v21 & 1) == 0)
          {
            [v33 addObject:v16];
            if (v32)
            {
              v22 = [v16 plugInKitPlugins];
              [v31 addObjectsFromArray:v22];
            }
          }
        }

        [v16 detach];
      }

      v13 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v13);
  }

  v23 = [v33 count];
  if (v23)
  {
    observersQueue = v28->_observersQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2;
    block[3] = &unk_1E6A1F2F8;
    block[4] = v28;
    v40 = a3;
    v35 = v11;
    v41 = v32;
    v36 = v33;
    v37 = v10;
    v25 = v31;
    v38 = v31;
    v26 = v30;
    v39 = v30;
    dispatch_async(observersQueue, block);
  }

  else
  {
    v26 = v30;
    v25 = v31;
    if (v30)
    {
      v23 = v30[2](v30);
    }

    MEMORY[0x1865D7C50](v23);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)sendDatabaseRebuiltNotificationToObserver:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71___LSInstallProgressService_sendDatabaseRebuiltNotificationToObserver___block_invoke;
  v8[3] = &unk_1E6A19AC0;
  v6 = v3;
  v9 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 databaseWasRebuilt];

  objc_autoreleasePoolPop(v4);
}

- (void)sendDatabaseRebuiltNotification
{
  v3 = os_transaction_create();
  observersQueue = self->_observersQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60___LSInstallProgressService_sendDatabaseRebuiltNotification__block_invoke;
  v6[3] = &unk_1E6A18F50;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(observersQueue, v6);
}

- (id)_prepareApplicationProxiesForNotification:(int)a3 identifiers:(id)a4 withPlugins:(BOOL)a5
{
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__56;
  v23 = __Block_byref_object_dispose__56;
  v24 = objc_opt_new();
  v8 = _LSServer_DatabaseExecutionContext();
  v10 = a3 == 15 || (a3 - 1) < 3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95___LSInstallProgressService__prepareApplicationProxiesForNotification_identifiers_withPlugins___block_invoke;
  v14[3] = &unk_1E6A1F320;
  v11 = v7;
  v17 = v10;
  v15 = v11;
  v16 = &v19;
  v18 = a5;
  [(LSDBExecutionContext *)v8 syncRead:v14];

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

- (void)loadProportions
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v0, v1, "Couldn't deserialize proportion state: got %@, error %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)saveProportions
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Could not write progress proportions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)coalesceProportionsSave
{
  v3 = _LSProgressLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_INFO, "Coalescing progress proportions save", v6, 2u);
  }

  progressProportionsSaveTimerSource = self->_progressProportionsSaveTimerSource;
  v5 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(progressProportionsSaveTimerSource, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (void)discardProportionsForBundleID:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_progressProportionsLock);
  v5 = _LSProgressLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "Discarding proportions for %@", &v7, 0xCu);
  }

  [(NSMutableDictionary *)self->_progressProportions removeObjectForKey:v4];
  [(_LSInstallProgressService *)self coalesceProportionsSave];
  os_unfair_lock_unlock(&self->_progressProportionsLock);

  v6 = *MEMORY[0x1E69E9840];
}

- (id)progressProportionsForBundleID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_progressProportionsLock);
  v5 = [(NSMutableDictionary *)self->_progressProportions objectForKeyedSubscript:v4];

  v6 = [v5 copy];
  os_unfair_lock_unlock(&self->_progressProportionsLock);

  return v6;
}

- (void)setProgressProportionsByPhase:(id)a3 forInstallOfApplicationWithIdentifier:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__56;
  v28 = __Block_byref_object_dispose__56;
  v29 = 0;
  os_unfair_lock_lock(&self->_progressProportionsLock);
  v12 = _LSServer_DatabaseExecutionContext();
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __108___LSInstallProgressService_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_completion___block_invoke;
  v21 = &unk_1E6A1F348;
  v13 = v9;
  v22 = v13;
  v23 = &v24;
  [(LSDBExecutionContext *)v12 syncRead:?];

  v14 = _LSProgressLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v25[5];
    *buf = 138412802;
    v31 = v13;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "Setting progress proportions for %@ to %@, error is %@", buf, 0x20u);
  }

  if (!v25[5])
  {
    v16 = [v8 copy];
    [(NSMutableDictionary *)self->_progressProportions setObject:v16 forKeyedSubscript:v13];

    [(_LSInstallProgressService *)self coalesceProportionsSave];
  }

  os_unfair_lock_unlock(&self->_progressProportionsLock);
  v10[2](v10, v25[5]);
  _Block_object_dispose(&v24, 8);

  objc_autoreleasePoolPop(v11);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)sendNetworkUsageChangedNotification
{
  installControlsQueue = self->_installControlsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___LSInstallProgressService_sendNetworkUsageChangedNotification__block_invoke;
  block[3] = &unk_1E6A195E0;
  block[4] = self;
  dispatch_async(installControlsQueue, block);
}

- (void)addSendNotificationFenceWithTimeout:(double)a3 fenceBlock:(id)a4
{
  v6 = a4;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__333;
  v28[4] = __Block_byref_object_dispose__334;
  v29 = MEMORY[0x1865D71B0]();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__56;
  v26 = __Block_byref_object_dispose__56;
  v27 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__56;
  v20[4] = __Block_byref_object_dispose__56;
  v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke;
  v19[3] = &unk_1E6A1F370;
  v19[4] = v28;
  v19[5] = &v22;
  v19[6] = v20;
  v7 = MEMORY[0x1865D71B0](v19);
  if (a3 >= 0.0 && ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&a3 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_observersQueue);
    v11 = v23[5];
    v23[5] = v10;

    v12 = v23[5];
    v13 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
    dispatch_source_set_event_handler(v23[5], v7);
    dispatch_resume(v23[5]);
  }

  observersQueue = self->_observersQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_335;
  v16[3] = &unk_1E6A1F3E8;
  v17 = v7;
  v18 = v20;
  v16[4] = self;
  v15 = v7;
  dispatch_async(observersQueue, v16);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(v28, 8);
}

- (id)loadJournalledNotificationsFromDisk
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = 0x1E696A000uLL;
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [__LSDefaultsGetSharedInstance() installJournalDirectoryURL];
  v5 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:1 errorHandler:&__block_literal_global_339];

  v6 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v35 = v6;
    v9 = 0;
    v10 = *v42;
    v11 = 0x1E695D000uLL;
    while (1)
    {
      v12 = 0;
      v36 = v8;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        v14 = *(v11 + 3824);
        v40 = v9;
        v15 = [v14 dataWithContentsOfURL:v13 options:8 error:&v40];
        v16 = v40;

        if (!v16)
        {
          v18 = v10;
          v19 = v11;
          v20 = v2;
          v21 = MEMORY[0x1E696ACD0];
          v22 = objc_opt_class();
          v39 = 0;
          v17 = [v21 ls_unarchivedObjectOfClass:v22 fromData:v15 error:&v39];
          v16 = v39;
          v23 = _LSInstallLog();
          v24 = v23;
          if (v16)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v46 = v13;
              v47 = 2112;
              v48 = v16;
              _os_log_error_impl(&dword_18162D000, v24, OS_LOG_TYPE_ERROR, "Error unarchiving notification journal %@: %@", buf, 0x16u);
            }

            goto LABEL_12;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v17 primaryBundleID];
            v29 = [v17 installOperation];
            *buf = 138412546;
            v46 = v28;
            v47 = 2048;
            v48 = v29;
            _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "Loaded notification journaller for %@, install op %lu", buf, 0x16u);
          }

          if ([v17 applicableForCurrentDatabase])
          {
            [v35 addObject:v17];
          }

          else
          {
            v24 = _LSInstallLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v17 primaryBundleID];
              v31 = [v17 installOperation];
              *buf = 138412546;
              v46 = v30;
              v47 = 2048;
              v48 = v31;
              _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "Notification journaller for %@, install op %lu, not applicable for current database", buf, 0x16u);
            }

LABEL_12:
          }

          v2 = v20;
          v11 = v19;
          v10 = v18;
          v8 = v36;
          goto LABEL_14;
        }

        v17 = _LSInstallLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v46 = v13;
          v47 = 2112;
          v48 = v16;
          _os_log_error_impl(&dword_18162D000, v17, OS_LOG_TYPE_ERROR, "Error reading install notification journal %@: %@", buf, 0x16u);
        }

LABEL_14:

        v25 = [*(v2 + 3080) defaultManager];
        v38 = 0;
        v26 = [v25 removeItemAtURL:v13 error:&v38];
        v9 = v38;

        if ((v26 & 1) == 0)
        {
          v27 = _LSInstallLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v46 = v13;
            v47 = 2112;
            v48 = v9;
            _os_log_error_impl(&dword_18162D000, v27, OS_LOG_TYPE_ERROR, "Error unlinking notification journal file at %@: %@", buf, 0x16u);
          }
        }

        ++v12;
      }

      while (v8 != v12);
      v32 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      v8 = v32;
      if (!v32)
      {

        v6 = v35;
        break;
      }
    }
  }

  [v6 sortUsingComparator:&__block_literal_global_343];
  v33 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)performJournalRecovery
{
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___LSInstallProgressService_performJournalRecovery__block_invoke;
  block[3] = &unk_1E6A195E0;
  block[4] = self;
  dispatch_sync(observersQueue, block);
  v4 = self->_observersQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51___LSInstallProgressService_performJournalRecovery__block_invoke_2;
  v5[3] = &unk_1E6A195E0;
  v5[4] = self;
  dispatch_async(v4, v5);
}

- (void)dispatchJournalledNotificationsToConnectedClients
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_journalledNotificationsToReplay;
  v20 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v20)
  {
    v19 = *v27;
    do
    {
      v3 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v3;
        v4 = *(*(&v26 + 1) + 8 * v3);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v5 = [v4 journalledNotifications];
        v6 = [v5 countByEnumeratingWithState:&v22 objects:v36 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v23;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v23 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v22 + 1) + 8 * i);
              v11 = [v10 notification];
              v12 = [v10 bundleIDs];
              v13 = -[_LSInstallProgressService _prepareApplicationProxiesForNotification:identifiers:withPlugins:](self, "_prepareApplicationProxiesForNotification:identifiers:withPlugins:", v11, v12, [v10 includePlugins]);

              v14 = _LSInstallLog();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = [v10 notification];
                v16 = [v10 includePlugins];
                *buf = 67109634;
                v31 = v15;
                v32 = 2112;
                v33 = v13;
                v34 = 1024;
                v35 = v16;
                _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "dispatching journalled notification: %d for %@ (plugins: %d)", buf, 0x18u);
              }

              -[_LSInstallProgressService sendNotification:forAppProxies:Plugins:completion:](self, "sendNotification:forAppProxies:Plugins:completion:", [v10 notification], v13, objc_msgSend(v10, "includePlugins"), 0);
            }

            v7 = [v5 countByEnumeratingWithState:&v22 objects:v36 count:16];
          }

          while (v7);
        }

        v3 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v20);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)dispatchJournalledNotificationsToObserver:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _LSProgressLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v4;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "Sending journalled notifications to newly connecting observer %@", buf, 0xCu);
  }

  v6 = [v4 connection];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __71___LSInstallProgressService_dispatchJournalledNotificationsToObserver___block_invoke;
  v45[3] = &unk_1E6A19AC0;
  v28 = v4;
  v46 = v28;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v45];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_journalledNotificationsToReplay;
  v31 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v31)
  {
    v30 = *v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v8;
        v9 = *(*(&v41 + 1) + 8 * v8);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v10 = [v9 journalledNotifications];
        v11 = [v10 countByEnumeratingWithState:&v37 objects:v52 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v38;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v37 + 1) + 8 * i);
              v16 = _LSProgressLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                v17 = [v15 notification];
                v18 = [v15 bundleIDs];
                *buf = 134218242;
                v49 = v17;
                v50 = 2112;
                v51 = v18;
                _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_INFO, "Sending notification %lu for bundles %@ to observer.", buf, 0x16u);
              }

              v19 = [v15 notification];
              v20 = [v15 bundleIDs];
              v21 = -[_LSInstallProgressService _prepareApplicationProxiesForNotification:identifiers:withPlugins:](self, "_prepareApplicationProxiesForNotification:identifiers:withPlugins:", v19, v20, [v15 includePlugins]);

              -[_LSInstallProgressService directlySendNotification:withProxies:toObserverProxy:](self, "directlySendNotification:withProxies:toObserverProxy:", [v15 notification], v21, v7);
            }

            v12 = [v10 countByEnumeratingWithState:&v37 objects:v52 count:16];
          }

          while (v12);
        }

        v8 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v31);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = self->_startupJournalledNotifications;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v33 + 1) + 8 * j) dispatchToObserver:v28 forInstallProgressService:self];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v24);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(NSObject *)a3 ofObject:change:context:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_4(&dword_18162D000, a3, a3, "LSInstallProgress: setting parent installState to %@", a2);
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "In observeValueForKeyPath:%@ could not find parent progress for %@, it may have been removed");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "In observeValueForKeyPath:%@ could not find appProxy for %@, it may have been removed");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Failed to parse. observeValueForKeyPath: %@ does not contain period", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)parentProgressForApplication:(void *)a1 andPhase:isActive:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 _LSDescription];
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)installationFailedForApplication:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Installation failed for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)installationFailedForApplication:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_4(&dword_18162D000, v0, v1, "Could not find applicationProxy for %@ in installationFailedForApplication:", v3);
  v2 = *MEMORY[0x1E69E9840];
}

@end