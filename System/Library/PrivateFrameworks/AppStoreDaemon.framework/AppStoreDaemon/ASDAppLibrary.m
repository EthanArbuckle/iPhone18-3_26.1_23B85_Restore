@interface ASDAppLibrary
+ (id)interface;
+ (id)sharedInstance;
+ (int64_t)launchApp:(id)a3;
+ (int64_t)launchApp:(id)a3 onPairedDevice:(id)a4;
+ (int64_t)launchMessagesExtensionForApp:(id)a3;
+ (unsigned)openableStatusForExecutableAtPath:(id)a3;
+ (void)launchApp:(id)a3 onPairedDevice:(id)a4 withResultHandler:(id)a5;
+ (void)launchApp:(id)a3 withResultHandler:(id)a4;
+ (void)launchMessagesExtensionForApp:(id)a3 withResultHandler:(id)a4;
+ (void)lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs:(id)a3 withResultHandler:(id)a4;
+ (void)lookupBundleIDsForDeletableSystemAppsWithItemIDs:(id)a3 withResultHandler:(id)a4;
+ (void)lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:(id)a3 withResultHandler:(id)a4;
+ (void)lookupItemIDsForDeletableSystemAppsWithBundleIDs:(id)a3 withResultHandler:(id)a4;
+ (void)uninstallApp:(id)a3 requestUserConfirmation:(BOOL)a4 withResultHandler:(id)a5;
- (ASDAppLibrary)init;
@end

@implementation ASDAppLibrary

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3049E78];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_executeQueryWithPredicate_withReplyHandler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_executeQueryWithPredicate_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_executeQueryWithPredicate_onRemoteDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_executeQueryForUpdatesReloadingFromServer_withReplyHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__ASDAppLibrary_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED90D488 != -1)
  {
    dispatch_once(&qword_1ED90D488, block);
  }

  v2 = _MergedGlobals_26;

  return v2;
}

uint64_t __31__ASDAppLibrary_sharedInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_26 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDAppLibrary)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = +[ASDNotificationCenter defaultCenter];
  v5 = v3;
  if (self)
  {
    v8.receiver = self;
    v8.super_class = ASDAppLibrary;
    v6 = [(ASDAppLibrary *)&v8 init];
    self = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_serviceBroker, v5);
    }
  }

  return self;
}

+ (int64_t)launchApp:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 2;
  v4 = +[ASDServiceBroker defaultBroker];
  v5 = (v23 + 5);
  obj = v23[5];
  v6 = [v4 getLibraryServiceWithError:&obj];
  objc_storeStrong(v5, obj);

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __27__ASDAppLibrary_launchApp___block_invoke;
  v16[3] = &unk_1E7CDBB80;
  v16[4] = &v22;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __27__ASDAppLibrary_launchApp___block_invoke_2;
  v15[3] = &unk_1E7CDBBA8;
  v15[4] = &v18;
  [v7 launchApp:v3 withReplyHandler:v15];

  v8 = v19[3];
  if (v8 == 2)
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = v23[5];
      *buf = 138543874;
      v29 = v12;
      v30 = 2114;
      v31 = v3;
      v32 = 2114;
      v33 = v13;
      v14 = v12;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ error: %{public}@", buf, 0x20u);
    }

    v8 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (int64_t)launchApp:(id)a3 onPairedDevice:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 2;
  v7 = +[ASDServiceBroker defaultBroker];
  v8 = (v27 + 5);
  obj = v27[5];
  v9 = [v7 getLibraryServiceWithError:&obj];
  objc_storeStrong(v8, obj);

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __42__ASDAppLibrary_launchApp_onPairedDevice___block_invoke;
  v20[3] = &unk_1E7CDBB80;
  v20[4] = &v26;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v11 = [v6 pairingID];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__ASDAppLibrary_launchApp_onPairedDevice___block_invoke_2;
  v19[3] = &unk_1E7CDBBA8;
  v19[4] = &v22;
  [v10 launchApp:v5 onPairedDevice:v11 withReplyHandler:v19];

  v12 = v23[3];
  if (v12 == 2)
  {
    v13 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = v27[5];
      *buf = 138544130;
      v33 = v16;
      v34 = 2114;
      v35 = v5;
      v36 = 2114;
      v37 = v6;
      v38 = 2114;
      v39 = v17;
      v18 = v16;
      _os_log_error_impl(&dword_1B8220000, v13, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ on %{public}@ error: %{public}@", buf, 0x2Au);
    }

    v12 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (void)launchApp:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_2;
    v18[3] = &unk_1E7CDBBD0;
    v21 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v18];
    v7 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_4;
    v14[3] = &unk_1E7CDBC20;
    v17 = *(a1 + 48);
    v15 = v7;
    v16 = *(a1 + 40);
    [v6 launchApp:v15 withReplyHandler:v14];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v5;
      v13 = v11;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = a1[6];
    v9 = objc_opt_class();
    v10 = a1[4];
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v3;
    v11 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(a1[5] + 16))(a1[5], 2, v5, v6);
  v7 = *MEMORY[0x1E69E9840];
}

