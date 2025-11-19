@interface LAPSPasscodeChangeUICoordinator
- (LAPSPasscodeChangeUICoordinator)initWithParentVC:(id)a3;
- (LAPSPasscodeChangeUICoordinator)initWithParentVC:(id)a3 options:(id)a4;
- (LAPSPasscodeChangeUIDelegate)delegate;
- (id)_localizedDescriptionFromError:(id)a3;
- (id)_subPromptForRequest:(id)a3;
- (id)fetchOldPasscodeCoordinator:(id)a3 backoffMessageForTimeout:(int64_t)a4;
- (void)_configurePasscodeSubPromptForConfig:(id)a3 request:(id)a4;
- (void)_configureVerifySubPromptForConfig:(id)a3 request:(id)a4;
- (void)_presentPasscodeDoesNotMeetRequirementsError:(id)a3 completion:(id)a4;
- (void)_presentPasscodeIsTooSimpleErrorWithCompletion:(id)a3;
- (void)_presentPasscodesDidNotMatchErrorWithCompletion:(id)a3;
- (void)containerViewControllerViewDidDisappear:(id)a3;
- (void)deactivateWithCompletion:(id)a3;
- (void)fetchNewPasscode:(id)a3 completion:(id)a4;
- (void)fetchNewPasscodeCoordinator:(id)a3 verifyPasscode:(id)a4;
- (void)fetchNewPasscodeCoordinator:(id)a3 verifyPasscode:(id)a4 matchesPasscode:(id)a5;
- (void)fetchOldPasscode:(id)a3 completion:(id)a4;
- (void)fetchOldPasscodeCoordinator:(id)a3 verifyPasscode:(id)a4;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 button:(id)a5 completion:(id)a6;
@end

@implementation LAPSPasscodeChangeUICoordinator

- (LAPSPasscodeChangeUICoordinator)initWithParentVC:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LAPSPasscodeChangeUICoordinatorOptions);
  v6 = [(LAPSPasscodeChangeUICoordinator *)self initWithParentVC:v4 options:v5];

  return v6;
}

- (LAPSPasscodeChangeUICoordinator)initWithParentVC:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v16.receiver = self;
  v16.super_class = LAPSPasscodeChangeUICoordinator;
  v8 = [(LAPSPasscodeChangeUICoordinator *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_options, a4);
    v10 = [LAPSPasscodeChangeUIPresentationController alloc];
    v15 = v9;
    v11 = objc_alloc_init(MEMORY[0x277D241A8]);
    [v11 setDelegate:v15];
    v12 = [(LAPSPasscodeChangeUIPresentationController *)v10 initWithParentVC:v6 containerVC:v11];
    presentationController = v15->_presentationController;
    v15->_presentationController = v12;
  }

  return v9;
}

id __60__LAPSPasscodeChangeUICoordinator_initWithParentVC_options___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D241A8]);
  [v2 setDelegate:*(a1 + 32)];

  return v2;
}

- (void)fetchOldPasscode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = objc_alloc_init(LAPSFetchOldPasscodeCoordinator);
  [(LAPSFetchOldPasscodeCoordinator *)v8 setDelegate:self];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__LAPSPasscodeChangeUICoordinator_fetchOldPasscode_completion___block_invoke;
  v17[3] = &unk_278A65B60;
  v17[4] = self;
  v18 = v6;
  v9 = v6;
  v10 = __63__LAPSPasscodeChangeUICoordinator_fetchOldPasscode_completion___block_invoke(v17);
  presentationController = self->_presentationController;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__LAPSPasscodeChangeUICoordinator_fetchOldPasscode_completion___block_invoke_2;
  v14[3] = &unk_278A65B88;
  v15 = v8;
  v16 = v7;
  v12 = v8;
  v13 = v7;
  [(LAPSFetchOldPasscodeCoordinator *)v12 startWithInput:v10 presentationController:presentationController completion:v14];
}

