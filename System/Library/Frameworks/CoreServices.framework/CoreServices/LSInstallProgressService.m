@interface LSInstallProgressService
@end

@implementation LSInstallProgressService

void __43___LSInstallProgressService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_LSInstallProgressService);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;
}

void __43___LSInstallProgressService_beginListening__block_invoke()
{
  v4 = +[_LSInstallProgressService sharedInstance];
  [v4 performJournalRecovery];
  [v4 loadProportions];
  v0 = objc_alloc(MEMORY[0x1E696B0D8]);
  v1 = [__LSDefaultsGetSharedInstance() serviceNameForConnectionType:5];
  v2 = [v0 initWithMachServiceName:v1];
  v3 = beginListening_listener;
  beginListening_listener = v2;

  [beginListening_listener setDelegate:v4];
  [beginListening_listener resume];
}

void __33___LSInstallProgressService_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_suspend(WeakRetained[13]);
  [(dispatch_object_t *)WeakRetained saveProportions];
}

void __59___LSInstallProgressService__LSFindPlaceholderApplications__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 168) == 2 && (*(a3 + 174) & 4) != 0 && (*(a3 + 336) - 7) >= 3)
  {
    v4 = *(a3 + 12);
    [(_LSDatabase *)*(a1 + 40) store];
    v5 = _CSStringCopyCFString();
    if (v5)
    {
      v7 = v5;
      v6 = [LSApplicationProxy applicationProxyForIdentifier:v5 placeholder:1];
      [*(a1 + 32) addObject:v6];
    }
  }
}

void __52___LSInstallProgressService_restoreInactiveInstalls__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _LSFindPlaceholderApplications];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52___LSInstallProgressService_restoreInactiveInstalls__block_invoke_217(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LSProgressLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52___LSInstallProgressService_restoreInactiveInstalls__block_invoke_217_cold_1(a1);
    }
  }
}

void __64___LSInstallProgressService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _LSProgressLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LSInstallProgress: Connection invalidated or interupted %@", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 removeObserver:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __41___LSInstallProgressService_addObserver___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 8) containsObject:a1[5]] ^ 1;
  v2 = a1[5];
  v3 = *(a1[4] + 8);

  return [v3 addObject:v2];
}

void __41___LSInstallProgressService_addObserver___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v3 = *(a1 + 32);
    if (v3[96] == 1)
    {
      [v3 dispatchJournalledNotificationsToObserver:*(a1 + 40)];
    }
  }

  v4 = [*(a1 + 40) connection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_220_0];
  [v5 applicationInstallsArePrioritized:*(a1 + 48) arePaused:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void __41___LSInstallProgressService_addObserver___block_invoke_3()
{
  v0 = _LSProgressLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEFAULT, "Failed to send catchup callback after adding observer", v1, 2u);
  }
}

void __76___LSInstallProgressService_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32) placeholder:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_setAssociatedObject(v3, &_block_invoke_publishingStringKey, *(a1 + 32), 0x301);
  [v3 addObserver:*(a1 + 40) forKeyPath:@"userInfo.installState" options:3 context:*(a1 + 32)];
  [v3 addObserver:*(a1 + 40) forKeyPath:@"fractionCompleted" options:3 context:*(a1 + 32)];
  [v3 addObserver:*(a1 + 40) forKeyPath:@"cancellable" options:3 context:*(a1 + 32)];
  [v3 addObserver:*(a1 + 40) forKeyPath:@"pausable" options:3 context:*(a1 + 32)];
  [v3 addObserver:*(a1 + 40) forKeyPath:@"prioritizable" options:3 context:*(a1 + 32)];
  v5 = *(a1 + 40);
  objc_sync_enter(v5);
  v6 = [*(*(a1 + 40) + 16) progressForBundleID:*(a1 + 48)];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v3 installState];
    if (v7 != 5)
    {
      [v6 setInstallState:v7];
    }

    [v6 setPausable:{objc_msgSend(v3, "isPausable", v7)}];
    [v6 setCancellable:{objc_msgSend(v3, "isCancellable")}];
    [v6 setPrioritizable:{objc_msgSend(v3, "isPrioritizable")}];
  }

  else
  {
    v8 = _LSProgressLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke_cold_1((a1 + 32));
    }
  }

  objc_sync_exit(v5);
  objc_initWeak(&location, v3);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke_269;
  v13[3] = &unk_1E6A1F2A8;
  v14 = *(a1 + 32);
  objc_copyWeak(&v17, &location);
  v9 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v9;
  v10 = [v13 copy];
  v11 = MEMORY[0x1865D71B0]();

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v4);

  return v11;
}

