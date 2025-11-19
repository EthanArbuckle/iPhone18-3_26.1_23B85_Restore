@interface AAUIDeviceLocatorConfirmationUtilities
+ (id)_authContextForPresentingVC:(id)a3 navController:(id)a4 theftAndLossViewControllerAvailable:(BOOL)a5 context:(id)a6;
+ (id)_messageForError:(id)a3 account:(id)a4;
+ (id)_titleForError:(id)a3 account:(id)a4;
+ (void)_handleFMIPAuthenticationResponse:(id)a3 withError:(id)a4 forContext:(id)a5 completion:(id)a6;
+ (void)_performFMIPAuthenticationForContext:(id)a3 completion:(id)a4;
+ (void)_showErrorUserNotificationForAccount:(id)a3 error:(id)a4 withCompletion:(id)a5;
+ (void)checkIfWatchHasAppleIDAccount:(id)a3;
+ (void)dismissViewController:(id)a3;
+ (void)showDisableAlertForAccount:(id)a3 presentingViewController:(id)a4 telemetryFlowID:(id)a5 withCompletion:(id)a6;
+ (void)showDisableAlertForAccount:(id)a3 presentingViewController:(id)a4 withCompletion:(id)a5;
+ (void)showDisableAlertForAccount:(id)a3 withMessage:(id)a4 confirmationButtonTitle:(id)a5 presentingViewController:(id)a6 completion:(id)a7;
+ (void)showDisableAlertForContext:(id)a3 withCompletion:(id)a4;
+ (void)showEnableAlertWithCompletion:(id)a3;
@end

@implementation AAUIDeviceLocatorConfirmationUtilities

+ (void)showEnableAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B36C0] sharedInstance];
  v6 = [v5 getActivePairedDevice];

  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__AAUIDeviceLocatorConfirmationUtilities_showEnableAlertWithCompletion___block_invoke;
    v9[3] = &__block_descriptor_40_e11_v16__0B8B12l;
    v9[4] = a1;
    [AAUIDeviceLocatorConfirmationUtilities checkIfWatchHasAppleIDAccount:v9];
  }

  if (v4)
  {
    v4[2](v4, 0);
  }
}

void __72__AAUIDeviceLocatorConfirmationUtilities_showEnableAlertWithCompletion___block_invoke(uint64_t a1, char a2, char a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__AAUIDeviceLocatorConfirmationUtilities_showEnableAlertWithCompletion___block_invoke_2;
  v3[3] = &__block_descriptor_42_e5_v8__0l;
  v4 = a2;
  v5 = a3;
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __72__AAUIDeviceLocatorConfirmationUtilities_showEnableAlertWithCompletion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    v1 = [MEMORY[0x1E699C848] sharedInstance];
    [v1 userNotifiedOfActivationLockForAllPairedDevices];

    v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v2 localizedStringForKey:@"DEVICE_LOCATOR_TITLE" value:&stru_1F447F790 table:@"Localizable"];

    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"ENABLE_DEVICE_LOCATOR_MESSAGE_WATCH_REBRAND" value:&stru_1F447F790 table:@"Localizable"];

    v5 = MEMORY[0x1E698B9E0];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
    [v5 showUserNotificationWithTitle:v8 message:v4 cancelButtonTitle:0 otherButtonTitle:v7 withCompletionBlock:0];
  }
}

+ (void)checkIfWatchHasAppleIDAccount:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke;
  block[3] = &unk_1E820B820;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v20 = [v3 aa_primaryAppleAccount];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v4 = getNSSManagerClass_softClass;
  v25 = getNSSManagerClass_softClass;
  if (!getNSSManagerClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getNSSManagerClass_block_invoke;
    v21[3] = &unk_1E820BE08;
    v21[4] = &v22;
    __getNSSManagerClass_block_invoke(v21);
    v4 = v23[3];
  }

  v5 = v4;
  _Block_object_dispose(&v22, 8);
  v6 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119;
  v11[3] = &unk_1E820BC78;
  v13 = v19;
  v14 = &v15;
  v7 = v2;
  v12 = v7;
  [v6 getiCloudInfo:v11];
  v8 = dispatch_time(0, 4000000000);
  v9 = dispatch_semaphore_wait(v7, v8);
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, *(v16 + 24), v9 > 0);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);
}

