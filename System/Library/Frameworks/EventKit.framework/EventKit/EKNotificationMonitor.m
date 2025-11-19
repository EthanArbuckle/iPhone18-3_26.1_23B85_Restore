@interface EKNotificationMonitor
@end

@implementation EKNotificationMonitor

void __35___EKNotificationMonitor_logHandle__block_invoke(uint64_t a1)
{
  v1 = ekSubSystem;
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v7 = NSStringFromClass(v3);
  v4 = v7;
  v5 = os_log_create(v1, [v7 UTF8String]);
  v6 = logHandle_logHandle;
  logHandle_logHandle = v5;
}

EKEventStore *__71___EKNotificationMonitor__initWithOptions_eventStore_eventStoreGetter___block_invoke()
{
  v0 = objc_alloc_init(EKEventStore);

  return v0;
}

void __31___EKNotificationMonitor_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _eventStoreChanged];
}

uint64_t __30___EKNotificationMonitor_stop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30___EKNotificationMonitor_stop__block_invoke_2;
  block[3] = &unk_1E77FD418;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);

  return [*(a1 + 32) _killTimer];
}

uint64_t __30___EKNotificationMonitor_stop__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  v4 = *(a1 + 32);

  return [v4 _killSyncTimer:0];
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke(uint64_t a1)
{
  v133 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _eventStore];
  if (![v2 isDataProtected])
  {
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    *buf = 0;
    v114 = buf;
    v115 = 0x3032000000;
    v116 = __Block_byref_object_copy__13;
    v117 = __Block_byref_object_dispose__13;
    v118 = 0;
    v5 = *(a1 + 32);
    v6 = *(v5 + 128);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_50;
    block[3] = &unk_1E77FD728;
    block[4] = v5;
    block[5] = &v119;
    block[6] = buf;
    dispatch_sync(v6, block);
    if (*(v120 + 24) != 1)
    {
LABEL_85:
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v119, 8);
      goto LABEL_86;
    }

    v7 = *(a1 + 32);
    v75 = v7[92];
    v106 = 0;
    v107 = &v106;
    v108 = 0x3032000000;
    v109 = __Block_byref_object_copy__13;
    v110 = __Block_byref_object_dispose__13;
    v111 = 0;
    v100 = 0;
    v101 = &v100;
    v102 = 0x3032000000;
    v103 = __Block_byref_object_copy__13;
    v104 = __Block_byref_object_dispose__13;
    v105 = 0;
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 0;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    v8 = [v7 isMonitoringOnlyNotificationCount];
    v9 = *(a1 + 32);
    if (v8)
    {
      v10 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v129 = 0;
        _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "Notification monitor wants to reload notification count. Will fetch notification count from the event store as a result", v129, 2u);
      }

      v11 = [*(a1 + 32) _eventStore];
      v12 = [v11 eventNotificationCountExcludingUncheckedCalendars:*(*(a1 + 32) + 101) expanded:*(*(a1 + 32) + 100)];
      v93[3] = v12;
      v13 = [*(a1 + 32) notificationQueue];
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_51;
      v91[3] = &unk_1E77FE850;
      v91[4] = *(a1 + 32);
      v91[5] = &v96;
      v91[6] = &v92;
      dispatch_sync(v13, v91);
    }

    else
    {
      v14 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v129 = 0;
        _os_log_impl(&dword_1A805E000, v14, OS_LOG_TYPE_DEFAULT, "Notification monitor wants to reload notifications. Will fetch notification references from the event store as a result.", v129, 2u);
      }

      v15 = *(a1 + 32);
      v16 = v15[93];
      if (v15[93])
      {
        v17 = &v90;
      }

      else
      {
        v17 = 0;
      }

      if (v16 == 1)
      {
        v90 = 0;
      }

      v18 = [v15 _fetchEventNotificationReferencesFromEventStore:v2 earliestExpiringNotification:v17];
      if (v16)
      {
        v11 = v90;
      }

      else
      {
        v11 = 0;
      }

      v19 = v101[5];
      v101[5] = v18;

      v20 = *(a1 + 32);
      if (v20[93] == 1)
      {
        [v20 _updateTimerFireDate:v11];
      }

      v21 = [v101[5] count];
      v93[3] = v21;
      v22 = [*(a1 + 32) notificationQueue];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_53;
      v89[3] = &unk_1E77FE850;
      v89[4] = *(a1 + 32);
      v89[5] = &v106;
      v89[6] = &v100;
      dispatch_sync(v22, v89);

      v23 = [v107[5] count];
      v97[3] = v23;
    }

    v24 = *(a1 + 32);
    v25 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v93[3]];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v97[3]];
      *v129 = 138543618;
      v130 = v26;
      v131 = 2114;
      v132 = v27;
      _os_log_impl(&dword_1A805E000, v25, OS_LOG_TYPE_DEFAULT, "Current notification count: %{public}@. Last event notification count: %{public}@.", v129, 0x16u);
    }

    v28 = *(a1 + 32);
    v29 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = @"NO";
      if (v75)
      {
        v30 = @"YES";
      }

      *v129 = 138543362;
      v130 = v30;
      _os_log_impl(&dword_1A805E000, v29, OS_LOG_TYPE_DEFAULT, "Is initial check: %{public}@.", v129, 0xCu);
    }

    if (v93[3] != v97[3])
    {
      v31 = *(a1 + 32);
      v32 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v93[3]];
        *v129 = 138543362;
        v130 = v33;
        _os_log_impl(&dword_1A805E000, v32, OS_LOG_TYPE_DEFAULT, "Count changed to %{public}@ events, Notifying.", v129, 0xCu);
      }

      if (+[EKFeatureSet areApplicationBadgesSupported])
      {
        v34 = [*(a1 + 32) effectiveCallbackQueue];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_61;
        v88[3] = &unk_1E77FD418;
        v88[4] = *(a1 + 32);
        dispatch_async(v34, v88);
      }

      else
      {
        v35 = [objc_opt_class() logHandle];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v129 = 0;
          _os_log_impl(&dword_1A805E000, v35, OS_LOG_TYPE_DEFAULT, "Application badges are not supported on this platform. Will not notify.", v129, 2u);
        }
      }
    }

    *(*(a1 + 32) + 92) = 0;
    v36 = [*(a1 + 32) isMonitoringOnlyNotificationCount];
    v37 = v75;
    if ((v36 | v75))
    {
LABEL_82:
      if (v37)
      {
        v73 = [*(a1 + 32) effectiveCallbackQueue];
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_68;
        v76[3] = &unk_1E77FD418;
        v76[4] = *(a1 + 32);
        dispatch_async(v73, v76);
      }

      _Block_object_dispose(&v92, 8);
      _Block_object_dispose(&v96, 8);
      _Block_object_dispose(&v100, 8);

      _Block_object_dispose(&v106, 8);
      goto LABEL_85;
    }

    v38 = *(a1 + 32);
    v39 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *v129 = 0;
      _os_log_impl(&dword_1A805E000, v39, OS_LOG_TYPE_INFO, "Checking for notification change notification.", v129, 2u);
    }

    if (v97[3] == v93[3])
    {
      v40 = 1;
    }

    else
    {
      v41 = *(a1 + 32);
      v42 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v93[3]];
        *v129 = 138543362;
        v130 = v43;
        _os_log_impl(&dword_1A805E000, v42, OS_LOG_TYPE_INFO, "Count changed to %{public}@ events. Setting notification to EKNotificationChangeTypeUnknown", v129, 0xCu);
      }

      v40 = 0;
      if (!*(v114 + 5))
      {
        goto LABEL_74;
      }
    }

    v44 = *(a1 + 32);
    v45 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *v129 = 0;
      _os_log_impl(&dword_1A805E000, v45, OS_LOG_TYPE_INFO, "Changes detected. Checking changes in notifications.", v129, 2u);
    }

    v46 = objc_alloc(MEMORY[0x1E695DFA8]);
    v47 = [v46 initWithCapacity:v97[3]];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v48 = v107[5];
    v49 = [v48 countByEnumeratingWithState:&v84 objects:v128 count:16];
    if (v49)
    {
      v50 = *v85;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v85 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = [*(*(&v84 + 1) + 8 * i) objectID];
          [v47 addObject:v52];
        }

        v49 = [v48 countByEnumeratingWithState:&v84 objects:v128 count:16];
      }

      while (v49);
    }

    if (*(v114 + 5))
    {
      v53 = objc_alloc(MEMORY[0x1E695DFA8]);
      v54 = [v53 initWithCapacity:v93[3]];
    }

    else
    {
      v54 = 0;
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v55 = v101[5];
    v56 = [v55 countByEnumeratingWithState:&v80 objects:v127 count:16];
    if (v56)
    {
      v57 = *v81;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v81 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v59 = [*(*(&v80 + 1) + 8 * j) objectID];
          [v54 addObject:v59];
          if (![v47 containsObject:v59])
          {
            v40 = 0;
          }
        }

        v56 = [v55 countByEnumeratingWithState:&v80 objects:v127 count:16];
      }

      while (v56);
    }

    if (*(v114 + 5))
    {
      v60 = *(a1 + 32);
      v61 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(v114 + 5), "count")}];
        *v129 = 138543362;
        v130 = v62;
        _os_log_impl(&dword_1A805E000, v61, OS_LOG_TYPE_INFO, "Updating changeIDs. Current size at %{public}@", v129, 0xCu);
      }

      [*(a1 + 32) _addRemovedOrAddedObjectIDsTo:*(v114 + 5) oldNotifications:v47 newNotifications:v54];
      v126[0] = *(v114 + 5);
      v125[0] = @"EKNotificationChangedNotificationsKey";
      v125[1] = @"EKNotificationChangedChangeTypeKey";
      v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v40];
      v126[1] = v63;
      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:2];

      v65 = *(a1 + 32);
      v66 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(v114 + 5), "count")}];
        *v129 = 138543362;
        v130 = v67;
        _os_log_impl(&dword_1A805E000, v66, OS_LOG_TYPE_INFO, "Updated changeIDs. Current size at %{public}@", v129, 0xCu);
      }

      if (v64)
      {
        goto LABEL_75;
      }
    }

    else
    {
    }

