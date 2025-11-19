@interface ACUIAccountOperationsHelper
- (ACUIAccountOperationsDelegate)delegate;
- (ACUIAccountOperationsHelper)initWithAccountStore:(id)a3;
- (id)_desiredDataclassActionsFromPossibleActions:(id)a3 forAccount:(id)a4 withError:(id *)a5;
- (id)dataclassActionsForAccountSave:(id)a3 forDataclass:(id)a4 error:(id *)a5;
- (void)removeAccount:(id)a3;
- (void)saveAccount:(id)a3;
- (void)saveAccount:(id)a3 requireVerification:(BOOL)a4;
- (void)saveAccount:(id)a3 requireVerification:(BOOL)a4 completion:(id)a5;
- (void)saveAccount:(id)a3 withDataclassActions:(id)a4;
- (void)saveAccount:(id)a3 withDataclassActions:(id)a4 requireVerification:(BOOL)a5;
- (void)saveAccount:(id)a3 withDataclassActions:(id)a4 requireVerification:(BOOL)a5 completion:(id)a6;
@end

@implementation ACUIAccountOperationsHelper

- (ACUIAccountOperationsHelper)initWithAccountStore:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = ACUIAccountOperationsHelper;
  v11 = [(ACUIAccountOperationsHelper *)&v9 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_accountStore, location[0]);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.acountsui.operations", v8);
    accountOperationsQueue = v11->_accountOperationsQueue;
    v11->_accountOperationsQueue = v4;
    MEMORY[0x277D82BD8](accountOperationsQueue);
    MEMORY[0x277D82BD8](v8);
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (id)dataclassActionsForAccountSave:(id)a3 forDataclass:(id)a4 error:(id *)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = a5;
  v19 = 0;
  accountStore = v23->_accountStore;
  v17 = 0;
  v13 = [(ACAccountStore *)accountStore dataclassActionsForAccountSave:location[0] error:&v17];
  objc_storeStrong(&v19, v17);
  v18 = v13;
  v16 = [v13 objectForKeyedSubscript:v21];
  v14 = [(ACUIAccountOperationsHelper *)v23 delegate];
  v15 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v14);
  if (v15)
  {
    v10 = [(ACUIAccountOperationsHelper *)v23 delegate];
    [(ACUIAccountOperationsDelegate *)v10 operationsHelper:v23 didLoadSaveActions:v16 forDataclass:v21 withAccount:location[0] error:v19];
    MEMORY[0x277D82BD8](v10);
  }

  if (v20)
  {
    v9 = v19;
    v6 = v19;
    *v20 = v9;
  }

  v8 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)saveAccount:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(ACUIAccountOperationsHelper *)v4 saveAccount:location[0] requireVerification:1];
  objc_storeStrong(location, 0);
}

- (void)saveAccount:(id)a3 requireVerification:(BOOL)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(ACUIAccountOperationsHelper *)v6 saveAccount:location[0] requireVerification:a4 completion:0];
  objc_storeStrong(location, 0);
}

