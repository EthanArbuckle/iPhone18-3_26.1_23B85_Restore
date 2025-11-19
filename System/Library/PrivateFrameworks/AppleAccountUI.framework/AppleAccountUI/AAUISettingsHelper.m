@interface AAUISettingsHelper
+ (void)repairPrimaryAppleAccountInViewController:(id)a3 completion:(id)a4;
+ (void)showAccountRecoveryFromViewController:(id)a3 accountManager:(id)a4;
+ (void)showAccountRecoveryFromViewController:(id)a3 accountManager:(id)a4 highlightRowIdentifier:(id)a5;
@end

@implementation AAUISettingsHelper

+ (void)showAccountRecoveryFromViewController:(id)a3 accountManager:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "%@: Starting Account recovery flow.", buf, 0xCu);
  }

  objc_initWeak(buf, v6);
  objc_initWeak(&location, v7);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__AAUISettingsHelper_showAccountRecoveryFromViewController_accountManager___block_invoke;
  v12[3] = &unk_1E820DBA8;
  objc_copyWeak(&v14, buf);
  objc_copyWeak(v15, &location);
  v11 = v7;
  v13 = v11;
  v15[1] = a1;
  [a1 repairPrimaryAppleAccountInViewController:v6 completion:v12];

  objc_destroyWeak(v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __75__AAUISettingsHelper_showAccountRecoveryFromViewController_accountManager___block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_copyWeak(&to, (a1 + 40));
  objc_copyWeak(&v20, (a1 + 48));
  v6 = objc_loadWeakRetained(&to);
  if (v6)
  {
    v7 = objc_loadWeakRetained(&v20);
    if (!v7)
    {
      a2 = 0;
    }

    if (a2)
    {
      v8 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
      dispatch_assert_queue_V2(v8);

      v10 = _AAUILogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke_cold_2(v10);
      }

      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v11 UUIDString];

      v13 = [AAUIRecoveryContactsViewFactory createViewModelWithAccountManager:*(a1 + 32) telemetryFlowID:v12];
      v14 = [AAUIRecoveryContactsViewFactory createWithViewModel:v13];
      v15 = objc_loadWeakRetained(&to);
      [v15 aaui_showViewController:v14 sender:*(a1 + 56)];
    }
  }

  v16 = _AAUILogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_loadWeakRetained(&to);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138412546;
    v23 = v19;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "%@: Account recovery flow completed with error: %@", buf, 0x16u);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&to);
}

+ (void)showAccountRecoveryFromViewController:(id)a3 accountManager:(id)a4 highlightRowIdentifier:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412290;
    v21 = v13;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "%@: Starting Account recovery flow.", buf, 0xCu);
  }

  objc_initWeak(buf, v8);
  objc_initWeak(&location, v9);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__AAUISettingsHelper_showAccountRecoveryFromViewController_accountManager_highlightRowIdentifier___block_invoke;
  v15[3] = &unk_1E820DBA8;
  objc_copyWeak(&v17, buf);
  objc_copyWeak(v18, &location);
  v14 = v9;
  v16 = v14;
  v18[1] = a1;
  [a1 repairPrimaryAppleAccountInViewController:v8 completion:v15];

  objc_destroyWeak(v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __98__AAUISettingsHelper_showAccountRecoveryFromViewController_accountManager_highlightRowIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_copyWeak(&to, (a1 + 40));
  objc_copyWeak(&v20, (a1 + 48));
  v6 = objc_loadWeakRetained(&to);
  if (v6)
  {
    v7 = objc_loadWeakRetained(&v20);
    if (!v7)
    {
      a2 = 0;
    }

    if (a2)
    {
      v8 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
      dispatch_assert_queue_V2(v8);

      v10 = _AAUILogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke_cold_2(v10);
      }

      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v11 UUIDString];

      v13 = [AAUIRecoveryContactsViewFactory createViewModelWithAccountManager:*(a1 + 32) telemetryFlowID:v12];
      v14 = [AAUIRecoveryContactsViewFactory createWithViewModel:v13];
      v15 = objc_loadWeakRetained(&to);
      [v15 aaui_showViewController:v14 sender:*(a1 + 56)];
    }
  }

  v16 = _AAUILogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_loadWeakRetained(&to);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138412546;
    v23 = v19;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "%@: Account recovery flow completed with error: %@", buf, 0x16u);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&to);
}

+ (void)repairPrimaryAppleAccountInViewController:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [[AAUID2DEncryptionFlowContext alloc] initWithType:2];
  v7 = [[AAUIManateeStateValidator alloc] initWithFlowContext:v8 withPresentingViewController:v6];

  [(AAUIManateeStateValidator *)v7 repairIfPrimaryAppleAccountIsCDP:v5];
}

@end