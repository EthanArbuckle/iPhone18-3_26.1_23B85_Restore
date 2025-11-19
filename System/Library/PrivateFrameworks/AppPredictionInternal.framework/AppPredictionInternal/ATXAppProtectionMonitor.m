@interface ATXAppProtectionMonitor
@end

@implementation ATXAppProtectionMonitor

void __42___ATXAppProtectionMonitor_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_43;
  sharedInstance__pasExprOnceResult_43 = v1;

  objc_autoreleasePoolPop(v0);
}

void __73___ATXAppProtectionMonitor_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appProtectionSubjectMonitorSubscription];
  LODWORD(v2) = [v2 isEqual:v3];

  if (!v2)
  {
    goto LABEL_40;
  }

  v4 = [*(a1 + 48) _pas_mappedArrayWithTransform:&__block_literal_global_25_7];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v5)
  {
    goto LABEL_37;
  }

  v7 = v5;
  v8 = *v35;
  *&v6 = 138412290;
  v33 = v6;
  do
  {
    v9 = 0;
    do
    {
      if (*v35 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v34 + 1) + 8 * v9);
      if (([v10 isHidden] & 1) != 0 || objc_msgSend(v10, "isLocked"))
      {
        v11 = objc_opt_new();
        v12 = objc_opt_new();
        if ([v10 isLocked])
        {
          v13 = __atxlog_handle_default();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v10 bundleIdentifier];
            *buf = v33;
            v39 = v14;
            _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: %@ is locked", buf, 0xCu);
          }

          v15 = [v10 bundleIdentifier];
          [v11 addObject:v15];
        }

        if ([v10 isHidden])
        {
          v16 = __atxlog_handle_default();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v10 bundleIdentifier];
            *buf = v33;
            v39 = v17;
            _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: %@ is hidden", buf, 0xCu);
          }

          v18 = [v10 bundleIdentifier];
          [v12 addObject:v18];
        }

        v19 = [[ATXAppProtectionLockedOrHidden alloc] initWithLockedApps:v11 hiddenApps:v12];
        v20 = __atxlog_handle_default();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v10 bundleIdentifier];
          *buf = v33;
          v39 = v21;
          _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: Sending internal notification for locked/hidden app: %@", buf, 0xCu);
        }

        [ATXInternalLockedOrHiddenAppNotification postNotificationWithLockedOrHiddenApps:v19];
LABEL_20:

        goto LABEL_21;
      }

      if (![v10 isHidden] || (objc_msgSend(v10, "isLocked") & 1) == 0)
      {
        v11 = objc_opt_new();
        v12 = objc_opt_new();
        if (([v10 isLocked] & 1) == 0)
        {
          v22 = __atxlog_handle_default();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v10 bundleIdentifier];
            *buf = v33;
            v39 = v23;
            _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: %@ is no longer locked", buf, 0xCu);
          }

          v24 = [v10 bundleIdentifier];
          [v11 addObject:v24];
        }

        if (([v10 isHidden] & 1) == 0)
        {
          v25 = __atxlog_handle_default();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v10 bundleIdentifier];
            *buf = v33;
            v39 = v26;
            _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: %@ is no longer hidden", buf, 0xCu);
          }

          v27 = [v10 bundleIdentifier];
          [v12 addObject:v27];
        }

        v28 = __atxlog_handle_default();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v10 bundleIdentifier];
          *buf = v33;
          v39 = v29;
          _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: Sending internal notification for unlocked/unhidden app: %@", buf, 0xCu);
        }

        v19 = [[ATXAppProtectionUnLockedOrUnHidden alloc] initWithUnLockedApps:v11 unHiddenApps:v12];
        [ATXInternalUnLockedOrUnHiddenAppNotification postNotificationWithUnLockedOrUnHiddenApps:v19];
        goto LABEL_20;
      }

LABEL_21:
      ++v9;
    }

    while (v7 != v9);
    v30 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    v7 = v30;
  }

  while (v30);
LABEL_37:
  v31 = __atxlog_handle_default();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v4;
    _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: Received App Protection change:  %@. Refreshing blending layer suggestions immediately", buf, 0xCu);
  }

  ATXUpdatePredictionsImmediatelyWithReason(21);
LABEL_40:
  v32 = *MEMORY[0x277D85DE8];
}

Class __73___ATXAppProtectionMonitor_appProtectionSubjectsChanged_forSubscription___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = NSClassFromString(&cfstr_Apapplication.isa);
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

@end