- (void)saveAccount:(id)a3 requireVerification:(BOOL)a4 completion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = a4;
  v17 = 0;
  objc_storeStrong(&v17, a5);
  queue = v20->_accountOperationsQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __74__ACUIAccountOperationsHelper_saveAccount_requireVerification_completion___block_invoke;
  v12 = &unk_278BFA610;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](v20);
  v16 = v18;
  v15 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __74__ACUIAccountOperationsHelper_saveAccount_requireVerification_completion___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = _ACUILogSystem();
  v43 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_64(v47, "[ACUIAccountOperationsHelper saveAccount:requireVerification:completion:]_block_invoke", 64, *(a1 + 32));
    _os_log_debug_impl(&dword_23DC86000, location[0], v43, "%s (%d) Starting account save for %@...", v47, 0x1Cu);
  }

  objc_storeStrong(location, 0);
  [*(a1 + 40) setIsSavingAccount:1];
  v42 = 0;
  v1 = *(*(a1 + 40) + 8);
  v2 = *(a1 + 32);
  v40 = 0;
  v16 = [v1 dataclassActionsForAccountSave:v2 error:&v40];
  objc_storeStrong(&v42, v40);
  v41 = v16;
  v39 = 0;
  if (!v42)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v38 = 0;
    v15 = [v3 _desiredDataclassActionsFromPossibleActions:v41 forAccount:v4 withError:&v38];
    objc_storeStrong(&v42, v38);
    v5 = v39;
    v39 = v15;
    MEMORY[0x277D82BD8](v5);
  }

  v14 = [*(a1 + 40) delegate];
  [v14 operationsHelper:*(a1 + 40) willSaveAccount:*(a1 + 32)];
  MEMORY[0x277D82BD8](v14);
  if (v39)
  {
    v37 = _ACUILogSystem();
    v36 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_4_8_32_4_0_8_66_8_64(v46, "[ACUIAccountOperationsHelper saveAccount:requireVerification:completion:]_block_invoke", 78, v39, *(a1 + 32));
      _os_log_debug_impl(&dword_23DC86000, v37, v36, "%s (%d) Saving dataclass actions %{public}@ for account %@.", v46, 0x26u);
    }

    objc_storeStrong(&v37, 0);
    v13 = *(*(a1 + 40) + 8);
    v10 = *(a1 + 32);
    v11 = v39;
    v12 = *(a1 + 56);
    v27 = MEMORY[0x277D85DD0];
    v28 = -1073741824;
    v29 = 0;
    v30 = __74__ACUIAccountOperationsHelper_saveAccount_requireVerification_completion___block_invoke_3;
    v31 = &unk_278BFA5C0;
    v32 = MEMORY[0x277D82BE0](*(a1 + 40));
    v33 = MEMORY[0x277D82BE0](*(a1 + 32));
    v35 = MEMORY[0x277D82BE0](*(a1 + 48));
    v34 = MEMORY[0x277D82BE0](v42);
    [v13 saveAccount:v10 withDataclassActions:v11 doVerify:v12 & 1 completion:&v27];
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    [*(a1 + 40) setIsSavingAccount:0];
    oslog = _ACUILogSystem();
    v25 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v45, "[ACUIAccountOperationsHelper saveAccount:requireVerification:completion:]_block_invoke_3", 90, *(a1 + 32));
      _os_log_debug_impl(&dword_23DC86000, oslog, v25, "%s (%d) Account save cancelled for %@", v45, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    v9 = [*(a1 + 40) delegate];
    [v9 operationsHelper:*(a1 + 40) didSaveAccount:*(a1 + 32) withSuccess:0 error:v42];
    MEMORY[0x277D82BD8](v9);
    if (*(a1 + 48))
    {
      v7 = MEMORY[0x277D85CD0];
      v6 = MEMORY[0x277D85CD0];
      queue = v7;
      v18 = MEMORY[0x277D85DD0];
      v19 = -1073741824;
      v20 = 0;
      v21 = __74__ACUIAccountOperationsHelper_saveAccount_requireVerification_completion___block_invoke_7;
      v22 = &unk_278BFA5E8;
      v24 = MEMORY[0x277D82BE0](*(a1 + 48));
      v23 = MEMORY[0x277D82BE0](v42);
      dispatch_async(queue, &v18);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
    }
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  *MEMORY[0x277D85DE8];
}

