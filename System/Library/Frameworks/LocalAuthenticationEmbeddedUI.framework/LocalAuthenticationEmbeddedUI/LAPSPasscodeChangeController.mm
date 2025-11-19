@interface LAPSPasscodeChangeController
- (BOOL)_shouldInjectNewPasscode;
- (BOOL)_shouldInjectOldPasscode;
- (LAPSPasscodeChangeController)initWithSystem:(id)a3 authorizer:(id)a4 ui:(id)a5;
- (LAPSPasscodeChangeController)initWithSystem:(id)a3 authorizer:(id)a4 ui:(id)a5 options:(id)a6;
- (void)_checkCanChangePasscodeWithCompletion:(id)a3;
- (void)_extractCSPasscode:(id)a3 completion:(id)a4;
- (void)_extractPasscode:(id)a3 completion:(id)a4;
- (void)_fetchNewPasscode:(id)a3 completion:(id)a4;
- (void)_fetchOldPasscode:(id)a3 completion:(id)a4;
- (void)_injectNewPasscodeWithCompletion:(id)a3;
- (void)_injectOldPasscodeWithCompletion:(id)a3;
- (void)_notifyCompletionWithPasscode:(id)a3 error:(id)a4;
- (void)_presentErrorIfNeed:(id)a3 completion:(id)a4;
- (void)_runWithCompletion:(id)a3;
- (void)cancel;
- (void)passcodeChangeUIDidDisappear:(id)a3;
- (void)startWithCompletion:(id)a3;
@end

@implementation LAPSPasscodeChangeController

- (LAPSPasscodeChangeController)initWithSystem:(id)a3 authorizer:(id)a4 ui:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(LAPSPasscodeChangeControllerOptions);
  v12 = [(LAPSPasscodeChangeController *)self initWithSystem:v10 authorizer:v9 ui:v8 options:v11];

  return v12;
}

- (LAPSPasscodeChangeController)initWithSystem:(id)a3 authorizer:(id)a4 ui:(id)a5 options:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = LAPSPasscodeChangeController;
  v15 = [(LAPSPasscodeChangeController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_system, a3);
    objc_storeStrong(&v16->_authorizer, a4);
    objc_storeStrong(&v16->_ui, a5);
    objc_storeStrong(&v16->_options, a6);
    [(LAPSPasscodeChangeUI *)v16->_ui setDelegate:v16];
  }

  return v16;
}

- (void)startWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x23EE74B30]();
  handler = self->_handler;
  self->_handler = v5;

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __52__LAPSPasscodeChangeController_startWithCompletion___block_invoke;
  v11 = &unk_278A66130;
  objc_copyWeak(&v12, &location);
  v7 = MEMORY[0x23EE74B30](&v8);
  [(LAPSPasscodeChangeController *)self _runWithCompletion:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __52__LAPSPasscodeChangeController_startWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _notifyCompletionWithPasscode:v8 error:v5];
  }
}

- (void)cancel
{
  v3 = +[LAPSErrorBuilder clientCanceledError];
  [(LAPSPasscodeChangeController *)self _notifyCompletionWithPasscode:0 error:v3];
}

- (void)passcodeChangeUIDidDisappear:(id)a3
{
  v4 = [LAPSErrorBuilder systemCanceledErrorWithDebugDescription:@"Service UI was dismissed"];
  [(LAPSPasscodeChangeController *)self _notifyCompletionWithPasscode:0 error:v4];
}

- (void)_notifyCompletionWithPasscode:(id)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_handler == 0;
  v9 = LACLogPasscodeService();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      *buf = 138543362;
      v20 = self;
      _os_log_impl(&dword_238BCD000, v9, OS_LOG_TYPE_INFO, "%{public}@ Ignoring redundant completion call", buf, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 138543362;
      v20 = self;
      _os_log_impl(&dword_238BCD000, v9, OS_LOG_TYPE_INFO, "%{public}@ will notify completion", buf, 0xCu);
    }

    v11 = [self->_handler copy];
    handler = self->_handler;
    self->_handler = 0;

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__LAPSPasscodeChangeController__notifyCompletionWithPasscode_error___block_invoke;
    v14[3] = &unk_278A66180;
    objc_copyWeak(&v18, buf);
    v9 = v11;
    v17 = v9;
    v15 = v6;
    v16 = v7;
    [(LAPSPasscodeChangeController *)self _presentErrorIfNeed:v16 completion:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __68__LAPSPasscodeChangeController__notifyCompletionWithPasscode_error___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[4] dismissUIAfterCompletion])
    {
      v4 = a1[5];
      v5 = a1[4];
      (*(a1[6] + 2))();
      [v3[2] deactivateWithCompletion:&__block_literal_global_7];
    }

    else
    {
      v6 = v3[2];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __68__LAPSPasscodeChangeController__notifyCompletionWithPasscode_error___block_invoke_3;
      v7[3] = &unk_278A66158;
      v10 = a1[6];
      v8 = a1[4];
      v9 = a1[5];
      [v6 deactivateWithCompletion:v7];
    }
  }
}