void __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v23 = a3;
  if (v23)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Error getting Watch Account: %@", &buf, 0xCu);
    }

    goto LABEL_27;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v5 = getkNSSiCloudAccountsKeySymbolLoc_ptr;
  v33 = getkNSSiCloudAccountsKeySymbolLoc_ptr;
  if (!getkNSSiCloudAccountsKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v36 = __getkNSSiCloudAccountsKeySymbolLoc_block_invoke;
    v37 = &unk_1E820BE08;
    v38 = &v30;
    v6 = NanoSystemSettingsLibrary();
    v7 = dlsym(v6, "kNSSiCloudAccountsKey");
    *(v38[1] + 24) = v7;
    getkNSSiCloudAccountsKeySymbolLoc_ptr = *(v38[1] + 24);
    v5 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v5)
  {
    __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119_cold_1();
    goto LABEL_31;
  }

  v8 = [v24 objectForKeyedSubscript:*v5];
  v9 = [*(*(*(a1 + 40) + 8) + 40) aa_personID];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v8;
  v10 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = *v27;
LABEL_9:
  v12 = 0;
  while (1)
  {
    if (*v27 != v11)
    {
      objc_enumerationMutation(v4);
    }

    v13 = *(*(&v26 + 1) + 8 * v12);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v14 = getkNSSiCloudPersonIDKeySymbolLoc_ptr;
    v33 = getkNSSiCloudPersonIDKeySymbolLoc_ptr;
    if (!getkNSSiCloudPersonIDKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v36 = __getkNSSiCloudPersonIDKeySymbolLoc_block_invoke;
      v37 = &unk_1E820BE08;
      v38 = &v30;
      v15 = NanoSystemSettingsLibrary();
      v16 = dlsym(v15, "kNSSiCloudPersonIDKey");
      *(v38[1] + 24) = v16;
      getkNSSiCloudPersonIDKeySymbolLoc_ptr = *(v38[1] + 24);
      v14 = v31[3];
    }

    _Block_object_dispose(&v30, 8);
    if (!v14)
    {
      goto LABEL_30;
    }

    v17 = [v13 objectForKeyedSubscript:*v14];
    if ([v17 isEqualToString:v9])
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v18 = getkNSSiCloudIsAuthenticatedKeySymbolLoc_ptr;
  v33 = getkNSSiCloudIsAuthenticatedKeySymbolLoc_ptr;
  if (!getkNSSiCloudIsAuthenticatedKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v36 = __getkNSSiCloudIsAuthenticatedKeySymbolLoc_block_invoke;
    v37 = &unk_1E820BE08;
    v38 = &v30;
    v19 = NanoSystemSettingsLibrary();
    v20 = dlsym(v19, "kNSSiCloudIsAuthenticatedKey");
    *(v38[1] + 24) = v20;
    getkNSSiCloudIsAuthenticatedKeySymbolLoc_ptr = *(v38[1] + 24);
    v18 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v18)
  {
LABEL_30:
    __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119_cold_1();
LABEL_31:
    __break(1u);
  }

  v21 = [v13 objectForKeyedSubscript:*v18];
  v22 = v21;
  if (!v21 || [v21 BOOLValue])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_26:
LABEL_27:

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)showDisableAlertForAccount:(id)a3 presentingViewController:(id)a4 withCompletion:(id)a5
{
  v8 = MEMORY[0x1E696AAE8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 bundleForClass:objc_opt_class()];
  v13 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DISABLE_DEVICE_LOCATOR_MESSAGE_REBRAND"];
  v16 = [v12 localizedStringForKey:v13 value:&stru_1F447F790 table:@"Localizable"];

  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"DISABLE_DEVICE_LOCATOR_BUTTON" value:&stru_1F447F790 table:@"Localizable"];

  [a1 showDisableAlertForAccount:v11 withMessage:v16 confirmationButtonTitle:v15 presentingViewController:v10 completion:v9];
}

