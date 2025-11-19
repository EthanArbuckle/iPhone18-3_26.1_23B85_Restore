@interface ACUISAddAccountHelper
+ (id)dataclassConfigurationControllerForAccount:(id)a3 name:(id)a4 completion:(id)a5;
+ (void)showAlternateSetupControllerForAccount:(id)a3 username:(id)a4 from:(id)a5 completion:(id)a6;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setupViewControllerDidDismiss:(id)a3;
- (void)signInControllerDidCancel;
- (void)signInControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4;
@end

@implementation ACUISAddAccountHelper

void __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = _ACUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[ACUISAddAccountHelper showAddSheetForAccountType:onController:withAccount:configDictionary:forceMail:completion:]_block_invoke";
    v21 = 1024;
    v22 = 179;
    v23 = 2050;
    v24 = a3;
    _os_log_impl(&dword_23DCDB000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Account Creation Controller completed with action: %{public}ld", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_93;
  block[3] = &unk_278BFD210;
  objc_copyWeak(v18, (a1 + 40));
  v10 = *(a1 + 32);
  v16 = v8;
  v17 = v10;
  v18[1] = a3;
  v15 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v18);
  v13 = *MEMORY[0x277D85DE8];
}

void __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_93(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

void __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_96_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    if (v3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    (*(v5 + 16))(v5, v3, v6, 0);
  }
}

- (void)signInControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ACUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v13 = "[ACUISAddAccountHelper signInControllerDidCompleteWithSuccess:error:]";
    v14 = 1024;
    v15 = 222;
    *buf = 136315906;
    if (v4)
    {
      v8 = @"YES";
    }

    v16 = 2114;
    v17 = v8;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_23DCDB000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: signInControllerDidCompleteWithSuccess: %{public}@ error: %@", buf, 0x26u);
  }

  setupViewController = self->_setupViewController;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__ACUISAddAccountHelper_signInControllerDidCompleteWithSuccess_error___block_invoke;
  v11[3] = &unk_278BFD288;
  v11[4] = self;
  [(PSViewController *)setupViewController dismissViewControllerAnimated:1 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __70__ACUISAddAccountHelper_signInControllerDidCompleteWithSuccess_error___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 3, 0);
  }

  return result;
}

- (void)signInControllerDidCancel
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _ACUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[ACUISAddAccountHelper signInControllerDidCancel]";
    v9 = 1024;
    v10 = 230;
    _os_log_impl(&dword_23DCDB000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: signInControllerDidCancel", buf, 0x12u);
  }

  setupViewController = self->_setupViewController;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ACUISAddAccountHelper_signInControllerDidCancel__block_invoke;
  v6[3] = &unk_278BFD288;
  v6[4] = self;
  [(PSViewController *)setupViewController dismissViewControllerAnimated:1 completion:v6];
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __50__ACUISAddAccountHelper_signInControllerDidCancel__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 4, 0);
  }

  return result;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = _ACUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ACUISAddAccountHelper presentationControllerDidDismiss:]";
    v9 = 1024;
    v10 = 241;
    _os_log_impl(&dword_23DCDB000, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: presentationControllerDidDismiss", &v7, 0x12u);
  }

  completion = self->_completion;
  if (completion)
  {
    (*(completion + 2))(completion, 0, 4, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)showAlternateSetupControllerForAccount:(id)a3 username:(id)a4 from:(id)a5 completion:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = _ACUILogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "+[ACUISAddAccountHelper showAlternateSetupControllerForAccount:username:from:completion:]";
    v17 = 1024;
    v18 = 254;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_23DCDB000, v13, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: showAlternateSetupControllerForAccount %@", &v15, 0x1Cu);
  }

  [MEMORY[0x277CE8598] showAlternateCreationControllerForAccountType:v9 username:v12 fromViewController:v11 specifier:0 completion:v10];
  v14 = *MEMORY[0x277D85DE8];
}

+ (id)dataclassConfigurationControllerForAccount:(id)a3 name:(id)a4 completion:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = _ACUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "+[ACUISAddAccountHelper dataclassConfigurationControllerForAccount:name:completion:]";
    v16 = 1024;
    v17 = 265;
    _os_log_impl(&dword_23DCDB000, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: dataclass onfig controller called", &v14, 0x12u);
  }

  v11 = [MEMORY[0x277CE8598] dataclassConfigurationControllerForAccount:v9 name:v8 specifier:0 completion:v7];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setupViewControllerDidDismiss:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _ACUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ACUISAddAccountHelper setupViewControllerDidDismiss:]";
    v7 = 1024;
    v8 = 271;
    _os_log_impl(&dword_23DCDB000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) ACUISAddAccountHelper: setup view controller did dismiss", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __115__ACUISAddAccountHelper_showAddSheetForAccountType_onController_withAccount_configDictionary_forceMail_completion___block_invoke_96_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23DCDB000, v0, v1, "%s (%d) ACUISAddAccountHelper: PSSetupController based sign in flow did finish adding account %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end