void __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke_269(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _LSProgressLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "unsubscribing from %@ as it was unpublished", &v11, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained removeObserver:*(a1 + 40) forKeyPath:@"userInfo.installState"];

  v6 = objc_loadWeakRetained((a1 + 56));
  [v6 removeObserver:*(a1 + 40) forKeyPath:@"fractionCompleted"];

  v7 = objc_loadWeakRetained((a1 + 56));
  [v7 removeObserver:*(a1 + 40) forKeyPath:@"cancellable"];

  v8 = objc_loadWeakRetained((a1 + 56));
  [v8 removeObserver:*(a1 + 40) forKeyPath:@"pausable"];

  v9 = objc_loadWeakRetained((a1 + 56));
  [v9 removeObserver:*(a1 + 40) forKeyPath:@"prioritizable"];

  [*(*(a1 + 40) + 16) removeSubscriberForPublishingKey:*(a1 + 32) andBundleID:*(a1 + 48)];
  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x1E69E9840];
}

void __62___LSInstallProgressService_installationFailedForApplication___block_invoke(uint64_t a1)
{
  v2 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32) placeholder:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __86___LSInstallProgressService_detachAndSendNotification_forApplicationExtensionRecords___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        addPluginDataToNotificationDict(v2, *(*(&v12 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  v8 = _LSInstallLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v2;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "posting %@ with %@", buf, 0x16u);
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, *(a1 + 40), 0, v2, 2uLL);

  v11 = *MEMORY[0x1E69E9840];
}

void __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke(uint64_t a1)
{
  v1 = [[LSProgressNotificationTimer alloc] initWithQueue:*(*(a1 + 32) + 72)];
  v2 = sendNotification_forAppProxies_Plugins_completion__sProgressTimer;
  sendNotification_forAppProxies_Plugins_completion__sProgressTimer = v1;
}

void __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v138 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 96) == 1 && *(v2 + 88) && [_LSInstallNotificationJournaller shouldJournalNotificationType:*(a1 + 80)])
  {
    v3 = [[_LSStartupJournalledInstallNotification alloc] initWithNotification:*(v1 + 80) appProxies:*(v1 + 40) plugins:*(v1 + 84)];
    [*(*(v1 + 32) + 88) addObject:v3];
  }

  v100 = [*(v1 + 32) observerSelectorForNotification:*(v1 + 80)];
  v4 = (v1 + 48);
  v101 = *(v1 + 48);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  switch(*(v1 + 80))
  {
    case 0:
      v10 = _LSProgressLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2_cold_1((v1 + 48));
      }

      goto LABEL_23;
    case 1:
      v29 = _LSProgressLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *v4;
        *buf = 138412290;
        v117 = v30;
        _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "Sending applicationInstallsDidStart: for %@", buf, 0xCu);
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v31 = *v4;
      v32 = [v31 countByEnumeratingWithState:&v111 objects:v137 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v112;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v112 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v111 + 1) + 8 * i);
            if ([v36 installType] != 7 && objc_msgSend(v36, "installType") != 8 && objc_msgSend(v36, "installType") != 9)
            {
              v37 = [*(v1 + 32) parentProgressForApplication:v36 andPhase:3 isActive:1];
              [v37 setInstallState:5];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v111 objects:v137 count:16];
        }

        while (v33);
      }

      v38 = *(v1 + 56);
      v135[0] = @"bundleIDs";
      v135[1] = @"isPlaceholder";
      v136[0] = v38;
      v136[1] = MEMORY[0x1E695E118];
      v22 = MEMORY[0x1E695DF20];
      v23 = v136;
      v24 = v135;
      goto LABEL_48;
    case 2:
      v17 = _LSProgressLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *v4;
        *buf = 138412290;
        v117 = v18;
        _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "Sending applicationInstallsDidUpdateIcon: for %@", buf, 0xCu);
      }

      v19 = *(v1 + 32);
      v20 = [*(v1 + 48) objectAtIndex:0];
      [v19 _placeholderIconUpdatedForApp:v20];

      v21 = *(v1 + 56);
      v133[0] = @"bundleIDs";
      v133[1] = @"isPlaceholder";
      v134[0] = v21;
      v134[1] = MEMORY[0x1E695E118];
      v22 = MEMORY[0x1E695DF20];
      v23 = v134;
      v24 = v133;
      goto LABEL_48;
    case 3:
      v48 = _LSProgressLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2_cold_2((v1 + 48));
      }

      v49 = sendNotification_forAppProxies_Plugins_completion__sProgressTimer;
      v50 = [*(*(v1 + 32) + 8) allObjects];
      [v49 notifyObservers:v50 withApplications:*(v1 + 48)];

      goto LABEL_24;
    case 4:
      v25 = _LSProgressLog();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      v51 = *v4;
      *buf = 138412290;
      v117 = v51;
      v27 = "Sending applicationsWillInstall: for %@";
      goto LABEL_54;
    case 5:
      v25 = _LSProgressLog();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      v26 = *v4;
      *buf = 138412290;
      v117 = v26;
      v27 = "Sending applicationsWillUninstall: for %@";