void __74__ACUIAccountOperationsHelper_saveAccount_requireVerification_completion___block_invoke_3(uint64_t a1, char a2, id obj)
{
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  [*(a1 + 32) setIsSavingAccount:0];
  v6 = [*(a1 + 32) delegate];
  [v6 operationsHelper:*(a1 + 32) didSaveAccount:*(a1 + 40) withSuccess:v18 & 1 error:location];
  MEMORY[0x277D82BD8](v6);
  if (*(a1 + 56))
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __74__ACUIAccountOperationsHelper_saveAccount_requireVerification_completion___block_invoke_2;
    v12 = &unk_278BFA598;
    v14 = MEMORY[0x277D82BE0](*(a1 + 56));
    v15 = v18 & 1;
    v13 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)saveAccount:(id)a3 withDataclassActions:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(ACUIAccountOperationsHelper *)v7 saveAccount:location[0] withDataclassActions:v5 requireVerification:1];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)saveAccount:(id)a3 withDataclassActions:(id)a4 requireVerification:(BOOL)a5
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [(ACUIAccountOperationsHelper *)v9 saveAccount:location[0] withDataclassActions:v7 requireVerification:a5 completion:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)saveAccount:(id)a3 withDataclassActions:(id)a4 requireVerification:(BOOL)a5 completion:(id)a6
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = a5;
  v20 = 0;
  objc_storeStrong(&v20, a6);
  queue = v24->_accountOperationsQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __95__ACUIAccountOperationsHelper_saveAccount_withDataclassActions_requireVerification_completion___block_invoke;
  v14 = &unk_278BFA660;
  v15 = MEMORY[0x277D82BE0](v24);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](v22);
  v19 = v21;
  v18 = MEMORY[0x277D82BE0](v20);
  dispatch_async(queue, &v10);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void __95__ACUIAccountOperationsHelper_saveAccount_withDataclassActions_requireVerification_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  [*(a1 + 32) setIsSavingAccount:1];
  v6 = [*(a1 + 32) delegate];
  [v6 operationsHelper:*(a1 + 32) willSaveAccount:*(a1 + 40)];
  MEMORY[0x277D82BD8](v6);
  location[0] = _ACUILogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_4_8_32_4_0_8_66_8_64(v17, "[ACUIAccountOperationsHelper saveAccount:withDataclassActions:requireVerification:completion:]_block_invoke", 115, *(a1 + 48), *(a1 + 40));
    _os_log_debug_impl(&dword_23DC86000, location[0], v15, "%s (%d) Saving dataclass actions %{public}@ for account %@", v17, 0x26u);
  }

  objc_storeStrong(location, 0);
  v4 = *(*(a1 + 32) + 8);
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __95__ACUIAccountOperationsHelper_saveAccount_withDataclassActions_requireVerification_completion___block_invoke_8;
  v11 = &unk_278BFA638;
  v12 = MEMORY[0x277D82BE0](*(a1 + 32));
  v13 = MEMORY[0x277D82BE0](*(a1 + 40));
  v14 = MEMORY[0x277D82BE0](*(a1 + 56));
  [v4 saveAccount:v1 withDataclassActions:v2 doVerify:v3 & 1 completion:&v7];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  *MEMORY[0x277D85DE8];
}

