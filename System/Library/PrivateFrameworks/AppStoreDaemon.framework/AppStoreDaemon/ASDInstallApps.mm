@interface ASDInstallApps
+ (BOOL)initialContentDownloadsEnabled;
+ (BOOL)shouldPostNotificationOnDefaultBrowserInstallation;
+ (id)interface;
+ (void)_installApps:(void *)a3 onPairedDevice:(void *)a4 withCompletionHandler:;
+ (void)installApp:(id)a3 onPairedDevice:(id)a4 withCompletionHandler:(id)a5;
+ (void)installApp:(id)a3 withCompletionHandler:(id)a4;
+ (void)installApps:(id)a3 onPairedDevice:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation ASDInstallApps

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A538];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_installAppReviewApps_withReplyHandler_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_installAppReviewApps_withReplyHandler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_installEnterpriseApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_installEnterpriseApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v2 setClasses:v17 forSelector:sel_installSystemApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:0];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v2 setClasses:v20 forSelector:sel_installSystemApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v2 setClasses:v23 forSelector:sel_installTestFlightApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:0];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v2 setClasses:v26 forSelector:sel_installTestFlightApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [v2 setClasses:v29 forSelector:sel_installWatchApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:0];

  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  [v2 setClasses:v32 forSelector:sel_installWatchApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (BOOL)initialContentDownloadsEnabled
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = +[ASDServiceBroker defaultBroker];
  v3 = (v19 + 5);
  obj = v19[5];
  v4 = [v2 getInstallationServiceWithError:&obj];
  objc_storeStrong(v3, obj);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__ASDInstallApps_initialContentDownloadsEnabled__block_invoke;
  v12[3] = &unk_1E7CDBB80;
  v12[4] = &v18;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__ASDInstallApps_initialContentDownloadsEnabled__block_invoke_2;
  v11[3] = &unk_1E7CDC0A0;
  v11[4] = &v14;
  [v5 areInitialContentDownloadsEnabledWithReplyHandler:v11];

  if (v19[5])
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = v19[5];
      *buf = 138543362;
      v25 = v10;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "Error getting initial content download value: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

+ (BOOL)shouldPostNotificationOnDefaultBrowserInstallation
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = +[ASDServiceBroker defaultBroker];
  v3 = (v19 + 5);
  obj = v19[5];
  v4 = [v2 getInstallationServiceWithError:&obj];
  objc_storeStrong(v3, obj);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__ASDInstallApps_shouldPostNotificationOnDefaultBrowserInstallation__block_invoke;
  v12[3] = &unk_1E7CDBB80;
  v12[4] = &v18;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ASDInstallApps_shouldPostNotificationOnDefaultBrowserInstallation__block_invoke_2;
  v11[3] = &unk_1E7CDC0A0;
  v11[4] = &v14;
  [v5 shouldPostNotificationOnDefaultBrowserInstallationWithReplyHandler:v11];

  if (v19[5])
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = v19[5];
      *buf = 138543362;
      v25 = v10;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "Error getting should post notification on default browser installation value: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

+ (void)installApp:(id)a3 onPairedDevice:(id)a4 withCompletionHandler:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v17[0] = a3;
  v9 = MEMORY[0x1E695DEC8];
  v10 = a4;
  v11 = a3;
  v12 = [v9 arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__ASDInstallApps_installApp_onPairedDevice_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CDB7A8;
  v16 = v8;
  v13 = v8;
  [a1 installApps:v12 onPairedDevice:v10 withCompletionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __66__ASDInstallApps_installApp_onPairedDevice_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)installApp:(id)a3 withCompletionHandler:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14[0] = a3;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a3;
  v9 = [v7 arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__ASDInstallApps_installApp_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CDB7A8;
  v13 = v6;
  v10 = v6;
  [(ASDInstallApps *)a1 _installApps:v9 onPairedDevice:0 withCompletionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __51__ASDInstallApps_installApp_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)_installApps:(void *)a3 onPairedDevice:(void *)a4 withCompletionHandler:
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = [v6 firstObject];
  v10 = objc_opt_class();

  objc_opt_self();
  if (qword_1ED90D5D0 != -1)
  {
    dispatch_once(&qword_1ED90D5D0, &__block_literal_global_19);
  }

  v11 = _MergedGlobals_45;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v42 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v41 + 1) + 8 * v16);
      if (([v11 containsObject:objc_opt_class()] & 1) == 0)
      {
        break;
      }

      if (objc_opt_class() != v10)
      {
        v26 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          v31 = objc_opt_class();
          *buf = 138412546;
          v46 = v31;
          v47 = 2112;
          v48 = v10;
          v32 = v31;
        }
        v24 = ;
        v25 = 507;
LABEL_19:
        v27 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", v25, v24);
        v8[2](v8, 0, v27);

        v22 = v12;
        goto LABEL_20;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v23 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v29 = objc_opt_class();
      *buf = 138412290;
      v46 = v29;
      v30 = v29;
    }
    v24 = ;
    v25 = 909;
    goto LABEL_19;
  }