void __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      *buf = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2048;
      v19 = a2;
      v10 = v8;
      _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ status: %ld", buf, 0x20u);
    }
  }

  v5 = dispatch_get_global_queue(21, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_5;
  v11[3] = &unk_1E7CDBBF8;
  v12 = *(a1 + 40);
  v13 = a2;
  dispatch_async(v5, v11);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)launchApp:(id)a3 onPairedDevice:(id)a4 withResultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ASDServiceBroker defaultBroker];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke;
  v15[3] = &unk_1E7CDBCC0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = a1;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 getLibraryServiceWithCompletionHandler:v15];
}

void __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_2;
    v29[3] = &unk_1E7CDBC70;
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v6;
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v30 = v10;
    v31 = v9;
    v11 = [a2 remoteObjectProxyWithErrorHandler:v29];
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) pairingID];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_7;
    v26[3] = &unk_1E7CDBC98;
    v14 = *(a1 + 56);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    *&v17 = *(a1 + 48);
    *(&v17 + 1) = v14;
    *&v18 = v15;
    *(&v18 + 1) = v16;
    v27 = v18;
    v28 = v17;
    [v11 launchApp:v12 onPairedDevice:v13 withReplyHandler:v26];
  }

  else
  {
    v19 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 56);
      v22 = objc_opt_class();
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      *buf = 138544130;
      v33 = v22;
      v34 = 2114;
      v35 = v23;
      v36 = 2114;
      v37 = v24;
      v38 = 2114;
      v39 = v5;
      v25 = v22;
      _os_log_error_impl(&dword_1B8220000, v19, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ on %{public}@ error: %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[7];
    v11 = objc_opt_class();
    v12 = a1[4];
    v13 = a1[5];
    v15 = 138544130;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    v21 = 2114;
    v22 = v3;
    v14 = v11;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ on %{public}@ error: %{public}@", &v15, 0x2Au);
  }

  (*(a1[6] + 16))(a1[6], 2, v5, v6, v7, v8);
  v9 = *MEMORY[0x1E69E9840];
}

void __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 56);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138544130;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2048;
      v22 = a2;
      v11 = v8;
      _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ on %{public}@ status: %ld", buf, 0x2Au);
    }
  }

  v5 = dispatch_get_global_queue(21, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_8;
  v12[3] = &unk_1E7CDBBF8;
  v13 = *(a1 + 48);
  v14 = a2;
  dispatch_async(v5, v12);

  v6 = *MEMORY[0x1E69E9840];
}

+ (int64_t)launchMessagesExtensionForApp:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 2;
  v4 = +[ASDServiceBroker defaultBroker];
  v5 = (v23 + 5);
  obj = v23[5];
  v6 = [v4 getLibraryServiceWithError:&obj];
  objc_storeStrong(v5, obj);

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__ASDAppLibrary_launchMessagesExtensionForApp___block_invoke;
  v16[3] = &unk_1E7CDBB80;
  v16[4] = &v22;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__ASDAppLibrary_launchMessagesExtensionForApp___block_invoke_2;
  v15[3] = &unk_1E7CDBBA8;
  v15[4] = &v18;
  [v7 launchApp:v3 extensionType:1 withReplyHandler:v15];

  if (v23[5])
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = v23[5];
      *buf = 138543874;
      v29 = v12;
      v30 = 2114;
      v31 = v3;
      v32 = 2114;
      v33 = v13;
      v14 = v12;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch extension for %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  v9 = v19[3];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (void)launchMessagesExtensionForApp:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_2;
    v18[3] = &unk_1E7CDBBD0;
    v21 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v18];
    v7 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_9;
    v14[3] = &unk_1E7CDBC20;
    v17 = *(a1 + 48);
    v15 = v7;
    v16 = *(a1 + 40);
    [v6 launchApp:v15 extensionType:1 withReplyHandler:v14];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v5;
      v13 = v11;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch extension for %{public}@ error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = a1[6];
    v9 = objc_opt_class();
    v10 = a1[4];
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v3;
    v11 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch extension for %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(a1[5] + 16))(a1[5], 2, v5, v6);
  v7 = *MEMORY[0x1E69E9840];
}