+ (void)showDisableAlertForAccount:(id)a3 presentingViewController:(id)a4 telemetryFlowID:(id)a5 withCompletion:(id)a6
{
  v21 = a6;
  v10 = MEMORY[0x1E696AAE8];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 bundleForClass:objc_opt_class()];
  v15 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DISABLE_DEVICE_LOCATOR_MESSAGE_REBRAND"];
  v16 = [v14 localizedStringForKey:v15 value:&stru_1F447F790 table:@"Localizable"];

  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"DISABLE_DEVICE_LOCATOR_BUTTON" value:&stru_1F447F790 table:@"Localizable"];

  v19 = objc_opt_new();
  [v19 setAccount:v13];

  [v19 setMessage:v16];
  [v19 setButtonTitle:v18];
  [v19 setPresentingViewController:v12];

  [v19 setTelemetryFlowID:v11];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __125__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForAccount_presentingViewController_telemetryFlowID_withCompletion___block_invoke;
  v22[3] = &unk_1E820BCA0;
  v23 = v21;
  v20 = v21;
  [a1 showDisableAlertForContext:v19 withCompletion:v22];
}

void __125__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForAccount_presentingViewController_telemetryFlowID_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 fmipWipeToken];
  (*(v4 + 16))(v4, a2, v5);
}

+ (void)showDisableAlertForAccount:(id)a3 withMessage:(id)a4 confirmationButtonTitle:(id)a5 presentingViewController:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_opt_new();
  [v17 setAccount:v16];

  [v17 setMessage:v15];
  [v17 setButtonTitle:v14];

  [v17 setPresentingViewController:v13];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __141__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForAccount_withMessage_confirmationButtonTitle_presentingViewController_completion___block_invoke;
  v19[3] = &unk_1E820BCA0;
  v20 = v12;
  v18 = v12;
  [a1 showDisableAlertForContext:v17 withCompletion:v19];
}

void __141__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForAccount_withMessage_confirmationButtonTitle_presentingViewController_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 fmipWipeToken];
  (*(v4 + 16))(v4, a2, v5);
}

+ (id)_authContextForPresentingVC:(id)a3 navController:(id)a4 theftAndLossViewControllerAvailable:(BOOL)a5 context:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v12 account];
  v14 = [v12 message];
  v15 = [v12 buttonTitle];
  if (v10)
  {
    v16 = objc_alloc_init(MEMORY[0x1E698DE80]);
    if ([a1 shouldShowTnLCoverageLoss] && v7 && (objc_msgSend(v12, "skipTnLScreen") & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v17 = v16;
      v18 = v11;
    }

    else
    {
      v17 = v16;
      v18 = v10;
    }

    [v17 setPresentingViewController:v18];
    [v16 setForceInlinePresentation:1];
  }

  else
  {
    v19 = _AAUILogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "AAUIDeviceLocatorConfirmationUtilities: Warning! Caller has not provided a presenting VC.", v32, 2u);
    }

    v16 = objc_alloc_init(MEMORY[0x1E698DCB8]);
    [v16 _setProxyingForApp:1];
  }

  v20 = [v13 username];
  [v16 setUsername:v20];

  v21 = [v13 aa_altDSID];
  [v16 setAltDSID:v21];

  [v16 setReason:v14];
  [v16 setShouldPromptForPasswordOnly:1];
  [v16 setAuthenticationType:2];
  [v16 setIsEphemeral:1];
  [v16 setIsUsernameEditable:0];
  [v16 setDefaultButtonString:v15];
  [v16 setMaximumLoginAttempts:2];
  [v16 setEnablePasscodeAuth:0];
  v22 = [v12 clientID];

  if (v22)
  {
    v23 = _AAUILogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [AAUIDeviceLocatorConfirmationUtilities _authContextForPresentingVC:v12 navController:v23 theftAndLossViewControllerAvailable:? context:?];
    }

    v24 = [v12 clientID];
    [v16 setAppProvidedContext:v24];
  }

  if (+[AAUIFeatureFlags isSignOutRedesignEnabled])
  {
    v25 = MEMORY[0x1E69DCAB8];
    v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v27 = [v25 imageNamed:@"AppleAccount_Icon_Blue" inBundle:v26];

    v28 = UIImagePNGRepresentation(v27);
    [v16 setDisplayImageData:v28];

    v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"CONFIRM_PASSWORD" value:&stru_1F447F790 table:@"Localizable"];
    [v16 setTitle:v30];
  }

  return v16;
}