void __95__ACUIAccountOperationsHelper_saveAccount_withDataclassActions_requireVerification_completion___block_invoke_8(uint64_t a1, char a2, id obj)
{
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  [*(a1 + 32) setIsSavingAccount:0];
  v6 = [*(a1 + 32) delegate];
  [v6 operationsHelper:*(a1 + 32) didSaveAccount:*(a1 + 40) withSuccess:v18 & 1 error:location];
  MEMORY[0x277D82BD8](v6);
  if (*(a1 + 48))
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __95__ACUIAccountOperationsHelper_saveAccount_withDataclassActions_requireVerification_completion___block_invoke_2;
    v12 = &unk_278BFA598;
    v14 = MEMORY[0x277D82BE0](*(a1 + 48));
    v15 = v18 & 1;
    v13 = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)removeAccount:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_accountOperationsQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __45__ACUIAccountOperationsHelper_removeAccount___block_invoke;
  v8 = &unk_278BFA6B0;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__ACUIAccountOperationsHelper_removeAccount___block_invoke(id *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v54[2] = a1;
  v54[1] = a1;
  [a1[4] setIsRemovingAccount:1];
  v24 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  v22 = v24;
  dispatch_sync(v22, &__block_literal_global_2);
  MEMORY[0x277D82BD8](v22);
  v54[0] = [*(a1[4] + 1) dataclassActionsForAccountDeletion:a1[5]];
  v2 = v24;
  v25 = v24;
  dispatch_sync(v25, &__block_literal_global_10);
  MEMORY[0x277D82BD8](v25);
  v51 = 0;
  IsSyncable = 0;
  if (ACDAccountSyncEnabled())
  {
    v52 = ACDAccountSyncDevices();
    v51 = 1;
    IsSyncable = 0;
    if ([v52 count])
    {
      v3 = a1[5];
      IsSyncable = ACDAccountSyncAccountIsSyncable();
    }
  }

  if (v51)
  {
    MEMORY[0x277D82BD8](v52);
  }

  v53 = IsSyncable & 1;
  v50 = 0;
  if (IsSyncable)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionary];
  }

  else
  {
    v4 = [a1[4] _desiredDataclassActionsFromPossibleActions:v54[0] forAccount:a1[5] withError:0];
  }

  v5 = v50;
  v50 = v4;
  MEMORY[0x277D82BD8](v5);
  if (v50)
  {
    v49 = 1;
    v48 = 0;
    v20 = [a1[4] delegate];
    v46 = 0;
    v21 = 0;
    if (objc_opt_respondsToSelector())
    {
      v19 = 1;
      if (v53)
      {
        v18 = 1;
        if ([a1[5] isActive])
        {
          v47 = [a1[5] enabledDataclasses];
          v46 = 1;
          v18 = [v47 count] == 0;
        }

        v19 = v18;
      }

      v21 = v19;
    }

    if (v46)
    {
      MEMORY[0x277D82BD8](v47);
    }

    MEMORY[0x277D82BD8](v20);
    if (v21)
    {
      v17 = [a1[4] delegate];
      v49 = [v17 operationsHelper:a1[4] shouldRemoveAccount:a1[5]];
      MEMORY[0x277D82BD8](v17);
      goto LABEL_28;
    }

    v15 = [a1[4] delegate];
    v16 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v15);
    if (v16)
    {
      v13 = [a1[4] delegate];
      v14 = [v13 operationsHelper:a1[4] shouldRemoveOrDisableAccount:a1[5]];
      MEMORY[0x277D82BD8](v13);
      v45 = v14;
      location = _ACUILogSystem();
      v43 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
        __os_log_helper_16_2_3_8_32_4_0_8_64(v56, "[ACUIAccountOperationsHelper removeAccount:]_block_invoke", 167, v12);
        _os_log_debug_impl(&dword_23DC86000, location, v43, "%s (%d) The button index came back with response - %@", v56, 0x1Cu);
        MEMORY[0x277D82BD8](v12);
      }

      objc_storeStrong(&location, 0);
      if (v45 == 1)
      {
        v49 = 0;
        v48 = 1;
      }

      else if (v45 == 2)
      {
        v49 = 1;
        goto LABEL_28;
      }

      v49 = 0;
    }