LABEL_54:
      _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
LABEL_55:

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v6 = 1;
      v5 = @"com.apple.LaunchServices.pluginswillberemoved";
      goto LABEL_63;
    case 7:
      v39 = _LSProgressLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *v4;
        *buf = 138412290;
        v117 = v40;
        _os_log_impl(&dword_18162D000, v39, OS_LOG_TYPE_DEFAULT, "Sending applicationsDidInstall: for %@", buf, 0xCu);
      }

      v41 = *(v1 + 56);
      v131[0] = @"bundleIDs";
      v131[1] = @"isPlaceholder";
      v132[0] = v41;
      v132[1] = MEMORY[0x1E695E110];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:2];
      v9 = @"com.apple.LaunchServices.applicationRegistered";
      v6 = 1;
      v8 = 1;
      v5 = @"com.apple.LaunchServices.pluginsregistered";
      goto LABEL_63;
    case 8:
      v42 = _LSProgressLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *v4;
        *buf = 138412290;
        v117 = v43;
        _os_log_impl(&dword_18162D000, v42, OS_LOG_TYPE_DEFAULT, "Sending applicationsDidUninstall: for %@", buf, 0xCu);
      }

      v44 = *(v1 + 56);
      v127[0] = @"bundleIDs";
      v127[1] = @"isPlaceholder";
      v128[0] = v44;
      v128[1] = MEMORY[0x1E695E110];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
      v9 = @"com.apple.LaunchServices.applicationUnregistered";
      v6 = 1;
      v8 = 1;
      v5 = @"com.apple.LaunchServices.pluginsunregistered";
      goto LABEL_63;
    case 9:
      v58 = _LSProgressLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = *v4;
        *buf = 138412290;
        v117 = v59;
        _os_log_impl(&dword_18162D000, v58, OS_LOG_TYPE_DEFAULT, "Sending applicationsDidUninstall: for %@", buf, 0xCu);
      }

      [*(v1 + 32) _placeholdersUninstalled:*(v1 + 48)];
      v60 = *(v1 + 56);
      v125[0] = @"bundleIDs";
      v125[1] = @"isPlaceholder";
      v126[0] = v60;
      v126[1] = MEMORY[0x1E695E118];
      v55 = MEMORY[0x1E695DF20];
      v56 = v126;
      v57 = v125;
      goto LABEL_62;
    case 0xA:
      v52 = _LSProgressLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *v4;
        *buf = 138412290;
        v117 = v53;
        _os_log_impl(&dword_18162D000, v52, OS_LOG_TYPE_DEFAULT, "Sending applicationsDidInstall: for %@", buf, 0xCu);
      }

      [*(v1 + 32) _placeholdersUninstalled:*(v1 + 48)];
      v54 = *(v1 + 56);
      v123[0] = @"bundleIDs";
      v123[1] = @"isPlaceholder";
      v124[0] = v54;
      v124[1] = MEMORY[0x1E695E118];
      v55 = MEMORY[0x1E695DF20];
      v56 = v124;
      v57 = v123;