+ (void)showDisableAlertForContext:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 presentingViewController];
  v9 = objc_alloc_init(MEMORY[0x1E69DCCD8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke;
  aBlock[3] = &unk_1E820BD40;
  v10 = v6;
  v31 = v10;
  v35 = a1;
  v11 = v8;
  v32 = v11;
  v12 = v9;
  v33 = v12;
  v13 = v7;
  v34 = v13;
  v14 = _Block_copy(aBlock);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if ([a1 shouldShowTnLCoverageLoss] && (objc_msgSend(v10, "skipTnLScreen") & 1) == 0)
  {
    v15 = objc_alloc_init(AAUITheftAndLossCoverageProvider);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_5;
    v24[3] = &unk_1E820B820;
    v25 = v14;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_6;
    v21[3] = &unk_1E820B780;
    v22 = v12;
    v23 = v13;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7;
    v16[3] = &unk_1E820BD68;
    v19 = v25;
    v20 = &v26;
    v17 = v11;
    v18 = v22;
    [(AAUITheftAndLossCoverageProvider *)v15 createTnLDisclaimerViewControllerWithConfirmActionHandler:v24 cancelActionHandler:v21 completion:v16];
  }

  else
  {
    (*(v14 + 2))(v14, *(v27 + 24));
  }

  _Block_object_dispose(&v26, 8);
}

void __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] account];
  v5 = [a1[8] _authContextForPresentingVC:a1[5] navController:a1[6] theftAndLossViewControllerAvailable:a2 context:a1[4]];
  if (!_authController)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v7 = _authController;
    _authController = v6;
  }

  v8 = MEMORY[0x1E6985DB0];
  v9 = *MEMORY[0x1E698BA30];
  v10 = [v4 aa_altDSID];
  v11 = [a1[4] telemetryFlowID];
  v12 = [v8 analyticsEventWithName:v9 altDSID:v10 flowID:v11];

  v13 = _authController;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_2;
  v17[3] = &unk_1E820BD18;
  v14 = a1[8];
  v18 = v12;
  v24 = v14;
  v19 = a1[6];
  v23 = a1[7];
  v25 = a2;
  v20 = a1[4];
  v21 = a1[5];
  v22 = v4;
  v15 = v4;
  v16 = v12;
  [v13 authenticateWithContext:v5 completion:v17];
}