LABEL_28:
    if (v49)
    {
      v11 = [a1[4] delegate];
      [v11 operationsHelper:a1[4] willRemoveAccount:a1[5]];
      MEMORY[0x277D82BD8](v11);
      v35 = MEMORY[0x277D85DD0];
      v36 = -1073741824;
      v37 = 0;
      v38 = __45__ACUIAccountOperationsHelper_removeAccount___block_invoke_16;
      v39 = &unk_278BFA688;
      v40 = MEMORY[0x277D82BE0](a1[4]);
      v41 = MEMORY[0x277D82BE0](a1[5]);
      v42 = MEMORY[0x23EEFC830](&v35);
      [*(a1[4] + 1) removeAccount:a1[5] withDataclassActions:v50 completion:v42];
      objc_storeStrong(&v42, 0);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v40, 0);
    }

    else if (v48)
    {
      [a1[4] setIsRemovingAccount:0];
      [a1[4] setIsSavingAccount:1];
      v7 = [MEMORY[0x277CBEB58] set];
      [a1[5] setEnabledDataclasses:?];
      MEMORY[0x277D82BD8](v7);
      [a1[5] setActive:0];
      v8 = [a1[4] delegate];
      [v8 operationsHelper:a1[4] willSaveAccount:a1[5]];
      MEMORY[0x277D82BD8](v8);
      v10 = *(a1[4] + 1);
      v9 = a1[5];
      v28 = MEMORY[0x277D85DD0];
      v29 = -1073741824;
      v30 = 0;
      v31 = __45__ACUIAccountOperationsHelper_removeAccount___block_invoke_2_18;
      v32 = &unk_278BFA688;
      v33 = MEMORY[0x277D82BE0](a1[4]);
      v34 = MEMORY[0x277D82BE0](a1[5]);
      [v10 saveVerifiedAccount:v9 withCompletionHandler:&v28];
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v33, 0);
    }

    else
    {
      oslog = _ACUILogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [a1[5] identifier];
        __os_log_helper_16_2_3_8_32_4_0_8_64(v55, "[ACUIAccountOperationsHelper removeAccount:]_block_invoke_3", 202, v6);
        _os_log_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUIAccountOperationsDelegate canceled the removal of account %@.", v55, 0x1Cu);
        MEMORY[0x277D82BD8](v6);
      }

      objc_storeStrong(&oslog, 0);
      [a1[4] setIsRemovingAccount:0];
    }
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(v54, 0);
  *MEMORY[0x277D85DE8];
}

void __45__ACUIAccountOperationsHelper_removeAccount___block_invoke_16(uint64_t a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) setIsRemovingAccount:0];
  v5 = [*(a1 + 32) delegate];
  [v5 operationsHelper:*(a1 + 32) didRemoveAccount:*(a1 + 40) withSuccess:v7 & 1 error:location];
  MEMORY[0x277D82BD8](v5);
  if (v7)
  {
    v3 = *(a1 + 40);
    ACDAccountSyncMarkAccountDeleted();
  }

  objc_storeStrong(&location, 0);
}

void __45__ACUIAccountOperationsHelper_removeAccount___block_invoke_2_18(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) setIsSavingAccount:0];
  v4 = [*(a1 + 32) delegate];
  [v4 operationsHelper:*(a1 + 32) didSaveAccount:*(a1 + 40) withSuccess:v6 & 1 error:location];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&location, 0);
}