LABEL_62:
      v7 = [v55 dictionaryWithObjects:v56 forKeys:v57 count:2];
      v6 = 0;
      v5 = 0;
      v8 = 1;
      v9 = @"com.apple.LaunchServices.applicationUnregistered";
      goto LABEL_63;
    case 0xB:
      v10 = _LSProgressLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v13 = *v4;
      *buf = 138412290;
      v117 = v13;
      v12 = "Sending applicationsDidFailToInstall: for %@";
      break;
    case 0xC:
      v10 = _LSProgressLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v28 = *v4;
      *buf = 138412290;
      v117 = v28;
      v12 = "Sending applicationsDidFailToUninstall: for %@";
      break;
    case 0xD:
      v14 = _LSProgressLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v4;
        *buf = 138412290;
        v117 = v15;
        _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "Sending applicationIconDidChange: for %@", buf, 0xCu);
      }

      v129 = *MEMORY[0x1E695E4F0];
      v16 = [*(v1 + 56) objectAtIndex:0];
      v130 = v16;
      v8 = 1;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];

      v6 = 0;
      v5 = 0;
      v9 = @"com.apple.LaunchServices.applicationIconChanged";
      goto LABEL_63;
    case 0xE:
      v10 = _LSProgressLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v11 = *v4;
      *buf = 138412290;
      v117 = v11;
      v12 = "Sending applicationsDidChangePersonas: for %@";
      break;
    case 0xF:
      v45 = _LSProgressLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *v4;
        *buf = 138412290;
        v117 = v46;
        _os_log_impl(&dword_18162D000, v45, OS_LOG_TYPE_DEFAULT, "Sending applicationInstallsDidChange: due to postprocessing ready for %@", buf, 0xCu);
      }

      v47 = *(v1 + 56);
      v121[0] = @"bundleIDs";
      v121[1] = @"isPlaceholder";
      v122[0] = v47;
      v122[1] = MEMORY[0x1E695E110];
      v22 = MEMORY[0x1E695DF20];
      v23 = v122;
      v24 = v121;
LABEL_48:
      v7 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
      v6 = 0;
      v5 = 0;
      v8 = 1;
      v9 = @"com.apple.LaunchServices.applicationRegistered";
      goto LABEL_63;
    default:
      goto LABEL_63;
  }

  _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
LABEL_23:

LABEL_24:
  v6 = 0;
  v5 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_63:
  cf1 = v5;
  if (v100)
  {
    v92 = v8;
    v93 = v9;
    v94 = v6;
    v95 = v7;
    v97 = v1;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v61 = *(*(v1 + 32) + 8);
    v62 = [v61 countByEnumeratingWithState:&v107 objects:v120 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v108;
      do
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v108 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v107 + 1) + 8 * j);
          v67 = objc_autoreleasePoolPush();
          v68 = [v66 connection];
          v106[0] = MEMORY[0x1E69E9820];
          v106[1] = 3221225472;
          v106[2] = __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_320;
          v106[3] = &unk_1E6A19AC0;
          v106[4] = v66;
          v69 = [v68 remoteObjectProxyWithErrorHandler:v106];

          [v69 v100];
          objc_autoreleasePoolPop(v67);
        }

        v63 = [v61 countByEnumeratingWithState:&v107 objects:v120 count:16];
      }

      while (v63);
    }

    v7 = v95;
    v1 = v97;
    v6 = v94;
    v9 = v93;
  }

  if (v7)
  {
    v70 = v8;
  }

  else
  {
    v70 = 0;
  }

  if (v70 == 1)
  {
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterPostNotificationWithOptions(DistributedCenter, v9, 0, v7, 1uLL);
    v72 = _LSProgressLog();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v117 = v9;
      v118 = 2112;
      v119 = v7;
      _os_log_impl(&dword_18162D000, v72, OS_LOG_TYPE_DEFAULT, "Sent distributed notification %@ with payload %@", buf, 0x16u);
    }
  }

  if ((v6 & *(v1 + 84)) == 1)
  {
    v73 = *(v1 + 64);
    if (v73)
    {
      if ([v73 count])
      {
        v96 = v7;
        v74 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(v1 + 64), "count")}];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v98 = v1;
        v75 = *(v1 + 64);
        v76 = [v75 countByEnumeratingWithState:&v102 objects:v115 count:16];
        if (!v76)
        {
          goto LABEL_96;
        }

        v77 = v76;
        v78 = *v103;
        while (1)
        {
          for (k = 0; k != v77; ++k)
          {
            if (*v103 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v80 = *(*(&v102 + 1) + 8 * k);
            if (!CFEqual(cf1, @"com.apple.LaunchServices.pluginsregistered") || ([v80 bundleIdentifier], v81 = objc_claimAutoreleasedReturnValue(), v82 = _LSIsNewsWidgetBundleIdentifier(v81), v81, !v82))
            {

LABEL_93:
              v86 = [v80 correspondingApplicationExtensionRecord];
              addPluginDataToNotificationDict(v74, v86);
              goto LABEL_94;
            }

            v83 = +[LSApplicationRestrictionsManager sharedInstance];
            v84 = [v80 bundleIdentifier];
            v85 = [(LSApplicationRestrictionsManager *)v83 isAppExtensionRestricted:v84];

            if (!v85)
            {
              goto LABEL_93;
            }

            v86 = _LSProgressLog();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              v87 = [v80 bundleIdentifier];
              *buf = 138412290;
              v117 = v87;
              _os_log_impl(&dword_18162D000, v86, OS_LOG_TYPE_DEFAULT, "notification for restricted plugin %@ not being sent", buf, 0xCu);
            }

LABEL_94:
          }

          v77 = [v75 countByEnumeratingWithState:&v102 objects:v115 count:16];
          if (!v77)
          {
LABEL_96:

            v88 = CFNotificationCenterGetDistributedCenter();
            CFNotificationCenterPostNotificationWithOptions(v88, cf1, 0, v74, 2uLL);
            v89 = _LSProgressLog();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v117 = cf1;
              v118 = 2112;
              v119 = v74;
              _os_log_impl(&dword_18162D000, v89, OS_LOG_TYPE_DEFAULT, "Sent plugin notification %@ with payload %@", buf, 0x16u);
            }

            v7 = v96;
            v1 = v98;
            break;
          }
        }
      }
    }
  }

  v90 = *(v1 + 72);
  if (v90)
  {
    v90 = (*(v90 + 16))();
  }

  MEMORY[0x1865D7C50](v90);

  v91 = *MEMORY[0x1E69E9840];
}

