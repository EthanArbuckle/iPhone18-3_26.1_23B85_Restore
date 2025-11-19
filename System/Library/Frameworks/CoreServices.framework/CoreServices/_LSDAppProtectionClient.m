@interface _LSDAppProtectionClient
+ (id)hiddenApplicationsForLSDUseOnly;
+ (id)lockedApplicationsForLSDUseOnly;
+ (void)cleanupDeletedApplication:(id)a3;
- (_LSDAppProtectionClient)initWithXPCConnection:(id)a3;
- (void)getHiddenApplicationsWithCompletion:(id)a3;
- (void)getLockedApplicationsWithCompletion:(id)a3;
- (void)sendPluginNotificationsFor:(id)a3 notification:(id)a4;
- (void)setHiddenApplications:(id)a3 completion:(id)a4;
- (void)setLockedApplications:(id)a3 completion:(id)a4;
@end

@implementation _LSDAppProtectionClient

- (_LSDAppProtectionClient)initWithXPCConnection:(id)a3
{
  v4 = a3;
  v5 = getAppProtectionServiceQueue();
  [v4 _setQueue:v5];

  v8.receiver = self;
  v8.super_class = _LSDAppProtectionClient;
  v6 = [(_LSDClient *)&v8 initWithXPCConnection:v4];

  return v6;
}

- (void)setHiddenApplications:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  _LSAssertRunningInServer("[_LSDAppProtectionClient setHiddenApplications:completion:]");
  v8 = MEMORY[0x1E695DF90];
  v9 = +[_LSDAppProtectionAccessManager sharedInstance];
  v24 = 0;
  v10 = [v9 readFromDBWithError:&v24];
  v11 = v24;
  v12 = [v8 dictionaryWithDictionary:v10];

  if (v11)
  {
    v13 = _LSAppProtectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LSDAppProtectionClient setHiddenApplications:completion:];
    }

    v7[2](v7, v11);
  }

  else
  {
    v14 = [v12 objectForKey:@"hiddenBundleIDs"];
    v22 = 0;
    v23 = 0;
    computeAddedAndRemovedBundleIDs(&v23, &v22, v14, v6);
    v15 = v23;
    v16 = v22;
    v17 = _LSAppProtectionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      -[_LSDAppProtectionClient setHiddenApplications:completion:].cold.2(v25, [v15 count], objc_msgSend(v16, "count"));
    }

    [v12 setObject:v6 forKey:@"hiddenBundleIDs"];
    v18 = +[_LSDAppProtectionAccessManager sharedInstance];
    v11 = [v18 writeToDB:v12];

    if (v11)
    {
      v19 = _LSAppProtectionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_LSDAppProtectionClient setHiddenApplications:completion:];
      }

      v7[2](v7, v11);
    }

    else
    {
      v21 = 0;
      notifyLSObservers(v15, v16, 1, &v21);
      v11 = v21;
      [(_LSDAppProtectionClient *)self sendPluginNotificationsFor:v15 notification:@"com.apple.LaunchServices.pluginsunregistered"];
      [(_LSDAppProtectionClient *)self sendPluginNotificationsFor:v16 notification:@"com.apple.LaunchServices.pluginsregistered"];
      v7[2](v7, v11);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setLockedApplications:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  _LSAssertRunningInServer("[_LSDAppProtectionClient setLockedApplications:completion:]");
  v7 = MEMORY[0x1E695DF90];
  v8 = +[_LSDAppProtectionAccessManager sharedInstance];
  v23 = 0;
  v9 = [v8 readFromDBWithError:&v23];
  v10 = v23;
  v11 = [v7 dictionaryWithDictionary:v9];

  if (v10)
  {
    v12 = _LSAppProtectionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_LSDAppProtectionClient setHiddenApplications:completion:];
    }

    v6[2](v6, v10);
  }

  else
  {
    v13 = [v11 objectForKey:@"lockedBundleIDs"];
    v21 = 0;
    v22 = 0;
    computeAddedAndRemovedBundleIDs(&v22, &v21, v13, v5);
    v14 = v22;
    v15 = v21;
    v16 = _LSAppProtectionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      -[_LSDAppProtectionClient setLockedApplications:completion:].cold.2(v24, [v14 count], objc_msgSend(v15, "count"));
    }

    [v11 setObject:v5 forKey:@"lockedBundleIDs"];
    v17 = +[_LSDAppProtectionAccessManager sharedInstance];
    v10 = [v17 writeToDB:v11];

    if (v10)
    {
      v18 = _LSAppProtectionLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_LSDAppProtectionClient setHiddenApplications:completion:];
      }

      v6[2](v6, v10);
    }

    else
    {
      v20 = 0;
      notifyLSObservers(v14, v15, 0, &v20);
      v10 = v20;
      v6[2](v6, v10);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (void)cleanupDeletedApplication:(id)a3
{
  v3 = a3;
  _LSAssertRunningInServer("+[_LSDAppProtectionClient cleanupDeletedApplication:]");
  v4 = MEMORY[0x1E695DF90];
  v5 = +[_LSDAppProtectionAccessManager sharedInstance];
  v18 = 0;
  v6 = [v5 readFromDBWithError:&v18];
  v7 = v18;
  v8 = [v4 dictionaryWithDictionary:v6];

  if (!v7)
  {
    v9 = [v8 objectForKey:@"lockedBundleIDs"];
    v10 = [v9 ls_caseInsensitiveContainsString:v3];
    if (v10)
    {
      v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF !=[c] %@", v3];
      v12 = [v9 filteredArrayUsingPredicate:v11];
      [v8 setObject:v12 forKey:@"lockedBundleIDs"];
    }

    v13 = [v8 objectForKey:@"hiddenBundleIDs"];
    if ([v13 ls_caseInsensitiveContainsString:v3])
    {
      v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF !=[c] %@", v3];
      v15 = [v13 filteredArrayUsingPredicate:v14];
      [v8 setObject:v15 forKey:@"hiddenBundleIDs"];
    }

    else if (!v10)
    {
      v7 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v16 = +[_LSDAppProtectionAccessManager sharedInstance];
    v7 = [v16 writeToDB:v8];

    if (v7)
    {
      v17 = _LSAppProtectionLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[_LSDAppProtectionClient cleanupDeletedApplication:];
      }
    }

    goto LABEL_14;
  }

  v9 = _LSAppProtectionLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[_LSDAppProtectionClient cleanupDeletedApplication:];
  }

LABEL_15:
}

