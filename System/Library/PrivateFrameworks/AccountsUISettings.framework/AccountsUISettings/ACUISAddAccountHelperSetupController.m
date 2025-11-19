@interface ACUISAddAccountHelperSetupController
- (ACUISAddAccountHelperSetupController)init;
- (void)_dismissAndNotifyParent;
- (void)controller:(id)a3 didFinishSettingUpAccount:(id)a4;
@end

@implementation ACUISAddAccountHelperSetupController

- (ACUISAddAccountHelperSetupController)init
{
  v5.receiver = self;
  v5.super_class = ACUISAddAccountHelperSetupController;
  v2 = [(PSSetupController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ACUISAddAccountHelperSetupController *)v2 setRanDataclassSetup:0];
  }

  return v3;
}

- (void)controller:(id)a3 didFinishSettingUpAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _ACUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ACUISAddAccountHelperSetupController *)v6 controller:v7 didFinishSettingUpAccount:v8];
  }

  v9 = [v6 specifier];
  v10 = [v9 userInfo];

  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CE8558]];
  [v11 BOOLValue];

  if (self->_ranDataclassSetup)
  {
    goto LABEL_4;
  }

  self->_ranDataclassSetup = 1;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277CE8598];
  v16 = [v6 specifier];
  v17 = [v16 name];
  v18 = [v6 specifier];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __77__ACUISAddAccountHelperSetupController_controller_didFinishSettingUpAccount___block_invoke;
  v26 = &unk_278BFD1E8;
  objc_copyWeak(&v29, &location);
  v27 = v7;
  v28 = self;
  v19 = [v15 dataclassConfigurationControllerForAccount:v27 name:v17 specifier:v18 completion:&v23];

  if (!v19)
  {

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
LABEL_4:
    v12 = _ACUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACUISAddAccountHelperSetupController controller:didFinishSettingUpAccount:];
    }

    completion = self->_completion;
    if (completion)
    {
      completion[2](completion, v7);
      v14 = self->_completion;
      self->_completion = 0;
    }

    [(ACUISAddAccountHelperSetupController *)self _dismissAndNotifyParent:v23];
    goto LABEL_13;
  }

  v20 = _ACUILogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ACUISAddAccountHelperSetupController controller:didFinishSettingUpAccount:];
  }

  v21 = [(ACUISAddAccountHelperSetupController *)self topViewController:v23];
  [v19 setParentController:v21];
  v22 = [(PSRootController *)self rootController];
  [v19 setRootController:v22];

  [v21 pushController:v19];
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
LABEL_13:
}

void __77__ACUISAddAccountHelperSetupController_controller_didFinishSettingUpAccount___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained completion];

  if (v4)
  {
    v5 = [WeakRetained completion];
    v6 = v5;
    if (a2)
    {
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
    }

    (*(v5 + 16))(v5, v7);

    [WeakRetained setCompletion:0];
    [*(a1 + 40) _dismissAndNotifyParent];
  }
}

- (void)_dismissAndNotifyParent
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  *(&v2[3] + 2) = 100;
  _os_log_debug_impl(&dword_23DCDB000, v0, OS_LOG_TYPE_DEBUG, "%s (%d) Dismissing ACUISAddAccountHelperSetupController", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)controller:(NSObject *)a3 didFinishSettingUpAccount:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = [a2 username];
  v10[0] = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  v11 = v5;
  v12 = v7;
  v13 = v8;
  _os_log_debug_impl(&dword_23DCDB000, a3, OS_LOG_TYPE_DEBUG, "%s (%d) Controller %@ reports being finished with setting up account %@.", v10, 0x26u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)controller:didFinishSettingUpAccount:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23DCDB000, v0, v1, "%s (%d) Pushing dataclass configuration controller for %@.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)controller:didFinishSettingUpAccount:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23DCDB000, v0, v1, "%s (%d) Didn't push dataclass configuration controller for %@. Considering it done", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end