void __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      *buf = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2048;
      v19 = a2;
      v10 = v8;
      _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch extension for %{public}@ status: %ld", buf, 0x20u);
    }
  }

  v5 = dispatch_get_global_queue(21, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_10;
  v11[3] = &unk_1E7CDBBF8;
  v12 = *(a1 + 40);
  v13 = a2;
  dispatch_async(v5, v11);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)lookupBundleIDsForDeletableSystemAppsWithItemIDs:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_2;
    v18[3] = &unk_1E7CDBBD0;
    v21 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v18];
    v7 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_11;
    v14[3] = &unk_1E7CDBCE8;
    v17 = *(a1 + 48);
    v15 = v7;
    v16 = *(a1 + 40);
    [v6 lookupBundleIDsForDeletableSystemAppsWithItemIDs:v15 withReplyHandler:v14];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = v11;
      *buf = 138543874;
      v23 = v11;
      v24 = 2048;
      v25 = [v12 count];
      v26 = 2114;
      v27 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[6];
    v7 = objc_opt_class();
    v8 = a1[4];
    v9 = v7;
    v10 = 138543874;
    v11 = v7;
    v12 = 2048;
    v13 = [v8 count];
    v14 = 2114;
    v15 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", &v10, 0x20u);
  }

  (*(a1[5] + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      *buf = 138543874;
      v22 = v14;
      v23 = 2048;
      v24 = [v15 count];
      v25 = 2114;
      v26 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }
  }

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_12;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v19 = v6;
  v20 = v9;
  v18 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)lookupItemIDsForDeletableSystemAppsWithBundleIDs:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_2;
    v18[3] = &unk_1E7CDBBD0;
    v21 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v18];
    v7 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_14;
    v14[3] = &unk_1E7CDBCE8;
    v17 = *(a1 + 48);
    v15 = v7;
    v16 = *(a1 + 40);
    [v6 lookupItemIDsForDeletableSystemAppsWithBundleIDs:v15 withReplyHandler:v14];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = v11;
      *buf = 138543874;
      v23 = v11;
      v24 = 2048;
      v25 = [v12 count];
      v26 = 2114;
      v27 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[6];
    v7 = objc_opt_class();
    v8 = a1[4];
    v9 = v7;
    v10 = 138543874;
    v11 = v7;
    v12 = 2048;
    v13 = [v8 count];
    v14 = 2114;
    v15 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu bundleID(s) error: %{public}@", &v10, 0x20u);
  }

  (*(a1[5] + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      *buf = 138543874;
      v22 = v14;
      v23 = 2048;
      v24 = [v15 count];
      v25 = 2114;
      v26 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu bundleID(s) error: %{public}@", buf, 0x20u);
    }
  }

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_15;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v19 = v6;
  v20 = v9;
  v18 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_2;
    v18[3] = &unk_1E7CDBBD0;
    v21 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v18];
    v7 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_16;
    v14[3] = &unk_1E7CDBCE8;
    v17 = *(a1 + 48);
    v15 = v7;
    v16 = *(a1 + 40);
    [v6 lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs:v15 withReplyHandler:v14];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = v11;
      *buf = 138543874;
      v23 = v11;
      v24 = 2048;
      v25 = [v12 count];
      v26 = 2114;
      v27 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[6];
    v7 = objc_opt_class();
    v8 = a1[4];
    v9 = v7;
    v10 = 138543874;
    v11 = v7;
    v12 = 2048;
    v13 = [v8 count];
    v14 = 2114;
    v15 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu watch itemID(s) error: %{public}@", &v10, 0x20u);
  }

  (*(a1[5] + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      *buf = 138543874;
      v22 = v14;
      v23 = 2048;
      v24 = [v15 count];
      v25 = 2114;
      v26 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu watch itemID(s) error: %{public}@", buf, 0x20u);
    }
  }

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_17;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v19 = v6;
  v20 = v9;
  v18 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_2;
    v18[3] = &unk_1E7CDBBD0;
    v21 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v18];
    v7 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_18;
    v14[3] = &unk_1E7CDBCE8;
    v17 = *(a1 + 48);
    v15 = v7;
    v16 = *(a1 + 40);
    [v6 lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:v15 withReplyHandler:v14];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = v11;
      *buf = 138543874;
      v23 = v11;
      v24 = 2048;
      v25 = [v12 count];
      v26 = 2114;
      v27 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[6];
    v7 = objc_opt_class();
    v8 = a1[4];
    v9 = v7;
    v10 = 138543874;
    v11 = v7;
    v12 = 2048;
    v13 = [v8 count];
    v14 = 2114;
    v15 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu watch bundleID(s) error: %{public}@", &v10, 0x20u);
  }

  (*(a1[5] + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      *buf = 138543874;
      v22 = v14;
      v23 = 2048;
      v24 = [v15 count];
      v25 = 2114;
      v26 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu watch bundleID(s) error: %{public}@", buf, 0x20u);
    }
  }

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_19;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v19 = v6;
  v20 = v9;
  v18 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);

  v12 = *MEMORY[0x1E69E9840];
}