+ (id)hiddenApplicationsForLSDUseOnly
{
  _LSAssertRunningInServer("+[_LSDAppProtectionClient hiddenApplicationsForLSDUseOnly]");
  v2 = +[_LSDAppProtectionAccessManager sharedInstance];
  v3 = [v2 readFromDBWithError:0];
  v4 = [v3 objectForKey:@"hiddenBundleIDs"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

+ (id)lockedApplicationsForLSDUseOnly
{
  _LSAssertRunningInServer("+[_LSDAppProtectionClient lockedApplicationsForLSDUseOnly]");
  v2 = +[_LSDAppProtectionAccessManager sharedInstance];
  v3 = [v2 readFromDBWithError:0];
  v4 = [v3 objectForKey:@"lockedBundleIDs"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)getHiddenApplicationsWithCompletion:(id)a3
{
  v4 = a3;
  _LSAssertRunningInServer("[_LSDAppProtectionClient getHiddenApplicationsWithCompletion:]");
  v3 = +[_LSDAppProtectionClient hiddenApplicationsForLSDUseOnly];
  v4[2](v4, v3);
}

- (void)getLockedApplicationsWithCompletion:(id)a3
{
  v4 = a3;
  _LSAssertRunningInServer("[_LSDAppProtectionClient getLockedApplicationsWithCompletion:]");
  v3 = +[_LSDAppProtectionClient lockedApplicationsForLSDUseOnly];
  v4[2](v4, v3);
}

- (void)sendPluginNotificationsFor:(id)a3 notification:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = +[LSDBExecutionContext sharedServerInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67___LSDAppProtectionClient_sendPluginNotificationsFor_notification___block_invoke;
    v10[3] = &unk_1E6A1B910;
    v11 = v5;
    v9 = v7;
    v12 = v9;
    v13 = v6;
    [(LSDBExecutionContext *)v8 performAsyncRead:v10];
  }
}

- (void)setHiddenApplications:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Error opening appProtectionStoreFile error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setHiddenApplications:completion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Error writing to appProtectionStoreFile error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)cleanupDeletedApplication:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v0, v1, "Error opening appProtectionStoreFile error: %{public}@ while cleaning up deleted app %{private}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)cleanupDeletedApplication:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v0, v1, "Error writing to appProtectionStoreFile error: %{public}@ while cleaning up deleted app %{private}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end