void __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _authController;
  _authController = 0;

  if (v6)
  {
    [*(a1 + 32) setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6985E40]];
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
    if ([v6 ak_isUserCancelError])
    {
      v8 = [MEMORY[0x1E698B810] reporter];
      [v8 sendEvent:*(a1 + 32)];

      [*(a1 + 80) dismissViewController:*(a1 + 40)];
      v9 = *(*(a1 + 72) + 16);
LABEL_10:
      v9();
      goto LABEL_11;
    }

    v12 = [v6 ak_isAuthenticationErrorWithCode:-7005];
    v13 = [MEMORY[0x1E698B810] reporter];
    [v13 sendEvent:*(a1 + 32)];

    if (!v12)
    {
      [*(a1 + 80) dismissViewController:*(a1 + 40)];
      v9 = *(*(a1 + 72) + 16);
      goto LABEL_10;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_3;
    v14[3] = &unk_1E820BCF0;
    v19 = *(a1 + 80);
    v15 = *(a1 + 40);
    v18 = *(a1 + 72);
    v20 = *(a1 + 88);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }

  else
  {
    if (([*(a1 + 48) keepAlertVisible] & 1) == 0)
    {
      [*(a1 + 80) dismissViewController:*(a1 + 40)];
    }

    [*(a1 + 32) setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6985E40]];
    v10 = [MEMORY[0x1E698B810] reporter];
    [v10 sendEvent:*(a1 + 32)];

    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
    [*(a1 + 64) aa_setPassword:v11];
    [*(a1 + 80) _performFMIPAuthenticationForContext:*(a1 + 48) completion:*(a1 + 72)];
  }

LABEL_11:
}

void __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"VERIFICATION_FAILED_TITLE" value:&stru_1F447F790 table:@"Localizable"];

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BAD_NETWORK_ALERT_MESSAGE_REBRAND" value:&stru_1F447F790 table:@"Localizable"];

  v6 = MEMORY[0x1E69DC650];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_4;
  v12[3] = &unk_1E820BCC8;
  v15 = *(a1 + 64);
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  v9 = [v6 alertWithTitle:v3 message:v5 buttonTitle:v8 actionHandler:v12];

  if ([*(a1 + 64) shouldShowTnLCoverageLoss] && *(a1 + 72) == 1 && (objc_msgSend(*(a1 + 40), "skipTnLScreen") & 1) == 0)
  {
    v10 = [*(a1 + 32) topViewController];

    if (v10)
    {
      v11 = [*(a1 + 32) topViewController];
      [v11 presentViewController:v9 animated:0 completion:0];
    }
  }

  else
  {
    [*(a1 + 48) presentViewController:v9 animated:0 completion:0];
  }
}

uint64_t __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 48) dismissViewController:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7_cold_4();
    }

    goto LABEL_12;
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (!*(a1 + 32))
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7_cold_3();
    }

LABEL_12:

    (*(*(a1 + 48) + 16))();
    goto LABEL_17;
  }

  objc_opt_class();
  v7 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    if (v7)
    {
      v8 = _AAUILogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7_cold_1();
      }

      [v7 pushViewController:v5 animated:1];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7_cold_2();
  }

  v11 = *(a1 + 40);
  v13[0] = v5;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v11 setViewControllers:v12 animated:1];

  [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
LABEL_17:
}

+ (void)_performFMIPAuthenticationForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E698B8B0]);
  v9 = [v6 account];
  v10 = [v8 initWithAccount:v9];

  v11 = [v6 customRequestHeaders];
  [v10 setCustomHeaders:v11];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__AAUIDeviceLocatorConfirmationUtilities__performFMIPAuthenticationForContext_completion___block_invoke;
  v14[3] = &unk_1E820BD90;
  v16 = v7;
  v17 = a1;
  v15 = v6;
  v12 = v7;
  v13 = v6;
  [v10 performRequestWithHandler:v14];
}

void __90__AAUIDeviceLocatorConfirmationUtilities__performFMIPAuthenticationForContext_completion___block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1[6];
  v9 = v6;
  if (v6)
  {
    v8 = [v6 error];
    [v7 _handleFMIPAuthenticationResponse:v9 withError:v8 forContext:a1[4] completion:a1[5]];
  }

  else
  {
    [v7 _handleFMIPAuthenticationResponse:0 withError:a4 forContext:a1[4] completion:a1[5]];
  }
}