LAPSFetchOldPasscodeCoordinatorInput *__63__LAPSPasscodeChangeUICoordinator_fetchOldPasscode_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSFetchOldPasscodeCoordinatorInput);
  v3 = [*(*(a1 + 32) + 16) title];
  if (v3)
  {
    [(LAPSFetchOldPasscodeCoordinatorInput *)v2 setTitle:v3];
  }

  else
  {
    v4 = +[LALocalizedString passcodeChangeTitle];
    [(LAPSFetchOldPasscodeCoordinatorInput *)v2 setTitle:v4];
  }

  v5 = [*(*(a1 + 32) + 16) oldPasscodePrompt];
  if (v5)
  {
    [(LAPSFetchOldPasscodeCoordinatorInput *)v2 setPrompt:v5];
  }

  else
  {
    v6 = +[LALocalizedString passcodeChangeOldPasscode];
    [(LAPSFetchOldPasscodeCoordinatorInput *)v2 setPrompt:v6];
  }

  v7 = [*(*(a1 + 32) + 16) oldPasscodeSubPrompt];
  [(LAPSFetchOldPasscodeCoordinatorInput *)v2 setSubPrompt:v7];

  v8 = +[LALocalizedString passcodeChangeNext];
  [(LAPSFetchOldPasscodeCoordinatorInput *)v2 setNextButton:v8];

  -[LAPSFetchOldPasscodeCoordinatorInput setBackoffTimeout:](v2, "setBackoffTimeout:", [*(a1 + 40) backoffTimeout]);
  if ([*(a1 + 40) failedAttempts] >= 1)
  {
    v9 = +[LALocalizedString passcodeChangeErrorInvalidPasscodeWithFailedAttemptsCount:](LALocalizedString, "passcodeChangeErrorInvalidPasscodeWithFailedAttemptsCount:", [*(a1 + 40) failedAttempts]);
    [(LAPSFetchOldPasscodeCoordinatorInput *)v2 setErrorMessage:v9];
  }

  v10 = [*(a1 + 40) passcodeType];
  [(LAPSFetchOldPasscodeCoordinatorInput *)v2 setPasscodeType:v10];

  return v2;
}

void __63__LAPSPasscodeChangeUICoordinator_fetchOldPasscode_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!(v10 | v5))
  {
    __63__LAPSPasscodeChangeUICoordinator_fetchOldPasscode_completion___block_invoke_2_cold_1();
  }

  v6 = *(a1 + 40);
  if (v5)
  {
    (*(v6 + 16))(v6, 0, v5);
  }

  else
  {
    v7 = [LAPSFetchOldPasscodeResult alloc];
    v8 = [v10 passcode];
    v9 = [(LAPSFetchOldPasscodeResult *)v7 initWithPasscode:v8];
    (*(v6 + 16))(v6, v9, 0);
  }
}

- (void)fetchNewPasscode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = objc_alloc_init(LAPSFetchNewPasscodeCoordinator);
  [(LAPSFetchNewPasscodeCoordinator *)v8 setDelegate:self];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__LAPSPasscodeChangeUICoordinator_fetchNewPasscode_completion___block_invoke;
  v17[3] = &unk_278A65BB0;
  v17[4] = self;
  v18 = v6;
  v9 = v6;
  v10 = __63__LAPSPasscodeChangeUICoordinator_fetchNewPasscode_completion___block_invoke(v17);
  presentationController = self->_presentationController;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__LAPSPasscodeChangeUICoordinator_fetchNewPasscode_completion___block_invoke_2;
  v14[3] = &unk_278A65BD8;
  v15 = v8;
  v16 = v7;
  v12 = v8;
  v13 = v7;
  [(LAPSFetchNewPasscodeCoordinator *)v12 startWithInput:v10 presentationController:presentationController completion:v14];
}

