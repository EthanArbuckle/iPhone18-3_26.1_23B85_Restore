@interface AAUIDTOHelper
+ (BOOL)_shouldAllowOpForRatchetState:(id)state;
- (AAUIDTOHelper)initWithDTOController:(id)controller;
- (id)_makeOpNotAllowedAlertForAddCustodian:(BOOL)custodian;
- (id)makeGenericRatchetFailedAlert;
- (id)makeRatchetContextWithPresentationContext:(id)context DTOContextType:(int64_t)type fallbackToNoAuth:(BOOL)auth notInteractive:(BOOL)interactive;
- (void)shouldAllowOpForContext:(id)context completion:(id)completion;
@end

@implementation AAUIDTOHelper

- (AAUIDTOHelper)initWithDTOController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AAUIDTOHelper;
  v6 = [(AAUIDTOHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

+ (BOOL)_shouldAllowOpForRatchetState:(id)state
{
  stateCopy = state;
  v4 = [stateCopy rawState] == 3 || objc_msgSend(stateCopy, "rawState") == 4;

  return v4;
}

- (id)makeRatchetContextWithPresentationContext:(id)context DTOContextType:(int64_t)type fallbackToNoAuth:(BOOL)auth notInteractive:(BOOL)interactive
{
  authCopy = auth;
  interactiveCopy = interactive;
  v45[11] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AAE8];
  contextCopy = context;
  v8 = [v7 bundleForClass:objc_opt_class()];
  v40 = [v8 localizedStringForKey:@"BIOMETRIC_RATCHET_FALLBACK_TEXT" value:&stru_1F447F790 table:@"Localizable"];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BIOMETRIC_RATCHET_BEGIN_RATCHET_BODY" value:&stru_1F447F790 table:@"Localizable"];

  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = v11;
  v13 = @"BIOMETRIC_RATCHET_CALLOUT_REASON";
  v14 = @"BIOMETRIC_RATCHET_COUNTDOWN_TEXT";
  v15 = @"BIOMETRIC_RATCHET_BEGIN_RATCHET_TITLE";
  if (type == 2)
  {
    v15 = @"BIOMETRIC_RATCHET_BEGIN_RATCHET_TITLE_DELETE_RC";
    v14 = @"BIOMETRIC_RATCHET_COUNTDOWN_TEXT_DELETE_RC";
    v13 = @"BIOMETRIC_RATCHET_CALLOUT_REASON_DELETE";
  }

  if (type == 1)
  {
    v16 = @"BIOMETRIC_RATCHET_BEGIN_RATCHET_TITLE_ADD_RC";
  }

  else
  {
    v16 = v15;
  }

  if (type == 1)
  {
    v17 = @"BIOMETRIC_RATCHET_COUNTDOWN_TEXT_ADD_RC";
  }

  else
  {
    v17 = v14;
  }

  if (type == 1)
  {
    v18 = @"BIOMETRIC_RATCHET_CALLOUT_REASON_ADD";
  }

  else
  {
    v18 = v13;
  }

  v19 = [v11 localizedStringForKey:v16 value:&stru_1F447F790 table:@"Localizable"];

  v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:v17 value:&stru_1F447F790 table:@"Localizable"];

  v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:v18 value:&stru_1F447F790 table:@"Localizable"];

  v24 = *MEMORY[0x1E698DE18];
  v44[0] = *MEMORY[0x1E698DE30];
  v44[1] = v24;
  v45[0] = v40;
  v45[1] = v23;
  v44[2] = *MEMORY[0x1E698DE20];
  v25 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=accountRecovery"];
  v26 = v25;
  v27 = *MEMORY[0x1E698DE28];
  if (authCopy)
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  v45[2] = v25;
  v45[3] = v28;
  v29 = *MEMORY[0x1E698DE50];
  v44[3] = v27;
  v44[4] = v29;
  v30 = *MEMORY[0x1E698DE48];
  v45[4] = v19;
  v45[5] = v10;
  v31 = *MEMORY[0x1E698DE68];
  v44[5] = v30;
  v44[6] = v31;
  v32 = *MEMORY[0x1E698DE40];
  v45[6] = @"NO";
  v45[7] = v21;
  v33 = *MEMORY[0x1E698DE60];
  v44[7] = v32;
  v44[8] = v33;
  v34 = *MEMORY[0x1E698DE58];
  v45[8] = &stru_1F447F790;
  v45[9] = &stru_1F447F790;
  v35 = *MEMORY[0x1E698DE38];
  v44[9] = v34;
  v44[10] = v35;
  if (interactiveCopy)
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  v45[10] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:11];

  v38 = [objc_alloc(MEMORY[0x1E698DEB0]) initWithAttributes:v37 presentationContext:contextCopy];

  return v38;
}