- (void)_presentErrorIfNeed:(id)a3 completion:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (v14 && (v8 = [LAPSErrorBuilder checkErrorIsInteractive:v14], v6 = v14, v8))
  {
    v9 = [v14 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x277CCA450]];

    v11 = [v14 userInfo];
    v12 = [v11 objectForKey:*MEMORY[0x277CCA498]];

    v13 = +[LALocalizedString ok];
    [(LAPSPasscodeChangeUI *)self->_ui presentAlertWithTitle:v10 message:v12 button:v13 completion:v7];
  }

  else
  {
    (v7)[2](v7, v6);
  }
}

- (void)_runWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__LAPSPasscodeChangeController__runWithCompletion___block_invoke;
  v6[3] = &unk_278A65D18;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(LAPSPasscodeChangeController *)self _checkCanChangePasscodeWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __51__LAPSPasscodeChangeController__runWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v6 = [WeakRetained[1] oldPasscodeRequest];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __51__LAPSPasscodeChangeController__runWithCompletion___block_invoke_2;
      v7[3] = &unk_278A661F8;
      objc_copyWeak(&v9, (a1 + 40));
      v8 = *(a1 + 32);
      [v5 _fetchOldPasscode:v6 completion:v7];

      objc_destroyWeak(&v9);
    }
  }
}

void __51__LAPSPasscodeChangeController__runWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v9 = [WeakRetained[1] newPasscodeRequest];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__LAPSPasscodeChangeController__runWithCompletion___block_invoke_3;
      v10[3] = &unk_278A661D0;
      objc_copyWeak(&v13, (a1 + 40));
      v12 = *(a1 + 32);
      v11 = v5;
      [v8 _fetchNewPasscode:v9 completion:v10];

      objc_destroyWeak(&v13);
    }
  }
}

void __51__LAPSPasscodeChangeController__runWithCompletion___block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      (*(a1[5] + 2))();
    }

    else
    {
      v9 = *(WeakRetained + 1);
      v10 = a1[4];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __51__LAPSPasscodeChangeController__runWithCompletion___block_invoke_4;
      v11[3] = &unk_278A661A8;
      objc_copyWeak(&v15, a1 + 6);
      v14 = a1[5];
      v12 = a1[4];
      v13 = v5;
      [v9 changePasscode:v10 to:v13 completion:v11];

      objc_destroyWeak(&v15);
    }
  }
}

void __51__LAPSPasscodeChangeController__runWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 48);
    if (v8)
    {
      (*(v5 + 16))(*(a1 + 48), 0);
    }

    else
    {
      if ([WeakRetained[4] skipNewPasscode])
      {
        v6 = *(a1 + 32);
      }

      else
      {
        v6 = *(a1 + 40);
      }

      v7 = [v6 passcode];
      (*(v5 + 16))(v5, v7, 0);
    }
  }
}

- (void)_checkCanChangePasscodeWithCompletion:(id)a3
{
  v4 = a3;
  system = self->_system;
  v14 = 0;
  v6 = [(LAPSPasscodeChangeSystem *)system canChangePasscodeWithError:&v14];
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    objc_initWeak(&location, self);
    authorizer = self->_authorizer;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__LAPSPasscodeChangeController__checkCanChangePasscodeWithCompletion___block_invoke;
    v10[3] = &unk_278A65D18;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    [(LACPSAuthorizer *)authorizer authorizeWithCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    if (!v7)
    {
      [LAPSPasscodeChangeController _checkCanChangePasscodeWithCompletion:];
    }

    (*(v4 + 2))(v4, v7);
  }
}