+ (unsigned)openableStatusForExecutableAtPath:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v4 = +[ASDServiceBroker defaultBroker];
  v5 = (v17 + 5);
  obj = v17[5];
  v6 = [v4 getLibraryServiceWithError:&obj];
  objc_storeStrong(v5, obj);

  if (v6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__ASDAppLibrary_openableStatusForExecutableAtPath___block_invoke;
    v14[3] = &unk_1E7CDBB80;
    v14[4] = &v16;
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__ASDAppLibrary_openableStatusForExecutableAtPath___block_invoke_2;
    v13[3] = &unk_1E7CDBD10;
    v13[4] = &v22;
    v13[5] = &v16;
    [v7 openableStatusForExecutableAtPath:v3 withReplyHandler:v13];
  }

  LODWORD(v8) = *(v23 + 24);
  if (v8 == 255)
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 lastPathComponent];
      v12 = v17[5];
      *buf = 138543618;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[Library] Status for %{public}@ unknown: %{public}@", buf, 0x16u);
    }

    LOBYTE(v8) = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (void)uninstallApp:(id)a3 requestUserConfirmation:(BOOL)a4 withResultHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[ASDServiceBroker defaultBroker];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke;
  v13[3] = &unk_1E7CDBD38;
  v15 = v9;
  v16 = a1;
  v14 = v8;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  [v10 getLibraryServiceWithCompletionHandler:v13];
}

void __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_2;
    v19[3] = &unk_1E7CDBBD0;
    v22 = *(a1 + 48);
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v19];
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_21;
    v15[3] = &unk_1E7CDBBD0;
    v18 = *(a1 + 48);
    v16 = v7;
    v17 = *(a1 + 40);
    [v6 uninstallApp:v16 requestUserConfirmation:v8 withReplyHandler:v15];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      *buf = 138543874;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v5;
      v14 = v12;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request uninstall for %{public}@ error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = a1[6];
    v9 = objc_opt_class();
    v10 = a1[4];
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v3;
    v11 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request uninstall for %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(a1[5] + 16))(a1[5], v3, v5, v6);
  v7 = *MEMORY[0x1E69E9840];
}

void __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_21(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v3;
      v12 = v10;
      _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request uninstall for %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  v5 = dispatch_get_global_queue(21, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_22;
  v13[3] = &unk_1E7CDB890;
  v6 = *(a1 + 40);
  v14 = v3;
  v15 = v6;
  v7 = v3;
  dispatch_async(v5, v13);

  v8 = *MEMORY[0x1E69E9840];
}

@end