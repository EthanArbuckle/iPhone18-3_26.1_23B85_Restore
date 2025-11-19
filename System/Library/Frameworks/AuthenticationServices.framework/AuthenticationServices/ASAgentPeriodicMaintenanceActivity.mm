@interface ASAgentPeriodicMaintenanceActivity
@end

@implementation ASAgentPeriodicMaintenanceActivity

void __56___ASAgentPeriodicMaintenanceActivity__registerActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    if (xpc_activity_should_defer(v3))
    {
      v4 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_INFO, "Periodic maintenance activity transitioned to state Run, but criteria are no longer satisfied. Deferring.", v6, 2u);
      }

      if (!xpc_activity_set_state(v3, 3))
      {
        v5 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __56___ASAgentPeriodicMaintenanceActivity__registerActivity__block_invoke_cold_1();
        }
      }
    }

    else
    {
      [*(a1 + 32) _activityDidTransitionToRunState:v3];
    }
  }
}

void __72___ASAgentPeriodicMaintenanceActivity__activityDidTransitionToRunState___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    if (!xpc_activity_set_state(*(a1 + 32), 5))
    {
      v3 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __72___ASAgentPeriodicMaintenanceActivity__activityDidTransitionToRunState___block_invoke_cold_3();
      }
    }

    v4 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v5 = "Periodic maintenance activity transitioned to state Done.";
      v6 = &v9;
LABEL_14:
      _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72___ASAgentPeriodicMaintenanceActivity__activityDidTransitionToRunState___block_invoke_cold_1();
    }

    if (!xpc_activity_set_state(*(a1 + 32), 3))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __56___ASAgentPeriodicMaintenanceActivity__registerActivity__block_invoke_cold_1();
      }
    }

    v4 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Periodic maintenance activity transitioned to state Defer.";
      v6 = buf;
      goto LABEL_14;
    }
  }
}

void __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  [v2 reportPasswordAutoFillProviderTelemetry];

  v3 = dispatch_group_create();
  v4 = objc_alloc_init(ASCredentialSharingGroupsNotificationManager);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  dispatch_group_enter(v3);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke_2;
  v19[3] = &unk_1E7AF7DD8;
  v21 = v22;
  v5 = v3;
  v20 = v5;
  [(ASCredentialSharingGroupsNotificationManager *)v4 notifyUserAboutSharedSavedAccountsInRecentlyDeleted:v19];
  v6 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke_cold_1();
  }

  v7 = [MEMORY[0x1E69C8A38] sharedStore];
  [v7 _verifyGroupsInSync];

  v8 = [MEMORY[0x1E695E000] pm_defaults];
  v9 = [v8 safari_BOOLForKey:@"ShouldAttemptPasskeyAvailabilityManagerFetchingInAuthenticationServicesAgent" defaultValue:0];

  if (v9)
  {
    dispatch_group_enter(v5);
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E69C8A38] sharedStore];
    v12 = [v11 savedAccounts];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke_7;
    v17[3] = &unk_1E7AF7608;
    v18 = v5;
    [v10 performPasskeyAvailabilityCheckForDomainsInSavedAccounts:v12 completionHandler:v17];
  }

  v13 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke_2_9;
  block[3] = &unk_1E7AF7E00;
  v15 = *(a1 + 40);
  v16 = v22;
  dispatch_group_notify(v5, v13, block);

  _Block_object_dispose(v22, 8);
}

@end