void __70__LAPSPasscodeChangeController__checkCanChangePasscodeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_fetchOldPasscode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(LAPSPasscodeChangeController *)self _shouldInjectOldPasscode])
  {
    [(LAPSPasscodeChangeController *)self _injectOldPasscodeWithCompletion:v7];
  }

  else
  {
    objc_initWeak(&location, self);
    ui = self->_ui;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__LAPSPasscodeChangeController__fetchOldPasscode_completion___block_invoke;
    v9[3] = &unk_278A661F8;
    objc_copyWeak(&v11, &location);
    v10 = v7;
    [(LAPSPasscodeChangeUI *)ui fetchOldPasscode:v6 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __61__LAPSPasscodeChangeController__fetchOldPasscode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    __61__LAPSPasscodeChangeController__fetchOldPasscode_completion___block_invoke_cold_1();
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = *(WeakRetained + 1);
      v11 = [v5 passcode];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__LAPSPasscodeChangeController__fetchOldPasscode_completion___block_invoke_2;
      v12[3] = &unk_278A66220;
      objc_copyWeak(&v15, (a1 + 40));
      v14 = *(a1 + 32);
      v13 = v5;
      [v10 verifyPasscode:v11 completion:v12];

      objc_destroyWeak(&v15);
    }
  }
}

void __61__LAPSPasscodeChangeController__fetchOldPasscode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v5)
    {
      v4 = *(a1 + 32);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_injectOldPasscodeWithCompletion:(id)a3
{
  v4 = a3;
  if (![(LAPSPasscodeChangeController *)self _shouldInjectOldPasscode])
  {
    [LAPSPasscodeChangeController _injectOldPasscodeWithCompletion:];
  }

  if ([(LAPSPasscodeChangeControllerOptions *)self->_options skipOldPasscode])
  {
    v5 = [LAPSFetchOldPasscodeResult alloc];
    v6 = +[LAPSPasscode emptyPasscode];
    v7 = [(LAPSFetchOldPasscodeResult *)v5 initWithPasscode:v6];
    v4[2](v4, v7, 0);
  }

  else
  {
    v8 = [(LAPSPasscodeChangeControllerOptions *)self->_options passcode];

    options = self->_options;
    if (v8)
    {
      v10 = [(LAPSPasscodeChangeControllerOptions *)options passcode];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65__LAPSPasscodeChangeController__injectOldPasscodeWithCompletion___block_invoke;
      v17[3] = &unk_278A66248;
      v18 = v4;
      [(LAPSPasscodeChangeController *)self _extractCSPasscode:v10 completion:v17];

      v11 = v18;
    }

    else
    {
      v12 = [(LAPSPasscodeChangeControllerOptions *)options oldPasscode];

      if (!v12)
      {
        v14 = [LAPSErrorBuilder genericErrorWithDebugDescription:@"Unexpected controller configuration"];
        (v4)[2](v4, 0, v14);

        goto LABEL_9;
      }

      v13 = [(LAPSPasscodeChangeControllerOptions *)self->_options oldPasscode];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__LAPSPasscodeChangeController__injectOldPasscodeWithCompletion___block_invoke_2;
      v15[3] = &unk_278A66248;
      v16 = v4;
      [(LAPSPasscodeChangeController *)self _extractPasscode:v13 completion:v15];

      v11 = v16;
    }
  }

LABEL_9:
}

void __65__LAPSPasscodeChangeController__injectOldPasscodeWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (a3)
  {
    (*(v5 + 16))(v5, 0, a3);
  }

  else
  {
    v6 = [[LAPSFetchOldPasscodeResult alloc] initWithPasscode:v7];
    (*(v5 + 16))(v5, v6, 0);
  }
}

void __65__LAPSPasscodeChangeController__injectOldPasscodeWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (a3)
  {
    (*(v5 + 16))(v5, 0, a3);
  }

  else
  {
    v6 = [[LAPSFetchOldPasscodeResult alloc] initWithPasscode:v7];
    (*(v5 + 16))(v5, v6, 0);
  }
}

- (BOOL)_shouldInjectOldPasscode
{
  if ([(LAPSPasscodeChangeControllerOptions *)self->_options skipOldPasscode])
  {
    return 1;
  }

  v4 = [(LAPSPasscodeChangeControllerOptions *)self->_options oldPasscode];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(LAPSPasscodeChangeControllerOptions *)self->_options passcode];
    v3 = v5 != 0;
  }

  return v3;
}

- (void)_fetchNewPasscode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(LAPSPasscodeChangeController *)self _shouldInjectNewPasscode])
  {
    [(LAPSPasscodeChangeController *)self _injectNewPasscodeWithCompletion:v7];
  }

  else
  {
    objc_initWeak(&location, self);
    ui = self->_ui;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__LAPSPasscodeChangeController__fetchNewPasscode_completion___block_invoke;
    v9[3] = &unk_278A66270;
    objc_copyWeak(&v11, &location);
    v10 = v7;
    [(LAPSPasscodeChangeUI *)ui fetchNewPasscode:v6 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __61__LAPSPasscodeChangeController__fetchNewPasscode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    __61__LAPSPasscodeChangeController__fetchNewPasscode_completion___block_invoke_cold_1();
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = *(WeakRetained + 1);
      v11 = [v5 passcode];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__LAPSPasscodeChangeController__fetchNewPasscode_completion___block_invoke_2;
      v12[3] = &unk_278A66220;
      objc_copyWeak(&v15, (a1 + 40));
      v14 = *(a1 + 32);
      v13 = v5;
      [v10 verifyNewPasscode:v11 completion:v12];

      objc_destroyWeak(&v15);
    }
  }
}