- (id)_desiredDataclassActionsFromPossibleActions:(id)a3 forAccount:(id)a4 withError:(id *)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v61 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v59 = 0;
  objc_storeStrong(&v59, a4);
  v58 = a5;
  v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  v34 = [location[0] allKeys];
  v35 = [v34 countByEnumeratingWithState:__b objects:v67 count:16];
  if (v35)
  {
    v29 = *__b[2];
    v30 = 0;
    v31 = v35;
    while (1)
    {
      v28 = v30;
      if (*__b[2] != v29)
      {
        objc_enumerationMutation(v34);
      }

      v55 = *(__b[1] + 8 * v30);
      v53 = [location[0] objectForKeyedSubscript:v55];
      if ([v53 count] == 1)
      {
        v26 = v57;
        v27 = [v53 lastObject];
        [v26 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v27);
      }

      else
      {
        v52 = [MEMORY[0x277CBEB98] setWithArray:v53];
        v25 = v56;
        v45 = MEMORY[0x277D85DD0];
        v46 = -1073741824;
        v47 = 0;
        v48 = __96__ACUIAccountOperationsHelper__desiredDataclassActionsFromPossibleActions_forAccount_withError___block_invoke;
        v49 = &unk_278BFA6D8;
        v50 = MEMORY[0x277D82BE0](v52);
        v51 = [v25 indexesOfObjectsPassingTest:&v45];
        if ([v51 count])
        {
          v44 = [v56 objectAtIndexedSubscript:{objc_msgSend(v51, "lastIndex")}];
          [v44 addAffectedDataclass:v55];
          objc_storeStrong(&v44, 0);
        }

        else
        {
          v5 = [ACUIDataclassActionPicker alloc];
          v43 = [(ACUIDataclassActionPicker *)v5 initWithActions:v53 affectingAccount:v59];
          [(ACUIDataclassActionPicker *)v43 addAffectedDataclass:v55];
          [v56 addObject:v43];
          objc_storeStrong(&v43, 0);
        }

        objc_storeStrong(&v51, 0);
        objc_storeStrong(&v50, 0);
        objc_storeStrong(&v52, 0);
      }

      objc_storeStrong(&v53, 0);
      ++v30;
      if (v28 + 1 >= v31)
      {
        v30 = 0;
        v31 = [v34 countByEnumeratingWithState:__b objects:v67 count:16];
        if (!v31)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v34);
  [v56 sortUsingComparator:&__block_literal_global_27];
  v42 = 0;
  memset(v40, 0, sizeof(v40));
  v23 = MEMORY[0x277D82BE0](v56);
  v24 = [v23 countByEnumeratingWithState:v40 objects:v66 count:16];
  if (v24)
  {
    v20 = *v40[2];
    v21 = 0;
    v22 = v24;
    while (1)
    {
      v19 = v21;
      if (*v40[2] != v20)
      {
        objc_enumerationMutation(v23);
      }

      v41 = *(v40[1] + 8 * v21);
      v18 = [(ACUIAccountOperationsHelper *)v61 delegate];
      v39 = [(ACUIAccountOperationsDelegate *)v18 operationsHelper:v61 desiredDataclassActionFromPicker:v41];
      MEMORY[0x277D82BD8](v18);
      if ([v39 type])
      {
        memset(v36, 0, sizeof(v36));
        v16 = [v41 affectedDataclasses];
        v17 = [v16 countByEnumeratingWithState:v36 objects:v65 count:16];
        if (v17)
        {
          v13 = *v36[2];
          v14 = 0;
          v15 = v17;
          while (1)
          {
            v12 = v14;
            if (*v36[2] != v13)
            {
              objc_enumerationMutation(v16);
            }

            v37 = *(v36[1] + 8 * v14);
            [v57 setObject:v39 forKey:v37];
            ++v14;
            if (v12 + 1 >= v15)
            {
              v14 = 0;
              v15 = [v16 countByEnumeratingWithState:v36 objects:v65 count:16];
              if (!v15)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v16);
        v38 = 0;
      }

      else
      {
        v42 = 1;
        v38 = 4;
      }

      objc_storeStrong(&v39, 0);
      if (v38)
      {
        break;
      }

      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [v23 countByEnumeratingWithState:v40 objects:v66 count:16];
        if (!v22)
        {
          goto LABEL_29;
        }
      }
    }
  }

  else
  {
LABEL_29:
    v38 = 0;
  }

  MEMORY[0x277D82BD8](v23);
  if ((v42 & 1) == 1)
  {
    if (v58)
    {
      v9 = MEMORY[0x277CCA9B8];
      v63 = *MEMORY[0x277CCA450];
      v64 = @"User canceled.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v11 = [v9 errorWithDomain:@"com.apple.accountsui" code:0 userInfo:?];
      v6 = v11;
      *v58 = v11;
      MEMORY[0x277D82BD8](v10);
    }

    v62 = 0;
    v38 = 1;
  }

  else
  {
    v62 = MEMORY[0x277D82BE0](v57);
    v38 = 1;
  }

  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v62;

  return v7;
}

uint64_t __96__ACUIAccountOperationsHelper__desiredDataclassActionsFromPossibleActions_forAccount_withError___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a1;
  v7 = MEMORY[0x277CBEB98];
  v8 = [location[0] actions];
  v11[0] = [v7 setWithArray:?];
  MEMORY[0x277D82BD8](v8);
  v10 = [v11[0] isEqualToSet:a1[4]];
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
  return v10;
}

uint64_t __96__ACUIAccountOperationsHelper__desiredDataclassActionsFromPossibleActions_forAccount_withError___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6 = [location[0] priorityIndex];
  v5 = [v7 priorityIndex];
  if (v6 <= v5)
  {
    v9 = v6 < v5;
  }

  else
  {
    v9 = -1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v9;
}

- (ACUIAccountOperationsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end