LABEL_74:
    v123 = @"EKNotificationChangedChangeTypeKey";
    v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v40];
    v124 = v68;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];

LABEL_75:
    v69 = *(v114 + 5);
    if (v69 && ![v69 count])
    {
      v71 = *(a1 + 32);
      v72 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *v129 = 0;
        _os_log_impl(&dword_1A805E000, v72, OS_LOG_TYPE_DEFAULT, "ChangIDs is empty. Skipping notification changed notification.", v129, 2u);
      }
    }

    else
    {
      v70 = [*(a1 + 32) effectiveCallbackQueue];
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_64;
      v77[3] = &unk_1E77FD4B8;
      v77[4] = *(a1 + 32);
      v79 = buf;
      v78 = v64;
      dispatch_async(v70, v77);
    }

    v37 = v75;
    goto LABEL_82;
  }

  v3 = *(a1 + 32);
  v4 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_DEFAULT, "Data protection is on. Unable to check for updates.", buf, 2u);
  }

  [*(a1 + 32) _killTimer];
LABEL_86:

  v74 = *MEMORY[0x1E69E9840];
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_50(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 40))
  {
    *(v2 + 88) = 0;
LABEL_7:
    *(*(a1[5] + 8) + 24) = 1;
    goto LABEL_11;
  }

  v3 = *(v2 + 88);
  v4 = [objc_opt_class() logHandle];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 >= 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_DEFAULT, "Sync running, but we've been explicitly told to ignore that and refresh anyway.", buf, 2u);
    }

    --*(a1[4] + 88);
    goto LABEL_7;
  }

  if (v5)
  {
    *v10 = 0;
    _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_DEFAULT, "Sync running. Waiting for it to finish before checking for updates.", v10, 2u);
  }

  *(a1[4] + 48) = 1;