void __61__LAPSPasscodeChangeController__fetchNewPasscode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v8)
    {
      v4 = [v8 domain];
      if ([v4 isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"])
      {
        v5 = [v8 code];

        if (v5 == 5)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      v7 = *(*(a1 + 40) + 16);
      goto LABEL_8;
    }

LABEL_5:
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 16);
LABEL_8:
    v7();
  }
}

- (void)_injectNewPasscodeWithCompletion:(id)a3
{
  v4 = a3;
  if (![(LAPSPasscodeChangeController *)self _shouldInjectNewPasscode])
  {
    [LAPSPasscodeChangeController _injectNewPasscodeWithCompletion:];
  }

  if ([(LAPSPasscodeChangeControllerOptions *)self->_options skipNewPasscode])
  {
    v5 = [LAPSFetchNewPasscodeResult alloc];
    v6 = +[LAPSPasscode emptyPasscode];
    v7 = [(LAPSFetchNewPasscodeResult *)v5 initWithPasscode:v6 isPasscodeRecoveryEnabled:[(LAPSPasscodeChangeControllerOptions *)self->_options skipNewPasscode]^ 1];
    v4[2](v4, v7, 0);
  }

  else
  {
    v8 = [(LAPSPasscodeChangeControllerOptions *)self->_options newPasscode];

    if (v8)
    {
      v9 = [(LAPSPasscodeChangeControllerOptions *)self->_options newPasscode];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __65__LAPSPasscodeChangeController__injectNewPasscodeWithCompletion___block_invoke;
      v11[3] = &unk_278A66298;
      v11[4] = self;
      v12 = v4;
      [(LAPSPasscodeChangeController *)self _extractPasscode:v9 completion:v11];
    }

    else
    {
      v10 = [LAPSErrorBuilder genericErrorWithDebugDescription:@"Unexpected controller configuration"];
      (v4)[2](v4, 0, v10);
    }
  }
}

void __65__LAPSPasscodeChangeController__injectNewPasscodeWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 40);
  if (a3)
  {
    (*(v5 + 16))(*(a1 + 40), 0, a3);
  }

  else
  {
    v6 = -[LAPSFetchNewPasscodeResult initWithPasscode:isPasscodeRecoveryEnabled:]([LAPSFetchNewPasscodeResult alloc], "initWithPasscode:isPasscodeRecoveryEnabled:", v7, [*(*(a1 + 32) + 32) skipNewPasscode] ^ 1);
    (*(v5 + 16))(v5, v6, 0);
  }
}

- (BOOL)_shouldInjectNewPasscode
{
  if ([(LAPSPasscodeChangeControllerOptions *)self->_options skipNewPasscode])
  {
    return 1;
  }

  v4 = [(LAPSPasscodeChangeControllerOptions *)self->_options newPasscode];
  v3 = v4 != 0;

  return v3;
}

- (void)_extractPasscode:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__LAPSPasscodeChangeController__extractPasscode_completion___block_invoke;
  v7[3] = &unk_278A662C0;
  v8 = v5;
  v6 = v5;
  [a3 extractPasswordWithCompletion:v7];
}

void __60__LAPSPasscodeChangeController__extractPasscode_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  if (a3)
  {
    v6 = [LAPSErrorBuilder genericErrorWithUnderlyingError:a3];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v7 = [LAPSPasscode alloc];
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    v8 = [(LAPSPasscode *)v7 initWithPasscode:v6];
    (*(v5 + 16))(v5, v8, 0);
  }
}

- (void)_extractCSPasscode:(id)a3 completion:(id)a4
{
  v5 = a4;
  v9 = [a3 data];
  if (v9)
  {
    v6 = [LAPSPasscode alloc];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    v8 = [(LAPSPasscode *)v6 initWithPasscode:v7];
    v5[2](v5, v8, 0);

    v5 = v8;
  }

  else
  {
    v7 = [LAPSErrorBuilder genericErrorWithDebugDescription:@"Could not extract passcode data"];
    (v5)[2](v5, 0, v7);
  }
}

@end