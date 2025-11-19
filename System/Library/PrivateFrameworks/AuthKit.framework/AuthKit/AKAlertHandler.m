@interface AKAlertHandler
+ (AKAlertHandler)sharedInstance;
- (AKAlertHandlerUIProvider)uiProvider;
- (BOOL)_shouldShowAlertForManagedAccount:(id)a3 error:(id)a4;
- (BOOL)showAlert:(id)a3 primaryAction:(id)a4 altAction:(id)a5;
- (BOOL)showAlert:(id)a3 primaryAction:(id)a4 altAction:(id)a5 cancelAction:(id)a6;
- (id)_URLWithString:(id)a3 byAppendingParameters:(id)a4;
- (id)notificationDictionaryWithTitle:(id)a3 message:(id)a4 defaultButton:(id)a5 alternateButton:(id)a6;
- (void)_openSpyglass;
- (void)_openUpgradeAccountSecurityLevelWithBundleID:(id)a3;
- (void)_showAlertForAccountNotSupportedWithCompletion:(id)a3;
- (void)_showAlertForCannotFindServerWithCompletion:(id)a3;
- (void)_showAlertForInsufficientSecurityLevelWithError:(id)a3 completionHandler:(id)a4;
- (void)_showAlertForInvalidContextWithCompletion:(id)a3;
- (void)_showAlertForManagedAccount:(id)a3 error:(id)a4 withCompletion:(id)a5;
- (void)_showAlertForMissingAppleAccountWithCompletion:(id)a3;
- (void)_showAlertForPasscodeSetupWithCompletion:(id)a3;
- (void)_showAlertForUnderageAccount:(id)a3 withCompletion:(id)a4;
- (void)_showAlertForUnverifiedEmailWithCompletion:(id)a3;
- (void)showAlertForError:(id)a3 withAuthKitAccount:(id)a4 withCompletion:(id)a5;
- (void)showAlertForError:(id)a3 withCompletion:(id)a4;
@end

@implementation AKAlertHandler

+ (AKAlertHandler)sharedInstance
{
  v5 = &sharedInstance_onceToken_2;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_33);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_sharedInstance_2;

  return v2;
}

uint64_t __32__AKAlertHandler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AKAlertHandler);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (void)showAlertForError:(id)a3 withCompletion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(AKAlertHandler *)v7 showAlertForError:location[0] withAuthKitAccount:0 withCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)showAlertForError:(id)a3 withAuthKitAccount:(id)a4 withCompletion:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v12, location[0]);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "AlertHandler called with error: %@", v12, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if ([location[0] code] == -7003)
  {
    goto LABEL_4;
  }

  if ([location[0] code] == -7006 || objc_msgSend(location[0], "code") == -7075)
  {
    goto LABEL_7;
  }

  if ([location[0] code] == -7044)
  {
    [(AKAlertHandler *)v11 _showAlertForInvalidContextWithCompletion:v8];
    goto LABEL_28;
  }

  if ([location[0] code] == -7022)
  {
    [(AKAlertHandler *)v11 _showAlertForMissingAppleAccountWithCompletion:v8];
    goto LABEL_28;
  }

  if ([(AKAlertHandler *)v11 _shouldShowAlertForManagedAccount:v9 error:location[0]])
  {
    [(AKAlertHandler *)v11 _showAlertForManagedAccount:v9 error:location[0] withCompletion:v8];
    goto LABEL_28;
  }

  if ([location[0] code] == -7027)
  {
    [(AKAlertHandler *)v11 _showAlertForAccountNotSupportedWithCompletion:v8];
    goto LABEL_28;
  }

  if ([location[0] code] == -7072)
  {
    [(AKAlertHandler *)v11 _showAlertForUnverifiedEmailWithCompletion:v8];
    goto LABEL_28;
  }

  if ([location[0] code] == -7070)
  {
    [(AKAlertHandler *)v11 _showAlertForInsufficientSecurityLevelWithError:location[0] completionHandler:v8];
    goto LABEL_28;
  }

  if ([location[0] code] == -7005)
  {
    [(AKAlertHandler *)v11 _showAlertForCannotFindServerWithCompletion:v8];
    goto LABEL_28;
  }

  if ([location[0] code] == -7076)
  {
    [(AKAlertHandler *)v11 _showAlertForUnderageAccount:v9 withCompletion:v8];
    goto LABEL_28;
  }

  if ([location[0] code] == -7080)
  {
    [(AKAlertHandler *)v11 _showAlertForPasscodeSetupWithCompletion:v8];
    goto LABEL_28;
  }

  if ([location[0] code] == -7034)
  {
LABEL_4:
    (*(v8 + 2))(v8, 1, 0);
  }

  else
  {
LABEL_7:
    (*(v8 + 2))(v8, 0, 0);
  }

