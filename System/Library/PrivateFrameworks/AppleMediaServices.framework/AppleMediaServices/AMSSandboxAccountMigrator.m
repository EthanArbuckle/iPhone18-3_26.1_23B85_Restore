@interface AMSSandboxAccountMigrator
+ (void)migrateSandboxAccountsWithOptions:(id)a3;
@end

@implementation AMSSandboxAccountMigrator

+ (void)migrateSandboxAccountsWithOptions:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
  if (!CFPreferencesGetAppBooleanValue(@"AMSMigratedSandboxAccounts", @"com.apple.AppleMediaServices", 0))
  {
    v3 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [v3 ams_iTunesAccounts];
    v4 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v25;
      v8 = 0x1E73B0000uLL;
      *&v5 = 138543874;
      v21 = v5;
      v9 = MEMORY[0x1E695E118];
      v22 = v3;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          v12 = [*(v8 + 3552) sharedAccountsDaemonConfig];
          if (!v12)
          {
            v12 = [*(v8 + 3552) sharedConfig];
          }

          v13 = [v12 OSLogObject];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v6;
            v15 = v8;
            v16 = v7;
            v17 = objc_opt_class();
            v18 = AMSLogKey();
            v19 = AMSHashIfNeeded(v11);
            *buf = v21;
            v29 = v17;
            v7 = v16;
            v8 = v15;
            v6 = v14;
            v9 = MEMORY[0x1E695E118];
            v30 = 2114;
            v31 = v18;
            v32 = 2114;
            v33 = v19;
            _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Forcing an account sync. account = %{public}@", buf, 0x20u);

            v3 = v22;
          }

          [v11 setObject:v9 forKeyedSubscript:@"sync"];
          [v11 setObject:0 forKeyedSubscript:@"sync"];
          v20 = [v3 ams_saveAccount:v11];
          ++v10;
        }

        while (v6 != v10);
        v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v6);
    }

    CFPreferencesSetAppValue(@"AMSMigratedSandboxAccounts", *MEMORY[0x1E695E4D0], @"com.apple.AppleMediaServices");
    CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
  }
}

@end