LAPSFetchNewPasscodeCoordinatorInput *__63__LAPSPasscodeChangeUICoordinator_fetchNewPasscode_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSFetchNewPasscodeCoordinatorInput);
  v3 = [*(*(a1 + 32) + 16) title];
  if (v3)
  {
    [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setTitle:v3];
  }

  else
  {
    v4 = +[LALocalizedString passcodeChangeTitle];
    [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setTitle:v4];
  }

  v5 = +[LALocalizedString cancel];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setPasscodeOptionsCancelTitle:v5];

  v6 = [*(*(a1 + 32) + 16) passcodePrompt];
  if (v6)
  {
    [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setPrompt:v6];
  }

  else
  {
    v7 = +[LALocalizedString passcodeChangeNewPasscode];
    [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setPrompt:v7];
  }

  [*(a1 + 32) _configurePasscodeSubPromptForConfig:v2 request:*(a1 + 40)];
  v8 = +[LALocalizedString passcodeChangeNext];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setNextButton:v8];

  v9 = [*(a1 + 40) passcodeType];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setPasscodeType:v9];

  v10 = +[LALocalizedString passcodeChangeOptions];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setPasscodeOptionsTitle:v10];

  v11 = +[LALocalizedString passcodeRecoveryTitle];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setPasscodeRecoveryTitle:v11];

  v12 = +[LALocalizedString passcodeRecoveryEnabledTitle];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setPasscodeRecoveryEnabledTitle:v12];

  v13 = +[LALocalizedString passcodeRecoveryDisabledTitle];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setPasscodeRecoveryDisabledTitle:v13];

  v14 = [*(a1 + 40) allowedPasscodeTypes];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setAllowedPasscodeTypes:v14];

  -[LAPSFetchNewPasscodeCoordinatorInput setIsPasscodeRecoveryOptionVisible:](v2, "setIsPasscodeRecoveryOptionVisible:", [*(*(a1 + 32) + 16) isPasscodeRecoveryOptionVisible]);
  -[LAPSFetchNewPasscodeCoordinatorInput setIsPasscodeRecoveryMessageHidden:](v2, "setIsPasscodeRecoveryMessageHidden:", [*(*(a1 + 32) + 16) isPasscodeRecoveryMessageHidden]);
  -[LAPSFetchNewPasscodeCoordinatorInput setIsPasscodeRecoverySupported:](v2, "setIsPasscodeRecoverySupported:", [*(a1 + 40) isPasscodeRecoverySupported]);
  -[LAPSFetchNewPasscodeCoordinatorInput setIsPasscodeRecoveryRestricted:](v2, "setIsPasscodeRecoveryRestricted:", [*(a1 + 40) isPasscodeRecoveryRestricted]);
  -[LAPSFetchNewPasscodeCoordinatorInput setIsPasscodeRecoveryEnabled:](v2, "setIsPasscodeRecoveryEnabled:", [*(a1 + 40) isPasscodeRecoveryEnabled]);
  v15 = +[LALocalizedString passcodeChangeNewPasscodeVerify];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setVerifyPrompt:v15];

  [*(a1 + 32) _configureVerifySubPromptForConfig:v2 request:*(a1 + 40)];
  v16 = +[LALocalizedString passcodeChangeDone];
  [(LAPSFetchNewPasscodeCoordinatorInput *)v2 setVerifyNextButton:v16];

  return v2;
}

void __63__LAPSPasscodeChangeUICoordinator_fetchNewPasscode_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!(v10 | v5))
  {
    __63__LAPSPasscodeChangeUICoordinator_fetchNewPasscode_completion___block_invoke_2_cold_1();
  }

  v6 = *(a1 + 40);
  if (v5)
  {
    (*(v6 + 16))(v6, 0, v5);
  }

  else
  {
    v7 = [LAPSFetchNewPasscodeResult alloc];
    v8 = [v10 passcode];
    v9 = -[LAPSFetchNewPasscodeResult initWithPasscode:isPasscodeRecoveryEnabled:](v7, "initWithPasscode:isPasscodeRecoveryEnabled:", v8, [v10 isPasscodeRecoveryEnabled]);
    (*(v6 + 16))(v6, v9, 0);
  }
}

- (void)deactivateWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(LAPSPasscodeChangeUIPresentationController *)self->_presentationController dismissWithCompletion:v4];
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 button:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v14 = [(LAPSPasscodeChangeUICoordinator *)self _alertControllerWithTitle:v13 message:v12];

  v15 = MEMORY[0x277D750F8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__LAPSPasscodeChangeUICoordinator_presentAlertWithTitle_message_button_completion___block_invoke;
  v18[3] = &unk_278A65C00;
  v19 = v10;
  v16 = v10;
  v17 = [v15 actionWithTitle:v11 style:1 handler:v18];

  [v14 addAction:v17];
  [(LAPSPasscodeChangeUIPresentationController *)self->_presentationController presentAlertVC:v14];
}