LABEL_12:

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke;
  v38[3] = &unk_1E7CDB8E0;
  v18 = v12;
  v39 = v18;
  v40 = v8;
  v19 = MEMORY[0x1B8CBC4F0](v38);
  v20 = +[ASDServiceBroker defaultBroker];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_94;
  v33[3] = &unk_1E7CDD210;
  v36 = v19;
  v37 = v10;
  v34 = v18;
  v35 = v7;
  v21 = v19;
  [v20 getInstallationServiceWithCompletionHandler:v33];

  v22 = v39;
LABEL_20:

  v28 = *MEMORY[0x1E69E9840];
}

+ (void)installApps:(id)a3 onPairedDevice:(id)a4 withCompletionHandler:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = [a4 pairingID];
  if (v9)
  {
    [(ASDInstallApps *)a1 _installApps:v11 onPairedDevice:v9 withCompletionHandler:v8];
  }

  else
  {
    v10 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 507, @"Paired device has no identifier, did you mean to install locally?");
    (*(v8 + 2))(v8, 0, v10);
  }
}

uint64_t __43__ASDInstallApps__availableMetadataClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  _MergedGlobals_45 = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory(13);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) count];
      *buf = 134218242;
      v23 = v9;
      v24 = 2114;
      v25 = v6;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "Installation request for %lu app(s) failed with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v10 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_86;
      v19 = &unk_1E7CDD1E8;
      v8 = v11;
      v20 = v8;
      v21 = *(a1 + 32);
      [v5 enumerateObjectsUsingBlock:&v16];
      [v8 appendString:@"\n]", v16, v17, v18, v19];
      v12 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = [*(a1 + 32) count];
        *buf = 134218242;
        v23 = v15;
        v24 = 2114;
        v25 = v8;
        _os_log_debug_impl(&dword_1B8220000, v12, OS_LOG_TYPE_DEBUG, "Installation request for %lu app(s) completed: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) count];
        *buf = 134218242;
        v23 = v13;
        v24 = 2114;
        v25 = v5;
        _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "Installation request for %lu app(s) completed with identifiers: %{public}@", buf, 0x16u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_86(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v4 appendFormat:@"\n%@: %@", v6, v7];
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 56);
    if (v7 == objc_opt_class())
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_2;
      v39[3] = &unk_1E7CDB730;
      v40 = *(a1 + 48);
      v23 = [v5 remoteObjectProxyWithErrorHandler:v39];
      [v23 installEnterpriseApps:*(a1 + 32) onPairedDevice:*(a1 + 40) withReplyHandler:*(a1 + 48)];

      v24 = v40;
    }

    else
    {
      v8 = *(a1 + 56);
      if (v8 == objc_opt_class())
      {
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_3;
        v37[3] = &unk_1E7CDB730;
        v38 = *(a1 + 48);
        v25 = [v5 remoteObjectProxyWithErrorHandler:v37];
        [v25 installAppReviewApps:*(a1 + 32) withReplyHandler:*(a1 + 48)];

        v24 = v38;
      }

      else
      {
        v9 = *(a1 + 56);
        if (v9 == objc_opt_class())
        {
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_4;
          v35[3] = &unk_1E7CDB730;
          v36 = *(a1 + 48);
          v26 = [v5 remoteObjectProxyWithErrorHandler:v35];
          [v26 installSystemApps:*(a1 + 32) onPairedDevice:*(a1 + 40) withReplyHandler:*(a1 + 48)];

          v24 = v36;
        }

        else
        {
          v10 = *(a1 + 56);
          if (v10 == objc_opt_class())
          {
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_5;
            v33[3] = &unk_1E7CDB730;
            v34 = *(a1 + 48);
            v27 = [v5 remoteObjectProxyWithErrorHandler:v33];
            [v27 installTestFlightApps:*(a1 + 32) onPairedDevice:*(a1 + 40) withReplyHandler:*(a1 + 48)];

            v24 = v34;
          }

          else
          {
            v11 = *(a1 + 56);
            if (v11 != objc_opt_class())
            {
              v12 = *(a1 + 48);
              v13 = NSStringFromClass(*(a1 + 56));
              v19 = ASDErrorWithUserInfoAndFormat(507, 0, @"Attempting installation with invalid metadata class: %@", v14, v15, v16, v17, v18, v13);
              (*(v12 + 16))(v12, 0, v19);

              goto LABEL_17;
            }

            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_6;
            v31[3] = &unk_1E7CDB730;
            v32 = *(a1 + 48);
            v28 = [v5 remoteObjectProxyWithErrorHandler:v31];
            [v28 installWatchApps:*(a1 + 32) onPairedDevice:*(a1 + 40) withReplyHandler:*(a1 + 48)];

            v24 = v32;
          }
        }
      }
    }

    goto LABEL_17;
  }

  v20 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v30 = [*(a1 + 32) count];
    *buf = 134218242;
    v42 = v30;
    v43 = 2114;
    v44 = v6;
    _os_log_error_impl(&dword_1B8220000, v20, OS_LOG_TYPE_ERROR, "Installation request for %lu app(s) failed with error: %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 48);
  v22 = ASDErrorWithSafeUserInfo(v6);
  (*(v21 + 16))(v21, 0, v22);

LABEL_17:
  v29 = *MEMORY[0x1E69E9840];
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

@end