LABEL_11:
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v6 = a1[4];
    if (*(v6 + 97) == 1)
    {
      if (*(v6 + 72) == 1)
      {
        objc_storeStrong((*(a1[6] + 8) + 40), *(v6 + 80));
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v8 = a1[4];
        v9 = *(v8 + 80);
        *(v8 + 80) = v7;
      }

      else
      {
        [*(v6 + 80) removeAllObjects];
        *(a1[4] + 72) = 1;
      }
    }
  }
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_51(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(*(a1[5] + 8) + 24) = *(a1[4] + 104);
  *(a1[4] + 104) = *(*(a1[6] + 8) + 24);
  v2 = a1[4];
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1[4] + 104)];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Set notification count to %{public}@.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_53(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 112));
  objc_storeStrong((a1[4] + 112), *(*(a1[6] + 8) + 40));
  v2 = a1[4];
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1[4] + 112);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Set notification references to %@.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_61(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Posting notification count changed notification.", v5, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"EKNotificationCountChangedNotification" object:*(a1 + 32) userInfo:0];
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_64(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1[6] + 8) + 40);
    if (v4)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    }

    else
    {
      v5 = @"nil";
    }

    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Posting notification changed notification because changeIDs count is %{public}@", &v8, 0xCu);
    if (v4)
    {
    }
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"EKNotificationsChangedNotification" object:a1[4] userInfo:a1[5]];

  v7 = *MEMORY[0x1E69E9840];
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Initial check. Sending notification.", v5, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"EKNotificationsLoadedNotification" object:*(a1 + 32) userInfo:0];
}