- (void)fetchOldPasscodeCoordinator:(id)a3 verifyPasscode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LAPSPasscodeChangeUICoordinator *)self delegate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__LAPSPasscodeChangeUICoordinator_fetchOldPasscodeCoordinator_verifyPasscode___block_invoke;
  v11[3] = &unk_278A65C50;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 passcodeChangeUI:self verifyPasscode:v9 completion:v11];
}

void __78__LAPSPasscodeChangeUICoordinator_fetchOldPasscodeCoordinator_verifyPasscode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!v3)
  {
    [*(a1 + 32) finishWithPasscode:*(a1 + 40)];
    goto LABEL_16;
  }

  v4 = [v3 domain];
  if (![v4 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"])
  {

    goto LABEL_13;
  }

  v5 = [v3 code];

  if (v5 != 4)
  {
LABEL_13:
    [*(a1 + 32) finishWithError:v3];
    goto LABEL_16;
  }

  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"LAPSFailedAttemptsErrorKey"];
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_284B876C0;
  }

  v9 = [v7 integerValue];

  v10 = [v3 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"LAPSBackOffTimeoutErrorKey"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &unk_284B876C0;
  }

  v14 = v13;

  if (v9 < 1)
  {
    v15 = &stru_284B7B4C0;
  }

  else
  {
    v15 = [LALocalizedString passcodeChangeErrorInvalidPasscodeWithFailedAttemptsCount:v9];
  }

  v16 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__LAPSPasscodeChangeUICoordinator_fetchOldPasscodeCoordinator_verifyPasscode___block_invoke_20;
  v18[3] = &unk_278A65C28;
  v19 = v14;
  v20 = v16;
  v17 = v14;
  [v16 showPasscodeValidationError:v15 completion:v18];

LABEL_16:
}

uint64_t __78__LAPSPasscodeChangeUICoordinator_fetchOldPasscodeCoordinator_verifyPasscode___block_invoke_20(uint64_t a1)
{
  result = [*(a1 + 32) integerValue];
  if (result >= 1)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) integerValue];

    return [v3 startBackoffWithTimeout:v4];
  }

  return result;
}

- (id)fetchOldPasscodeCoordinator:(id)a3 backoffMessageForTimeout:(int64_t)a4
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:vcvtpd_s64_f64(a4 / 60.0)];
  v5 = [v4 integerValue];

  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return [LALocalizedString passcodeChangeBackoffMessage:v6];
}