LABEL_28:
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_showAlertForInvalidContextWithCompletion:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = +[AKDevice currentDevice];
  v9 = [v8 isInternalBuild];
  MEMORY[0x1E69E5920](v8);
  if (v9)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
    v26 = [v3 localizedStringForKey:@"AUTH_ERROR_ALERT_INVALID_CONTEXT_TITLE" value:? table:?];
    MEMORY[0x1E69E5920](v3);
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v25 = [v4 localizedStringForKey:@"AUTH_ERROR_ALERT_INVALID_CONTEXT_MESSAGE" value:&stru_1F0781300 table:@"Localizable"];
    MEMORY[0x1E69E5920](v4);
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v24 = [v5 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_OK" value:&stru_1F0781300 table:@"Localizable"];
    MEMORY[0x1E69E5920](v5);
    v23 = 0;
    v22 = [(AKAlertHandler *)v29 notificationDictionaryWithTitle:v26 message:v25 defaultButton:v24 alternateButton:0];
    v7 = v29;
    v6 = v22;
    v16 = MEMORY[0x1E69E9820];
    v17 = -1073741824;
    v18 = 0;
    v19 = __60__AKAlertHandler__showAlertForInvalidContextWithCompletion___block_invoke;
    v20 = &unk_1E73D70D0;
    v21 = MEMORY[0x1E69E5928](location[0]);
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __60__AKAlertHandler__showAlertForInvalidContextWithCompletion___block_invoke_46;
    v14 = &unk_1E73D70D0;
    v15 = MEMORY[0x1E69E5928](location[0]);
    [(AKAlertHandler *)v7 showAlert:v6 primaryAction:&v16 altAction:&v10];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    v27 = 0;
  }

  else
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 1, 0);
    }

    v27 = 1;
  }

  objc_storeStrong(location, 0);
}

void __60__AKAlertHandler__showAlertForInvalidContextWithCompletion___block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert - invalid context", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