uint64_t __61___EKNotificationMonitor__notificationCountChangedExternally__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 40) || (++*(v1 + 88), *(*(result + 32) + 48) == 1))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __54___EKNotificationMonitor_blacklistedNotificationQueue__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _blacklistedNotifications;
  _blacklistedNotifications = v0;

  blacklistedNotificationQueue__blacklistedNotificationQueue = dispatch_queue_create("blacklistedNotificationQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __43___EKNotificationMonitor_blacklistedRowIDs__block_invoke(uint64_t a1)
{
  v2 = [_blacklistedNotifications copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __43___EKNotificationMonitor_blacklistedRowIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "rowID")}];
  [v2 addObject:v3];
}

uint64_t __103___EKNotificationMonitor__fetchEventNotificationReferencesFromEventStore_earliestExpiringNotification___block_invoke(uint64_t a1)
{
  v2 = [_blacklistedNotifications copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __103___EKNotificationMonitor__fetchEventNotificationReferencesFromEventStore_earliestExpiringNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 objectID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __38___EKNotificationMonitor__syncDidEnd___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 48))
    {
      v4 = @"pending";
    }

    else
    {
      v4 = @"no pending";
    }

    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Sync done, %@ changes.", &v8, 0xCu);
  }

  result = [*(a1 + 32) _killSyncTimer:*(a1 + 40)];
  v6 = *(a1 + 32);
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __50___EKNotificationMonitor_trackChangesInEventStore__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = *(v11 + 128);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50___EKNotificationMonitor_trackChangesInEventStore__block_invoke_2;
  v15[3] = &unk_1E77FD750;
  v15[4] = v11;
  v16 = v10;
  v18 = a6;
  v17 = v9;
  v13 = v9;
  v14 = v10;
  dispatch_sync(v12, v15);
}

void __50___EKNotificationMonitor_trackChangesInEventStore__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1 && (*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v3 = *(v2 + 80);
      v5 = [EKObjectID EKObjectIDsFromData:?];
      [v3 addObjectsFromArray:v5];
    }

    else
    {
      *(v2 + 72) = 0;
      v4 = *(*(a1 + 32) + 80);

      [v4 removeAllObjects];
    }
  }
}

@end