- (void)fetchNewPasscodeCoordinator:(id)a3 verifyPasscode:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(LAPSPasscodeChangeUICoordinator *)self delegate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__LAPSPasscodeChangeUICoordinator_fetchNewPasscodeCoordinator_verifyPasscode___block_invoke;
  v11[3] = &unk_278A65CA0;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 passcodeChangeUI:self verifyNewPasscode:v10 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __78__LAPSPasscodeChangeUICoordinator_fetchNewPasscodeCoordinator_verifyPasscode___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (!v3)
    {
      [a1[4] continueWithPasscode:a1[5]];
      goto LABEL_15;
    }

    v5 = [v3 domain];
    if ([v5 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"])
    {
      v6 = [v3 code];

      if (v6 == 9)
      {
        goto LABEL_14;
      }

      v7 = [v3 domain];
      if ([v7 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"])
      {
        v8 = [v3 code];

        if (v8 == 6)
        {
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __78__LAPSPasscodeChangeUICoordinator_fetchNewPasscodeCoordinator_verifyPasscode___block_invoke_2;
          v14[3] = &unk_278A65908;
          v15 = a1[4];
          [WeakRetained _presentPasscodeDoesNotMeetRequirementsError:v3 completion:v14];

          goto LABEL_15;
        }
      }

      else
      {
      }

      v5 = [v3 domain];
      if ([v5 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"])
      {
        v9 = [v3 code];

        if (v9 == 5)
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __78__LAPSPasscodeChangeUICoordinator_fetchNewPasscodeCoordinator_verifyPasscode___block_invoke_3;
          v10[3] = &unk_278A65C78;
          objc_copyWeak(&v13, a1 + 6);
          v11 = a1[4];
          v12 = a1[5];
          [WeakRetained _presentPasscodeIsTooSimpleErrorWithCompletion:v10];

          objc_destroyWeak(&v13);
          goto LABEL_15;
        }

LABEL_14:
        [a1[4] finishWithError:v3];
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __78__LAPSPasscodeChangeUICoordinator_fetchNewPasscodeCoordinator_verifyPasscode___block_invoke_3(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = *(a1 + 32);
    if (a2)
    {
      [v5 continueWithPasscode:*(a1 + 40)];
    }

    else
    {
      [v5 clear];
    }

    WeakRetained = v6;
  }
}

- (void)fetchNewPasscodeCoordinator:(id)a3 verifyPasscode:(id)a4 matchesPasscode:(id)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isEqual:a5])
  {
    [v8 finishWithPasscode:v9];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__LAPSPasscodeChangeUICoordinator_fetchNewPasscodeCoordinator_verifyPasscode_matchesPasscode___block_invoke;
    v10[3] = &unk_278A65908;
    v11 = v8;
    [(LAPSPasscodeChangeUICoordinator *)self _presentPasscodesDidNotMatchErrorWithCompletion:v10];
  }
}

- (void)containerViewControllerViewDidDisappear:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did disappear", &v8, 0xCu);
  }

  v6 = [(LAPSPasscodeChangeUICoordinator *)self delegate];
  [v6 passcodeChangeUIDidDisappear:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_configurePasscodeSubPromptForConfig:(id)a3 request:(id)a4
{
  v9 = a4;
  v6 = a3;
  if ([(LAPSPasscodeChangeUICoordinator *)self _shouldUseFooterMessages])
  {
    v7 = +[LALocalizedString passcodeRecoveryRecoveryEnabled];
    [v6 setFooterRecoveryEnabled:v7];

    v8 = +[LALocalizedString passcodeRecoveryRecoveryDisabled];
    [v6 setFooterRecoveryDisabled:v8];
  }

  else
  {
    v8 = [(LAPSPasscodeChangeUICoordinator *)self _subPromptForRequest:v9];
    [v6 setSubPrompt:v8];
  }
}

- (void)_configureVerifySubPromptForConfig:(id)a3 request:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(LAPSPasscodeChangeUICoordinator *)self _shouldUseFooterMessages])
  {
    v7 = [(LAPSPasscodeChangeUICoordinator *)self _subPromptForRequest:v6];
    [v8 setVerifySubPrompt:v7];
  }
}

- (id)_subPromptForRequest:(id)a3
{
  v4 = a3;
  if ([v4 isPasscodeSet] && objc_msgSend(v4, "isPasscodeRecoveryEnabled"))
  {
    v5 = +[LALocalizedString passcodeRecoveryRecoveryEnabled];
  }

  else
  {
    v6 = [(LAPSPasscodeChangeUICoordinatorOptions *)self->_options passcodeSubPrompt];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[LALocalizedString passcodeChangeSubPrompt];
    }

    v5 = v8;
  }

  return v5;
}

- (void)_presentPasscodeIsTooSimpleErrorWithCompletion:(id)a3
{
  v4 = a3;
  presentationController = self->_presentationController;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __82__LAPSPasscodeChangeUICoordinator__presentPasscodeIsTooSimpleErrorWithCompletion___block_invoke;
  v11 = &unk_278A65CC8;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = __82__LAPSPasscodeChangeUICoordinator__presentPasscodeIsTooSimpleErrorWithCompletion___block_invoke(&v8);
  [(LAPSPasscodeChangeUIPresentationController *)presentationController presentAlertVC:v7, v8, v9, v10, v11, v12];
}

