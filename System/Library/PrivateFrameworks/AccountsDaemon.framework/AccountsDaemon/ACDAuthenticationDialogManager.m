@interface ACDAuthenticationDialogManager
- (ACDAuthenticationDialogManager)init;
- (BOOL)_confirmUserWantsToOpenAuthenticationURLForAccount:(id)a3;
- (void)_launchDialogContainerAppForAccount:(id)a3 shouldConfirm:(BOOL)a4 completion:(id)a5;
- (void)authenticationDialogCrashed;
- (void)contextForAuthenticationDialog:(id)a3;
@end

@implementation ACDAuthenticationDialogManager

- (ACDAuthenticationDialogManager)init
{
  v6.receiver = self;
  v6.super_class = ACDAuthenticationDialogManager;
  v2 = [(ACDAuthenticationDialogManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ACDQueueDictionary);
    dialogRequestQueues = v2->_dialogRequestQueues;
    v2->_dialogRequestQueues = v3;
  }

  return v2;
}

void __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_47(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = _ACDLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_47_cold_1();
    }
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 authenticationDialogDidFinishWithSuccess:0 response:0];
  }
}

void __130__ACDAuthenticationDialogManager_openAuthenticationURLForAccount_withDelegateClassName_fromBundleAtPath_shouldConfirm_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = _ACDLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_47_cold_1();
    }
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 authenticationDialogDidFinishWithSuccess:0 response:0];
  }
}

- (void)_launchDialogContainerAppForAccount:(id)a3 shouldConfirm:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 identifier];
  activeAccountID = self->_activeAccountID;
  self->_activeAccountID = v10;

  v12 = dispatch_get_global_queue(2, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke;
  v15[3] = &unk_27848CF88;
  v18 = a4;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, v15);
}

void __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1 && ![*(a1 + 32) _confirmUserWantsToOpenAuthenticationURLForAccount:*(a1 + 40)])
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v2 = _ACDLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_cold_1();
    }

    v3 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_50;
    v5[3] = &unk_27848CF60;
    v6 = *(a1 + 48);
    [v3 openApplication:@"com.apple.AccountAuthenticationDialog" withOptions:0 completion:v5];
  }
}

void __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _ACDLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_50_cold_1(v4, v5);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (BOOL)_confirmUserWantsToOpenAuthenticationURLForAccount:(id)a3
{
  v3 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v4 = [v3 accountType];
  v5 = [v4 accountTypeDescription];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_2835374D8;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"VERIFICATION_REQUIRED_MESSAGE_FORMAT" value:&stru_2835374D8 table:@"Localizable"];
  v10 = [v3 username];
  v11 = [v7 stringWithFormat:v9, v6, v10];

  v12 = _ACDLogSystem();
  v22 = v6;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v12, OS_LOG_TYPE_DEFAULT, "ACDAuthenticationDialogRequest: asking user to confirm showing auth dialog.", buf, 2u);
  }

  v13 = dispatch_semaphore_create(0);
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"VERIFICATION_REQUIRED_TITLE" value:&stru_2835374D8 table:@"Localizable"];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_2835374D8 table:@"Localizable"];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CONTINUE" value:&stru_2835374D8 table:@"Localizable"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__ACDAuthenticationDialogManager__confirmUserWantsToOpenAuthenticationURLForAccount___block_invoke;
  v23[3] = &unk_27848CFB0;
  v25 = &v27;
  v20 = v13;
  v24 = v20;
  [ACDUserNotification showUserNotificationWithTitle:v15 message:v11 cancelButtonTitle:v17 otherButtonTitle:v19 withCompletionBlock:v23];

  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v14) = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return v14;
}

intptr_t __85__ACDAuthenticationDialogManager__confirmUserWantsToOpenAuthenticationURLForAccount___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _ACDLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "ACDAuthenticationDialogRequest: user declined.", v8, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "ACDAuthenticationDialogRequest: user asked to continue.", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)contextForAuthenticationDialog:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ACDQueueDictionary *)v5->_dialogRequestQueues firstObjectInQueueForKey:v5->_activeAccountID];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 url];
    v9 = [v7 account];
    v10 = [v9 accountDescription];

    v11 = [v7 account];
    v12 = [v11 username];

    v13 = [v7 authDelegateClassName];
    v14 = [v7 authDelegateClassBundlePath];
    v15 = _ACDLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = ACHashedString();
      v19 = 138413314;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      _os_log_debug_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEBUG, "ACDAuthenticationDialogManager: providing active dialog with URL: %@ title: %@ username: %@ authDelegateClassName %@ authDelegateClassBundlePath %@", &v19, 0x34u);
    }

    v4[2](v4, v8, v10, v12, v13, v14);
  }

  else
  {
    v16 = _ACDLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACDAuthenticationDialogManager contextForAuthenticationDialog:];
    }

    v4[2](v4, 0, 0, 0, 0, 0);
  }

  objc_sync_exit(v5);
  v17 = *MEMORY[0x277D85DE8];
}

void __84__ACDAuthenticationDialogManager_authenticationDialogDidFinishWithSuccess_response___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) account];
  v4 = [*(a1 + 40) confirmationRequired];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__ACDAuthenticationDialogManager_authenticationDialogDidFinishWithSuccess_response___block_invoke_2;
  v5[3] = &unk_27848CF38;
  v5[4] = *(a1 + 32);
  [v2 _launchDialogContainerAppForAccount:v3 shouldConfirm:v4 completion:v5];
}

uint64_t __84__ACDAuthenticationDialogManager_authenticationDialogDidFinishWithSuccess_response___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) authenticationDialogDidFinishWithSuccess:0 response:0];
  }

  return result;
}

- (void)authenticationDialogCrashed
{
  if (self->_activeAccountID)
  {
    [(ACDAuthenticationDialogManager *)self authenticationDialogDidFinishWithSuccess:0 response:0];
  }
}

- (void)openAuthenticationURL:(uint64_t)a1 forAccount:shouldConfirm:completion:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 16);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)openAuthenticationURL:(os_log_t)log forAccount:shouldConfirm:completion:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_221D2F000, log, OS_LOG_TYPE_DEBUG, "ACDAuthenticationDialogRequest: added dialog request to queue under ID %@", buf, 0xCu);
}

void __92__ACDAuthenticationDialogManager_openAuthenticationURL_forAccount_shouldConfirm_completion___block_invoke_47_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__ACDAuthenticationDialogManager__launchDialogContainerAppForAccount_shouldConfirm_completion___block_invoke_50_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"com.apple.AccountAuthenticationDialog";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Failed to lauch %@ app: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end