void __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_320(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSProgressLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Error %@ connecting to observer %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __71___LSInstallProgressService_sendDatabaseRebuiltNotificationToObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSProgressLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71___LSInstallProgressService_sendDatabaseRebuiltNotificationToObserver___block_invoke_cold_1(v3, a1);
  }
}

void __60___LSInstallProgressService_sendDatabaseRebuiltNotification__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 96) == 1)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      v4 = +[_LSStartupJournalledDatabaseRebuiltNotification sharedNotification];
      [v3 addObject:v4];

      v2 = *(a1 + 32);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v2 + 8);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) sendDatabaseRebuiltNotificationToObserver:{*(*(&v11 + 1) + 8 * v9++), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __95___LSInstallProgressService__prepareApplicationProxiesForNotification_identifiers_withPlugins___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (*(a1 + 48))
        {
          [LSApplicationProxy applicationProxyForIdentifier:v7 placeholder:1];
        }

        else
        {
          [LSApplicationProxy applicationProxyForIdentifier:v7, v11];
        }
        v8 = ;
        if (v8)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
          if (*(a1 + 49) == 1)
          {
            v9 = [v8 plugInKitPlugins];
          }

          [v8 detach];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __44___LSInstallProgressService_loadProportions__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v21;
    *&v3 = 138412290;
    v17 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:{v7, v17}];
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        if (_LSIsDictionaryWithKeysAndValuesOfClass(v8, v9, v10))
        {
          v11 = [LSApplicationRecord alloc];
          v19 = 0;
          v12 = [(LSApplicationRecord *)v11 initForInstallMachineryWithBundleIdentifier:v7 placeholder:1 error:&v19];
          v13 = v19;
          v14 = _LSProgressLog();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (v12)
          {
            if (v15)
            {
              *buf = v17;
              v25 = v7;
              _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "Found placeholder for %@, loading progress proportions", buf, 0xCu);
            }

            v14 = [*(a1 + 32) objectForKeyedSubscript:v7];
            [*(*(a1 + 40) + 120) setObject:v14 forKeyedSubscript:v7];
          }

          else if (v15)
          {
            *buf = v17;
            v25 = v7;
            _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "No placeholder for %@, not loading progress proportions", buf, 0xCu);
          }
        }

        else
        {
          v13 = _LSProgressLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v25 = v7;
            _os_log_error_impl(&dword_18162D000, v13, OS_LOG_TYPE_ERROR, "Invalid progress proportion entry for %@!", buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __108___LSInstallProgressService_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [LSApplicationRecord alloc];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [(LSApplicationRecord *)v2 initForInstallMachineryWithBundleIdentifier:v3 placeholder:1 error:&v7];
  v5 = v7;
  v6 = v7;
  if (!v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }
}

void __64___LSInstallProgressService_sendNetworkUsageChangedNotification__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"usingNetwork";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 128)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotification(DistributedCenter, @"com.lsinstallprogress.networkusagechanged", 0, v2, 1u);

  v4 = *MEMORY[0x1E69E9840];
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1[4] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(*(a1[5] + 8) + 40);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(a1[5] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }

    v9 = a1[6];
    v8 = (a1 + 6);
    if ([*(*(v9 + 8) + 40) count])
    {
      v10 = _LSInstallLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_cold_1(v8);
      }
    }

    v11 = *(*v8 + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_335(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(*(a1 + 32) + 8);
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 pid];
        v9 = *(*(*(a1 + 48) + 8) + 40);
        v10 = [MEMORY[0x1E696AD98] numberWithInt:v8];
        [v9 addObject:v10];

        dispatch_group_enter(v2);
        v11 = [v7 connection];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_2;
        v15[3] = &unk_1E6A1F3C0;
        v12 = *(a1 + 48);
        v15[4] = *(a1 + 32);
        v17 = v12;
        v18 = v8;
        v16 = v2;
        [v11 addBarrierBlock:v15];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  dispatch_group_notify(v2, *(*(a1 + 32) + 72), *(a1 + 40));
  v13 = *MEMORY[0x1E69E9840];
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_3;
  v3[3] = &unk_1E6A1F398;
  v3[4] = *(a1 + 48);
  v4 = *(a1 + 56);
  dispatch_sync(v2, v3);
  dispatch_group_leave(*(a1 + 40));
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v1 removeObject:v2];
}