id __82__LAPSPasscodeChangeUICoordinator__presentPasscodeIsTooSimpleErrorWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[LALocalizedString passcodeChangeErrorPasscodeIsTooEasyTitle];
  v4 = +[LALocalizedString passcodeChangeErrorPasscodeIsTooEasyText];
  v5 = [v2 _alertControllerWithTitle:v3 message:v4];

  v6 = MEMORY[0x277D750F8];
  v7 = +[LALocalizedString passcodeChangeUseAnyway];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__LAPSPasscodeChangeUICoordinator__presentPasscodeIsTooSimpleErrorWithCompletion___block_invoke_2;
  v18[3] = &unk_278A65C00;
  v19 = *(a1 + 40);
  v8 = [v6 actionWithTitle:v7 style:0 handler:v18];
  [v5 addAction:v8];

  v9 = MEMORY[0x277D750F8];
  v10 = +[LALocalizedString passcodeChangeUseDifferentPasscode];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __82__LAPSPasscodeChangeUICoordinator__presentPasscodeIsTooSimpleErrorWithCompletion___block_invoke_3;
  v16 = &unk_278A65C00;
  v17 = *(a1 + 40);
  v11 = [v9 actionWithTitle:v10 style:1 handler:&v13];
  [v5 addAction:{v11, v13, v14, v15, v16}];

  return v5;
}

- (void)_presentPasscodeDoesNotMeetRequirementsError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  presentationController = self->_presentationController;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__LAPSPasscodeChangeUICoordinator__presentPasscodeDoesNotMeetRequirementsError_completion___block_invoke;
  v12[3] = &unk_278A65CF0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = __91__LAPSPasscodeChangeUICoordinator__presentPasscodeDoesNotMeetRequirementsError_completion___block_invoke(v12);
  [(LAPSPasscodeChangeUIPresentationController *)presentationController presentAlertVC:v11];
}

id __91__LAPSPasscodeChangeUICoordinator__presentPasscodeDoesNotMeetRequirementsError_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _localizedDescriptionFromError:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = +[LALocalizedString passcodeChangeErrorPasscodeDoesNotMeetRequirementsTitle];
  if (v2)
  {
    v5 = [v3 _alertControllerWithTitle:v4 message:v2];
  }

  else
  {
    v6 = +[LALocalizedString passcodeChangeErrorPasscodeDoesNotMeetRequirementsText];
    v5 = [v3 _alertControllerWithTitle:v4 message:v6];
  }

  v7 = MEMORY[0x277D750F8];
  v8 = +[LALocalizedString passcodeChangeUseDifferentPasscode];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__LAPSPasscodeChangeUICoordinator__presentPasscodeDoesNotMeetRequirementsError_completion___block_invoke_2;
  v11[3] = &unk_278A65C00;
  v12 = *(a1 + 48);
  v9 = [v7 actionWithTitle:v8 style:0 handler:v11];
  [v5 addAction:v9];

  return v5;
}

- (void)_presentPasscodesDidNotMatchErrorWithCompletion:(id)a3
{
  v4 = a3;
  presentationController = self->_presentationController;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __83__LAPSPasscodeChangeUICoordinator__presentPasscodesDidNotMatchErrorWithCompletion___block_invoke;
  v11 = &unk_278A65CC8;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = __83__LAPSPasscodeChangeUICoordinator__presentPasscodesDidNotMatchErrorWithCompletion___block_invoke(&v8);
  [(LAPSPasscodeChangeUIPresentationController *)presentationController presentAlertVC:v7, v8, v9, v10, v11, v12];
}

id __83__LAPSPasscodeChangeUICoordinator__presentPasscodesDidNotMatchErrorWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[LALocalizedString passcodeChangeErrorNewPasscodeMismatchTitle];
  v4 = +[LALocalizedString passcodeChangeErrorNewPasscodeMismatchText];
  v5 = [v2 _alertControllerWithTitle:v3 message:v4];

  v6 = MEMORY[0x277D750F8];
  v7 = +[LALocalizedString tryAgain];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__LAPSPasscodeChangeUICoordinator__presentPasscodesDidNotMatchErrorWithCompletion___block_invoke_2;
  v10[3] = &unk_278A65C00;
  v11 = *(a1 + 40);
  v8 = [v6 actionWithTitle:v7 style:0 handler:v10];
  [v5 addAction:v8];

  return v5;
}

- (id)_localizedDescriptionFromError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 length])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return v7;
}

- (LAPSPasscodeChangeUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end