void __60__AKAlertHandler__showAlertForInvalidContextWithCompletion___block_invoke_46(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert dismissed - invalid context", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

- (void)_showAlertForMissingAppleAccountWithCompletion:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v25 = [v3 localizedStringForKey:@"AUTH_ERROR_ALERT_MISSING_APPLE_ACCOUNT_TITLE_REBRAND" value:? table:?];
  MEMORY[0x1E69E5920](v3);
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v24 = [v4 localizedStringForKey:@"AUTH_ERROR_ALERT_MISSING_APPLE_ACCOUNT_MESSAGE_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v4);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v23 = [v5 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_SETTINGS" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v5);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v22 = [v6 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_CLOSE" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v6);
  v21 = [(AKAlertHandler *)v27 notificationDictionaryWithTitle:v25 message:v24 defaultButton:v23 alternateButton:v22];
  v8 = v27;
  v7 = v21;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __65__AKAlertHandler__showAlertForMissingAppleAccountWithCompletion___block_invoke;
  v18 = &unk_1E73D6318;
  v19 = MEMORY[0x1E69E5928](v27);
  v20 = MEMORY[0x1E69E5928](location[0]);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __65__AKAlertHandler__showAlertForMissingAppleAccountWithCompletion___block_invoke_2;
  v12 = &unk_1E73D70D0;
  v13 = MEMORY[0x1E69E5928](location[0]);
  [(AKAlertHandler *)v8 showAlert:v7 primaryAction:&v14 altAction:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

uint64_t __65__AKAlertHandler__showAlertForMissingAppleAccountWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openSpyglass];
  result = a1;
  if (*(a1 + 40))
  {
    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

void __65__AKAlertHandler__showAlertForMissingAppleAccountWithCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert dismissed - missing apple account", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

- (void)_showAlertForAccountNotSupportedWithCompletion:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v23 = [v3 localizedStringForKey:@"AUTH_ERROR_ALERT_ACCOUNT_NOT_SUPPORTED_TITLE" value:? table:?];
  MEMORY[0x1E69E5920](v3);
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v22 = [v4 localizedStringForKey:@"AUTH_ERROR_ALERT_ACCOUNT_NOT_SUPPORTED_MESSAGE_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v4);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v21 = [v5 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_OK" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v5);
  v20 = 0;
  v19 = [(AKAlertHandler *)v25 notificationDictionaryWithTitle:v23 message:v22 defaultButton:v21 alternateButton:0];
  v7 = v25;
  v6 = v19;
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __65__AKAlertHandler__showAlertForAccountNotSupportedWithCompletion___block_invoke;
  v17 = &unk_1E73D70D0;
  v18 = MEMORY[0x1E69E5928](location[0]);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __65__AKAlertHandler__showAlertForAccountNotSupportedWithCompletion___block_invoke_2;
  v11 = &unk_1E73D70D0;
  v12 = MEMORY[0x1E69E5928](location[0]);
  [(AKAlertHandler *)v7 showAlert:v6 primaryAction:&v13 altAction:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

uint64_t __65__AKAlertHandler__showAlertForAccountNotSupportedWithCompletion___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __65__AKAlertHandler__showAlertForAccountNotSupportedWithCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert dismissed - missing apple account", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

- (void)_showAlertForUnverifiedEmailWithCompletion:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v25 = [v3 localizedStringForKey:@"AUTH_ERROR_ALERT_UNVERIFIED_EMAIL_TITLE" value:? table:?];
  MEMORY[0x1E69E5920](v3);
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v24 = [v4 localizedStringForKey:@"AUTH_ERROR_ALERT_UNVERIFIED_EMAIL_MESSAGE_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v4);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v23 = [v5 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_SETTINGS" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v5);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v22 = [v6 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_CLOSE" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v6);
  v21 = [(AKAlertHandler *)v27 notificationDictionaryWithTitle:v25 message:v24 defaultButton:v23 alternateButton:v22];
  v8 = v27;
  v7 = v21;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __61__AKAlertHandler__showAlertForUnverifiedEmailWithCompletion___block_invoke;
  v18 = &unk_1E73D6318;
  v19 = MEMORY[0x1E69E5928](v27);
  v20 = MEMORY[0x1E69E5928](location[0]);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __61__AKAlertHandler__showAlertForUnverifiedEmailWithCompletion___block_invoke_2;
  v12 = &unk_1E73D70D0;
  v13 = MEMORY[0x1E69E5928](location[0]);
  [(AKAlertHandler *)v8 showAlert:v7 primaryAction:&v14 altAction:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

uint64_t __61__AKAlertHandler__showAlertForUnverifiedEmailWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openSpyglass];
  result = a1;
  if (*(a1 + 40))
  {
    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

void __61__AKAlertHandler__showAlertForUnverifiedEmailWithCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert dismissed - unverified email", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

- (void)_showAlertForInsufficientSecurityLevelWithError:(id)a3 completionHandler:(id)a4
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v20 = [location[0] userInfo];
  v44 = [v20 objectForKey:@"AKClientBundleID"];
  MEMORY[0x1E69E5920](v20);
  v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v43 = [v21 localizedStringForKey:@"AUTH_ERROR_ALERT_INSUFFICIENT_SECURITY_LEVEL_TITLE" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v21);
  v42 = [location[0] userInfo];
  v22 = [v42 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  MEMORY[0x1E69E5920](v22);
  if (v22)
  {
    v4 = [v42 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
    v5 = v43;
    v43 = v4;
    MEMORY[0x1E69E5920](v5);
  }

  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v41 = [v17 localizedStringForKey:@"AUTH_ERROR_ALERT_INSUFFICIENT_SECURITY_LEVEL_MESSAGE" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v17);
  v18 = [v42 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
  MEMORY[0x1E69E5920](v18);
  if (v18)
  {
    v6 = [v42 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
    v7 = v41;
    v41 = v6;
    MEMORY[0x1E69E5920](v7);
  }

  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v40 = [v14 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_CONTINUE" value:? table:?];
  MEMORY[0x1E69E5920](v14);
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v39 = [v15 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_CLOSE" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v15);
  v16 = [v42 objectForKeyedSubscript:*MEMORY[0x1E696A590]];
  MEMORY[0x1E69E5920](v16);
  if (v16)
  {
    v38 = [v42 objectForKeyedSubscript:*MEMORY[0x1E696A590]];
    if ([v38 count] == 2)
    {
      v8 = [v38 objectAtIndexedSubscript:0];
      v9 = v40;
      v40 = v8;
      MEMORY[0x1E69E5920](v9);
      v10 = [v38 objectAtIndexedSubscript:1];
      v11 = v39;
      v39 = v10;
      MEMORY[0x1E69E5920](v11);
    }

    objc_storeStrong(&v38, 0);
  }

  v37 = [(AKAlertHandler *)v47 notificationDictionaryWithTitle:v43 message:v41 defaultButton:v40 alternateButton:v39];
  v13 = v47;
  v12 = v37;
  v29 = MEMORY[0x1E69E9820];
  v30 = -1073741824;
  v31 = 0;
  v32 = __84__AKAlertHandler__showAlertForInsufficientSecurityLevelWithError_completionHandler___block_invoke;
  v33 = &unk_1E73D6640;
  v34 = MEMORY[0x1E69E5928](v47);
  v35 = MEMORY[0x1E69E5928](v44);
  v36 = MEMORY[0x1E69E5928](v45);
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __84__AKAlertHandler__showAlertForInsufficientSecurityLevelWithError_completionHandler___block_invoke_2;
  v27 = &unk_1E73D70D0;
  v28 = MEMORY[0x1E69E5928](v45);
  [(AKAlertHandler *)v13 showAlert:v12 primaryAction:&v29 altAction:&v23];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

uint64_t __84__AKAlertHandler__showAlertForInsufficientSecurityLevelWithError_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openUpgradeAccountSecurityLevelWithBundleID:*(a1 + 40)];
  result = a1;
  if (*(a1 + 48))
  {
    return (*(*(a1 + 48) + 16))();
  }

  return result;
}

void __84__AKAlertHandler__showAlertForInsufficientSecurityLevelWithError_completionHandler___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert dismissed - insufficient security level", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

- (void)_showAlertForCannotFindServerWithCompletion:(id)a3
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v32 = [v7 localizedStringForKey:@"AUTH_ERROR_ALERT_CANNOT_FIND_SERVER_TITLE" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v7);
  v30 = MGGetBoolAnswer();
  v28 = 0;
  v26 = 0;
  v24 = 0;
  v22 = 0;
  if (v30)
  {
    v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v28 = 1;
    v27 = [v29 localizedStringForKey:@"AUTH_ERROR_ALERT_CANNOT_FIND_SERVER_MESSAGE_WLAN" value:&stru_1F0781300 table:@"Localizable"];
    v26 = 1;
    v3 = MEMORY[0x1E69E5928](v27);
  }

  else
  {
    v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v24 = 1;
    v23 = [v25 localizedStringForKey:@"AUTH_ERROR_ALERT_CANNOT_FIND_SERVER_MESSAGE_WIFI" value:&stru_1F0781300 table:@"Localizable"];
    v22 = 1;
    v3 = MEMORY[0x1E69E5928](v23);
  }

  v31 = v3;
  if (v22)
  {
    MEMORY[0x1E69E5920](v23);
  }

  if (v24)
  {
    MEMORY[0x1E69E5920](v25);
  }

  if (v26)
  {
    MEMORY[0x1E69E5920](v27);
  }

  if (v28)
  {
    MEMORY[0x1E69E5920](v29);
  }

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v21 = [v4 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_OK" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v4);
  v20 = [(AKAlertHandler *)v34 notificationDictionaryWithTitle:v32 message:v31 defaultButton:v21 alternateButton:?];
  v6 = v34;
  v5 = v20;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __62__AKAlertHandler__showAlertForCannotFindServerWithCompletion___block_invoke;
  v18 = &unk_1E73D70D0;
  v19 = MEMORY[0x1E69E5928](location[0]);
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __62__AKAlertHandler__showAlertForCannotFindServerWithCompletion___block_invoke_2;
  v12 = &unk_1E73D70D0;
  v13 = MEMORY[0x1E69E5928](location[0]);
  [(AKAlertHandler *)v6 showAlert:v5 primaryAction:&v14 altAction:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

uint64_t __62__AKAlertHandler__showAlertForCannotFindServerWithCompletion___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __62__AKAlertHandler__showAlertForCannotFindServerWithCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert dismissed - cannot find server", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

- (void)_showAlertForUnderageAccount:(id)a3 withCompletion:(id)a4
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v33 = [v14 localizedStringForKey:@"AUTH_ERROR_ALERT_UNDERAGE_ACCOUNT_TITLE" value:? table:?];
  MEMORY[0x1E69E5920](v14);
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v32 = [v15 localizedStringForKey:@"AUTH_ERROR_ALERT_ACCOUNT_NOT_SUPPORTED_MESSAGE_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v15);
  v16 = +[AKAccountManager sharedInstance];
  v31 = [(AKAccountManager *)v16 ageOfMajorityForAccount:location[0]];
  MEMORY[0x1E69E5920](v16);
  if (v31)
  {
    v9 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v11 = [v12 localizedStringForKey:@"AUTH_ERROR_ALERT_UNDERAGE_ACCOUNT_MESSAGE_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
    v10 = [v31 stringValue];
    v4 = [v9 stringWithFormat:v11, v10];
    v5 = v32;
    v32 = v4;
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
  }

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v30 = [v6 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_OK" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v6);
  v29 = [(AKAlertHandler *)v36 notificationDictionaryWithTitle:v33 message:v32 defaultButton:v30 alternateButton:?];
  v8 = v36;
  v7 = v29;
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __62__AKAlertHandler__showAlertForUnderageAccount_withCompletion___block_invoke;
  v27 = &unk_1E73D70D0;
  v28 = MEMORY[0x1E69E5928](v34);
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __62__AKAlertHandler__showAlertForUnderageAccount_withCompletion___block_invoke_2;
  v21 = &unk_1E73D70D0;
  v22 = MEMORY[0x1E69E5928](v34);
  [(AKAlertHandler *)v8 showAlert:v7 primaryAction:&v23 altAction:&v17];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

uint64_t __62__AKAlertHandler__showAlertForUnderageAccount_withCompletion___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __62__AKAlertHandler__showAlertForUnderageAccount_withCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert dismissed - underage account", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

- (void)_showAlertForPasscodeSetupWithCompletion:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v23 = [v3 localizedStringForKey:@"AUTH_ERROR_ALERT_CREATE_PASSCODE_TITLE" value:? table:?];
  MEMORY[0x1E69E5920](v3);
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v22 = [v4 localizedStringForKey:@"AUTH_ERROR_ALERT_CREATE_PASSCODE_MESSAGE_WATCH_REBRAND" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v4);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v21 = [v5 localizedStringForKey:@"AUTH_ERROR_BUTTON_OPEN_PASSCODE_SETUP" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v5);
  v20 = [(AKAlertHandler *)v25 notificationDictionaryWithTitle:v23 message:v22 defaultButton:v21 alternateButton:0];
  v7 = v25;
  v6 = v20;
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __59__AKAlertHandler__showAlertForPasscodeSetupWithCompletion___block_invoke;
  v17 = &unk_1E73D6318;
  v18 = MEMORY[0x1E69E5928](v25);
  v19 = MEMORY[0x1E69E5928](location[0]);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __59__AKAlertHandler__showAlertForPasscodeSetupWithCompletion___block_invoke_2;
  v11 = &unk_1E73D70D0;
  v12 = MEMORY[0x1E69E5928](location[0]);
  [(AKAlertHandler *)v7 showAlert:v6 primaryAction:&v13 altAction:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

uint64_t __59__AKAlertHandler__showAlertForPasscodeSetupWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openPasscodeSetup];
  result = a1;
  if (*(a1 + 40))
  {
    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

void __59__AKAlertHandler__showAlertForPasscodeSetupWithCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert dismissed - passcode setup required", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

- (BOOL)_shouldShowAlertForManagedAccount:(id)a3 error:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  v8 = [v11 userInfo];
  v7 = [v8 objectForKeyedSubscript:@"isManagedAccount"];
  v9 = [v7 BOOLValue];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  if (v9)
  {
    v5 = 1;
    if ([v11 code] != -7100)
    {
      v5 = 1;
      if ([v11 code] != -7093)
      {
        v5 = [v11 code] == -7027;
      }
    }

    v10 = v5;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)_showAlertForManagedAccount:(id)a3 error:(id)a4 withCompletion:(id)a5
{
  v58 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v56 = 0;
  objc_storeStrong(&v56, a4);
  v55 = 0;
  objc_storeStrong(&v55, a5);
  v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v54 = [v32 localizedStringForKey:@"AUTH_ERROR_ALERT_MANAGED_ACCOUNT_CANNOT_SIGN_IN_TITLE" value:? table:?];
  MEMORY[0x1E69E5920](v32);
  v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v53 = [v33 localizedStringForKey:@"AUTH_ERROR_ALERT_MANAGED_ACCOUNT_CANNOT_SIGN_IN_MESSAGE" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v33);
  v34 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v52 = [v34 localizedStringForKey:@"AUTH_ERROR_ALERT_BUTTON_OK" value:&stru_1F0781300 table:@"Localizable"];
  MEMORY[0x1E69E5920](v34);
  if ([v56 code] == -7100)
  {
    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
    v5 = [v27 localizedStringForKey:@"AUTH_ERROR_ALERT_MANAGED_ACCOUNT_APPLICATION_BLOCKED_TITLE" value:&stru_1F0781300 table:@"Localizable"];
    v6 = v54;
    v54 = v5;
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v27);
    v28 = [v56 userInfo];
    v51 = [v28 objectForKeyedSubscript:@"managedOrganizationName"];
    MEMORY[0x1E69E5920](v28);
    v29 = [v56 userInfo];
    v50 = [v29 objectForKeyedSubscript:@"localizedAppName"];
    MEMORY[0x1E69E5920](v29);
    v49 = [v51 length] != 0;
    v48 = [v50 length] != 0;
    if (v48 && v49)
    {
      v24 = MEMORY[0x1E696AEC0];
      v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
      v25 = [v26 localizedStringForKey:@"AUTH_ERROR_ALERT_MANAGED_ACCOUNT_APPLICATION_BLOCKED_MESSAGE_APPNAME_ORGNAME_FORMAT" value:&stru_1F0781300 table:@"Localizable"];
      v7 = [v24 stringWithFormat:v50, v51];
      v8 = v53;
      v53 = v7;
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v25);
      MEMORY[0x1E69E5920](v26);
    }

    else if (v48)
    {
      v21 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
      v22 = [v23 localizedStringForKey:@"AUTH_ERROR_ALERT_MANAGED_ACCOUNT_APPLICATION_BLOCKED_MESSAGE_APPNAME_FORMAT" value:&stru_1F0781300 table:@"Localizable"];
      v9 = [v21 stringWithFormat:v50];
      v10 = v53;
      v53 = v9;
      MEMORY[0x1E69E5920](v10);
      MEMORY[0x1E69E5920](v22);
      MEMORY[0x1E69E5920](v23);
    }

    else if (v49)
    {
      v18 = MEMORY[0x1E696AEC0];
      v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
      v19 = [v20 localizedStringForKey:@"AUTH_ERROR_ALERT_MANAGED_ACCOUNT_APPLICATION_BLOCKED_MESSAGE_ORGNAME_FORMAT" value:&stru_1F0781300 table:@"Localizable"];
      v11 = [v18 stringWithFormat:v51];
      v12 = v53;
      v53 = v11;
      MEMORY[0x1E69E5920](v12);
      MEMORY[0x1E69E5920](v19);
      MEMORY[0x1E69E5920](v20);
    }

    else
    {
      v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AuthKit"];
      v13 = [v17 localizedStringForKey:@"AUTH_ERROR_ALERT_MANAGED_ACCOUNT_APPLICATION_BLOCKED_MESSAGE" value:&stru_1F0781300 table:@"Localizable"];
      v14 = v53;
      v53 = v13;
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](v17);
    }

    objc_storeStrong(&v50, 0);
    objc_storeStrong(&v51, 0);
  }

  v47 = [(AKAlertHandler *)v58 notificationDictionaryWithTitle:v54 message:v53 defaultButton:v52 alternateButton:?];
  v16 = v58;
  v15 = v47;
  v41 = MEMORY[0x1E69E9820];
  v42 = -1073741824;
  v43 = 0;
  v44 = __67__AKAlertHandler__showAlertForManagedAccount_error_withCompletion___block_invoke;
  v45 = &unk_1E73D70D0;
  v46 = MEMORY[0x1E69E5928](v55);
  v35 = MEMORY[0x1E69E9820];
  v36 = -1073741824;
  v37 = 0;
  v38 = __67__AKAlertHandler__showAlertForManagedAccount_error_withCompletion___block_invoke_2;
  v39 = &unk_1E73D70D0;
  v40 = MEMORY[0x1E69E5928](v55);
  [(AKAlertHandler *)v16 showAlert:v15 primaryAction:&v41 altAction:&v35];
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
}

uint64_t __67__AKAlertHandler__showAlertForManagedAccount_error_withCompletion___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __67__AKAlertHandler__showAlertForManagedAccount_error_withCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Authorization alert dismissed - managed account", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }
}

- (BOOL)showAlert:(id)a3 primaryAction:(id)a4 altAction:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  WeakRetained = objc_loadWeakRetained(&v13->_uiProvider);
  if (objc_opt_respondsToSelector())
  {
    v8 = [WeakRetained alertHandlerShowAlert:location[0] primaryAction:v11 altAction:v10];
    objc_storeWeak(&v13->_uiProvider, 0);
    v14 = v8 & 1;
  }

  else
  {
    v14 = [(AKAlertHandler *)v13 showAlert:location[0] primaryAction:v11 altAction:v10 cancelAction:v10];
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (BOOL)showAlert:(id)a3 primaryAction:(id)a4 altAction:(id)a5 cancelAction:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = 0;
  objc_storeStrong(&v27, a6);
  if ([MEMORY[0x1E6985DD8] deviceIsAudioAccessory])
  {
    v26 = _AKLogSystem();
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v9 = [location[0] objectForKeyedSubscript:*MEMORY[0x1E695EE58]];
      __os_log_helper_16_2_1_8_64(v33, v9);
      _os_log_error_impl(&dword_193225000, v26, v25, "Attempted to show CFUserNotification (%@) on HomePod, AuthKit prompts aren't made for this!", v33, 0xCu);
      MEMORY[0x1E69E5920](v9);
    }

    objc_storeStrong(&v26, 0);
    v31 = 0;
    v24 = 1;
  }

  else
  {
    v23 = 0;
    v22 = AKUserNotificationCreate(*MEMORY[0x1E695E480], 0, &v23, location[0], 0.0);
    if (v22)
    {
      queue = dispatch_get_global_queue(2, 0);
      v14 = MEMORY[0x1E69E9820];
      v15 = -1073741824;
      v16 = 0;
      v17 = __65__AKAlertHandler_showAlert_primaryAction_altAction_cancelAction___block_invoke;
      v18 = &unk_1E73D7B80;
      v21[1] = v22;
      v19 = MEMORY[0x1E69E5928](v27);
      v20 = MEMORY[0x1E69E5928](v29);
      v21[0] = MEMORY[0x1E69E5928](v28);
      dispatch_async(queue, &v14);
      MEMORY[0x1E69E5920](queue);
      v31 = 1;
      v24 = 1;
      objc_storeStrong(v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v7 = [location[0] objectForKeyedSubscript:*MEMORY[0x1E695EE58]];
        __os_log_helper_16_2_2_8_64_4_0(v32, v7, v23);
        _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Showing alert (%@) failed, user notification is nil!. Error: %d", v32, 0x12u);
        MEMORY[0x1E69E5920](v7);
      }

      objc_storeStrong(&oslog, 0);
      v31 = 0;
      v24 = 1;
    }
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v31 & 1;
}

void __65__AKAlertHandler_showAlert_primaryAction_altAction_cancelAction___block_invoke(CFOptionFlags a1)
{
  responseFlags[2] = a1;
  responseFlags[1] = a1;
  responseFlags[0] = 0;
  CFUserNotificationReceiveResponse(*(a1 + 56), 0.0, responseFlags);
  v2 = AKUserNotificationResponseAction(responseFlags[0]);
  if (v2 == 3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  CFRelease(*(a1 + 56));
}

- (id)notificationDictionaryWithTitle:(id)a3 message:(id)a4 defaultButton:(id)a5 alternateButton:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (location[0])
  {
    [v16 setObject:location[0] forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  [v16 setObject:v19 forKeyedSubscript:*MEMORY[0x1E695EE60]];
  if (v17)
  {
    [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  if (v18)
  {
    [v16 setObject:v18 forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  v6 = *MEMORY[0x1E695EE68];
  [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:?];
  [v16 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69D44E8]];
  [v16 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69D4488]];
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v11 resourceURL];
  v7 = *MEMORY[0x1E695EE90];
  [v16 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  v12 = MEMORY[0x1E69E5928](v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (void)_openSpyglass
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  [v3 openSensitiveURL:? withOptions:?];
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v3);
}

- (void)_openUpgradeAccountSecurityLevelWithBundleID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  if (location[0])
  {
    v11 = @"AKClientBundleID";
    v12[0] = location[0];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = 1;
    v3 = MEMORY[0x1E69E5928](v7);
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](0);
  }

  v8 = v3;
  if (v6)
  {
    MEMORY[0x1E69E5920](v7);
  }

  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = [(AKAlertHandler *)v10 _URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=upgradeSecurityLevel" byAppendingParameters:v8];
  [v5 openSensitiveURL:? withOptions:?];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_URLWithString:(id)a3 byAppendingParameters:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = [location[0] mutableCopy];
  memset(__b, 0, sizeof(__b));
  v14 = [v19 keyEnumerator];
  v15 = [v14 countByEnumeratingWithState:__b objects:v21 count:16];
  if (v15)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v15;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(v14);
      }

      v17 = *(__b[1] + 8 * v11);
      v7 = v18;
      v6 = v17;
      v8 = [v19 objectForKeyedSubscript:v17];
      [v7 appendFormat:@"&%@=%@", v6, v8];
      MEMORY[0x1E69E5920](v8);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v14 countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v14);
  v5 = [MEMORY[0x1E695DFF8] URLWithString:v18];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v5;
}

- (AKAlertHandlerUIProvider)uiProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_uiProvider);

  return WeakRetained;
}

@end