uint64_t __64___LSInstallProgressService_loadJournalledNotificationsFromDisk__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqual:*MEMORY[0x1E696A798]])
  {
    v5 = [v3 code];

    if (v5 == 2)
    {
      v6 = _LSInstallLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "install journal directory does not exist.", v9, 2u);
      }

      v7 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v6 = _LSInstallLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __64___LSInstallProgressService_loadJournalledNotificationsFromDisk__block_invoke_cold_1();
  }

  v7 = 1;
LABEL_10:

  return v7;
}

uint64_t __64___LSInstallProgressService_loadJournalledNotificationsFromDisk__block_invoke_340(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t __51___LSInstallProgressService_performJournalRecovery__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadJournalledNotificationsFromDisk];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  result = [*(a1 + 32) dispatchJournalledNotificationsToConnectedClients];
  *(*(a1 + 32) + 96) = 1;
  return result;
}

void __51___LSInstallProgressService_performJournalRecovery__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 10000000000);
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___LSInstallProgressService_performJournalRecovery__block_invoke_3;
  block[3] = &unk_1E6A195E0;
  block[4] = v3;
  dispatch_after(v2, v4, block);
}

void __51___LSInstallProgressService_performJournalRecovery__block_invoke_3(uint64_t a1)
{
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "jettisoning notification journal", v7, 2u);
  }

  *(*(a1 + 32) + 96) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  *(v5 + 88) = 0;
}

void __77___LSInstallProgressService_directlySendNotification_withProxies_toObserver___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSProgressLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Error %@ connecting to observer %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __71___LSInstallProgressService_dispatchJournalledNotificationsToObserver___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSProgressLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Error %@ connecting to observer %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __52___LSInstallProgressService_restoreInactiveInstalls__block_invoke_217_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v2, v3, "failure restoring install progress for %@: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v2, v3, "Parent progress for %@ is invalid, cannot add children to it", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v2, v3, "Skipping notifications for %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2_cold_2(uint64_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_4(&dword_18162D000, v2, v3, "Sending applicationInstallsDidChange: for %@", v5);
  v4 = *MEMORY[0x1E69E9840];
}

void __71___LSInstallProgressService_sendDatabaseRebuiltNotificationToObserver___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v3, v4, "Error %@ connecting to observer %@ for database rebuilt notification");
  v5 = *MEMORY[0x1E69E9840];
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [*(*(*a1 + 8) + 40) allObjects];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __64___LSInstallProgressService_loadJournalledNotificationsFromDisk__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "error enumerating saved journals: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end