+ (void)_handleFMIPAuthenticationResponse:(id)a3 withError:(id)a4 forContext:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10 || v11 || ([v10 error], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Failed to obtain an FMiP wipe token. Response: %@ and Error: %@", buf, 0x16u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__AAUIDeviceLocatorConfirmationUtilities__handleFMIPAuthenticationResponse_withError_forContext_completion___block_invoke;
    aBlock[3] = &unk_1E820BDB8;
    v23 = a1;
    v16 = v12;
    v21 = v16;
    v22 = v13;
    v17 = _Block_copy(aBlock);
    v18 = [v16 account];
    [a1 _showErrorUserNotificationForAccount:v18 error:v11 withCompletion:v17];
  }

  else
  {
    v19 = _AAUILogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "FMIPAuthenticationRequest succeeded!", buf, 2u);
    }

    (*(v13 + 2))(v13, 0, v10);
  }
}

uint64_t __108__AAUIDeviceLocatorConfirmationUtilities__handleFMIPAuthenticationResponse_withError_forContext_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 || +[AAUIFeatureFlags isSignOutRedesignEnabled])
  {
    v4 = *(a1[5] + 16);

    return v4();
  }

  else
  {
    v7 = a1[5];
    v6 = a1[6];
    v8 = a1[4];

    return [v6 showDisableAlertForContext:v8 withCompletion:v7];
  }
}

+ (void)_showErrorUserNotificationForAccount:(id)a3 error:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[AAUIFeatureFlags isSignOutRedesignEnabled])
  {
    v11 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v12 localizedStringForKey:@"CANCEL" value:&stru_1F447F790 table:@"Localizable"];
  }

  v13 = +[AAUIFeatureFlags isSignOutRedesignEnabled];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = v14;
  if (v13)
  {
    v16 = @"OK";
  }

  else
  {
    v16 = @"RETRY";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_1F447F790 table:@"Localizable"];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __100__AAUIDeviceLocatorConfirmationUtilities__showErrorUserNotificationForAccount_error_withCompletion___block_invoke;
  v23[3] = &unk_1E820BDE0;
  v24 = v9;
  v25 = v8;
  v26 = v11;
  v27 = v17;
  v28 = v10;
  v29 = a1;
  v18 = v10;
  v19 = v17;
  v20 = v11;
  v21 = v8;
  v22 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v23);
}

void __100__AAUIDeviceLocatorConfirmationUtilities__showErrorUserNotificationForAccount_error_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E698B9E0];
  v4 = [*(a1 + 72) _titleForError:*(a1 + 32) account:*(a1 + 40)];
  v3 = [*(a1 + 72) _messageForError:*(a1 + 32) account:*(a1 + 40)];
  [v2 showUserNotificationWithTitle:v4 message:v3 cancelButtonTitle:*(a1 + 48) otherButtonTitle:*(a1 + 56) withCompletionBlock:*(a1 + 64)];
}

+ (id)_titleForError:(id)a3 account:(id)a4
{
  v4 = [a3 code];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4 == 401)
  {
    v7 = @"MOBILEME_AUTHENTICATION_FAILED_MESSAGE_REBRAND";
  }

  else
  {
    v7 = @"VERIFICATION_FAILED_TITLE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F447F790 table:@"Localizable"];

  return v8;
}

+ (id)_messageForError:(id)a3 account:(id)a4
{
  v4 = a3;
  if ([v4 code] == 401)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"FIND_MY_AUTHENTICATION_ERROR_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  }

  else
  {
    v6 = [v4 localizedDescription];
  }

  return v6;
}

+ (void)dismissViewController:(id)a3
{
  v4 = a3;
  if ([a1 shouldShowTnLCoverageLoss])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__AAUIDeviceLocatorConfirmationUtilities_dismissViewController___block_invoke;
    block[3] = &unk_1E820B8F0;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [AAUIDeviceLocatorConfirmationUtilities _authContextForPresentingVC:v0 navController:? theftAndLossViewControllerAvailable:? context:?];
}

+ (void)_authContextForPresentingVC:(void *)a1 navController:(NSObject *)a2 theftAndLossViewControllerAvailable:context:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 clientID];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "AAUIDeviceLocatorConfirmationUtilitiesContext clientID: %@", &v4, 0xCu);
}

@end