- (void)shouldAllowOpForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  controller = self->_controller;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__AAUIDTOHelper_shouldAllowOpForContext_completion___block_invoke;
  v11[3] = &unk_1E820D260;
  v12 = contextCopy;
  v13 = completionCopy;
  v9 = contextCopy;
  v10 = completionCopy;
  [(AKBiometricRatchetController *)controller armWithContext:v9 completion:v11];
}

void __52__AAUIDTOHelper_shouldAllowOpForContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __52__AAUIDTOHelper_shouldAllowOpForContext_completion___block_invoke_cold_1(v6, v7);
  }

  if (!v6)
  {
    v9 = [v5 ratchetState];
    if (+[AAUIDTOHelper _shouldAllowOpForRatchetState:](AAUIDTOHelper, "_shouldAllowOpForRatchetState:", v9) || [*(a1 + 32) notInteractive] && objc_msgSend(*(a1 + 32), "fallbackToNoAuth"))
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = *(v10 + 16);
LABEL_13:
        v11();
      }
    }

    else
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        v11 = *(v12 + 16);
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, 0, v6);
  }

LABEL_15:
}

- (id)_makeOpNotAllowedAlertForAddCustodian:(BOOL)custodian
{
  custodianCopy = custodian;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"RATCHET_RC_EDIT_NOT_ALLOWED_ALERT_BUTTON" value:&stru_1F447F790 table:@"Localizable"];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (custodianCopy)
  {
    v7 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"RATCHET_RC_ADD_NOT_ALLOWED_ALERT_TITLE"];
    v8 = [v6 localizedStringForKey:v7 value:&stru_1F447F790 table:@"Localizable"];

    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"RATCHET_RC_ADD_NOT_ALLOWED_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];

    if (([MEMORY[0x1E6985DD8] isVirtualMachine] & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = @"RATCHET_RC_ADD_NOT_ALLOWED_MESSAGE_VM";
  }

  else
  {
    v12 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"RATCHET_RC_DELETE_NOT_ALLOWED_ALERT_TITLE"];
    v8 = [v6 localizedStringForKey:v12 value:&stru_1F447F790 table:@"Localizable"];

    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v13 localizedStringForKey:@"RATCHET_RC_DELETE_NOT_ALLOWED_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];

    if (![MEMORY[0x1E6985DD8] isVirtualMachine])
    {
      goto LABEL_7;
    }

    v11 = @"RATCHET_RC_DELETE_NOT_ALLOWED_MESSAGE_VM";
  }

  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:v11 value:&stru_1F447F790 table:@"Localizable"];

  v10 = v15;
LABEL_7:
  v16 = _AAUILogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(AAUIDTOHelper *)v8 _makeOpNotAllowedAlertForAddCustodian:v10, v16];
  }

  v17 = [MEMORY[0x1E69DC650] alertWithTitle:v8 message:v10 buttonTitle:v5];

  return v17;
}

- (id)makeGenericRatchetFailedAlert
{
  v2 = MEMORY[0x1E69DC650];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RATCHET_RC_EDIT_NOT_ALLOWED_ALERT_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"RATCHET_RC_EDIT_GENERIC_RATCHET_FAILURE_ALERT_DESCRIPTION" value:&stru_1F447F790 table:@"Localizable"];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"RATCHET_RC_EDIT_GENERIC_RATCHET_FAILURE_ALERT_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
  v9 = [v2 alertWithTitle:v4 message:v6 buttonTitle:v8];

  return v9;
}

void __52__AAUIDTOHelper_shouldAllowOpForContext_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Calling armed ratchet error: %@", &v2, 0xCu);
}

- (void)_makeOpNotAllowedAlertForAddCustodian:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1C5355000, log, OS_LOG_TYPE_DEBUG, "title: %@, message: %@", &v3, 0x16u);
}

@end